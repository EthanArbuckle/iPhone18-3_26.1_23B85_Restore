void sub_1B2EDAD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = a11;
  std::vector<geo::fast_shared_ptr<md::TransitLineSegment,std::allocator>>::__destroy_vector::operator()[abi:nn200100](&a16);
  v18 = *a12;
  if (*a12)
  {
    v16[8] = v18;
    operator delete(v18);
  }

  v19 = v16[6];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v20 = v16[4];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  v21 = v16[2];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<md::TransitLink>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    md::TransitLink::~TransitLink((i - 248));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<geo::fast_shared_ptr<md::TransitLineSegment,std::allocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        if (v7)
        {
          if ((*v6)-- == 1)
          {
            operator delete(v6);
            *v4 = 0;
          }
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitLink::Section>>(unint64_t a1)
{
  if (a1 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitLine>>(unint64_t a1)
{
  if (a1 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::TransitLine>,md::TransitLine*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      v7 = *(v6 + 8);
      *a3 = *v6;
      *(a3 + 8) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(v6 + 16);
      *(a3 + 32) = *(v6 + 32);
      *(a3 + 16) = v8;
      *(a3 + 36) = *(v6 + 36);
      v9 = *(v6 + 52);
      v10 = *(v6 + 60);
      *(a3 + 64) = 0;
      *(a3 + 60) = v10;
      *(a3 + 52) = v9;
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      v11 = *(v6 + 64);
      v12 = *(v6 + 72);
      if (v12 != v11)
      {
        std::vector<md::TransitLine::MergeTypeInfo>::__vallocate[abi:nn200100](a3 + 64, 0xD37A6F4DE9BD37A7 * ((v12 - v11) >> 3));
      }

      *(a3 + 88) = *(v6 + 88);
      v6 += 104;
      a3 += 104;
    }

    while (v6 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::TransitLine,0>(v5);
      v5 += 104;
    }

    while (v5 != a2);
  }
}

void sub_1B2EDB118(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<md::TransitLine>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    std::__destroy_at[abi:nn200100]<md::TransitLine,0>(i - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ggl::ConstantDataTyped<ggl::TransitLineRibbon::Options>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TransitLineRibbon::Options>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0F850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::TransitLineRibbon::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TransitLineRibbon::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0F7F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::TransitLineRibbon::ClipParams>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TransitLineRibbon::ClipParams>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0F7A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TransitTileData::TransitTileData(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v15 = a5;
  md::MapTileData::MapTileData(a1, a2, a8, a3, 1);
  *a1 = &unk_1F2A0F748;
  a1[80] = &unk_1F2A0F788;
  a1[91] = *a3;
  v16 = a3[1];
  a1[92] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  a1[93] = *a4;
  v17 = a4[1];
  a1[94] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  geo::_retain_ptr<VKSharedResources * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a1 + 95, v15);
  a1[98] = a6;
  a1[99] = *a7;
  v18 = a7[1];
  a1[100] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = [v15 dataOverrideManager];
  a1[101] = *v19;
  v20 = v19[1];
  a1[102] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B2EDBBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>>>::~__hash_table(v12 + 1264);
  v15 = *(v12 + 1248);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = *v14;
  *v14 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  std::__tree<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::__map_value_compare<md::PatternedLineKey,std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::less<md::PatternedLineKey>,true>,std::allocator<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>>>::destroy(*(v12 + 1208));
  v17 = *(v12 + 1192);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  v18 = *(v12 + 1176);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = *(v12 + 1160);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v20 = *(v12 + 1144);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  std::unique_ptr<md::StyleTexture<md::TransitLineSegment::StylePixel>>::reset[abi:nn200100]((v12 + 1128), 0);
  std::unique_ptr<md::StyleTexture<md::TransitLineSegment::StylePixel>>::reset[abi:nn200100]((v12 + 1120), 0);
  v21 = *(v12 + 1112);
  *(v12 + 1112) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(v12 + 1104);
  *(v12 + 1104) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(v12 + 1096);
  *(v12 + 1096) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(v12 + 1088);
  *(v12 + 1088) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(v12 + 1080);
  *(v12 + 1080) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(v12 + 1072);
  *(v12 + 1072) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  a11 = v12 + 1048;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a11);
  a11 = v12 + 1024;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a11);
  a11 = v12 + 1000;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a11);
  a11 = v12 + 976;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a11);
  a11 = v12 + 952;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a11);
  std::unique_ptr<md::TransitJunctionManager>::reset[abi:nn200100]((v12 + 944), 0);
  std::__list_imp<md::TransitDisplayConnection>::clear(v13);
  a11 = v12 + 896;
  std::vector<md::TransitLink>::__destroy_vector::operator()[abi:nn200100](&a11);
  std::vector<md::TransitLine>::__destroy_vector::operator()[abi:nn200100](&a11);
  v27 = *(v12 + 864);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  v28 = *(v12 + 848);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  v29 = *(v12 + 832);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  v30 = *(v12 + 816);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  v31 = *(v12 + 800);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  *(v12 + 760) = &unk_1F2A59028;

  v32 = *(v12 + 752);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = *(v12 + 736);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  md::MapTileData::~MapTileData(v12);

  _Unwind_Resume(a1);
}

uint64_t md::StyleTexture<md::TransitLineSegment::StylePixel>::StyleTexture(uint64_t a1, unint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v3 = &unk_1EB82A000;
  {
    v3 = &unk_1EB82A000;
    if (v12)
    {
      md::StyleTexture<md::TransitLineSegment::StylePixel>::StyleTexture(unsigned long,md::StyleTexture<md::TransitLineSegment::StylePixel>::PackStyle,BOOL,ggl::Filter)::bytesPerPixel = 4;
      v3 = &unk_1EB82A000;
    }
  }

  v4 = v3[1];
  v5 = (v4 + 7) / v4;
  v6 = vcvtpd_u64_f64(sqrt(0));
  v7 = v6 > 1;
  v8 = (1 << -__clz(v6 - 1));
  if (!v7)
  {
    v8 = 1;
  }

  v9 = vcvtpd_u64_f64(0 / (v8 / v5));
  v7 = v9 > 1;
  v10 = (1 << -__clz(v9 - 1));
  if (!v7)
  {
    v10 = 1;
  }

  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  *(a1 + 72) = v8 / v5;
  *(a1 + 80) = v5;
  *(a1 + 64) = v5 * v4;
  *(a1 + 88) = 1.0 / v8;
  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
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
      v4 = *(v2 + 32);
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

void md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::RibbonBatch(uint64_t a1)
{
  v2 = 0;
  *a1 = &unk_1F2A0F8A8;
  *(a1 + 8) = 0;
  do
  {
    v3 = a1 + v2;
    ggl::RenderItem::RenderItem((a1 + v2 + 16), "");
    *(v3 + 16) = &unk_1F2A5B548;
    *(v3 + 136) = 1;
    v2 += 128;
  }

  while (v2 != 512);
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 616) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 624) = 32;
  v4 = malloc_type_malloc(0xF10uLL, 0x1020040EDED9539uLL);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + 608) = v4;
  *(a1 + 616) = v4;
  *(a1 + 632) = 0;
  *(a1 + 648) = 0;
  *(a1 + 640) = 0;
  *(a1 + 656) = 1;
  operator new();
}

uint64_t **std::__tree<std::__value_type<md::PatternedLineKey,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>,std::__map_value_compare<md::PatternedLineKey,std::__value_type<md::PatternedLineKey,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>,std::less<md::PatternedLineKey>,true>,std::allocator<std::__value_type<md::PatternedLineKey,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>>>::__emplace_unique_key_args<md::PatternedLineKey,std::piecewise_construct_t const&,std::tuple<md::PatternedLineKey const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_16:
    operator new();
  }

  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 1);
  while (1)
  {
    while (1)
    {
      v6 = v2;
      v7 = *(v2 + 8);
      if (v3 != v7)
      {
        if (v3 >= v7)
        {
          if (v7 >= v3)
          {
            return v6;
          }

          goto LABEL_15;
        }

        goto LABEL_12;
      }

      v8 = *(v6 + 36);
      if (v4 != v8)
      {
        break;
      }

      v9 = v6[5];
      if (v5 >= v9)
      {
        if (v9 >= v5)
        {
          return v6;
        }

        goto LABEL_15;
      }

LABEL_12:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    if (v4 < v8)
    {
      goto LABEL_12;
    }

    if (v8 >= v4)
    {
      return v6;
    }

LABEL_15:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_16;
    }
  }
}

uint64_t **std::__tree<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::__map_value_compare<md::PatternedLineKey,std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::less<md::PatternedLineKey>,true>,std::allocator<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>>>::__emplace_unique_key_args<md::PatternedLineKey,std::piecewise_construct_t const&,std::tuple<md::PatternedLineKey const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_16:
    operator new();
  }

  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 1);
  while (1)
  {
    while (1)
    {
      v6 = v2;
      v7 = *(v2 + 8);
      if (v3 != v7)
      {
        if (v3 >= v7)
        {
          if (v7 >= v3)
          {
            return v6;
          }

          goto LABEL_15;
        }

        goto LABEL_12;
      }

      v8 = *(v6 + 36);
      if (v4 != v8)
      {
        break;
      }

      v9 = v6[5];
      if (v5 >= v9)
      {
        if (v9 >= v5)
        {
          return v6;
        }

        goto LABEL_15;
      }

LABEL_12:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    if (v4 < v8)
    {
      goto LABEL_12;
    }

    if (v8 >= v4)
    {
      return v6;
    }

LABEL_15:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_16;
    }
  }
}

void md::TransitTileData::accumulateLineBatches(void **a1, void *a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = a3 + 1;
  v6 = *a3;
  if (*a3 == a3 + 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = v6[5];
      *(v8 + 48) = a2[136];
      v9 = *(v6 + 8);
      v10 = (4 * v9) | 1u;
      *(v8 + 64) = v10;
      v11 = v6[5];
      *(v11 + 304) = a2[138];
      *(v11 + 320) = v10;
      v12 = v6[5];
      *(v12 + 176) = a2[137];
      v13 = (4 * v9) | 2u;
      *(v12 + 192) = v13;
      v14 = v6[5];
      *(v14 + 432) = a2[139];
      *(v14 + 448) = v13;
      v15 = a1[2];
      if (v7 >= v15)
      {
        v16 = *a1;
        v17 = v7 - *a1;
        v18 = (v17 >> 3) + 1;
        if (v18 >> 61)
        {
LABEL_43:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v19 = v15 - v16;
        if (v19 >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v20);
        }

        v21 = (8 * (v17 >> 3));
        *v21 = v6[5];
        v7 = (v21 + 1);
        memcpy(0, v16, v17);
        *a1 = 0;
        a1[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v7 = v6[5];
        v7 += 8;
      }

      a1[1] = v7;
      v22 = v6[1];
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
          v23 = v6[2];
          v24 = *v23 == v6;
          v6 = v23;
        }

        while (!v24);
      }

      v6 = v23;
    }

    while (v23 != v5);
  }

  v25 = a3[3];
  if (v25 != (a3 + 4))
  {
    do
    {
      v26 = *(v25 + 6);
      *(v26 + 136) = 0;
      *(v26 + 392) = 0;
      *(v26 + 264) = 1;
      *(v26 + 176) = std::__tree<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::__map_value_compare<md::PatternedLineKey,std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::less<md::PatternedLineKey>,true>,std::allocator<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>>>::__emplace_unique_key_args<md::PatternedLineKey,std::piecewise_construct_t const&,std::tuple<md::PatternedLineKey const&>,std::tuple<>>((a2 + 150), v25 + 8)[6];
      *(v26 + 192) = (4 * v25[8]) | 3u;
      v27 = *(v25 + 6);
      *(v27 + 520) = 1;
      *(v27 + 432) = std::__tree<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::__map_value_compare<md::PatternedLineKey,std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>,std::less<md::PatternedLineKey>,true>,std::allocator<std::__value_type<md::PatternedLineKey,md::PatternedLineSetup>>>::__emplace_unique_key_args<md::PatternedLineKey,std::piecewise_construct_t const&,std::tuple<md::PatternedLineKey const&>,std::tuple<>>((a2 + 150), v25 + 8)[8];
      *(v27 + 448) = (4 * v25[8]) | 3u;
      v28 = a1[2];
      if (v7 >= v28)
      {
        v29 = *a1;
        v30 = v7 - *a1;
        v31 = (v30 >> 3) + 1;
        if (v31 >> 61)
        {
          goto LABEL_43;
        }

        v32 = v28 - v29;
        if (v32 >> 2 > v31)
        {
          v31 = v32 >> 2;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          v33 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v33);
        }

        v34 = (8 * (v30 >> 3));
        *v34 = *(v25 + 6);
        v7 = (v34 + 1);
        memcpy(0, v29, v30);
        *a1 = 0;
        a1[2] = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v7 = *(v25 + 6);
        v7 += 8;
      }

      a1[1] = v7;
      v35 = *(v25 + 1);
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = *(v25 + 2);
          v24 = *v36 == v25;
          v25 = v36;
        }

        while (!v24);
      }

      v25 = v36;
    }

    while (v36 != (a3 + 4));
  }
}

void sub_1B2EDC904(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor>::RibbonLayer(uint64_t a1, void *a2, uint64_t a3)
{
  v13[3] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *a1 = &unk_1F2A0F8C8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v4 >> 3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(a1 + 32) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  if (*(a3 + 32) == 1)
  {
    *(a1 + 128) = 0;
    *(a1 + 108) = *(a3 + 4);
    *(a1 + 104) = *a3;
    *(a1 + 120) = *(a3 + 16);
    *(a1 + 128) = *(a3 + 24);
    *(a1 + 136) = 1;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    do
    {
      v6 = *v5;
      v6[1] = a1;
      v7 = v6[79];
      if (v7 != v6[80])
      {
        v8 = *v7;
        v8[1] = **v7;
        v8[3] = v8[2];
        v8[5] = v8[4];
        memset(v13, 0, 24);
        memset(&__p, 0, sizeof(__p));
        v9 = v8[7];
        v10 = v8[8];
        if (v9 != v10)
        {
          do
          {
            md::Ribbons::RibbonWriter<md::Ribbons::TransitRibbonDescriptor>::computeMeshSize(*v9, v13, &__p);
            v11 = *v9++;
            v8[1] = v11[2] + v8[1] - v11[1];
            v8[3] = v11[4] + v8[3] - v11[3];
            v8[5] = v11[6] + v8[5] - v11[5];
          }

          while (v9 != v10);
          if (__p.__begin_)
          {
            operator delete(__p.__begin_);
          }
        }

        if (v13[0])
        {
          operator delete(v13[0]);
        }

        operator new();
      }

      ++v5;
    }

    while (v5);
    if (*(a1 + 88))
    {
      operator new();
    }
  }

  operator new();
}

void std::__function::__func<md::TransitTileData::createLines(ggl::Loader *)::$_1,std::allocator<md::TransitTileData::createLines(ggl::Loader *)::$_1>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 8) + 1072);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v3 != v4)
  {
    v5 = *a2;
    do
    {
      v6 = *(*v3 + 632);
      v7 = *(*v3 + 640);
      while (v6 != v7)
      {
        v8 = *v6++;
        md::Ribbons::RibbonSection<md::Ribbons::TransitRibbonDescriptor>::computeMesh(v8, v2, v5);
      }

      v3 += 8;
    }

    while (v3 != v4);
  }
}

