void sub_1B313C924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54)
{
  if (a54)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a54);
  }

  v56 = mach_absolute_time();
  atomic_fetch_add((*(ggl::Performance::Counters::instance(v56) + 32) + 104), v56 - a16);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::function<void ()(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4);
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A368E8;
  a2[1] = v2;
  return result;
}

void md::RoadRenderLayer::RoadRenderLayer(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v7 = a3;
  v13 = word_1B3416E64[a4];
  [*(a2 + 104) format];
  if (v7)
  {
    [v7 standardCommandBufferSelector];
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  commandBufferLocationsForType(&__p, a4, v8);
  v9 = v7;
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&v14, &v13, 1);
  *(a1 + 8) = 0;
  *a1 = &unk_1F2A16858;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v12 != __p)
  {
    std::vector<md::MapDataType>::__vallocate[abi:nn200100](a1 + 8, (v12 - __p) >> 1);
  }

  *(a1 + 32) = 0;
  *(a1 + 34) = 0x16191718151011uLL >> (8 * a4);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
  *(a1 + 112) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 248) = xmmword_1B33B0A60;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = v14;
  *(a1 + 336) = v15;
  *(a1 + 344) = 1;
  *a1 = &unk_1F2A2E5C8;
  *(a1 + 352) = 0;
  operator new();
}

void sub_1B313D350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::unique_ptr<md::RoadSharedResources>::reset[abi:nn200100]((v16 + 440), 0);
  v18 = *(v16 + 416);
  if (v18)
  {
    *(v16 + 424) = v18;
    operator delete(v18);
  }

  v19 = *(v16 + 392);
  if (v19)
  {
    *(v16 + 400) = v19;
    operator delete(v19);
  }

  v20 = *(v16 + 368);
  if (v20)
  {
    *(v16 + 376) = v20;
    operator delete(v20);
  }

  md::CartographicTiledVectorRenderLayer<md::RoadTileDataRenderable>::~CartographicTiledVectorRenderLayer(v16);

  _Unwind_Resume(a1);
}

void md::CompositeLabeler::debugDraw(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5;
    if ((*(**v5 + 304))(*v5))
    {
      (*(*v7 + 312))(v7, v8, a3);
    }

    ++v5;
  }
}

uint64_t md::CompositeLabeler::populateDebugNode(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  for (i = *(result + 16); v3 != i; result = (*(*v7 + 296))(v7, a2, a3))
  {
    v7 = *v3++;
  }

  return result;
}

uint64_t md::CompositeLabeler::debugString@<X0>(md::CompositeLabeler *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v19);
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = (v4 - v5) >> 3;
    do
    {
      v8 = *(this + 40);
      if (v7 <= v8 || v6 == v8)
      {
        (*(**(v5 + 8 * v6) + 288))(__p);
        v10 = v18;
        if ((v18 & 0x80u) == 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = __p[1];
        }

        if (v11)
        {
          if ((v18 & 0x80u) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, v12, v11);
          v10 = v18;
        }

        if ((v10 & 0x80) != 0)
        {
          operator delete(__p[0]);
        }

        v5 = *(this + 1);
        v4 = *(this + 2);
      }

      ++v6;
      v7 = (v4 - v5) >> 3;
    }

    while (v6 < v7);
  }

  if ((v26 & 0x10) != 0)
  {
    v14 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v14 = v22;
    }

    locale = v21[4].__locale_;
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v13 = 0;
      a2[23] = 0;
      goto LABEL_33;
    }

    locale = v21[1].__locale_;
    v14 = v21[3].__locale_;
  }

  v13 = v14 - locale;
  if ((v14 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a2[23] = v13;
  if (v13)
  {
    memmove(a2, locale, v13);
  }

LABEL_33:
  a2[v13] = 0;
  v19 = *MEMORY[0x1E69E54E8];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v27);
}

void sub_1B313D8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

uint64_t md::CompositeLabeler::debugHighlightFeatureMarker(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = (*(*v5 + 272))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t md::CompositeLabeler::debugHighlightLabelAtPixel(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  LOBYTE(result) = 0;
  do
  {
    v6 = *v2;
    v7 = **v2;
    if (result)
    {
      (*(v7 + 280))(v6);
      result = 1;
    }

    else
    {
      result = (*(v7 + 264))(v6, a2);
    }

    ++v2;
  }

  while (v2 != v3);
  return result;
}

void md::CompositeLabeler::labelMarkerForLabel(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5)
  {
LABEL_6:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while (1)
    {
      (*(**v4 + 248))(*v4, a2);
      if (*a3)
      {
        break;
      }

      v7 = a3[1];
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      if (++v4 == v5)
      {
        goto LABEL_6;
      }
    }
  }
}

void md::CompositeLabeler::roadMarkerForSelectionAtPixel(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5)
  {
LABEL_6:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while (1)
    {
      (*(**v4 + 240))(*v4, a2);
      if (*a3)
      {
        break;
      }

      v7 = a3[1];
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      if (++v4 == v5)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t md::CompositeLabeler::isLabelHitAtPixel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5)
  {
    return 0;
  }

  v9 = v4 + 8;
  do
  {
    result = (*(**(v9 - 8) + 232))(*(v9 - 8), a2, a3, a4);
    if (result)
    {
      break;
    }

    v11 = v9 == v5;
    v9 += 8;
  }

  while (!v11);
  return result;
}

uint64_t md::CompositeLabeler::getLabelMarkers(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = (*(*v5 + 224))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t md::CompositeLabeler::setPreviouslySelectedLabelMarker(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = (*(*v5 + 216))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t md::CompositeLabeler::releaseAdoptedSelectedLabelMarker(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 200))(v3);
  }

  return this;
}

uint64_t md::CompositeLabeler::adoptSelectedLabelMarker(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = v2 + 8;
  do
  {
    result = (*(**(v5 - 8) + 192))(*(v5 - 8), a2);
    if (result)
    {
      break;
    }

    v7 = v5 == v3;
    v5 += 8;
  }

  while (!v7);
  return result;
}

uint64_t md::CompositeLabeler::setSelectedLabelMarker(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = (*(*v5 + 184))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

void md::CompositeLabeler::labelMarkerForCustomFeatureAnnotation(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v11 = a2;
  v7 = a3;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v9 != v8)
  {
    (*(**v9 + 176))(*v9, v11, v7);
    if (*a4)
    {
      goto LABEL_8;
    }

    v10 = a4[1];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    ++v9;
  }

  *a4 = 0;
  a4[1] = 0;
LABEL_8:
}

uint64_t md::CompositeLabeler::stylesheetAnimationDidFinish(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 160))(v3);
  }

  return this;
}

uint64_t md::CompositeLabeler::resetOcclusionQueries(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 128))(v3);
  }

  return this;
}

void md::CompositeLabeler::~CompositeLabeler(md::CompositeLabeler *this)
{
  *this = &unk_1F2A36968;
  std::vector<md::Labeler *,geo::allocator_adapter<md::Labeler *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A36968;
  std::vector<md::Labeler *,geo::allocator_adapter<md::Labeler *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));
}

uint64_t md::MapEngineSyncAccessor::configurationDidChange(md::MapEngineSyncAccessor *this)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v2 = this + 40960;
  v3 = *(this + 5213);
  v4 = *(*(v3 + 3) + 56);
  if (v4)
  {
    gdc::ResourceManager::configurationDidChange(v4);
  }

  v5 = *(v3 + 42);
  if (v5)
  {
    v6 = *v5;
    std::mutex::lock((*v5 + 96));
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((v6 + 8));
    std::__list_imp<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>>::clear((v6 + 48));
    md::FlyoverRegionManager::Internal::updateTriggers(v6);
    std::mutex::unlock((v6 + 96));
  }

  md::World::updateTileSize(v3);
  v7 = *(v2 + 121);
  v8 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0x20A1ED17D78F322BuLL)[5] + 192);
  if (v8)
  {
    do
    {
      v9 = v8[3];
      v22[0] = &unk_1F2A11390;
      v22[1] = v9;
      v22[3] = v22;
      md::LabelManager::queueCommand(v9, 0, 1, v22);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v22);
      v8 = *v8;
    }

    while (v8);
    v7 = *(v2 + 121);
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0x669A8EDAC04FCBF1uLL);
  if (v10)
  {
    v11 = v10[5];
    if (v11)
    {
      v12 = *(v11 + 144);
      v13 = *(v12 + 56);
      v14 = *(v12 + 64);
      while (v13 != v14)
      {
        if (*v13 == 35)
        {
          if (v13 != v14)
          {
            v15 = *(v13 + 8);
            if (v15)
            {
              v16 = (*(**(v15 + 8) + 24))(*(v15 + 8), 22);
              if (v17)
              {
                atomic_store(BYTE4(v16), (*(v11 + 168) + 24));
              }
            }
          }

          break;
        }

        v13 += 16;
      }
    }
  }

  v18 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v2 + 121) + 16), 0xEA624BC935BAF297);
  if (v18)
  {
    v19 = v18[5];
    if (v19)
    {
      v20 = [MEMORY[0x1E69A2478] modernManager];
      *(v19 + 184) = [v20 isMuninEnabled];
    }
  }

  md::MapEngine::_checkCompressedBuildingsAvailable(this);
  md::MapEngine::updateDaVinciPOILabelsAvailable(this);
  return md::MapEngine::clearScene(this);
}

uint64_t md::CameraLogic::debugConsoleString@<X0>(id *a1@<X1>, double *a2@<X3>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v18);
  md::CameraContext::toString(__p, a2);
  if ((v17 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v7 = v17;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v18, v6, v7);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v18, "\n=== Canvas ===\n", 16);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v18, "Size: ", 6);
  v8 = *a1;
  [v8 size];
  v9 = MEMORY[0x1B8C61C60](&v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, ", ", 2);
  v10 = *a1;
  [v10 size];
  v12 = MEMORY[0x1B8C61C60](v9, v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, "\n", 1);

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v18, "Content Scale: ", 15);
  v13 = *a1;
  [v13 contentScale];
  v14 = MEMORY[0x1B8C61C60](&v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, "\n", 1);

  std::ostringstream::str[abi:nn200100](a3, &v18);
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v22);
}

void sub_1B313E5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(a24);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

uint64_t md::CameraContext::toString(md::CameraContext *this, double *a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v50);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "=== Camera Frame ===\n", 21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Target Lat/Long: ", 17);
  v4 = gdc::Camera::cameraFrame(a2);
  v5 = MEMORY[0x1B8C61C60](&v50, *v4 * 57.2957795);
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, ", ", 2);
  v7 = MEMORY[0x1B8C61C60](v6, v4[1] * 57.2957795);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Target Altitude: ", 17);
  v8 = MEMORY[0x1B8C61C60](&v50, v4[2]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Near/Far: ", 10);
  v9 = gdc::Camera::near(a2);
  v10 = MEMORY[0x1B8C61C60](&v50, *v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, " / ", 3);
  v11 = gdc::Camera::far(a2);
  v12 = MEMORY[0x1B8C61C60](v10, *v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Distance From Target: ", 22);
  v13 = MEMORY[0x1B8C61C60](&v50, v4[3]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Pitch: ", 7);
  v14 = MEMORY[0x1B8C61C60](&v50, v4[4] * 57.2957795);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Heading: ", 9);
  v15 = MEMORY[0x1B8C61C60](&v50, v4[5] * 57.2957795);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Roll: ", 6);
  v16 = MEMORY[0x1B8C61C60](&v50, v4[6] * 57.2957795);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, "\n", 1);
  LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(a2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "=== Camera Limits ===\n", 22);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Pitch min/max: ", 15);
  v18 = MEMORY[0x1B8C61C60](&v50, *LabelingPoint * 57.2957795);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, " / ", 3);
  v19 = gdc::Camera::cameraFrame(LabelingPoint);
  v20 = MEMORY[0x1B8C61C60](v18, *v19 * 57.2957795);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Zoom min/max: ", 14);
  gdc::CameraLimits::minZoom(LabelingPoint);
  v21 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, " / ", 3);
  grl::IconMetricsRenderResult::getFillRect(LabelingPoint);
  v22 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "\n=== Camera ===\n", 16);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Position: ", 10);
  v23 = gdc::CameraView::position(a2);
  v24 = MEMORY[0x1B8C61C60](&v50, *v23);
  v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, ", ", 2);
  v26 = MEMORY[0x1B8C61C60](v25, v23[1]);
  v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, ", ", 2);
  v28 = MEMORY[0x1B8C61C60](v27, v23[2]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "FoV (V/H): ", 11);
  gdc::Camera::verticalFieldOfView(&v49, a2);
  v29 = MEMORY[0x1B8C61C60](&v50, v49 * 57.2957795);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, " / ", 3);
  gdc::Camera::horizontalFieldOfView(&v48, a2);
  v30 = MEMORY[0x1B8C61C60](v29, v48 * 57.2957795);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "\n=== Vectors ===\n", 17);
  v31 = v50;
  *(&v52[0].__locale_ + *(v50 - 24)) = 2;
  *(&v52[1].__locale_ + *(v31 - 24)) = 5;
  *(&v50 + *(v31 - 24) + 8) = *(&v50 + *(v31 - 24) + 8) & 0xFFFFFEFB | 4;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "U:", 2);
  v32 = MEMORY[0x1B8C61C60](&v50, a2[389]);
  v33 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, ",", 1);
  v34 = MEMORY[0x1B8C61C60](v33, a2[390]);
  v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, ",", 1);
  v36 = MEMORY[0x1B8C61C60](v35, a2[391]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "F:", 2);
  v37 = MEMORY[0x1B8C61C60](&v50, a2[386]);
  v38 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, ",", 1);
  v39 = MEMORY[0x1B8C61C60](v38, a2[387]);
  v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, ",", 1);
  v41 = MEMORY[0x1B8C61C60](v40, a2[388]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "R:", 2);
  v42 = MEMORY[0x1B8C61C60](&v50, a2[392]);
  v43 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v42, ",", 1);
  v44 = MEMORY[0x1B8C61C60](v43, a2[393]);
  v45 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v44, ",", 1);
  v46 = MEMORY[0x1B8C61C60](v45, a2[394]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, "\n", 1);
  std::ostringstream::str[abi:nn200100](this, &v50);
  v50 = *MEMORY[0x1E69E54E8];
  *(&v50 + *(v50 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v51 = MEMORY[0x1E69E5548] + 16;
  if (v53 < 0)
  {
    operator delete(v52[7].__locale_);
  }

  v51 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v52);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v54);
}

void sub_1B313ED88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  a12 = *MEMORY[0x1E69E54E8];
  *(&a12 + *(a12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a13 = MEMORY[0x1E69E5548] + 16;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  a13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a14);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a29);
  _Unwind_Resume(a1);
}

void md::CameraContext::_update(md::CameraContext *this, id *a2, md::World *a3, double a4)
{
  *(this + 1400) = 0;
  [*a2 size];
  if (v8 <= 0.0 || v9 <= 0.0)
  {
    v10 = *(this + 1400);
  }

  else
  {
    v10 = log2(v8 * 0.001953125 * *(this + 1401));
    *(this + 1400) = v10;
  }

  *(this + 3784) = md::LayoutContext::cameraType(a2);
  v11 = *a2;
  [v11 sizeInPixels];
  *(this + 171) = v12;
  *(this + 172) = v13;

  v14 = *a2;
  [v14 contentScale];
  *(this + 173) = v15;

  v16 = *a2;
  [v16 size];
  v18 = v17;
  [*a2 size];
  v20 = v19;

  v21 = md::LayoutContext::camera(a2);
  LOBYTE(v146[0]) = *v21;
  *&v146[1] = *(v21 + 8);
  *&v146[3] = *(v21 + 24);
  *&v146[5] = *(v21 + 40);
  *&v146[7] = *(v21 + 56);
  v146[9] = *(v21 + 72);
  v22 = *(v21 + 96);
  v147 = *(v21 + 80);
  v148 = v22;
  v149 = *(v21 + 112);
  v23 = *(v21 + 344);
  v163 = *(v21 + 328);
  v164 = v23;
  v24 = *(v21 + 280);
  v159 = *(v21 + 264);
  v160 = v24;
  v25 = *(v21 + 312);
  v26 = *(v21 + 128);
  v161 = *(v21 + 296);
  v162 = v25;
  v27 = *(v21 + 360);
  v150 = v26;
  v165 = v27;
  v158 = *(v21 + 248);
  v154 = *(v21 + 184);
  v155 = *(v21 + 200);
  v156 = *(v21 + 216);
  v157 = *(v21 + 232);
  v151 = *(v21 + 136);
  v152 = *(v21 + 152);
  v153 = *(v21 + 168);
  v28 = *(v21 + 384);
  v166 = *(v21 + 368);
  v167 = v28;
  v29 = *(v21 + 416);
  v168 = *(v21 + 400);
  v169 = v29;
  v170 = *(v21 + 432);
  v171 = *(v21 + 448);
  v172 = *(v21 + 456);
  v30 = *(v21 + 480);
  v173 = *(v21 + 464);
  v174 = v30;
  if (*(this + 3784) == 3)
  {
    gdc::CameraView::ecefCameraView(&v117, v146);
  }

  else if (*(this + 3784))
  {
    gdc::CameraView::geocentricCameraView(&v117, v146);
  }

  else
  {
    gdc::CameraView::mercatorCameraView(&v117, v146);
  }

  gdc::CameraView::operator=(this, &v117);
  v117 = 0uLL;
  *&v118 = 0xBFF0000000000000;
  *(this + 386) = gm::Quaternion<double>::operator*(this + 520, &v117);
  *(this + 387) = v31;
  *(this + 388) = v32;
  *&v118 = 0;
  v117 = 0x3FF0000000000000uLL;
  *(this + 392) = gm::Quaternion<double>::operator*(this + 520, &v117);
  *(this + 393) = v33;
  *(this + 394) = v34;
  v117 = xmmword_1B33B0740;
  *&v118 = 0;
  *(this + 389) = gm::Quaternion<double>::operator*(this + 520, &v117);
  *(this + 390) = v35;
  *(this + 391) = v36;
  geo::RigidTransform<double,double>::inverse(&v115, this + 496);
  geo::RigidTransform<double,double>::toMatrix(&v117, &v115);
  v37 = v122;
  *(this + 3224) = v121;
  *(this + 3240) = v37;
  v38 = v124;
  *(this + 3256) = v123;
  *(this + 3272) = v38;
  v39 = v118;
  *(this + 3160) = v117;
  *(this + 3176) = v39;
  v40 = v120;
  *(this + 3192) = v119;
  *(this + 3208) = v40;
  gdc::Camera::verticalFieldOfView(&v117, this);
  v41 = tan(v117.f64[0] * 0.5);
  *(this + 469) = v41;
  *(this + 470) = v41 * v18 / v20;
  v42 = *(this + 3784);
  if (a3)
  {
    v43 = *(a3 + 47);
  }

  else
  {
    v43 = 0;
  }

  *(this + 472) = v43;
  if (v42)
  {
    if (v42 == 3)
    {
      gdc::CameraView::mercatorCameraView(&v115, v146);
      md::MercatorCameraContext::MercatorCameraContext(&v117, &v115, *(this + 1368), *(this + 173), 0.0, v44, a4);
      v45 = gdc::CameraView::operator=(this + 1392, &v117);
      v47 = v126;
      *(this + 2760) = v125;
      *(this + 2776) = v47;
      v48 = v132;
      *(this + 2856) = v131;
      *(this + 2872) = v48;
      v49 = v134;
      *(this + 2888) = v133;
      *(this + 2904) = v49;
      v50 = v128;
      *(this + 2792) = v127;
      *(this + 2808) = v50;
      v51 = v130;
      *(this + 2824) = v129;
      *(this + 2840) = v51;
      *(this + 365) = v135;
      *(this + 183) = v136;
      *(this + 368) = v137;
      if (v45 == &v117)
      {
        goto LABEL_22;
      }
    }

    else
    {
      gdc::CameraView::mercatorCameraView(&v115, v146);
      v64 = *(this + 171);
      v65 = *(this + 172);
      v66 = *(this + 173);
      gdc::Camera::convertToMercatorUnits(this);
      v68 = v67;
      v176.width = v64;
      v176.height = v65;
      md::MercatorCameraContext::MercatorCameraContext(&v117, &v115, v176, v66, v68, v69, a4);
      v70 = gdc::CameraView::operator=(this + 1392, &v117);
      v71 = v126;
      *(this + 2760) = v125;
      *(this + 2776) = v71;
      v72 = v132;
      *(this + 2856) = v131;
      *(this + 2872) = v72;
      v73 = v134;
      *(this + 2888) = v133;
      *(this + 2904) = v73;
      v74 = v128;
      *(this + 2792) = v127;
      *(this + 2808) = v74;
      v75 = v130;
      *(this + 2824) = v129;
      *(this + 2840) = v75;
      *(this + 365) = v135;
      *(this + 183) = v136;
      *(this + 368) = v137;
      if (v70 == &v117)
      {
        goto LABEL_22;
      }
    }

    std::vector<gm::Matrix<double,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>(this + 369, __p, v139, (v139 - __p) >> 4);
  }

  else
  {
    v52 = *(this + 171);
    v53 = *(this + 172);
    v54 = *(this + 173);
    gdc::Camera::convertToMercatorUnits(this);
    v56 = v55;
    v175.width = v52;
    v175.height = v53;
    md::MercatorCameraContext::MercatorCameraContext(&v117, this, v175, v54, v56, v57, a4);
    v58 = gdc::CameraView::operator=(this + 1392, &v117);
    v59 = v126;
    *(this + 2760) = v125;
    *(this + 2776) = v59;
    v60 = v132;
    *(this + 2856) = v131;
    *(this + 2872) = v60;
    v61 = v134;
    *(this + 2888) = v133;
    *(this + 2904) = v61;
    v62 = v128;
    *(this + 2792) = v127;
    *(this + 2808) = v62;
    v63 = v130;
    *(this + 2824) = v129;
    *(this + 2840) = v63;
    *(this + 365) = v135;
    *(this + 183) = v136;
    *(this + 368) = v137;
    if (v58 != &v117)
    {
      std::vector<gm::Matrix<double,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>(this + 369, __p, v139, (v139 - __p) >> 4);
    }
  }

LABEL_22:
  *(this + 372) = v140;
  *(this + 375) = v142;
  *(this + 2984) = v141;
  *(this + 188) = v143;
  *(this + 378) = v144;
  *(this + 3032) = v145[0];
  *(this + 3041) = *(v145 + 9);
  if (__p)
  {
    v139 = __p;
    operator delete(__p);
  }

  v76 = gdc::DisplayZoomLevel::centerZoomLevel(this, v46);
  *(this + 471) = gdc::DisplayZoomLevel::groundSpan(v77, v76);
  v78 = v76;
  if (!v42)
  {
    v79 = log2(*(this + 372));
    v78 = -v79;
  }

  *(this + 383) = this;
  *(this + 768) = fmaxf(v78, 1.0);
  *(this + 769) = fmaxf(v76, 1.0);
  *(this + 770) = v10;
  *(this + 3084) = v42 == 0;
  v80 = +[VKDebugSettings sharedSettings];
  v81 = [v80 shouldFreezeLayoutCamera];

  v82 = *(this + 699);
  if (v81)
  {
    if (!v82)
    {
      operator new();
    }
  }

  else if (v82)
  {
    *(this + 699) = 0;
    std::default_delete<md::SingleCameraContext>::operator()[abi:nn200100](v82);
  }

  v83 = a2[9];
  if (v83 && *v83 == 1)
  {
    v84 = md::LayoutContext::camera(a2);
    gdc::CameraView::geocentricCameraViewWithTransform(&v117, v84, (v83 + 16));
    v85 = *a2;
    [v85 sizeInPixels];
    v115.f64[0] = v86;
    v115.f64[1] = v87;
    md::ViewTransform::setCoordinateSpaceEtc(this + 3792, 1u, &v115, &v117);

    v88 = *(v83 + 11);
    v115 = *(v83 + 72);
    v116 = v88;
    geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(v115.f64, v146);
    v114 = *v146;
    v89 = this + 3792;
    v90 = &v115;
    v91 = &v114;
LABEL_36:
    md::ViewTransform::setFocus(v89, v90, v91->f64);
    return;
  }

  v92 = gdc::ToCoordinateSystem(*(this + 3784));
  v93 = md::LayoutContext::cameraType(a2);
  if (v92)
  {
    v94 = *a2;
    [v94 sizeInPixels];
    v96 = v95;
    v98 = v97;
    v99 = gdc::ToCoordinateSystem(v93);
    v117.f64[0] = v96;
    v117.f64[1] = v98;
    md::ViewTransform::setCoordinateSpaceEtc(this + 3792, v99, &v117, this);

    v100 = gdc::Camera::cameraFrame(this);
    v101 = *v100;
    v102 = v100[1];
    v103 = v100[2];
    v104 = __sincos_stret(*v100);
    v105 = 6378137.0 / sqrt(v104.__sinval * v104.__sinval * -0.00669437999 + 1.0);
    v106 = (v105 + v103) * v104.__cosval;
    v107 = __sincos_stret(v102);
    v117.f64[0] = v106 * v107.__cosval;
    v117.f64[1] = v106 * v107.__sinval;
    *&v118 = (v103 + v105 * 0.99330562) * v104.__sinval;
    v115.f64[0] = v101 * 57.2957795;
    v115.f64[1] = v102 * 57.2957795;
    v89 = this + 3792;
    v90 = &v117;
    v91 = &v115;
    goto LABEL_36;
  }

  v108 = *a2;
  [v108 sizeInPixels];
  v110 = v109;
  v112 = v111;
  v113 = gdc::ToCoordinateSystem(v93);
  v117.f64[0] = v110;
  v117.f64[1] = v112;
  md::ViewTransform::setCoordinateSpaceEtc(this + 3792, v113, &v117, this);
}

void std::default_delete<md::SingleCameraContext>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 2952);
  if (v2)
  {
    *(a1 + 2960) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

md::MercatorCameraContext *md::MercatorCameraContext::MercatorCameraContext(md::MercatorCameraContext *this, const gdc::CameraView *a2, CGSize a3, double a4, double a5, md::World *a6, double a7)
{
  height = a3.height;
  width = a3.width;
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = *(a2 + 8);
  *(this + 9) = *(a2 + 9);
  v14 = *(a2 + 5);
  v15 = *(a2 + 6);
  v16 = *(a2 + 7);
  *(this + 16) = *(a2 + 16);
  *(this + 6) = v15;
  *(this + 7) = v16;
  *(this + 5) = v14;
  v17 = *(a2 + 200);
  v18 = *(a2 + 216);
  v19 = *(a2 + 232);
  *(this + 184) = *(a2 + 184);
  *(this + 232) = v19;
  *(this + 216) = v18;
  *(this + 200) = v17;
  v20 = *(a2 + 264);
  v21 = *(a2 + 280);
  v22 = *(a2 + 296);
  *(this + 248) = *(a2 + 248);
  *(this + 280) = v21;
  *(this + 296) = v22;
  *(this + 264) = v20;
  v24 = *(a2 + 328);
  v23 = *(a2 + 344);
  v25 = *(a2 + 312);
  *(this + 45) = *(a2 + 45);
  *(this + 328) = v24;
  *(this + 344) = v23;
  *(this + 312) = v25;
  v26 = *(a2 + 136);
  v27 = *(a2 + 152);
  *(this + 168) = *(a2 + 168);
  *(this + 152) = v27;
  *(this + 136) = v26;
  *(this + 23) = *(a2 + 23);
  *(this + 24) = *(a2 + 24);
  v28 = *(a2 + 25);
  v29 = *(a2 + 26);
  v30 = *(a2 + 27);
  *(this + 112) = *(a2 + 112);
  *(this + 26) = v29;
  *(this + 27) = v30;
  *(this + 25) = v28;
  *(this + 57) = *(a2 + 57);
  *(this + 58) = *(a2 + 58);
  *(this + 59) = *(a2 + 59);
  *(this + 30) = *(a2 + 30);
  v31 = (a2 + 496);
  geo::View<double>::View(this + 496, a2 + 496, a2 + 69, (a2 + 680), a2 + 476, *(a2 + 239), *(a2 + 117));
  *(this + 60) = *(a2 + 60);
  *(this + 122) = *(a2 + 122);
  v32 = memcpy(this + 984, a2 + 984, 0x180uLL);
  *(this + 171) = gdc::Camera::horizontalOffset(v32, *(a2 + 122));
  *(this + 172) = width;
  *(this + 173) = height;
  *(this + 174) = a4;
  v33 = (this + 1560);
  *&__p = 0.0;
  v125 = 0uLL;
  geo::ConvexHull2<double>::convexHullEnclosingPoints(this + 195, &__p);
  v34 = 0;
  *(this + 206) = 0;
  *(this + 1664) = 1;
  v143 = *(a2 + 31);
  v144 = *(a2 + 64);
  *(this + 206) = a7 * a5;
  *&__p = 0.0;
  *&v125 = 0;
  *(&v125 + 1) = a7 * a5;
  v116 = 0uLL;
  *&v117 = 0x3FF0000000000000;
  v141 = 0x3FF0000000000000;
  v35 = 0.0;
  v140 = 0uLL;
  do
  {
    v35 = v35 + *(&v116 + v34) * *(&__p + v34);
    v34 += 8;
  }

  while (v34 != 24);
  v142 = -v35;
  geo::Intersect::intersection<double>(&v138, a2 + 984, &v140);
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v37 = v138;
  v36 = v139;
  std::vector<gm::Matrix<double,2,1>>::reserve(&v135, 0xAAAAAAAAAAAAAAABLL * ((v139 - v138) >> 3));
  if (v37 != v36)
  {
    v105 = v31;
    v106 = v37;
    v38 = v37;
    v40 = v136;
    v39 = v137;
    v41 = v135;
    do
    {
      if (v40 >= v39)
      {
        v42 = (v40 - v41) >> 4;
        v43 = v42 + 1;
        if ((v42 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if ((v39 - v41) >> 3 > v43)
        {
          v43 = (v39 - v41) >> 3;
        }

        if (v39 - v41 >= 0x7FFFFFFFFFFFFFF0)
        {
          v44 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v44 = v43;
        }

        if (v44)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v44);
        }

        v45 = (16 * v42);
        *v45 = *v38;
        v46 = (v45 + 1);
        if (v41 != v40)
        {
          v47 = v41;
          v48 = 0;
          do
          {
            v49 = *v47;
            v47 += 16;
            *v48++ = v49;
          }

          while (v47 != v40);
        }

        v39 = 0;
        if (v41)
        {
          operator delete(v41);
        }

        v41 = 0;
        v40 = v46;
      }

      else
      {
        *v40 = *v38;
        v40 += 16;
      }

      v38 = (v38 + 24);
    }

    while (v38 != v36);
    v136 = v40;
    v137 = v39;
    v135 = v41;
    v31 = v105;
    v33 = (this + 1560);
    v37 = v106;
  }

  geo::ConvexHull2<double>::convexHullEnclosingPoints(&__p, &v135);
  if (v33 != &__p)
  {
    std::vector<gm::Matrix<double,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>(v33, __p, v125, (v125 - __p) >> 4);
  }

  if (*&__p != 0.0)
  {
    *&v125 = __p;
    operator delete(__p);
  }

  v50 = geo::ConvexHull2<double>::boundingBox(*(this + 195), *(this + 196));
  v51 = 0;
  *(this + 191) = v50;
  *(this + 192) = v52;
  *(this + 193) = v53;
  *(this + 194) = v54;
  v127 = 0u;
  v129 = 0;
  v131 = 0;
  v128 = 0u;
  v126 = 0u;
  v125 = 0u;
  *&__p = v53 - v50;
  *&v127 = v54 - v52;
  v130 = v53 - v50;
  v132 = v50;
  v133 = v52;
  v55 = 808;
  v134 = xmmword_1B33B0740;
  do
  {
    v56 = 0;
    p_p = &__p;
    do
    {
      v58 = 0;
      v59 = 0.0;
      v60 = v55;
      do
      {
        v59 = v59 + *&p_p[v58++] * *(a2 + v60);
        v60 += 32;
      }

      while (v58 != 4);
      *(&v116 + 4 * v56++ + v51) = v59;
      p_p += 4;
    }

    while (v56 != 4);
    ++v51;
    v55 += 8;
  }

  while (v51 != 4);
  v61 = v121;
  *(this + 1464) = v120;
  *(this + 1480) = v61;
  v62 = v123;
  *(this + 1496) = v122;
  *(this + 1512) = v62;
  v63 = v117;
  *(this + 1400) = v116;
  *(this + 1416) = v63;
  v64 = v119;
  *(this + 1432) = v118;
  *(this + 1448) = v64;
  v116 = 0uLL;
  *&v117 = 0xBFF0000000000000;
  v115[0] = gm::Quaternion<double>::operator*(a2 + 520, &v116);
  v115[1] = v65;
  v115[2] = v66;
  *&v117 = 0;
  v116 = 0x3FF0000000000000uLL;
  v107 = gm::Quaternion<double>::operator*(a2 + 520, &v116);
  v68 = v67;
  gdc::Camera::verticalFieldOfView(&v116, this);
  v69 = tan(*&v116 * 0.5);
  v70 = 1.79769313e308;
  if (v37 != v36)
  {
    v71 = 0.0;
    v72 = 1.79769313e308;
    v73 = v37;
    do
    {
      for (i = 0; i != 24; i += 8)
      {
        *(&v116 + i) = *(v73 + i) - *(&v143 + i);
      }

      v75 = 0;
      v76 = 0.0;
      do
      {
        v76 = v76 + *&v115[v75] * *(&v116 + v75 * 8);
        ++v75;
      }

      while (v75 != 3);
      for (j = 0; j != 24; j += 8)
      {
        *(&v116 + j) = *(v73 + j) - *(&v143 + j);
      }

      v78 = 0;
      v79 = 0.0;
      do
      {
        v79 = v79 + *(&v116 + v78) * *(&v116 + v78);
        v78 += 8;
      }

      while (v78 != 24);
      v80 = sqrt(v79);
      if (v80 > v71)
      {
        for (k = 0; k != 24; k += 8)
        {
          *(this + k + 1616) = *(v73 + k);
        }

        v71 = v80;
      }

      if (v80 < v72)
      {
        for (m = 0; m != 24; m += 8)
        {
          *(this + m + 1592) = *(v73 + m);
        }

        v72 = v80;
      }

      v70 = fmin(v76, v70);
      v73 = (v73 + 24);
    }

    while (v73 != v36);
  }

  v83 = gdc::Camera::cameraFrame(a2);
  gdc::Camera::convertToMercatorUnits(this);
  v85 = v84;
  v86 = fmin(*(this + 206), v84);
  *(this + 206) = v86;
  *(this + 198) = width * v70 * (v69 + v69) / height;
  v87 = *(a2 + 122);
  v88 = 1.57079633 - *(v83 + 32);
  v89 = __sincos_stret(v88);
  gdc::Camera::cameraFrame(this);
  gdc::Camera::convertToMercatorUnits(this);
  v91 = v90 + (v85 - v86) / v89.__sinval;
  v92 = v87 * v69;
  v93 = (v92 + (v87 - v91) * tan(v88)) / (v92 + v92);
  if (v86 < 0.0)
  {
    v93 = v93 + v86 / (v89.__cosval * v92);
  }

  *(this + 205) = v93;
  v94 = fabs(v89.__sinval);
  if (v94 <= v94 * 2.22044605e-14 || v94 < 2.22507386e-308 || (v95 = fabs(v89.__cosval), v95 <= v95 * 2.22044605e-14) || v95 < 2.22507386e-308)
  {
    *(this + 207) = 0x7FEFFFFFFFFFFFFFLL;
  }

  else
  {
    *&v116 = -v68;
    *(&v116 + 1) = v107;
    *&v117 = 0;
    v96 = gm::Matrix<double,3,1>::normalized<int,void>(&v116);
    v97 = 0;
    *v114 = v96;
    v114[1] = v98;
    v114[2] = v99;
    v110 = *v31;
    v111 = 0;
    do
    {
      *(&v116 + v97 * 8) = *&v114[v97] * ((v87 - v91) / v89.__cosval + v91 * v89.__cosval);
      ++v97;
    }

    while (v97 != 3);
    v100 = 0;
    v108 = v116;
    v109 = v117;
    do
    {
      *(&v116 + v100) = *(&v108 + v100) + *(&v110 + v100);
      v100 += 8;
    }

    while (v100 != 24);
    v101 = 0;
    v112 = v116;
    v113 = v117;
    do
    {
      *(&v116 + v101) = *(&v112 + v101) - *(v31 + v101);
      v101 += 8;
    }

    while (v101 != 24);
    v102 = 0;
    v103 = 0.0;
    do
    {
      v103 = v103 + *&v115[v102] * *(&v116 + v102 * 8);
      ++v102;
    }

    while (v102 != 3);
    *(this + 207) = v103;
  }

  if (v135)
  {
    operator delete(v135);
  }

  if (v37)
  {
    operator delete(v37);
  }

  return this;
}

void sub_1B3140278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a63)
  {
    operator delete(a63);
  }

  if (v65)
  {
    operator delete(v65);
  }

  v67 = *v64;
  if (*v64)
  {
    *(v63 + 1568) = v67;
    operator delete(v67);
  }

  _Unwind_Resume(exception_object);
}

__int128 **std::vector<gm::Matrix<double,2,1>>::__swap_out_circular_buffer(__int128 **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = *v2++;
      *v5++ = v6;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

BOOL geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1}::operator()(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a4 - a2;
  v7 = a6 - a2;
  v8 = v6 / (a3 - a1);
  if (vabdd_f64(a3, a1) < 2.22044605e-16)
  {
    v8 = 1.79769313e308;
  }

  v9 = v7 / (a5 - a1);
  if (vabdd_f64(a5, a1) >= 2.22044605e-16)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.79769313e308;
  }

  if (v8 < v10)
  {
    return 1;
  }

  if (v8 != v10)
  {
    return 0;
  }

  if (a3 < a5)
  {
    return 1;
  }

  return a3 == a5 && a4 < a6;
}

double std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(double *a1, double *a2, double *a3, double *a4, double *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1, a2, a3, a5);
  result = *a4;
  v11 = a4[1];
  v12 = a5[1];
  v13 = v11 - v12;
  v14 = *a3;
  v15 = a3[1];
  v16 = v15 - v12;
  v17 = v13 / (*a4 - *a5);
  if (vabdd_f64(*a4, *a5) < 2.22044605e-16)
  {
    v17 = 1.79769313e308;
  }

  v18 = v16 / (*a3 - *a5);
  if (vabdd_f64(v14, *a5) >= 2.22044605e-16)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1.79769313e308;
  }

  if (v17 < v19 || v17 == v19 && (result < v14 || result == v14 && v11 < v15))
  {
    *a3 = result;
    a3[1] = a4[1];
    *a4 = v14;
    a4[1] = v15;
    result = *a3;
    v20 = a3[1];
    v21 = a5[1];
    v22 = v20 - v21;
    v23 = *a2;
    v24 = a2[1];
    v25 = v24 - v21;
    v26 = v22 / (*a3 - *a5);
    if (vabdd_f64(*a3, *a5) < 2.22044605e-16)
    {
      v26 = 1.79769313e308;
    }

    v27 = v25 / (*a2 - *a5);
    if (vabdd_f64(v23, *a5) >= 2.22044605e-16)
    {
      v28 = v27;
    }

    else
    {
      v28 = 1.79769313e308;
    }

    if (v26 < v28 || v26 == v28 && (result < v23 || result == v23 && v20 < v24))
    {
      *a2 = result;
      a2[1] = a3[1];
      *a3 = v23;
      a3[1] = v24;
      result = *a2;
      v29 = a2[1];
      v30 = a5[1];
      v31 = v29 - v30;
      v32 = *a1;
      v33 = a1[1];
      v34 = v33 - v30;
      v35 = v31 / (*a2 - *a5);
      if (vabdd_f64(*a2, *a5) < 2.22044605e-16)
      {
        v35 = 1.79769313e308;
      }

      v36 = v34 / (*a1 - *a5);
      if (vabdd_f64(v32, *a5) >= 2.22044605e-16)
      {
        v37 = v36;
      }

      else
      {
        v37 = 1.79769313e308;
      }

      if (v35 < v37 || v35 == v37 && (result < v32 || result == v32 && v29 < v33))
      {
        *a1 = result;
        result = a2[1];
        a1[1] = result;
        *a2 = v32;
        a2[1] = v33;
      }
    }
  }

  return result;
}

double std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1, a2, a3, a4, a6);
  result = *a5;
  v13 = a5[1];
  v14 = a6[1];
  v15 = v13 - v14;
  v16 = *a4;
  v17 = a4[1];
  v18 = v17 - v14;
  v19 = v15 / (*a5 - *a6);
  if (vabdd_f64(*a5, *a6) < 2.22044605e-16)
  {
    v19 = 1.79769313e308;
  }

  v20 = v18 / (*a4 - *a6);
  if (vabdd_f64(v16, *a6) >= 2.22044605e-16)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1.79769313e308;
  }

  if (v19 < v21 || v19 == v21 && (result < v16 || result == v16 && v13 < v17))
  {
    *a4 = result;
    a4[1] = a5[1];
    *a5 = v16;
    a5[1] = v17;
    result = *a4;
    v22 = a4[1];
    v23 = a6[1];
    v24 = v22 - v23;
    v25 = *a3;
    v26 = a3[1];
    v27 = v26 - v23;
    v28 = v24 / (*a4 - *a6);
    if (vabdd_f64(*a4, *a6) < 2.22044605e-16)
    {
      v28 = 1.79769313e308;
    }

    v29 = v27 / (*a3 - *a6);
    if (vabdd_f64(v25, *a6) >= 2.22044605e-16)
    {
      v30 = v29;
    }

    else
    {
      v30 = 1.79769313e308;
    }

    if (v28 < v30 || v28 == v30 && (result < v25 || result == v25 && v22 < v26))
    {
      *a3 = result;
      a3[1] = a4[1];
      *a4 = v25;
      a4[1] = v26;
      result = *a3;
      v31 = a3[1];
      v32 = a6[1];
      v33 = v31 - v32;
      v34 = *a2;
      v35 = a2[1];
      v36 = v35 - v32;
      v37 = v33 / (*a3 - *a6);
      if (vabdd_f64(*a3, *a6) < 2.22044605e-16)
      {
        v37 = 1.79769313e308;
      }

      v38 = v36 / (*a2 - *a6);
      if (vabdd_f64(v34, *a6) >= 2.22044605e-16)
      {
        v39 = v38;
      }

      else
      {
        v39 = 1.79769313e308;
      }

      if (v37 < v39 || v37 == v39 && (result < v34 || result == v34 && v31 < v35))
      {
        *a2 = result;
        a2[1] = a3[1];
        *a3 = v34;
        a3[1] = v35;
        result = *a2;
        v40 = a2[1];
        v41 = a6[1];
        v42 = v40 - v41;
        v43 = *a1;
        v44 = a1[1];
        v45 = v44 - v41;
        v46 = v42 / (*a2 - *a6);
        if (vabdd_f64(*a2, *a6) < 2.22044605e-16)
        {
          v46 = 1.79769313e308;
        }

        v47 = v45 / (*a1 - *a6);
        if (vabdd_f64(v43, *a6) >= 2.22044605e-16)
        {
          v48 = v47;
        }

        else
        {
          v48 = 1.79769313e308;
        }

        if (v46 < v48 || v46 == v48 && (result < v43 || result == v43 && v40 < v44))
        {
          *a1 = result;
          result = a2[1];
          a1[1] = result;
          *a2 = v43;
          a2[1] = v44;
        }
      }
    }
  }

  return result;
}