void md::Ribbons::RibbonSection<md::Ribbons::TransitRibbonDescriptor>::computeMesh(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v171[1] = *MEMORY[0x1E69E9840];
  v5 = **(a1[11] + 64);
  v6 = *a1;
  v7 = a1[1];
  ggl::BufferMemory::BufferMemory(v150);
  ggl::ResourceAccessor::accessIndexData(&v164, a3, v5, v6, v7, 1, 1);
  ggl::BufferMemory::operator=(v150, &v164);
  ggl::BufferMemory::~BufferMemory(&v164);
  v8 = a1[2];
  v10 = a1[4];
  v9 = a1[5];
  if (v9 == v10)
  {
    v11 = a1[3];
  }

  else
  {
    if (v10 < v8)
    {
      v8 = a1[4];
    }

    if (a1[3] <= v9)
    {
      v11 = a1[5];
    }

    else
    {
      v11 = a1[3];
    }
  }

  v12 = v150[5];
  v13 = ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v148, *(a1[11] + 96), v8, v11, 1, 1, a3);
  v14 = a1[2];
  v15 = a1[4];
  memset(v147, 0, sizeof(v147));
  memset(&__p, 0, sizeof(__p));
  v17 = a1[7];
  v16 = a1 + 7;
  v127 = a1[8];
  if (v17 != v127)
  {
    v18 = v149 + 2 * v15 - 2 * v8;
    v19 = v149 + 2 * v14 - 2 * v8;
    v20 = 1.0;
    v22 = a1[8];
    v21 = a2;
    while (1)
    {
      v13 = *v17;
      v164 = v21;
      v165 = v13;
      v166 = xmmword_1B33B0570;
      v167 = xmmword_1B33B0580;
      v168 = xmmword_1B33B0590;
      v169[0] = xmmword_1B33B05A0;
      v169[1] = xmmword_1B33B05B0;
      v169[2] = xmmword_1B33B05C0;
      v162 = v12;
      v23 = *(v13 + 2);
      if (v23 != *(v13 + 1))
      {
        break;
      }

      v24 = *(v13 + 2);
LABEL_99:
      v12 += 40 * (v24 - v23);
      v19 += 2 * (*(v13 + 4) - *(v13 + 3));
      v18 += 2 * (*(v13 + 6) - *(v13 + 5));
      if (++v17 == v22)
      {
        v16 = a1 + 7;
        v17 = a1[7];
        goto LABEL_101;
      }
    }

    v132 = v19;
    v161 = 1;
    v133 = v13;
    md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::eliminateDuplicates(v13, v147, &__p, &v161);
    v26 = v161;
    v27 = v161 - 2;
    if (v161 >= 2)
    {
      v129 = v18;
      v28 = 0;
      v29 = v147[0];
      v30 = v147[0];
      begin = __p.__begin_;
      v170 = v12;
      v31 = 0.0;
      v32 = v147[0];
      do
      {
        for (i = 0; i != 3; ++i)
        {
          v153[0].f32[i] = *&v32[i * 4 + 12] - *&v32[i * 4];
        }

        v31 = sqrtf(vaddv_f32(vmul_f32(v153[0], v153[0]))) + v31;
        v32 += 12;
      }

      while (v28++ != v27);
      v35 = 0;
      *&v25 = v31;
      do
      {
        v153[0].f32[v35] = *&v29[v35 * 4 + 12] - *&v29[v35 * 4];
        ++v35;
      }

      while (v35 != 3);
      v36 = v20 / v31;
      v37 = *&v25 <= 1.0e-10;
      DWORD1(v25) = 0;
      if (v37)
      {
        v36 = 0.0;
      }

      v136 = v36;
      v38 = sqrtf((v153[0].f32[0] * v153[0].f32[0]) + (v153[0].f32[1] * v153[0].f32[1]));
      v39 = 1;
      while (1)
      {
        v40 = &v29[12 * v39];
        v42 = *v40;
        v41 = v40[1];
        v43 = 1;
        v44 = *v30;
        do
        {
          v45 = vabds_f32(v42, v44);
          if ((v43 & 1) == 0)
          {
            break;
          }

          v43 = 0;
          v44 = v30[1];
          v42 = v41;
        }

        while (v45 < 1.0e-10);
        if (v45 >= 1.0e-10)
        {
          break;
        }

        ++v39;
        v35 += 3;
        if (v39 == v26)
        {
          *&v25 = 0;
          v46 = 1.0;
          goto LABEL_33;
        }
      }

      for (j = 0; j != 3; ++j)
      {
        v153[0].f32[j] = v30[v35++] - v30[j];
      }

      v48 = v20 / sqrtf((v153[0].f32[0] * v153[0].f32[0]) + (v153[0].f32[1] * v153[0].f32[1]));
      v46 = v48 * v153[0].f32[0];
      *&v25 = v48 * v153[0].f32[1];
LABEL_33:
      v171[0] = __PAIR64__(v25, LODWORD(v46));
      if (*(v133 + 132) == 1)
      {
        v49 = *(v133 + 34);
        v50 = *(v133 + 35);
      }

      else
      {
        v49 = -*&v25;
        v50 = v46;
      }

      v153[0] = *begin;
      for (k = 2; k != 5; ++k)
      {
        v52 = *v30++;
        v153[0].i32[k] = v52;
      }

      v140 = v46;
      v141 = v25;
      v135 = v26;
      v158 = 0.0;
      v157 = 0.0;
      v155 = __PAIR64__(LODWORD(v50), LODWORD(v49));
      v160 = 0;
      if (*(v133 + 96) == 1)
      {
        v159 = 1;
        v154.f32[0] = v49 - v46;
        v154.f32[1] = v50 - *&v25;
        v154.f32[2] = -(v46 + v49);
        v154.f32[3] = -(*&v25 + v50);
        v156 = xmmword_1B33B0570;
        md::Ribbons::RibbonWriter<md::Ribbons::TransitRibbonDescriptor>::writeVertex(&v164, &v162, v153);
      }

      v130 = v12;
      v131 = v17;
      v159 = 0;
      v154.i64[0] = __PAIR64__(LODWORD(v50), LODWORD(v49));
      v154.f32[2] = -v49;
      v154.f32[3] = -v50;
      v156 = xmmword_1B33B0590;
      md::Ribbons::RibbonWriter<md::Ribbons::TransitRibbonDescriptor>::writeVertex(&v164, &v162, v153);
      v54 = v135;
      v134 = v135 - 1;
      if (v135 - 1 >= 2)
      {
        v55 = (v29 + 24);
        v56 = v29 + 12;
        v57 = 1;
        v58 = v141;
        while (1)
        {
          v59 = 0;
          v60 = *&v58;
          v153[0] = begin[v57];
          v61 = &v29[12 * v57];
          v151 = *v61;
          v152 = *(v61 + 2);
          ++v57;
          do
          {
            v163.f32[v59] = v55[v59] - *(&v151 + v59 * 4);
            ++v59;
          }

          while (v59 != 3);
          v62 = v163;
          v63 = v140;
          if (v57 < v54)
          {
            v64 = v55;
            v65 = v57;
            while (1)
            {
              v66 = &v29[12 * v65];
              v68 = *v66;
              v67 = v66[1];
              v69 = 1;
              v70 = *&v151;
              do
              {
                v71 = vabds_f32(v68, v70);
                if ((v69 & 1) == 0)
                {
                  break;
                }

                v69 = 0;
                v70 = *(&v151 + 1);
                v68 = v67;
              }

              while (v71 < 1.0e-10);
              if (v71 >= 1.0e-10)
              {
                break;
              }

              ++v65;
              v64 += 3;
              if (v65 == v54)
              {
                v63 = v140;
                *&v58 = v60;
                goto LABEL_55;
              }
            }

            for (m = 0; m != 3; ++m)
            {
              v73 = *v64++;
              v163.f32[m] = v73 - *(&v151 + m * 4);
            }

            v74 = v20 / sqrtf((v163.f32[0] * v163.f32[0]) + (v163.f32[1] * v163.f32[1]));
            v63 = v74 * v163.f32[0];
            *&v58 = v74 * v163.f32[1];
          }

LABEL_55:
          v75 = v63 + v140;
          v76 = *&v58 + v60;
          v77 = (v75 * v75) + (v76 * v76);
          if (v77 <= 0.0)
          {
            v79 = *v171;
            v81 = v171[0];
            v80 = *(v171 + 1);
            v60 = *(v171 + 1);
          }

          else
          {
            v78 = v20 / sqrtf(v77);
            v79 = -(v76 * v78);
            v80 = v78 * v75;
            v81 = __PAIR64__(LODWORD(v80), LODWORD(v79));
          }

          v144 = v81;
          v82 = 0;
          v83 = sqrtf((v62.f32[0] * v62.f32[0]) + (v62.f32[1] * v62.f32[1]));
          v138 = v80;
          v139 = __PAIR64__(v58, LODWORD(v63));
          v84 = sqrtf(fmaxf(-((((v63 * v79) + (*&v58 * v80)) * ((v63 * v79) + (*&v58 * v80))) + -1.0), 0.1));
          v85 = v79 / v84;
          do
          {
            v153[1].i32[v82] = *&v56[v82 * 4];
            ++v82;
          }

          while (v82 != 3);
          v158 = v38 * v136;
          v156 = xmmword_1B33B0590;
          v157 = v38;
          *&v155 = v79;
          v160 = 1;
          v140 = v63;
          v142 = v58;
          v86 = atan2f(*&v58, v63);
          v87 = v86 - atan2f(v60, *v171);
          v88 = v87;
          if (v87 > 3.14159265)
          {
            break;
          }

          if (v88 < -3.14159265)
          {
            v89 = 6.28318531;
            goto LABEL_64;
          }

LABEL_65:
          v90 = fmaxf(ceilf(fabsf(v87) * 0.64377), 1.0);
          if (v90 < 2)
          {
            *(&v155 + 1) = v138;
            v154.f32[0] = v85;
            v154.f32[1] = v138 / v84;
            v154.f32[2] = -v85;
            v154.f32[3] = -(v138 / v84);
            md::Ribbons::RibbonWriter<md::Ribbons::TransitRibbonDescriptor>::writeVertex(&v164, &v162, v153);
            v20 = 1.0;
          }

          else
          {
            v91 = 0;
            v20 = 1.0;
            do
            {
              v92 = __sincosf_stret(((v91 * (1.0 / (v90 + -1.0))) + -0.5) * v87);
              v93 = vrev64_s32(vmul_n_f32(v144, v92.__sinval));
              v94 = vmul_n_f32(v144, v92.__cosval);
              v95.i32[0] = vsub_f32(v94, v93).u32[0];
              v95.i32[1] = vadd_f32(v94, v93).i32[1];
              v155 = v95;
              *v154.f32 = v95;
              *&v154.u32[2] = vneg_f32(v95);
              md::Ribbons::RibbonWriter<md::Ribbons::TransitRibbonDescriptor>::writeVertex(&v164, &v162, v153);
              v160 = 0;
              ++v91;
            }

            while (v90 != v91);
          }

          v38 = v83 + v38;
          v171[0] = v139;
          v55 += 3;
          v56 += 12;
          v54 = v135;
          v58 = v142;
          if (v57 == v134)
          {
            goto LABEL_73;
          }
        }

        v89 = -6.28318531;
LABEL_64:
        v87 = v88 + v89;
        goto LABEL_65;
      }

      LODWORD(v58) = v141;
LABEL_73:
      v96 = &v29[12 * v134];
      v97 = &v29[12 * v54];
      v98 = *v96;
      v99 = *(v97 - 6);
      v100 = 1;
      v12 = v130;
      do
      {
        v101 = vabds_f32(v98, v99);
        if ((v100 & 1) == 0)
        {
          break;
        }

        v100 = 0;
        v99 = *(v97 - 5);
        v98 = v96[1];
      }

      while (v101 < 1.0e-10);
      v22 = v127;
      v21 = a2;
      v17 = v131;
      v18 = v129;
      if (v101 >= 1.0e-10)
      {
        for (n = 0; n != 3; ++n)
        {
          v163.f32[n] = v97[n - 3] - v97[n - 6];
        }

        v171[0] = vmul_n_f32(v163, v20 / sqrtf(vaddv_f32(vmul_f32(v163, v163))));
        LODWORD(v58) = HIDWORD(v171[0]);
      }

      if (*(v133 + 133) == 1)
      {
        v53.i32[0] = *(v133 + 36);
        v103 = (v133 + 148);
      }

      else
      {
        v53.f32[0] = -*&v58;
        v103 = v171;
      }

      v104 = *v103;
      v154.i64[0] = __PAIR64__(*v103, v53.u32[0]);
      v154.f32[2] = -v53.f32[0];
      v154.f32[3] = -v104;
      v160 = 0;
      v153[0] = begin[v54 - 1];
      for (ii = 2; ii != 5; ++ii)
      {
        v106 = *v96++;
        v153[0].i32[ii] = v106;
      }

      v155 = __PAIR64__(LODWORD(v104), v53.u32[0]);
      v157 = v38;
      v158 = v38 * v136;
      v143 = v104;
      v145 = v53;
      md::Ribbons::RibbonWriter<md::Ribbons::TransitRibbonDescriptor>::writeVertex(&v164, &v162, v153);
      v107 = v133;
      if (*(v133 + 97) == 1)
      {
        v108.i64[0] = v171[0];
        v108.i64[1] = v171[0];
        v159 = 1;
        v109 = v145;
        v109.f32[1] = v143;
        v110 = vdupq_lane_s64(v109.i64[0], 0);
        v109.i64[0] = vaddq_f32(v108, v109).u64[0];
        v109.i64[1] = vsubq_f32(v108, v110).i64[1];
        v154 = v109;
        v156 = *(v169 + 8);
        md::Ribbons::RibbonWriter<md::Ribbons::TransitRibbonDescriptor>::writeVertex(&v164, &v162, v153);
        v107 = v133;
      }

      v111 = *(v107 + 1);
      v112 = *(v107 + 2) - v111;
      v113 = v112 >> 1;
      if (v112 >= 4)
      {
        v114 = 2;
        if (v113 > 2)
        {
          v114 = v113;
        }

        v115 = v114 - 1;
        v116 = v111;
        v117 = v132;
        do
        {
          *v117 = v116;
          v118 = v116 + 1;
          v117[1] = v116 + 1;
          v119 = v116 + 3;
          v116 += 2;
          v117[2] = v116;
          v117[3] = v118;
          v117[4] = v119;
          v117[5] = v116;
          v117 += 6;
          --v115;
        }

        while (v115);
      }

      if (*(v133 + 6) != *(v133 + 5))
      {
        v120 = v113 - *(v133 + 97);
        v121 = 1;
        if (*(v133 + 96))
        {
          v121 = 2;
        }

        if (v120 > v121)
        {
          v122 = v111 + 2 * v121;
          v123 = v129;
          do
          {
            *v123 = v122 - 2;
            v123[1] = v122;
            v123 += 2;
            ++v121;
            v122 += 2;
          }

          while (v120 > v121);
        }
      }
    }

    v13 = *v17;
    v23 = *(*v17 + 1);
    v24 = *(*v17 + 2);
    v19 = v132;
    goto LABEL_99;
  }

LABEL_101:
  if (v17)
  {
    v124 = a1[8];
    v125 = v17;
    if (v124 != v17)
    {
      do
      {
        std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>::reset[abi:nn200100](--v124);
      }

      while (v124 != v17);
      v125 = *v16;
    }

    a1[8] = v17;
    v126 = mdm::zone_mallocator::instance(v13);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>>(v126, v125);
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;
  *&v166 = 0;
  v164 = 0;
  v165 = 0;
  v153[0] = &v164;
  std::vector<std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v153);
  if (__p.__begin_)
  {
    operator delete(__p.__begin_);
  }

  if (v147[0])
  {
    operator delete(v147[0]);
  }

  ggl::BufferMemory::~BufferMemory(v148);
  ggl::BufferMemory::~BufferMemory(v150);
}

void sub_1B2EDDE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a51)
  {
    operator delete(a51);
  }

  ggl::BufferMemory::~BufferMemory(&a54);
  ggl::BufferMemory::~BufferMemory(&a60);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>::reset[abi:nn200100](--v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>>(v6, v4);
  }
}

void std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>::reset[abi:nn200100](uint64_t (****a1)(void))
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitRibbon>(v3, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitRibbon>(uint64_t a1, void *a2)
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

uint64_t std::__function::__func<md::TransitTileData::createLines(ggl::Loader *)::$_1,std::allocator<md::TransitTileData::createLines(ggl::Loader *)::$_1>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0F9A8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::TransitTileData::createLines(ggl::Loader *)::$_0,std::allocator<md::TransitTileData::createLines(ggl::Loader *)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 8) + 1080);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v3 != v4)
  {
    v5 = *a2;
    do
    {
      v6 = *(*v3 + 632);
      v7 = *(*v3 + 640);
      while (v6 != v7)
      {
        v8 = *v6++;
        md::Ribbons::RibbonSection<md::Ribbons::TransitRibbonDescriptor>::computeMesh(v8, v2, v5);
      }

      v3 += 8;
    }

    while (v3 != v4);
  }
}

uint64_t std::__function::__func<md::TransitTileData::createLines(ggl::Loader *)::$_0,std::allocator<md::TransitTileData::createLines(ggl::Loader *)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0F960;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TransitLineRibbon::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0F8E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A0F8C8;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[12];
  a1[12] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_1B2EDE46C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void ggl::ConstantDataTyped<ggl::TransitLineRibbon::PatternStyle>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TransitLineRibbon::PatternStyle>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0FAF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<ggl::TransitLineRibbon::PatternedBasePipelineSetup *,std::shared_ptr<ggl::TransitLineRibbon::PatternedBasePipelineSetup>::__shared_ptr_default_delete<ggl::TransitLineRibbon::PatternedBasePipelineSetup,ggl::TransitLineRibbon::PatternedBasePipelineSetup>,std::allocator<ggl::TransitLineRibbon::PatternedBasePipelineSetup>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::TransitLineRibbon::PatternedBasePipelineSetup *,std::shared_ptr<ggl::TransitLineRibbon::PatternedBasePipelineSetup>::__shared_ptr_default_delete<ggl::TransitLineRibbon::PatternedBasePipelineSetup,ggl::TransitLineRibbon::PatternedBasePipelineSetup>,std::allocator<ggl::TransitLineRibbon::PatternedBasePipelineSetup>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__split_buffer<std::unique_ptr<md::Ribbons::RibbonSection<md::Ribbons::TransitRibbonDescriptor>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<md::Ribbons::RibbonSection<md::Ribbons::TransitRibbonDescriptor>>::~unique_ptr[abi:nn200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<md::Ribbons::RibbonSection<md::Ribbons::TransitRibbonDescriptor>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2 + 56;
    std::vector<std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
    MEMORY[0x1B8C62190](v2, 0x1020C40DC9CC32ALL);
  }

  return a1;
}

void std::vector<std::unique_ptr<md::Ribbons::RibbonSection<md::Ribbons::TransitRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<md::Ribbons::RibbonSection<md::Ribbons::TransitRibbonDescriptor>>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A0F8A8;
  v6 = (a1 + 632);
  std::vector<std::unique_ptr<md::Ribbons::RibbonSection<md::Ribbons::TransitRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  md::FrameAllocator<ggl::RenderItem>::reset(a1 + 608);
  free(*(a1 + 608));
  v2 = *(a1 + 584);
  if (v2)
  {
    *(a1 + 592) = v2;
    operator delete(v2);
  }

  v6 = (a1 + 552);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v3 = *(a1 + 528);
  if (v3)
  {
    *(a1 + 536) = v3;
    operator delete(v3);
  }

  for (i = 400; i != -112; i -= 128)
  {
    ggl::RenderItem::~RenderItem((a1 + i));
  }

  return a1;
}