double *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(double *result, double *a2, double *a3)
{
  if (result != a2)
  {
    v3 = result + 2;
    if (result + 2 != a2)
    {
      v4 = 0;
      v5 = *a3;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v3;
        v8 = v7[2];
        v9 = v7[3];
        v10 = a3[1];
        v11 = v9 - v10;
        v12 = *v7;
        v13 = v7[1];
        v14 = v13 - v10;
        v15 = v11 / (v8 - v5);
        if (vabdd_f64(v8, v5) < 2.22044605e-16)
        {
          v15 = 1.79769313e308;
        }

        v16 = v14 / (*v7 - v5);
        if (vabdd_f64(v12, v5) < 2.22044605e-16)
        {
          v16 = 1.79769313e308;
        }

        if (v15 < v16 || v15 == v16 && (v8 < v12 || v8 == v12 && v9 < v13))
        {
          v7[2] = v12;
          v3[1] = v7[1];
          v17 = result;
          if (v7 != result)
          {
            v18 = v4;
            while (1)
            {
              v19 = (result + v18);
              v20 = a3[1];
              v21 = v9 - v20;
              v22 = *(result + v18 - 16);
              v23 = *(result + v18 - 8);
              v24 = v23 - v20;
              v25 = v21 / (v8 - *a3);
              if (vabdd_f64(v8, *a3) < 2.22044605e-16)
              {
                v25 = 1.79769313e308;
              }

              v26 = v24 / (v22 - *a3);
              v27 = vabdd_f64(v22, *a3) >= 2.22044605e-16 ? v26 : 1.79769313e308;
              if (v25 >= v27)
              {
                if (v25 != v27)
                {
                  v17 = (result + v18);
                  goto LABEL_29;
                }

                if (v8 >= v22 && (v8 != v22 || v9 >= v23))
                {
                  break;
                }
              }

              v7 -= 2;
              *v19 = v22;
              v19[1] = v23;
              v18 -= 16;
              if (!v18)
              {
                v17 = result;
                goto LABEL_29;
              }
            }

            v17 = v7;
          }

LABEL_29:
          *v17 = v8;
          v17[1] = v9;
          v5 = *a3;
        }

        v3 = v6 + 2;
        v4 += 16;
      }

      while (v6 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(uint64_t result, uint64_t a2, double *a3)
{
  if (result != a2)
  {
    v3 = result + 16;
    if (result + 16 != a2)
    {
      v4 = *a3;
      do
      {
        v5 = result;
        result = v3;
        v6 = *(v5 + 16);
        v7 = *(v5 + 24);
        v8 = a3[1];
        v9 = v7 - v8;
        v10 = *v5;
        v11 = *(v5 + 8);
        v12 = v11 - v8;
        v13 = v9 / (v6 - v4);
        if (vabdd_f64(v6, v4) < 2.22044605e-16)
        {
          v13 = 1.79769313e308;
        }

        v14 = v12 / (*v5 - v4);
        if (vabdd_f64(v10, v4) < 2.22044605e-16)
        {
          v14 = 1.79769313e308;
        }

        if (v13 < v14 || v13 == v14 && (v6 < v10 || v6 == v10 && v7 < v11))
        {
          do
          {
            v15 = v5;
            v16 = v10;
            v17 = *(v5 - 16);
            v5 -= 16;
            v10 = v17;
            v18 = *(v5 + 24);
            *(v5 + 32) = v16;
            *(v5 + 40) = v18;
            v19 = a3[1];
            v20 = v7 - v19;
            v21 = v17 - *a3;
            v22 = *(v5 + 8);
            v23 = v22 - v19;
            v24 = v20 / (v6 - *a3);
            if (vabdd_f64(v6, *a3) < 2.22044605e-16)
            {
              v24 = 1.79769313e308;
            }

            v25 = v23 / v21;
            if (vabdd_f64(v10, *a3) >= 2.22044605e-16)
            {
              v26 = v25;
            }

            else
            {
              v26 = 1.79769313e308;
            }
          }

          while (v24 < v26 || v24 == v26 && (v6 < v10 || v6 == v10 && v7 < v22));
          *v15 = v6;
          v15[1] = v7;
          v4 = *a3;
        }

        v3 = result + 16;
      }

      while (result + 16 != a2);
    }
  }

  return result;
}

uint64_t std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>(uint64_t result, double *a2, double *a3, double *a4)
{
  if (result != a2)
  {
    v6 = a2;
    v7 = result;
    v8 = (a2 - result) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (result + 16 * v9);
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(v7, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    if (v6 != a3)
    {
      v12 = *a4;
      v13 = *v7;
      v14 = v6;
      do
      {
        v15 = *v14;
        v16 = v14[1];
        v17 = a4[1];
        v18 = v16 - v17;
        v19 = v7[1];
        v20 = v19 - v17;
        v21 = v18 / (*v14 - v12);
        if (vabdd_f64(*v14, v12) < 2.22044605e-16)
        {
          v21 = 1.79769313e308;
        }

        v22 = v20 / (v13 - v12);
        if (vabdd_f64(v13, v12) < 2.22044605e-16)
        {
          v22 = 1.79769313e308;
        }

        if (v21 < v22 || v21 == v22 && (v15 < v13 || v15 == v13 && v16 < v19))
        {
          *v14 = v13;
          v14[1] = v7[1];
          *v7 = v15;
          v7[1] = v16;
          result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(v7, a4, v8, v7);
          v12 = *a4;
          v13 = *v7;
        }

        v14 += 2;
      }

      while (v14 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v23 = 0;
        v25 = *v7;
        v24 = *(v7 + 1);
        v26 = v7;
        do
        {
          v27 = v26;
          v28 = &v26[2 * v23];
          v26 = v28 + 2;
          v29 = 2 * v23;
          v23 = (2 * v23) | 1;
          v30 = v29 + 2;
          if (v30 < v8)
          {
            v32 = v28[4];
            v31 = v28 + 4;
            v33 = v32;
            v35 = *(v31 - 2);
            v34 = *(v31 - 1);
            v36 = a4[1];
            v37 = v34 - v36;
            v38 = v32 - *a4;
            v39 = v31[1];
            v40 = v39 - v36;
            v41 = v37 / (v35 - *a4);
            if (vabdd_f64(v35, *a4) < 2.22044605e-16)
            {
              v41 = 1.79769313e308;
            }

            v42 = v40 / v38;
            if (vabdd_f64(v33, *a4) >= 2.22044605e-16)
            {
              v43 = v42;
            }

            else
            {
              v43 = 1.79769313e308;
            }

            if (v41 < v43 || v41 == v43 && (v35 < v33 || v35 == v33 && v34 < v39))
            {
              v26 = v31;
              v23 = v30;
            }
          }

          *v27 = *v26;
          v27[1] = v26[1];
        }

        while (v23 <= (v8 - 2) / 2);
        if (v26 == v6 - 2)
        {
          *v26 = v25;
          *(v26 + 1) = v24;
        }

        else
        {
          *v26 = *(v6 - 2);
          v26[1] = *(v6 - 1);
          *(v6 - 2) = v25;
          *(v6 - 1) = v24;
          v44 = (v26 - v7 + 16) >> 4;
          v45 = v44 - 2;
          if (v44 >= 2)
          {
            v46 = v45 >> 1;
            v47 = &v7[2 * (v45 >> 1)];
            v48 = *v47;
            v49 = v47[1];
            v50 = a4[1];
            v51 = v49 - v50;
            v52 = *v26;
            v53 = v26[1];
            v54 = v53 - v50;
            v55 = v51 / (*v47 - *a4);
            if (vabdd_f64(*v47, *a4) < 2.22044605e-16)
            {
              v55 = 1.79769313e308;
            }

            v56 = v54 / (*v26 - *a4);
            v57 = vabdd_f64(v52, *a4) >= 2.22044605e-16 ? v56 : 1.79769313e308;
            if (v55 < v57 || v55 == v57 && (v48 < v52 || (v48 == v52 ? (v58 = v49 < v53) : (v58 = 0), v58)))
            {
              *v26 = v48;
              v26[1] = v47[1];
              if (v45 >= 2)
              {
                while (1)
                {
                  v60 = v46 - 1;
                  v46 = (v46 - 1) >> 1;
                  v59 = &v7[2 * v46];
                  v61 = *v59;
                  v62 = a4[1];
                  v63 = v59[1];
                  v64 = v63 - v62;
                  v65 = v53 - v62;
                  v66 = v64 / (*v59 - *a4);
                  if (vabdd_f64(*v59, *a4) < 2.22044605e-16)
                  {
                    v66 = 1.79769313e308;
                  }

                  v67 = v65 / (v52 - *a4);
                  v68 = vabdd_f64(v52, *a4) >= 2.22044605e-16 ? v67 : 1.79769313e308;
                  if (v66 >= v68 && (v66 != v68 || *&v61 >= v52 && (*&v61 != v52 || v63 >= v53)))
                  {
                    break;
                  }

                  *v47 = v61;
                  v47 = &v7[2 * v46];
                  if (v60 <= 1)
                  {
                    goto LABEL_61;
                  }
                }
              }

              v59 = v47;
LABEL_61:
              *v59 = v52;
              v59[1] = v53;
            }
          }
        }

        v6 -= 2;
      }

      while (v8-- > 2);
    }
  }

  return result;
}

double *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,gm::Matrix<double,2,1> *,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &>(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a3;
  v6 = a3[1];
  v8 = *(a2 - 2);
  v7 = *(a2 - 1);
  v9 = (v4 - v6) / (*a1 - *a3);
  if (vabdd_f64(*a1, *a3) < 2.22044605e-16)
  {
    v9 = 1.79769313e308;
  }

  if (vabdd_f64(v8, v5) >= 2.22044605e-16)
  {
    v10 = (v7 - v6) / (v8 - *a3);
  }

  else
  {
    v10 = 1.79769313e308;
  }

  if (v9 < v10 || v9 == v10 && (v3 < v8 || v3 == v8 && v4 < v7))
  {
    v12 = a1[2];
    v13 = a1[3];
    i = a1 + 2;
    v14 = (v13 - v6) / (v12 - v5);
    if (vabdd_f64(v12, v5) < 2.22044605e-16)
    {
      v14 = 1.79769313e308;
    }

    if (v9 >= v14)
    {
      v15 = a1 + 5;
      do
      {
        if (v9 == v14)
        {
          if (v3 < v12)
          {
            goto LABEL_34;
          }

          if (v3 == v12 && v4 < v13)
          {
            break;
          }
        }

        i += 2;
        v12 = *(v15 - 1);
        v13 = *v15;
        v14 = (*v15 - v6) / (v12 - v5);
        if (vabdd_f64(v12, v5) < 2.22044605e-16)
        {
          v14 = 1.79769313e308;
        }

        v15 += 2;
      }

      while (v9 >= v14);
      i = v15 - 3;
    }
  }

  else
  {
    for (i = a1 + 2; i < a2; i += 2)
    {
      v18 = *i;
      v17 = i[1];
      v19 = (v17 - v6) / (*i - v5);
      if (vabdd_f64(*i, v5) < 2.22044605e-16)
      {
        v19 = 1.79769313e308;
      }

      if (v9 < v19 || v9 == v19 && (v3 < v18 || v3 == v18 && v4 < v17))
      {
        break;
      }
    }
  }

LABEL_34:
  if (i < a2)
  {
    for (a2 -= 2; ; a2 -= 2)
    {
      v20 = (v7 - v6) / (v8 - v5);
      if (vabdd_f64(v8, v5) < 2.22044605e-16)
      {
        v20 = 1.79769313e308;
      }

      if (v9 >= v20 && (v9 != v20 || v3 >= v8 && (v3 != v8 || v4 >= v7)))
      {
        break;
      }

      v8 = *(a2 - 2);
      v7 = *(a2 - 1);
    }
  }

  if (i < a2)
  {
    v21 = *i;
    v22 = *a2;
    do
    {
      v23 = *(i + 1);
      *i = v22;
      i[1] = a2[1];
      *a2 = v21;
      *(a2 + 1) = v23;
      v24 = *a3;
      v25 = a3[1];
      if (vabdd_f64(v3, *a3) >= 2.22044605e-16)
      {
        v26 = (v4 - v25) / (v3 - *a3);
      }

      else
      {
        v26 = 1.79769313e308;
      }

      v21 = i[2];
      v28 = i[3];
      v27 = i + 2;
      v29 = (v28 - v25) / (v21 - v24);
      if (vabdd_f64(v21, v24) < 2.22044605e-16)
      {
        v29 = 1.79769313e308;
      }

      if (v26 >= v29)
      {
        v30 = i + 5;
        do
        {
          if (v26 == v29)
          {
            if (v3 < v21)
            {
              goto LABEL_52;
            }

            if (v3 == v21 && v4 < v28)
            {
              break;
            }
          }

          v27 += 2;
          v21 = *(v30 - 1);
          v28 = *v30;
          v29 = (*v30 - v25) / (v21 - v24);
          if (vabdd_f64(v21, v24) < 2.22044605e-16)
          {
            v29 = 1.79769313e308;
          }

          v30 += 2;
        }

        while (v26 >= v29);
        i = v30 - 3;
      }

      else
      {
LABEL_52:
        i = v27;
      }

      do
      {
        v22 = *(a2 - 2);
        v32 = *(a2 - 1);
        a2 -= 2;
        v33 = (v32 - v25) / (v22 - v24);
        if (vabdd_f64(v22, v24) < 2.22044605e-16)
        {
          v33 = 1.79769313e308;
        }
      }

      while (v26 < v33 || v26 == v33 && (v3 < v22 || v3 == v22 && v4 < v32));
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v4;
  return i;
}

double *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,gm::Matrix<double,2,1> *,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &>(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a3;
  v6 = a3[1];
  if (vabdd_f64(*a1, *a3) >= 2.22044605e-16)
  {
    v7 = (v4 - v6) / (*a1 - *a3);
  }

  else
  {
    v7 = 1.79769313e308;
  }

  for (i = a1 + 2; ; i += 2)
  {
    v9 = *i;
    v10 = i[1];
    v11 = (v10 - v6) / (*i - v5);
    if (vabdd_f64(*i, v5) < 2.22044605e-16)
    {
      v11 = 1.79769313e308;
    }

    if (v11 >= v7 && (v11 != v7 || v9 >= v3 && (v9 != v3 || v10 >= v4)))
    {
      break;
    }
  }

  if (i - 2 == a1)
  {
    if (i < a2)
    {
      v16 = *(a2 - 2);
      v17 = *(a2 - 1);
      a2 -= 2;
      v18 = (v17 - v6) / (v16 - v5);
      if (vabdd_f64(v16, v5) < 2.22044605e-16)
      {
        v18 = 1.79769313e308;
      }

      while (v18 >= v7)
      {
        if (v18 == v7 && (v16 < v3 || v16 == v3 && v17 < v4) || i >= a2)
        {
          break;
        }

        v16 = *(a2 - 2);
        v17 = *(a2 - 1);
        a2 -= 2;
        v18 = (v17 - v6) / (v16 - v5);
        if (vabdd_f64(v16, v5) < 2.22044605e-16)
        {
          v18 = 1.79769313e308;
        }
      }
    }
  }

  else
  {
    v12 = *(a2 - 2);
    v13 = *(a2 - 1);
    a2 -= 2;
    v14 = (v13 - v6) / (v12 - v5);
    if (vabdd_f64(v12, v5) < 2.22044605e-16)
    {
      v14 = 1.79769313e308;
    }

    while (v14 >= v7)
    {
      if (v14 == v7)
      {
        if (v12 < v3)
        {
          break;
        }

        if (v12 == v3 && v13 < v4)
        {
          break;
        }
      }

      v12 = *(a2 - 2);
      v13 = *(a2 - 1);
      a2 -= 2;
      v14 = (v13 - v6) / (v12 - v5);
      if (vabdd_f64(v12, v5) < 2.22044605e-16)
      {
        v14 = 1.79769313e308;
      }
    }
  }

  v19 = i;
  if (i < a2)
  {
    v20 = *a2;
    v19 = i;
    v21 = a2;
    do
    {
      v22 = *(v19 + 1);
      *v19 = v20;
      v19[1] = v21[1];
      *v21 = v9;
      *(v21 + 1) = v22;
      v23 = *a3;
      v24 = a3[1];
      if (vabdd_f64(v3, *a3) >= 2.22044605e-16)
      {
        v25 = (v4 - v24) / (v3 - *a3);
      }

      else
      {
        v25 = 1.79769313e308;
      }

      do
      {
        v9 = v19[2];
        v26 = v19[3];
        v19 += 2;
        v27 = (v26 - v24) / (v9 - v23);
        if (vabdd_f64(v9, v23) < 2.22044605e-16)
        {
          v27 = 1.79769313e308;
        }
      }

      while (v27 < v25 || v27 == v25 && (v9 < v3 || v9 == v3 && v26 < v4));
      while (1)
      {
        v20 = *(v21 - 2);
        v28 = *(v21 - 1);
        v21 -= 2;
        v29 = (v28 - v24) / (v20 - v23);
        if (vabdd_f64(v20, v23) < 2.22044605e-16)
        {
          v29 = 1.79769313e308;
        }

        if (v29 < v25)
        {
          break;
        }

        if (v29 == v25)
        {
          if (v20 < v3)
          {
            break;
          }

          if (v20 == v3 && v28 < v4)
          {
            break;
          }
        }
      }
    }

    while (v19 < v21);
  }

  if (v19 - 2 != a1)
  {
    *a1 = *(v19 - 2);
    a1[1] = *(v19 - 1);
  }

  *(v19 - 2) = v3;
  *(v19 - 1) = v4;
  return v19 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(double *a1, double *a2, double *a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1, a1 + 2, a2 - 2, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        return 1;
    }

    goto LABEL_20;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
LABEL_20:
    v18 = a1 + 4;
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1, a1 + 2, a1 + 4, a3);
    v19 = a1 + 6;
    if (a1 + 6 != a2)
    {
      v20 = 0;
      v21 = 0;
      v22 = *a3;
      while (1)
      {
        v23 = *v19;
        v24 = v19[1];
        v25 = a3[1];
        v26 = v24 - v25;
        v27 = *v18;
        v28 = v18[1];
        v29 = v28 - v25;
        v30 = v26 / (*v19 - v22);
        if (vabdd_f64(*v19, v22) < 2.22044605e-16)
        {
          v30 = 1.79769313e308;
        }

        v31 = v29 / (*v18 - v22);
        if (vabdd_f64(v27, v22) < 2.22044605e-16)
        {
          v31 = 1.79769313e308;
        }

        if (v30 < v31 || v30 == v31 && (v23 < v27 || v23 == v27 && v24 < v28))
        {
          *v19 = v27;
          v19[1] = v18[1];
          v32 = v20;
          while (1)
          {
            v33 = (a1 + v32);
            v34 = a3[1];
            v35 = v24 - v34;
            v36 = *(a1 + v32 + 16);
            v37 = *(a1 + v32 + 24);
            v38 = v37 - v34;
            v39 = v35 / (v23 - *a3);
            if (vabdd_f64(v23, *a3) < 2.22044605e-16)
            {
              v39 = 1.79769313e308;
            }

            v40 = v38 / (v36 - *a3);
            v41 = vabdd_f64(v36, *a3) >= 2.22044605e-16 ? v40 : 1.79769313e308;
            if (v39 >= v41)
            {
              if (v39 != v41)
              {
                goto LABEL_44;
              }

              if (v23 >= v36 && (v23 != v36 || v24 >= v37))
              {
                break;
              }
            }

            v18 -= 2;
            v33[4] = v36;
            v33[5] = v37;
            v32 -= 16;
            if (v32 == -32)
            {
              v18 = a1;
              goto LABEL_44;
            }
          }

          v18 = (a1 + v32 + 32);
LABEL_44:
          *v18 = v23;
          v18[1] = v24;
          if (++v21 == 8)
          {
            return v19 + 2 == a2;
          }

          v22 = *a3;
        }

        v18 = v19;
        v20 += 16;
        v19 += 2;
        if (v19 == a2)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  v7 = *(a2 - 2);
  v8 = *(a2 - 1);
  v9 = a3[1];
  v10 = v8 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = v12 - v9;
  v14 = v10 / (v7 - *a3);
  if (vabdd_f64(v7, *a3) < 2.22044605e-16)
  {
    v14 = 1.79769313e308;
  }

  v15 = v13 / (*a1 - *a3);
  if (vabdd_f64(v11, *a3) >= 2.22044605e-16)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1.79769313e308;
  }

  if (v14 < v16)
  {
    goto LABEL_14;
  }

  if (v14 != v16)
  {
    return 1;
  }

  if (v7 < v11 || (result = 1, v7 == v11) && v8 < v12)
  {
LABEL_14:
    *a1 = v7;
    a1[1] = *(a2 - 1);
    *(a2 - 2) = v11;
    *(a2 - 1) = v12;
    return 1;
  }

  return result;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(uint64_t result, double *a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      v10 = *a2;
      if (v9 >= a3)
      {
        v14 = a2[1];
      }

      else
      {
        v11 = v8[2];
        v13 = *v8;
        v12 = v8[1];
        v14 = a2[1];
        v15 = v8[3];
        v16 = (v12 - v14) / (*v8 - v10);
        if (vabdd_f64(*v8, v10) < 2.22044605e-16)
        {
          v16 = 1.79769313e308;
        }

        if (vabdd_f64(v11, v10) >= 2.22044605e-16)
        {
          v17 = (v15 - v14) / (v11 - v10);
        }

        else
        {
          v17 = 1.79769313e308;
        }

        if (v16 < v17 || v16 == v17 && (v13 < v11 || v13 == v11 && v12 < v15))
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v18 = *v8;
      v19 = v8[1];
      v20 = v19 - v14;
      v21 = *a4;
      v22 = a4[1];
      v23 = v22 - v14;
      v24 = v20 / (*v8 - v10);
      if (vabdd_f64(*v8, v10) < 2.22044605e-16)
      {
        v24 = 1.79769313e308;
      }

      v25 = v23 / (*a4 - v10);
      v26 = vabdd_f64(v21, v10) >= 2.22044605e-16 ? v25 : 1.79769313e308;
      if (v24 >= v26 && (v24 != v26 || v18 >= v21 && (v18 != v21 || v19 >= v22)))
      {
        *a4 = v18;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v27 = v8;
            v28 = 2 * v7;
            v7 = (2 * v7) | 1;
            v8 = (result + 16 * v7);
            v29 = v28 + 2;
            v30 = *a2;
            v31 = a2[1];
            if (v29 < a3)
            {
              v32 = v8[2];
              v34 = *v8;
              v33 = v8[1];
              v35 = v8[3];
              v36 = (v33 - v31) / (*v8 - v30);
              if (vabdd_f64(*v8, v30) < 2.22044605e-16)
              {
                v36 = 1.79769313e308;
              }

              if (vabdd_f64(v32, v30) >= 2.22044605e-16)
              {
                v37 = (v35 - v31) / (v32 - v30);
              }

              else
              {
                v37 = 1.79769313e308;
              }

              if (v36 < v37 || v36 == v37 && (v34 < v32 || v34 == v32 && v33 < v35))
              {
                v8 += 2;
                v7 = v29;
              }
            }

            v38 = *v8;
            v39 = v8[1];
            v40 = v39 - v31;
            v41 = v22 - v31;
            v42 = v40 / (*v8 - v30);
            if (vabdd_f64(*v8, v30) < 2.22044605e-16)
            {
              v42 = 1.79769313e308;
            }

            v43 = v41 / (v21 - v30);
            v44 = vabdd_f64(v21, v30) >= 2.22044605e-16 ? v43 : 1.79769313e308;
            if (v42 < v44 || v42 == v44 && (v38 < v21 || v38 == v21 && v39 < v22))
            {
              break;
            }

            *v27 = v38;
            v27[1] = v8[1];
            if (v5 < v7)
            {
              goto LABEL_52;
            }
          }

          v8 = v27;
        }

LABEL_52:
        *v8 = v21;
        v8[1] = v22;
      }
    }
  }

  return result;
}

uint64_t md::Logic<md::CameraLogic,md::CameraContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1AF456233693CD46 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8 = md::LayoutContext::get<md::ElevationContext>(*(a2 + 8));
    v9 = v7;
    return (*(*v6 + 160))(v6, a2, &v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::CameraContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::CameraContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::CameraContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::CameraContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A36C30;
  v2 = a1[4];
  if (v2)
  {
    v3 = v2[699];
    v2[699] = 0;
    if (v3)
    {
      std::default_delete<md::SingleCameraContext>::operator()[abi:nn200100](v3);
    }

    v4 = v2[369];
    if (v4)
    {
      v2[370] = v4;
      operator delete(v4);
    }

    MEMORY[0x1B8C62190](v2, 0x1060C4002C2C252);
  }

  return a1;
}

void md::CameraLogic::~CameraLogic(md::CameraLogic *this)
{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

BOOL md::SingleCameraContext::isRectVisible(gdc::Camera *a1, __n128 a2, __n128 a3)
{
  v59 = a2;
  v61 = a3;
  v60 = 0;
  v62 = 0;
  if (*(a1 + 3784))
  {
    gdc::CameraView::mercatorCameraView(v23, a1);
  }

  else
  {
    v4 = *(a1 + 24);
    v24 = *(a1 + 8);
    v25 = v4;
    v5 = *(a1 + 56);
    v26 = *(a1 + 40);
    v27 = v5;
    v28 = *(a1 + 9);
    v6 = *(a1 + 6);
    v29 = *(a1 + 5);
    v30 = v6;
    v31 = *(a1 + 7);
    v7 = *(a1 + 344);
    v45 = *(a1 + 328);
    v46 = v7;
    v8 = *(a1 + 312);
    v43 = *(a1 + 296);
    v44 = v8;
    v9 = *(a1 + 280);
    v10 = *(a1 + 16);
    v41 = *(a1 + 264);
    v42 = v9;
    v11 = *(a1 + 45);
    v32 = v10;
    v47 = v11;
    v40 = *(a1 + 248);
    v39 = *(a1 + 232);
    v38 = *(a1 + 216);
    v37 = *(a1 + 200);
    v36 = *(a1 + 184);
    v35 = *(a1 + 168);
    v34 = *(a1 + 152);
    v33 = *(a1 + 136);
    v12 = *(a1 + 24);
    v48 = *(a1 + 23);
    v49 = v12;
    v13 = *(a1 + 26);
    v50 = *(a1 + 25);
    v51 = v13;
    v52 = *(a1 + 27);
    v53 = *(a1 + 112);
    v54 = *(a1 + 57);
    v14 = *(a1 + 30);
    v55 = *(a1 + 29);
    v56 = v14;
    geo::View<double>::View(&v57, a1 + 496, a1 + 69, (a1 + 680), a1 + 476, *(a1 + 239), *(a1 + 117));
    memcpy(v58, a1 + 984, sizeof(v58));
  }

  for (i = 0; i != 192; i += 32)
  {
    v16 = 0;
    v17 = *&v58[i + 16];
    v63 = *&v58[i];
    v64 = v17;
    do
    {
      v18 = &v59 + v16;
      if (*(&v63 + v16) >= 0.0)
      {
        v18 = &v61 + v16;
      }

      *&v65[v16] = *v18;
      v16 += 8;
    }

    while (v16 != 24);
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + *&v23[i + 984 + v19] * *&v65[v19];
      v19 += 8;
    }

    while (v19 != 24);
    v21 = *&v58[i + 24] + v20;
    if (v21 < 0.0)
    {
      break;
    }
  }

  return v21 >= 0.0;
}

void md::Logic<md::CameraLogic,md::CameraContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::Logic<md::ARCameraRouteLocationProviderLogic,md::ARCameraRouteLocationProviderContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::ARCameraRouteLocationProviderLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 128))
  {
    v4 = [*(*a3 + 40) routeInfo];
    v5 = [v4 route];

    md::ARCameraRouteLocationProvider::setRoute(*(a1 + 128), v5);
  }
}

uint64_t md::Logic<md::ARCameraRouteLocationProviderLogic,md::ARCameraRouteLocationProviderContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2A64A6E0A1B666D6 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8 = md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
    v9 = v7;
    return (*(*v6 + 160))(v6, a2, &v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::Logic<md::ARCameraRouteLocationProviderLogic,md::ARCameraRouteLocationProviderContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2A64A6E0A1B666D6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 152))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARCameraRouteLocationProviderLogic,md::ARCameraRouteLocationProviderContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2A64A6E0A1B666D6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 144))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARCameraRouteLocationProviderLogic,md::ARCameraRouteLocationProviderContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2A64A6E0A1B666D6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARCameraRouteLocationProviderLogic,md::ARCameraRouteLocationProviderContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2A64A6E0A1B666D6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 128))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARCameraRouteLocationProviderContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARCameraRouteLocationProviderContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A36DC8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARCameraRouteLocationProviderContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A36DC8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARCameraRouteLocationProviderLogic::didBecomeInactive(md::ARCameraRouteLocationProviderLogic *this)
{
  v1 = *(this + 16);
  if (v1)
  {
    md::ARCameraRouteLocationProvider::setRoute(v1, 0);
  }
}