void md::TransitTileData::updateLineStyles(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v308 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 944))
  {
    return;
  }

  v7 = *(a1 + 872);
  v8 = *(a1 + 880);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = xmmword_1B33B1370;
    v11 = xmmword_1B33B1380;
    v12 = xmmword_1B33B1390;
    v13 = xmmword_1B33B13A0;
    v14 = xmmword_1B33B0C00;
    v15 = xmmword_1B33B0C10;
    v16 = xmmword_1B33B0550;
    v17 = xmmword_1B33B0560;
    do
    {
      v18 = *(a1 + 1372);
      if (*(v7 + 60) != v18)
      {
        *(v7 + 60) = v18;
        v19 = *(v7 + 64);
        v20 = *(v7 + 72);
        if (v19 != v20)
        {
          v21 = 0;
          v22 = (v20 - v19 - 184) / 0xB8uLL;
          v23 = vdupq_n_s64(v22);
          do
          {
            v24 = vdupq_n_s64(v21);
            v25 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v24, v17)));
            if (vuzp1_s8(vuzp1_s16(v25, *v23.i8), *v23.i8).u8[0])
            {
              v19[177] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(v25, *&v23), *&v23).i8[1])
            {
              v19[361] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v24, v16)))), *&v23).i8[2])
            {
              v19[545] = 1;
              v19[729] = 1;
            }

            v26 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v24, v15)));
            if (vuzp1_s8(*&v23, vuzp1_s16(v26, *&v23)).i32[1])
            {
              v19[913] = 1;
            }

            if (vuzp1_s8(*&v23, vuzp1_s16(v26, *&v23)).i8[5])
            {
              v19[1097] = 1;
            }

            if (vuzp1_s8(*&v23, vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v24, v14))))).i8[6])
            {
              v19[1281] = 1;
              v19[1465] = 1;
            }

            v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v24, v13)));
            if (vuzp1_s8(vuzp1_s16(v27, *v23.i8), *v23.i8).u8[0])
            {
              v19[1649] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(v27, *&v23), *&v23).i8[1])
            {
              v19[1833] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v24, v12)))), *&v23).i8[2])
            {
              v19[2017] = 1;
              v19[2201] = 1;
            }

            v28 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v24, v11)));
            if (vuzp1_s8(*&v23, vuzp1_s16(v28, *&v23)).i32[1])
            {
              v19[2385] = 1;
            }

            if (vuzp1_s8(*&v23, vuzp1_s16(v28, *&v23)).i8[5])
            {
              v19[2569] = 1;
            }

            if (vuzp1_s8(*&v23, vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v24, v10))))).i8[6])
            {
              v19[2753] = 1;
              v19[2937] = 1;
            }

            v21 += 16;
            v19 += 2944;
          }

          while (((v22 + 16) & 0x3FFFFFFFFFFFFF0) != v21);
        }
      }

      v29 = md::TransitLine::resolveStyleIfNecessary(v7, 0);
      v17 = xmmword_1B33B0560;
      v16 = xmmword_1B33B0550;
      v15 = xmmword_1B33B0C10;
      v14 = xmmword_1B33B0C00;
      v13 = xmmword_1B33B13A0;
      v12 = xmmword_1B33B1390;
      v11 = xmmword_1B33B1380;
      v10 = xmmword_1B33B1370;
      v30 = *(v29 + 84);
      v31 = *(v7 + 56) != v30;
      *(v7 + 56) = v30;
      v9 |= v31;
      v7 += 104;
    }

    while (v7 != v8);
  }

  v274 = v9;
  v32 = *(a1 + 896);
  v279 = a1;
  v277 = *(a1 + 904);
  if (v32 == v277)
  {
    v33 = 0;
  }

  else
  {
    LOBYTE(v33) = 0;
    do
    {
      v34 = *(v32 + 80);
      v35 = *(v32 + 88);
      v278 = v33;
      if (v35 != v34)
      {
        if (((v35 - v34) >> 3) < 0x38E38E38E38E38FLL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v292[0] = 0;
      v292[1] = 0;
      v291 = v292;
      *(v32 + 160) = 0;
      __p = &v302;
      v299 = &v302;
      v300 = &v302;
      v301 = 8;
      *(v32 + 152) = 0.0 - 0.0;
      std::__introsort<std::_ClassicAlgPolicy,md::TransitLink::updateLineStyles(int,md::TransitLineMergeDisable,BOOL &)::$_0 &,md::TransitLineSegment **,false>(&v302, &v302, 0, 1);
      v37 = __p;
      v36 = v299;
      v38 = v299 - __p;
      v39 = *(v32 + 104);
      v40 = *(v32 + 112);
      v41 = v40 - v39;
      if (v299 - __p == v40 - v39 && !memcmp(__p, *(v32 + 104), v299 - __p))
      {
        v45 = 0;
      }

      else
      {
        v42 = *(v32 + 120);
        if (v42 - v39 < v38)
        {
          if (v39)
          {
            *(v32 + 112) = v39;
            operator delete(v39);
            v42 = 0;
            *(v32 + 104) = 0;
            *(v32 + 112) = 0;
            *(v32 + 120) = 0;
          }

          v43 = v38 >> 3;
          if (!((v38 >> 3) >> 61))
          {
            if (v42 >> 2 > v43)
            {
              v43 = v42 >> 2;
            }

            if (v42 >= 0x7FFFFFFFFFFFFFF8)
            {
              v44 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v44 = v43;
            }

            std::vector<ggl::RenderTarget *>::__vallocate[abi:nn200100](v32 + 104, v44);
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (v41 >= v38)
        {
          if (v36 != v37)
          {
            memmove(v39, v37, v38);
          }

          v40 = &v39[v38];
        }

        else
        {
          if (v40 != v39)
          {
            memmove(v39, v37, v40 - v39);
            v40 = *(v32 + 112);
          }

          if (v36 != (v37 + v41))
          {
            memmove(v40, v37 + v41, v36 - (v37 + v41));
          }

          v40 += v36 - (v37 + v41);
        }

        *(v32 + 112) = v40;
        v45 = 1;
      }

      *(v32 + 168) = 0;
      v304[0] = &v306;
      v304[1] = &v306;
      *&v305 = &v306;
      *(&v305 + 1) = 8;
      v46 = *(v32 + 104);
      if (v40 != v46)
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = &v306;
        do
        {
          v51 = v46[v49];
          v304[1] = v50;
          md::TransitLink::populateMergedLinesAtIndex(v32, v49, v304);
          v50 = v304[0];
          v52 = v304[1];
          if (v304[0] == v304[1])
          {
            v58 = 0;
            v59 = 0;
          }

          else
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v56 = v304[0];
            do
            {
              if (*(*v56 + 57) == 1)
              {
                v57 = *(**v56 + 24);
                if (v54)
                {
                  v55 &= v53 == v57;
                }

                else
                {
                  v53 = *(**v56 + 24);
                }

                if (v48)
                {
                  if (v47 != v57)
                  {
                    *(v32 + 168) = 1;
                  }

                  v57 = v47;
                }

                ++v54;
                v48 = 1;
                v47 = v57;
              }

              v56 += 8;
            }

            while (v56 != v52);
            v58 = v54 > 1;
            v59 = v55 ^ 1;
          }

          *(v51 + 54) = v58;
          *(v51 + 53) = v59 & 1;
          ++v49;
          v46 = *(v32 + 104);
        }

        while (v49 < (*(v32 + 112) - v46) >> 3);
        if (v50 != v305)
        {
          free(v50);
        }
      }

      if (__p != v300)
      {
        free(__p);
      }

      std::__tree<gdc::LayerDataRequestKey>::destroy(0);
      std::__tree<gdc::LayerDataRequestKey>::destroy(0);
      std::__tree<std::__value_type<md::TransitSystemAndColor,MergeGroup>,std::__map_value_compare<md::TransitSystemAndColor,std::__value_type<md::TransitSystemAndColor,MergeGroup>,std::less<md::TransitSystemAndColor>,true>,std::allocator<std::__value_type<md::TransitSystemAndColor,MergeGroup>>>::destroy(v292[0]);
      v33 = v45 | v278 & 1;
      v32 += 248;
    }

    while (v32 != v277);
  }

  v60 = v279;
  *(v279 + 1378) |= v33;
  LOBYTE(v61) = v33 | a4 | v274;
  if (*(v279 + 1377))
  {
    *(v279 + 1377) = 0;
    v62 = *(v279 + 1240);
    v280 = v33 | a4 | v274;
    if (*(v279 + 1256) != 1 || (*(v279 + 1259) & 1) == 0)
    {
      v63 = *(*(v279 + 728) + 1408);
      if (v63)
      {
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v67 = v279 + 1256;
        v68 = 1.0 / (1 << *v63);
        v69 = *(v279 + 176);
        __len = *(v279 + 172);
        v70 = *(v279 + 169);
        v71 = 1 << v70;
        if (v69 >= 1 << v70)
        {
          v72 = 1 << v70;
        }

        else
        {
          v72 = 0;
        }

        if (v69 >= 0)
        {
          v73 = -v72;
        }

        else
        {
          v73 = 1 << v70;
        }

        v282 = v73 + v69;
        while (1)
        {
          v74 = v65;
          v75 = v66;
          if ((*(v67 + v66) & 1) == 0)
          {
            break;
          }

LABEL_136:
          v66 = 3;
          v65 = 1;
          if (v74)
          {
            goto LABEL_139;
          }
        }

        v76 = &neighborTileOffsets[v66];
        v77 = v76->i32[1];
        v78 = v76->i32[0] + v282;
        LODWORD(v291) = v78;
        HIDWORD(v291) = v77 + __len;
        LODWORD(v292[0]) = v70;
        if (v78 < 0)
        {
          v80 = v78 + v71;
        }

        else
        {
          v79 = __OFSUB__(v78, v71);
          v80 = v78 - v71;
          if (v80 < 0 != v79)
          {
LABEL_105:
            v81 = std::__tree<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::__map_value_compare<md::TransitInterTileMediator::TileKey,std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::less<md::TransitInterTileMediator::TileKey>,true>,std::allocator<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>>>::find<md::TransitInterTileMediator::TileKey>(v62, &v291);
            if ((v62 + 8) != v81)
            {
              v82 = v81;
              *(v67 + v75) = 1;
              v304[0] = 0;
              v304[1] = 0;
              *&v305 = 0;
              md::TransitInterTileMediator::populateSectionTerminusPaths(v75, v304, *(v279 + 896), *(v279 + 904));
              v83 = **(v82 + 7);
              __p = 0;
              v299 = 0;
              v300 = 0;
              md::TransitInterTileMediator::populateSectionTerminusPaths(oppositeTileEdges[v75], &__p, *(v83 + 896), *(v83 + 904));
              v85 = v304[0];
              v84 = v304[1];
              v86 = __p;
              if (v304[0] != v304[1])
              {
                v87 = v299;
                v88 = 20;
                if ((v75 & 1) == 0)
                {
                  v88 = 16;
                }

                v89 = v304[0];
                do
                {
                  if (v86 == v87)
                  {
                    v92 = v89[4];
                    v90 = v86;
                  }

                  else
                  {
                    v90 = v86;
                    while (1)
                    {
                      v91 = v89[1] == v90[1] && v89[2] == v90[2];
                      if (v91)
                      {
                        v92 = v89[4];
                        if (vabds_f32(*(v92 + v88), *(v90[4] + v88)) <= v68)
                        {
                          break;
                        }
                      }

                      v90 += 5;
                      if (v90 == v87)
                      {
                        v92 = v89[4];
                        goto LABEL_127;
                      }
                    }
                  }

                  if (v90 == v87)
                  {
LABEL_127:
                    *(v92 + 34) = 3;
                  }

                  else
                  {
                    v93 = v90[4];
                    v290 = *(v93 + 8);
                    v95 = *(&v290 + 1);
                    v94 = *&v290;
                    if ((v89[3] == v92) == (v90[3] == v93))
                    {
                      v94 = -*&v290;
                      v95 = -*(&v290 + 1);
                      *&v290 = -*&v290;
                      *(&v290 + 1) = -*(&v290 + 1);
                    }

                    if (*(v92 + 8) == v290)
                    {
                      v96 = 2;
                    }

                    else if (((*(v92 + 8) * v94) + (*(v92 + 12) * v95)) >= 0.866)
                    {
                      *(v92 + 8) = v94;
                      *(v92 + 12) = v95;
                      v96 = 1;
                      v64 = 1;
                    }

                    else
                    {
                      v96 = 4;
                    }

                    *(v92 + 34) = v96;
                  }

                  v89 += 5;
                }

                while (v89 != v84);
              }

              if (v86)
              {
                operator delete(v86);
              }

              if (v85)
              {
                operator delete(v85);
              }
            }

            goto LABEL_136;
          }
        }

        LODWORD(v291) = v80;
        goto LABEL_105;
      }
    }

    v64 = 0;
LABEL_139:
    v61 = v280 | v64;
    v60 = v279;
    v97 = *(v279 + 169);
    if (v97 >= 0xB)
    {
      v98 = *(v279 + 1240);
      v99 = *(v279 + 176);
      v304[0] = __PAIR64__(*(v279 + 172), v99);
      LODWORD(v304[1]) = v97;
      v100 = 1 << v97;
      if ((v99 & 0x80000000) != 0)
      {
        v101 = v100 + v99;
      }

      else
      {
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v101 < 0 != v79)
        {
          goto LABEL_148;
        }
      }

      LODWORD(v304[0]) = v101;
LABEL_148:
      v102 = (v279 + 1260);
      v103 = std::__tree<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::__map_value_compare<md::TransitInterTileMediator::TileKey,std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::less<md::TransitInterTileMediator::TileKey>,true>,std::allocator<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>>>::find<md::TransitInterTileMediator::TileKey>(v98, v304);
      if ((v98 + 8) == v103)
      {
        LOBYTE(v104) = 0;
        for (i = 0; i != 4; ++i)
        {
          v104 = (*(v102 + i) ^ 1 | v104) != 0;
          *(v102 + i) = 1;
        }
      }

      else
      {
        if (*v102 != v103[12])
        {
          *v102 = v103[12];
          goto LABEL_156;
        }

        v104 = 0;
      }

      if ((v61 | v104))
      {
        goto LABEL_156;
      }

LABEL_145:
      v283 = 0;
      goto LABEL_253;
    }
  }

  if ((v61 & 1) == 0)
  {
    goto LABEL_145;
  }

LABEL_156:
  for (j = *(*(v60 + 944) + 16); j; j = *v125)
  {
    v107 = 0;
    __lena = 0;
    v108 = 0;
    j[12] = 0;
    *(j + 105) = 0;
    v109 = j + 6;
    v281 = j;
    v110 = j + 9;
    __p = j + 6;
    v299 = j + 9;
    do
    {
      v111 = *(&__p + v108);
      v112 = v111 + 1;
      v113 = *v111;
      if (*v111 != v111 + 1)
      {
        v284 = v111 == v109;
        do
        {
          v114 = 0;
          v115 = v113[4];
          v304[0] = v109;
          v304[1] = v110;
          while (1)
          {
            v116 = v304[v114];
            v119 = *v116;
            v118 = v116 + 1;
            v117 = v119;
            if (v119 != v118)
            {
              break;
            }

LABEL_170:
            if (++v114 == 2)
            {
              v281[12] = v115;
              *(v281 + 104) = v284;
              __lena = 1;
              *(v281 + 105) = 1;
              v107 = v115;
              goto LABEL_172;
            }
          }

          while (1)
          {
            v120 = v117[4];
            if (v120 != v115 && !md::TransitLink::isSuperset(v115, v120[13], v120[14]))
            {
              break;
            }

            v121 = v117[1];
            if (v121)
            {
              do
              {
                v122 = v121;
                v121 = *v121;
              }

              while (v121);
            }

            else
            {
              do
              {
                v122 = v117[2];
                v91 = *v122 == v117;
                v117 = v122;
              }

              while (!v91);
            }

            v117 = v122;
            if (v122 == v118)
            {
              goto LABEL_170;
            }
          }

LABEL_172:
          v123 = v113[1];
          if (v123)
          {
            do
            {
              v124 = v123;
              v123 = *v123;
            }

            while (v123);
          }

          else
          {
            do
            {
              v124 = v113[2];
              v91 = *v124 == v113;
              v113 = v124;
            }

            while (!v91);
          }

          v113 = v124;
        }

        while (v124 != v112);
      }

      v108 += 8;
    }

    while (v108 != 16);
    v125 = v281;
    if ((__lena & 1) == 0)
    {
      v107 = 0;
      v126 = 0;
      v127 = 0;
      v304[0] = v109;
      v304[1] = v110;
      v60 = v279;
      do
      {
        v128 = v304[v127];
        v131 = *v128;
        v129 = v128 + 1;
        v130 = v131;
        if (v131 != v129)
        {
          do
          {
            v132 = v130[4];
            v133 = (*(v132 + 112) - *(v132 + 104)) >> 3;
            v134 = v126 >= v133;
            if (v126 <= v133)
            {
              v126 = (*(v132 + 112) - *(v132 + 104)) >> 3;
            }

            if (!v134)
            {
              v107 = v130[4];
            }

            v135 = v130[1];
            if (v135)
            {
              do
              {
                v136 = v135;
                v135 = *v135;
              }

              while (v135);
            }

            else
            {
              do
              {
                v136 = v130[2];
                v91 = *v136 == v130;
                v130 = v136;
              }

              while (!v91);
            }

            v130 = v136;
          }

          while (v136 != v129);
        }

        ++v127;
      }

      while (v127 != 2);
      v281[12] = v107;
      if (!v107)
      {
        continue;
      }

      *(v281 + 104) = *(*v107 + 48) == v281[4];
    }

    DominantLinkDirection = md::TransitJunction::findDominantLinkDirection((v281 + 3));
    __p = __PAIR64__(LODWORD(v138), LODWORD(DominantLinkDirection));
    v304[0] = 0;
    if (__PAIR64__(LODWORD(v138), LODWORD(DominantLinkDirection)))
    {
      v139 = DominantLinkDirection;
      v140 = v138;
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v304[0] = v109;
      v304[1] = v110;
      v144 = 1.0;
      do
      {
        v145 = v304[v143];
        v146 = *v145;
        if (*v145 != v145 + 1)
        {
          do
          {
            v147 = v146[4];
            if (v145 == v109)
            {
              if ((*(*(v147 + 8) - 3) & 1) == 0)
              {
                goto LABEL_213;
              }
            }

            else if (*(*(v147 + 7) + 93) != 1)
            {
              goto LABEL_213;
            }

            if (v147 == v107)
            {
              goto LABEL_207;
            }

            if (__lena)
            {
              v148 = *(v107 + 13);
              v149 = *(v107 + 14);
            }

            else
            {
              v148 = *(v107 + 13);
              v149 = *(v107 + 14);
              if (*(v147 + 14) - *(v147 + 13) >= (v149 - v148))
              {
                goto LABEL_207;
              }
            }

            if (md::TransitLink::isSuperset(v146[4], v148, v149))
            {
LABEL_207:
              if (v145 == v109)
              {
                v150 = -((*(*(v147 + 8) - 56) * v139) + (*(*(v147 + 8) - 52) * v140));
              }

              else
              {
                v150 = (**(v147 + 7) * v139) + (*(*(v147 + 7) + 4) * v140);
              }

              if (v144 > v150)
              {
                v142 = v145 == v109;
                v141 = v147;
              }

              v144 = fminf(v144, v150);
            }

LABEL_213:
            v151 = v146[1];
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
                v152 = v146[2];
                v91 = *v152 == v146;
                v146 = v152;
              }

              while (!v91);
            }

            v146 = v152;
          }

          while (v152 != v145 + 1);
        }

        ++v143;
      }

      while (v143 != 2);
      v125 = v281;
      if (v141)
      {
        v281[12] = v141;
        *(v281 + 104) = v142;
        v107 = v141;
        v60 = v279;
LABEL_223:
        if (*(v107 + 14) != *(v107 + 13))
        {
          v304[0] = 0;
          v304[1] = 0;
          *&v305 = 0;
          std::vector<md::Label *>::reserve(v304, v125[8] + v125[11]);
          std::vector<md::TransitLink *>::insert[abi:nn200100]<std::__tree_const_iterator<md::TransitLink *,std::__tree_node<md::TransitLink *,void *> *,long>,0>(v304, v304[1], v125[6], v125 + 7);
          std::vector<md::TransitLink *>::insert[abi:nn200100]<std::__tree_const_iterator<md::TransitLink *,std::__tree_node<md::TransitLink *,void *> *,long>,0>(v304, v304[1], v125[9], v125 + 10);
          v153 = v304[0];
          v154 = v304[1];
          if (v304[0] == v304[1])
          {
            v155 = v304[0];
          }

          else
          {
            v155 = v304[0];
            while (*v155 != v125[12])
            {
              v155 += 8;
              if (v155 == v304[1])
              {
                goto LABEL_238;
              }
            }

            if (v155 != v304[1])
            {
              v156 = v155 + 8;
              if (v155 + 8 != v304[1])
              {
                do
                {
                  if (*v156 != v125[12])
                  {
                    *v155 = *v156;
                    v155 += 8;
                  }

                  v156 += 8;
                }

                while (v156 != v154);
                v153 = v304[0];
                v154 = v304[1];
              }
            }
          }

          if (v155 != v154)
          {
            v154 = v155;
            v304[1] = v155;
          }

LABEL_238:
          if ((v154 - v153) >> 3 < 129)
          {
            v159 = 0;
LABEL_244:
            std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(v153, v154, (v154 - v153) >> 3, 0, v159);
          }

          else
          {
            v157 = (v154 - v153) >> 3;
            while (1)
            {
              v158 = operator new(8 * v157, MEMORY[0x1E69E5398]);
              if (v158)
              {
                break;
              }

              v159 = v157 >> 1;
              v263 = v157 > 1;
              v157 >>= 1;
              if (!v263)
              {
                goto LABEL_244;
              }
            }

            v160 = v158;
            std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(v153, v154, (v154 - v153) >> 3, v158, v157);
            operator delete(v160);
          }

          if (v154 != v153)
          {
            if ((v154 - v153) < 0x3FFFFFFFFFFFFFF9)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          __p = 0;
          v299 = 0;
          v300 = 0;
          std::vector<md::TransitJunction::updateLineJunctionSlots(void)::LineInfo,std::allocator<md::TransitJunction::updateLineJunctionSlots(void)::LineInfo>>::~vector[abi:nn200100](&__p);
          if (v304[0])
          {
            operator delete(v304[0]);
          }
        }

        continue;
      }
    }

    v60 = v279;
    if (v107)
    {
      goto LABEL_223;
    }
  }

  v283 = 1;
LABEL_253:
  v161 = md::LayoutContext::get<md::CameraContext>(*(a2 + 8));
  v162 = *(v161 + 3768) / (*(v161 + 1368) * (*(v60 + 1320) - *(v60 + 1304)));
  v163 = *(v60 + 896);
  v164 = *(v60 + 904);
  if (v163 != v164)
  {
    __lenb = vdupq_n_s32(0x437F0000u);
    do
    {
      v165 = *(v163 + 104);
      v166 = *(v163 + 112);
      if (v165 != v166)
      {
        v167 = (v163 + 136);
        do
        {
          v168 = *v165;
          v169 = *v167;
          v170 = 0.0;
          if (*v167)
          {
            v171 = *(*(*v168 + 16) + 40);
            v172 = v163 + 136;
            do
            {
              v173 = *(v169 + 32);
              v134 = v173 >= v171;
              v174 = v173 < v171;
              if (v134)
              {
                v172 = v169;
              }

              v169 = *(v169 + 8 * v174);
            }

            while (v169);
            if (v172 != v167 && *(v172 + 32) <= v171)
            {
              v170 = *(v172 + 40);
            }
          }

          v175 = *(*(v163 + 56) + 24);
          v176 = v170;
          if (v175)
          {
            v176 = md::TransitJunction::calculateOffsetForLineSegment(v175, *v165);
          }

          v177 = *(*(v163 + 64) - 32);
          v178 = v170;
          if (v177)
          {
            v178 = md::TransitJunction::calculateOffsetForLineSegment(v177, v168);
          }

          v179 = vabds_f32(v176, v178) * v162;
          if (fabsf(v176) <= fabsf(v178))
          {
            v180 = v176;
          }

          else
          {
            v180 = v178;
          }

          if (v179 < *(v163 + 232))
          {
            v181 = v176;
          }

          else
          {
            v178 = v180;
            v181 = v180;
          }

          *(v168 + 20) = v181;
          *(v168 + 24) = v178;
          *(v168 + 28) = v170;
          ++v165;
        }

        while (v165 != v166);
      }

      v60 = v279;
      if (*(v279 + 792))
      {
        v182 = *(v163 + 40);
        if (!v182)
        {
          operator new();
        }

        v183 = *(v163 + 80);
        v184 = *(v163 + 88);
        if (v183 != v184)
        {
          v185 = 0;
          do
          {
            v186 = *v182;
            if (*v183)
            {
              v187 = (*v183 + 8);
            }

            else
            {
              v187 = 0;
            }

            v188 = *v187;
            v189 = v186 + v185;
            *(v186 + v185 + 11) = *(*v187 + 88);
            v190 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(*(md::TransitLine::resolveStyleIfNecessary(v188, v187[52]) + 16), __lenb)));
            *(v186 + v185 + 4) = vuzp1_s8(v190, v190).u32[0];
            if (*v183)
            {
              v191 = *v183 + 8;
            }

            else
            {
              v191 = 0;
            }

            *(v189 + 8) = *(v191 + 52);
            v192 = *(v191 + 57);
            *(v189 + 12) = v192;
            if (v192 == 1 && (v193 = *(v191 + 40), v194 = *(v163 + 104), v193 < (*(v163 + 112) - v194) >> 3))
            {
              v195 = *(v194 + 8 * v193);
              v196 = v186 + v185;
              *v196 = *(v195 + 28);
              *(v196 + 9) = *(v195 + 53);
              v197 = *(v195 + 54);
            }

            else
            {
              v197 = 0;
              v198 = v186 + v185;
              *v198 = 0;
              *(v198 + 9) = 0;
            }

            *(v186 + v185 + 10) = v197;
            ++v183;
            v185 += 16;
          }

          while (v183 != v184);
          v182 = *(v163 + 40);
        }

        v199 = (*(v163 + 112) - *(v163 + 104)) >> 3;
        if (v199 >= 3)
        {
          LOBYTE(v199) = 3;
        }

        *(v182 + 33) = v199;
        *(v182 + 32) = *(v163 + 168);
        v200 = *(v163 + 24);
        std::mutex::lock((v200 + 40));
        v202 = *(v163 + 40);
        v201 = *(v163 + 48);
        if (v201)
        {
          atomic_fetch_add_explicit((v201 + 8), 1uLL, memory_order_relaxed);
        }

        v203 = *(v200 + 32);
        *(v200 + 24) = v202;
        *(v200 + 32) = v201;
        v60 = v279;
        if (v203)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v203);
        }

        atomic_store(1u, (v200 + 105));
        std::mutex::unlock((v200 + 40));
      }

      v163 += 248;
    }

    while (v163 != v164);
  }

  if (v283)
  {
    v204 = *(v60 + 1072);
    *(v60 + 1072) = 0;
    if (v204)
    {
      (*(*v204 + 8))(v204);
    }

    v205 = *(v60 + 1080);
    *(v60 + 1080) = 0;
    if (v205)
    {
      (*(*v205 + 8))(v205);
    }

    std::unique_ptr<md::StyleTexture<md::TransitLineSegment::StylePixel>>::reset[abi:nn200100]((v60 + 1120), 0);
    std::unique_ptr<md::StyleTexture<md::TransitLineSegment::StylePixel>>::reset[abi:nn200100]((v60 + 1128), 0);
    *(v60 + 1364) = 0;
    v206 = *(v60 + 896);
    v207 = *(v60 + 904);
    if (v206 != v207)
    {
      v208 = 0;
      do
      {
        v208 += (*(v206 + 112) - *(v206 + 104)) >> 3;
        v206 += 248;
      }

      while (v206 != v207);
      if (v208)
      {
        __powidf2();
        operator new();
      }
    }
  }

  v209 = *(v60 + 1120);
  if (v209 && *(v60 + 1128))
  {
    v210 = *(v60 + 896);
    v285 = *(v60 + 904);
    if (v210 != v285)
    {
      do
      {
        v211 = *(v210 + 104);
        v212 = *(v210 + 112);
        __lenc = v210;
        while (v211 != v212)
        {
          v213 = *v211;
          if (*(*v211 + 32) != -1)
          {
            v214 = *(v279 + 1120);
            v215 = *(v279 + 1128);
            v216 = md::TransitLine::resolveStyleIfNecessary(*v213, *(v213 + 52));
            v217 = v216;
            v218 = *(v213 + 32);
            v219 = *(v213 + 55);
            v220 = *(v216 + 56) * 0.5;
            if (v219)
            {
              v220 = 0.0;
            }

            v221 = *(v213 + 28);
            v222 = *(v213 + 20);
            *v304 = *v216;
            *(&v305 + 4) = v222;
            *&v305 = v220;
            HIDWORD(v305) = v221;
            v223 = (*v214 + 32 * v218);
            if (!md::TransitLineSegment::StylePixel::operator==(v304, v223))
            {
              *(v214 + 32) = 1;
              *v223 = *v304;
              v223[1] = v305;
              v218 = *(v213 + 32);
              v221 = *(v213 + 28);
              v222 = *(v213 + 20);
              v219 = *(v213 + 55);
            }

            v224 = *(v217 + 64) * 0.5;
            if (v219)
            {
              v224 = 0.0;
            }

            *v304 = *(v217 + 32);
            *(&v305 + 4) = v222;
            *&v305 = v224;
            HIDWORD(v305) = v221;
            v225 = (*v215 + 32 * v218);
            if (!md::TransitLineSegment::StylePixel::operator==(v304, v225))
            {
              *(v215 + 32) = 1;
              *v225 = *v304;
              v225[1] = v305;
            }
          }

          ++v211;
        }

        v210 = __lenc + 248;
      }

      while (__lenc + 248 != v285);
      v209 = *(v279 + 1120);
    }

    md::StyleTexture<md::TransitLineSegment::StylePixel>::_processStylePixelsIfNecessary(v209);
    v226 = *(v209 + 40);
    v227 = *(v279 + 1096);
    v228 = *(v279 + 1120);
    md::StyleTexture<md::TransitLineSegment::StylePixel>::_processStylePixelsIfNecessary(v228);
    *(*(v227 + 168) + 8) = *(v228 + 24);
    v229 = *(v279 + 1112);
    v230 = *(v279 + 1120);
    md::StyleTexture<md::TransitLineSegment::StylePixel>::_processStylePixelsIfNecessary(v230);
    *(*(v229 + 168) + 8) = *(v230 + 24);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v304, *(v279 + 1136));
    v231 = *(v279 + 1344);
    v232 = (v226[1] + *v226) * v231;
    v233 = v307;
    *v307 = v231 * *v226;
    v233[1] = v232;
    v234 = v226[2];
    v235 = v226[3] + v234;
    v233[2] = v234;
    v233[3] = v235;
    v233[5] = *(*(v279 + 1120) + 88);
    ggl::BufferMemory::~BufferMemory(v304);
    v236 = *(v279 + 1128);
    md::StyleTexture<md::TransitLineSegment::StylePixel>::_processStylePixelsIfNecessary(v236);
    v237 = *(v236 + 40);
    v238 = *(v279 + 1088);
    v239 = *(v279 + 1128);
    md::StyleTexture<md::TransitLineSegment::StylePixel>::_processStylePixelsIfNecessary(v239);
    *(*(v238 + 168) + 8) = *(v239 + 24);
    v240 = *(v279 + 1104);
    v241 = *(v279 + 1128);
    md::StyleTexture<md::TransitLineSegment::StylePixel>::_processStylePixelsIfNecessary(v241);
    v242 = v279;
    *(*(v240 + 168) + 8) = *(v241 + 24);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v304, *(v279 + 1152));
    v243 = (v237[1] + *v237) * *(v279 + 1344);
    v244 = v307;
    *v307 = *(v279 + 1344) * *v237;
    v244[1] = v243;
    v245 = v237[2];
    v246 = v237[3] + v245;
    v244[2] = v245;
    v244[3] = v246;
    v244[5] = *(*(v279 + 1128) + 88);
    ggl::BufferMemory::~BufferMemory(v304);
    v247 = *(v279 + 1200);
    if (v247 != (v279 + 1208))
    {
      while (1)
      {
        v248 = *(v247 + 36);
        v249 = v247[6];
        v250 = v242;
        v251 = *(v247[5] + 64);
        v252 = *(v250 + 1120);
        md::StyleTexture<md::TransitLineSegment::StylePixel>::_processStylePixelsIfNecessary(v252);
        *(*(v249 + 168) + 8) = *(v252 + 24);
        v253 = v247[8];
        v254 = *(v279 + 1120);
        md::StyleTexture<md::TransitLineSegment::StylePixel>::_processStylePixelsIfNecessary(v254);
        v255 = v251 + 184 * v248 + 16;
        *(*(v253 + 168) + 8) = *(v254 + 24);
        v256 = fmaxf(*(v255 + 56) - *(v255 + 152), 0.0);
        v257 = v247[10];
        if (!v257)
        {
          goto LABEL_343;
        }

        v258 = *(v279 + 1356);
        std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](&v295, v255 + 96);
        v259 = *(v255 + 128);
        v297 = v259;
        if (*(v257 + 46) != ((v258 * v256) + 0.5) || v259 != *(v257 + 32) || v296 - v295 != *(v257 + 8) - *v257)
        {
          break;
        }

        v242 = v279;
        if (v296 == v295)
        {
          std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v295);
        }

        else
        {
          v260 = 0;
          v261 = 1;
          do
          {
            v262 = vabds_f32(*(v295 + 4 * v260), *(*v257 + 4 * v260));
            v260 = v261++;
            v263 = v262 <= 0.00000011921 && (v296 - v295) >> 2 > v260;
          }

          while (v263);
          std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v295);
          if (v262 > 0.00000011921)
          {
            goto LABEL_343;
          }
        }

LABEL_346:
        v265 = *(*(v247[6] + 136) + 64);
        ggl::BufferMemory::BufferMemory(&__p);
        ggl::ResourceAccessor::accessConstantData(v304, 0, v265, 1);
        ggl::BufferMemory::operator=(&__p, v304);
        ggl::BufferMemory::~BufferMemory(v304);
        v266 = 0.0;
        v267 = 0.0;
        if (*(v255 + 96) != *(v255 + 104))
        {
          v267 = (v256 * 0.5) * *(v242 + 1344);
        }

        v268 = v303;
        *(v303 + 16) = v267;
        v269 = *(v247[10] + 48);
        if (v269 != 0.0)
        {
          v270 = logf(v269 * v162);
          v266 = expf(floorf(v270 * 4.0) * -0.25);
        }

        v271 = 0;
        *(v268 + 20) = v266;
        do
        {
          *(v268 + v271) = *(v255 + 136 + v271);
          v271 += 4;
        }

        while (v271 != 16);
        ggl::BufferMemory::~BufferMemory(&__p);
        v272 = v247[1];
        if (v272)
        {
          do
          {
            v273 = v272;
            v272 = *v272;
          }

          while (v272);
        }

        else
        {
          do
          {
            v273 = v247[2];
            v91 = *v273 == v247;
            v247 = v273;
          }

          while (!v91);
        }

        v247 = v273;
        if (v273 == (v279 + 1208))
        {
          return;
        }
      }

      std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v295);
LABEL_343:
      std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](v293, v255 + 96);
      v294 = *(v255 + 128);
      md::DashTextureCache::textureForPattern(v304, a5, v293, 1u, 1.0);
      v264 = v247[11];
      *(v247 + 5) = *v304;
      if (v264)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v264);
      }

      std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v293);
      *(*(v247[6] + 168) + 16) = *(v247[10] + 64);
      *(*(v247[8] + 168) + 16) = *(v247[10] + 64);
      v242 = v279;
      goto LABEL_346;
    }
  }
}

void sub_1B2EE1D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::vector<md::TransitJunction::updateLineJunctionSlots(void)::LineInfo,std::allocator<md::TransitJunction::updateLineJunctionSlots(void)::LineInfo>>::~vector[abi:nn200100](&a53);
  operator delete(__p);
  if (a65)
  {
    operator delete(a65);
  }

  _Unwind_Resume(a1);
}

uint64_t md::StyleTexture<md::TransitLineSegment::StylePixel>::_processStylePixelsIfNecessary(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,float,ggl::Filter,ggl::Filter,ggl::Filter,0>();
  }

  return result;
}

void sub_1B2EE2454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  MEMORY[0x1B8C62190](v19, 0x10F1C40BE47B5E1);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(a1);
}

void md::TransitTileData::appendNodesAttachedToLines(int8x8_t *a1, void *a2, float *a3)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v6 = a1[159];
      if (v6)
      {
        v7 = v4[2];
        v8 = vcnt_s8(v6);
        v8.i16[0] = vaddlv_u8(v8);
        if (v8.u32[0] > 1uLL)
        {
          v9 = v4[2];
          if (v7 >= *&v6)
          {
            v9 = v7 % *&v6;
          }
        }

        else
        {
          v9 = (*&v6 - 1) & v7;
        }

        v10 = *(*&a1[158] + 8 * v9);
        if (v10)
        {
          for (i = *v10; i; i = *i)
          {
            v12 = i[1];
            if (v7 == v12)
            {
              if (i[2] == v7)
              {
                for (j = i[5]; j; j = *j)
                {
                  v14 = *(*(j[2] + 8) + 40);
                  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(a3, v14, &v14);
                }

                break;
              }
            }

            else
            {
              if (v8.u32[0] > 1uLL)
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
                break;
              }
            }
          }
        }
      }

      v4 = *v4;
    }

    while (v4);
  }
}

uint64_t md::TransitTileData::setSelectedLines(uint64_t result, void *a2)
{
  v2 = *(result + 896);
  v22 = *(result + 904);
  if (v2 != v22)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 80);
      v6 = *(v2 + 88);
      while (v5 != v6)
      {
        v7 = *(*v5 + 8);
        result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a2, *(*(v7 + 16) + 40));
        v8 = *(v7 + 88);
        if ((result != 0) != v8)
        {
          v9 = result != 0;
          *(v4 + 1376) = 1;
          if (v8 != v9)
          {
            *(v7 + 88) = v9;
            v10 = *(v7 + 64);
            v11 = *(v7 + 72);
            if (v10 != v11)
            {
              v12 = 0;
              v13 = (v11 - v10 - 184) / 0xB8uLL;
              v14 = vdupq_n_s64(v13);
              do
              {
                v15 = vdupq_n_s64(v12);
                v16 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B0560)));
                if (vuzp1_s8(vuzp1_s16(v16, *v14.i8), *v14.i8).u8[0])
                {
                  v10[176] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v16, *&v14), *&v14).i8[1])
                {
                  v10[360] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B0550)))), *&v14).i8[2])
                {
                  v10[544] = 1;
                  v10[728] = 1;
                }

                v17 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B0C10)));
                if (vuzp1_s8(*&v14, vuzp1_s16(v17, *&v14)).i32[1])
                {
                  v10[912] = 1;
                }

                if (vuzp1_s8(*&v14, vuzp1_s16(v17, *&v14)).i8[5])
                {
                  v10[1096] = 1;
                }

                if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B0C00))))).i8[6])
                {
                  v10[1280] = 1;
                  v10[1464] = 1;
                }

                v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B13A0)));
                if (vuzp1_s8(vuzp1_s16(v18, *v14.i8), *v14.i8).u8[0])
                {
                  v10[1648] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v18, *&v14), *&v14).i8[1])
                {
                  v10[1832] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B1390)))), *&v14).i8[2])
                {
                  v10[2016] = 1;
                  v10[2200] = 1;
                }

                v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B1380)));
                if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i32[1])
                {
                  v10[2384] = 1;
                }

                if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i8[5])
                {
                  v10[2568] = 1;
                }

                if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B1370))))).i8[6])
                {
                  v10[2752] = 1;
                  v10[2936] = 1;
                }

                v12 += 16;
                v10 += 2944;
              }

              while (((v13 + 16) & 0x3FFFFFFFFFFFFF0) != v12);
            }

            v20 = 0;
            do
            {
              v21 = v20;
              md::TransitLine::updateFeatureQueryForMergeTypeIfNecessary(v7, v20++);
            }

            while (v21 < 3);
            result = md::TransitLine::resolveStyleIfNecessary(v7, 0);
          }
        }

        v5 += 8;
      }

      v2 += 248;
    }

    while (v2 != v22);
  }

  return result;
}

uint64_t *md::TransitTileData::setSelectedNodes(uint64_t *result, uint64_t *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      v5 += 2;
      result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a3, *(*(v6 + 8) + 40));
      *(v6 + 63) = result != 0;
    }

    while (v5 != a2);
  }

  return result;
}

void *md::TransitItemMarkerImpl<md::TransitDisplayConnection>::debugDraw(uint64_t a1, float32x2_t *a2, uint64_t a3, char a4)
{
  v4 = *(a1 + 16);
  v11[0] = **(a1 + 8);
  v11[1] = a3;
  v12 = a4;
  result = *v4;
  if (*(*v4 + 88))
  {
    v7 = 0;
    do
    {
      v16 = 0;
      Points = geo::codec::pBTransitStationTransferGetPoints(result, v7, &v16);
      if (Points && v16)
      {
        __p = 0;
        v14 = 0;
        v15 = 0;
        md::HighlightHelper::tileToScreenPoints(v11, Points, v16, &__p);
        ggl::DebugConsole::drawLineStrip(a2, __p, (v14 - __p) >> 3);
        v9 = __p;
        a2[1].i32[0] = *__p;
        a2[1].i32[1] = v9[1];
        ggl::DebugConsole::drawSymbol(a2, 4);
        v10 = v14;
        a2[1].i32[0] = *(v14 - 2);
        a2[1].i32[1] = *(v10 - 1);
        ggl::DebugConsole::drawSymbol(a2, 2);
        if (__p)
        {
          v14 = __p;
          operator delete(__p);
        }
      }

      ++v7;
      result = *v4;
    }

    while (v7 < *(*v4 + 88));
  }

  return result;
}

void sub_1B2EE2B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id md::TransitItemMarkerImpl<md::TransitDisplayConnection>::debugString(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"<Display connection>\n"];
  v3 = *(v1 + 8);
  if (v3)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v13, v3, v4);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    if (v16 == 1)
    {
      v6 = v13[3];
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = "";
      if (v7)
      {
        v10 = *(v7 + 104);
        if (v10)
        {
          v9 = v10;
        }
      }

      [v2 appendFormat:@"  Style:%s\n", v9];
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

    v11 = md::HighlightHelper::debugAttributesToString((*(v1 + 8) + 240), v5);
    [v2 appendFormat:@"  Attrs:{%@}\n", v11];

    if (v16 == 1)
    {
      (*(*v13 + 56))(v13);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }
  }

  [v2 appendFormat:@"  FeatureZoom: Min=%.2f Max=%.2f\n", *(v1 + 24), *(v1 + 28)];

  return v2;
}

void sub_1B2EE2CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, char a16)
{
  v18 = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  if (a16 == 1)
  {
    (*(*a12 + 56))(a12);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::TransitItemMarkerImpl<md::TransitDisplayConnection>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0FC38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TransitItemMarkerImpl<md::TransitLink>::debugDraw(uint64_t a1, float32x2_t *a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 16);
  v37[0] = **(a1 + 8);
  v37[1] = a3;
  v38 = a4;
  v6 = *v5;
  if (*(*v5 + 20))
  {
    v7 = 0;
    do
    {
      v43 = 0;
      v8 = geo::codec::transitLinkPoints(v6, v7, &v43);
      if (v43 >= 2)
      {
        __p = 0;
        v41 = 0;
        v42 = 0;
        md::HighlightHelper::tileToScreenPoints(v37, v8, v43, &__p);
        ggl::DebugConsole::drawLineStrip(a2, __p, (v41 - __p) >> 3);
        v9 = *__p;
        v39 = *(v41 - 1);
        a2[1] = v9;
        ggl::DebugConsole::drawLine(a2, &v39, v9.f32[0]);
        v10 = __p;
        a2[1].i32[0] = *__p;
        a2[1].i32[1] = v10[1];
        ggl::DebugConsole::drawSymbol(a2, 3);
        v11 = v41;
        a2[1].i32[0] = *(v41 - 2);
        a2[1].i32[1] = *(v11 - 1);
        ggl::DebugConsole::drawSymbol(a2, 4);
        if (__p)
        {
          v41 = __p;
          operator delete(__p);
        }
      }

      ++v7;
      v6 = *v5;
    }

    while (v7 < *(*v5 + 20));
  }

  v12 = 0;
  v13 = 0;
  v14 = v5 + 236;
  v15 = 1;
  do
  {
    v16 = v15;
    if (*&v14[4 * v13] == 0.0)
    {
      goto LABEL_29;
    }

    __p = 0;
    v41 = 0;
    v42 = 0;
    md::TransitLink::populateEndPoints(*v5, v15 & 1, &__p);
    v17 = __p;
    if (__p != v41)
    {
      v18 = *&v14[4 * v13];
      v19 = (v41 - __p) >> 3;
      v20 = 0.0;
      if (v19 >= 2)
      {
        v21 = v19 - 1;
        v22 = (__p + 8);
        v23 = 0.0;
        while (1)
        {
          v24 = *(v22 - 2);
          v25 = *(v22 - 1);
          v26 = v22[1];
          v27 = sqrtf(((v24 - *v22) * (v24 - *v22)) + ((v25 - v26) * (v25 - v26)));
          v20 = v27 + v23;
          if ((v27 + v23) >= v18)
          {
            break;
          }

          v22 += 2;
          v23 = v27 + v23;
          if (!--v21)
          {
            goto LABEL_14;
          }
        }

        if (v27 == 0.0)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = (v18 - v23) / v27;
        }

        v29 = v24 + (v30 * (*v22 - v24));
        v28 = COERCE_UNSIGNED_INT(v25 + (v30 * (v26 - v25)));
        goto LABEL_20;
      }

LABEL_14:
      if (vabds_f32(v18, v20) <= 0.00000011921)
      {
        v29 = *(v41 - 2);
        v28 = *(v41 - 1);
LABEL_20:
        v31 = v12 >> 3;
        if (((v12 >> 3) + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (v12 >> 3 != -1)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v12 >> 3) + 1);
        }

        *(8 * v31) = LODWORD(v29) | (v28 << 32);
        if (v12)
        {
          v32 = 0;
          v33 = 0;
          do
          {
            v34 = *v32++;
            *v33++ = v34;
          }

          while (v32 != v12);
        }

        v12 = 8 * v31 + 8;
        v17 = __p;
      }
    }

    if (v17)
    {
      operator delete(v17);
    }

LABEL_29:
    v15 = 0;
    v13 = 1;
  }

  while ((v16 & 1) != 0);
  if (v12)
  {
    __p = 0;
    v41 = 0;
    v42 = 0;
    md::HighlightHelper::tileToScreenPoints(v37, 0, v12 >> 3, &__p);
    v35 = __p;
    v36 = v41;
    if (__p != v41)
    {
      do
      {
        a2[1].i32[0] = *v35;
        a2[1].i32[1] = v35[1];
        ggl::DebugConsole::drawSymbol(a2, 1);
        v35 += 2;
      }

      while (v35 != v36);
      v35 = __p;
    }

    if (v35)
    {
      v41 = v35;
      operator delete(v35);
    }
  }
}

void sub_1B2EE31D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