void md::ARCameraRouteLocationProviderLogic::~ARCameraRouteLocationProviderLogic(md::ARCameraRouteLocationProviderLogic *this)
{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void ___ZN2md16RouteRenderLayer21updateRouteLineMeshesERKNS_13LayoutContextERKNSt3__16vectorINS4_10shared_ptrINS_16RouteLineOverlayEEENS4_9allocatorIS8_EEEEb_block_invoke(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = (*a2 + 1);
  if (!*a2)
  {
    v3 = 0;
  }

  if ((*(v3 + 192) | 2) == 2)
  {
    v6 = **(a1 + 32);
    if (v2)
    {
      ++*v2;
    }

    v7 = *(v6 + 504);
    if (v7)
    {
      if ((*v7)-- == 1)
      {
        md::RouteLineSection::~RouteLineSection((v7 + 1));
        v9 = *(v6 + 504);
        v11 = mdm::zone_mallocator::instance(v10);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::_fast_shared_ptr_control>(v11, v9);
        *(v6 + 504) = 0;
        v2 = *a2;
      }
    }

    *(v6 + 504) = v2;
    v12 = **(a1 + 32);
    v13 = *(v12 + 504);
    if (v13)
    {
      v14 = v13 + 8;
    }

    else
    {
      v14 = 0;
    }

    md::RouteLineSection::updateStyleQueryIfNecessary(v14, *(a1 + 40), *(a1 + 48), *(v12 + 620), *(v12 + 621), *(v12 + 622), (v12 + 536), (v12 + 568), *(a1 + 56), *(a1 + 60), -1, -1);
  }
}

__n128 std::__function::__func<md::RouteRenderLayer::runLayoutLogic(md::LayoutContext const&)::$_0,std::allocator<md::RouteRenderLayer::runLayoutLogic(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A36DF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::ElevationCompressedVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::ElevationCompressedVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinci::ElevationCompressedMesh::~ElevationCompressedMesh(ggl::DaVinci::ElevationCompressedMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::DaVinci::ElevationCompressedMesh::~ElevationCompressedMesh(ggl::DaVinci::ElevationCompressedMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::ElevationCompressedVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::ElevationCompressedVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void *ggl::DaVinci::ElevationCompressedMesh::ElevationCompressedMesh(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  {
    {
      ggl::MeshTyped<ggl::DaVinci::ElevationCompressedVbo>::attributesReflection(void)::r = &ggl::DaVinci::elevationCompressedVboReflection;
    }

    ggl::MeshTyped<ggl::DaVinci::ElevationCompressedVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::DaVinci::ElevationCompressedVbo>::attributesReflection(void)::r;
    unk_1EB841D28 = 1;
  }

  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::DaVinci::ElevationCompressedVbo>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = a1 + 15;
  *a1 = &unk_1F2A36EB8;
  a1[2] = &unk_1F2A36ED8;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData> const*,std::shared_ptr<ggl::VertexData> const*>(a1 + 8, &v13, &v15, 1uLL);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[13];
  a1[12] = v10;
  a1[13] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  *a1 = &unk_1F2A36E38;
  a1[2] = &unk_1F2A36E58;
  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::ElevationVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::ElevationVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinci::ElevationMesh::~ElevationMesh(ggl::DaVinci::ElevationMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::DaVinci::ElevationMesh::~ElevationMesh(ggl::DaVinci::ElevationMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::ElevationVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::ElevationVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup::~BuildingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::PassList::didPrepareForLayout(md::PassList *this, const md::LayoutContext *a2, id *a3)
{
  v6 = *(*(this + 3) + 128);
  md::LayoutContext::frameState(a2);
  *(*(this + 3) + 128) = (*(v7 + 88) * 1000.0);
  v8 = [a3[13] finalRenderTarget];
  v10 = v8;
  if (v8)
  {
    v11 = *(this + 3);
    v12 = ggl::RenderTarget::width(v8);
    v13 = ggl::RenderTarget::height(v10);
    *(v11 + 40) = v12;
    *(v11 + 44) = v13;
    v14 = *(v10 + 72);
    *(v11 + 48) = *(v10 + 56);
    *(v11 + 64) = v14;
  }

  v15 = *(this + 3) + 136;
  memset(v18, 0, sizeof(v18));
  v20 = 0u;
  v21 = 0u;
  v19 = 1065353216;
  v22 = 1065353216;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  v27 = v15;
  v17 = 0;
  memset(v16, 0, 73);
  md::FrameGraphUtils::prepareGraphBuilderForRenderTarget(v16, v18, v10, "renderTarget_colorBuffer", 0xC1B9767C00000018, "renderTarget_depthStencilBuffer", 0xE505BC120000001FLL, v9, "renderTarget_msaaResolveBuffer", 0xF53364270000001ELL);
  (*(*this + 24))(this, a2, a3, v16, v18);
  md::PassList::updateGraphState(this, v18, v6);
  md::FrameGraphBuilder::~FrameGraphBuilder(v18);
}

void sub_1B3142EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  md::FrameGraphBuilder::~FrameGraphBuilder(va);
  _Unwind_Resume(a1);
}

void std::vector<ggl::CopyItem,geo::allocator_adapter<ggl::CopyItem,ggl::zone_mallocator>>::__vdeallocate(ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v3 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::CopyItem>(v3, v1);
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }
}

void std::vector<ggl::Texture2DLoadItem,geo::allocator_adapter<ggl::Texture2DLoadItem,ggl::zone_mallocator>>::__vdeallocate(ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1;
    v3 = *(a1 + 1);
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 80;
        a1 = std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::~__value_func[abi:nn200100]((v3 - 32));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *v2;
    }

    *(v2 + 1) = v1;
    v6 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture2DLoadItem>(v6, v4);
    *v2 = 0;
    *(v2 + 1) = 0;
    *(v2 + 2) = 0;
  }
}

void std::vector<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>>::__vdeallocate(ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1;
    v3 = *(a1 + 1);
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 64;
        a1 = std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100]((v3 - 32));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *v2;
    }

    *(v2 + 1) = v1;
    v6 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BufferLoadItem>(v6, v4);
    *v2 = 0;
    *(v2 + 1) = 0;
    *(v2 + 2) = 0;
  }
}

double std::deque<std::shared_ptr<ggl::QueryItem>>::__move_assign(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 == v5)
  {
    v6 = (a1 + 40);
    v14 = *(a1 + 8);
  }

  else
  {
    v6 = (a1 + 40);
    v7 = *(a1 + 32);
    v8 = &v5[v7 >> 8];
    v9 = *v8;
    v10 = *v8 + 16 * v7;
    v11 = *(v5 + (((*(a1 + 40) + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v7);
    if (v10 != v11)
    {
      do
      {
        v12 = *(v10 + 8);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
          v9 = *v8;
        }

        v10 += 16;
        if (v10 - v9 == 4096)
        {
          v13 = v8[1];
          ++v8;
          v9 = v13;
          v10 = v13;
        }
      }

      while (v10 != v11);
      v5 = *(a1 + 8);
      v4 = *(a1 + 16);
    }

    v14 = v4;
  }

  *v6 = 0;
  v15 = (v14 - v5) >> 3;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v5);
      v4 = *(a1 + 16);
      v5 = (*(a1 + 8) + 8);
      *(a1 + 8) = v5;
      v15 = (v4 - v5) >> 3;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v16 = 128;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_18;
    }

    v16 = 256;
  }

  *(a1 + 32) = v16;
LABEL_18:
  if (*(a1 + 40))
  {
    std::deque<std::shared_ptr<ggl::QueryItem>>::__maybe_remove_front_spare[abi:nn200100](a1, 0);
    v18 = *(a1 + 8);
    v17 = *(a1 + 16);
    if (v17 == v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = 32 * (v17 - v18) - 1;
    }

    if ((v19 - (*(a1 + 40) + *(a1 + 32))) >= 0x100)
    {
      operator delete(*(v17 - 8));
      *(a1 + 16) -= 8;
    }
  }

  else
  {
    while (v4 != v5)
    {
      operator delete(*(v4 - 8));
      v5 = *(a1 + 8);
      v4 = *(a1 + 16) - 8;
      *(a1 + 16) = v4;
    }

    *(a1 + 32) = 0;
  }

  std::__split_buffer<ggl::PendingQuery *>::shrink_to_fit(a1);
  v21 = *(a1 + 8);
  v20 = *(a1 + 16);
  if (v20 != v21)
  {
    *(a1 + 16) = v20 + ((v21 - v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<ggl::PendingQuery *>::shrink_to_fit(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void std::deque<std::shared_ptr<ggl::QueryItem>>::__maybe_remove_front_spare[abi:nn200100](uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x100)
  {
    a2 = 1;
  }

  if (v3 > 0x1FF || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }
}

void std::deque<ggl::PendingQuery>::__maybe_remove_front_spare[abi:nn200100](uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x80)
  {
    a2 = 1;
  }

  if (v3 > 0xFF || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }
}

void std::deque<ggl::PendingQuery>::__maybe_remove_back_spare[abi:nn200100](void *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 16 * (v3 - v4) - 1;
  }

  v6 = v5 - (a1[5] + a1[4]);
  if (v6 < 0x80)
  {
    a2 = 1;
  }

  if (v6 > 0xFF || (a2 & 1) == 0)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::__function::__func<md::PassList::transferItems(md::FrameGraph *,md::FrameGraph *)::$_0,std::allocator<md::PassList::transferItems(md::FrameGraph *,md::FrameGraph *)::$_0>,void ()(md::FrameGraphPass const&,md::RenderQueueBase &,ggl::RenderTarget *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A37008;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::PassList::rootRenderQueue(void)::$_0,std::allocator<md::PassList::rootRenderQueue(void)::$_0>,void ()(md::FrameGraphPass const&,md::RenderQueueBase &,ggl::RenderTarget *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A36FC0;
  a2[1] = v2;
  return result;
}

id GEOGetVectorKitVKMapViewLog()
{
  if (GEOGetVectorKitVKMapViewLog(void)::onceToken[0] != -1)
  {
    dispatch_once(GEOGetVectorKitVKMapViewLog(void)::onceToken, &__block_literal_global_35133);
  }

  v1 = GEOGetVectorKitVKMapViewLog(void)::log;

  return v1;
}

{
  if (GEOGetVectorKitVKMapViewLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKMapViewLog(void)::onceToken, &__block_literal_global_37933);
  }

  v1 = GEOGetVectorKitVKMapViewLog(void)::log;

  return v1;
}

void ___ZL27GEOGetVectorKitVKMapViewLogv_block_invoke_35137()
{
  v0 = os_log_create("com.apple.VectorKit", "VKMapView");
  v1 = GEOGetVectorKitVKMapViewLog(void)::log;
  GEOGetVectorKitVKMapViewLog(void)::log = v0;
}

void md::RouteRenderLayer::createDebugNode(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = 16;
  strcpy(__p, "RouteRenderLayer");
  gdc::DebugTreeNode::DebugTreeNode(a2, __p);
  v4 = *(a1 + 64);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    while (1)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *v11 = 0u;
      *v12 = 0u;
      v13 = 0u;
      memset(v14, 0, sizeof(v14));
      std::string::basic_string[abi:nn200100]<0>(__p, "selected");
      gdc::DebugTreeValue::DebugTreeValue(v24, *(v8 + 620));
      gdc::DebugTreeNode::addProperty(v11, __p, v24);
      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v16 < 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:nn200100]<0>(__p, "layer");
      gdc::DebugTreeValue::DebugTreeValue(v21, *(v8 + 616));
      gdc::DebugTreeNode::addProperty(v11, __p, v21);
      if (v23 < 0)
      {
        operator delete(v22);
      }

      if (v16 < 0)
      {
        operator delete(*__p);
      }

      v9 = *(v8 + 144);
      if (v9)
      {
        v10 = v9;
        [v10 createDebugNode];
        gdc::DebugTreeNode::addChildNode(v11, __p);
        v27[0] = &v20;
        std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](v27);
        v27[0] = &v19;
        std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](v27);
        if (v18 < 0)
        {
          operator delete(v17);
        }

        if (v16 < 0)
        {
          operator delete(*__p);
        }
      }

      gdc::DebugTreeNode::addChildNode(a2, v11);
      *__p = &v14[1] + 8;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](__p);
      *__p = v14;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](__p);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(v12[1]);
      }

      if (SHIBYTE(v12[0]) < 0)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_22;
      }

LABEL_23:
      v5 += 2;
      if (v5 == v6)
      {
        return;
      }
    }

    operator delete(v11[0]);
    if (!v7)
    {
      goto LABEL_23;
    }

LABEL_22:
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    goto LABEL_23;
  }
}

void sub_1B3143A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a27);
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a27);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  a27 = v27 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a27);
  a27 = v27 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a27);
  if (*(v27 + 47) < 0)
  {
    operator delete(*(v27 + 24));
  }

  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(a1);
}

uint64_t ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v8 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v8 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v8);
  v9 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<ggl::Debug::ExtendedVbo,geo::allocator_adapter<ggl::Debug::ExtendedVbo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v7);
}

void std::vector<ggl::Debug::ExtendedVbo,geo::allocator_adapter<ggl::Debug::ExtendedVbo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedVbo>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedVbo>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::ExtendedPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::ExtendedPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedPipelineSetup *>(v5, v4);
  }

  return a1;
}

ggl::zone_mallocator *std::vector<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::ExtendedMesh *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::ExtendedMesh *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedMesh *>(v5, v4);
  }

  return a1;
}

ggl::zone_mallocator *std::vector<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::ExtendedMesh *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::ExtendedPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void sub_1B31446B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  MEMORY[0x1B8C62190](v10, v11);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::ExtendedPipelineSetup * ()(void)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(a1 + 8);

  operator delete(a1);
}

void *std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::ExtendedPipelineSetup * ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F2A370A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::ExtendedPipelineSetup * ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A370A8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::ExtendedPipelineSetup * ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A370A8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void *__Block_byref_object_copy__35151(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void ___ZN2md16RouteRenderLayer34layoutDebugRouteLineSnappingStatusERKNSt3__110shared_ptrINS_16RouteLineOverlayEEERKNS_13LayoutContextEPN3ggl13CommandBufferE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 section];
  v5 = *(*(a1 + 32) + 8);
  v6 = [v3 section];
  v7 = v6;
  v8 = *(v5 + 56);
  if (!v8)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = v8[4];
      if (v6 >= v10)
      {
        break;
      }

      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_7;
      }
    }

    if (v10 >= v6)
    {
      break;
    }

    v8 = v9[1];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v11 = [v3 routeStartIndex];
  v12 = [v4 startPointIndex];
  v13 = [v3 routeEndIndex];
  v14 = v11 - v12;
  v15 = v13 - [v4 startPointIndex];
  v17 = v9[6];
  v16 = v9[7];
  if (v17 >= v16)
  {
    v19 = v9[5];
    v20 = v17 - v19;
    v21 = (v17 - v19) >> 3;
    v22 = v21 + 1;
    if ((v21 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v23 = v16 - v19;
    if (v23 >> 2 > v22)
    {
      v22 = v23 >> 2;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      v24 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v24);
    }

    v25 = (8 * v21);
    *v25 = v14;
    v25[1] = v15;
    v18 = 8 * v21 + 8;
    memcpy(0, v19, v20);
    v26 = v9[5];
    v9[5] = 0;
    v9[6] = v18;
    v9[7] = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v17 = v14;
    *(v17 + 1) = v15;
    v18 = (v17 + 8);
  }

  v9[6] = v18;

  v27 = [v3 routeEndIndex];
  v28 = [v3 routeStartIndex];
  if ([v4 pointCount])
  {
    v29 = (v27 - v28 + 1);
    if (v29 >= 2)
    {
      v30 = ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::pop(*(**(a1 + 40) + 384));
      ggl::BufferData::resize(**(v30 + 8), 0);
      [v4 vkBounds];
      v31 = 0;
      v72 = 0u;
      v74 = 0;
      v76 = 0;
      v73 = 0u;
      v71 = 0u;
      v70 = 0u;
      v69 = v33 - v32;
      *&v72 = v35 - v34;
      v75 = v33 - v32;
      v77 = v32;
      v78 = v34;
      v36 = *(a1 + 48) + 808;
      v79 = xmmword_1B33B0740;
      do
      {
        v37 = 0;
        v38 = &v69;
        do
        {
          v39 = 0;
          v40 = 0.0;
          v41 = v36;
          do
          {
            v42 = *v41;
            v41 += 4;
            v40 = v40 + v38[v39++] * v42;
          }

          while (v39 != 4);
          v68[4 * v37++ + v31] = v40;
          v38 += 4;
        }

        while (v37 != 4);
        ++v31;
        v36 += 8;
      }

      while (v31 != 4);
      v43 = [v4 points];
      v44 = [v3 routeStartIndex];
      v45 = [v4 startPointIndex];
      ggl::BufferData::resize(**(v30 + 8), v29);
      ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(v67, **(v30 + 8), 0, v29);
      v46 = (v43 + 12 * v44 - 12 * v45);
      v47 = (v67[5] + 8);
      do
      {
        v48 = *v46;
        v46 = (v46 + 12);
        *(v47 - 1) = v48;
        *v47 = 0x3F80000000000000;
        v47 += 2;
        --v29;
      }

      while (v29);
      v49 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(**(a1 + 40) + 368));
      v50 = v49;
      v51 = 0;
      v52 = v68;
      do
      {
        v54 = *v52;
        v53 = v52[1];
        v52 += 2;
        v64[v51++] = vcvt_hight_f32_f64(vcvt_f32_f64(v54), v53);
      }

      while (v51 != 4);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v62, *(*(v49 + 136) + 16));
      v55 = v63;
      *v63 = v64[0];
      v55[1] = v64[1];
      v55[2] = v65;
      v55[3] = v66;
      ggl::BufferMemory::~BufferMemory(v62);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v64, **(v50 + 136));
      v56 = *(&v65 + 1);
      ggl::BufferMemory::~BufferMemory(v64);
      if ([v3 isMapMatched] && (objc_msgSend(v3, "isMapMatching") & 1) == 0)
      {
        v62[0] = xmmword_1B33B0710;
        geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(v64, v62);
        for (i = 0; i != 16; i += 4)
        {
          *(v56 + i) = *(v64 + i);
        }
      }

      else if ([v3 isMapMatching])
      {
        v62[0] = xmmword_1B33B0AC0;
        geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(v64, v62);
        for (j = 0; j != 16; j += 4)
        {
          *(v56 + j) = *(v64 + j);
        }
      }

      else
      {
        v62[0] = xmmword_1B33AFEE0;
        geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(v64, v62);
        for (k = 0; k != 16; k += 4)
        {
          *(v56 + k) = *(v64 + k);
        }
      }

      v60 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(**(a1 + 40) + 376));
      v60[8] = v30;
      v60[4] = v50;
      v60[3] = *(**(a1 + 40) + 360);
      v61 = *(a1 + 56);
      *&v64[0] = v60;
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v61 + 72), v64);
      ggl::BufferMemory::~BufferMemory(v67);
    }
  }
}

void sub_1B3144E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ggl::BufferMemory::~BufferMemory(va);

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<GEOComposedRouteSection * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const {__strong}&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