NSString *md::TransitItemMarkerImpl<md::TransitLink>::debugString(uint64_t a1, int a2)
{
  v49[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<Link:%p>\n", v3];
  v5 = v4;
  if (a2)
  {
    v6 = 200;
  }

  else
  {
    v6 = 5;
  }

  v48 = v6;
  [(NSString *)v4 appendString:@"EaseRegions: "];
  v7 = v3[54];
  v8 = v3[55];
  if (v7 == v8)
  {
    [(NSString *)v5 appendString:@"start=(none)"];
  }

  else
  {
    [(NSString *)v5 appendFormat:@"start=(%.2f:%.2f)[cl:%.2f]", v7, v8, v3[59]];
  }

  v9 = v3[56];
  v10 = v3[57];
  if (v9 == v10)
  {
    [(NSString *)v5 appendString:@" end=(none)\n"];
  }

  else
  {
    [(NSString *)v5 appendFormat:@" end=(%.2f:%.2f)[cl:%.2f]\n", v9, v10, v3[60]];
  }

  [(NSString *)v5 appendFormat:@"NodeID From=%llu To=%llu\n", *(*v3 + 56), *(*v3 + 64)];
  v11 = *(*(v3 + 1) + 1704);
  [(NSString *)v5 appendFormat:@"Sections:\n"];
  v13 = *(v3 + 7);
  v12 = *(v3 + 8);
  if (v13 != v12)
  {
    v14 = 0;
    do
    {
      v15 = [MEMORY[0x1E696AD60] string];
      [v15 appendFormat:@"validPoint=%i validTangent=%i offset=%.2f offsetOutside = %.2f length=%.2f\n", *(v13 + 92), *(v13 + 93), *(v13 + 80), *(v13 + 84), *(v13 + 88)];
      v16 = 0;
      v49[0] = v13;
      v49[1] = v13 + 40;
      do
      {
        v17 = v49[v16];
        v18 = *(v17 + 16);
        v19 = *(v17 + 20);
        v20 = atan2f(*(v17 + 4), *v17) * 57.2957795;
        v21 = atan2f(*(v17 + 12), *(v17 + 8)) * 57.2957795;
        [v15 appendFormat:@"    pt=(%f, %f) tngt, nrml=(%.2f, %.2f) jctn=%p type=%i sr=%i\n", *&v18, *&v19, v20, v21, *(v17 + 24), *(v17 + 32), *(v17 + 34)];
        ++v16;
      }

      while (v16 != 2);
      [(NSString *)v5 appendFormat:@"  %i:%@", v14, v15];

      if (v11)
      {
        v22 = (v11 + 8 * *(*v3 + 16) + 8 * v14);
        v23 = v22[1];
        if (*v22 == 0.0)
        {
          v24 = -1.0;
        }

        else
        {
          v24 = *v22;
        }

        if (v23 == 1.0)
        {
          v25 = -1.0;
        }

        else
        {
          v25 = v23;
        }

        [(NSString *)v5 appendFormat:@"    geoSection: start=%.2f end=%.2f\n", *&v24, *&v25];
      }

      ++v14;
      v13 += 96;
    }

    while (v13 != v12);
  }

  [(NSString *)v5 appendFormat:@"MergedLines:\n"];
  v27 = *(v3 + 13);
  v26 = *(v3 + 14);
  if (v27 == v26)
  {
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = 0;
    while (v48 != v28)
    {
      v29 = *v27;
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"uid:%llu, %s, %s", (**v27)[2][5], md::TransitLine::debugSystemName(**v27), (**v27)[2][2]];
      [(NSString *)v5 appendFormat:@"  %i:%@\n", v28, v30];

      v31 = md::TransitLine::debugString(*v29, *(v29 + 52));
      md::HighlightHelper::appendLinesUsingPrefix(@"    ", v31, v5, v32);

      v33 = md::TransitLineSegment::debugString(v29);
      md::HighlightHelper::appendLinesUsingPrefix(@"    ", v33, v5, v34);

      v28 = (v28 + 1);
      if (++v27 == v26)
      {
        goto LABEL_30;
      }
    }

    [(NSString *)v5 appendString:@"  Lines Truncated...\n"];
    LODWORD(v28) = v48;
  }

LABEL_30:
  if (*(v3 + 11) - *(v3 + 10) > *(v3 + 14) - *(v3 + 13))
  {
    [(NSString *)v5 appendFormat:@"CollapsedLines:\n"];
    v35 = *(v3 + 10);
    v36 = *(v3 + 11);
    if (v35 != v36)
    {
      v37 = 0;
      do
      {
        if (*v35)
        {
          v38 = (*v35 + 8);
        }

        else
        {
          v38 = 0;
        }

        if (*(v38 + 55) == 1)
        {
          if (v28 >= v48)
          {
            [(NSString *)v5 appendString:@"  Lines Truncated...\n"];
            break;
          }

          v39 = v38[10];
          v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"uid:%llu, %s, %s", *(*(*v38 + 16) + 40), md::TransitLine::debugSystemName(*v38), *(*(*v38 + 16) + 16)];
          [(NSString *)v5 appendFormat:@"  %i:MergedLine:%i %@\n", v37, v39, v40];

          if (*v35)
          {
            v41 = *v35 + 8;
          }

          else
          {
            v41 = 0;
          }

          v42 = md::TransitLine::debugString(*v41, *(v41 + 52));
          md::HighlightHelper::appendLinesUsingPrefix(@"    ", v42, v5, v43);

          if (*v35)
          {
            v44 = (*v35 + 8);
          }

          else
          {
            v44 = 0;
          }

          v45 = md::TransitLineSegment::debugString(v44);
          md::HighlightHelper::appendLinesUsingPrefix(@"    ", v45, v5, v46);

          v37 = (v37 + 1);
          LODWORD(v28) = v28 + 1;
        }

        ++v35;
      }

      while (v35 != v36);
    }
  }

  return v5;
}

void std::__shared_ptr_emplace<md::TransitItemMarkerImpl<md::TransitLink>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0FBC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TransitItemMarkerImpl<md::TransitJunction>::debugDraw(uint64_t a1, float32x2_t *a2, uint64_t a3, char a4)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v25[0] = **(a1 + 8);
  v25[1] = a3;
  v26 = a4;
  if (*(v5 + 82) == 1)
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
    md::HighlightHelper::tileToScreenPoints(v25, v5 + 16, 1uLL, &__p);
    v6 = __p;
    a2[1].i32[0] = *__p;
    a2[1].i32[1] = v6[1];
    ggl::DebugConsole::drawSymbol(a2, 1);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }
  }

  v7 = 0;
  v32[0] = v5 + 24;
  v32[1] = v5 + 48;
  do
  {
    v8 = v32[v7];
    v11 = *v8;
    v9 = v8 + 1;
    v10 = v11;
    if (v11 != v9)
    {
      while (1)
      {
        v12 = v10[4];
        v13 = *v12;
        if (*(*v12 + 20))
        {
          break;
        }

LABEL_22:
        v22 = v10[1];
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
            v23 = v10[2];
            v24 = *v23 == v10;
            v10 = v23;
          }

          while (!v24);
        }

        v10 = v23;
        if (v23 == v9)
        {
          goto LABEL_28;
        }
      }

      v14 = 0;
      if (v12 == *(v5 + 72))
      {
        v15 = 2;
      }

      else
      {
        v15 = 4;
      }

      if (v12 == *(v5 + 72))
      {
        v16 = 1;
      }

      else
      {
        v16 = 3;
      }

      while (1)
      {
        v31 = 0;
        v17 = geo::codec::transitLinkPoints(v13, v14, &v31);
        if (v31 >= 2)
        {
          break;
        }

LABEL_21:
        ++v14;
        v13 = *v12;
        if (v14 >= *(*v12 + 20))
        {
          goto LABEL_22;
        }
      }

      __p = 0;
      v29 = 0;
      v30 = 0;
      md::HighlightHelper::tileToScreenPoints(v25, v17, v31, &__p);
      ggl::DebugConsole::drawLineStrip(a2, __p, (v29 - __p) >> 3);
      v18 = *__p;
      v27 = *(v29 - 1);
      a2[1] = v18;
      ggl::DebugConsole::drawLine(a2, &v27, v18.f32[0]);
      if (*(v12[8] - 32) == v5)
      {
        v20 = (__p + 4);
        a2[1].i32[0] = *__p;
        v21 = v16;
      }

      else
      {
        if (*(v12[7] + 24) != v5)
        {
          goto LABEL_19;
        }

        v19 = v29;
        a2[1].i32[0] = *(v29 - 2);
        v20 = (v19 - 4);
        v21 = v15;
      }

      a2[1].i32[1] = *v20;
      ggl::DebugConsole::drawSymbol(a2, v21);
LABEL_19:
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      goto LABEL_21;
    }

LABEL_28:
    ++v7;
  }

  while (v7 != 2);
}

void sub_1B2EE3B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NSString *md::TransitItemMarkerImpl<md::TransitJunction>::debugString(uint64_t a1, int a2)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<Junction:%p>\n", v3];
  [(NSString *)v4 appendFormat:@"point=(%f, %f)\n", *(v3 + 16), *(v3 + 20)];
  DominantLinkDirection = md::TransitJunction::findDominantLinkDirection(v3);
  v7 = atan2f(v6, DominantLinkDirection) * 57.2957795;
  [(NSString *)v4 appendFormat:@"RefLink:%p, isSuperSet:%i, domDir:%.1f\n", *(v3 + 72), *(v3 + 81), v7];
  [(NSString *)v4 appendFormat:@"Links:\n"];
  v8 = 0;
  v9 = 0;
  v38[0] = v3 + 24;
  v38[1] = v3 + 48;
  if (a2)
  {
    v10 = 200;
  }

  else
  {
    v10 = 10;
  }

  v37 = v10;
  v35 = v4;
  do
  {
    v11 = *(v38 + v9);
    v12 = *v11;
    v33 = v9;
    v34 = v11 + 1;
    if (*v11 != v11 + 1)
    {
      v13 = v11 == (v3 + 24);
      v14 = 44;
      if (v13)
      {
        v14 = 48;
      }

      v36 = v14;
      do
      {
        v15 = v12[4];
        if (*(*v15 + 40) == *(v3 + 8))
        {
          v16 = **(v15 + 56);
        }

        else
        {
          v16 = vneg_f32(*(*(v15 + 64) - 56));
        }

        v17 = atan2f(v16.f32[1], v16.f32[0]) * 57.2957795;
        v18 = vabds_f32(v17, v7);
        [(NSString *)v35 appendFormat:@"  %i:%p, dir:%.02f, domDelta:%.1f\n", v8, v15, v17, fminf(360.0 - v18, v18)];
        v19 = [MEMORY[0x1E696AD60] string];
        [(NSString *)v19 appendFormat:@"MergedLines:\n"];
        v21 = *(v15 + 104);
        v22 = *(v15 + 112);
        if (v21 != v22)
        {
          v23 = 0;
          while (v37 != v23)
          {
            v24 = *v21;
            v25 = *(*v21 + v36);
            v26 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((v3 + 128), *v21);
            v27 = 999.0;
            if (v26)
            {
              v28 = atan2f(v26[7], v26[6]) * 57.2957795;
              v27 = v28;
            }

            v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"uid:%llu, %s, %s", (*v24)[2][5], md::TransitLine::debugSystemName(*v24), (*v24)[2][2]];
            [(NSString *)v19 appendFormat:@" %i:%@, slot:%d normal:%.02f\n", v23, v29, v25, *&v27];

            v23 = (v23 + 1);
            if (++v21 == v22)
            {
              goto LABEL_20;
            }
          }

          [(NSString *)v19 appendString:@" Lines Truncated...\n"];
        }

LABEL_20:
        v4 = v35;
        md::HighlightHelper::appendLinesUsingPrefix(@"   ", v19, v35, v20);

        v30 = v12[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v12[2];
            v13 = *v31 == v12;
            v12 = v31;
          }

          while (!v13);
        }

        v8 = (v8 + 1);
        v12 = v31;
      }

      while (v31 != v34);
    }

    v9 = v33 + 8;
  }

  while (v33 != 8);

  return v4;
}

void std::__shared_ptr_emplace<md::TransitItemMarkerImpl<md::TransitJunction>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0FB48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelRoute::LabelRoute(id *this, GEOComposedRoute *a2, char a3)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(this, a2);
  v5[12] = 0;
  *(v5 + 24) = a3;
  v5[4] = 0;
  v6 = (v5 + 4);
  v5[5] = 0;
  v5[6] = 0;
  v5[8] = 0;
  v7 = (v5 + 8);
  v5[9] = 0;
  v5[10] = 0;
  v8 = [v5[1] pointCount];
  v9 = v8;
  std::vector<geo::Mercator2<double>,geo::allocator_adapter<geo::Mercator2<double>,mdm::zone_mallocator>>::resize(v6, v8);
  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::resize(v7, v8);
  if (v8)
  {
    v11 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    v36 = _Q0;
    do
    {
      v17 = this[1];
      [v17 pointAt:v11];
      v37 = v18;
      v20 = v19;
      v22 = v21;

      v23 = tan(v20 * 0.00872664626 + 0.785398163);
      v24 = log(v23);
      v25 = *v6;
      v26.f64[0] = v37;
      v26.f64[1] = v24;
      *(*v6 + 16 * v11) = vmlaq_f64(v36, xmmword_1B33B0700, v26);
      if (v22 == 1.79769313e308)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v22;
      }

      v28 = v27;
      *(*v7 + 4 * v11++) = v28;
    }

    while (v9 != v11);
  }

  else
  {
    v25 = *v6;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v29 = this[5];
  v38[4] = v42;
  v30 = mdm::zone_mallocator::instance(v10);
  v31 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelCollisionPath>(v30, 1);
  *v31 = ((v29 - v25) << 28) & 0xFFFFFFFF00000000;
  v32 = (v31 + 1);
  v33 = v31 - (v40 - v39);
  memcpy(v33, v39, v40 - v39);
  v34 = v39;
  v35 = v41;
  v39 = v33;
  v40 = v32;
  v41 = v32;
  v38[2] = v34;
  v38[3] = v35;
  v38[0] = v34;
  v38[1] = v34;
  std::__split_buffer<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator> &>::~__split_buffer(v38);
  v40 = v32;
  operator new();
}

void sub_1B2EE5590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  MEMORY[0x1B8C62190](v16, 0x60C40DCD2FBCELL);
  std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  std::unique_ptr<md::LabelRouteCollisionInfo>::reset[abi:nn200100](v14, 0);
  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v15);
  std::vector<geo::Mercator2<double>,geo::allocator_adapter<geo::Mercator2<double>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v13);
  *v12 = &unk_1F2A4C308;

  _Unwind_Resume(a1);
}

void md::LabelRoute::~LabelRoute(md::LabelRoute *this)
{
  std::unique_ptr<md::LabelRouteCollisionInfo>::reset[abi:nn200100](this + 12, 0);
  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 64));
  std::vector<geo::Mercator2<double>,geo::allocator_adapter<geo::Mercator2<double>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 32));
  *this = &unk_1F2A4C308;
}

void ggl::FlyoverNight::FlyoverPipelineSetup::~FlyoverPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::FlyoverNight::FlyoverPolarPipelineSetup::~FlyoverPolarPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Hillshade::Pos2DUVPipelineSetup::~Pos2DUVPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::featureMarker(uint64_t a1@<X1>, double *a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + 648);
  *a3 = 0;
  a3[1] = 0;
  if (v4)
  {
    v7 = geo::codec::VectorTile::polygonsCount(*(v4 + 96), *(v4 + 104));
    if (v7)
    {
      v8 = v7;
      for (i = 0; i < v8; ++i)
      {
        v10 = *(*(a1 + 648) + 96) + (i << 7);
        v14[1] = v10;
        v11 = *(v10 + 96);
        if (v11)
        {
          for (j = 0; j != v11; ++j)
          {
            v14[0] = 0;
            v13 = geo::codec::multiSectionFeaturePoints(v10, j, v14);
            if (VKPointInPolygon(v13, v14[0], *a2, a2[1]))
            {
              std::allocate_shared[abi:nn200100]<md::VectorFeatureMarker,std::allocator<md::VectorFeatureMarker>,GeoCodecsPolygonFeature *&,0>();
            }
          }

          a3[1] = 0;
        }

        *a3 = 0;
      }
    }
  }
}

void sub_1B2EE59DC(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  v1[1] = v2;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::renderablesWillEnterView(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *a3;
  v4 = a3[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v5 + 392), 1);
  }
}

void md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  for (i = a1[103]; i; i = *i)
  {
    v5 = i[4];
    [v5 updateCachedStyles];
  }

  v6 = (*(*a1 + 48))(a1);
  v7 = v6[1];
  for (j = *v6; j != v7; j += 24)
  {
    geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v10, j);
    if (a2 == 1)
    {
      v9 = v11;
      [v9 setNeedsTextureUpdate];
    }

    v10 = off_1F2A4E798;
  }
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::prepare(_BYTE *a1)
{
  result = (*(*a1 + 104))(a1);
  v3 = a1[49];
  a1[481] = v3 - a1[48] + 2;
  a1[480] = v3 + 1;
  return result;
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::reserveStencilRange(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  v3 = result;
  v4 = *a3;
  if (((*(result + 422) | (*(result + 424) << 16)) & 0x10000) != 0 && v4 == *(result + 422) && a3[1] == HIBYTE(*(result + 422)))
  {
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 904), 0);
    *(*(v3 + 368) + 912) = result - *(v3 + 48);
    return result;
  }

  if (((*(result + 425) | (*(result + 427) << 16)) & 0x10000) != 0)
  {
    v5 = a3[1];
    if (v4 == *(result + 425) && v5 == HIBYTE(*(result + 425)))
    {
      result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 928), 0);
      *(*(v3 + 368) + 936) = result - *(v3 + 48);
      return result;
    }
  }

  else
  {
    v5 = a3[1];
  }

  v7 = 0;
  for (i = (result + 417); v4 != *(i - 1) || v5 != *i; i += 2)
  {
    if (++v7 == 3)
    {
      return result;
    }
  }

  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 8 * v7 + 872), 0);
  *(*(v3 + 368) + 2 * v7 + 896) = result - *(v3 + 48);
  return result;
}

void md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::layout(void *a1, uint64_t a2)
{
  mach_absolute_time();
  v4 = a1[34];
  v5 = a1[35];
  v6 = *(a2 + 8);
  gdc::Context::get<md::StyleLogicContext>(v6);
  v7 = gdc::Context::context<md::TransitContext>(v6);
  gdc::Context::context<md::PolygonContext>(v6);
  if (v7 && *(v7 + 312) == 1)
  {
    while (v4 != v5)
    {
      md::updatePolyonGroupsTransitNodeRouteAttributes(*(*v4 + 392), v7[36], (v7 + 29));
      v4 += 8;
    }

    *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(a1[5] + 96) + 41928) + 16), 0x1BCA10CB9934FB1BuLL)[5] + 544) = 0;
  }

  operator new();
}

void sub_1B2EE6534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  ggl::BufferMemory::~BufferMemory((v35 - 176));
  v37 = mach_absolute_time();
  atomic_fetch_add((*(ggl::Performance::Counters::instance(v37) + 32) + 120), v37 - a9);
  _Unwind_Resume(a1);
}

void *gdc::Context::context<md::TransitContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xFD5D5EC7C4E1E43ELL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xFD5D5EC7C4E1E43ELL)
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

void md::updatePolyonGroupsTransitNodeRouteAttributes(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    do
    {
      v6 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 808), v5[2]);
      if (v6)
      {
        v7 = v6[4];
        [v7 clearRouteAttributes];
      }

      v5 = *v5;
    }

    while (v5);
  }

  for (i = *(a3 + 16); i; i = *i)
  {
    v9 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 808), i[2]);
    if (v9)
    {
      v10 = v9[4];
      [v10 setRouteAttributes:i + 3];
    }
  }
}

void *ggl::FragmentedPool<ggl::PolygonFill::MeshPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonFill::MeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PolygonFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonFill::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonFill::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

void std::__function::__func<md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::operator()(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 <= 1)
  {
    if (*a2)
    {
      if (v2 == 1)
      {
        v7 = *(a1 + 16);
        **(a1 + 8) = 1;
        v8 = *v7;
        v9 = v7[1];
        while (v8 != v9)
        {
          v10 = *v8++;
          md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v10 + 392), 1);
        }
      }
    }

    else
    {
      v19 = *(a1 + 16);
      **(a1 + 8) = 1;
      v20 = *v19;
      v21 = v19[1];
      while (v20 != v21)
      {
        v22 = *v20++;
        md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v22 + 392), 1);
      }
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        v11 = *(a1 + 16);
        v12 = *v11;
        v13 = v11[1];
        while (v12 != v13)
        {
          v14 = *v12++;
          md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v14 + 392), 0);
        }

        break;
      case 3u:
        v15 = *(a1 + 16);
        v16 = *v15;
        v17 = v15[1];
        while (v16 != v17)
        {
          v18 = *v16++;
          md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v18 + 392), 1);
        }

        break;
      case 4u:
        v3 = *(a1 + 16);
        v4 = *v3;
        v5 = v3[1];
        while (v4 != v5)
        {
          v6 = *v4++;
          md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v6 + 392), 1);
        }

        break;
    }
  }
}

__n128 std::__function::__func<md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A10188;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::featureMarker(uint64_t a1@<X1>, double *a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + 648);
  *a3 = 0;
  a3[1] = 0;
  if (v4)
  {
    v7 = geo::codec::VectorTile::polygonsCount(*(v4 + 96), *(v4 + 104));
    if (v7)
    {
      v8 = v7;
      for (i = 0; i < v8; ++i)
      {
        v10 = *(*(a1 + 648) + 96) + (i << 7);
        v14[1] = v10;
        v11 = *(v10 + 96);
        if (v11)
        {
          for (j = 0; j != v11; ++j)
          {
            v14[0] = 0;
            v13 = geo::codec::multiSectionFeaturePoints(v10, j, v14);
            if (VKPointInPolygon(v13, v14[0], *a2, a2[1]))
            {
              std::allocate_shared[abi:nn200100]<md::VectorFeatureMarker,std::allocator<md::VectorFeatureMarker>,GeoCodecsPolygonFeature *&,0>();
            }
          }

          a3[1] = 0;
        }

        *a3 = 0;
      }
    }
  }
}

void sub_1B2EE6C74(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  v1[1] = v2;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::renderablesWillEnterView(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *a3;
  v4 = a3[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v5 + 392), 1);
  }
}

void md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  for (i = a1[103]; i; i = *i)
  {
    v5 = i[4];
    [v5 updateCachedStyles];
  }

  v6 = (*(*a1 + 48))(a1);
  v7 = v6[1];
  for (j = *v6; j != v7; j += 24)
  {
    geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v10, j);
    if (a2 == 1)
    {
      v9 = v11;
      [v9 setNeedsTextureUpdate];
    }

    v10 = off_1F2A4E798;
  }
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::prepare(_BYTE *a1)
{
  result = (*(*a1 + 104))(a1);
  v3 = a1[49];
  a1[481] = v3 - a1[48] + 2;
  a1[480] = v3 + 1;
  return result;
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::reserveStencilRange(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  v3 = result;
  v4 = *a3;
  if (((*(result + 422) | (*(result + 424) << 16)) & 0x10000) != 0 && v4 == *(result + 422) && a3[1] == HIBYTE(*(result + 422)))
  {
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 904), 0);
    *(*(v3 + 368) + 912) = result - *(v3 + 48);
    return result;
  }

  if (((*(result + 425) | (*(result + 427) << 16)) & 0x10000) != 0)
  {
    v5 = a3[1];
    if (v4 == *(result + 425) && v5 == HIBYTE(*(result + 425)))
    {
      result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 928), 0);
      *(*(v3 + 368) + 936) = result - *(v3 + 48);
      return result;
    }
  }

  else
  {
    v5 = a3[1];
  }

  v7 = 0;
  for (i = (result + 417); v4 != *(i - 1) || v5 != *i; i += 2)
  {
    if (++v7 == 3)
    {
      return result;
    }
  }

  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 8 * v7 + 872), 0);
  *(*(v3 + 368) + 2 * v7 + 896) = result - *(v3 + 48);
  return result;
}