int *std::__introsort<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *,false>(int *result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 2;
    v9 = a2 - 1;
    v10 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v10;
          v11 = (a2 - v10) >> 3;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v94 = v10[2];
                v95 = *v10;
                v96 = *v8;
                if (v94 >= *v10)
                {
                  if (v96 >= v94)
                  {
                    return result;
                  }

                  v10[2] = v96;
                  *v8 = v94;
                  v147 = v10[3];
                  v10[3] = *v9;
                  *v9 = v147;
                  v148 = v10[2];
                  v149 = *v10;
                  if (v148 >= *v10)
                  {
                    return result;
                  }

                  *v10 = v148;
                  v10[2] = v149;
                  v97 = v10 + 1;
                  v9 = v10 + 3;
                }

                else
                {
                  if (v96 >= v94)
                  {
                    v97 = v10 + 3;
                    v160 = v10[3];
                    v161 = v10[1];
                    *v10 = v94;
                    v10[1] = v160;
                    v10[2] = v95;
                    v10[3] = v161;
                    if (*v8 >= v95)
                    {
                      return result;
                    }

                    v10[2] = *v8;
                  }

                  else
                  {
                    v97 = v10 + 1;
                    *v10 = v96;
                  }

                  *v8 = v95;
                }

                v162 = *v97;
                *v97 = *v9;
                *v9 = v162;
                return result;
              case 4:
                v98 = v10[2];
                v99 = *v10;
                v100 = v10[4];
                if (v98 >= *v10)
                {
                  if (v100 < v98)
                  {
                    v150 = v10 + 3;
                    v151 = v10[3];
                    v152 = v10[5];
                    v10[2] = v100;
                    v10[3] = v152;
                    v10[4] = v98;
                    v10[5] = v151;
                    if (v100 < v99)
                    {
                      *v10 = v100;
                      v10[2] = v99;
                      v101 = v10 + 1;
                      goto LABEL_204;
                    }

LABEL_206:
                    if (*v8 < v98)
                    {
                      v10[4] = *v8;
                      *v8 = v98;
                      v166 = v10[5];
                      v10[5] = *v9;
                      *v9 = v166;
                      v167 = v10[4];
                      v168 = v10[2];
                      if (v167 < v168)
                      {
                        v169 = v10[3];
                        v170 = v10[5];
                        v10[2] = v167;
                        v10[3] = v170;
                        v10[4] = v168;
                        v10[5] = v169;
                        v171 = *v10;
                        if (v167 < *v10)
                        {
                          v172 = v10[1];
                          *v10 = v167;
                          v10[1] = v170;
                          v10[2] = v171;
                          v10[3] = v172;
                        }
                      }
                    }

                    return result;
                  }
                }

                else
                {
                  if (v100 < v98)
                  {
                    v101 = v10 + 1;
                    *v10 = v100;
                    goto LABEL_203;
                  }

                  v101 = v10 + 3;
                  v163 = v10[3];
                  v164 = v10[1];
                  *v10 = v98;
                  v10[1] = v163;
                  v10[2] = v99;
                  v10[3] = v164;
                  if (v100 < v99)
                  {
                    v10[2] = v100;
LABEL_203:
                    v10[4] = v99;
                    v150 = v10 + 5;
LABEL_204:
                    v165 = *v101;
                    *v101 = *v150;
                    *v150 = v165;
                    v98 = v10[4];
                    goto LABEL_206;
                  }
                }

                v98 = v100;
                goto LABEL_206;
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *,0>(v10, v10 + 2, v10 + 4, v10 + 6, a2 - 2);
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
              v92 = *v10;
              if (*v8 < *v10)
              {
                *v10 = *v8;
                *v8 = v92;
                v93 = v10[1];
                v10[1] = *v9;
                *v9 = v93;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            v102 = v10 + 2;
            v104 = v10 == a2 || v102 == a2;
            if (a4)
            {
              if (!v104)
              {
                v105 = 0;
                v106 = v10;
                do
                {
                  v107 = v106[2];
                  v108 = *v106;
                  v106 = v102;
                  if (v107 < v108)
                  {
                    v110 = *v102;
                    v109 = v102[1];
                    v111 = v105;
                    while (1)
                    {
                      v112 = v10 + v111;
                      v113 = *(v10 + v111 + 4);
                      *(v112 + 2) = v108;
                      *(v112 + 3) = v113;
                      if (!v111)
                      {
                        break;
                      }

                      v108 = *(v112 - 2);
                      v111 -= 8;
                      if (v108 <= v110)
                      {
                        v114 = (v10 + v111 + 8);
                        goto LABEL_137;
                      }
                    }

                    v114 = v10;
LABEL_137:
                    *v114 = v110;
                    v114[1] = v109;
                  }

                  v102 = v106 + 2;
                  v105 += 8;
                }

                while (v106 + 2 != a2);
              }
            }

            else if (!v104)
            {
              v153 = v10 + 3;
              do
              {
                v154 = v7[2];
                v155 = *v7;
                v7 = v102;
                if (v154 < v155)
                {
                  v156 = *v102;
                  v157 = v153;
                  do
                  {
                    v158 = v157;
                    v159 = *(v157 - 2);
                    v157 -= 2;
                    *(v158 - 1) = v155;
                    *v158 = v159;
                    v155 = *(v158 - 5);
                  }

                  while (v155 > v156);
                  *(v157 - 1) = v156;
                }

                v102 = v7 + 2;
                v153 += 2;
              }

              while (v7 + 2 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v10 != a2)
            {
              v115 = (v11 - 2) >> 1;
              v116 = v115;
              do
              {
                v117 = v116;
                if (v115 >= v116)
                {
                  v118 = (2 * v116) | 1;
                  v119 = &v10[2 * v118];
                  if (2 * v117 + 2 >= v11)
                  {
                    v120 = *v119;
                  }

                  else
                  {
                    v120 = *v119;
                    v121 = v119[2];
                    if (*v119 <= v121)
                    {
                      v120 = v119[2];
                    }

                    if (*v119 < v121)
                    {
                      v119 += 2;
                      v118 = 2 * v117 + 2;
                    }
                  }

                  v122 = &v10[2 * v117];
                  if (v120 >= *v122)
                  {
                    v123 = *v122;
                    v124 = v122[1];
                    do
                    {
                      v125 = v122;
                      v122 = v119;
                      *v125 = v120;
                      v125[1] = v119[1];
                      if (v115 < v118)
                      {
                        break;
                      }

                      v126 = (2 * v118) | 1;
                      v119 = &v10[2 * v126];
                      v118 = 2 * v118 + 2;
                      if (v118 >= v11)
                      {
                        v120 = *v119;
                        v118 = v126;
                      }

                      else
                      {
                        v120 = *v119;
                        result = v119 + 2;
                        v127 = v119[2];
                        if (*v119 <= v127)
                        {
                          v120 = v119[2];
                        }

                        if (*v119 >= v127)
                        {
                          v118 = v126;
                        }

                        else
                        {
                          v119 += 2;
                        }
                      }
                    }

                    while (v120 >= v123);
                    *v122 = v123;
                    v122[1] = v124;
                  }
                }

                v116 = v117 - 1;
              }

              while (v117);
              do
              {
                v128 = 0;
                v129 = *v10;
                v130 = v10;
                do
                {
                  v131 = &v130[2 * v128];
                  v132 = v131 + 2;
                  v133 = (2 * v128) | 1;
                  v128 = 2 * v128 + 2;
                  if (v128 >= v11)
                  {
                    v134 = *v132;
                    v128 = v133;
                  }

                  else
                  {
                    v136 = v131[4];
                    v135 = v131 + 4;
                    v134 = v136;
                    v137 = *(v135 - 2);
                    v138 = v137 < v136;
                    if (v137 > v136)
                    {
                      v134 = *(v135 - 2);
                    }

                    if (v138)
                    {
                      v132 = v135;
                    }

                    else
                    {
                      v128 = v133;
                    }
                  }

                  *v130 = v134;
                  v130[1] = v132[1];
                  v130 = v132;
                }

                while (v128 <= ((v11 - 2) >> 1));
                if (v132 == a2 - 2)
                {
                  *v132 = v129;
                }

                else
                {
                  *v132 = *(a2 - 2);
                  v132[1] = *(a2 - 1);
                  *(a2 - 1) = v129;
                  v139 = (v132 - v10 + 8) >> 3;
                  v138 = v139 < 2;
                  v140 = v139 - 2;
                  if (!v138)
                  {
                    v141 = v140 >> 1;
                    v142 = &v10[2 * v141];
                    v143 = *v142;
                    if (*v142 < *v132)
                    {
                      v144 = *v132;
                      v145 = v132[1];
                      do
                      {
                        v146 = v132;
                        v132 = v142;
                        *v146 = v143;
                        v146[1] = v142[1];
                        if (!v141)
                        {
                          break;
                        }

                        v141 = (v141 - 1) >> 1;
                        v142 = &v10[2 * v141];
                        v143 = *v142;
                      }

                      while (*v142 < v144);
                      *v132 = v144;
                      v132[1] = v145;
                    }
                  }
                }

                a2 -= 2;
                v138 = v11-- <= 2;
              }

              while (!v138);
            }

            return result;
          }

          v12 = &v10[2 * (v11 >> 1)];
          v13 = v12;
          v14 = *v8;
          if (v11 >= 0x81)
          {
            v15 = *v12;
            v16 = *v10;
            if (*v12 >= *v10)
            {
              if (v14 >= v15 || (*v12 = v14, *v8 = v15, v22 = v12 + 1, v21 = v12[1], v12[1] = *v9, *v9 = v21, v23 = *v10, *v12 >= *v10))
              {
LABEL_29:
                v30 = v12 - 2;
                v31 = *(v12 - 2);
                v32 = v10[2];
                v33 = *(a2 - 4);
                if (v31 >= v32)
                {
                  if (v33 >= v31 || (*v30 = v33, *(a2 - 4) = v31, v36 = v12 - 1, v35 = *(v12 - 1), *(v12 - 1) = *(a2 - 3), *(a2 - 3) = v35, v37 = v10[2], *v30 >= v37))
                  {
LABEL_42:
                    v46 = v12[2];
                    v44 = v12 + 2;
                    v45 = v46;
                    v47 = v10[4];
                    v48 = *(a2 - 6);
                    if (v46 >= v47)
                    {
                      if (v48 < v45)
                      {
                        *v44 = v48;
                        *(a2 - 6) = v45;
                        v51 = v44 + 1;
                        v50 = v44[1];
                        v44[1] = *(a2 - 5);
                        *(a2 - 5) = v50;
                        v45 = *v44;
                        v52 = v10[4];
                        if (*v44 < v52)
                        {
                          v10[4] = v45;
                          *v44 = v52;
                          v49 = v10 + 5;
LABEL_51:
                          v56 = *v49;
                          *v49 = *v51;
                          *v51 = v56;
                          v45 = *v44;
                        }
                      }
                    }

                    else
                    {
                      if (v48 < v45)
                      {
                        v49 = v10 + 5;
                        v10[4] = v48;
LABEL_50:
                        *(a2 - 6) = v47;
                        v51 = a2 - 5;
                        goto LABEL_51;
                      }

                      v49 = v44 + 1;
                      v53 = v44[1];
                      v54 = v10[5];
                      v10[4] = v45;
                      v10[5] = v53;
                      *v44 = v47;
                      v44[1] = v54;
                      v55 = *(a2 - 6);
                      if (v55 < v47)
                      {
                        *v44 = v55;
                        goto LABEL_50;
                      }

                      v45 = v47;
                    }

                    v57 = *v13;
                    v58 = *v30;
                    if (*v13 >= *v30)
                    {
                      if (v45 >= v57)
                      {
LABEL_62:
                        v66 = *v10;
                        *v10 = v57;
                        v20 = v10 + 1;
                        *v13 = v66;
                        v26 = v13 + 1;
                        goto LABEL_63;
                      }

                      v61 = v13 + 1;
                      v62 = v13[1];
                      *v13 = v45;
                      v13[1] = v44[1];
                      *v44 = v57;
                      v44[1] = v62;
                      if (v45 >= v58)
                      {
                        v57 = v45;
                        goto LABEL_62;
                      }

                      *v30 = v45;
                      v59 = v30 + 1;
                      *v13 = v58;
                    }

                    else
                    {
                      if (v45 >= v57)
                      {
                        v63 = v13[1];
                        *v13 = v58;
                        v64 = v30[1];
                        *v30 = v57;
                        v30[1] = v63;
                        v13[1] = v64;
                        if (v45 >= v58)
                        {
                          v57 = v58;
                          goto LABEL_62;
                        }

                        *v13 = v45;
                        *v44 = v58;
                        v60 = v44 + 1;
                        v59 = v13 + 1;
                      }

                      else
                      {
                        *v30 = v45;
                        v59 = v30 + 1;
                        *v44 = v58;
                        v60 = v44 + 1;
                      }

                      v61 = v60;
                    }

                    v65 = *v59;
                    *v59 = *v61;
                    *v61 = v65;
                    v57 = *v13;
                    goto LABEL_62;
                  }

                  v10[2] = *v30;
                  *v30 = v37;
                  v34 = v10 + 3;
                }

                else
                {
                  if (v33 >= v31)
                  {
                    v34 = v12 - 1;
                    v40 = *(v12 - 1);
                    v41 = v10[3];
                    v10[2] = v31;
                    v10[3] = v40;
                    *v30 = v32;
                    *(v12 - 1) = v41;
                    v42 = *(a2 - 4);
                    if (v42 >= v32)
                    {
                      goto LABEL_42;
                    }

                    *v30 = v42;
                  }

                  else
                  {
                    v34 = v10 + 3;
                    v10[2] = v33;
                  }

                  *(a2 - 4) = v32;
                  v36 = a2 - 3;
                }

                v43 = *v34;
                *v34 = *v36;
                *v36 = v43;
                goto LABEL_42;
              }

              *v10 = *v12;
              v17 = v10 + 1;
              *v12 = v23;
            }

            else
            {
              if (v14 >= v15)
              {
                v17 = v12 + 1;
                v27 = v12[1];
                v28 = v10[1];
                *v10 = v15;
                v10[1] = v27;
                *v12 = v16;
                v12[1] = v28;
                if (*v8 >= v16)
                {
                  goto LABEL_29;
                }

                *v12 = *v8;
              }

              else
              {
                v17 = v10 + 1;
                *v10 = v14;
              }

              *v8 = v16;
              v22 = a2 - 1;
            }

            v29 = *v17;
            *v17 = *v22;
            *v22 = v29;
            goto LABEL_29;
          }

          v18 = *v10;
          v19 = *v12;
          if (*v10 >= *v12)
          {
            if (v14 < v18)
            {
              *v10 = v14;
              *v8 = v18;
              v24 = v10[1];
              v10[1] = *v9;
              *v9 = v24;
              v25 = *v13;
              if (*v10 < *v13)
              {
                *v13 = *v10;
                *v10 = v25;
                v20 = v13 + 1;
                v26 = v10 + 1;
LABEL_63:
                v67 = *v20;
                *v20 = *v26;
                *v26 = v67;
              }
            }
          }

          else
          {
            if (v14 < v18)
            {
              v20 = v12 + 1;
              *v13 = v14;
LABEL_37:
              *v8 = v19;
              v26 = a2 - 1;
              goto LABEL_63;
            }

            v20 = v10 + 1;
            v38 = v10[1];
            v39 = v13[1];
            *v13 = v18;
            v13[1] = v38;
            *v10 = v19;
            v10[1] = v39;
            if (*v8 < v19)
            {
              *v10 = *v8;
              goto LABEL_37;
            }
          }

          --a3;
          if ((a4 & 1) != 0 || *(v10 - 2) < *v10)
          {
            break;
          }

          v82 = *v10;
          if (*v8 <= *v10)
          {
            v84 = v10 + 2;
            do
            {
              v10 = v84;
              if (v84 >= a2)
              {
                break;
              }

              v84 += 2;
            }

            while (*v10 <= v82);
          }

          else
          {
            do
            {
              v83 = v10[2];
              v10 += 2;
            }

            while (v83 <= v82);
          }

          v85 = a2;
          if (v10 < a2)
          {
            v85 = a2;
            do
            {
              v86 = *(v85 - 2);
              v85 -= 2;
            }

            while (v86 > v82);
          }

          if (v10 < v85)
          {
            v87 = *v10;
            v88 = *v85;
            do
            {
              *v10 = v88;
              *v85 = v87;
              v89 = v10[1];
              v10[1] = v85[1];
              v85[1] = v89;
              do
              {
                v90 = v10[2];
                v10 += 2;
                v87 = v90;
              }

              while (v90 <= v82);
              do
              {
                v91 = *(v85 - 2);
                v85 -= 2;
                v88 = v91;
              }

              while (v91 > v82);
            }

            while (v10 < v85);
          }

          if (v10 - 2 != v7)
          {
            *v7 = *(v10 - 2);
            v7[1] = *(v10 - 1);
          }

          a4 = 0;
          *(v10 - 1) = v82;
        }

        v68 = *v10;
        v69 = v10;
        do
        {
          v70 = v69;
          v72 = v69[2];
          v69 += 2;
          v71 = v72;
        }

        while (v72 < v68);
        v73 = a2;
        if (v70 == v10)
        {
          v73 = a2;
          do
          {
            if (v69 >= v73)
            {
              break;
            }

            v75 = *(v73 - 2);
            v73 -= 2;
          }

          while (v75 >= v68);
        }

        else
        {
          do
          {
            v74 = *(v73 - 2);
            v73 -= 2;
          }

          while (v74 >= v68);
        }

        if (v69 >= v73)
        {
          v10 = v69;
        }

        else
        {
          v76 = *v73;
          v10 = v69;
          v77 = v73;
          do
          {
            *v10 = v76;
            *v77 = v71;
            v78 = v10[1];
            v10[1] = v77[1];
            v77[1] = v78;
            do
            {
              v79 = v10[2];
              v10 += 2;
              v71 = v79;
            }

            while (v79 < v68);
            do
            {
              v80 = *(v77 - 2);
              v77 -= 2;
              v76 = v80;
            }

            while (v80 >= v68);
          }

          while (v10 < v77);
        }

        if (v10 - 2 != v7)
        {
          *v7 = *(v10 - 2);
          v7[1] = *(v10 - 1);
        }

        *(v10 - 1) = v68;
        if (v69 >= v73)
        {
          break;
        }

LABEL_87:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *,false>(v7, v10 - 2, a3, a4 & 1);
        a4 = 0;
      }

      v81 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *>(v7, v10 - 2);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *>(v10, a2);
      if (result)
      {
        break;
      }

      if (!v81)
      {
        goto LABEL_87;
      }
    }

    a2 = v10 - 2;
    if (!v81)
    {
      continue;
    }

    return result;
  }
}

int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *,0>(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = a2 + 1;
      v9 = a2[1];
      a2[1] = a3[1];
      a3[1] = v9;
      v11 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        v8 = result + 1;
        *a2 = v11;
LABEL_10:
        v13 = *v8;
        *v8 = *v10;
        *v10 = v13;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v10 = a3 + 1;
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = a2 + 1;
    v12 = result[1];
    result[1] = a2[1];
    a2[1] = v12;
    v6 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v14 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v18;
        v19 = result[1];
        result[1] = a2[1];
        a2[1] = v19;
      }
    }
  }

  v20 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v26;
          v27 = result[1];
          result[1] = a2[1];
          a2[1] = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *>(int *a1, int *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 >= *a1)
      {
        if (v8 >= v6)
        {
          return 1;
        }

        a1[2] = v8;
        *(a2 - 2) = v6;
        v20 = a1 + 3;
        v19 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v19;
        v21 = a1[2];
        v22 = *a1;
        if (v21 >= *a1)
        {
          return 1;
        }

        *a1 = v21;
        a1[2] = v22;
        v9 = a1 + 1;
      }

      else
      {
        if (v8 >= v6)
        {
          v9 = a1 + 3;
          v29 = a1[3];
          v30 = a1[1];
          *a1 = v6;
          a1[1] = v29;
          a1[2] = v7;
          a1[3] = v30;
          v31 = *(a2 - 2);
          if (v31 >= v7)
          {
            return 1;
          }

          a1[2] = v31;
        }

        else
        {
          v9 = a1 + 1;
          *a1 = v8;
        }

        *(a2 - 2) = v7;
        v20 = a2 - 1;
      }

      v32 = *v9;
      *v9 = *v20;
      *v20 = v32;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v15 = a1[2];
    v16 = *a1;
    v17 = a1[4];
    if (v15 >= *a1)
    {
      if (v17 < v15)
      {
        v27 = a1 + 3;
        v26 = a1[3];
        v28 = a1[5];
        a1[2] = v17;
        a1[3] = v28;
        a1[4] = v15;
        a1[5] = v26;
        if (v17 >= v16)
        {
LABEL_51:
          v17 = v15;
          goto LABEL_52;
        }

        *a1 = v17;
        a1[2] = v16;
        v18 = a1 + 1;
LABEL_50:
        v48 = *v18;
        *v18 = *v27;
        *v27 = v48;
        goto LABEL_51;
      }
    }

    else
    {
      if (v17 < v15)
      {
        v18 = a1 + 1;
        *a1 = v17;
LABEL_49:
        a1[4] = v16;
        v27 = a1 + 5;
        v15 = v16;
        goto LABEL_50;
      }

      v18 = a1 + 3;
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v15;
      a1[1] = v46;
      a1[2] = v16;
      a1[3] = v47;
      if (v17 < v16)
      {
        a1[2] = v17;
        goto LABEL_49;
      }
    }

LABEL_52:
    v49 = *(a2 - 2);
    if (v49 < v17)
    {
      a1[4] = v49;
      *(a2 - 2) = v17;
      v50 = a1[5];
      a1[5] = *(a2 - 1);
      *(a2 - 1) = v50;
      v51 = a1[4];
      v52 = a1[2];
      if (v51 < v52)
      {
        v53 = a1[3];
        v54 = a1[5];
        a1[2] = v51;
        a1[3] = v54;
        a1[4] = v52;
        a1[5] = v53;
        v55 = *a1;
        if (v51 < *a1)
        {
          v56 = a1[1];
          *a1 = v51;
          a1[1] = v54;
          a1[2] = v55;
          a1[3] = v56;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 < *a1)
    {
      *a1 = v3;
      *(a2 - 2) = v4;
      v5 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v10 = a1 + 4;
  v11 = a1[4];
  v12 = a1[2];
  v13 = *a1;
  if (v12 < *a1)
  {
    if (v11 >= v12)
    {
      v14 = a1 + 3;
      v33 = a1[3];
      v34 = a1[1];
      *a1 = v12;
      a1[1] = v33;
      a1[2] = v13;
      a1[3] = v34;
      if (v11 >= v13)
      {
        goto LABEL_36;
      }

      a1[2] = v11;
    }

    else
    {
      v14 = a1 + 1;
      *a1 = v11;
    }

    a1[4] = v13;
    v24 = a1 + 5;
    goto LABEL_35;
  }

  if (v11 < v12)
  {
    v24 = a1 + 3;
    v23 = a1[3];
    v25 = a1[5];
    a1[2] = v11;
    a1[3] = v25;
    a1[4] = v12;
    a1[5] = v23;
    if (v11 < v13)
    {
      *a1 = v11;
      a1[2] = v13;
      v14 = a1 + 1;
LABEL_35:
      v35 = *v14;
      *v14 = *v24;
      *v24 = v35;
    }
  }

LABEL_36:
  v36 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = *v10;
    if (*v36 < *v10)
    {
      v41 = *v36;
      v40 = v36[1];
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 20);
        v43[6] = v39;
        v43[7] = v44;
        if (v42 == -16)
        {
          break;
        }

        v39 = v43[2];
        v42 -= 8;
        if (v39 <= v41)
        {
          v45 = (a1 + v42 + 24);
          goto LABEL_44;
        }
      }

      v45 = a1;
LABEL_44:
      *v45 = v41;
      v45[1] = v40;
      if (++v38 == 8)
      {
        return v36 + 2 == a2;
      }
    }

    v10 = v36;
    v37 += 8;
    v36 += 2;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<GEOComposedRouteSection * const {__strong},std::vector<std::pair<int,int>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1B3146290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  MEMORY[0x1B8C62190](v14, v15);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::BasePipelineSetup * ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::BasePipelineSetup * ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::BasePipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A372F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::BasePipelineSetup * ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A372F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::BasePipelineSetup * ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A372F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void generateSpecularRenderItemsForLandmarkGroup(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, char a14, unsigned __int8 a15, char a16, char a17, uint64_t a18)
{
  v26 = 56;
  if (a17 == 1)
  {
    v26 = 72;
  }

  v27 = (*a2 + v26);
  v28 = *v27;
  v29 = v27[1];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v192, v28, v29);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  v30 = md::LayoutContext::get<md::LightingLogicContext>(*(a6 + 8));
  v176 = v30;
  if (v195 != 1)
  {
    v46 = 0uLL;
    v47 = 0.0;
    v48 = 1.0;
    v49 = 0.065;
    v31.n128_u64[0] = 0x401F800000000000;
    goto LABEL_41;
  }

  v32 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(a6 + 16), *(*(a6 + 16) + 8));
  v33 = v192[3];
  if (a12 >= 0x17)
  {
    v34 = 23;
  }

  else
  {
    v34 = a12;
  }

  v35 = *v33;
  v182 = v32;
  if (*v33 && (v36 = *v35, LODWORD(v35) = *v35 == 1.0, *(v33 + 10) == 1) && (v36 != 0.0 ? (v37 = v36 == 1.0) : (v37 = 1), !v37) || (v38 = *(v33 + v35 + 11), v38 == 2))
  {
    v39 = *(v33 + 16);
    if (v39)
    {
      v40 = *(v39 + 72);
      if (v40)
      {
        v41 = *v40 + 120 * *(v40 + v34 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v41, 0x12Fu) != *(v41 + 12))
        {
          goto LABEL_33;
        }
      }

      if (*(v33 + 56))
      {
        v42 = *(v33 + 48);
        v43 = 8 * *(v33 + 56);
        while (1)
        {
          v44 = *(*v42 + 72);
          if (v44)
          {
            v45 = *v44 + 120 * *(v44 + v34 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v45, 0x12Fu) != *(v45 + 12))
            {
              goto LABEL_33;
            }
          }

          v42 += 8;
          v38 = 1;
          v43 -= 8;
          if (!v43)
          {
            goto LABEL_30;
          }
        }
      }
    }

    v38 = 1;
  }

LABEL_30:
  v50 = *(v33 + 16 * v38 + 16);
  if (!v50)
  {
LABEL_39:
    v53 = a10;
    v54 = a11;
    md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)162,(gss::PropertyID)496>(&v187, v182, &v192, a12);
    goto LABEL_40;
  }

  v51 = *(v50 + 72);
  if (!v51 || (v52 = *v51 + 120 * *(v51 + v34 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v52, 0x12Fu) == *(v52 + 12)))
  {
    v55 = v33 + 16 * v38;
    if (*(v55 + 56))
    {
      v56 = *(v55 + 48);
      v57 = 8 * *(v55 + 56);
      while (1)
      {
        v58 = *(*v56 + 72);
        if (v58)
        {
          v59 = *v58 + 120 * *(v58 + v34 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v59, 0x12Fu) != *(v59 + 12))
          {
            goto LABEL_33;
          }
        }

        v56 += 8;
        v57 -= 8;
        if (!v57)
        {
          goto LABEL_39;
        }
      }
    }

    goto LABEL_39;
  }

LABEL_33:
  v53 = a10;
  v54 = a11;
  md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)303,(gss::PropertyID)500>(&v187, v182, &v192, a12);
LABEL_40:
  v183 = v187;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v192[3], 280, v34, 2u, 0);
  v47 = v60;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v192[3], 299, v34, 2u, 0);
  v62 = v61;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v192[3], 311, v34, 2u, 0);
  v64 = v63;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v192[3], 330, v34, 2u, 0);
  v66 = v65;
  v67 = v53;
  v48 = v62 + ((v64 - v62) * v53);
  a10 = v67;
  v30 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v192[3], 331, v34, 2u, 0);
  v49 = v66;
  v31.n128_f64[0] = v31.n128_f32[0];
  v46 = v183;
  a11 = v54;
LABEL_41:
  v69 = vmulq_n_f32(v46, a13 * a10);
  v178 = v69;
  v68 = vmuls_lane_f32(a9, v69, 3);
  v69.n128_f64[0] = v68;
  if (v68 <= 0.999)
  {
    v70 = 1;
  }

  else
  {
    v70 = a15;
  }

  v175 = v70;
  v71 = *(*a2 + 32);
  v174 = *(*a2 + 40);
  if (v71 != v174)
  {
    v72 = 0;
    v73 = 0;
    v74 = fmaxf(a11, 0.1);
    v75 = fmaxf(a10, 0.1);
    v76 = 1.0 - v48;
    if (v47 >= 0.0001)
    {
      v77 = 1.0;
    }

    else
    {
      v47 = 1.0;
      v77 = 0.0;
    }

    v78 = v49 * 40075017.0 / (v31.n128_f64[0] * (1 << a14));
    v79 = 1.0 - v49;
    do
    {
      if (a16)
      {
        v80 = *(a1 + 40);
        v81 = v80[1];
        if (v81 == *v80)
        {
          v86 = v80[11];
          if (!v86)
          {
            goto LABEL_140;
          }

          v30 = (*(*v86 + 48))(v86);
          v82 = v30;
        }

        else
        {
          v82 = *(v81 - 8);
          v80[1] = v81 - 8;
        }

        v88 = v80[5];
        v87 = v80[6];
        v181 = v72;
        v184 = v82;
        if (v88 >= v87)
        {
          v90 = v80[4];
          v91 = (v88 - v90) >> 3;
          if ((v91 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v92 = v87 - v90;
          v93 = v92 >> 2;
          if (v92 >> 2 <= (v91 + 1))
          {
            v93 = v91 + 1;
          }

          if (v92 >= 0x7FFFFFFFFFFFFFF8)
          {
            v94 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v94 = v93;
          }

          v190 = v80 + 7;
          if (v94)
          {
            v95 = ggl::zone_mallocator::instance(v30);
            v96 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *>(v95, v94);
          }

          else
          {
            v96 = 0;
          }

          v109 = &v96[8 * v94];
          v108 = &v96[8 * v91];
          *v108 = v82;
          v89 = v108 + 1;
          v110 = v80[4];
          v111 = v80[5] - v110;
          v112 = v108 - v111;
          memcpy(v108 - v111, v110, v111);
          v113 = v80[4];
          v80[4] = v112;
          v80[5] = v89;
          v114 = v80[6];
          v80[6] = v109;
          v188 = v113;
          v189 = v114;
          v187.i64[0] = v113;
          v187.i64[1] = v113;
          std::__split_buffer<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v187);
        }

        else
        {
          *v88 = v82;
          v89 = v88 + 1;
        }

        v80[5] = v89;
        v187.i64[0] = v82;
        v115 = v80[15];
        if (!v115)
        {
          goto LABEL_140;
        }

        (*(*v115 + 48))(v115, &v187);
        v116 = *(v82 + 17);
        *(v116 + 24) = 0;
        v117 = *a4;
        *(v116 + 16) = *a4;
        v118 = *(v82 + 29);
        v119 = a4[1];
        if (v119)
        {
          atomic_fetch_add_explicit((v119 + 8), 1uLL, memory_order_relaxed);
        }

        v120 = *(v118 + 24);
        *(v118 + 16) = v117;
        *(v118 + 24) = v119;
        if (v120)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v120);
        }

        **(v82 + 21) = *v71;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v187, *(*(v82 + 17) + 32));
        v121 = 0;
        v122 = v191;
        *v191 = v75;
        v122->f32[1] = v74;
        v123 = *a2;
        v124 = *a2 + 92;
        do
        {
          v122[2].i32[v121] = *(v124 + v121 * 4);
          ++v121;
        }

        while (v121 != 3);
        for (i = 0; i != 3; ++i)
        {
          v196.f32[i] = *(v123 + i * 4 + 104) - *(v123 + i * 4 + 92);
        }

        v126 = fmaxf(v197, 0.0);
        v122[4] = vmaxnm_f32(v196, 0);
        v122[5].f32[0] = v126;
        ggl::BufferMemory::~BufferMemory(&v187);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v187, *(*(v82 + 17) + 48));
        v127 = 0;
        v128 = v191;
        *v191 = v178.n128_u64[0];
        v128[2] = v178.n128_f32[2];
        v128[3] = v68;
        do
        {
          v128[v127 + 92] = *(a8 + v127 * 4);
          ++v127;
        }

        while (v127 != 3);
        v128[89] = 1.0;
        v128[88] = v76;
        v128[64] = v47;
        v128[65] = v77;
        ggl::BufferMemory::~BufferMemory(&v187);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v187, *(*(v82 + 17) + 64));
        v129 = v191;
        *v191 = v78;
        v129[1] = v79;
        ggl::BufferMemory::~BufferMemory(&v187);
        v130 = *(v82 + 17);
        *(v130 + 88) = 0;
        v131 = *v176;
        *(v130 + 80) = *v176;
        v132 = *(v82 + 29);
        v133 = *(v176 + 1);
        if (v133)
        {
          atomic_fetch_add_explicit((v133 + 8), 1uLL, memory_order_relaxed);
        }

        v134 = *(v132 + 88);
        *(v132 + 80) = v131;
        *(v132 + 88) = v133;
        if (v134)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v134);
        }

        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v82 + 17), *(v82 + 29), *a5, a5[1]);
        if (v175)
        {
          v135 = *(a1 + 200);
          v187.i64[0] = *(a1 + 192);
          v187.i64[1] = v135;
          if (!v135)
          {
            v163 = v82;
LABEL_121:
            ggl::PipelineSetup::setState(v163, &v187);
            goto LABEL_122;
          }

          atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
          v136 = v82;
LABEL_118:
          ggl::PipelineSetup::setState(v136, &v187);
          std::__shared_weak_count::__release_shared[abi:nn200100](v135);
        }
      }

      else
      {
        v83 = *(a1 + 16);
        v84 = v83[1];
        if (v84 == *v83)
        {
          v97 = v83[11];
          if (!v97)
          {
            goto LABEL_140;
          }

          v30 = (*(*v97 + 48))(v97);
          v85 = v30;
        }

        else
        {
          v85 = *(v84 - 8);
          v83[1] = v84 - 8;
        }

        v99 = v83[5];
        v98 = v83[6];
        v184 = v73;
        if (v99 >= v98)
        {
          v101 = v83[4];
          v102 = (v99 - v101) >> 3;
          if ((v102 + 1) >> 61)
          {
            goto LABEL_141;
          }

          v103 = v98 - v101;
          v104 = v103 >> 2;
          if (v103 >> 2 <= (v102 + 1))
          {
            v104 = v102 + 1;
          }

          if (v103 >= 0x7FFFFFFFFFFFFFF8)
          {
            v105 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v105 = v104;
          }

          v190 = v83 + 7;
          if (v105)
          {
            v106 = ggl::zone_mallocator::instance(v30);
            v107 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularLandmark::LandmarkPipelineSetup *>(v106, v105);
          }

          else
          {
            v107 = 0;
          }

          v138 = &v107[8 * v105];
          v137 = &v107[8 * v102];
          *v137 = v85;
          v100 = v137 + 1;
          v139 = v83[4];
          v140 = v83[5] - v139;
          v141 = v137 - v140;
          memcpy(v137 - v140, v139, v140);
          v142 = v83[4];
          v83[4] = v141;
          v83[5] = v100;
          v143 = v83[6];
          v83[6] = v138;
          v188 = v142;
          v189 = v143;
          v187.i64[0] = v142;
          v187.i64[1] = v142;
          std::__split_buffer<ggl::SpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::SpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v187);
        }

        else
        {
          *v99 = v85;
          v100 = v99 + 1;
        }

        v83[5] = v100;
        v187.i64[0] = v85;
        v144 = v83[15];
        if (!v144)
        {
LABEL_140:
          std::__throw_bad_function_call[abi:nn200100]();
LABEL_141:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        (*(*v144 + 48))(v144, &v187);
        v145 = *(v85 + 17);
        *(v145 + 24) = 0;
        v146 = *a4;
        *(v145 + 16) = *a4;
        v147 = *(v85 + 29);
        v148 = a4[1];
        if (v148)
        {
          atomic_fetch_add_explicit((v148 + 8), 1uLL, memory_order_relaxed);
        }

        v149 = *(v147 + 24);
        *(v147 + 16) = v146;
        *(v147 + 24) = v148;
        if (v149)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v149);
        }

        **(v85 + 21) = *v71;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v187, *(*(v85 + 17) + 32));
        v150 = 0;
        v151 = v191;
        *v191 = v75;
        v151->f32[1] = v74;
        v152 = *a2;
        v153 = *a2 + 92;
        do
        {
          v151[2].i32[v150] = *(v153 + v150 * 4);
          ++v150;
        }

        while (v150 != 3);
        for (j = 0; j != 3; ++j)
        {
          v196.f32[j] = *(v152 + j * 4 + 104) - *(v152 + j * 4 + 92);
        }

        v155 = fmaxf(v197, 0.0);
        v151[4] = vmaxnm_f32(v196, 0);
        v151[5].f32[0] = v155;
        ggl::BufferMemory::~BufferMemory(&v187);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v187, *(*(v85 + 17) + 48));
        v156 = 0;
        v157 = v191;
        *v191 = v178.n128_u64[0];
        v157[2] = v178.n128_f32[2];
        v157[3] = v68;
        do
        {
          v157[v156 + 92] = *(a8 + v156 * 4);
          ++v156;
        }

        while (v156 != 3);
        v157[89] = 1.0;
        v157[88] = v76;
        v157[64] = v47;
        v157[65] = v77;
        ggl::BufferMemory::~BufferMemory(&v187);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v187, *(*(v85 + 17) + 64));
        v158 = v191;
        *v191 = v78;
        v158[1] = v79;
        ggl::BufferMemory::~BufferMemory(&v187);
        v159 = *(v85 + 17);
        *(v159 + 88) = 0;
        v160 = *v176;
        *(v159 + 80) = *v176;
        v161 = *(v85 + 29);
        v162 = *(v176 + 1);
        if (v162)
        {
          atomic_fetch_add_explicit((v162 + 8), 1uLL, memory_order_relaxed);
        }

        v30 = *(v161 + 88);
        *(v161 + 80) = v160;
        *(v161 + 88) = v162;
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v30);
        }

        v181 = v85;
        if (v175)
        {
          v135 = *(a1 + 184);
          v187.i64[0] = *(a1 + 176);
          v187.i64[1] = v135;
          if (!v135)
          {
            v163 = v85;
            goto LABEL_121;
          }

          atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
          v136 = v85;
          goto LABEL_118;
        }
      }

LABEL_122:
      v164 = v71[2];
      v165 = v71[3];
      v180 = v71;
      if (v164 != v165)
      {
        if (v181)
        {
          v166 = v181;
        }

        else
        {
          v166 = v184;
        }

        do
        {
          v167 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(a1 + 88));
          v167[3] = a3;
          v167[4] = v166;
          v167[8] = *v164;
          v167[6] = 2;
          ggl::Batcher::clearRanges((a1 + 280));
          v170 = v164[1];
          v169 = v164[2];
          while (v170 != v169)
          {
            if (std::function<BOOL ()(unsigned long long)>::operator()(*(a18 + 24), *(v170 + 16)))
            {
              ggl::Batcher::addRange(a1 + 280, v170);
            }

            v170 += 24;
          }

          v171 = ggl::Batcher::commit((a1 + 280), 0, v168);
          v172 = *v171;
          v167[11] = *v171;
          v167[12] = (v171[1] - v172) >> 4;
          v187.i64[0] = v167;
          v30 = std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a7 + 72), &v187);
          v164 += 4;
        }

        while (v164 != v165);
      }

      v72 = v181;
      v71 = v180 + 5;
      v73 = v184;
    }

    while (v180 + 5 != v174);
  }

  if (v195 == 1)
  {
    (*(*v192 + 56))(v192, v31, v69);
  }

  if (v194)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v194);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v193);
  }
}

void sub_1B3147284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, char a35)
{
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a34);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  _Unwind_Resume(exception_object);
}

void md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)303,(gss::PropertyID)500>(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 0x17)
  {
    v7 = 23;
  }

  else
  {
    v7 = a4;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v10, *(*a3 + 24), 303, v7, 2u, 0);
  v9 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v10)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a3 + 24), 500, v7, 2u, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v9, v8);
}

void md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)162,(gss::PropertyID)496>(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 0x17)
  {
    v7 = 23;
  }

  else
  {
    v7 = a4;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v10, *(*a3 + 24), 162, v7, 2u, 0);
  v9 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v10)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a3 + 24), 496, v7, 2u, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v9, v8);
}

void generateDiffuseRenderItemsForLandmarkGroup(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, char a14, unsigned __int8 a15, char a16, char a17, uint64_t a18)
{
  v26 = 56;
  if (a17 == 1)
  {
    v26 = 72;
  }

  v27 = (*a2 + v26);
  v28 = *v27;
  v29 = v27[1];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v185, v28, v29);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  v30 = md::LayoutContext::get<md::LightingLogicContext>(*(a6 + 8));
  v169 = v30;
  if (v188 != 1)
  {
    v46 = 0uLL;
    v47 = 1.0;
    v48 = 0.065;
    v31.n128_u64[0] = 0x401F800000000000;
    goto LABEL_41;
  }

  v32 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(a6 + 16), *(*(a6 + 16) + 8));
  v33 = v185[3];
  if (a12 >= 0x17)
  {
    v34 = 23;
  }

  else
  {
    v34 = a12;
  }

  v35 = *v33;
  v175 = v32;
  if (*v33 && (v36 = *v35, LODWORD(v35) = *v35 == 1.0, *(v33 + 10) == 1) && (v36 != 0.0 ? (v37 = v36 == 1.0) : (v37 = 1), !v37) || (v38 = *(v33 + v35 + 11), v38 == 2))
  {
    v39 = *(v33 + 16);
    if (v39)
    {
      v40 = *(v39 + 72);
      if (v40)
      {
        v41 = *v40 + 120 * *(v40 + v34 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v41, 0x12Fu) != *(v41 + 12))
        {
          goto LABEL_33;
        }
      }

      if (*(v33 + 56))
      {
        v42 = *(v33 + 48);
        v43 = 8 * *(v33 + 56);
        while (1)
        {
          v44 = *(*v42 + 72);
          if (v44)
          {
            v45 = *v44 + 120 * *(v44 + v34 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v45, 0x12Fu) != *(v45 + 12))
            {
              goto LABEL_33;
            }
          }

          v42 += 8;
          v38 = 1;
          v43 -= 8;
          if (!v43)
          {
            goto LABEL_30;
          }
        }
      }
    }

    v38 = 1;
  }

LABEL_30:
  v49 = *(v33 + 16 * v38 + 16);
  if (!v49)
  {
LABEL_39:
    md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)162,(gss::PropertyID)496>(&v180, v175, &v185, a12);
    goto LABEL_40;
  }

  v50 = *(v49 + 72);
  if (!v50 || (v51 = *v50 + 120 * *(v50 + v34 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v51, 0x12Fu) == *(v51 + 12)))
  {
    v52 = v33 + 16 * v38;
    if (*(v52 + 56))
    {
      v53 = *(v52 + 48);
      v54 = 8 * *(v52 + 56);
      while (1)
      {
        v55 = *(*v53 + 72);
        if (v55)
        {
          v56 = *v55 + 120 * *(v55 + v34 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v56, 0x12Fu) != *(v56 + 12))
          {
            goto LABEL_33;
          }
        }

        v53 += 8;
        v54 -= 8;
        if (!v54)
        {
          goto LABEL_39;
        }
      }
    }

    goto LABEL_39;
  }

LABEL_33:
  md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)303,(gss::PropertyID)500>(&v180, v175, &v185, a12);
LABEL_40:
  v176 = v180;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v185[3], 299, v34, 2u, 0);
  v58 = v57;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v185[3], 311, v34, 2u, 0);
  v60 = v59;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v185[3], 330, v34, 2u, 0);
  v48 = v61;
  v47 = v58 + ((v60 - v58) * a10);
  v30 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v185[3], 331, v34, 2u, 0);
  v31.n128_f64[0] = v31.n128_f32[0];
  v46 = v176;