void md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::layout(void *a1, uint64_t a2)
{
  mach_absolute_time();
  v4 = a1[34];
  v5 = a1[35];
  v6 = *(a2 + 8);
  gdc::Context::get<md::StyleLogicContext>(v6);
  v7 = gdc::Context::context<md::TransitContext>(v6);
  gdc::Context::context<md::PolygonContext>(v6);
  if (v7 && *(v7 + 312) == 1)
  {
    while (v4 != v5)
    {
      md::updatePolyonGroupsTransitNodeRouteAttributes(*(*v4 + 392), v7[36], (v7 + 29));
      v4 += 8;
    }

    *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(a1[5] + 96) + 41928) + 16), 0x1BCA10CB9934FB1BuLL)[5] + 544) = 0;
  }

  operator new();
}

void sub_1B2EE77CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  ggl::BufferMemory::~BufferMemory((v35 - 176));
  v37 = mach_absolute_time();
  atomic_fetch_add((*(ggl::Performance::Counters::instance(v37) + 32) + 120), v37 - a9);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::operator()(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 <= 1)
  {
    if (*a2)
    {
      if (v2 == 1)
      {
        v7 = *(a1 + 16);
        **(a1 + 8) = 1;
        v8 = *v7;
        v9 = v7[1];
        while (v8 != v9)
        {
          v10 = *v8++;
          md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v10 + 392), 1);
        }
      }
    }

    else
    {
      v19 = *(a1 + 16);
      **(a1 + 8) = 1;
      v20 = *v19;
      v21 = v19[1];
      while (v20 != v21)
      {
        v22 = *v20++;
        md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v22 + 392), 1);
      }
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        v11 = *(a1 + 16);
        v12 = *v11;
        v13 = v11[1];
        while (v12 != v13)
        {
          v14 = *v12++;
          md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v14 + 392), 0);
        }

        break;
      case 3u:
        v15 = *(a1 + 16);
        v16 = *v15;
        v17 = v15[1];
        while (v16 != v17)
        {
          v18 = *v16++;
          md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v18 + 392), 1);
        }

        break;
      case 4u:
        v3 = *(a1 + 16);
        v4 = *v3;
        v5 = v3[1];
        while (v4 != v5)
        {
          v6 = *v4++;
          md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v6 + 392), 1);
        }

        break;
    }
  }
}

__n128 std::__function::__func<md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A10050;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::featureMarker(uint64_t a1@<X1>, double *a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + 648);
  *a3 = 0;
  a3[1] = 0;
  if (v4)
  {
    v7 = geo::codec::VectorTile::polygonsCount(*(v4 + 96), *(v4 + 104));
    if (v7)
    {
      v8 = v7;
      for (i = 0; i < v8; ++i)
      {
        v10 = *(*(a1 + 648) + 96) + (i << 7);
        v14[1] = v10;
        v11 = *(v10 + 96);
        if (v11)
        {
          for (j = 0; j != v11; ++j)
          {
            v14[0] = 0;
            v13 = geo::codec::multiSectionFeaturePoints(v10, j, v14);
            if (VKPointInPolygon(v13, v14[0], *a2, a2[1]))
            {
              std::allocate_shared[abi:nn200100]<md::VectorFeatureMarker,std::allocator<md::VectorFeatureMarker>,GeoCodecsPolygonFeature *&,0>();
            }
          }

          a3[1] = 0;
        }

        *a3 = 0;
      }
    }
  }
}

void sub_1B2EE7B94(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  v1[1] = v2;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::renderablesWillEnterView(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *a3;
  v4 = a3[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v5 + 392), 1);
  }
}

void md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  for (i = a1[103]; i; i = *i)
  {
    v5 = i[4];
    [v5 updateCachedStyles];
  }

  v6 = (*(*a1 + 48))(a1);
  v7 = v6[1];
  for (j = *v6; j != v7; j += 24)
  {
    geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v10, j);
    if (a2 == 1)
    {
      v9 = v11;
      [v9 setNeedsTextureUpdate];
    }

    v10 = off_1F2A4E798;
  }
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::prepare(_BYTE *a1)
{
  result = (*(*a1 + 104))(a1);
  v3 = a1[49];
  a1[481] = v3 - a1[48] + 2;
  a1[480] = v3 + 1;
  return result;
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::reserveStencilRange(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  v3 = result;
  v4 = *a3;
  if (((*(result + 422) | (*(result + 424) << 16)) & 0x10000) != 0 && v4 == *(result + 422) && a3[1] == HIBYTE(*(result + 422)))
  {
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 904), 0);
    *(*(v3 + 368) + 912) = result - *(v3 + 48);
    return result;
  }

  if (((*(result + 425) | (*(result + 427) << 16)) & 0x10000) != 0)
  {
    v5 = a3[1];
    if (v4 == *(result + 425) && v5 == HIBYTE(*(result + 425)))
    {
      result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 928), 0);
      *(*(v3 + 368) + 936) = result - *(v3 + 48);
      return result;
    }
  }

  else
  {
    v5 = a3[1];
  }

  v7 = 0;
  for (i = (result + 417); v4 != *(i - 1) || v5 != *i; i += 2)
  {
    if (++v7 == 3)
    {
      return result;
    }
  }

  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 8 * v7 + 872), 0);
  *(*(v3 + 368) + 2 * v7 + 896) = result - *(v3 + 48);
  return result;
}

void md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::layout(void *a1, uint64_t a2)
{
  mach_absolute_time();
  v4 = a1[34];
  v5 = a1[35];
  v6 = *(a2 + 8);
  gdc::Context::get<md::StyleLogicContext>(v6);
  v7 = gdc::Context::context<md::TransitContext>(v6);
  gdc::Context::context<md::PolygonContext>(v6);
  if (v7 && *(v7 + 312) == 1)
  {
    while (v4 != v5)
    {
      md::updatePolyonGroupsTransitNodeRouteAttributes(*(*v4 + 392), v7[36], (v7 + 29));
      v4 += 8;
    }

    *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(a1[5] + 96) + 41928) + 16), 0x1BCA10CB9934FB1BuLL)[5] + 544) = 0;
  }

  operator new();
}

void sub_1B2EE86EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  ggl::BufferMemory::~BufferMemory((v35 - 176));
  v37 = mach_absolute_time();
  atomic_fetch_add((*(ggl::Performance::Counters::instance(v37) + 32) + 120), v37 - a9);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::operator()(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 <= 1)
  {
    if (*a2)
    {
      if (v2 == 1)
      {
        v7 = *(a1 + 16);
        **(a1 + 8) = 1;
        v8 = *v7;
        v9 = v7[1];
        while (v8 != v9)
        {
          v10 = *v8++;
          md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v10 + 392), 1);
        }
      }
    }

    else
    {
      v19 = *(a1 + 16);
      **(a1 + 8) = 1;
      v20 = *v19;
      v21 = v19[1];
      while (v20 != v21)
      {
        v22 = *v20++;
        md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v22 + 392), 1);
      }
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        v11 = *(a1 + 16);
        v12 = *v11;
        v13 = v11[1];
        while (v12 != v13)
        {
          v14 = *v12++;
          md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v14 + 392), 0);
        }

        break;
      case 3u:
        v15 = *(a1 + 16);
        v16 = *v15;
        v17 = v15[1];
        while (v16 != v17)
        {
          v18 = *v16++;
          md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v18 + 392), 1);
        }

        break;
      case 4u:
        v3 = *(a1 + 16);
        v4 = *v3;
        v5 = v3[1];
        while (v4 != v5)
        {
          v6 = *v4++;
          md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v6 + 392), 1);
        }

        break;
    }
  }
}

__n128 std::__function::__func<md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A0FF18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_pointer<md::RasterSharedRenderResources *,std::shared_ptr<md::RasterSharedRenderResources>::__shared_ptr_default_delete<md::RasterSharedRenderResources,md::RasterSharedRenderResources>,std::allocator<md::RasterSharedRenderResources>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::BuildingSharedRenderResources>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0FDB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::CartographicMapEngineConfiguration::~CartographicMapEngineConfiguration(md::CartographicMapEngineConfiguration *this)
{
  *this = &unk_1F2A2E2E8;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A58798;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2E2E8;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A58798;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void md::ShadowPipelineProxy::update(ggl::zone_mallocator *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v6 = *(a1 + 3);
  v7 = v6[1];
  if (v7 == *v6)
  {
    v9 = v6[11];
    if (!v9)
    {
      goto LABEL_43;
    }

    a1 = (*(*v9 + 48))(v9);
    v8 = a1;
  }

  else
  {
    v8 = *(v7 - 8);
    v6[1] = v7 - 8;
  }

  v11 = v6[5];
  v10 = v6[6];
  if (v11 >= v10)
  {
    v13 = v6[4];
    v14 = (v11 - v13) >> 3;
    if ((v14 + 1) >> 61)
    {
      goto LABEL_44;
    }

    v15 = v10 - v13;
    v16 = v15 >> 2;
    if (v15 >> 2 <= (v14 + 1))
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    v71 = v6 + 7;
    if (v17)
    {
      v18 = ggl::zone_mallocator::instance(a1);
      v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARShadowPipelineSetup *>(v18, v17);
    }

    else
    {
      v19 = 0;
    }

    v21 = &v19[8 * v17];
    v20 = &v19[8 * v14];
    *v20 = v8;
    v12 = v20 + 1;
    v22 = v6[4];
    v23 = v6[5] - v22;
    v24 = v20 - v23;
    memcpy(v20 - v23, v22, v23);
    v25 = v6[4];
    v6[4] = v24;
    v6[5] = v12;
    v26 = v6[6];
    v6[6] = v21;
    *&v69[16] = v25;
    v70 = v26;
    *v69 = v25;
    *&v69[8] = v25;
    std::__split_buffer<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v69);
  }

  else
  {
    *v11 = v8;
    v12 = v11 + 1;
  }

  v6[5] = v12;
  *v69 = v8;
  v27 = v6[15];
  if (!v27)
  {
LABEL_43:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_44:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v27 + 48))(v27, v69);
  v28 = *a3;
  *v69 = v8;
  v29 = gdc::Registry::storage<arComponents::PipelineInstanceToUse>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v29, v28, v69);
  v30 = *a3;
  *&v69[4] = 0uLL;
  v70 = 0;
  v71 = 0;
  v74 = 0;
  v73 = 0;
  *v69 = 1065353216;
  *&v69[20] = 1065353216;
  v72 = 1065353216;
  v75 = 1065353216;
  v31 = gdc::Registry::storage<arComponents::ViewConstantDataComponent>(a2);
  gdc::ComponentStorageWrapper<arComponents::ViewConstantDataComponent>::emplace(v31, v30, v69);
  v32 = *a3;
  *v69 = 0;
  *&v69[8] = 0;
  v33 = gdc::Registry::storage<arComponents::TransformConstantDataComponent>(a2);
  gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::emplace(v33, v32, v69);
  if (*&v69[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v69[8]);
  }

  v34 = *a3;
  v35 = gdc::Registry::storage<arComponents::NeedsTransformConstantDataUpdate>(a2);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v35, v34);
  v36 = *a3;
  v37 = *(v5 + 16);
  v38 = gdc::Registry::storage<arComponents::CommandBufferLocation>(a2);
  *v69 = v36;
  v39 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v38 + 4, v69);
  if (v40)
  {
    v42 = v38[11];
    v41 = v38[12];
    if (v42 >= v41)
    {
      v47 = v38[10];
      v48 = v42 - v47;
      v49 = (v42 - v47) >> 1;
      if (v49 <= -2)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v50 = v41 - v47;
      if (v50 <= v49 + 1)
      {
        v51 = v49 + 1;
      }

      else
      {
        v51 = v50;
      }

      if (v50 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v52 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v52 = v51;
      }

      if (v52)
      {
        if ((v52 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v53 = (v42 - v47) >> 1;
      v54 = (2 * v49);
      v55 = (2 * v49 - 2 * v53);
      *v54 = v37;
      v43 = v54 + 1;
      memcpy(v55, v47, v48);
      v38[10] = v55;
      v38[11] = v43;
      v38[12] = 0;
      if (v47)
      {
        operator delete(v47);
      }
    }

    else
    {
      *v42 = v37;
      v43 = v42 + 2;
    }

    v38[11] = v43;
    v45 = v38[31];
    goto LABEL_40;
  }

  v44 = (v38[10] + ((v39 - v38[7]) >> 2));
  *v44 = v37;
  v45 = v38[31];
  if (v44 == v38[11])
  {
LABEL_40:
    for (i = v38[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v45, v69, 1);
    }

    goto LABEL_42;
  }

  for (j = v38[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v45, v69, 1);
  }

LABEL_42:
  v57 = *a3;
  *v69 = *(*(v8 + 17) + 48);
  v58 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v58, v57, v69);
  v59 = *a3;
  *v69 = **(v8 + 17);
  v60 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::View>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v60, v59, v69);
  v61 = *a3;
  *v69 = *(*(v8 + 17) + 16);
  v62 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v62, v61, v69);
  v63 = *a3;
  *v69 = **(v8 + 13);
  v64 = gdc::Registry::storage<arComponents::CompWrap<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v64, v63, v69);
  v65 = *a3;
  *v69 = v5;
  HasTransformConstant = gdc::Registry::storage<md::pipelineECS::HasTransformConstantData>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(HasTransformConstant, v65, v69);
  v67 = *a3;
  *v69 = v5 + 8;
  HasTransformInstanceDeviceData = gdc::Registry::storage<md::pipelineECS::HasTransformInstanceDeviceDataFeature>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(HasTransformInstanceDeviceData, v67, v69);
}

void sub_1B2EE8FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v24 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v24);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v13 = a1[10];
      v14 = v8 - v13;
      v15 = (v8 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v15;
      v20 = (8 * v15);
      v21 = *a3;
      v22 = &v20[-v19];
      *v20 = v21;
      v9 = v20 + 1;
      memcpy(v22, v13, v14);
      a1[10] = v22;
      a1[11] = v9;
      a1[12] = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = v8 + 8;
    }

    a1[11] = v9;
    v11 = a1[31];
    goto LABEL_20;
  }

  v10 = (a1[10] + v5 - a1[7]);
  *v10 = *a3;
  v11 = a1[31];
  if (v10 == a1[11])
  {
LABEL_20:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v11, &v24, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v11, &v24, 1);
  }
}

void gdc::ComponentStorageWrapper<arComponents::ViewConstantDataComponent>::emplace(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v31 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v31);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v17 = a1[10];
      v18 = (v8 - v17) >> 6;
      v19 = v18 + 1;
      if ((v18 + 1) >> 58)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v7 - v17;
      if (v20 >> 5 > v19)
      {
        v19 = v20 >> 5;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFC0)
      {
        v21 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (!(v21 >> 58))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = (v18 << 6);
      v23 = a3[1];
      *v22 = *a3;
      v22[1] = v23;
      v24 = a3[3];
      v22[2] = a3[2];
      v22[3] = v24;
      v12 = (v18 << 6) + 64;
      if (v17 != v8)
      {
        v25 = v17;
        v26 = 0;
        do
        {
          v27 = *v25;
          v28 = *(v25 + 1);
          v29 = *(v25 + 3);
          v26[2] = *(v25 + 2);
          v26[3] = v29;
          *v26 = v27;
          v26[1] = v28;
          v26 += 4;
          v25 += 64;
        }

        while (v25 != v8);
      }

      a1[10] = 0;
      a1[11] = v12;
      a1[12] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      v9 = *a3;
      v10 = a3[1];
      v11 = a3[3];
      *(v8 + 2) = a3[2];
      *(v8 + 3) = v11;
      *v8 = v9;
      *(v8 + 1) = v10;
      v12 = (v8 + 64);
    }

    a1[11] = v12;
    v15 = a1[31];
    goto LABEL_25;
  }

  v13 = 0;
  v14 = a1[10] + 8 * (v5 - a1[7]);
  do
  {
    *(v14 + v13) = *(a3 + v13);
    v13 += 4;
  }

  while (v13 != 64);
  v15 = a1[31];
  if (v14 == a1[11])
  {
LABEL_25:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v15, &v31, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v15, &v31, 1);
  }
}

void gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::emplace(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v32 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v32);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v16 = a1[10];
      v17 = (v7 - v16) >> 4;
      v18 = v17 + 1;
      if ((v17 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v8 - v16;
      if (v19 >> 3 > v18)
      {
        v18 = v19 >> 3;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF0)
      {
        v20 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = 16 * v17;
      v22 = *a3;
      *(16 * v17) = *a3;
      if (*(&v22 + 1))
      {
        atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v10 = (v21 + 16);
      v31 = (v21 + 16);
      v24 = a1[10];
      v23 = a1[11];
      v25 = (v21 + v24 - v23);
      if (v23 != v24)
      {
        v26 = a1[10];
        v27 = v25;
        do
        {
          *v27++ = *v26;
          *v26 = 0;
          *(v26 + 8) = 0;
          v26 += 16;
        }

        while (v26 != v23);
        do
        {
          v28 = *(v24 + 8);
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v28);
          }

          v24 += 16;
        }

        while (v24 != v23);
      }

      v29 = a1[10];
      a1[10] = v25;
      *(a1 + 11) = v31;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      v9 = *(a3 + 1);
      *v7 = *a3;
      v7[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = v7 + 2;
    }

    a1[11] = v10;
    v14 = a1[31];
LABEL_32:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v14, &v32, 1);
    }

    return;
  }

  v11 = a1[10] + 2 * (v5 - a1[7]);
  v12 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v13 = *(v11 + 8);
  *v11 = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = a1[31];
  if (v11 == a1[11])
  {
    goto LABEL_32;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v14, &v32, 1);
  }
}

uint64_t gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(uint64_t a1)
{
  v3 = 0xBCDEDBDC62731A11;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBCDEDBDC62731A11);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::CompWrap<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(uint64_t a1)
{
  v3 = 0xFEA9AEC0E5ADE148;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xFEA9AEC0E5ADE148);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::Transform>>>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::Transform>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::Transform>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void md::Logic<md::AssetInjectionLogic,md::AssetInjectionContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(void *a1, unsigned __int16 a2)
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

  return v6;
}

void sub_1B2EEA178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::shared_ptr<md::InjectedAsset>,std::hash<std::shared_ptr<md::InjectedAsset>>,std::equal_to<std::shared_ptr<md::InjectedAsset>>,std::allocator<std::shared_ptr<md::InjectedAsset>>>::__emplace_unique_key_args<std::shared_ptr<md::InjectedAsset>,std::shared_ptr<md::InjectedAsset> const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::__erase_unique<unsigned short>(void *a1, unsigned __int16 a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = a1[1];
    v6 = v3[1];
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      if (v6 >= *&v5)
      {
        v6 = (v6 % *&v5);
      }
    }

    else
    {
      v6 = ((*&v5 - 1) & v6);
    }

    v8 = *(*a1 + 8 * v6);
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8 != v3);
    if (v9 == a1 + 2)
    {
      goto LABEL_20;
    }

    v10 = v9[1];
    if (v7.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 = (v10 % *&v5);
      }
    }

    else
    {
      v10 = (v10 & (*&v5 - 1));
    }

    if (v10 != v6)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v11 = (*v3)[1];
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v6)
      {
LABEL_21:
        *(*a1 + 8 * v6) = 0;
      }
    }

    v12 = *v3;
    if (*v3)
    {
      v13 = v12[1];
      if (v7.u32[0] > 1uLL)
      {
        if (v13 >= *&v5)
        {
          v13 = (v13 % *&v5);
        }
      }

      else
      {
        v13 = (v13 & (*&v5 - 1));
      }

      if (v13 != v6)
      {
        *(*a1 + 8 * v13) = v9;
        v12 = *v3;
      }
    }

    *v9 = v12;
    *v3 = 0;
    --a1[3];
    v14 = (v3 + 3);
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v14);

    operator delete(v4);
  }
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(void *result, unint64_t a2)
{
  v2 = result[1];
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

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<std::shared_ptr<md::InjectedAsset>,std::hash<std::shared_ptr<md::InjectedAsset>>,std::equal_to<std::shared_ptr<md::InjectedAsset>>,std::allocator<std::shared_ptr<md::InjectedAsset>>>::__erase_unique<std::shared_ptr<md::InjectedAsset>>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
    v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    v7 = vcnt_s8(v2);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
      if (v6 >= *&v2)
      {
        v8 = v6 % *&v2;
      }
    }

    else
    {
      v8 = v6 & (*&v2 - 1);
    }

    v9 = *a1;
    v10 = *(*a1 + 8 * v8);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        v12 = *&v2 - 1;
        do
        {
          v13 = v11[1];
          if (v13 == v6)
          {
            if (v11[2] == a2)
            {
              v14 = v11[1];
              if (v7.u32[0] > 1uLL)
              {
                if (v14 >= *&v2)
                {
                  v14 %= *&v2;
                }
              }

              else
              {
                v14 &= v12;
              }

              v15 = *(v9 + 8 * v14);
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15 != v11);
              if (v16 == a1 + 2)
              {
                goto LABEL_36;
              }

              v17 = v16[1];
              if (v7.u32[0] > 1uLL)
              {
                if (v17 >= *&v2)
                {
                  v17 %= *&v2;
                }
              }

              else
              {
                v17 &= v12;
              }

              if (v17 != v14)
              {
LABEL_36:
                if (!*v11)
                {
                  goto LABEL_37;
                }

                v18 = *(*v11 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v18 >= *&v2)
                  {
                    v18 %= *&v2;
                  }
                }

                else
                {
                  v18 &= v12;
                }

                if (v18 != v14)
                {
LABEL_37:
                  *(v9 + 8 * v14) = 0;
                }
              }

              v19 = *v11;
              if (*v11)
              {
                v20 = *(v19 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v20 >= *&v2)
                  {
                    v20 %= *&v2;
                  }
                }

                else
                {
                  v20 &= v12;
                }

                if (v20 != v14)
                {
                  *(*a1 + 8 * v20) = v16;
                  v19 = *v11;
                }
              }

              *v16 = v19;
              *v11 = 0;
              --a1[3];
              std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<md::InjectedAsset>,void *>>>::operator()[abi:nn200100](1, v11);
              return;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v13 >= *&v2)
              {
                v13 %= *&v2;
              }
            }

            else
            {
              v13 &= v12;
            }

            if (v13 != v8)
            {
              return;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<md::InjectedAsset>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t md::Logic<md::AssetInjectionLogic,md::AssetInjectionContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD77FB76AFC10A710 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
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

uint64_t gdc::ObjectHolder<md::AssetInjectionContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::AssetInjectionContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::AssetInjectionContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::AssetInjectionContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A10410;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 40);
    v3 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C40864A76ABLL);
  }

  return a1;
}