LABEL_41:
  v63 = vmulq_n_f32(v46, a13 * a10);
  v171 = v63;
  v62 = vmuls_lane_f32(a9, v63, 3);
  v63.n128_f64[0] = v62;
  if (v62 <= 0.999)
  {
    v64 = 1;
  }

  else
  {
    v64 = a15;
  }

  v168 = v64;
  v65 = *(*a2 + 32);
  v167 = *(*a2 + 40);
  if (v65 != v167)
  {
    v66 = 0;
    v67 = 0;
    v68 = fmaxf(a11, 0.1);
    v69 = fmaxf(a10, 0.1);
    v70 = 1.0 - v47;
    v71 = v48 * 40075017.0 / (v31.n128_f64[0] * (1 << a14));
    v72 = 1.0 - v48;
    do
    {
      if (a16)
      {
        v73 = *(a1 + 8);
        v74 = v73[1];
        if (v74 == *v73)
        {
          v79 = v73[11];
          if (!v79)
          {
            goto LABEL_137;
          }

          v30 = (*(*v79 + 48))(v79);
          v75 = v30;
        }

        else
        {
          v75 = *(v74 - 8);
          v73[1] = v74 - 8;
        }

        v81 = v73[5];
        v80 = v73[6];
        v177 = v67;
        if (v81 >= v80)
        {
          v83 = v73[4];
          v84 = (v81 - v83) >> 3;
          if ((v84 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v85 = v80 - v83;
          v86 = v85 >> 2;
          if (v85 >> 2 <= (v84 + 1))
          {
            v86 = v84 + 1;
          }

          if (v85 >= 0x7FFFFFFFFFFFFFF8)
          {
            v87 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v87 = v86;
          }

          v183 = v73 + 7;
          if (v87)
          {
            v88 = ggl::zone_mallocator::instance(v30);
            v89 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseLandmark::BuildingPipelineSetup *>(v88, v87);
          }

          else
          {
            v89 = 0;
          }

          v102 = &v89[8 * v87];
          v101 = &v89[8 * v84];
          *v101 = v75;
          v82 = v101 + 1;
          v103 = v73[4];
          v104 = v73[5] - v103;
          v105 = v101 - v104;
          memcpy(v101 - v104, v103, v104);
          v106 = v73[4];
          v73[4] = v105;
          v73[5] = v82;
          v107 = v73[6];
          v73[6] = v102;
          v181 = v106;
          v182 = v107;
          v180.i64[0] = v106;
          v180.i64[1] = v106;
          std::__split_buffer<ggl::DiffuseLandmark::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseLandmark::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v180);
        }

        else
        {
          *v81 = v75;
          v82 = v81 + 1;
        }

        v73[5] = v82;
        v180.i64[0] = v75;
        v108 = v73[15];
        if (!v108)
        {
          goto LABEL_137;
        }

        (*(*v108 + 48))(v108, &v180);
        v109 = *(v75 + 17);
        *(v109 + 24) = 0;
        v110 = *a4;
        *(v109 + 16) = *a4;
        v111 = *(v75 + 29);
        v112 = a4[1];
        if (v112)
        {
          atomic_fetch_add_explicit((v112 + 8), 1uLL, memory_order_relaxed);
        }

        v113 = *(v111 + 24);
        *(v111 + 16) = v110;
        *(v111 + 24) = v112;
        if (v113)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v113);
        }

        **(v75 + 21) = *v65;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v180, *(*(v75 + 17) + 32));
        v114 = 0;
        v115 = v184;
        *v184 = v69;
        v115->f32[1] = v68;
        v116 = *a2;
        v117 = *a2 + 92;
        do
        {
          v115[2].i32[v114] = *(v117 + v114 * 4);
          ++v114;
        }

        while (v114 != 3);
        for (i = 0; i != 3; ++i)
        {
          v189.f32[i] = *(v116 + i * 4 + 104) - *(v116 + i * 4 + 92);
        }

        v119 = fmaxf(v190, 0.0);
        v115[4] = vmaxnm_f32(v189, 0);
        v115[5].f32[0] = v119;
        ggl::BufferMemory::~BufferMemory(&v180);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v180, *(*(v75 + 17) + 48));
        v120 = 0;
        v121 = v184;
        *v184 = v171.n128_u64[0];
        v121[2] = v171.n128_f32[2];
        v121[3] = v62;
        do
        {
          v121[v120 + 92] = *(a8 + v120 * 4);
          ++v120;
        }

        while (v120 != 3);
        v121[89] = 1.0;
        v121[88] = v70;
        ggl::BufferMemory::~BufferMemory(&v180);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v180, *(*(v75 + 17) + 64));
        v122 = v184;
        *v184 = v71;
        v122[1] = v72;
        ggl::BufferMemory::~BufferMemory(&v180);
        v123 = *(v75 + 17);
        *(v123 + 88) = 0;
        v124 = *v169;
        *(v123 + 80) = *v169;
        v125 = *(v75 + 29);
        v126 = *(v169 + 1);
        if (v126)
        {
          atomic_fetch_add_explicit((v126 + 8), 1uLL, memory_order_relaxed);
        }

        v30 = *(v125 + 88);
        *(v125 + 80) = v124;
        *(v125 + 88) = v126;
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v30);
        }

        v174 = v75;
        if (v168)
        {
          v127 = *(a1 + 248);
          v180.i64[0] = *(a1 + 240);
          v180.i64[1] = v127;
          if (!v127)
          {
            v156 = v75;
LABEL_118:
            ggl::PipelineSetup::setState(v156, &v180);
            goto LABEL_119;
          }

          atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
          v128 = v75;
LABEL_115:
          ggl::PipelineSetup::setState(v128, &v180);
          std::__shared_weak_count::__release_shared[abi:nn200100](v127);
        }
      }

      else
      {
        v76 = *(a1 + 32);
        v77 = v76[1];
        if (v77 == *v76)
        {
          v90 = v76[11];
          if (!v90)
          {
            goto LABEL_137;
          }

          v30 = (*(*v90 + 48))(v90);
          v78 = v30;
        }

        else
        {
          v78 = *(v77 - 8);
          v76[1] = v77 - 8;
        }

        v92 = v76[5];
        v91 = v76[6];
        v174 = v66;
        v177 = v78;
        if (v92 >= v91)
        {
          v94 = v76[4];
          v95 = (v92 - v94) >> 3;
          if ((v95 + 1) >> 61)
          {
            goto LABEL_138;
          }

          v96 = v91 - v94;
          v97 = v96 >> 2;
          if (v96 >> 2 <= (v95 + 1))
          {
            v97 = v95 + 1;
          }

          if (v96 >= 0x7FFFFFFFFFFFFFF8)
          {
            v98 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v98 = v97;
          }

          v183 = v76 + 7;
          if (v98)
          {
            v99 = ggl::zone_mallocator::instance(v30);
            v100 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *>(v99, v98);
          }

          else
          {
            v100 = 0;
          }

          v130 = &v100[8 * v98];
          v129 = &v100[8 * v95];
          *v129 = v78;
          v93 = v129 + 1;
          v131 = v76[4];
          v132 = v76[5] - v131;
          v133 = v129 - v132;
          memcpy(v129 - v132, v131, v132);
          v134 = v76[4];
          v76[4] = v133;
          v76[5] = v93;
          v135 = v76[6];
          v76[6] = v130;
          v181 = v134;
          v182 = v135;
          v180.i64[0] = v134;
          v180.i64[1] = v134;
          std::__split_buffer<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v180);
        }

        else
        {
          *v92 = v78;
          v93 = v92 + 1;
        }

        v76[5] = v93;
        v180.i64[0] = v78;
        v136 = v76[15];
        if (!v136)
        {
LABEL_137:
          std::__throw_bad_function_call[abi:nn200100]();
LABEL_138:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        (*(*v136 + 48))(v136, &v180);
        v137 = *(v78 + 17);
        *(v137 + 24) = 0;
        v138 = *a4;
        *(v137 + 16) = *a4;
        v139 = *(v78 + 29);
        v140 = a4[1];
        if (v140)
        {
          atomic_fetch_add_explicit((v140 + 8), 1uLL, memory_order_relaxed);
        }

        v141 = *(v139 + 24);
        *(v139 + 16) = v138;
        *(v139 + 24) = v140;
        if (v141)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v141);
        }

        **(v78 + 21) = *v65;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v180, *(*(v78 + 17) + 32));
        v142 = 0;
        v143 = v184;
        *v184 = v69;
        v143->f32[1] = v68;
        v144 = *a2;
        v145 = *a2 + 92;
        do
        {
          v143[2].i32[v142] = *(v145 + v142 * 4);
          ++v142;
        }

        while (v142 != 3);
        for (j = 0; j != 3; ++j)
        {
          v189.f32[j] = *(v144 + j * 4 + 104) - *(v144 + j * 4 + 92);
        }

        v147 = fmaxf(v190, 0.0);
        v143[4] = vmaxnm_f32(v189, 0);
        v143[5].f32[0] = v147;
        ggl::BufferMemory::~BufferMemory(&v180);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v180, *(*(v78 + 17) + 48));
        v148 = 0;
        v149 = v184;
        *v184 = v171.n128_u64[0];
        v149[2] = v171.n128_f32[2];
        v149[3] = v62;
        do
        {
          v149[v148 + 92] = *(a8 + v148 * 4);
          ++v148;
        }

        while (v148 != 3);
        v149[89] = 1.0;
        v149[88] = v70;
        ggl::BufferMemory::~BufferMemory(&v180);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v180, *(*(v78 + 17) + 64));
        v150 = v184;
        *v184 = v71;
        v150[1] = v72;
        ggl::BufferMemory::~BufferMemory(&v180);
        v151 = *(v78 + 17);
        *(v151 + 88) = 0;
        v152 = *v169;
        *(v151 + 80) = *v169;
        v153 = *(v78 + 29);
        v154 = *(v169 + 1);
        if (v154)
        {
          atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
        }

        v155 = *(v153 + 88);
        *(v153 + 80) = v152;
        *(v153 + 88) = v154;
        if (v155)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v155);
        }

        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v78 + 17), *(v78 + 29), *a5, a5[1]);
        if (v168)
        {
          v127 = *(a1 + 264);
          v180.i64[0] = *(a1 + 256);
          v180.i64[1] = v127;
          if (!v127)
          {
            v156 = v78;
            goto LABEL_118;
          }

          atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
          v128 = v78;
          goto LABEL_115;
        }
      }

LABEL_119:
      v157 = v65[2];
      v158 = v65[3];
      v173 = v65;
      if (v157 != v158)
      {
        if (v174)
        {
          v159 = v174;
        }

        else
        {
          v159 = v177;
        }

        do
        {
          v160 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(a1 + 88));
          v160[3] = a3;
          v160[4] = v159;
          v160[8] = *v157;
          v160[6] = 2;
          ggl::Batcher::clearRanges((a1 + 280));
          v163 = v157[1];
          v162 = v157[2];
          while (v163 != v162)
          {
            if (std::function<BOOL ()(unsigned long long)>::operator()(*(a18 + 24), *(v163 + 16)))
            {
              ggl::Batcher::addRange(a1 + 280, v163);
            }

            v163 += 24;
          }

          v164 = ggl::Batcher::commit((a1 + 280), 0, v161);
          v165 = *v164;
          v160[11] = *v164;
          v160[12] = (v164[1] - v165) >> 4;
          v180.i64[0] = v160;
          v30 = std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a7 + 72), &v180);
          v157 += 4;
        }

        while (v157 != v158);
      }

      v66 = v174;
      v65 = v173 + 5;
      v67 = v177;
    }

    while (v173 + 5 != v167);
  }

  if (v188 == 1)
  {
    (*(*v185 + 56))(v185, v31, v63);
  }

  if (v187)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v187);
  }

  if (v186)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v186);
  }
}

void sub_1B3147FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, char a35)
{
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a34);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  _Unwind_Resume(exception_object);
}

void *md::BuildingRenderLayer::layout3DLandmarks(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 8);
  v9 = gdc::Context::get<md::SkyLogicContext>(v8);
  gdc::Context::context<md::PolygonContext>(v8);
  result = md::LayoutContext::get<md::VenueLogicContext>(v8);
  if (v9)
  {
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    if (a1[55])
    {
      v14 = a1[54];
      if (v14)
      {
        do
        {
          v15 = *v14;
          operator delete(v14);
          v14 = v15;
        }

        while (v15);
      }

      a1[54] = 0;
      v16 = a1[53];
      if (v16)
      {
        for (i = 0; i != v16; ++i)
        {
          *(a1[52] + 8 * i) = 0;
        }
      }

      a1[55] = 0;
    }

    if (a5 != 1 || (md::LayoutContext::zoomAtCentrePoint(*(a4 + 8)), (1.0 - fminf(fmaxf((v11 * 2.0) + -31.0, 0.0), 1.0)) >= 0.00000011921))
    {
      md::LayoutContext::get<md::CameraContext>(*(a4 + 8));
      if (*a2 != *(a2 + 8))
      {
        v12 = 224;
        if (a5 == 1)
        {
          v12 = 488;
        }

        v13 = *(**a2 + v12 + 8);
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        if (a5)
        {
          operator new();
        }

        operator new();
      }
    }

    return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v19);
  }

  return result;
}

void sub_1B31489C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v44 - 256);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v44 - 224);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v44 - 192);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a43);
  _Unwind_Resume(a1);
}

uint64_t md::TransitAccessPointLabelFeature::newGraphicAnnotationPart(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  if (*(a1 + 720) != *(a1 + 728))
  {
    _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return 0;
}

char *md::TransitAccessPointLabelFeature::newIconPart(uint64_t *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = **(a2 + 64);
  if (v4 && *(v4 + 72))
  {
    v14 = 0;
    *&__dst = 0;
    v5 = atomic_load((*a2 + 3426));
    geo::codec::featureGetNativeShield(v4, 0, &__dst, &v14, 0);
    v6 = localizedLabel(&v21, v4, __dst, v5 & 1, 0);
    v7 = v14;
    if (v14)
    {
      v8 = *(a2 + 16);
      v9 = *(v8 + 296);
      if (!v9)
      {
        v10 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a2 + 16), 0);
        v9 = *v10;
        *(v8 + 296) = *v10;
      }

      v17 = v23;
      if (SHIBYTE(v22) < 0)
      {
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__dst, v21, *(&v21 + 1));
      }

      else
      {
        __dst = v21;
        v16 = v22;
      }

      v18 = v7;
      v19 = *(v9 + 72);
      v20 = 2;
      md::LabelStyle::shieldIcon();
    }

    if (SHIBYTE(v22) < 0)
    {
      v11 = v21;
      v12 = mdm::zone_mallocator::instance(v6);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v12, v11);
    }
  }

  return md::PointLabelFeature::newIconPart(a1, a2);
}

void sub_1B3148F84(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v30 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v30, v28);
  v31 = a11;
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  if (a18 < 0)
  {
    v32 = mdm::zone_mallocator::instance(v31);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v32, a13);
  }

  if (a28 < 0)
  {
    v33 = mdm::zone_mallocator::instance(v31);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v33, a23);
  }

  _Unwind_Resume(a1);
}

void md::TransitAccessPointLabelFeature::populateStyleQueries(_BYTE *a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  if ((*(*a1 + 496))(a1) && (*(*a1 + 488))(a1, 0))
  {
    operator new();
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v2 = (*(*a1 + 560))(a1, &v17);
  if (a1[752] == 1)
  {
    v3 = v18;
    if (v18 >= v19)
    {
      v5 = (v18 - v17) >> 3;
      if ((v5 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v6 = (v19 - v17) >> 2;
      if (v6 <= v5 + 1)
      {
        v6 = v5 + 1;
      }

      if (v19 - v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v7 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = v6;
      }

      v16[4] = v20;
      if (v7)
      {
        v8 = mdm::zone_mallocator::instance(v2);
        v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v8, v7);
      }

      else
      {
        v9 = 0;
      }

      v11 = &v9[8 * v7];
      v10 = &v9[8 * v5];
      *v10 = 0x200010007;
      v4 = v10 + 8;
      v12 = &v10[-(v18 - v17)];
      memcpy(v12, v17, v18 - v17);
      v13 = v17;
      v14 = v19;
      v17 = v12;
      v18 = v4;
      v19 = v11;
      v16[2] = v13;
      v16[3] = v14;
      v16[0] = v13;
      v16[1] = v13;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(v16);
    }

    else
    {
      *v18 = 0x200010007;
      v4 = v3 + 8;
    }

    v18 = v4;
  }

  std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,FeatureStyleAttributes const&,0>();
}

void sub_1B3149308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t md::TransitAccessPointLabelFeature::updateDynamicStyling(md::TransitAccessPointLabelFeature *this, md::LabelManager *a2, md::Label *a3)
{
  v5 = (*(**(*(a2 + 21) + 64) + 8))(*(*(a2 + 21) + 64));
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 328);
  if (!v6)
  {
    goto LABEL_11;
  }

  v6 = v6[20];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *(this + 89);
  while (1)
  {
    v8 = v6[4];
    if (v8 <= v7)
    {
      break;
    }

LABEL_8:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v8 < v7)
  {
    ++v6;
    goto LABEL_8;
  }

  LODWORD(v6) = 1;
LABEL_11:
  if (*(this + 752) != v6)
  {
    *(this + 752) = v6;
    (*(*this + 552))(this, a2);
  }

  return 0;
}

void md::TransitAccessPointLabelFeature::~TransitAccessPointLabelFeature(md::TransitAccessPointLabelFeature *this)
{
  *this = &unk_1F2A37460;
  std::vector<md::TransitAccessPointLabelFeature::AccessPointType,geo::allocator_adapter<md::TransitAccessPointLabelFeature::AccessPointType,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 720));
  md::PointLabelFeature::~PointLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A37460;
  std::vector<md::TransitAccessPointLabelFeature::AccessPointType,geo::allocator_adapter<md::TransitAccessPointLabelFeature::AccessPointType,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 720));

  md::PointLabelFeature::~PointLabelFeature(this);
}

void std::vector<md::TransitAccessPointLabelFeature::AccessPointType,geo::allocator_adapter<md::TransitAccessPointLabelFeature::AccessPointType,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitAccessPointLabelFeature::AccessPointType>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitAccessPointLabelFeature::AccessPointType>(uint64_t a1, void *a2)
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

void non-virtual thunk toggl::VertexDataTyped<ggl::PolygonCommonStroke::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::PolygonCommonStroke::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::PolygonCommonStroke::MeshMesh::~MeshMesh(ggl::PolygonCommonStroke::MeshMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::PolygonCommonStroke::MeshMesh::~MeshMesh(ggl::PolygonCommonStroke::MeshMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::PolygonCommonStroke::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::PolygonCommonStroke::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t *std::unique_ptr<ggl::MeshVendor<ggl::PolygonShadowedStroke::ShadowPathMesh>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<std::unique_ptr<ggl::PolygonShadowedStroke::ShadowPathMesh>,geo::allocator_adapter<std::unique_ptr<ggl::PolygonShadowedStroke::ShadowPathMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
    MEMORY[0x1B8C62190](v2, 0x20C40D2EA512BLL);
  }

  return a1;
}