void std::__shared_ptr_emplace<md::InjectedAsset>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<md::InjectedAsset>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A103D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = (v1 + 24);
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void md::AssetInjectionLogic::~AssetInjectionLogic(md::AssetInjectionLogic *this)
{
  *this = &unk_1F2A10268;
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::~__hash_table(this + 160);
  std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::~__hash_table(this + 120);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A10268;
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::~__hash_table(this + 160);
  std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::~__hash_table(this + 120);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<ggl::VSLibrary *,std::shared_ptr<ggl::VSLibrary>::__shared_ptr_default_delete<ggl::VSLibrary,ggl::VSLibrary>,std::allocator<ggl::VSLibrary>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::VSLibrary *,std::shared_ptr<ggl::VSLibrary>::__shared_ptr_default_delete<ggl::VSLibrary,ggl::VSLibrary>,std::allocator<ggl::VSLibrary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<ggl::FlyoverLibrary *,std::shared_ptr<ggl::FlyoverLibrary>::__shared_ptr_default_delete<ggl::FlyoverLibrary,ggl::FlyoverLibrary>,std::allocator<ggl::FlyoverLibrary>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::FlyoverLibrary *,std::shared_ptr<ggl::FlyoverLibrary>::__shared_ptr_default_delete<ggl::FlyoverLibrary,ggl::FlyoverLibrary>,std::allocator<ggl::FlyoverLibrary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<ggl::StandardLibrary *,std::shared_ptr<ggl::StandardLibrary>::__shared_ptr_default_delete<ggl::StandardLibrary,ggl::StandardLibrary>,std::allocator<ggl::StandardLibrary>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::StandardLibrary *,std::shared_ptr<ggl::StandardLibrary>::__shared_ptr_default_delete<ggl::StandardLibrary,ggl::StandardLibrary>,std::allocator<ggl::StandardLibrary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<ggl::CommonLibrary *,std::shared_ptr<ggl::CommonLibrary>::__shared_ptr_default_delete<ggl::CommonLibrary,ggl::CommonLibrary>,std::allocator<ggl::CommonLibrary>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::CommonLibrary *,std::shared_ptr<ggl::CommonLibrary>::__shared_ptr_default_delete<ggl::CommonLibrary,ggl::CommonLibrary>,std::allocator<ggl::CommonLibrary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::IconListLabelPart::layoutForStaging(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v49 = *MEMORY[0x1E69E9840];
  if (a1[86].i8[6] == 1)
  {
    v8 = &a1[72];
    v9 = a1[72];
    v10 = a1[73];
    if (v9 == v10)
    {
      v39 = a2;
      v40 = a3;
      v41 = a4;
    }

    else
    {
      do
      {
        result = (*(**v9 + 44))(*v9, v6);
        if (result != 37)
        {
          return result;
        }

        ++v9;
      }

      while (v9 != v10);
      v39 = v6;
      v40 = v5;
      v41 = v4;
      v9 = *v8;
    }

    v48 = 0;
    v46 = v47;
    v47[0] = 0;
    v45 = a1[75].i8[0];
    v43 = v9;
    v12 = *a1[73].f32;
    v44 = v12;
    v13 = v12;
    *v8 = 0;
    a1[73] = 0;
    a1[74] = 0;
    if (v9 != v12)
    {
      while (1)
      {
        v14 = *v9;
        v15 = (*(**v9 + 29))(*v9);
        if (v15 != 6)
        {
          goto LABEL_24;
        }

        v16 = v47[0];
        v17 = v47;
        v18 = v47;
        if (!v47[0])
        {
          break;
        }

        v17 = v47;
        while (1)
        {
          while (1)
          {
            v18 = v16;
            v15 = md::LabelIcon::compareImage(v14[80], *(v16[4] + 640));
            if ((v15 & 0x80000000) == 0)
            {
              break;
            }

            v16 = *v18;
            v17 = v18;
            if (!*v18)
            {
              goto LABEL_19;
            }
          }

          v15 = md::LabelIcon::compareImage(v18[4][80], v14[80]);
          if ((v15 & 0x80000000) == 0)
          {
            break;
          }

          v17 = v18 + 1;
          v16 = v18[1];
          if (!v16)
          {
            goto LABEL_19;
          }
        }

        if (!*v17)
        {
          break;
        }

        (*(*v14 + 1))(v14);
LABEL_37:
        if (++v9 == v13)
        {
          goto LABEL_38;
        }
      }

LABEL_19:
      v19 = mdm::zone_mallocator::instance(v15);
      v20 = pthread_rwlock_rdlock((v19 + 32));
      if (v20)
      {
        geo::read_write_lock::logFailure(v20, "read lock", v21);
      }

      v22 = malloc_type_zone_malloc(*v19, 0x28uLL, 0x1020040FAE78CE4uLL);
      atomic_fetch_add((v19 + 24), 1u);
      geo::read_write_lock::unlock((v19 + 32));
      v22[4] = v14;
      *v22 = 0;
      v22[1] = 0;
      v22[2] = v18;
      *v17 = v22;
      if (*v46)
      {
        v46 = *v46;
        v22 = *v17;
      }

      v15 = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v47[0], v22);
      ++v48;
      v8 = &a1[72];
LABEL_24:
      v23 = a1[73];
      v24 = a1[74];
      if (v23 >= v24)
      {
        v26 = v23 - *v8;
        if ((v26 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v27 = v24 - *v8;
        v28 = v27 >> 2;
        if (v27 >> 2 <= (v26 + 1))
        {
          v28 = v26 + 1;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v28;
        }

        v42[4] = a1 + 75;
        if (v29)
        {
          v30 = mdm::zone_mallocator::instance(v15);
          v31 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPart *>(v30, v29);
        }

        else
        {
          v31 = 0;
        }

        v33 = &v31[8 * v29];
        v32 = &v31[8 * v26];
        *v32 = v14;
        v25 = v32 + 1;
        v34 = a1[72];
        v35 = *&a1[73] - v34;
        v36 = v32 - v35;
        memcpy(v32 - v35, v34, v35);
        v37 = a1[72];
        a1[72] = v36;
        a1[73] = v25;
        v38 = a1[74];
        a1[74] = v33;
        v42[2] = v37;
        v42[3] = v38;
        v42[0] = v37;
        v42[1] = v37;
        std::__split_buffer<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator> &>::~__split_buffer(v42);
      }

      else
      {
        *v23 = v14;
        v25 = v23 + 1;
      }

      a1[73] = v25;
      goto LABEL_37;
    }

LABEL_38:
    a1[86].i8[6] = 0;
    std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v43);
    std::__tree<md::IconLabelPart *,IconLabelPartCompare,geo::allocator_adapter<md::IconLabelPart *,mdm::zone_mallocator>>::destroy(v47[0]);
    v5 = v40;
    v4 = v41;
    v6 = v39;
  }

  return md::StackLabelPart::layoutForStaging(a1, v6, v5, v4);
}

void std::__tree<md::IconLabelPart *,IconLabelPartCompare,geo::allocator_adapter<md::IconLabelPart *,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<md::IconLabelPart *,IconLabelPartCompare,geo::allocator_adapter<md::IconLabelPart *,mdm::zone_mallocator>>::destroy(*a1);
    v2 = std::__tree<md::IconLabelPart *,IconLabelPartCompare,geo::allocator_adapter<md::IconLabelPart *,mdm::zone_mallocator>>::destroy(a1[1]);
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

void md::IconListLabelPart::~IconListLabelPart(md::IconListLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

uint64_t md::GlobeRasterRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), 1, (a1 + 360), 0);
  *(a1 + 368) = result;
  return result;
}

void md::GlobeRasterRenderLayer::layout(md::GlobeRasterRenderLayer *this, const md::LayoutContext *a2)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
  (*(*this + 32))(v111, this, a2);
  v5 = **v111;
  *&v111[8] = *v111;
  operator delete(*v111);
  v6 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), v5);
  if (v6)
  {
    v7 = *(*(v6 + 16) + 8 * (v5 >> 8));
  }

  else
  {
    v7 = 0;
  }

  ggl::CommandBuffer::clearRenderItems(v7);
  *(v7 + 32) = 0;
  v8 = *(this + 44);
  ggl::FragmentedPool<ggl::RenderItem>::pushAll(v8[1]);
  v9 = *v8;
  v10 = *(*v8 + 4);
  v11 = *(v9 + 5);
  if (v10 != v11)
  {
    do
    {
      v12 = *v10++;
      *v111 = v12;
      std::vector<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v9, v111);
    }

    while (v10 != v11);
    v10 = *(v9 + 4);
    v11 = *(v9 + 5);
  }

  if (v10 != v11)
  {
    *(v9 + 5) = v10;
  }

  if (*(this + 34) != *(this + 35))
  {
    v13 = *(gdc::Context::get<md::StyleLogicContext>(*(a2 + 1)) + 72);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v105, *(*(this + 44) + 40));
    v14 = *(a2 + 1);
    v15 = md::LayoutContext::get<md::CameraContext>(v14);
    v16 = 0;
    v17 = (v15 + 552);
    do
    {
      v19 = *v17;
      v18 = v17[1];
      v17 += 2;
      *&v111[v16] = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v18);
      v16 += 16;
    }

    while (v16 != 64);
    v20 = v106;
    *v106 = *v111;
    *(v20 + 16) = *&v111[16];
    *(v20 + 32) = *&v111[32];
    *(v20 + 48) = *&v111[48];
    v21 = md::LayoutContext::get<md::LightingLogicContext>(v14);
    if (v21)
    {
      v22 = v21[13].f64[0];
      *(v20 + 96) = vcvt_f32_f64(v21[12]);
      *(v20 + 104) = v22;
      v23 = LODWORD(v21[28].f64[1]);
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x1E69A1B48]);
      *v111 = 0;
      *&v107 = 0;
      v103[0] = 0.0;
      [v24 calculateGeocentricDirectionForSunX:v111 Y:&v107 Z:v103];
      v25 = *v111;
      v26 = *&v107;
      v27 = v103[0];
      v28 = v106;
      *(v106 + 96) = v25;
      *(v28 + 100) = v26;
      *(v28 + 104) = v27;

      v23 = 0;
      v20 = v106;
    }

    *(v20 + 112) = v23;
    v29 = **(a2 + 9);
    v30 = gdc::Camera::cameraFrame(v15);
    v31 = 0;
    _NF = *(v30 + 24) < 6378137.0;
    DWORD2(v107) = 1065353216;
    v33 = _NF;
    *&v107 = 0x3F4CCCCD3F333333;
    v34 = 1.0;
    if (((v13 == 1) & v33) != 0)
    {
      v34 = -1.0;
    }

    if (v29)
    {
      v34 = 0.0;
    }

    do
    {
      *&v111[v31] = *(&v107 + v31) * v34;
      v31 += 4;
    }

    while (v31 != 12);
    v35 = *&v111[8];
    *(v20 + 64) = *v111;
    *(v20 + 72) = v35;
    v36 = gdc::CameraView::position(v15);
    v37 = 0;
    v38 = 0.0;
    do
    {
      v38 = v38 + *(v36 + v37) * *(v36 + v37);
      v37 += 8;
    }

    while (v37 != 24);
    v107 = *v36;
    *&v108 = *(v36 + 16);
    geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(v111, &v107);
    v39 = sqrt(v38) + -6371008.77;
    v40 = fmaxf(v39, 0.0);
    v41 = *&v111[16];
    v42 = fmaxf(v41, 1.0);
    v43 = v42;
    v44 = sqrt((v42 * v42) + v42 * 12742017.5);
    v45 = fmin(fmax(v43, 0.0), 8000.0);
    v46 = (v44 - v40) + (v45 * 0.000125 * (v45 * 0.000125) * (v45 * -0.00025 + 3.0) + -1.0) * ((v44 - v40) * 0.5);
    *(v20 + 80) = v40;
    *(v20 + 84) = v46;
    ggl::BufferMemory::~BufferMemory(v105);
    v47 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v111, *(*(this + 44) + 56));
    **&v111[40] = xmmword_1B33B1420;
    ggl::BufferMemory::~BufferMemory(v47);
    v49 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v48, *(*(this + 44) + 72));
    **&v111[40] = xmmword_1B33B1430;
    ggl::BufferMemory::~BufferMemory(v49);
    v51 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v50, *(*(this + 44) + 88));
    **&v111[40] = xmmword_1B33B0720;
    ggl::BufferMemory::~BufferMemory(v51);
    v52 = 0;
    memset(&v111[40], 0, 32);
    v112 = 0;
    v115 = 0u;
    v114 = 0u;
    memset(&v111[8], 0, 32);
    *v111 = 0x415854A640000000;
    *&v111[40] = 0x415854A640000000;
    v116 = 0x3FF0000000000000;
    v113 = 0x41583FC4141C97D0;
    v53 = (v4 + 3160);
    do
    {
      v54 = 0;
      v55 = v111;
      do
      {
        v56 = 0;
        v57 = 0.0;
        v58 = v53;
        do
        {
          v59 = *v58;
          v58 += 4;
          v57 = v57 + *&v55[v56] * v59;
          v56 += 8;
        }

        while (v56 != 32);
        *&v105[4 * v54++ + v52] = v57;
        v55 += 32;
      }

      while (v54 != 4);
      ++v52;
      ++v53;
    }

    while (v52 != 4);
    v60 = 0;
    v61 = v105;
    do
    {
      v63 = *v61;
      v62 = *(v61 + 1);
      v61 += 4;
      *(&v107 + v60) = vcvt_hight_f32_f64(vcvt_f32_f64(v63), v62);
      v60 += 16;
    }

    while (v60 != 64);
    v64 = *(*(this + 44) + 24);
    *(v7 + 32) = *(this + 45);
    v64[55] = *(this + 368);
    v65 = *(this + 34);
    v66 = *(this + 35);
    if (v65 != v66)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v102 = _Q0;
      do
      {
        v71 = *v65;
        v72 = *(*(*v65 + 392) + 728);
        if (v72)
        {
          v73 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(this + 44) + 8));
          *(v73 + 3) = v64;
          v74 = *(this + 44);
          *(v73 + 8) = v74[2];
          v75 = *v74;
          v77 = **v74;
          v76 = (*v74)[1];
          if (v76 == v77)
          {
            v79 = v75[11];
            if (!v79)
            {
              goto LABEL_55;
            }

            v78 = (*(*v79 + 48))(v79);
            *&v103[0] = v78;
          }

          else
          {
            v78 = *(v76 - 8);
            *&v103[0] = v78;
            v75[1] = v76 - 8;
          }

          std::vector<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v75 + 4), v103);
          v105[0] = v78;
          v80 = v75[15];
          if (!v80)
          {
LABEL_55:
            v101 = std::__throw_bad_function_call[abi:nn200100]();

            ggl::BufferMemory::~BufferMemory(v105);
            _Unwind_Resume(v101);
          }

          (*(*v80 + 48))(v80, v105);
          v81 = *(v78[17] + 16);
          ggl::BufferMemory::BufferMemory(v103);
          ggl::ResourceAccessor::accessConstantData(v105, 0, v81, 1);
          ggl::BufferMemory::operator=(v103, v105);
          ggl::BufferMemory::~BufferMemory(v105);
          v82 = *(v71 + 25);
          v83 = *(v71 + 24);
          v84 = v104;
          *(v104 + 80) = v83;
          *(v84 + 48) = v110;
          *(v84 + 32) = v109;
          *(v84 + 16) = v108;
          *v84 = v107;
          v85 = vrev64_s32(*(v71 + 28));
          v86.i64[0] = v85.u32[0];
          v86.i64[1] = v85.u32[1];
          v87 = vdivq_f64(v102, vdupq_lane_s64(COERCE__INT64((1 << v82)), 0));
          v88 = vmulq_f64(vcvtq_f64_u64(v86), v87);
          v89 = vadd_s32(v85, 0x100000001);
          v86.i64[0] = v89.u32[0];
          v86.i64[1] = v89.u32[1];
          v90 = vmulq_f64(vcvtq_f64_u64(v86), v87);
          *&v87.f64[0] = vcvt_f32_f64(v88);
          *(v84 + 64) = vsub_f32(vcvt_f32_f64(v90), *&v87.f64[0]);
          *(v84 + 72) = v87.f64[0];
          v91 = 88;
          if (v83 == 5)
          {
            v91 = 72;
          }

          _ZF = v83 == 2;
          v92 = 56;
          if (!_ZF)
          {
            v92 = v91;
          }

          v93 = (*(this + 44) + v92);
          v94 = v78[17];
          *(v94 + 40) = 0;
          v95 = *v93;
          *(v94 + 32) = *v93;
          v96 = v78[29];
          v97 = v93[1];
          if (v97)
          {
            atomic_fetch_add_explicit((v97 + 8), 1uLL, memory_order_relaxed);
          }

          v98 = *(v96 + 40);
          *(v96 + 32) = v95;
          *(v96 + 40) = v97;
          if (v98)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v98);
          }

          *(v78[21] + 8) = v72;
          v99 = *(this + 44);
          v100 = *(v99 + 112);
          v105[0] = *(v99 + 104);
          v105[1] = v100;
          if (v100)
          {
            atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(v78, v105);
            std::__shared_weak_count::__release_shared[abi:nn200100](v100);
          }

          else
          {
            ggl::PipelineSetup::setState(v78, v105);
          }

          *(v73 + 4) = v78;
          ggl::RenderItem::assertValid(v73);
          v105[0] = v73;
          std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v7 + 72), v105);
          ggl::BufferMemory::~BufferMemory(v103);
        }

        ++v65;
      }

      while (v65 != v66);
    }
  }
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GlobeTexturedPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GlobeTexturedPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GlobeTexturedPipelineSetup *>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<ggl::DaVinci::GlobeTexturedPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A10B28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::DaVinci::S2Transform>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::S2Transform>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A10A88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A19458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1FAD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void LabelPlacementToShortString(std::string *a1, unsigned __int8 *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v4 = *a2;
  if (v4 > 4)
  {
    if (*a2 <= 0x64u)
    {
      if (v4 == 5)
      {
        v5 = "FeatNrml";
        goto LABEL_24;
      }

      if (v4 == 100)
      {
        v5 = "ScEx";
        goto LABEL_24;
      }
    }

    else
    {
      switch(v4)
      {
        case 'e':
          v5 = "TLnOff";
          goto LABEL_24;
        case 'f':
          v5 = "RtOff";
          goto LABEL_24;
        case 'g':
          v5 = "Poly";
          goto LABEL_24;
      }
    }
  }

  else
  {
    if (*a2 <= 1u)
    {
      if (*a2)
      {
        v5 = "Sc";
      }

      else
      {
        v5 = "Df";
      }

      goto LABEL_24;
    }

    switch(v4)
    {
      case 2u:
        v5 = "Ca";
        goto LABEL_24;
      case 3u:
        v5 = "CaEx";
        goto LABEL_24;
      case 4u:
        v5 = "AutoOff";
        goto LABEL_24;
    }
  }

  v5 = "";
LABEL_24:
  std::string::basic_string[abi:nn200100]<0>(&__p, v5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, ":", 1uLL);
  v9 = a2[3];
  if (v9 <= 4)
  {
    if (a2[3] <= 1u)
    {
      if (a2[3])
      {
        v10 = "TR";
      }

      else
      {
        v10 = "R";
      }

      goto LABEL_57;
    }

    switch(v9)
    {
      case 2u:
        v10 = "T";
        goto LABEL_57;
      case 3u:
        v10 = "TL";
        goto LABEL_57;
      case 4u:
        v10 = "L";
        goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (a2[3] > 7u)
  {
    switch(v9)
    {
      case 8u:
        v10 = "C";
        goto LABEL_57;
      case 9u:
        v10 = "None";
        goto LABEL_57;
      case 0xAu:
        LOBYTE(v8) = a2[4];
        std::to_string(&__p, (v8 * 1.4118));
        goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (v9 == 5)
  {
    v10 = "BL";
    goto LABEL_57;
  }

  if (v9 == 6)
  {
    v10 = "B";
    goto LABEL_57;
  }

  if (v9 != 7)
  {
LABEL_56:
    v10 = "";
    goto LABEL_57;
  }

  v10 = "BR";
LABEL_57:
  std::string::basic_string[abi:nn200100]<0>(&__p, v10);
LABEL_58:
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v11, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, ":", 1uLL);
  v13 = a2[1];
  if (v13 > 0xB)
  {
    if (a2[1] <= 0xFu)
    {
      if (v13 == 12)
      {
        v14 = "Ang";
        goto LABEL_89;
      }

      if (v13 == 13)
      {
        v14 = "HOrAng";
        goto LABEL_89;
      }
    }

    else
    {
      switch(v13)
      {
        case 0x10u:
          v14 = "Pe";
          goto LABEL_89;
        case 0x20u:
          v14 = "AutoV";
          goto LABEL_89;
        case 0x80u:
          v14 = "Df";
          goto LABEL_89;
      }
    }
  }

  else
  {
    if (a2[1] <= 1u)
    {
      if (a2[1])
      {
        v14 = "H";
      }

      else
      {
        v14 = "No";
      }

      goto LABEL_89;
    }

    switch(v13)
    {
      case 2u:
        v14 = "V";
        goto LABEL_89;
      case 4u:
        v14 = "AngU";
        goto LABEL_89;
      case 8u:
        v14 = "AngD";
        goto LABEL_89;
    }
  }

  v14 = "";
LABEL_89:
  std::string::basic_string[abi:nn200100]<0>(&__p, v14);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v15, v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B2EECA30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~PolylineOverlayLayer(void *a1)
{
  *a1 = &unk_1F2A10BA0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A10BC0;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[18];
  a1[18] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A10BA0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A10BA0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);
}

void *md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~PolylineOverlayLayer(void *a1)
{
  *a1 = &unk_1F2A10BA0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);
}

void md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~PolylineOverlayLayer(void *a1)
{
  *a1 = &unk_1F2A10BE0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A10C00;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[18];
  a1[18] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A10BE0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A10BE0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);
}

void *md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~PolylineOverlayLayer(void *a1)
{
  *a1 = &unk_1F2A10BE0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);
}