void std::vector<std::unique_ptr<ggl::PolygonShadowedStroke::ShadowPathMesh>,geo::allocator_adapter<std::unique_ptr<ggl::PolygonShadowedStroke::ShadowPathMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      v5 = a1;
      do
      {
        v6 = *--v3;
        a1 = v6;
        *v3 = 0;
        if (v6)
        {
          a1 = (*(*a1 + 8))(a1);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::PolygonShadowedStroke::ShadowPathMesh>>(v7, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::PolygonShadowedStroke::ShadowPathMesh>>(uint64_t a1, void *a2)
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

void std::vector<std::unique_ptr<ggl::Glow::MeshMesh>,geo::allocator_adapter<std::unique_ptr<ggl::Glow::MeshMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      v5 = a1;
      do
      {
        v6 = *--v3;
        a1 = v6;
        *v3 = 0;
        if (v6)
        {
          a1 = (*(*a1 + 8))(a1);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::Glow::MeshMesh>>(v7, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::Glow::MeshMesh>>(uint64_t a1, void *a2)
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

void md::CoastlineGroup::addCoastlineFeature(uint64_t a1, uint64_t a2)
{
  v201 = a1;
  v219 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 96);
  if (v2)
  {
    v3 = a2;
    v4 = 0;
    v191 = 0.000011921;
    v190 = 1.1755e-38;
    v205 = 65535.0;
    v189 = a2;
    v188 = v2;
    while (1)
    {
      v216 = 0;
      v5 = geo::codec::multiSectionFeaturePoints(v3, v4, &v216);
      if (v216 >= 2)
      {
        break;
      }

LABEL_92:
      if (++v4 == v2)
      {
        return;
      }
    }

    v6 = v5;
    v203 = v216;
    v7 = *v5;
    v8 = v5[1];
    v9 = v5[2];
    v10 = v5[3];
    v11 = *(*(*(v201 + 16) + 8) - 8);
    v12 = **(v11 + 64);
    v13 = (*(v12 + 6) - *(v12 + 5)) / *(v12 + 1);
    v206 = (v216 - 1);
    v14 = v13 + 4 * (v216 - 1);
    if (v14 >= 0x10000)
    {
      ggl::MeshVendor<ggl::PolygonShadowedStroke::ShadowPathMesh>::_allocateNewMesh();
    }

    v15 = 1.0 / sqrtf(((v9 - v7) * (v9 - v7)) + ((v10 - v8) * (v10 - v8)));
    v16 = v15 * (v10 - v8);
    v17 = -((v9 - v7) * v15);
    v18 = 6 * v206;
    ggl::BufferData::resize(v12, v14);
    v19 = **(v11 + 64);
    ggl::BufferMemory::BufferMemory(&v214);
    ggl::ResourceAccessor::accessIndexData(&v217, 0, v19, v13, v14, 1, 0);
    ggl::BufferMemory::operator=(&v214, &v217);
    ggl::BufferMemory::~BufferMemory(&v217);
    v20 = *(v11 + 96);
    v21 = (*(v20 + 6) - *(v20 + 5)) / *(v20 + 1);
    ggl::BufferData::resize(v20, v21 + v18);
    v202 = v18;
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v212, v20, v21, v21 + v18, 1, 0, 0);
    v22 = v16;
    v23 = v17;
    if (v215)
    {
      v22 = v16;
      v23 = v17;
      if (v213)
      {
        v24 = (v213 + 6);
        v25 = &v6[1];
        v26 = (v215 + 16);
        v27 = v206;
        v28 = v205;
        do
        {
          v29 = *(v25 - 2);
          v30 = *(v25 - 1);
          v31 = *v25;
          v32 = v25[1];
          v25 += 2;
          v33 = 1.0 / sqrtf(((v31 - v29) * (v31 - v29)) + ((v32 - v30) * (v32 - v30)));
          v34 = v33 * (v31 - v29);
          v22 = v33 * (v32 - v30);
          v35 = (v29 * v28);
          v36 = (v30 * v28);
          *(v26 - 8) = v35;
          *(v26 - 7) = v36;
          *(v26 - 4) = v35;
          v37 = (v31 * v28);
          v38 = (v32 * v28);
          *(v26 - 3) = v36;
          *v26 = v37;
          v26[4] = v37;
          v26[1] = v38;
          v26[5] = v38;
          LOWORD(v37) = (v22 * 127.5 + 127.5) | ((v34 * 127.5 + 127.5) << 8);
          *(v26 - 6) = v37;
          *(v26 - 5) = 0;
          *(v26 - 1) = -1;
          *(v26 - 2) = v37;
          v26[2] = v37;
          v26[3] = 0;
          v26[6] = v37;
          v26[7] = -1;
          *(v24 - 3) = v13;
          *(v24 - 2) = v13 + 1;
          *v24 = v13 + 1;
          *(v24 - 1) = v13 + 2;
          v24[1] = v13 + 3;
          v24[2] = v13 + 2;
          v13 += 4;
          v26 += 16;
          v24 += 6;
          v27 = (v27 - 1);
        }

        while (v27);
        v23 = -v34;
      }
    }

    v39 = +[VKPlatform sharedPlatform];
    v40 = [v39 supportsCoastlineGlows];
    v41 = v206;
    v42 = v40;

    if (!v42)
    {
LABEL_91:
      ggl::BufferMemory::~BufferMemory(v212);
      ggl::BufferMemory::~BufferMemory(&v214);
      goto LABEL_92;
    }

    if ((8 * v41) > 0x2000)
    {
      v45 = malloc_type_malloc(8 * v41, 0x100004000313F17uLL);
      v44 = v4;
    }

    else
    {
      v44 = v4;
      MEMORY[0x1EEE9AC00](v43);
      v45 = &v184 - ((8 * v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v45, 8 * v41);
    }

    v198 = 8 * v41;
    bzero(v45, 8 * v41);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    do
    {
      if (v48)
      {
        v49 = v6[v46];
        v50 = vsub_f32(v49, v6[v46 - 1]);
      }

      else
      {
        v49 = *v6;
        v50 = vsub_f32(v6[1], *v6);
      }

      v48 = (v48 + 1);
      v51 = vsub_f32(v6[v46 + 1], v49);
      v49.i32[0] = v50.i32[1];
      fanSegmentsBetweenSegments(&v45[v46 * 8 + 4], v50, v49, v51.f32[0], v51.f32[1]);
      *&v45[v46 * 8] = v54;
      v47 += v54;
      ++v46;
    }

    while (v41 != v48);
    v55 = 0;
    v193 = (v22 * 127.0);
    v56 = &v6[v41];
    v57 = 1;
    do
    {
      v58 = v6->f32[v55];
      v59 = v56[v55];
      v60 = vabds_f32(v58, v59);
      v61 = v60 <= (fabsf(v59 + v58) * v191) || v60 <= v190;
      if ((v57 & 1) == 0)
      {
        break;
      }

      v57 = 0;
      v55 = 1;
    }

    while (v61);
    v211 = 0.0;
    v62 = &v6[v203];
    if (v61)
    {
      v63 = v6->f32[1];
      v52.f32[0] = v6->f32[0] - v62[-2].f32[0];
      v53.f32[0] = v63 - v62[-2].f32[1];
      fanSegmentsBetweenSegments(&v211, v52, v53, v6[1].f32[0] - v6->f32[0], v6[1].f32[1] - v63);
      v192 = v64;
      v47 += v64;
    }

    else
    {
      v192 = 0;
    }

    GhostPoint = geo::codec::multiSectionFeatureGetGhostPoint(v3, v44, 0);
    v210 = 0.0;
    v200 = GhostPoint;
    if (GhostPoint)
    {
      v67.i32[0] = HIDWORD(GhostPoint->__vftable);
      v68 = v6->f32[0];
      v69 = v6->f32[1];
      v186 = *&GhostPoint->__vftable;
      v66.f32[0] = v68 - v186;
      v185 = v67.f32[0];
      v67.f32[0] = v69 - v67.f32[0];
      fanSegmentsBetweenSegments(&v210, v66, v67, v6[1].f32[0] - v68, v6[1].f32[1] - v69);
      v194 = v70;
      v47 += v70;
    }

    else
    {
      v194 = 0;
    }

    v71 = geo::codec::multiSectionFeatureGetGhostPoint(v3, v44, v41);
    v209 = 0.0;
    v197 = &v6[v41];
    v195 = v62;
    v196 = v71;
    if (v71)
    {
      v74 = v56[1];
      v72.f32[0] = *v56 - v62[-2].f32[0];
      v73.f32[0] = v74 - v62[-2].f32[1];
      fanSegmentsBetweenSegments(&v209, v72, v73, *v71 - *v56, v71[1] - v74);
      v199 = v75;
      v47 += v75;
      v76 = 2;
    }

    else
    {
      v76 = 0;
      v199 = 0;
    }

    v77 = 2;
    if (!v61)
    {
      v77 = 0;
    }

    v78 = v77 + 2 * v41 + 2 * (v200 != 0) + v76 + v47 + 2;
    v79 = *(*(*(v201 + 24) + 8) - 8);
    v80 = **(v79 + 64);
    v81 = (*(v80 + 6) - *(v80 + 5)) / *(v80 + 1);
    v82 = v81 + v78;
    if ((v81 + v78) >= 0x10000)
    {
      ggl::MeshVendor<ggl::Glow::MeshMesh>::_allocateNewMesh();
    }

    v83 = 3 * v47 + v202;
    ggl::BufferData::resize(v80, v82);
    v84 = **(v79 + 64);
    ggl::BufferMemory::BufferMemory(v207);
    ggl::ResourceAccessor::accessIndexData(&v217, 0, v84, v81, v82, 1, 0);
    ggl::BufferMemory::operator=(v207, &v217);
    ggl::BufferMemory::~BufferMemory(&v217);
    v85 = *(v79 + 96);
    v86 = (*(v85 + 6) - *(v85 + 5)) / *(v85 + 1);
    ggl::BufferData::resize(v85, v83 + v86);
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(&v217, v85, v86, v83 + v86, 1, 0, 0);
    v4 = v44;
    if (!v208 || !v218)
    {
LABEL_88:
      if (v198 > 0x2000)
      {
        free(v45);
      }

      ggl::BufferMemory::~BufferMemory(&v217);
      ggl::BufferMemory::~BufferMemory(v207);
      v3 = v189;
      v2 = v188;
      goto LABEL_91;
    }

    v187 = v44;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    *(&v184 + 1) = v23;
    LODWORD(v184) = (v23 * 127.0);
    v90 = (v16 * 127.0);
    v91 = (v17 * 127.0);
    v202 = v81 + 2;
    v203 = v81;
    v204 = v45;
    do
    {
      v92 = (&v87->~__shared_weak_count + 1);
      v93 = v6[v87];
      v94 = vsub_f32(v6[&v87->~__shared_weak_count + 1], v93);
      v95 = sqrtf(vaddv_f32(vmul_f32(v94, v94)));
      v96 = v205;
      if (v95 == 0.0)
      {
        v97 = 1.0;
        v98 = 0.0;
      }

      else
      {
        v98 = fminf(fmaxf(v94.f32[1] / v95, -1.0), 1.0);
        v97 = fminf(fmaxf(-v94.f32[0] / v95, -1.0), 1.0);
      }

      v99 = &v45[8 * v87];
      v100 = v99[1];
      v101 = *v99;
      v102 = v89 + v81;
      v103 = v218;
      if (v101)
      {
        v104 = 0;
        v105 = v202 + v89;
        v106 = (v218 + 2 * v88 + 4);
        do
        {
          *(v106 - 2) = v102;
          *(v106 - 1) = v105 - 1;
          *v106 = v105;
          v106 += 3;
          v88 += 3;
          ++v104;
          ++v105;
        }

        while (v101 > v104);
        v103 = v218;
      }

      v107 = v88;
      v108 = (v96 * v93.f32[0]);
      v109 = vmuls_lane_f32(v96, v93, 1);
      v110 = (v103 + 2 * v107);
      *v110 = v102;
      v110[1] = v102 + v101 + 3;
      v110[2] = v102 + v101 + 2;
      v110[3] = v102;
      v110[4] = v102 + v101 + 1;
      v110[5] = v102 + v101 + 3;
      v111 = v208 + 8 * v89;
      *v111 = v108;
      *(v111 + 2) = v109;
      *(v111 + 4) = v90;
      *(v111 + 5) = v91;
      *(v111 + 6) = 0;
      v112 = v208 + 8 * v89;
      *(v112 + 8) = v108;
      *(v112 + 10) = v109;
      *(v112 + 12) = v90;
      *(v112 + 13) = v91;
      *(v112 + 14) = 127;
      if (v101)
      {
        v113 = 8 * v89;
        v114 = 1;
        v89 += 2;
        do
        {
          v115 = __sincosf_stret(v100 * v114);
          v116 = v208 + v113;
          *(v116 + 16) = v108;
          *(v116 + 18) = v109;
          *(v116 + 20) = (fminf(fmaxf(-((v115.__sinval * v17) - (v115.__cosval * v16)), -1.0), 1.0) * 127.0);
          *(v116 + 21) = (fminf(fmaxf((v115.__sinval * v16) + (v115.__cosval * v17), -1.0), 1.0) * 127.0);
          *(v116 + 22) = 127;
          ++v89;
          ++v114;
          v113 += 8;
        }

        while (v101 >= v114);
      }

      else
      {
        v89 += 2;
      }

      v88 = v107 + 6;
      v91 = (v97 * 127.0);
      v90 = (v98 * 127.0);
      v87 = v92;
      v17 = v97;
      v16 = v98;
      v45 = v204;
      v81 = v203;
    }

    while (v92 != v206);
    v117 = v205;
    v118 = (*v197 * v205);
    v119 = (v197[1] * v205);
    v120 = v208 + 8 * v89;
    *v120 = v118;
    *(v120 + 2) = v119;
    *(v120 + 4) = v90;
    *(v120 + 5) = v91;
    *(v120 + 6) = 0;
    v121 = v208 + 8 * v89;
    LODWORD(v206) = v118;
    *(v121 + 8) = v118;
    *(v121 + 10) = v119;
    *(v121 + 12) = v90;
    *(v121 + 13) = v91;
    *(v121 + 14) = 127;
    v122 = v89 + 2;
    LODWORD(v202) = v119;
    if (v61)
    {
      v123 = v192;
      if (v192)
      {
        v124 = 0;
        v125 = v81 + v89 + 4;
        v126 = (v218 + 2 * v107 + 16);
        v127 = v199;
        do
        {
          *(v126 - 2) = v122 + v81;
          *(v126 - 1) = v125 - 1;
          *v126 = v125;
          v126 += 3;
          v88 += 3;
          ++v124;
          ++v125;
        }

        while (v123 > v124);
      }

      else
      {
        v127 = v199;
      }

      v128 = v208 + 8 * v122;
      v129 = v206;
      *v128 = v206;
      v130 = v202;
      *(v128 + 2) = v202;
      v131 = v193;
      *(v128 + 4) = v193;
      v132 = v184;
      *(v128 + 5) = v184;
      *(v128 + 6) = 0;
      v133 = v208 + 8 * v89;
      *(v133 + 24) = v129;
      *(v133 + 26) = v130;
      *(v133 + 28) = v131;
      *(v133 + 29) = v132;
      *(v133 + 30) = 127;
      v122 = v89 + 4;
      v134 = *(&v184 + 1);
      if (v123)
      {
        v199 = v127;
        v135 = 8 * v89;
        v136 = 1;
        v137 = v206;
        v138 = v202;
        do
        {
          v139 = __sincosf_stret(v211 * v136);
          v140 = v208 + v135;
          *(v140 + 32) = v137;
          *(v140 + 34) = v138;
          *(v140 + 36) = (fminf(fmaxf(-((v139.__sinval * v134) - (v139.__cosval * v22)), -1.0), 1.0) * 127.0);
          *(v140 + 37) = (fminf(fmaxf((v139.__sinval * v22) + (v139.__cosval * v134), -1.0), 1.0) * 127.0);
          *(v140 + 38) = 127;
          ++v122;
          ++v136;
          v135 += 8;
        }

        while (v123 >= v136);
        v4 = v187;
        v117 = v205;
        LOWORD(v119) = v138;
        v127 = v199;
        if (!v200)
        {
LABEL_78:
          v164 = v206;
          if (v196)
          {
            v165 = v197[1];
            v166 = v195[-2].f32[0];
            v167 = v195[-2].f32[1];
            v168 = 0.0;
            if (((vabds_f32(*v197, v166) < 0.0001) & (vabds_f32(v165, v167) < 0.0001)) != 0)
            {
              v169 = 1.0;
            }

            else
            {
              v168 = *v197 - v166;
              v169 = v165 - v167;
            }

            if (v127)
            {
              v170 = 0;
              v171 = v122 + v81 + 2;
              v172 = (v218 + 2 * v88 + 2);
              do
              {
                *(v172 - 1) = v122 + v81;
                *v172 = v171 - 1;
                v172[1] = v171;
                ++v170;
                ++v171;
                v172 += 3;
              }

              while (v127 > v170);
            }

            v173 = 1.0 / sqrtf((v168 * v168) + (v169 * v169));
            v174 = v173 * v169;
            v175 = -(v168 * v173);
            v176 = ((v173 * v169) * 127.0);
            v177 = (v175 * 127.0);
            v178 = v208 + 8 * v122;
            *v178 = v164;
            *(v178 + 2) = v119;
            *(v178 + 4) = v176;
            *(v178 + 5) = v177;
            *(v178 + 6) = 0;
            v179 = v208 + 8 * v122;
            *(v179 + 8) = v164;
            *(v179 + 10) = v119;
            *(v179 + 12) = v176;
            *(v179 + 13) = v177;
            *(v179 + 14) = 127;
            if (v127)
            {
              v180 = 8 * v122;
              v181 = 1;
              do
              {
                v182 = __sincosf_stret(v209 * v181);
                v183 = v208 + v180;
                *(v183 + 16) = v164;
                *(v183 + 18) = v119;
                *(v183 + 20) = (fminf(fmaxf(-((v182.__sinval * v175) - (v182.__cosval * v174)), -1.0), 1.0) * 127.0);
                *(v183 + 21) = (fminf(fmaxf((v182.__sinval * v174) + (v182.__cosval * v175), -1.0), 1.0) * 127.0);
                *(v183 + 22) = 127;
                ++v181;
                v180 += 8;
              }

              while (v127 >= v181);
            }
          }

          goto LABEL_88;
        }
      }

      else
      {
        v4 = v187;
        LOWORD(v119) = v202;
        if (!v200)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      v4 = v187;
      v127 = v199;
      if (!v200)
      {
        goto LABEL_78;
      }
    }

    v142 = v6->f32[0];
    v141 = v6->f32[1];
    v143 = v6->f32[0] - v186;
    v144 = v141 - v185;
    if (((vabds_f32(v6->f32[0], v186) < 0.0001) & (vabds_f32(v141, v185) < 0.0001)) != 0)
    {
      v143 = 0.0;
      v144 = 1.0;
    }

    v145 = v194;
    if (v194)
    {
      v146 = 0;
      v147 = v122 + v81 + 2;
      v148 = (v218 + 2 * v88 + 4);
      do
      {
        *(v148 - 2) = v122 + v81;
        *(v148 - 1) = v147 - 1;
        *v148 = v147;
        v148 += 3;
        v88 += 3;
        ++v146;
        ++v147;
      }

      while (v145 > v146);
      v142 = v6->f32[0];
    }

    v149 = 1.0 / sqrtf((v143 * v143) + (v144 * v144));
    v150 = v149 * v144;
    v151 = -(v143 * v149);
    v152 = ((v149 * v144) * 127.0);
    v153 = (v151 * 127.0);
    v154 = (v142 * v117);
    v155 = (v141 * v117);
    v156 = v208 + 8 * v122;
    *v156 = v154;
    *(v156 + 2) = v155;
    *(v156 + 4) = v152;
    *(v156 + 5) = v153;
    *(v156 + 6) = 0;
    v157 = v208 + 8 * v122;
    *(v157 + 8) = v154;
    *(v157 + 10) = v155;
    *(v157 + 12) = v152;
    *(v157 + 13) = v153;
    *(v157 + 14) = 127;
    v158 = v122 + 2;
    if (v145)
    {
      v159 = 8 * v122;
      v160 = 1;
      v161 = v145;
      do
      {
        v162 = __sincosf_stret(v210 * v160);
        v163 = v208 + v159;
        *(v163 + 16) = v154;
        *(v163 + 18) = v155;
        *(v163 + 20) = (fminf(fmaxf(-((v162.__sinval * v151) - (v162.__cosval * v150)), -1.0), 1.0) * 127.0);
        *(v163 + 21) = (fminf(fmaxf((v162.__sinval * v150) + (v162.__cosval * v151), -1.0), 1.0) * 127.0);
        *(v163 + 22) = 127;
        ++v158;
        ++v160;
        v159 += 8;
      }

      while (v161 >= v160);
      v122 = v158;
      v45 = v204;
      v127 = v199;
      v81 = v203;
    }

    else
    {
      v122 += 2;
      v45 = v204;
    }

    LOWORD(v119) = v202;
    goto LABEL_78;
  }
}

void sub_1B314B1A0(_Unwind_Exception *a1)
{
  ggl::BufferMemory::~BufferMemory((v1 - 312));
  ggl::BufferMemory::~BufferMemory((v1 - 264));
  _Unwind_Resume(a1);
}

float fanSegmentsBetweenSegments(float *a1, float32x2_t a2, float32x2_t a3, float32_t a4, float32_t a5)
{
  v6 = 0;
  v24 = 0;
  a2.f32[1] = a4;
  a3.f32[1] = a5;
  __asm { FMOV            V3.2S, #1.0 }

  v12 = vdiv_f32(_D3, vsqrt_f32(vmla_f32(vmul_f32(a2, a2), a3, a3)));
  v13 = vmul_f32(v12, a3);
  v14 = vmul_f32(vrev64_s32(v12), vneg_f32(vrev64_s32(a2)));
  v23 = __PAIR64__(v14.u32[1], v13.u32[0]);
  v19 = v14;
  v20 = v13;
  v21 = vext_s8(v13, v14, 4uLL);
  v22 = 0;
  v15 = 0.0;
  do
  {
    v15 = v15 + (*&v21.i32[v6] * *(&v23 + v6 * 4));
    ++v6;
  }

  while (v6 != 3);
  result = acosf(fminf(fmaxf(v15, -1.0), 1.0));
  v17 = vcvtps_u32_f32(result * 2.8648);
  if (a1 && v17)
  {
    v18 = vmul_f32(v20, v19);
    if (vcgt_f32(vdup_lane_s32(v18, 1), v18).u8[0])
    {
      result = -result;
    }

    result = result / v17;
    *a1 = result;
  }

  return result;
}

mdm::zone_mallocator *md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp<std::string>(mdm::zone_mallocator *__dst, void *__src)
{
  v3 = __dst;
  v4 = *(__src + 23);
  v5 = __src;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = __src[1];
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_25;
    }

    v5 = *__src;
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v8 = mdm::zone_mallocator::instance(__dst);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v8, v7);
    *(v3 + 1) = v4;
    *(v3 + 2) = v7 | 0x8000000000000000;
    *v3 = v6;
    goto LABEL_11;
  }

  *(__dst + 23) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_11:
    __dst = memmove(v6, v5, v4);
  }

  *(v6 + v4) = 0;
  v9 = *(__src + 47);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = (__src + 3);
    goto LABEL_16;
  }

  v9 = __src[4];
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_25:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = __src[3];
LABEL_16:
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v13 = mdm::zone_mallocator::instance(__dst);
    v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v13, v12);
    *(v3 + 5) = v9;
    *(v3 + 6) = v12 | 0x8000000000000000;
    *(v3 + 4) = v11;
  }

  else
  {
    v11 = v3 + 32;
    *(v3 + 55) = v9;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  memmove(v11, v10, v9);
LABEL_24:
  *(v11 + v9) = 0;
  return v3;
}

void sub_1B314B408(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    v3 = *v1;
    v4 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::PhysicalLabelFeature::debugString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, unsigned int a4@<W3>, _BYTE *a5@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v32);
  v42 = 15;
  strcpy(v41, "PhysicalFeature");
  md::LineLabelFeature::debugRoadString(__p, a1, a2, a3, a4, v41);
  if ((v31 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v11 = v31;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, v10, v11);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    v13 = *v41;
    v14 = mdm::zone_mallocator::instance(v12);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v14, v13);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, "Physical Feature Attributes:\n", 29);
  v15 = *(a2 + 464);
  v16 = *(a1 + 192);
  if ((md::LabelLineStore::lineSetIndexForZoom(v16, v15) & 0x80000000) == 0 && *(v16 + 12))
  {
    v17 = *(a1 + 192);
    v18 = md::LabelLineStore::lineSetIndexForZoom(v17, v15);
    v19 = *(*(v17 + 12) + 112 * v18 + 8);
    if (*(*(a1 + 192) + 159))
    {
      v20 = v19 * 0.0000000249532021;
    }

    else
    {
      v20 = *(*(v17 + 12) + 112 * v18 + 8);
    }

    v21 = exp2f(v15);
    v22 = *(a2 + 176);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, " Length:", 8);
    v23 = MEMORY[0x1B8C61C60](&v32, v19);
    v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, " Pixels=", 8);
    v25 = MEMORY[0x1B8C61C60](v24, v21 * 512.0 * v22 * v20);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, "\n", 1);
  }

  if ((v39 & 0x10) != 0)
  {
    v27 = v38;
    if (v38 < v35)
    {
      v38 = v35;
      v27 = v35;
    }

    locale = v34[4].__locale_;
  }

  else
  {
    if ((v39 & 8) == 0)
    {
      v26 = 0;
      a5[23] = 0;
      goto LABEL_30;
    }

    locale = v34[1].__locale_;
    v27 = v34[3].__locale_;
  }

  v26 = v27 - locale;
  if ((v27 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v26 >= 0x17)
  {
    operator new();
  }

  a5[23] = v26;
  if (v26)
  {
    memmove(a5, locale, v26);
  }

LABEL_30:
  a5[v26] = 0;
  v32 = *MEMORY[0x1E69E54E8];
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v33 = MEMORY[0x1E69E5548] + 16;
  if (v37 < 0)
  {
    operator delete(v36);
  }

  v33 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v34);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v40);
}

void sub_1B314B7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a16 = *MEMORY[0x1E69E54E8];
  *(&a16 + *(a16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a17 = MEMORY[0x1E69E5548] + 16;
  if (a30 < 0)
  {
    operator delete(__p);
  }

  a17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a18);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a33);
  _Unwind_Resume(a1);
}

float md::PhysicalLabelFeature::maxZoomRank(uint64_t a1)
{
  result = *(a1 + 460);
  if (result == 254.0)
  {
    return 252.0;
  }

  return result;
}

__int128 *md::PhysicalLabelFeature::labelPoint(md::PhysicalLabelFeature *this, const md::LabelIdentifier *a2)
{
  if (*(this + 58))
  {
    v2 = *a2 == 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return (this + 480);
  }

  else
  {
    return md::LineLabelFeature::labelPoint(this, a2);
  }
}

__n128 std::__function::__func<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_1,std::allocator<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_1>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A37B30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_0,std::allocator<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_0>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  result = (*(**(a1 + 8) + 680))(*(a1 + 8), 0, *(a1 + 16));
  *(v2 + 38) = result;
  return result;
}

__n128 std::__function::__func<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_0,std::allocator<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_0>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A37AE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::PhysicalLabelFeature::newRootPart(md::LabelFeature *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  md::LineLabelPlacer::positionForIdentifier(&v15, a1 + 192, *(a3 + 48));
  v6 = v15;
  if (v15 && *(a4 + 236) != 0.0 && *(a1 + 48) != *(a1 + 49))
  {
    if ((*(*v15 + 200))(v15))
    {
      v7 = (*(*v6 + 200))(v6);
      md::LabelLineResolvedPosition::ensureValidLinePosition(v7, v8);
      v9 = md::LabelLinePosition::textIndex(v7);
      if (v9 == 255)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = md::LabelStyle::textStyleGroup(a4, 0);
    md::LabelFeature::textDataForZoom(&v13, a1, v10, v12);
    if (v13)
    {
      operator new();
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  return 0;
}

void sub_1B314BE44(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v20 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v20, v18);
  std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void md::PhysicalLabelFeature::~PhysicalLabelFeature(md::PhysicalLabelFeature *this)
{
  md::PhysicalLabelFeature::~PhysicalLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A37800;
  *(this + 55) = &unk_1F2A37AC8;
  *(this + 66) = &unk_1F2A567C0;

  v2 = *(this + 59);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LineLabelFeature::~LineLabelFeature(this);
}

void md::Logic<md::NavigationLogic,md::NavigationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<md::RouteOverlayContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void ___ZN2md15NavigationLogic23_updatePolygonSelectionEv_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v3 = [v14 route];

  if (v3)
  {
    v4 = [v14 route];
    v5 = [v4 restrictionZoneInfo];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v5 zoneIDs];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          if (GEOGetVectorKitRouteLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
          }

          v11 = GEOGetVectorKitRouteLog_log;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v10 identifier];
            LODWORD(buf[0]) = 134217984;
            *(buf + 4) = v12;
            _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_INFO, "Selecting restricted zone polygon: %llx", buf, 0xCu);
          }

          v13 = *(*(a1 + 32) + 8);
          buf[0] = [v10 identifier];
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>((v13 + 48), buf[0]);
          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v7);
    }
  }
}

uint64_t md::Logic<md::NavigationLogic,md::NavigationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<md::RouteOverlayContext>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x1B8B241A8D896A1DLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7 = *(a2 + 8);
    v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0xE42D19AFCA302E68);
    if (v8 && (v9 = v8[5], *(v9 + 8) == 0xE42D19AFCA302E68))
    {
      v10 = *(v9 + 32);
    }

    else
    {
      v10 = 0;
    }

    v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x8BD499FBD96FBB9ELL);
    if (v11 && (v12 = v11[5], *(v12 + 8) == 0x8BD499FBD96FBB9ELL))
    {
      v13 = *(v12 + 32);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x1AF456233693CD46uLL)[5] + 32);
    v15 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x13043386C0978CC2uLL);
    if (v15 && (v16 = v15[5], *(v16 + 8) == 0x13043386C0978CC2))
    {
      v17 = *(v16 + 32);
    }

    else
    {
      v17 = 0;
    }

    v18[0] = v10;
    v18[1] = v13;
    v18[2] = v14;
    v18[3] = v17;
    return (*(*v6 + 160))(v6, a2, v18, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::NavigationContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::NavigationContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::NavigationContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::NavigationContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A37D28;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 104);

    MEMORY[0x1B8C62190](v2, 0x10A0C4094862C28);
  }

  return a1;
}

void md::NavigationLogic::~NavigationLogic(id *this)
{
  md::NavigationLogic::~NavigationLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A37B78;
  [this[20] destroyAnimationRunner];
  [this[38] stop];
  this[37] = &unk_1F2A37D08;

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((this + 31));
  this[22] = &unk_1F2A580E8;

  this[19] = &unk_1F2A37CE8;
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[13]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[10]);
}

void sub_1B314C644(_Unwind_Exception *a1)
{
  *(v1 + 296) = &unk_1F2A37D08;

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 248);
  *(v1 + 176) = &unk_1F2A580E8;

  *(v1 + 152) = &unk_1F2A37CE8;
  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

void geo::_retain_ptr<VKNavigationPuck * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A37CE8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKNavigationPuck * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A37CE8;

  return a1;
}

void geo::_retain_ptr<VKPuckAnimator * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A37D08;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKPuckAnimator * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A37D08;

  return a1;
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A37E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Tile::LinearDepth>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A37DE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::DaVinci::Shadow>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A37D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciGroundRenderable::~DaVinciGroundRenderable(md::DaVinciGroundRenderable *this)
{
  v2 = 0;
  *this = &unk_1F2A37D50;
  while (1)
  {
    v3 = this + v2;
    v4 = *(this + v2 + 800);
    if (v4)
    {
      *(v3 + 101) = v4;
      operator delete(v4);
    }

    v5 = *(v3 + 97);
    if (v5)
    {
      *(this + v2 + 784) = v5;
      operator delete(v5);
    }

    v2 -= 56;
    if (v2 == -224)
    {
      v6 = *(this + 58);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }

      v7 = *(this + 56);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v8 = 432;
      while (1)
      {
        v9 = *(this + v8);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        }

        v8 -= 16;
        if (v8 == 400)
        {
          md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(this);

          JUMPOUT(0x1B8C62190);
        }
      }
    }
  }
}

{
  v2 = 0;
  *this = &unk_1F2A37D50;
  do
  {
    v3 = this + v2;
    v4 = *(this + v2 + 800);
    if (v4)
    {
      *(v3 + 101) = v4;
      operator delete(v4);
    }

    v5 = *(v3 + 97);
    if (v5)
    {
      *(this + v2 + 784) = v5;
      operator delete(v5);
    }

    v2 -= 56;
  }

  while (v2 != -224);
  v6 = *(this + 58);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 56);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  for (i = 432; i != 400; i -= 16)
  {
    v9 = *(this + i);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(this);
}