void std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__vdeallocate(mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 1);
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::reset[abi:nn200100](--v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    *(a1 + 1) = v1;
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(v5, v4);
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }
}

void std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::reset[abi:nn200100](--v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(v6, v4);
  }
}

void std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::reset[abi:nn200100](uint64_t (****a1)(void))
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PolylineOverlayRibbon>(v3, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PolylineOverlayRibbon>(uint64_t a1, void *a2)
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

uint64_t md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(uint64_t result, uint64_t *a2, float *a3)
{
  v3 = 0;
  v4 = a3[15];
  v5 = *a3;
  v6 = *a2;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = fminf(fmaxf(a3[3], 0.0), 1.0);
    *v6 = (fminf(fmaxf(a3[2], 0.0), 1.0) * 65535.0);
    *(v6 + 2) = (v9 * 65535.0);
    v10.i64[0] = *&a3[2 * v3 + 4];
    v11 = vabs_f32(*v10.f32);
    v12 = fmaxf(v11.f32[0], v11.f32[1]);
    if (v12 > 4.0)
    {
      *v10.f32 = vmul_n_f32(*v10.f32, 4.0 / v12);
    }

    v10.i64[1] = *&a3[2 * v3 + 10];
    v13.i64[0] = 0xBF000000BF000000;
    v13.i64[1] = 0xBF000000BF000000;
    *(v6 + 4) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v13, xmmword_1B33B0C70, v10)));
    v14 = *(result + 8);
    v15 = *(v14 + 104) + *(v14 + 112) * v4;
    *(v6 + 12) = v15;
    v16 = *(v14 + 80);
    if (v16)
    {
      v17 = *(v16 + 4 * v5);
    }

    else
    {
      v17 = 0;
    }

    v7 = 0;
    *(v6 + 16) = v17;
    v6 += 20;
    *a2 = v6;
    v3 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A11038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, int **a3)
{
  v6 = a2;
  v7 = *(a1 + 1);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = a2;
      if (v7 <= a2)
      {
        v3 = a2 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = v10[1];
          if (v11 == a2)
          {
            if (*(v10 + 4) == a2)
            {
              return v10;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v3)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  v12 = mdm::zone_mallocator::instance(a1);
  v13 = pthread_rwlock_rdlock((v12 + 32));
  if (v13)
  {
    geo::read_write_lock::logFailure(v13, "read lock", v14);
  }

  v10 = malloc_type_zone_malloc(*v12, 0x38uLL, 0x10200408A1E2E81uLL);
  atomic_fetch_add((v12 + 24), 1u);
  geo::read_write_lock::unlock((v12 + 32));
  *v10 = 0;
  v10[1] = v6;
  v16 = **a3;
  v10[3] = 0;
  *(v10 + 4) = v16;
  v10[4] = 0;
  v10[5] = 0;
  v17 = (*(a1 + 5) + 1);
  v18 = a1[12];
  if (!v7 || (v18 * v7) < v17)
  {
    v19 = 1;
    if (v7 >= 3)
    {
      v19 = (v7 & (v7 - 1)) != 0;
    }

    v20 = v19 | (2 * v7);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    if (v22 == 1)
    {
      v22 = 2;
    }

    else if ((v22 & (v22 - 1)) != 0)
    {
      prime = std::__next_prime(v22);
      v22 = prime;
    }

    v7 = *(a1 + 1);
    if (v22 > v7)
    {
      goto LABEL_32;
    }

    if (v22 < v7)
    {
      prime = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (v7 < 3 || (v31 = vcnt_s8(v7), v31.i16[0] = vaddlv_u8(v31), v31.u32[0] > 1uLL))
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

      if (v22 <= prime)
      {
        v22 = prime;
      }

      if (v22 >= v7)
      {
        v7 = *(a1 + 1);
      }

      else
      {
        if (v22)
        {
LABEL_32:
          v23 = mdm::zone_mallocator::instance(prime);
          v24 = pthread_rwlock_rdlock((v23 + 32));
          if (v24)
          {
            geo::read_write_lock::logFailure(v24, "read lock", v25);
          }

          v26 = malloc_type_zone_malloc(*v23, 8 * v22, 0x2004093837F09uLL);
          atomic_fetch_add((v23 + 24), 1u);
          geo::read_write_lock::unlock((v23 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> **,0>(a1, v26);
          v27 = 0;
          *(a1 + 1) = v22;
          do
          {
            *(*a1 + 8 * v27++) = 0;
          }

          while (v22 != v27);
          v28 = *(a1 + 3);
          if (v28)
          {
            v29 = v28[1];
            v30 = vcnt_s8(v22);
            v30.i16[0] = vaddlv_u8(v30);
            if (v30.u32[0] > 1uLL)
            {
              if (v29 >= v22)
              {
                v29 %= v22;
              }
            }

            else
            {
              v29 &= v22 - 1;
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
                  if (v34 >= v22)
                  {
                    v34 %= v22;
                  }
                }

                else
                {
                  v34 &= v22 - 1;
                }

                if (v34 != v29)
                {
                  v35 = *a1;
                  if (!*(*a1 + 8 * v34))
                  {
                    *(v35 + 8 * v34) = v28;
                    goto LABEL_56;
                  }

                  *v28 = *v33;
                  *v33 = **(v35 + 8 * v34);
                  **(v35 + 8 * v34) = v33;
                  v33 = v28;
                }

                v34 = v29;
LABEL_56:
                v28 = v33;
                v33 = *v33;
                v29 = v34;
              }

              while (v33);
            }
          }

          v7 = v22;
          goto LABEL_60;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> **,0>(a1, 0);
        v7 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_60:
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v36 = *a1;
  v37 = *(*a1 + 8 * v3);
  if (v37)
  {
    *v10 = *v37;
LABEL_73:
    *v37 = v10;
    goto LABEL_74;
  }

  *v10 = *(a1 + 3);
  *(a1 + 3) = v10;
  *(v36 + 8 * v3) = a1 + 6;
  if (*v10)
  {
    v38 = *(*v10 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v38 >= v7)
      {
        v38 %= v7;
      }
    }

    else
    {
      v38 &= v7 - 1;
    }

    v37 = (*a1 + 8 * v38);
    goto LABEL_73;
  }

LABEL_74:
  ++*(a1 + 5);
  return v10;
}

void sub_1B2EED8B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::read_write_lock::unlock((v3 + 32));
  std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  v6 = mdm::zone_mallocator::instance(v5);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>>(v6, v2);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v22[4] = result + 24;
    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(result);
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(v14, v13);
      v8 = *v3;
      v9 = *(v3 + 1) - *v3;
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v10];
    v17 = &v15[8 * v13];
    v18 = *a2;
    *a2 = 0;
    v19 = &v16[-8 * (v9 >> 3)];
    *v16 = v18;
    v7 = v16 + 8;
    memcpy(v19, v8, v9);
    v20 = *v3;
    *v3 = v19;
    *(v3 + 1) = v7;
    v21 = *(v3 + 2);
    *(v3 + 2) = v17;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  *(v3 + 1) = v7;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::batch(std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::PolylineOverlayRibbonSection>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v117 = a2;
    v119 = a2 - 1;
    v114 = a2 - 3;
    v115 = a2 - 2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = a2 - v6;
          if (v8 > 2)
          {
            switch(v8)
            {
              case 3:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v119);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v119);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v6 + 3, v119);
            }
          }

          else
          {
            if (v8 < 2)
            {
              return result;
            }

            if (v8 == 2)
            {
              v41 = *v119;
              v42 = ggl::CullingGrid::sortOrderForCells(*(*v119 + 96));
              v43 = *v6;
              result = ggl::CullingGrid::sortOrderForCells(*(*v6 + 96));
              if (v42 < result)
              {
                *v6 = v41;
                *v119 = v43;
              }

              return result;
            }
          }

          if (v8 <= 23)
          {
            v44 = v6 + 1;
            v46 = v6 == a2 || v44 == a2;
            if (a4)
            {
              if (!v46)
              {
                v47 = 0;
                v48 = v6;
                do
                {
                  v49 = v44;
                  v50 = v48[1];
                  v51 = ggl::CullingGrid::sortOrderForCells(*(v50 + 96));
                  result = ggl::CullingGrid::sortOrderForCells(*(*v48 + 96));
                  if (v51 < result)
                  {
                    *v49 = 0;
                    v124 = v50;
                    v52 = *v48;
                    v53 = v47;
                    while (1)
                    {
                      *(v7 + v53) = 0;
                      std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100]((v7 + v53 + 8), v52);
                      v54 = v124;
                      if (!v53)
                      {
                        break;
                      }

                      v55 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                      v52 = *(v7 + v53 - 8);
                      v53 -= 8;
                      if (v55 >= ggl::CullingGrid::sortOrderForCells(*(v52 + 96)))
                      {
                        v56 = (v7 + v53 + 8);
                        goto LABEL_84;
                      }
                    }

                    v56 = v7;
LABEL_84:
                    v124 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v56, v54);
                    result = std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                    a2 = v117;
                  }

                  v44 = v49 + 1;
                  v47 += 8;
                  v48 = v49;
                }

                while (v49 + 1 != a2);
              }
            }

            else if (!v46)
            {
              do
              {
                v106 = v44;
                v107 = v7[1];
                v108 = ggl::CullingGrid::sortOrderForCells(*(v107 + 96));
                result = ggl::CullingGrid::sortOrderForCells(*(*v7 + 96));
                if (v108 < result)
                {
                  *v106 = 0;
                  v124 = v107;
                  v109 = *v7;
                  v110 = v106;
                  v111 = v106;
                  do
                  {
                    *--v111 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v110, v109);
                    v112 = v124;
                    v113 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                    v109 = *(v110 - 2);
                    v110 = v111;
                  }

                  while (v113 < ggl::CullingGrid::sortOrderForCells(*(v109 + 96)));
                  v124 = 0;
                  std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v111, v112);
                  result = std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                }

                v44 = v106 + 1;
                v7 = v106;
              }

              while (v106 + 1 != a2);
            }

            return result;
          }

          v122 = v6;
          if (!a3)
          {
            if (v6 != a2)
            {
              v57 = (v8 - 2) >> 1;
              v120 = v57;
              do
              {
                v58 = v57;
                if (v120 >= v57)
                {
                  v59 = (2 * v57) | 1;
                  v60 = &v122[v59];
                  if (2 * v57 + 2 >= v8)
                  {
                    v65 = *v60;
                  }

                  else
                  {
                    v61 = *v60;
                    v62 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                    v63 = v60[1];
                    v64 = ggl::CullingGrid::sortOrderForCells(*(v63 + 96));
                    if (v62 >= v64)
                    {
                      v65 = v61;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    if (v62 < v64)
                    {
                      ++v60;
                      v59 = 2 * v58 + 2;
                    }
                  }

                  v66 = &v122[v58];
                  v67 = ggl::CullingGrid::sortOrderForCells(*(v65 + 96));
                  v68 = *v66;
                  result = ggl::CullingGrid::sortOrderForCells(*(*v66 + 96));
                  if (v67 >= result)
                  {
                    *v66 = 0;
                    v124 = v68;
                    v69 = *v60;
                    while (1)
                    {
                      v70 = v60;
                      *v60 = 0;
                      std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v66, v69);
                      if (v120 < v59)
                      {
                        break;
                      }

                      v71 = (2 * v59) | 1;
                      v60 = &v122[v71];
                      v72 = 2 * v59 + 2;
                      if (v72 >= v8)
                      {
                        v69 = *v60;
                        v59 = (2 * v59) | 1;
                      }

                      else
                      {
                        v73 = *v60;
                        v74 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                        v75 = v60[1];
                        v76 = ggl::CullingGrid::sortOrderForCells(*(v75 + 96));
                        v77 = v74 >= v76;
                        if (v74 >= v76)
                        {
                          v69 = v73;
                        }

                        else
                        {
                          v69 = v75;
                        }

                        if (v77)
                        {
                          v59 = v71;
                        }

                        else
                        {
                          ++v60;
                          v59 = v72;
                        }
                      }

                      v78 = ggl::CullingGrid::sortOrderForCells(*(v69 + 96));
                      v79 = v124;
                      v66 = v70;
                      if (v78 < ggl::CullingGrid::sortOrderForCells(*(v124 + 96)))
                      {
                        goto LABEL_112;
                      }
                    }

                    v79 = v124;
LABEL_112:
                    a2 = v117;
                    v124 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v70, v79);
                    result = std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                  }
                }

                v57 = v58 - 1;
              }

              while (v58);
              v80 = v122;
              do
              {
                if (v8 >= 2)
                {
                  v81 = 0;
                  v82 = *v80;
                  *v80 = 0;
                  v118 = a2;
                  v121 = v82;
                  v123 = v82;
                  v83 = v80;
                  do
                  {
                    v84 = &v83[v81];
                    v85 = v84 + 1;
                    v86 = (2 * v81) | 1;
                    v81 = 2 * v81 + 2;
                    if (v81 >= v8)
                    {
                      v93 = *v85;
                      v81 = v86;
                    }

                    else
                    {
                      v87 = v84[1];
                      v88 = ggl::CullingGrid::sortOrderForCells(*(v87 + 96));
                      v91 = v84[2];
                      v90 = v84 + 2;
                      v89 = v91;
                      v92 = ggl::CullingGrid::sortOrderForCells(*(v91 + 96));
                      if (v88 >= v92)
                      {
                        v93 = v87;
                      }

                      else
                      {
                        v93 = v89;
                      }

                      if (v88 >= v92)
                      {
                        v81 = v86;
                      }

                      else
                      {
                        v85 = v90;
                      }
                    }

                    *v85 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v83, v93);
                    v83 = v85;
                  }

                  while (v81 <= ((v8 - 2) >> 1));
                  a2 = v118;
                  v94 = v118 - 1;
                  if (v85 == v118 - 1)
                  {
                    v123 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v85, v121);
                    v80 = v122;
                  }

                  else
                  {
                    v95 = *v94;
                    *v94 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v85, v95);
                    v123 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v94, v121);
                    v80 = v122;
                    v96 = (v85 - v122 + 8) >> 3;
                    v97 = v96 < 2;
                    v98 = v96 - 2;
                    if (!v97)
                    {
                      v99 = v98 >> 1;
                      v100 = &v122[v98 >> 1];
                      v101 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                      v102 = *v85;
                      if (v101 < ggl::CullingGrid::sortOrderForCells(*(*v85 + 96)))
                      {
                        *v85 = 0;
                        v103 = *v100;
                        do
                        {
                          v104 = v100;
                          *v100 = 0;
                          std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v85, v103);
                          if (!v99)
                          {
                            break;
                          }

                          v99 = (v99 - 1) >> 1;
                          v100 = &v122[v99];
                          v103 = *v100;
                          v105 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                          v85 = v104;
                        }

                        while (v105 < ggl::CullingGrid::sortOrderForCells(*(v102 + 96)));
                        v124 = 0;
                        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v104, v102);
                        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                        a2 = v118;
                      }
                    }
                  }

                  result = std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v123, 0);
                }

                --a2;
                v97 = v8-- > 2;
              }

              while (v97);
            }

            return result;
          }

          v9 = v8 >> 1;
          v10 = &v6[v8 >> 1];
          if (v8 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(&v6[v8 >> 1], v6, v119);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, &v6[v8 >> 1], v119);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 1, v10 - 1, v115);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 2, &v6[v9 + 1], v114);
            v7 = v6;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v10 - 1, &v6[v8 >> 1], &v6[v9 + 1]);
            v11 = *v6;
            *v6 = *v10;
            *v10 = v11;
          }

          --a3;
          v12 = *v7;
          if (a4)
          {
            break;
          }

          v14 = ggl::CullingGrid::sortOrderForCells(*(*(v7 - 1) + 96));
          v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
          v77 = v14 >= v13;
          v7 = v6;
          if (!v77)
          {
            goto LABEL_18;
          }

          *v6 = 0;
          v124 = v12;
          if (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v119 + 96)))
          {
            v31 = v6 + 1;
            do
            {
              v6 = v31;
              if (v31 >= a2)
              {
                break;
              }

              ++v31;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v6 + 96)));
          }

          else
          {
            do
            {
              v30 = v6[1];
              ++v6;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(v30 + 96)));
          }

          v32 = a2;
          if (v6 < a2)
          {
            v32 = a2;
            do
            {
              v33 = *--v32;
            }

            while (v13 < ggl::CullingGrid::sortOrderForCells(*(v33 + 96)));
          }

          if (v6 < v32)
          {
            v34 = *v6;
            v35 = *v32;
            do
            {
              *v6 = v35;
              *v32 = v34;
              v12 = v124;
              v36 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
              do
              {
                v37 = v6[1];
                ++v6;
                v34 = v37;
              }

              while (v36 >= ggl::CullingGrid::sortOrderForCells(*(v37 + 96)));
              do
              {
                v38 = *--v32;
                v35 = v38;
              }

              while (v36 < ggl::CullingGrid::sortOrderForCells(*(v38 + 96)));
            }

            while (v6 < v32);
          }

          v39 = v6 - 1;
          if (v6 - 1 != v122)
          {
            v40 = *v39;
            *v39 = 0;
            std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v122, v40);
            v12 = v124;
          }

          v124 = 0;
          std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v6 - 1, v12);
          result = std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
          a4 = 0;
        }

        v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
LABEL_18:
        *v7 = 0;
        v124 = v12;
        v15 = v7;
        do
        {
          v16 = v15;
          v18 = v15[1];
          ++v15;
          v17 = v18;
        }

        while (ggl::CullingGrid::sortOrderForCells(*(v18 + 96)) < v13);
        v19 = a2;
        if (v16 == v122)
        {
          v19 = a2;
          do
          {
            if (v15 >= v19)
            {
              break;
            }

            v21 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v21 + 96)) >= v13);
        }

        else
        {
          do
          {
            v20 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v20 + 96)) >= v13);
        }

        if (v15 < v19)
        {
          v22 = *v19;
          v23 = v15;
          v24 = v19;
          do
          {
            *v23 = v22;
            *v24 = v17;
            v12 = v124;
            v25 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
            do
            {
              v16 = v23;
              v26 = v23[1];
              ++v23;
              v17 = v26;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v26 + 96)) < v25);
            do
            {
              v27 = *--v24;
              v22 = v27;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v27 + 96)) >= v25);
          }

          while (v23 < v24);
        }

        if (v16 != v122)
        {
          v28 = *v16;
          *v16 = 0;
          std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v122, v28);
          v12 = v124;
        }

        v124 = 0;
        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v16, v12);
        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
        a2 = v117;
        if (v15 >= v19)
        {
          break;
        }

LABEL_37:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::batch(std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::PolylineOverlayRibbonSection>*,false>(v122, v16, a3, a4 & 1);
        a4 = 0;
        v6 = v16 + 1;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::batch(std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::PolylineOverlayRibbonSection>*>(v122, v16);
      v6 = v16 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::batch(std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::PolylineOverlayRibbonSection>*>(v16 + 1, v117);
      if (result)
      {
        break;
      }

      if ((v29 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    a2 = v16;
    v6 = v122;
    if ((v29 & 1) == 0)
    {
      continue;
    }

    return result;
  }
}