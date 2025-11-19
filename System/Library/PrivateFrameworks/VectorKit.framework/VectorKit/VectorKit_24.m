uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DataForCommandBuffer>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DataForCommandBuffer>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[468];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20DataForCommandBufferEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4FFE0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::vector<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *>(v2, v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20DataForCommandBufferEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4FFE0;
  a2[1] = v2;
  return result;
}

void *ggl::MetalResourceManager::newLibrary(ggl::MetalResourceManager *this, const ggl::ShaderLibrary *a2)
{
  v5 = *(a2 + 26);
  v4 = *(a2 + 27);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v5 + 12);
  if (v6 == 1)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:*(*(v5 + 16) + 8) length:*(*(v5 + 16) + 16) encoding:4];
    v16 = objc_alloc_init(MEMORY[0x1E6974020]);
    [v16 setMathMode:2];
    if (*(this + 33))
    {
      v17 = *(this + 33);
    }

    else
    {
      v17 = 131076;
    }

    [v16 setLanguageVersion:v17];
    v18 = *(*(this + 32) + 104);
    v32 = 0;
    v10 = [v18 newLibraryWithSource:v15 options:v16 error:&v32];
    v19 = v32;

    if (v19)
    {
      v20 = **(a2 + 5);
      v21 = [v19 localizedDescription];
      NSLog(@" error for library from source '%s': %@", v20, v21);
    }
  }

  else
  {
    if (v6)
    {
      goto LABEL_10;
    }

    v7 = *(v5 + 88);
    if (v7 != 1)
    {
      if (!v7)
      {
        v8 = dispatch_data_create(*(*(v5 + 16) + 8), *(*(v5 + 16) + 16), 0, 0);
        v9 = *(*(this + 32) + 104);
        v34 = 0;
        v10 = [v9 newLibraryWithData:v8 error:&v34];
        v11 = v34;

        if (v11)
        {
          v12 = **(a2 + 5);
          v13 = [v11 localizedDescription];
          NSLog(@"Compiler error for raw data library '%s': %@", v12, v13);
        }

        goto LABEL_17;
      }

LABEL_10:
      v10 = 0;
      goto LABEL_22;
    }

    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v5 + 96)];
    v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:v26];
    v28 = *(*(this + 32) + 104);
    v33 = 0;
    v10 = [v28 newDefaultLibraryWithBundle:v27 error:&v33];
    v29 = v33;

    if (v29)
    {
      v30 = **(a2 + 5);
      v31 = [v29 localizedDescription];
      NSLog(@"Compiler error for library from bundle '%s': %@", v30, v31);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

LABEL_17:
  if (!v10)
  {
LABEL_22:
    v23 = 0;
    if (!v4)
    {
      goto LABEL_24;
    }

LABEL_23:
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    goto LABEL_24;
  }

  v22 = ggl::zone_mallocator::instance(v14);
  v23 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v22, 0x28uLL);
  *v23 = 0;
  *(v23 + 4) = 769;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = 0;
  objc_storeStrong(v23 + 4, v10);
  ggl::RenderDataHolder::setRenderResource(a2, this, v23);
  v24 = *(v5 + 16);
  *(v5 + 16) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  ggl::ResourceManager::_addResourceStat(this, "Library", 0x6E3DA12000000007uLL, 0);
  if (v4)
  {
    goto LABEL_23;
  }

LABEL_24:

  return v23;
}

void sub_1B29598CC(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::MapEngine::runUpdatePhase(double,BOOL)::$_1,std::allocator<md::MapEngine::runUpdatePhase(double,BOOL)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A26688;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void *ggl::MetalResourceManager::newShaderFunction(ggl::MetalResourceManager *this, const ggl::ShaderFunction *a2, int a3, int a4, unint64_t a5)
{
  v52[19] = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 6);
  v11 = v10[3];
  if (!v11)
  {
    v11 = ggl::MetalResourceManager::newLibrary(this, *(a2 + 6));
    if (!v11)
    {
      __p[0] = 0;
      __p[1] = 0;
      v41 = 0;
      if (!a4)
      {
        v20 = __p;
LABEL_56:
        NSLog(@"Failed to create library for function '%s'%s", *(*(a2 + 5) + 8), v20);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }

        return 0;
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v43);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, " with constants:", 16);
      MEMORY[0x1B8C61CF0](&v44, a5);
      if ((v51 & 0x10) != 0)
      {
        v34 = v50;
        if (v50 < v47)
        {
          v50 = v47;
          v34 = v47;
        }

        locale = v46[4].__locale_;
      }

      else
      {
        if ((v51 & 8) == 0)
        {
          v19 = 0;
          HIBYTE(v39) = 0;
LABEL_50:
          *(&__dst + v19) = 0;
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = __dst;
          v41 = v39;
          v43[0] = *MEMORY[0x1E69E54D8];
          v36 = *(MEMORY[0x1E69E54D8] + 72);
          *(v43 + *(v43[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
          v44 = v36;
          v45 = MEMORY[0x1E69E5548] + 16;
          if (v49 < 0)
          {
            operator delete(v48);
          }

          v45 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v46);
          std::iostream::~basic_iostream();
          MEMORY[0x1B8C620C0](v52);
          v20 = __p;
          if (v41 < 0)
          {
            v20 = __p[0];
          }

          goto LABEL_56;
        }

        locale = v46[1].__locale_;
        v34 = v46[3].__locale_;
      }

      v19 = v34 - locale;
      if ((v34 - locale) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v39) = v34 - locale;
      if (v19)
      {
        memmove(&__dst, locale, v19);
      }

      goto LABEL_50;
    }
  }

  v12 = v10[26];
  v13 = v10[27];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12 || *(v12 + 8))
  {
    goto LABEL_7;
  }

  v15 = *(v12 + 24);
  v16 = *(v12 + 32);
  if (v15 == v16)
  {
LABEL_14:
    v18 = *(v12 + 56);
  }

  else
  {
    v17 = 0;
    while (*v15 != **(a2 + 5))
    {
      ++v17;
      if (++v15 == v16)
      {
        goto LABEL_14;
      }
    }

    v18 = *(v12 + 56) + 24 * v17;
  }

  v21 = *(v18 + 23);
  v22 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(v18 + 8);
  }

  if (v21)
  {
    if (a4)
    {
      v23 = objc_alloc_init(MEMORY[0x1E6974060]);
      v24 = v23;
      for (i = 0; i != 64; ++i)
      {
        *(v43 + i) = a5 & 1;
        a5 >>= 1;
      }

      [v23 setConstantValues:v43 type:53 withRange:{0, 64}];
      v22 = *(v18 + 23);
    }

    else
    {
      v24 = 0;
    }

    if (v22 >= 0)
    {
      v26 = v18;
    }

    else
    {
      v26 = *v18;
    }

    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
    v28 = [MEMORY[0x1E6974070] functionDescriptor];
    v29 = *(*(this + 32) + 128);
    if (v29)
    {
      v30 = v29;
      v42 = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      [v28 setBinaryArchives:v31];
    }

    if ((a3 & 1) != 0 || a4)
    {
      [v28 setConstantValues:v24];
    }

    if (a3)
    {
      [v28 setSpecializedName:v27];
    }

    [v28 setName:v27];
    v32 = [v11[4] newFunctionWithDescriptor:v28 error:0];
    v33 = ggl::zone_mallocator::instance(v32);
    v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v33, 0x28uLL);
    *v14 = 0;
    *(v14 + 4) = 1025;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 4) = 0;
    objc_storeStrong(v14 + 4, v32);
    ggl::ResourceManager::_addResourceStat(this, "Function", 0x33D8746B00000008uLL, 0);
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  return v14;
}

void sub_1B2959F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  a23 = *MEMORY[0x1E69E54D8];
  v43 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a23 + *(a23 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a25 = v43;
  a26 = MEMORY[0x1E69E5548] + 16;
  if (a39 < 0)
  {
    operator delete(__p);
  }

  a26 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a27);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a42);
  _Unwind_Resume(a1);
}

uint64_t md::World::mark(md::World *this)
{
  v2 = *(this + 10);
  v3 = *(this + 11);
  while (v2 != v3)
  {
    gdc::LayerDataStore::mark(*(v2 + 8));
    v2 += 16;
  }

  v4 = *(*(this + 3) + 56);
  v5 = *(v4 + 56);
  v6 = *(v4 + 64);

  return gdc::ResourceManager::mark(v5, v6);
}

void std::vector<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *>(v2, v1);
  }
}

void std::__function::__func<md::MapEngine::runUpdatePhase(double,BOOL)::$_1,std::allocator<md::MapEngine::runUpdatePhase(double,BOOL)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = (*(a1 + 8) + 40960);
  if (*(a1 + 16) == 1)
  {
    md::World::mark(*(*(a1 + 8) + 41704));
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[121];
  v5 = v1[116];
  v6 = v1[96];

  md::LogicManager::runLogicBefore(v4, v5, v6, v3 & 1);
}

void ecs2::Runtime::_entities<md::ita::AssembleRenderItems,md::ls::PendingRenderItemSetup const&,md::ls::RenderItemID &,md::ls::RenderOrderToUse const*,md::ls::InstanceCount const*,md::ls::StencilRefValueToUse const*,md::ls::IndexRange const&,md::ls::HasMeshHandle const&>(uint64_t a1, uint64_t **a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(v2);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderOrderToUse>(v2);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceCount>(v2);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::StencilRefValueToUse>(v2);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(v2);
  HasMesh = ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(v2);
  *&v10 = v3;
  *(&v10 + 1) = v4;
  *&v11 = v8;
  *(&v11 + 1) = HasMesh;
  v78[0] = v10;
  v78[1] = v11;
  v12 = 8;
  v13 = v3;
  v14 = v78;
  do
  {
    if (*(*(v78 + v12) + 40) - *(*(v78 + v12) + 32) < *(v13 + 40) - *(v13 + 32))
    {
      v13 = *(v78 + v12);
      v14 = v78 + v12;
    }

    v12 += 8;
  }

  while (v12 != 32);
  v16 = *(*v14 + 32);
  v15 = *(*v14 + 40);
  v69 = v16;
  v70 = v15;
  v71 = v3;
  v72 = v4;
  v73 = v5;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v77 = HasMesh;
  v66 = v15;
  while (v16 != v15 && !ecs2::ViewIterator<void,std::tuple<md::ls::PendingRenderItemSetup const&,md::ls::RenderItemID &,md::ls::RenderOrderToUse const*,md::ls::InstanceCount const*,md::ls::StencilRefValueToUse const*,md::ls::IndexRange const&,md::ls::HasMeshHandle const&>,std::tuple<>>::containsAll<md::ls::PendingRenderItemSetup const,md::ls::RenderItemID,md::ls::IndexRange const,md::ls::HasMeshHandle const>(&v69, *v16, v16[1]))
  {
    v16 += 2;
    v69 = v16;
    v15 = v66;
  }

  v17 = v69;
  if (v69 == v66)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v44 = _ZTWN4ecs27Runtime11_stackIndexE();
    v19 = 0;
  }

  else
  {
    v64 = v74;
    v65 = v73;
    v63 = v75;
    v59 = v76;
    v60 = v72;
    v58 = v77;
    v62 = _ZTWN4ecs27Runtime11_localStateE();
    v18 = _ZTWN4ecs27Runtime11_stackIndexE();
    v19 = 0;
    v20 = v70;
    do
    {
      v21 = v17[1];
      v22 = v21 >> 6;
      v23 = v21 & 0x3F;
      v24 = *v17;
      v25 = v65[1];
      if (v22 < (v65[2] - v25) >> 3 && (v26 = *(v25 + 8 * v22)) != 0 && *(v26 + 4 * v23) == v24)
      {
        v27 = *(v26 + 4 * v23 + 2);
        v67 = (*(v65[7] + ((v27 >> 3) & 0x1FF8)) + 8 * (v27 & 0x3F));
      }

      else
      {
        v67 = 0;
      }

      v28 = v64[1];
      if (v22 < (v64[2] - v28) >> 3 && (v29 = *(v28 + 8 * v22)) != 0 && *(v29 + 4 * v23) == v24)
      {
        v30 = *(v29 + 4 * v23 + 2);
        v31 = (*(v64[7] + ((v30 >> 3) & 0x1FF8)) + 8 * (v30 & 0x3F));
      }

      else
      {
        v31 = 0;
      }

      v32 = v63[1];
      v68 = v19;
      if (v22 < (v63[2] - v32) >> 3 && (v33 = *(v32 + 8 * v22)) != 0 && *(v33 + 4 * v23) == v24)
      {
        v34 = *(v33 + 4 * v23 + 2);
        v35 = (*(v63[7] + ((v34 >> 3) & 0x1FF8)) + (v34 & 0x3F));
      }

      else
      {
        v35 = 0;
      }

      v36 = *(*(*(v60 + 8) + 8 * v22) + 4 * v23 + 2);
      v37 = (*(*(v60 + 56) + ((v36 >> 3) & 0x1FF8)) + 24 * (v36 & 0x3F));
      v38 = *(*(*(v59 + 8) + 8 * v22) + 4 * v23 + 2);
      v39 = v38 & 0x3F;
      v40 = *(*(v59 + 56) + ((v38 >> 3) & 0x1FF8));
      v41 = *(*(*(v58 + 8) + 8 * v22) + 4 * v23 + 2);
      v42 = v41 & 0x3F;
      v43 = *(*(v58 + 56) + ((v41 >> 3) & 0x1FF8));
      v44 = v18;
      *(v62 + 104 * *v18 + 24) = *v17;
      v45 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      RenderItem = md::VKMRenderResourcesStore::getRenderItem(v45, *v37, v37[1]);
      *(RenderItem + 9) = *(v40 + 16 * v39);
      RenderItem[11] = 0;
      RenderItem[12] = 1;
      RenderItem[8] = *(v43 + 8 * v42);
      RenderItem[1] = v37[2];
      if (v35)
      {
        *(RenderItem + 10) = *v35;
      }

      if (v31)
      {
        RenderItem[13] = *v31;
      }

      if (v67)
      {
        RenderItem[6] = *v67;
      }

      v19 = v68 + 1;
      v47 = v17 + 2;
      while (1)
      {
        v17 = v47;
        v69 = v47;
        if (v47 == v20)
        {
          break;
        }

        v48 = ecs2::ViewIterator<void,std::tuple<md::ls::PendingRenderItemSetup const&,md::ls::RenderItemID &,md::ls::RenderOrderToUse const*,md::ls::InstanceCount const*,md::ls::StencilRefValueToUse const*,md::ls::IndexRange const&,md::ls::HasMeshHandle const&>,std::tuple<>>::containsAll<md::ls::PendingRenderItemSetup const,md::ls::RenderItemID,md::ls::IndexRange const,md::ls::HasMeshHandle const>(&v69, *v47, v47[1]);
        v47 = v17 + 2;
        if (v48)
        {
          v49 = v17;
          goto LABEL_37;
        }
      }

      v49 = v20;
LABEL_37:
      v18 = v44;
    }

    while (v49 != v66);
    v50 = *(a1 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>();
    *(v50 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>(void)::metadata) = *(v50 + 4096);
    v51 = v62;
  }

  *(v51 + 104 * *v44 + 24) = -65536;
  v52 = v51 + 104 * *v44;
  v53 = *(v52 + 92);
  *(v52 + 92) = v53 + 1;
  *(v52 + 4 * v53 + 28) = v19;
  v54 = v51 + 104 * *v44;
  v56 = *(v54 + 92);
  v55 = (v54 + 92);
  if (v56 >= 0x10)
  {
    *v55 = 0;
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::AssembleRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::AssembleRenderItems>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::AssembleRenderItems,md::ls::PendingRenderItemSetup const&,md::ls::RenderItemID &,md::ls::RenderOrderToUse const*,md::ls::InstanceCount const*,md::ls::StencilRefValueToUse const*,md::ls::IndexRange const&,md::ls::HasMeshHandle const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
}

void ggl::Textured::SRGBBlendPos4DUVPipelineState::~SRGBBlendPos4DUVPipelineState(ggl::Textured::SRGBBlendPos4DUVPipelineState *this)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::StencilRefValueToUse>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>(void)::metadata >= 0x200)
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

uint64_t gdc::ResourceManager::mark(uint64_t this, uint64_t a2)
{
  while (this != a2)
  {
    *(*(this + 8) + 408) = *(this + 8) + 344;
    this += 24;
  }

  return this;
}

void ggl::Data::~Data(ggl::Data *this)
{
  ggl::Data::~Data(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CA90;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = ggl::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
  }

  *(this + 1) = 0;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StencilRefValueToUse>();
    unk_1EB83CEE0 = 0x9EC66CE0B60A2DFFLL;
    qword_1EB83CEE8 = "md::ls::StencilRefValueToUse]";
    qword_1EB83CEF0 = 28;
  }
}

void md::LogicManager::runLogicBefore(uint64_t a1, void **a2, void *a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 144) == 1)
  {
    v31[0] = &unk_1F2A55CD8;
    v31[1] = a3;
    v32 = v31;
    for (i = *(a1 + 32); i; i = *i)
    {
      std::function<void ()(md::LogicBase *)>::operator()(v32, i[5]);
    }

    std::__function::__value_func<void ()(md::LogicBase *)>::~__value_func[abi:nn200100](v31);
    *(a1 + 144) = 0;
  }

  v9 = +[VKDebugSettings sharedSettings];
  if (a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 8) + 1;
  }

  *(a1 + 8) = v10;
  std::ostringstream::basic_ostringstream[abi:nn200100](&v23);
  v11 = (a1 + 112);
  if (!*(a1 + 136))
  {
    v11 = &md::LogicManager::executionOrder(void)const::empty;
  }

  v12 = *v11;
  v13 = v11[1];
  if (*v11 != v13)
  {
    do
    {
      v14 = *v12;
      v29 = *(*v12 + 32);
      v30 = *(v14 + 48);
      if (*(v14 + 56) == 1)
      {
        *__p = *(v14 + 32);
        v22 = *(v14 + 48);
        v15 = gdc::Context::context(a3, __p);
        if (!v15)
        {
          (*(*v14 + 64))(&v28, v14);
          gdc::Context::setContext(a3, &v28);
          *__p = v29;
          v22 = v30;
          v15 = gdc::Context::context(a3, __p);
          v16 = v28;
          v28 = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        md::LogicManager::executeFlows(a1, v12 + 1, a4);
        (*(**v12 + 88))(*v12, a2, v15);
        if (a4)
        {
          (*(**v12 + 72))(*v12, a2, v15);
        }

        md::LogicManager::executeFlows(a1, v12 + 4, a4);
        if ([v9 isLogicConsoleEnabled:*(*v12 + 8)])
        {
          (*(**v12 + 104))(__p);
          if (v22 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          if (v22 >= 0)
          {
            v18 = HIBYTE(v22);
          }

          else
          {
            v18 = __p[1];
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, v17, v18);
          if (SHIBYTE(v22) < 0)
          {
            operator delete(__p[0]);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, "\n", 1);
        }
      }

      v12 += 7;
    }

    while (v12 != v13);
  }

  if ([v9 isAnyLogicConsoleEnabled])
  {
    std::stringbuf::str[abi:nn200100](__p, &v24);
    v19 = md::LayoutContext::debugConsoleForId(a2, 19);
    if (v19)
    {
      ggl::DebugConsole::begin(v19);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 145) = 1;
  }

  else if (*(a1 + 145) == 1)
  {
    *(a1 + 145) = 0;
    v20 = md::LayoutContext::debugConsoleForId(a2, 19);
    if (v20)
    {
      ggl::DebugConsole::begin(v20);
    }
  }

  v23 = *MEMORY[0x1E69E54E8];
  *(&v23 + *(v23 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v24 = MEMORY[0x1E69E5548] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v25);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&v27);
}

void sub_1B295B170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
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

void std::__function::__func<md::LogicManager::runLogicBefore(md::LayoutContext const&,gdc::Context &,BOOL)::$_0,std::allocator<md::LogicManager::runLogicBefore(md::LayoutContext const&,gdc::Context &,BOOL)::$_0>,void ()(md::LogicBase *)>::operator()(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 56) & 1) == 0)
  {
    gdc::Context::clearContext(*(a1 + 8), *(*a2 + 32));
  }
}

void ggl::Textured::SRGBBlendColormappedPos2DUVPipelineState::~SRGBBlendColormappedPos2DUVPipelineState(ggl::Textured::SRGBBlendColormappedPos2DUVPipelineState *this)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::InstanceCount>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InstanceCount>();
    *algn_1EB83DA18 = 0xE53EF176130D7769;
    qword_1EB83DA20 = "md::ls::InstanceCount]";
    qword_1EB83DA28 = 21;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>(void)::metadata >= 0x200)
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

void gdc::Context::clearContext(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = vcnt_s8(v2);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = a2;
      if (*&v2 <= a2)
      {
        v5 = a2 % *&v2;
      }
    }

    else
    {
      v5 = (*&v2 - 1) & a2;
    }

    v6 = *a1;
    v7 = *(*a1 + 8 * v5);
    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = *&v2 - 1;
        do
        {
          v10 = v8[1];
          if (v10 == a2)
          {
            if (v8[2] == a2)
            {
              v11 = v8[1];
              if (v4.u32[0] > 1uLL)
              {
                if (v11 >= *&v2)
                {
                  v11 %= *&v2;
                }
              }

              else
              {
                v11 &= v9;
              }

              v12 = *(v6 + 8 * v11);
              do
              {
                v13 = v12;
                v12 = *v12;
              }

              while (v12 != v8);
              if (v13 == a1 + 2)
              {
                goto LABEL_36;
              }

              v14 = v13[1];
              if (v4.u32[0] > 1uLL)
              {
                if (v14 >= *&v2)
                {
                  v14 %= *&v2;
                }
              }

              else
              {
                v14 &= v9;
              }

              if (v14 != v11)
              {
LABEL_36:
                if (!*v8)
                {
                  goto LABEL_37;
                }

                v15 = *(*v8 + 8);
                if (v4.u32[0] > 1uLL)
                {
                  if (v15 >= *&v2)
                  {
                    v15 %= *&v2;
                  }
                }

                else
                {
                  v15 &= v9;
                }

                if (v15 != v11)
                {
LABEL_37:
                  *(v6 + 8 * v11) = 0;
                }
              }

              v16 = *v8;
              if (*v8)
              {
                v17 = *(v16 + 8);
                if (v4.u32[0] > 1uLL)
                {
                  if (v17 >= *&v2)
                  {
                    v17 %= *&v2;
                  }
                }

                else
                {
                  v17 &= v9;
                }

                if (v17 != v11)
                {
                  *(*a1 + 8 * v17) = v13;
                  v16 = *v8;
                }
              }

              *v13 = v16;
              *v8 = 0;
              --a1[3];
              std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,void *>>>::operator()[abi:nn200100](1, v8);
              return;
            }
          }

          else
          {
            if (v4.u32[0] > 1uLL)
            {
              if (v10 >= *&v2)
              {
                v10 %= *&v2;
              }
            }

            else
            {
              v10 &= v9;
            }

            if (v10 != v5)
            {
              return;
            }
          }

          v8 = *v8;
        }

        while (v8);
      }
    }
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StencilRefValueToUse>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StencilRefValueToUse>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[458];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20StencilRefValueToUseEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A0E060;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *gdc::Context::context(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>(a1, *a2);
  if (result)
  {
    return result[5];
  }

  return result;
}

void ggl::Textured::SRGBBlendPos2DUVPipelineState::~SRGBBlendPos2DUVPipelineState(ggl::Textured::SRGBBlendPos2DUVPipelineState *this)
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20StencilRefValueToUseEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0E060;
  a2[1] = v2;
  return result;
}

void sub_1B295BB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  v32 = v30[5];
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = v30[3];
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  v34 = v30[1];
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  MEMORY[0x1B8C62190](v30, 0x10A0C4004EC7909);
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  MEMORY[0x1B8C62190](v28, v29);
  _Unwind_Resume(a1);
}

void ggl::ConstantDataTyped<ggl::OverlayOcclusion::AlphaTint>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IndexRange>();
    unk_1EB83DCC0 = 0x71CBA64B1A9CA230;
    qword_1EB83DCC8 = "md::ls::IndexRange]";
    qword_1EB83DCD0 = 18;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMeshHandle>();
    *algn_1EB83DA68 = 0xCD844FF303308290;
    qword_1EB83DA70 = "md::ls::HasMeshHandle]";
    qword_1EB83DA78 = 21;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>(void)::metadata >= 0x200)
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

void ggl::CommonMesh::Pos2UVMesh::~Pos2UVMesh(ggl::CommonMesh::Pos2UVMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

double md::Logic<md::StyleLogic,md::StyleLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x1010000000000;
  *(a1 + 88) = 0;
  *(a1 + 81) = 0;
  *(a1 + 92) = 1;
  *(a1 + 93) = 0;
  *(a1 + 97) = 0;
  *(a1 + 100) = 0x3F80000000000000;
  *(a1 + 108) = 1065353216;
  *(a1 + 112) = 4;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t gdc::Context::setContext(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 8);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *(*a2 + 8);
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  *a2 = 0;
  result = v8[5];
  v8[5] = v2;
  if (result)
  {
    v11 = *(*result + 8);

    return v11();
  }

  return result;
}

uint64_t md::LogicManager::executeFlows(uint64_t result, uint64_t *a2, int a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    while (((a3 ^ 1 | *(v4 + 8)) & 1) == 0)
    {
      v4 += 16;
      if (v4 == v3)
      {
        return result;
      }
    }
  }

  if (v4 != v3)
  {
    ecs2::FlowExecutor::FlowExecutor(v5, *v4, *(result + 104), *(result + 96));
    ecs2::FlowExecutor::run(v5);
  }

  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::TransferPipelines>,std::allocator<ecs2::ForwardToExecute<md::ita::TransferPipelines>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::TransferPipelines::operator()((a1 + 8), a2, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      *(v2 + 3) = &unk_1F2A4BA00;

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

uint64_t md::Logic<md::StyleLogic,md::StyleLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xE42D19AFCA302E68)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 144))(result, a2, v5);
    }
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetupToApply>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetupToApply>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetupToApply>();
    unk_1EB83CF00 = 0xBBB17A4464CB2E03;
    qword_1EB83CF08 = "md::ls::PipelineSetupToApply]";
    qword_1EB83CF10 = 28;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetupToApply>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetupToApply>(void)::metadata >= 0x200)
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

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::OverlayTileData>>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2B998;
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

  geo::Pool<md::MapTileDataRenderable<md::OverlayTileData>>::disposeElements(a1 + 224);
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

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::OverlayTileData> *,md::MapTileDataRenderable<md::OverlayTileData> *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetupToApply>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetupToApply>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[460];
}

void md::LabelRenderLayer::~LabelRenderLayer(md::LabelRenderLayer *this)
{
  *this = &unk_1F29E98A0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 304);
  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>>>::~__hash_table(this + 224);
  std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__deallocate_node(*(this + 24));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 168));
  std::__hash_table<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,geo::allocator_adapter<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,mdm::zone_mallocator>>::__deallocate_node(*(this + 14));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 88));
  std::__list_imp<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,mdm::zone_mallocator>>::clear(this + 7);
  *this = &unk_1F2A16858;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  md::LabelRenderLayer::~LabelRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

void md::StyleLogic::runBeforeLayout(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 256))
  {
    md::StyleLogic::updateConfiguration(a1, 0);
  }

  if (*(a1 + 1114) == 1)
  {
    if (*(a1 + 1112) == 1)
    {
      v7 = +[VKPlatform sharedPlatform];
      v8 = [v7 isIncreaseContrastEnabled];
    }

    else
    {
      v8 = *(a1 + 1113);
    }
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 1115) != (v8 & 1))
  {
    v9 = 0.6;
    if (*(a1 + 1104))
    {
      v9 = 0.0;
    }

    md::StyleLogic::setResolvedIncreaseContrastEnabled(a1, v8 & 1, v9);
  }

  v10 = *(a1 + 1256);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*v10 != v12)
  {
    do
    {
      std::function<void ()(md::StyleLogic *)>::operator()(*(v11 + 24), a1);
      v11 += 32;
    }

    while (v11 != v12);
    v11 = *v10;
    v12 = *(v10 + 8);
  }

  while (v12 != v11)
  {
    v12 -= 32;
    std::__function::__value_func<void ()(md::StyleLogic *)>::~__value_func[abi:nn200100](v12);
  }

  *(v10 + 8) = v11;
  md::StyleLogicContext::operator=(a4, (a1 + 256));
  *(a4 + 82) = 0;
  *(a4 + 85) = *(a1 + 168);
  *(a4 + 88) = *(a1 + 1096);
  *(a4 + 92) = *(a1 + 164);
  *(a4 + 93) = *(a1 + 173);
  *(a4 + 94) = *(a1 + 174);
  *(a4 + 104) = *(a1 + 124);
  *(a4 + 83) = *(a1 + 1116);
  if (*(a1 + 170) == 1)
  {
    v13 = *(a1 + 169);
  }

  else
  {
    v13 = 4;
  }

  *(a4 + 112) = v13;
  *(a4 + 97) = *(a1 + 177);
  *(a4 + 98) = *(a1 + 180) == 1;
  *(a4 + 84) = ([*(a1 + 1160) navCameraMode] & 0xFFFFFFFFFFFFFFFDLL) == 1;
  [*a2 size];
  if (v14 > 0.0 && v15 > 0.0)
  {
    v16 = log2(v14 * 0.001953125 * *(a1 + 124));
    *(a4 + 100) = v16;
  }

  v17 = *(a1 + 1200);
  v18 = *(a1 + 256);
  if (!v18)
  {
    md::StyleLogic::updateConfiguration(a1, *(a1 + 1096));
    v18 = *(a1 + 256);
  }

  v19 = *(a1 + 264);
  v102[0] = v18;
  v102[1] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::World::setStyleManager(v17, v102);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v20 = *(a1 + 184);
  v21 = *v20;
  v22 = v20[1];
  while (v21 != v22)
  {
    if (!*v21)
    {
      if (v21 != v22)
      {
        v23 = *(v21 + 8) != 0;
        goto LABEL_35;
      }

      break;
    }

    v21 += 16;
  }

  v23 = 0;
LABEL_35:
  gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(a1 + 208), 0x10048u, v23);
  v24 = *(a1 + 184);
  v25 = *v24;
  v26 = v24[1];
  while (v25 != v26)
  {
    if (*v25 == 33)
    {
      if (v25 != v26)
      {
        v27 = *(v25 + 8) != 0;
        goto LABEL_42;
      }

      break;
    }

    v25 += 16;
  }

  v27 = 0;
LABEL_42:
  gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(a1 + 208), 0x1007Bu, v27);
  v28 = [MEMORY[0x1E695DF58] currentLocale];
  v29 = [v28 objectForKey:*MEMORY[0x1E695D980]];

  v97 = v29;
  if (!v29)
  {
    goto LABEL_43;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, [v29 UTF8String]);
  v87 = *(a1 + 256);
  if (!v87)
  {
    md::StyleLogic::updateConfiguration(a1, *(a1 + 1096));
    v87 = *(a1 + 256);
  }

  v88 = *(v87 + 16);
  v89 = *(v87 + 24);
  if (v89)
  {
    atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v90 = *(v88 + 104);
  if (v90 && (v91 = std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::find<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(v90, &__p)) != 0)
  {
    v10 = *(v91 + 10);
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  if (v89)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v89);
  }

  if (v101 < 0)
  {
    operator delete(__p);
  }

  if ((v10 & 0x80000000) != 0)
  {
LABEL_43:
    gss::ClientStyleState<gss::PropertyID>::removeClientStyleAttribute(*(a1 + 208), 0x5Du);
  }

  else
  {
    gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(a1 + 208), 0x5Du, v10);
  }

  if (*(a1 + 177) == 2)
  {
    v92 = *(a1 + 1116);
    gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(a1 + 208), 0x10038u, v92);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(a1 + 224), 0x10038u, v92);
    v93 = [*(a1 + 1160) navCameraModeStyleAttribute];
    gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(a1 + 208), 0x10034u, v93);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(a1 + 224), 0x10034u, v93);
    v94 = *(a1 + 1117);
    gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(a1 + 208), 0x10074u, v94);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(a1 + 224), 0x10074u, v94);
  }

  else
  {
    gss::ClientStyleState<gss::PropertyID>::removeClientStyleAttribute(*(a1 + 208), 0x10034u);
    gss::ClientStyleState<gss::PropertyID>::removeClientStyleAttribute(*(a1 + 208), 0x10038u);
    gss::ClientStyleState<gss::PropertyID>::removeClientStyleAttribute(*(a1 + 208), 0x10074u);
  }

  gss::ClientStyleState<gss::ScenePropertyID>::sourceClientStyleAttributes(&__p, *(a1 + 224));
  v30 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(&__p, 0x10064u);
  v31 = +[VKDebugSettings sharedSettings];
  [v31 routeWindshieldAnimationTime];
  v33 = v32;

  v34 = v30 != v100 && *(__p + 2 * v30 + v99) != 0;
  if (*(a1 + 1118) != v34)
  {
    v35 = *(a1 + 1184);
    if (v35)
    {
      [v35 stop];
    }

    v36 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(&__p, 0x1006Bu);
    if (v34 && v36 != v100 && (v86 = __p + v99, *&v86[2 * v36]))
    {
      gss::ClientStyleState<gss::PropertyID>::setTargetClientStyleAttribute(*(a1 + 208), 0x1006Bu, *&v86[2 * v36]);
    }

    else
    {
      gss::ClientStyleState<gss::PropertyID>::removeTargetClientStyleAttribute(*(a1 + 208), 0x1006Bu);
    }

    gss::ClientStyleState<gss::PropertyID>::setTargetClientStyleAttribute(*(a1 + 208), 0x10064u, v34);
    *(a1 + 1118) = v34;
    md::StyleLogic::queueStyleTransition(a1, v33);
  }

  v37 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(&__p, 0x1006Fu);
  v38 = +[VKDebugSettings sharedSettings];
  [v38 routeIsCoveredAnimationTime];
  v40 = v39;

  v41 = v37 != v100 && *(__p + 2 * v37 + v99) != 0;
  md::StyleLogic::setIsCovered(a1, v41, v40);
  if (*(a1 + 1120) == 1)
  {
    *(a1 + 1120) = 0;
    md::StyleLogic::initiateTransition(a1, *(a1 + 1124));
    *(a1 + 1124) = 0;
  }

  v95 = a4;
  v42 = (a4 + 120);
  v43 = *(a4 + 120);
  *(a4 + 128) = v43;
  v44 = (a4 + 144);
  v45 = *(a4 + 144);
  *(a4 + 152) = v45;
  v46 = *(a1 + 208);
  v47 = pthread_rwlock_rdlock((v46 + 16));
  v96 = a1;
  if (v47)
  {
    geo::read_write_lock::logFailure(v47, "read lock", v48);
  }

  v49 = *(v46 + 228);
  if (*(v46 + 228))
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = *(v46 + 228);
    do
    {
      if (v52 < v53 && (v50 & 1) == 0)
      {
        v54 = *(v46 + 216);
        v51 = (v54 + 4 * v52);
        v10 = v54 + *(v46 + 224) + 2 * v52;
        v50 = 1;
      }

      v103 = *v51;
      v104 = *v10;
      v43 = std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert(v42, v43, &v103) + 8;
      v53 = *(v46 + 228);
      if (v52 + 1 < v53)
      {
        ++v52;
      }

      else
      {
        v52 = *(v46 + 228);
      }

      if (v50)
      {
        v50 = 0;
      }
    }

    while (v52 != v49);
  }

  geo::read_write_lock::unlock((v46 + 16));
  v55 = *(v96 + 208);
  v56 = pthread_rwlock_rdlock((v55 + 16));
  if (v56)
  {
    geo::read_write_lock::logFailure(v56, "read lock", v57);
  }

  v58 = *(v55 + 252);
  if (*(v55 + 252))
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = *(v55 + 252);
    do
    {
      if (v61 < v62 && (v59 & 1) == 0)
      {
        v63 = *(v55 + 240);
        v60 = (v63 + 4 * v61);
        v10 = v63 + *(v55 + 248) + 2 * v61;
        v59 = 1;
      }

      v103 = *v60;
      v104 = *v10;
      v45 = std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert(v44, v45, &v103) + 8;
      v62 = *(v55 + 252);
      if (v61 + 1 < v62)
      {
        ++v61;
      }

      else
      {
        v61 = *(v55 + 252);
      }

      if (v59)
      {
        v59 = 0;
      }
    }

    while (v61 != v58);
  }

  geo::read_write_lock::unlock((v55 + 16));
  v64 = *(v95 + 144);
  v65 = *(v95 + 152);
  v66 = 126 - 2 * __clz((v65 - v64) >> 3);
  if (v65 == v64)
  {
    v67 = 0;
  }

  else
  {
    v67 = v66;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELb0EEEvT1_SO_T0_NS_15iterator_traitsISO_E15difference_typeEb(v64, v65, v67, 1);
  v68 = *(v95 + 120);
  v69 = *(v95 + 128);
  v70 = 126 - 2 * __clz((v69 - v68) >> 3);
  if (v69 == v68)
  {
    v71 = 0;
  }

  else
  {
    v71 = v70;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELb0EEEvT1_SO_T0_NS_15iterator_traitsISO_E15difference_typeEb(v68, v69, v71, 1);
  v72 = *(v96 + 208);
  v73 = pthread_rwlock_rdlock((v72 + 16));
  if (v73)
  {
    geo::read_write_lock::logFailure(v73, "read lock", v74);
  }

  v75 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v72 + 216, 0x10036u);
  v76 = v75;
  v77 = *(v72 + 228);
  if (v75 == v77)
  {
    LOBYTE(v78) = 0;
  }

  else
  {
    v78 = *(*(v72 + 216) + *(v72 + 224) + 2 * v75);
  }

  v79 = pthread_rwlock_unlock((v72 + 16));
  if (v79)
  {
    geo::read_write_lock::logFailure(v79, "unlock", v80);
  }

  if (v76 != v77)
  {
    *(v95 + 96) = v78;
  }

  *(v95 + 108) = *(v96 + 120);
  v81 = *(v96 + 256);
  if (v81)
  {
    v82 = atomic_load((*(v81 + 16) + 2786));
    if (v82)
    {
      *(v95 + 82) = 1;
      v83 = *(v95 + 48);
      *(v95 + 48) = *(v96 + 1128);
      *(v96 + 1128) = v83;
      v84 = *(v95 + 56);
      *(v95 + 56) = *(v96 + 1136);
      *(v96 + 1136) = v84;
      v85 = *(v95 + 64);
      *(v95 + 64) = *(v96 + 1144);
      *(v96 + 1144) = v85;
      *(v96 + 1136) = *(v96 + 1128);
    }
  }

  md::StyleLogic::logClientAttributesIfNecessary(v96);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&__p);
}

void sub_1B295D4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20PipelineSetupToApplyEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A17570;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20PipelineSetupToApplyEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A17570;
  a2[1] = v2;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::find<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v15 == v9)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::unique_ptr<md::LabelMapTileSourceData>::~unique_ptr[abi:nn200100](v1 + 6);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::DataIDSetToUse>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DataIDSetToUse>();
    *algn_1EB83D888 = 0xB3837544666C5A60;
    qword_1EB83D890 = "md::ls::DataIDSetToUse]";
    qword_1EB83D898 = 22;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>(void)::metadata >= 0x200)
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

void std::__hash_table<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,geo::allocator_adapter<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = v1[7];
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }

      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> *>(v3, v2);
  }

  return a1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DataIDSetToUse>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DataIDSetToUse>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[45];
}

void md::DaVinciCenterLineRoadsRenderLayer::~DaVinciCenterLineRoadsRenderLayer(md::DaVinciCenterLineRoadsRenderLayer *this)
{
  *this = &unk_1F29EE580;
  v2 = *(this + 51);
  if (v2)
  {
    *(this + 52) = v2;
    operator delete(v2);
  }

  std::unique_ptr<md::RoadStyling>::~unique_ptr[abi:nn200100](this + 50);
  std::unique_ptr<md::RoadSharedResources>::~unique_ptr[abi:nn200100](this + 48);
  std::unique_ptr<md::RoadSharedResources>::~unique_ptr[abi:nn200100](this + 47);
  v3 = *(this + 46);
  *(this + 46) = 0;
  if (v3)
  {
    md::PatternedSharedResources::~PatternedSharedResources(v3);
    MEMORY[0x1B8C62190]();
  }

  md::CartographicTiledVectorRenderLayer<md::DaVinciRoadTileDataRenderable>::~CartographicTiledVectorRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29EE580;
  v2 = *(this + 51);
  if (v2)
  {
    *(this + 52) = v2;
    operator delete(v2);
  }

  v3 = *(this + 50);
  *(this + 50) = 0;
  if (v3)
  {
    v5 = v3;
    std::vector<md::RoadStyling::Entry>::__destroy_vector::operator()[abi:nn200100](&v5);
    MEMORY[0x1B8C62190](v3, 0x20C40960023A9);
  }

  std::unique_ptr<md::RoadSharedResources>::~unique_ptr[abi:nn200100](this + 48);
  std::unique_ptr<md::RoadSharedResources>::~unique_ptr[abi:nn200100](this + 47);
  v4 = *(this + 46);
  *(this + 46) = 0;
  if (v4)
  {
    md::PatternedSharedResources::~PatternedSharedResources(v4);
    MEMORY[0x1B8C62190]();
  }

  md::CartographicTiledVectorRenderLayer<md::DaVinciRoadTileDataRenderable>::~CartographicTiledVectorRenderLayer(this);
}

{
  *this = &unk_1F29EE580;
  v2 = *(this + 51);
  if (v2)
  {
    *(this + 52) = v2;
    operator delete(v2);
  }

  std::unique_ptr<md::RoadStyling>::~unique_ptr[abi:nn200100](this + 50);
  std::unique_ptr<md::RoadSharedResources>::~unique_ptr[abi:nn200100](this + 48);
  std::unique_ptr<md::RoadSharedResources>::~unique_ptr[abi:nn200100](this + 47);
  v3 = *(this + 46);
  *(this + 46) = 0;
  if (v3)
  {
    md::PatternedSharedResources::~PatternedSharedResources(v3);
    MEMORY[0x1B8C62190]();
  }

  md::CartographicTiledVectorRenderLayer<md::DaVinciRoadTileDataRenderable>::~CartographicTiledVectorRenderLayer(this);
}

void ***std::unique_ptr<md::RoadStyling>::~unique_ptr[abi:nn200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<md::RoadStyling::Entry>::__destroy_vector::operator()[abi:nn200100](&v4);
    MEMORY[0x1B8C62190](v2, 0x20C40960023A9);
  }

  return a1;
}

void md::StyleLogic::initiateTransition(md::StyleLogic *this, float a2)
{
  v4 = +[VKDebugSettings sharedSettings];
  v5 = [v4 disableStylesheetAnimations] | (a2 <= 0.0);

  if (v5)
  {
    v6 = **(this + 155);
    if (v6)
    {
      LOBYTE(v13[0]) = 12;
      md::MapEngine::setNeedsTick(v6, v13);
    }

    LOBYTE(v13[0]) = 1;
    geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert(this + 141, v13);
    md::StyleLogic::_finishStyleBlend(this);
    LOBYTE(v13[0]) = 3;
    geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert(this + 141, v13);
    v7 = *(this + 148);
    if (v7)
    {
      *(this + 148) = 0;
    }

    *(this + 337) = 0;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZN2md10StyleLogic26initiateTransitionAnimatedEf_block_invoke;
    v13[3] = &__block_descriptor_40_e8_v12__0f8l;
    v13[4] = this;
    v8 = MEMORY[0x1B8C62DA0](v13);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___ZN2md10StyleLogic26initiateTransitionAnimatedEf_block_invoke_2;
    v12[3] = &__block_descriptor_40_e8_v12__0B8l;
    v12[4] = this;
    v9 = MEMORY[0x1B8C62DA0](v12);
    v10 = [[VKTimedAnimation alloc] initWithDuration:a2];
    geo::_retain_ptr<LabelNavRouteContextObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(this + 1176, v10);

    [*(this + 148) setTimingFunction:VKAnimationCurveEaseOut];
    [*(this + 148) setStepHandler:v8];
    [*(this + 148) setCompletionHandler:v9];
    v11 = 1;
    geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert(this + 141, &v11);
    *(this + 168) = 257;
    md::AnimationRunner::runAnimation(*(this + 25), *(this + 148));
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls14DataIDSetToUseEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A17740;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::vector<md::RoadStyling::Entry>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:nn200100]<md::RoadStyling::Entry,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14DataIDSetToUseEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A17740;
  a2[1] = v2;
  return result;
}

void md::StyleLogic::setIsCovered(md::StyleLogic *this, int a2, float a3)
{
  if (*(this + 1119) != a2)
  {
    v7 = *(this + 148);
    if (v7)
    {
      [v7 stop];
    }

    gss::ClientStyleState<gss::PropertyID>::setTargetClientStyleAttribute(*(this + 26), 0x1006Fu, a2);
    *(this + 1119) = a2;

    md::StyleLogic::queueStyleTransition(this, a3);
  }
}

uint64_t **std::unique_ptr<md::RoadSharedResources>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[20];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[18];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = v2[14];
    v2[14] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v2[13];
    v2[13] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v2[12];
    v2[12] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v2[11];
    v2[11] = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v2[10];
    v2[10] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v2[9];
    v2[9] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v2[8];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = v2[6];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = v2[4];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = v2[2];
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = *v2;
    *v2 = 0;
    if (v15)
    {
      std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v15 + 104));
      v16 = *(v15 + 8);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }

      MEMORY[0x1B8C62190](v15, 0x1020C40AD78EA61);
    }

    MEMORY[0x1B8C62190](v2, 0x20C40F5FB6D54);
  }

  return a1;
}

void ggl::TexturedSolidRibbon::PipelineState::~PipelineState(ggl::TexturedSolidRibbon::PipelineState *this)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderState>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderState>();
    unk_1EB83DB60 = 0x52AC71251090DBDELL;
    qword_1EB83DB68 = "md::ls::RenderState]";
    qword_1EB83DB70 = 19;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderState>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderState>(void)::metadata >= 0x200)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderState>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderState>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[74];
}

void ggl::TexturedInnerShadowRibbon::PipelineState::~PipelineState(ggl::TexturedInnerShadowRibbon::PipelineState *this)
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

void ggl::OuterShadowRibbon::PipelineState::~PipelineState(ggl::OuterShadowRibbon::PipelineState *this)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls11RenderStateEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52C60;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls11RenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52C60;
  a2[1] = v2;
  return result;
}

void ggl::Line::BasePipelineState::~BasePipelineState(ggl::Line::BasePipelineState *this)
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

uint64_t std::__hash_table<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::__unordered_map_hasher<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,md::DashTextureCache::KeyHasher,std::equal_to<md::DashTextureCache::Key>,true>,std::__unordered_map_equal<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::equal_to<md::DashTextureCache::Key>,md::DashTextureCache::KeyHasher,true>,std::allocator<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[9];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 2));
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

void md::PatternedSharedResources::~PatternedSharedResources(md::PatternedSharedResources *this)
{
  std::__hash_table<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::__unordered_map_hasher<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,md::DashTextureCache::KeyHasher,std::equal_to<md::DashTextureCache::Key>,true>,std::__unordered_map_equal<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::equal_to<md::DashTextureCache::Key>,md::DashTextureCache::KeyHasher,true>,std::allocator<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>>>::~__hash_table(this + 56);
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v3 + 104));
    v4 = *(v3 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    MEMORY[0x1B8C62190](v3, 0x1020C40AD78EA61);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::MarkPipelineDataRequirements>,std::allocator<ecs2::ForwardToExecute<md::ita::MarkPipelineDataRequirements>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::MarkPipelineDataRequirements::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

BOOL md::AnimationRunner::runAnimation(md::MapEngine **this, VKAnimation *a2)
{
  v3 = a2;
  v4 = *this;
  if (v4)
  {
    md::MapEngine::runAnimation(v4, v3);
  }

  return v4 != 0;
}

uint64_t md::ita::MarkPipelineDataRequirements::operator()(uint64_t **a1, uint64_t a2)
{
  v61[5] = *MEMORY[0x1E69E9840];
  v51 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v59[0] = &unk_1F2A123E0;
  v59[1] = &v51;
  v59[2] = a1;
  v60 = v59;
  v4 = *(a2 + 8);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(v4);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v4);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::DataIDSetToUse>(v4);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::RequiredPipelinePoolID>(v4);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v4);
  v61[0] = v5;
  v61[1] = v6;
  v61[2] = v7;
  v61[3] = v8;
  v10 = 1;
  v11 = v5;
  v12 = v61;
  v61[4] = v9;
  do
  {
    if (*(v61[v10] + 40) - *(v61[v10] + 32) < *(v11 + 40) - *(v11 + 32))
    {
      v11 = v61[v10];
      v12 = &v61[v10];
    }

    ++v10;
  }

  while (v10 != 5);
  v13 = *(*v12 + 32);
  v14 = *(*v12 + 40);
  v52 = v13;
  v53 = v14;
  v54 = v5;
  v55 = v6;
  v56 = v7;
  v57 = v8;
  v58 = v9;
  while (v13 != v14 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v52, *v13, v13[1]))
  {
    v13 += 2;
    v52 = v13;
  }

  v15 = v52;
  if (v52 == v14)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v21 = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
  }

  else
  {
    v49 = a2;
    v16 = v54;
    v17 = v55;
    v18 = v56;
    v19 = v57;
    v20 = v58;
    v50 = _ZTWN4ecs27Runtime11_localStateE();
    v21 = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
    v23 = v53;
    do
    {
      v24 = v15[1];
      v25 = v24 & 0x3F;
      v26 = (v24 >> 3) & 0x1FF8;
      v27 = *(*(*(v16 + 8) + v26) + 4 * v25 + 2);
      v28 = *(*(v16 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(v17 + 32);
      v30 = *(*(*(v18 + 8) + v26) + 4 * v25 + 2);
      v31 = *(*(v18 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(*(v17 + 8) + v26) + 4 * v25;
      v33 = *(*(*(v19 + 8) + v26) + 4 * v25 + 2);
      v34 = *(*(v19 + 56) + ((v33 >> 3) & 0x1FF8));
      v35 = *(*(*(v20 + 8) + v26) + 4 * v25 + 2);
      v36 = *(*(v20 + 56) + ((v35 >> 3) & 0x1FF8));
      v37 = *(v32 + 2);
      *(v50 + 104 * *v21 + 24) = *v15;
      if (!v60)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v60 + 48))(v60, v28 + 24 * (v27 & 0x3F), v29 + 4 * v37, v31 + 8 * (v30 & 0x3F), v34 + (v33 & 0x3F), v36 + 8 * (v35 & 0x3F));
      ++v22;
      v38 = v15 + 2;
      while (1)
      {
        v15 = v38;
        v52 = v38;
        if (v38 == v23)
        {
          break;
        }

        v39 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v52, *v38, v38[1]);
        v38 = v15 + 2;
        if (v39)
        {
          v40 = v15;
          goto LABEL_17;
        }
      }

      v40 = v23;
LABEL_17:
      ;
    }

    while (v40 != v14);
    v41 = *(v49 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v41 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v41 + 4096);
    v42 = v50;
  }

  *(v42 + 104 * *v21 + 24) = -65536;
  v43 = v42 + 104 * *v21;
  v44 = *(v43 + 92);
  *(v43 + 92) = v44 + 1;
  *(v43 + 4 * v44 + 28) = v22;
  v45 = v42 + 104 * *v21;
  v47 = *(v45 + 92);
  v46 = (v45 + 92);
  if (v47 >= 0x10)
  {
    *v46 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::RenderItemID const&,md::ls::NeedsFunctionConstantsUpdate const&,md::ls::DataIDSetToUse const&,md::ls::RequiredPipelinePoolID const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v59);
}

void sub_1B295EEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(md::ls::RenderItemID const&,md::ls::NeedsFunctionConstantsUpdate const&,md::ls::DataIDSetToUse const&,md::ls::RequiredPipelinePoolID const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::MapEngine::runAnimation(md::MapEngine *this, VKAnimation *a2)
{
  v3 = a2;
  (*(**(this + 24) + 24))(*(this + 24));
  md::MapEngine::updateRunLoopStatus(this);
}

uint64_t md::CartographicTiledVectorRenderLayer<md::DaVinciRoadTileDataRenderable>::~CartographicTiledVectorRenderLayer(void *a1)
{
  *a1 = &unk_1F2A2E6B8;
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

  return md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::~CartographicTiledRenderLayer(a1);
}

uint64_t md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2B428;
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

  geo::Pool<md::DaVinciRoadTileDataRenderable>::disposeElements(a1 + 224);
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

  std::__function::__value_func<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

void md::AnimationManager::runAnimation(md::AnimationManager *this, VKAnimation *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(this + 233) == 1)
  {
    v5 = v3;
    [(VKAnimation *)v5 startWithRunner:*(this + 2)];
    Current = CFAbsoluteTimeGetCurrent();
    [(VKAnimation *)v5 onTimerFired:?];
    if ([(VKAnimation *)v5 timed])
    {
      [(VKAnimation *)v5 duration];
      [(VKAnimation *)v5 onTimerFired:v7 + Current];
    }

    [(VKAnimation *)v5 stopAnimation:1];

    goto LABEL_43;
  }

  std::mutex::lock((this + 40));
  v8 = [(VKAnimation *)v4 priority];
  geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v31, v4);
  v9 = [v32 hash];
  v10 = this + 40 * v8;
  v11 = v10 + 104;
  v12 = *(v10 + 112);
  if (v12)
  {
    v13 = v9;
    v14 = vcnt_s8(v12);
    v14.i16[0] = vaddlv_u8(v14);
    v15 = v14.u32[0];
    if (v14.u32[0] > 1uLL)
    {
      v16 = v9;
      if (v9 >= *&v12)
      {
        v16 = v9 % *&v12;
      }
    }

    else
    {
      v16 = (*&v12 - 1) & v9;
    }

    v17 = *(*v11 + 8 * v16);
    if (v17)
    {
      for (i = *v17; i; i = *i)
      {
        v19 = i[1];
        if (v13 == v19)
        {
          if (geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(i[3], &v31))
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v15 > 1)
          {
            if (v19 >= *&v12)
            {
              v19 %= *&v12;
            }
          }

          else
          {
            v19 &= *&v12 - 1;
          }

          if (v19 != v16)
          {
            break;
          }
        }
      }
    }
  }

  v20 = [v32 hash];
  v21 = v20;
  v22 = v11[1];
  if (!*&v22)
  {
    goto LABEL_38;
  }

  v23 = vcnt_s8(v22);
  v23.i16[0] = vaddlv_u8(v23);
  v24 = v23.u32[0];
  if (v23.u32[0] > 1uLL)
  {
    v25 = v20;
    if (v20 >= *&v22)
    {
      v25 = v20 % *&v22;
    }
  }

  else
  {
    v25 = (*&v22 - 1) & v20;
  }

  v26 = *(*v11 + 8 * v25);
  if (!v26 || (v27 = *v26) == 0)
  {
LABEL_38:
    operator new();
  }

  while (1)
  {
    v28 = v27[1];
    if (v28 == v21)
    {
      break;
    }

    if (v24 > 1)
    {
      if (v28 >= *&v22)
      {
        v28 %= *&v22;
      }
    }

    else
    {
      v28 &= *&v22 - 1;
    }

    if (v28 != v25)
    {
      goto LABEL_38;
    }

LABEL_37:
    v27 = *v27;
    if (!v27)
    {
      goto LABEL_38;
    }
  }

  if ((geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(v27[3], &v31) & 1) == 0)
  {
    goto LABEL_37;
  }

  v29 = *(this + 2);
  v30 = v32;
  [v30 startWithRunner:v29];

  if ([(VKAnimation *)v4 hasFrequency])
  {
    operator new();
  }

  atomic_store(1u, this + 184);
LABEL_42:
  v31 = &unk_1F2A4BA00;

  std::mutex::unlock((this + 40));
LABEL_43:
}

void sub_1B295FCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, id a22)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,void *>>>>::~unique_ptr[abi:nn200100](&a10);
  a21 = &unk_1F2A4BA00;

  std::mutex::unlock((v23 + 40));
  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
    *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
    qword_1EB83D950 = "md::ls::PipelineSetup]";
    qword_1EB83D958 = 21;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata >= 0x200)
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

uint64_t std::__function::__value_func<void ()(md::ls::RenderItemID const&,md::ls::NeedsFunctionConstantsUpdate const&,md::ls::DataIDSetToUse const&,md::ls::RequiredPipelinePoolID const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::DaVinciHikingRenderLayer::~DaVinciHikingRenderLayer(uint64_t **this)
{
  *this = &unk_1F29EAD88;
  std::unique_ptr<md::TrailJunctionRenderable::SharedResources>::reset[abi:nn200100](this + 54, 0);
  md::DaVinciCenterLineRoadsRenderLayer::~DaVinciCenterLineRoadsRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29EAD88;
  std::unique_ptr<md::TrailJunctionRenderable::SharedResources>::reset[abi:nn200100](this + 54, 0);

  md::DaVinciCenterLineRoadsRenderLayer::~DaVinciCenterLineRoadsRenderLayer(this);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::ShouldSkipRender>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ShouldSkipRender>();
    *algn_1EB83D4E8 = 0x22E5462B4C348FD9;
    qword_1EB83D4F0 = "md::ls::ShouldSkipRender]";
    qword_1EB83D4F8 = 24;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>(void)::metadata >= 0x200)
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

uint64_t ggl::RenderTarget::width(ggl::RenderTarget *this)
{
  v1 = *(this + 42);
  if (v1)
  {
    return *(v1 + 36);
  }

  v3 = *(this + 11);
  if (v3)
  {
    v4 = 96;
  }

  else
  {
    v3 = *(this + 35);
    if (!v3)
    {
      return 0;
    }

    v4 = 288;
  }

  v5 = *(this + v4);
  v6 = 80;
  if (*(v3 + 56) == 3)
  {
    v6 = 196;
  }

  v7 = *(v3 + v6);
  v8 = v7 >> v5;
  if (v8 <= 1)
  {
    v8 = 1;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void md::DaVinciGroundRenderLayer::~DaVinciGroundRenderLayer(md::DaVinciGroundRenderLayer *this)
{
  md::DaVinciGroundRenderLayer::~DaVinciGroundRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A48740;
  v2 = *(this + 473);
  if (v2)
  {
    *(this + 474) = v2;
    operator delete(v2);
  }

  v3 = *(this + 467);
  *(this + 467) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 466);
  *(this + 466) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<ggl::ComputeItem>::~unique_ptr[abi:nn200100](this + 465);
  std::unique_ptr<ggl::ComputeItem>::~unique_ptr[abi:nn200100](this + 464);
  for (i = 3664; i != 3584; i -= 40)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + i);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 3584);
  v6 = *(this + 447);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 444));
  v7 = *(this + 434);
  if (v7)
  {
    *(this + 435) = v7;
    operator delete(v7);
  }

  md::DaVinciGroundRenderResources::~DaVinciGroundRenderResources((this + 568));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 528);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 488);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 448);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 408);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 368);

  md::CartographicTiledVectorRenderLayer<md::DaVinciGroundRenderable>::~CartographicTiledVectorRenderLayer(this);
}

uint64_t ggl::RenderTarget::height(ggl::RenderTarget *this)
{
  v1 = *(this + 42);
  if (v1)
  {
    return *(v1 + 40);
  }

  v3 = *(this + 11);
  if (v3)
  {
    v4 = 96;
  }

  else
  {
    v3 = *(this + 35);
    if (!v3)
    {
      return 0;
    }

    v4 = 288;
  }

  v5 = *(this + v4);
  v6 = 84;
  if (*(v3 + 56) == 3)
  {
    v6 = 196;
  }

  v7 = *(v3 + v6);
  v8 = v7 >> v5;
  if (v8 <= 1)
  {
    v8 = 1;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::DetermineIfShouldRender>,std::allocator<ecs2::ForwardToExecute<md::ita::DetermineIfShouldRender>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::DetermineIfShouldRender,md::ls::VisibilityGroupTest const&,md::ls::ShouldSkipRender const*,md::ls::DataForCommandBuffer const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t VKAnimationCurveEaseOut_block_invoke_5(double a1)
{
  v1 = LODWORD(a1);
  if (_ZZUb3_E9onceToken[0] != -1)
  {
    dispatch_once(_ZZUb3_E9onceToken, &__block_literal_global_18);
  }

  v2 = _ZZUb3_E14timingFunction;
  LODWORD(a1) = v1;

  return [v2 _solveForInput:a1];
}

ggl::ComputeItem **std::unique_ptr<ggl::ComputeItem>::~unique_ptr[abi:nn200100](ggl::ComputeItem **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ggl::ComputeItem::~ComputeItem(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ShouldSkipRender>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ShouldSkipRender>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[11];
}

void md::DaVinciGroundRenderResources::~DaVinciGroundRenderResources(md::DaVinciGroundRenderResources *this)
{
  v2 = *(this + 362);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 360);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 358);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 356);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  std::__tree<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::__map_value_compare<gss::StyleAttribute,std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::less<gss::StyleAttribute>,true>,std::allocator<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>>>::destroy(*(this + 353));
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(this + 2776);
  v6 = *(this + 343);
  *(this + 343) = 0;
  if (v6)
  {
    MEMORY[0x1B8C62190](v6, 0x1000C4049ECCB0CLL);
  }

  v7 = *(this + 342);
  *(this + 342) = 0;
  if (v7)
  {
    MEMORY[0x1B8C62190](v7, 0x1000C4049ECCB0CLL);
  }

  v8 = *(this + 341);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 339);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  md::FrameAllocator<ggl::RenderItem>::reset(this + 2680);
  free(*(this + 335));
  v10 = *(this + 332);
  if (v10)
  {
    *(this + 333) = v10;
    operator delete(v10);
  }

  v84 = (this + 2624);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v84);
  v11 = *(this + 325);
  if (v11)
  {
    *(this + 326) = v11;
    operator delete(v11);
  }

  v84 = (this + 2568);
  std::vector<std::pair<md::DaVinciRenderStateCache::RenderStateKey,std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>>,geo::allocator_adapter<std::pair<md::DaVinciRenderStateCache::RenderStateKey,std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v84);
  ggl::RenderDataHolder::~RenderDataHolder((this + 2352));
  ggl::RenderDataHolder::~RenderDataHolder((this + 2136));
  ggl::RenderDataHolder::~RenderDataHolder((this + 1920));
  ggl::RenderDataHolder::~RenderDataHolder((this + 1704));
  v12 = *(this + 212);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(this + 210);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = *(this + 208);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = *(this + 206);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = *(this + 204);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  v17 = *(this + 202);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  v18 = *(this + 200);
  *(this + 200) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 199);
  *(this + 199) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 198);
  *(this + 198) = 0;
  if (v20)
  {
    v21 = ggl::FragmentedPool<ggl::DaVinci::PackedLinearDepthPipelineSetup>::~FragmentedPool(v20);
    MEMORY[0x1B8C62190](v21, 0x10A0C405CD4001ALL);
  }

  v22 = *(this + 197);
  *(this + 197) = 0;
  if (v22)
  {
    v23 = ggl::FragmentedPool<ggl::DaVinci::LinearDepthPipelineSetup>::~FragmentedPool(v22);
    MEMORY[0x1B8C62190](v23, 0x10A0C405CD4001ALL);
  }

  v24 = *(this + 196);
  *(this + 196) = 0;
  if (v24)
  {
    v25 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::Clipping>>::~FragmentedPool(v24);
    MEMORY[0x1B8C62190](v25, 0x10A0C405CD4001ALL);
  }

  v26 = *(this + 195);
  *(this + 195) = 0;
  if (v26)
  {
    v27 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~FragmentedPool(v26);
    MEMORY[0x1B8C62190](v27, 0x10A0C405CD4001ALL);
  }

  v28 = *(this + 194);
  *(this + 194) = 0;
  if (v28)
  {
    v29 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>::~FragmentedPool(v28);
    MEMORY[0x1B8C62190](v29, 0x10A0C405CD4001ALL);
  }

  v30 = *(this + 193);
  *(this + 193) = 0;
  if (v30)
  {
    v31 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~FragmentedPool(v30);
    MEMORY[0x1B8C62190](v31, 0x10A0C405CD4001ALL);
  }

  v32 = *(this + 192);
  *(this + 192) = 0;
  if (v32)
  {
    v33 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~FragmentedPool(v32);
    MEMORY[0x1B8C62190](v33, 0x10A0C405CD4001ALL);
  }

  v34 = *(this + 191);
  *(this + 191) = 0;
  if (v34)
  {
    v35 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~FragmentedPool(v34);
    MEMORY[0x1B8C62190](v35, 0x10A0C405CD4001ALL);
  }

  v36 = *(this + 190);
  *(this + 190) = 0;
  if (v36)
  {
    v37 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle>>::~FragmentedPool(v36);
    MEMORY[0x1B8C62190](v37, 0x10A0C405CD4001ALL);
  }

  v38 = *(this + 189);
  *(this + 189) = 0;
  if (v38)
  {
    v39 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~FragmentedPool(v38);
    MEMORY[0x1B8C62190](v39, 0x10A0C405CD4001ALL);
  }

  v40 = *(this + 188);
  *(this + 188) = 0;
  if (v40)
  {
    v41 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~FragmentedPool(v40);
    MEMORY[0x1B8C62190](v41, 0x10A0C405CD4001ALL);
  }

  v42 = *(this + 187);
  *(this + 187) = 0;
  if (v42)
  {
    v43 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~FragmentedPool(v42);
    MEMORY[0x1B8C62190](v43, 0x10A0C405CD4001ALL);
  }

  v44 = *(this + 186);
  *(this + 186) = 0;
  if (v44)
  {
    v45 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~FragmentedPool(v44);
    MEMORY[0x1B8C62190](v45, 0x10A0C405CD4001ALL);
  }

  v46 = *(this + 185);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v46);
  }

  v47 = *(this + 183);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  v48 = *(this + 181);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v48);
  }

  v49 = *(this + 179);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v49);
  }

  v50 = *(this + 177);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v50);
  }

  v51 = *(this + 175);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }

  v52 = *(this + 171);
  *(this + 171) = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  v53 = *(this + 170);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }

  v54 = *(this + 168);
  *(this + 168) = 0;
  if (v54)
  {
    ggl::ComputeItem::~ComputeItem(v54);
    MEMORY[0x1B8C62190]();
  }

  v55 = *(this + 167);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }

  v56 = *(this + 165);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  v57 = *(this + 163);
  *(this + 163) = 0;
  if (v57)
  {
    v58 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~FragmentedPool(v57);
    MEMORY[0x1B8C62190](v58, 0x10A0C405CD4001ALL);
  }

  v59 = *(this + 162);
  *(this + 162) = 0;
  if (v59)
  {
    v60 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~FragmentedPool(v59);
    MEMORY[0x1B8C62190](v60, 0x10A0C405CD4001ALL);
  }

  v61 = *(this + 161);
  *(this + 161) = 0;
  if (v61)
  {
    v62 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~FragmentedPool(v61);
    MEMORY[0x1B8C62190](v62, 0x10A0C405CD4001ALL);
  }

  v63 = *(this + 160);
  *(this + 160) = 0;
  if (v63)
  {
    v64 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~FragmentedPool(v63);
    MEMORY[0x1B8C62190](v64, 0x10A0C405CD4001ALL);
  }

  v65 = *(this + 159);
  *(this + 159) = 0;
  if (v65)
  {
    v66 = ggl::FragmentedPool<ggl::DaVinci::DecalPipelineSetup>::~FragmentedPool(v65);
    MEMORY[0x1B8C62190](v66, 0x10A0C405CD4001ALL);
  }

  v67 = *(this + 158);
  *(this + 158) = 0;
  if (v67)
  {
    v68 = ggl::FragmentedPool<ggl::DaVinci::RibbonPipelineSetup>::~FragmentedPool(v67);
    MEMORY[0x1B8C62190](v68, 0x10A0C405CD4001ALL);
  }

  v69 = *(this + 157);
  *(this + 157) = 0;
  if (v69)
  {
    v70 = ggl::FragmentedPool<ggl::DaVinci::GroundShadowMapPipelineSetup>::~FragmentedPool(v69);
    MEMORY[0x1B8C62190](v70, 0x10A0C405CD4001ALL);
  }

  v71 = *(this + 156);
  *(this + 156) = 0;
  if (v71)
  {
    v72 = ggl::FragmentedPool<ggl::DaVinci::GroundDepthPipelineSetup>::~FragmentedPool(v71);
    MEMORY[0x1B8C62190](v72, 0x10A0C405CD4001ALL);
  }

  v73 = *(this + 155);
  *(this + 155) = 0;
  if (v73)
  {
    v74 = ggl::FragmentedPool<ggl::DaVinci::GroundNonCompressedPipelineSetup>::~FragmentedPool(v73);
    MEMORY[0x1B8C62190](v74, 0x10A0C405CD4001ALL);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::GroundPipelineSetup>>::~unique_ptr[abi:nn200100](this + 154);
  std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::GroundPipelineSetup>>::~unique_ptr[abi:nn200100](this + 153);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 1184);
  v75 = *(this + 137);
  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v75);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 1048);
  v76 = *(this + 120);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v76);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 912);
  v77 = *(this + 103);
  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v77);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 776);
  v78 = *(this + 86);
  if (v78)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v78);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 640);
  v79 = *(this + 69);
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v79);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 504);
  v80 = *(this + 52);
  if (v80)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v80);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 368);
  v81 = *(this + 35);
  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v81);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 232);
  v82 = *(this + 18);
  if (v82)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v82);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 96);
  v83 = *(this + 1);
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v83);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16ShouldSkipRenderEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A35140;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void VKAnimationCurveEaseOut_block_invoke_6()
{
  v0 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  v1 = _ZZUb3_E14timingFunction;
  _ZZUb3_E14timingFunction = v0;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16ShouldSkipRenderEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A35140;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ecs2::ForwardToExecute<SetResourcesUtilityTask>,std::allocator<ecs2::ForwardToExecute<SetResourcesUtilityTask>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  SetResourcesUtilityTask::operator()((a1 + 8));
  *v2 = 0;
}

void ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void SetResourcesUtilityTask::operator()(uint64_t **a1)
{
  v38 = 0;
  v39 = 0;
  v2 = **a1;
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 == v4)
  {
    goto LABEL_5;
  }

  v5 = *v2;
  while (*v5 != 0xC94DD89A7B09BE9CLL)
  {
    v5 += 5;
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  if (v5 == v4)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v6 = v5[3];
    v7 = v5[4];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      v8 = **a1;
      v3 = *v8;
      v4 = *(v8 + 8);
    }
  }

  v9 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(v3, v4);
  v10 = (**v9)(v9);
  v11 = md::LayoutContext::get<md::LightingLogicContext>(*(v10 + 8));
  if (!v11)
  {
    v22 = 0;
    goto LABEL_36;
  }

  v12 = v11;
  v13 = ***a1;
  if (*v13 != 0xD369A4D92C8FFE6CLL)
  {
    v14 = v13 + 5;
    do
    {
      v15 = *v14;
      v14 += 5;
    }

    while (v15 != 0xD369A4D92C8FFE6CLL);
    v13 = v14 - 5;
  }

  v17 = v13[3];
  v16 = v13[4];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [*((*(*v17 + 16))(v17) + 104) contentScale];
  v19 = v18;
  v20 = *((*(*v6 + 48))(v6) + 2704);
  v22 = *(v20 + 32);
  v21 = *(v20 + 40);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38 = v22;
  v39 = v21;
  v23 = +[VKDebugSettings sharedSettings];
  v24 = [v23 lightingEnableAmbient];

  if (v24 && *(v12 + 152) == 1)
  {
    v25 = (*(*v6 + 48))(v6);
    if ((v12[19] & 1) == 0)
    {
      v34 = std::__throw_bad_optional_access[abi:nn200100]();
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
      }

      _Unwind_Resume(v34);
    }

    v26 = *(v25 + 2704);
    v27 = (*(*v6 + 48))(v6);
    v29 = *(v27 + 1632);
    v35[0] = *(v27 + 1624);
    v35[1] = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = v19;
    md::TextureManager::cubeTexture(&v36, v26, (v12 + 16), v35, v28);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    if (v36)
    {
      v22 = *(v36 + 4);
      v30 = *(v36 + 5);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = v22;
      v39 = v30;
      if (!v21)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (!v21)
      {
        v38 = v22;
        v39 = 0;
LABEL_34:
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v37);
        }

        goto LABEL_36;
      }

      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v38 = v22;
      v39 = v21;
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    goto LABEL_34;
  }

LABEL_36:
  v31 = (*(*v6 + 88))(v6);
  if (v31 != v22)
  {
    (*(*v6 + 96))(v6, &v38);
  }

  v32 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::AssignAmbientTextureIndexFiltered>();
  ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~v32, v31 == v22);
  v33 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::AssignAmbientTextureIndexAll>();
  ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~v33, v31 != v22);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }
}

void *ggl::FragmentedPool<ggl::DaVinci::PackedLinearDepthPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::DaVinci::PackedLinearDepthPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::DaVinci::PackedLinearDepthPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::DaVinci::PackedLinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::PackedLinearDepthPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::DaVinci::PackedLinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::PackedLinearDepthPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::DaVinci::PackedLinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::PackedLinearDepthPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::PackedLinearDepthPipelineSetup *>(v2, v1);
  }
}

void *ggl::FragmentedPool<ggl::DaVinci::LinearDepthPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::DaVinci::LinearDepthPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::DaVinci::LinearDepthPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::DaVinci::LinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::LinearDepthPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::DaVinci::LinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::LinearDepthPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::DaVinci::LinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::LinearDepthPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::LinearDepthPipelineSetup *>(v2, v1);
  }
}

BOOL std::equal_to<md::TextureManager::TextureKey>::operator()[abi:nn200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v9 = *(v6 + 28);
  v10 = *(v7 + 28);
  result = v10 == v9;
  if (v10 == v9)
  {
    if (*(v7 + 28))
    {
      return *(v7 + 6) == *(v6 + 6);
    }
  }

  return result;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::Clipping>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::Tile::Clipping> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::Tile::Clipping> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Tile::Clipping> *>(v2, v1);
  }
}

void md::RenderLayerProviderWrapper::setAmbientCube(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(v2 + 4624) = v4;
  v5 = *(v2 + 4632);
  *(v2 + 4632) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

uint64_t ecs2::UtilityTaskContext::toggleTask(ecs2::UtilityTaskContext *this, unsigned __int16 a2, char a3)
{
  result = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(this + 17, a2);
  if (result)
  {
    v6 = *(result + 20);
    if (v6 != -65536)
    {
      result = ecs2::BasicRegistry<void>::storage<ecs2::TaskState>(*(this + 29));
      v7 = *(*(*(result + 8) + ((v6 >> 19) & 0x1FF8)) + 4 * ((v6 >> 16) & 0x3F) + 2);
      *(*(*(result + 56) + ((v7 >> 3) & 0x1FF8)) + (v7 & 0x3F)) = a3 ^ 1;
    }
  }

  return result;
}

void std::vector<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>(v2, v1);
  }
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ItemsPrepared>();
    unk_1EB83D990 = 0xC120277B06FDA0DALL;
    qword_1EB83D998 = "md::ls::ItemsPrepared]";
    qword_1EB83D9A0 = 21;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>(void)::metadata >= 0x200)
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

uint64_t ggl::RenderItem::gatherBufferLoadItems(uint64_t result, ggl::zone_mallocator *a2, ggl::Device *a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v30[4] = *MEMORY[0x1E69E9840];
  v10 = *(result + 64);
  if (v10)
  {
    v11 = v10[9];
    v12 = v10[8];
    if (v11 != v12 && *v12)
    {
      do
      {
        v13 = *v12;
        if (*(*v12 + 18) == 1 && *(v13 + 24) != a4 && *(v13 + 28))
        {
          *(v13 + 24) = a4;
          *(v13 + 56) = *(v13 + 40);
        }

        if (*(v13 + 8) != *(v13 + 7))
        {
          ggl::BufferData::vendLoadItem(&v28, *v12, a3, a4, a5);
          v14 = *(a2 + 1);
          if (v14 >= *(a2 + 2))
          {
            v16 = std::vector<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>>::__emplace_back_slow_path<ggl::BufferLoadItem&>(a2, &v28);
          }

          else
          {
            v15 = v29;
            *v14 = v28;
            *(v14 + 16) = v15;
            std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::__value_func[abi:nn200100](v14 + 32, v30);
            v16 = (v14 + 64);
          }

          *(a2 + 1) = v16;
          result = std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v30);
        }

        v12 += 2;
      }

      while (v12 != v11);
      v10 = *(v9 + 64);
    }

    v17 = v10[12];
    if (v17)
    {
      if (*(v17 + 18) == 1 && *(v17 + 192) != a4 && *(v17 + 112))
      {
        *(v17 + 192) = a4;
        *(v17 + 56) = *(v17 + 40);
      }

      if (*(v17 + 64) != *(v17 + 56))
      {
        ggl::BufferData::vendLoadItem(&v28, *(*(v9 + 64) + 96), a3, a4, a5);
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2))
        {
          v20 = std::vector<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>>::__emplace_back_slow_path<ggl::BufferLoadItem&>(a2, &v28);
        }

        else
        {
          v19 = v29;
          *v18 = v28;
          *(v18 + 16) = v19;
          std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::__value_func[abi:nn200100](v18 + 32, v30);
          v20 = (v18 + 64);
        }

        *(a2 + 1) = v20;
        result = std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v30);
      }
    }
  }

  v21 = *(v9 + 32);
  v22 = v21[13];
  for (i = v21[14]; v22 != i; v22 += 16)
  {
    result = (*(*v21 + 32))(v21, *(v22 + 8));
    if (result)
    {
      v24 = *v22;
      if (*v22)
      {
        if (*(v24 + 18) == 1 && *(v24 + 24) != a4 && *(v24 + 28))
        {
          *(v24 + 24) = a4;
          *(v24 + 56) = *(v24 + 40);
        }

        if (*(v24 + 8) != *(v24 + 7))
        {
          ggl::BufferData::vendLoadItem(&v28, *v22, a3, a4, a5);
          v25 = *(a2 + 1);
          if (v25 >= *(a2 + 2))
          {
            v27 = std::vector<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>>::__emplace_back_slow_path<ggl::BufferLoadItem&>(a2, &v28);
          }

          else
          {
            v26 = v29;
            *v25 = v28;
            *(v25 + 16) = v26;
            std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::__value_func[abi:nn200100](v25 + 32, v30);
            v27 = (v25 + 64);
          }

          *(a2 + 1) = v27;
          result = std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v30);
        }
      }
    }
  }

  return result;
}

void gss::StylesheetManager<gss::PropertyID>::finishBlend(uint64_t a1)
{
  v2 = *(a1 + 520);
  if (v2)
  {
    v16 = (v2 + 16);
    v3 = pthread_rwlock_wrlock((v2 + 16));
    if (v3)
    {
      geo::read_write_lock::logFailure(v3, "write lock", v4);
    }

    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v2 + 216));
    *(v2 + 216) = 0;
    *(v2 + 224) = 0;
    *(v2 + 232) = 0;
    *(v2 + 233) = 1;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(v2 + 216, v2 + 240);
    gss::ClientStyleState<gss::ScenePropertyID>::setBlendingFactor(v2, 0.0);
    geo::write_lock_guard::~write_lock_guard(&v16);
  }

  v5 = pthread_rwlock_rdlock((a1 + 320));
  if (v5)
  {
    geo::read_write_lock::logFailure(v5, "read lock", v6);
  }

  for (i = *(a1 + 88); i != *(a1 + 96); i += 2)
  {
    v8 = i[1];
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *i;
        if (*i)
        {
          v12 = v11[32];
          if (v12)
          {
            v13 = v11[33];
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
            }

            v14 = v11[31];
            v11[30] = v12;
            v11[31] = v13;
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v14);
            }

            v15 = v11[33];
            v11[32] = 0;
            v11[33] = 0;
            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v15);
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }
    }
  }

  geo::read_write_lock::unlock((a1 + 320));
}

void sub_1B2962164(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::write_lock_guard::~write_lock_guard(va);
  _Unwind_Resume(a1);
}

char *std::vector<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>>::__emplace_back_slow_path<ggl::BufferLoadItem&>(ggl::zone_mallocator *a1, _OWORD *a2)
{
  v2 = (*(a1 + 1) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = *(a1 + 2) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18[4] = a1 + 24;
  if (v7)
  {
    v8 = ggl::zone_mallocator::instance(a1);
    v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BufferLoadItem>(v8, v7);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[64 * v2];
  v11 = a2[1];
  v12 = &v9[64 * v7];
  *v10 = *a2;
  *(v10 + 1) = v11;
  std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::__value_func[abi:nn200100]((v10 + 32), (a2 + 2));
  v13 = *(a1 + 1);
  v14 = &v10[*a1 - v13];
  std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>,ggl::BufferLoadItem*>(*a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 1) = v10 + 64;
  v16 = *(a1 + 2);
  *(a1 + 2) = v12;
  v18[2] = v15;
  v18[3] = v16;
  v18[0] = v15;
  v18[1] = v15;
  std::__split_buffer<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator> &>::~__split_buffer(v18);
  return v10 + 64;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverNightTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverNightTextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignFlyoverNightTextureIndex::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void std::vector<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *>(v2, v1);
  }
}

uint64_t md::StyleLogic::_finishStyleBlend(md::StyleLogic *this)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A29A98;
  v4[3] = v4;
  md::StyleLogic::_applyWithActiveStyleManager(this, v4);
  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)>::~__value_func[abi:nn200100](v4);
  v3[0] = &unk_1F2A29AE0;
  v3[3] = v3;
  md::StyleLogic::_applyWithActiveSceneManager(this, v3);
  return std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)>::~__value_func[abi:nn200100](v3);
}

void sub_1B296247C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>,ggl::BufferLoadItem*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = a3 + 32;
    v6 = result;
    do
    {
      v7 = *(v6 + 16);
      *(v5 - 32) = *v6;
      *(v5 - 16) = v7;
      v8 = *(v6 + 56);
      if (v8)
      {
        if (v6 + 32 == v8)
        {
          *(v5 + 24) = v5;
          (*(**(v6 + 56) + 24))(*(v6 + 56), v5);
        }

        else
        {
          *(v5 + 24) = v8;
          *(v6 + 56) = 0;
        }
      }

      else
      {
        *(v5 + 24) = 0;
      }

      v6 += 64;
      v5 += 64;
    }

    while (v6 != a2);
    do
    {
      result = std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v4 + 32);
      v4 += 64;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ItemsPrepared>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ItemsPrepared>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[54];
}

ggl::zone_mallocator *std::__split_buffer<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(v1 + 2))
  {
    *(v1 + 2) = i - 64;
    a1 = std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](i - 32);
  }

  v4 = *v1;
  if (*v1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BufferLoadItem>(v5, v4);
  }

  return v1;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>(v2, v1);
  }
}

void std::__function::__func<md::StyleLogic::_finishStyleBlend(void)::$_1,std::allocator<md::StyleLogic::_finishStyleBlend(void)::$_1>,void ()(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 520);
  if (v3)
  {
    v17 = (v3 + 16);
    v4 = pthread_rwlock_wrlock((v3 + 16));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "write lock", v5);
    }

    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v3 + 216));
    *(v3 + 216) = 0;
    *(v3 + 224) = 0;
    *(v3 + 232) = 0;
    *(v3 + 233) = 1;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(v3 + 216, v3 + 240);
    gss::ClientStyleState<gss::ScenePropertyID>::setBlendingFactor(v3, 0.0);
    geo::write_lock_guard::~write_lock_guard(&v17);
  }

  v6 = pthread_rwlock_rdlock((v2 + 320));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "read lock", v7);
  }

  for (i = *(v2 + 88); i != *(v2 + 96); i += 2)
  {
    v9 = i[1];
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *i;
        if (*i)
        {
          v13 = v12[32];
          if (v13)
          {
            v14 = v12[33];
            if (v14)
            {
              atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
            }

            v15 = v12[31];
            v12[30] = v13;
            v12[31] = v14;
            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v15);
            }

            v16 = v12[33];
            v12[32] = 0;
            v12[33] = 0;
            if (v16)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v16);
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }
    }
  }

  geo::read_write_lock::unlock((v2 + 320));
}

void sub_1B2962890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::write_lock_guard::~write_lock_guard(va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls13ItemsPreparedEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A3F700;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<Flyover::NightTexture>>();
    *algn_1EB83C828 = 0xF9931FC5DA4F362;
    qword_1EB83C830 = "md::ls::RequiresShaderTextureID<Flyover::NightTexture>]";
    qword_1EB83C838 = 54;
  }
}

void *ggl::RenderItem::gatherTextureLoadItems(uint64_t a1, void *a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (result)
  {
    v5 = result[21];
    if (v5 != result[22])
    {
      v8 = 0;
      v28 = a2 + 3;
      v9 = MEMORY[0x1E69E9C10];
      do
      {
        v10 = *(v5 + 8 * v8);
        if (v10)
        {
          v11 = (*(*result + 24))(result, v8);
          if (v11)
          {
            if (*(v10 + 24) == 3735927469)
            {
              v11 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
              if (v11)
              {
                v27 = *(a1 + 16);
                buf = 134218498;
                buf_4 = v10;
                buf_12 = 2080;
                buf_14 = v27;
                v33 = 1024;
                v34 = a3;
                _os_log_error_impl(&dword_1B2754000, v9, OS_LOG_TYPE_ERROR, "Detected stale texture resource %p in render item %s within command buffer %d Please file a radar!", &buf, 0x1Cu);
              }
            }

            v12 = *(v10 + 56);
            if (v12 == 3)
            {
              LOBYTE(v23) = 1;
              for (i = 96; i != 192; i += 16)
              {
                v23 = v23 & (*(v10 + i) != 0);
              }

              if (v23 && (*(v10 + 193) & 1) == 0)
              {
                ggl::TextureCube::vendImplicitLoadItems(v10, a2);
              }
            }

            else if (v12 == 2)
            {
              if (*(v10 + 88))
              {
                v13 = *(v10 + 96);
                LOBYTE(v14) = 1;
                v15 = *(v10 + 88);
                do
                {
                  v16 = *v13;
                  v13 += 2;
                  v14 = v14 & (v16 != 0);
                  --v15;
                }

                while (v15);
                if (v14 && (*(v10 + 129) & 1) == 0)
                {
                  v17 = a2[1];
                  v18 = a2[2];
                  if (v17 < v18)
                  {
                    std::construct_at[abi:nn200100]<ggl::Texture2DLoadItem,ggl::TextureData2DAbstract const*,ggl::Texture2DArray *,unsigned int &,gm::Box<unsigned int,2>,std::__bind<void (ggl::Texture2DArray::*)(ggl::Texture2DLoadItem const&),ggl::Texture2DArray *,std::placeholders::__ph<1> const&>,ggl::Texture2DLoadItem*>();
                  }

                  v19 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - *a2) >> 4) + 1;
                  if (v19 <= 0x333333333333333)
                  {
                    v20 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - *a2) >> 4);
                    if (2 * v20 > v19)
                    {
                      v19 = 2 * v20;
                    }

                    if (v20 >= 0x199999999999999)
                    {
                      v21 = 0x333333333333333;
                    }

                    else
                    {
                      v21 = v19;
                    }

                    v35 = v28;
                    if (v21)
                    {
                      v22 = ggl::zone_mallocator::instance(v11);
                      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Texture2DLoadItem>(v22, v21);
                    }

                    std::construct_at[abi:nn200100]<ggl::Texture2DLoadItem,ggl::TextureData2DAbstract const*,ggl::Texture2DArray *,unsigned int &,gm::Box<unsigned int,2>,std::__bind<void (ggl::Texture2DArray::*)(ggl::Texture2DLoadItem const&),ggl::Texture2DArray *,std::placeholders::__ph<1> const&>,ggl::Texture2DLoadItem*>();
                  }

                  std::__throw_bad_array_new_length[abi:nn200100]();
                }
              }

              else
              {
                v26 = *(v10 + 129);
                v25 = (v10 + 129);
                if ((v26 & 1) == 0)
                {
                  *v25 = 1;
                }
              }
            }

            else if (v12 == 1 && *(v10 + 112) && (*(v10 + 129) & 1) == 0)
            {
              ggl::Texture2D::vendImplicitLoadItem(&buf);
            }
          }
        }

        ++v8;
        result = *(a1 + 32);
        v5 = result[21];
      }

      while (v8 < (result[22] - v5) >> 3);
    }
  }

  return result;
}

void std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>(v2, v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13ItemsPreparedEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A3F700;
  a2[1] = v2;
  return result;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void md::AnimationManager::animationDidStop(md::AnimationManager *this, VKAnimation *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  std::mutex::lock((this + 40));
  v4 = [(VKAnimation *)v3 priority];
  geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v41, v3);
  v5 = [v42 hash];
  v6 = this + 40 * v4;
  v7 = v6 + 104;
  v8 = *(v6 + 112);
  if (v8)
  {
    v9 = v5;
    v10 = vcnt_s8(v8);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v12 = v5;
      if (v5 >= *&v8)
      {
        v12 = v5 % *&v8;
      }
    }

    else
    {
      v12 = (*&v8 - 1) & v5;
    }

    v13 = *(*v7 + 8 * v12);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(i[3], &v41))
          {
            v16 = *(v7 + 8);
            v17 = i[1];
            v18 = vcnt_s8(v16);
            v18.i16[0] = vaddlv_u8(v18);
            if (v18.u32[0] > 1uLL)
            {
              if (v17 >= *&v16)
              {
                v17 %= *&v16;
              }
            }

            else
            {
              v17 &= *&v16 - 1;
            }

            v19 = *(*v7 + 8 * v17);
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19 != i);
            if (v20 == v7 + 16)
            {
              goto LABEL_35;
            }

            v21 = *(v20 + 1);
            if (v18.u32[0] > 1uLL)
            {
              if (v21 >= *&v16)
              {
                v21 %= *&v16;
              }
            }

            else
            {
              v21 &= *&v16 - 1;
            }

            if (v21 != v17)
            {
LABEL_35:
              if (!*i)
              {
                goto LABEL_36;
              }

              v22 = (*i)[1];
              if (v18.u32[0] > 1uLL)
              {
                if (v22 >= *&v16)
                {
                  v22 %= *&v16;
                }
              }

              else
              {
                v22 &= *&v16 - 1;
              }

              if (v22 != v17)
              {
LABEL_36:
                *(*v7 + 8 * v17) = 0;
              }
            }

            v23 = *i;
            if (*i)
            {
              v24 = v23[1];
              if (v18.u32[0] > 1uLL)
              {
                if (v24 >= *&v16)
                {
                  v24 %= *&v16;
                }
              }

              else
              {
                v24 &= *&v16 - 1;
              }

              if (v24 != v17)
              {
                *(*v7 + 8 * v24) = v20;
                v23 = *i;
              }
            }

            *v20 = v23;
            *i = 0;
            --*(v7 + 3);
            v37 = i;
            v38 = v7;
            v39 = 1;
            memset(v40, 0, sizeof(v40));
            std::unique_ptr<std::__hash_node<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,void *>>>>::~unique_ptr[abi:nn200100](&v37);
            break;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v15 >= *&v8)
            {
              v15 %= *&v8;
            }
          }

          else
          {
            v15 &= *&v8 - 1;
          }

          if (v15 != v12)
          {
            break;
          }
        }
      }
    }
  }

  v25 = (this + 192);
  v26 = std::__hash_table<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::__unordered_map_hasher<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>>>::find<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(this + 24, &v41);
  v27 = v26;
  if (v26)
  {
    (*(*v26[5] + 40))(v26[5]);
    v28 = *(this + 200);
    v29 = v27[1];
    v30 = vcnt_s8(v28);
    v30.i16[0] = vaddlv_u8(v30);
    if (v30.u32[0] > 1uLL)
    {
      if (v29 >= *&v28)
      {
        v29 = (v29 % *&v28);
      }
    }

    else
    {
      v29 = ((*&v28 - 1) & v29);
    }

    v31 = *(*v25 + 8 * v29);
    do
    {
      v32 = v31;
      v31 = *v31;
    }

    while (v31 != v27);
    if (v32 == (this + 208))
    {
      goto LABEL_63;
    }

    v33 = v32[1];
    if (v30.u32[0] > 1uLL)
    {
      if (v33 >= *&v28)
      {
        v33 %= *&v28;
      }
    }

    else
    {
      v33 &= *&v28 - 1;
    }

    if (v33 != v29)
    {
LABEL_63:
      if (!*v27)
      {
        goto LABEL_64;
      }

      v34 = (*v27)[1];
      if (v30.u32[0] > 1uLL)
      {
        if (v34 >= *&v28)
        {
          v34 %= *&v28;
        }
      }

      else
      {
        v34 &= *&v28 - 1;
      }

      if (v34 != v29)
      {
LABEL_64:
        *(*v25 + 8 * v29) = 0;
      }
    }

    v35 = *v27;
    if (*v27)
    {
      v36 = v35[1];
      if (v30.u32[0] > 1uLL)
      {
        if (v36 >= *&v28)
        {
          v36 %= *&v28;
        }
      }

      else
      {
        v36 &= *&v28 - 1;
      }

      if (v36 != v29)
      {
        *(*v25 + 8 * v36) = v32;
        v35 = *v27;
      }
    }

    *v32 = v35;
    *v27 = 0;
    --*(this + 27);
    v37 = v27;
    v38 = this + 192;
    v39 = 1;
    memset(v40, 0, sizeof(v40));
    std::unique_ptr<std::__hash_node<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,void *>>>>::~unique_ptr[abi:nn200100](&v37);
  }

  v41 = &unk_1F2A4BA00;

  std::mutex::unlock((this + 40));
  atomic_store(1u, this + 184);
}

void sub_1B2963700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::mutex::unlock((v15 + 40));

  _Unwind_Resume(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<Flyover::NightTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[385];
}

void std::vector<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>(v2, v1);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7Flyover12NightTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A131D8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7Flyover12NightTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A131D8;
  a2[1] = v2;
  return result;
}

void std::vector<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *>(v2, v1);
  }
}

void *geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A4BA00;
  a1[1] = v3;
  return a1;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>(v2, v1);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>();
    *algn_1EB83C7D8 = 0xD2597E061104B596;
    qword_1EB83C7E0 = "md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>]";
    qword_1EB83C7E8 = 59;
  }
}

char *std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v8 = *a1;
    v9 = ((v5 - *a1) >> 3) + 1;
    if (v9 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v6 - v8;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v12 = (a2 - v8) >> 3;
    __p[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>(v11);
    }

    __p[0] = 0;
    __p[1] = (8 * v12);
    __p[2] = (8 * v12);
    __p[3] = 0;
    std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>>::emplace_back<std::pair<gss::StyleAttribute,unsigned short>>(__p, a3);
    v3 = std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__swap_out_circular_buffer(a1, __p, v3);
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else if (a2 == v5)
  {
    *v5 = *a3;
    a1[1] = (v5 + 1);
  }

  else
  {
    v13 = a1[1];
    if (v5 >= 8)
    {
      *v5 = *(v5 - 1);
      v13 = v5 + 1;
    }

    a1[1] = v13;
    if (v5 != (a2 + 8))
    {
      v14 = 0;
      do
      {
        v15 = &v5[v14 / 8];
        *(v15 - 2) = v5[v14 / 8 - 2];
        *(v15 - 2) = *(&v5[v14 / 8 - 1] - 2);
        v14 -= 8;
      }

      while (a2 - v5 + 8 != v14);
    }

    *a2 = *a3;
    *(a2 + 4) = *(a3 + 4);
  }

  return v3;
}

void sub_1B2963D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(void)::metadata >= 0x200)
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverAtmosphereTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverAtmosphereTextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignFlyoverAtmosphereTextureIndex::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>(v2, v1);
  }
}

unint64_t *std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>>::emplace_back<std::pair<gss::StyleAttribute,unsigned short>>(unint64_t *result, void *a2)
{
  v2 = result[2];
  v3 = v2;
  if (v2 == result[3])
  {
    v4 = result[1];
    if (v4 <= *result)
    {
      v7 = v2 - *result;
      v6 = v7 == 0;
      v8 = v7 >> 2;
      if (v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>(v9);
    }

    v5 = v4 - 8 * ((((v4 - *result) >> 3) + 1 + ((((v4 - *result) >> 3) + 1) >> 63)) >> 1);
    v3 = v5;
    if (v4 != v2)
    {
      v3 = v4 - 8 * ((((v4 - *result) >> 3) + 1 + ((((v4 - *result) >> 3) + 1) >> 63)) >> 1);
      do
      {
        *v3 = *v4;
        *(v3 + 4) = *(v4 + 4);
        v4 += 8;
        v3 += 8;
      }

      while (v4 != v2);
    }

    result[1] = v5;
    result[2] = v3;
  }

  *v3 = *a2;
  result[2] += 8;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[383];
}

geo::read_lock_guard *geo::read_lock_guard::read_lock_guard(geo::read_lock_guard *this, pthread_rwlock_t *a2)
{
  *this = a2;
  v3 = pthread_rwlock_rdlock(a2);
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "read lock", v4);
  }

  return this;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7Flyover17AtmosphereTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13038;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELb0EEEvT1_SO_T0_NS_15iterator_traitsISO_E15difference_typeEb(uint64_t result, _DWORD *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 2;
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = (a2 - v9) >> 3;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3uLL:

                return _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEbT1_SO_SO_T0_(v9, (v9 + 8), a2 - 2);
              case 4uLL:

                return _ZNSt3__17__sort4B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEvT1_SO_SO_SO_T0_(v9, (v9 + 8), (v9 + 16), a2 - 2);
              case 5uLL:

                return _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEvT1_SO_SO_SO_SO_T0_(v9, (v9 + 8), (v9 + 16), (v9 + 24), a2 - 2);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v35 = *v9;
              if (*v8 < *v9)
              {
                *v9 = *v8;
                *(a2 - 2) = v35;
                v36 = *(v9 + 4);
                *(v9 + 4) = *(a2 - 2);
                *(a2 - 2) = v36;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            if (a4)
            {

              return _ZNSt3__116__insertion_sortB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEvT1_SO_T0_(v9, a2);
            }

            else
            {

              return _ZNSt3__126__insertion_sort_unguardedB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEvT1_SO_T0_(v9, a2);
            }
          }

          if (!a3)
          {

            return _ZNSt3__114__partial_sortB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEESN_EET1_SO_SO_T2_RT0_(v9, a2, a2);
          }

          v11 = v10 >> 1;
          v12 = v9 + 8 * (v10 >> 1);
          if (v10 >= 0x81)
          {
            _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEbT1_SO_SO_T0_(v7, (v7 + 8 * (v10 >> 1)), a2 - 2);
            _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEbT1_SO_SO_T0_((v7 + 8), (v12 - 8), a2 - 4);
            _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEbT1_SO_SO_T0_((v7 + 16), (v7 + 8 + 8 * v11), a2 - 6);
            _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEbT1_SO_SO_T0_((v12 - 8), v12, (v7 + 8 + 8 * v11));
            v37 = *v7;
            *v7 = *v12;
            *v12 = v37;
            LOWORD(v37) = *(v7 + 4);
            *(v7 + 4) = *(v12 + 4);
            *(v12 + 4) = v37;
          }

          else
          {
            v13 = *v7;
            v14 = *v12;
            v15 = *v8;
            if (*v7 >= *v12)
            {
              if (v15 < v13)
              {
                *v7 = v15;
                *(a2 - 2) = v13;
                v17 = *(v7 + 4);
                *(v7 + 4) = *(a2 - 2);
                *(a2 - 2) = v17;
                v18 = *v12;
                if (*v7 < *v12)
                {
                  *v12 = *v7;
                  *v7 = v18;
                  v19 = *(v12 + 4);
                  *(v12 + 4) = *(v7 + 4);
                  *(v7 + 4) = v19;
                }
              }
            }

            else if (v15 >= v13)
            {
              *v12 = v13;
              *v7 = v14;
              v20 = *(v12 + 4);
              *(v12 + 4) = *(v7 + 4);
              *(v7 + 4) = v20;
              if (*v8 < v14)
              {
                *v7 = *v8;
                *(a2 - 2) = v14;
                *(v7 + 4) = *(a2 - 2);
                *(a2 - 2) = v20;
              }
            }

            else
            {
              *v12 = v15;
              *(a2 - 2) = v14;
              v16 = *(v12 + 4);
              *(v12 + 4) = *(a2 - 2);
              *(a2 - 2) = v16;
            }
          }

          --a3;
          if ((a4 & 1) != 0 || *(v7 - 8) < *v7)
          {
            break;
          }

          result = _ZNSt3__131__partition_with_equals_on_leftB8nn200100INS_17_ClassicAlgPolicyEPNS_4pairIN3gss14StyleAttributeEtEERZN2md10StyleLogic15runBeforeLayoutERKNS7_13LayoutContextERKNS7_17LogicDependenciesIJN3gdc8TypeListIJEEESF_EE20ResolvedDependenciesERNS7_17StyleLogicContextEE3__0EET0_SO_SO_T1_(v7, a2);
          v9 = result;
          a4 = 0;
        }

        v21 = *v7;
        v22 = v7;
        do
        {
          v23 = v22;
          v25 = *(v22 + 8);
          v22 += 8;
          v24 = v25;
        }

        while (v25 < v21);
        v26 = a2;
        if (v23 == v7)
        {
          v26 = a2;
          do
          {
            if (v22 >= v26)
            {
              break;
            }

            v33 = *(v26 - 2);
            v26 -= 2;
          }

          while (v33 >= v21);
        }

        else
        {
          do
          {
            v27 = *(v26 - 2);
            v26 -= 2;
          }

          while (v27 >= v21);
        }

        if (v22 >= v26)
        {
          v9 = v22;
        }

        else
        {
          v28 = *v26;
          v9 = v22;
          v29 = v26;
          do
          {
            *v9 = v28;
            *v29 = v24;
            v30 = *(v9 + 4);
            *(v9 + 4) = *(v29 + 2);
            *(v29 + 2) = v30;
            do
            {
              v31 = *(v9 + 8);
              v9 += 8;
              v24 = v31;
            }

            while (v31 < v21);
            do
            {
              v32 = *(v29 - 2);
              v29 -= 2;
              v28 = v32;
            }

            while (v32 >= v21);
          }

          while (v9 < v29);
        }

        if (v9 - 8 != v7)
        {
          *v7 = *(v9 - 8);
          *(v7 + 4) = *(v9 - 4);
        }

        *(v9 - 8) = v21;
        *(v9 - 4) = WORD2(v21);
        if (v22 >= v26)
        {
          break;
        }

LABEL_38:
        result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELb0EEEvT1_SO_T0_NS_15iterator_traitsISO_E15difference_typeEb(v7, v9 - 8, a3, a4 & 1);
        a4 = 0;
      }

      v34 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEbT1_SO_T0_(v7, (v9 - 8));
      result = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEbT1_SO_T0_(v9, a2);
      if (result)
      {
        break;
      }

      if (!v34)
      {
        goto LABEL_38;
      }
    }

    a2 = (v9 - 8);
    if (!v34)
    {
      continue;
    }

    return result;
  }
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEbT1_SO_T0_(uint64_t a1, unsigned int *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *(a1 + 8);
      v6 = *a1;
      v7 = *(a2 - 2);
      if (v5 < *a1)
      {
        if (v7 >= v5)
        {
          *a1 = v5;
          *(a1 + 8) = v6;
          v29 = *(a1 + 4);
          *(a1 + 4) = *(a1 + 12);
          *(a1 + 12) = v29;
          v30 = *(a2 - 2);
          if (v30 < v6)
          {
            *(a1 + 8) = v30;
            *(a2 - 2) = v6;
            *(a1 + 12) = *(a2 - 2);
            *(a2 - 2) = v29;
          }

          return 1;
        }

        *a1 = v7;
        *(a2 - 2) = v6;
        goto LABEL_13;
      }

      if (v7 >= v5)
      {
        return 1;
      }

      *(a1 + 8) = v7;
      *(a2 - 2) = v5;
      v18 = *(a1 + 12);
      *(a1 + 12) = *(a2 - 2);
      *(a2 - 2) = v18;
      v19 = *(a1 + 8);
      v20 = *a1;
      if (v19 >= *a1)
      {
        return 1;
      }

      *a1 = v19;
      *(a1 + 8) = v20;
      v21 = *(a1 + 4);
      v22 = *(a1 + 12);
LABEL_52:
      *(a1 + 4) = v22;
      *(a1 + 12) = v21;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEvT1_SO_SO_SO_SO_T0_(a1, (a1 + 8), (a1 + 16), (a1 + 24), a2 - 2);
        return 1;
      }

      goto LABEL_14;
    }

    v14 = *(a1 + 8);
    v15 = *a1;
    v16 = *(a1 + 16);
    if (v14 >= *a1)
    {
      if (v16 < v14)
      {
        *(a1 + 8) = v16;
        *(a1 + 16) = v14;
        v26 = *(a1 + 12);
        v27 = *(a1 + 20);
        *(a1 + 12) = v27;
        *(a1 + 20) = v26;
        if (v16 < v15)
        {
          *a1 = v16;
          *(a1 + 8) = v15;
          v28 = *(a1 + 4);
          *(a1 + 4) = v27;
          *(a1 + 12) = v28;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (v16 < v14)
      {
        *a1 = v16;
        *(a1 + 16) = v15;
        v17 = *(a1 + 4);
        *(a1 + 4) = *(a1 + 20);
LABEL_46:
        *(a1 + 20) = v17;
        v14 = v15;
        goto LABEL_48;
      }

      *a1 = v14;
      *(a1 + 8) = v15;
      v17 = *(a1 + 4);
      *(a1 + 4) = *(a1 + 12);
      *(a1 + 12) = v17;
      if (v16 < v15)
      {
        *(a1 + 8) = v16;
        *(a1 + 16) = v15;
        *(a1 + 12) = *(a1 + 20);
        goto LABEL_46;
      }
    }

    v14 = v16;
LABEL_48:
    v40 = *(a2 - 2);
    if (v40 >= v14)
    {
      return 1;
    }

    *(a1 + 16) = v40;
    *(a2 - 2) = v14;
    v41 = *(a1 + 20);
    *(a1 + 20) = *(a2 - 2);
    *(a2 - 2) = v41;
    v42 = *(a1 + 16);
    v43 = *(a1 + 8);
    if (v42 >= v43)
    {
      return 1;
    }

    *(a1 + 8) = v42;
    *(a1 + 16) = v43;
    v44 = *(a1 + 12);
    v22 = *(a1 + 20);
    *(a1 + 12) = v22;
    *(a1 + 20) = v44;
    v45 = *a1;
    if (v42 >= *a1)
    {
      return 1;
    }

    *a1 = v42;
    *(a1 + 8) = v45;
    v21 = *(a1 + 4);
    goto LABEL_52;
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
LABEL_13:
      v8 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 2);
      *(a2 - 2) = v8;
    }

    return 1;
  }

LABEL_14:
  v9 = (a1 + 16);
  v10 = *(a1 + 16);
  v11 = *(a1 + 8);
  v12 = *a1;
  if (v11 >= *a1)
  {
    if (v10 < v11)
    {
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
      v23 = *(a1 + 12);
      v24 = *(a1 + 20);
      *(a1 + 12) = v24;
      *(a1 + 20) = v23;
      if (v10 < v12)
      {
        *a1 = v10;
        *(a1 + 8) = v12;
        v25 = *(a1 + 4);
        *(a1 + 4) = v24;
        *(a1 + 12) = v25;
      }
    }
  }

  else if (v10 >= v11)
  {
    *a1 = v11;
    *(a1 + 8) = v12;
    v31 = *(a1 + 4);
    *(a1 + 4) = *(a1 + 12);
    *(a1 + 12) = v31;
    if (v10 < v12)
    {
      *(a1 + 8) = v10;
      *(a1 + 16) = v12;
      *(a1 + 12) = *(a1 + 20);
      *(a1 + 20) = v31;
    }
  }

  else
  {
    *a1 = v10;
    *(a1 + 16) = v12;
    v13 = *(a1 + 4);
    *(a1 + 4) = *(a1 + 20);
    *(a1 + 20) = v13;
  }

  v32 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = *v9;
    if (*v32 < *v9)
    {
      v36 = *v32;
      v37 = v33;
      while (1)
      {
        v38 = a1 + v37;
        *(v38 + 24) = v35;
        *(v38 + 28) = *(a1 + v37 + 20);
        if (v37 == -16)
        {
          break;
        }

        v35 = *(v38 + 8);
        v37 -= 8;
        if (v35 <= v36)
        {
          v39 = a1 + v37 + 24;
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      *v39 = v36;
      *(v39 + 4) = WORD2(v36);
      if (++v34 == 8)
      {
        return v32 + 2 == a2;
      }
    }

    v9 = v32;
    v33 += 8;
    v32 += 2;
    if (v32 == a2)
    {
      return 1;
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7Flyover17AtmosphereTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13038;
  a2[1] = v2;
  return result;
}

void std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>(v2, v1);
  }
}

void sub_1B2964FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a9);
  shared_weak_owners = v9[17].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v9[18].__vftable = shared_weak_owners;
    operator delete(shared_weak_owners);
  }

  std::vector<md::LabelFeaturePlacementInfo>::__destroy_vector::operator()[abi:nn200100](&a9);
  v15 = *v12;
  if (*v12)
  {
    v9[16].__vftable = v15;
    operator delete(v15);
  }

  v9[14].__shared_weak_owners_ = v11;

  shared_owners = v9[14].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_owners);
  }

  v17 = v9[13].__shared_weak_owners_;
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = v9[9].__vftable;
  if (v18)
  {
    v9[9].__shared_owners_ = v18;
    operator delete(v18);
  }

  md::LabelExternalFeature::~LabelExternalFeature(v10);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v19);
  _Unwind_Resume(a1);
}

id GEOGetVectorKitStyleLogicLog(void)
{
  if (GEOGetVectorKitStyleLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitStyleLogicLog(void)::onceToken, &__block_literal_global_24504);
  }

  v1 = GEOGetVectorKitStyleLogicLog(void)::log;

  return v1;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>(v2, v1);
  }
}

void md::StyleLogic::logClientAttributesIfNecessary(md::StyleLogic *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = GEOGetVectorKitStyleLogicLog();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  if (v3)
  {
    v4 = *(*(this + 26) + 264);
    if (v4 != *(this + 378))
    {
      *(this + 378) = v4;
      v5 = GEOGetVectorKitStyleLogicLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        gss::ClientStyleState<gss::PropertyID>::sourceClientStyleAttributesStr(__p, *(this + 26));
        v6 = v14 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v16 = v6;
        _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_DEBUG, "ClientStateDidChange:\n%s", buf, 0xCu);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v7 = *(*(this + 28) + 264);
    if (v7 != *(this + 379))
    {
      *(this + 379) = v7;
      v8 = GEOGetVectorKitStyleLogicLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(this + 28);
        v10 = pthread_rwlock_rdlock((v9 + 16));
        if (v10)
        {
          geo::read_write_lock::logFailure(v10, "read lock", v11);
        }

        gss::attributesToString(__p, (v9 + 216), 1, 0);
        geo::read_write_lock::unlock((v9 + 16));
        if (v14 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *buf = 136315138;
        v16 = v12;
        _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_DEBUG, "SceneClientStateDidChange:\n%s", buf, 0xCu);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_1B29653D4(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 16));

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::LabelPoint>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void ___ZL28GEOGetVectorKitStyleLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "StyleLogic");
  v1 = GEOGetVectorKitStyleLogicLog(void)::log;
  GEOGetVectorKitStyleLogicLog(void)::log = v0;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(void)::metadata >= 0x200)
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

uint64_t md::Logic<md::StyleLogic,md::StyleLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xE42D19AFCA302E68)
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

void md::LabelPoint::NullPoint(md::LabelPoint *this)
{
  {
    qword_1ED65ACF8 = 0;
    md::LabelPoint::NullPoint(void)::kNullLabelPoint = 0u;
    *&qword_1ED65ACE8 = 0u;
    dword_1ED65AD00 = 2139095039;
    word_1ED65AD04 = 256;
    byte_1ED65AD06 = 1;
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverDiffuseTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverDiffuseTextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignFlyoverDiffuseTextureIndex::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t *std::vector<md::LabelPoint>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *v2;
      *(v5 + 16) = *(v2 + 2);
      *v5 = v6;
      *(v5 + 24) = *(v2 + 24);
      v7 = *(v2 + 10);
      *(v5 + 43) = *(v2 + 43);
      *(v5 + 40) = v7;
      v2 += 3;
      v5 += 48;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>();
    unk_1EB83C800 = 0xEC8E73EF48115BAELL;
    qword_1EB83C808 = "md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>]";
    qword_1EB83C810 = 56;
  }
}

void md::LabelPoint::setCoordinate(uint64_t a1, double *a2)
{
  v4 = *a2;
  if (fabs(*a2) <= 85.0511169)
  {
    v19 = a2[1];
    v9 = tan(v4 * 0.00872664626 + 0.785398163);
    v10 = log(v9);
    v11.f64[0] = v19;
    v11.f64[1] = v10;
    __asm { FMOV            V1.2D, #0.5 }

    *(a1 + 24) = vmlaq_f64(_Q1, xmmword_1B33B0700, v11);
    *(a1 + 45) = 257;
  }

  else
  {
    v5 = a2[1] * 0.0174532925;
    v6 = __sincos_stret(v4 * 0.0174532925);
    v7 = 6378137.0 / sqrt(v6.__sinval * v6.__sinval * -0.00669437999 + 1.0);
    v8 = __sincos_stret(v5);
    *a1 = v8.__cosval * (v7 * v6.__cosval);
    *(a1 + 8) = v8.__sinval * (v7 * v6.__cosval);
    *(a1 + 16) = v6.__sinval * 0.99330562 * v7;
    *(a1 + 44) = 1;
  }

  v17 = a2[2];
  if (v17 != 1.79769313e308)
  {
    v18 = v17;
    *(a1 + 40) = v18;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[384];
}

uint64_t std::vector<md::LabelExternalTextElement>::__emplace_back_slow_path<unsigned char &,char const*&,char const*&,char const*&,char const*&,md::LabelExternalTextType &>(uint64_t *a1, char *a2, char **a3, char **a4, char **a5, char **a6, char *a7)
{
  v7 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x276276276276276)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v8)
  {
    v8 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v10 = 0x276276276276276;
  }

  else
  {
    v10 = v8;
  }

  v20 = a1;
  if (v10)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::LabelExternalTextElement>>(v10);
  }

  v17 = 0;
  v18 = 104 * v7;
  v19 = (104 * v7);
  md::LabelExternalTextElement::LabelExternalTextElement((104 * v7), *a2, *a3, *a4, *a5, *a6, *a7);
  *&v19 = 104 * v7 + 104;
  v11 = a1[1];
  v12 = 104 * v7 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::LabelExternalTextElement>,md::LabelExternalTextElement*>(*a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<md::LabelExternalTextElement>::~__split_buffer(&v17);
  return v16;
}

void sub_1B2965C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<md::LabelExternalTextElement>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1B29662D8(_Unwind_Exception *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v8);
  std::__list_imp<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::clear(a3);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a7);
  std::__list_imp<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::clear(a4);
  v10 = v7[19];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = v7[17];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = v7[15];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = v7[13];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = v7[11];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = v7[9];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = v7[7];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  v17 = v7[5];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  v18 = v7[3];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = v7[1];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  MEMORY[0x1B8C62190](v7, 0x10A0C40296A7848);
  md::GeometryContext::~GeometryContext(va);
  MEMORY[0x1B8C62190](a6, 0x10F1C40B0038B9CLL);
  _Unwind_Resume(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7Flyover14DiffuseTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13108;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::LabelExternalFeature::addTextForZoom(uint64_t *a1, char a2, char a3, char *a4, char *a5)
{
  v13 = a2;
  v12 = a3;
  v10 = a5;
  v11 = a4;
  v8 = 0;
  v9 = 0;
  v6 = a1[7];
  if (v6 >= a1[8])
  {
    result = std::vector<md::LabelExternalTextElement>::__emplace_back_slow_path<unsigned char &,char const*&,char const*&,char const*&,char const*&,md::LabelExternalTextType &>(a1 + 6, &v13, &v11, &v10, &v9, &v8, &v12);
  }

  else
  {
    md::LabelExternalTextElement::LabelExternalTextElement(a1[7], a2, a4, a5, 0, 0, a3);
    result = v6 + 104;
    a1[7] = v6 + 104;
  }

  a1[7] = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7Flyover14DiffuseTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13108;
  a2[1] = v2;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::LabelExternalTextElement>>(unint64_t a1)
{
  if (a1 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

_BYTE *md::StringWithLocaleImp<std::string>::StringWithLocaleImp(_BYTE *a1, char *a2, char *a3)
{
  if (!a2)
  {
    a2 = "";
  }

  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(v5 + 24, v6);
  return a1;
}

void sub_1B2966604(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>();
    unk_1EB83CD80 = 0xBAA35DF429A7267FLL;
    qword_1EB83CD88 = "md::ls::TextureHandleForType<Flyover::DiffuseTexture>]";
    qword_1EB83CD90 = 53;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata >= 0x200)
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

_BYTE *md::LabelExternalTextElement::LabelExternalTextElement(_BYTE *a1, char a2, char *a3, char *a4, char *a5, char *a6, char a7)
{
  *a1 = a2;
  a1[1] = a7;
  md::StringWithLocaleImp<std::string>::StringWithLocaleImp(a1 + 8, a3, a4);
  md::StringWithLocaleImp<std::string>::StringWithLocaleImp(a1 + 56, a5, a6);
  return a1;
}

void sub_1B2966958(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<md::LabelExternalTextElement>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    std::allocator_traits<std::allocator<md::LabelExternalTextElement>>::destroy[abi:nn200100]<md::LabelExternalTextElement,void,0>(i - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ggl::ComputeSetup::~ComputeSetup(ggl::ComputeSetup *this)
{
  *this = &unk_1F2A5C418;
  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v8.__vftable = (this + 136);
  std::vector<std::shared_ptr<ggl::BufferData>,geo::allocator_adapter<std::shared_ptr<ggl::BufferData>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8.__vftable = (this + 104);
  std::vector<std::shared_ptr<ggl::BufferData>,geo::allocator_adapter<std::shared_ptr<ggl::BufferData>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v8);
  std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 72));
  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    v5 = ggl::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture *>(v5, v4);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    v7 = ggl::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture *>(v7, v6);
  }
}

{
  ggl::ComputeSetup::~ComputeSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::GeometryLogic,md::GeometryContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::allocateContext(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0u;
  v2 = a1 + 160;
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = a1 + 160;
  *(a1 + 168) = a1 + 160;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1065353216;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1 + 184, 0);
  *(a1 + 224) = v2;
  *(a1 + 240) = a1 + 240;
  *(a1 + 248) = a1 + 240;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1065353216;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1 + 264, 0);
  *(a1 + 304) = a1 + 240;
}

void sub_1B2966B38(_Unwind_Exception *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v1 + 33));
  std::__list_imp<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::clear(v3);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v1 + 23));
  std::__list_imp<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::clear(v2);
  v5 = v1[19];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = v1[17];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = v1[15];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = v1[13];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = v1[11];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = v1[9];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = v1[7];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = v1[5];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = v1[3];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = v1[1];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  _Unwind_Resume(a1);
}

void ggl::DownscaleTextureComputeShaderSetup::~DownscaleTextureComputeShaderSetup(ggl::DownscaleTextureComputeShaderSetup *this)
{
  ggl::ComputeSetup::~ComputeSetup(this);

  JUMPOUT(0x1B8C62190);
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::LabelExternalTextElement>,md::LabelExternalTextElement*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 8) = v6;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 8) = 0;
      v7 = *(v5 + 32);
      *(a3 + 48) = *(v5 + 48);
      *(a3 + 32) = v7;
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      *(v5 + 32) = 0;
      v8 = *(v5 + 56);
      *(a3 + 72) = *(v5 + 72);
      *(a3 + 56) = v8;
      *(v5 + 64) = 0;
      *(v5 + 72) = 0;
      *(v5 + 56) = 0;
      v9 = *(v5 + 80);
      *(a3 + 96) = *(v5 + 96);
      *(a3 + 80) = v9;
      *(v5 + 80) = 0;
      *(v5 + 88) = 0;
      *(v5 + 96) = 0;
      v5 += 104;
      a3 += 104;
    }

    while (v5 != a2);
    do
    {
      std::allocator_traits<std::allocator<md::LabelExternalTextElement>>::destroy[abi:nn200100]<md::LabelExternalTextElement,void,0>(v4);
      v4 += 104;
    }

    while (v4 != a2);
  }
}

void std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture *>(v2, v1);
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverMaterialConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverMaterialConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignFlyoverMaterialConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonMaterialHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonMaterialHandle>();
    unk_1EB83C4E0 = 0xB70B6DE024A5B9DALL;
    qword_1EB83C4E8 = "md::ls::FlyoverCommonMaterialHandle]";
    qword_1EB83C4F0 = 35;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(void)::metadata >= 0x200)
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

void std::allocator_traits<std::allocator<md::LabelExternalTextElement>>::destroy[abi:nn200100]<md::LabelExternalTextElement,void,0>(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>();
    unk_1EB83C300 = 0x8756C476CCEB09D6;
    qword_1EB83C308 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>]";
    qword_1EB83C310 = 90;
  }
}

void md::GeometryContext::~GeometryContext(md::GeometryContext *this)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 264);
  std::__list_imp<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::clear(this + 30);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 184);
  std::__list_imp<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::clear(this + 20);
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 5);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 1);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[334];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_13FlyoverCommon8MaterialEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A15328;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon8MaterialEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15328;
  a2[1] = v2;
  return result;
}

uint64_t md::Logic<md::GeometryLogic,md::GeometryContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x3070CB6B3C7F21D3)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 144))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::GeometryLogic::runBeforeLayout(int a1, md::LayoutContext *this, uint64_t a3, int8x8_t *a4)
{
  v6 = a4 + 20;
  v7 = a4[21];
  v8 = a4[28];
  if (v7 != v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = a4[26];
    v12 = a4 + 25;
    do
    {
      if (v9 == *&v11)
      {
        break;
      }

      v13 = *(v7 + 9);
      v14 = std::__hash_table<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,md::SplineKeyHash,std::equal_to<md::SplineKey>,true>,std::__unordered_map_equal<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::equal_to<md::SplineKey>,md::SplineKeyHash,true>,std::allocator<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>>>::find<md::SplineKey>(&a4[23], v7 + 4);
      if (v14)
      {
        v15 = a4[24];
        v16 = v14[1];
        v17 = vcnt_s8(v15);
        v17.i16[0] = vaddlv_u8(v17);
        if (v17.u32[0] > 1uLL)
        {
          if (v16 >= *&v15)
          {
            v16 %= *&v15;
          }
        }

        else
        {
          v16 &= *&v15 - 1;
        }

        v18 = a4[23];
        v19 = *(*&v18 + 8 * v16);
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19 != v14);
        if (v20 == v12)
        {
          goto LABEL_16;
        }

        v21 = v20[1];
        if (v17.u32[0] > 1uLL)
        {
          if (v21 >= *&v15)
          {
            v21 %= *&v15;
          }
        }

        else
        {
          v21 &= *&v15 - 1;
        }

        if (v21 != v16)
        {
LABEL_16:
          if (!*v14)
          {
            goto LABEL_17;
          }

          v22 = *(*v14 + 8);
          if (v17.u32[0] > 1uLL)
          {
            if (v22 >= *&v15)
            {
              v22 %= *&v15;
            }
          }

          else
          {
            v22 &= *&v15 - 1;
          }

          if (v22 != v16)
          {
LABEL_17:
            *(*&v18 + 8 * v16) = 0;
          }
        }

        v23 = *v14;
        if (*v14)
        {
          v24 = *(*&v23 + 8);
          if (v17.u32[0] > 1uLL)
          {
            if (v24 >= *&v15)
            {
              v24 %= *&v15;
            }
          }

          else
          {
            v24 &= *&v15 - 1;
          }

          if (v24 != v16)
          {
            *(*&a4[23] + 8 * v24) = v20;
            v23 = *v14;
          }
        }

        *v20 = v23;
        *v14 = 0;
        --*&a4[26];
        operator delete(v14);
        v8 = a4[28];
      }

      v10 += v13;
      v7 = *(v7 + 1);
      ++v9;
    }

    while (v7 != v8);
    v25 = a4[21];
    if (v25 != v7)
    {
      v26 = *(*v7 + 8);
      v27 = *v25;
      *(v27 + 8) = v26;
      *v26 = v27;
      do
      {
        v28 = *(v25 + 1);
        --*&a4[22];
        v29 = *(v25 + 6);
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v29);
        }

        operator delete(v25);
        v25 = v28;
      }

      while (v28 != v7);
    }

    v30 = a4[29];
    v31 = *&v30 >= v10;
    v32 = (*&v30 - v10);
    if (!v31)
    {
      v32 = 0;
    }

    a4[29] = v32;
  }

  a4[28] = v6;
  v33 = a4[31];
  v34 = a4[38];
  if (v33 != v34)
  {
    v35 = 0;
    v36 = 0;
    v37 = a4[36];
    do
    {
      if (v35 == *&v37)
      {
        break;
      }

      v38 = *(v33 + 7);
      v39 = std::__hash_table<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,md::SplineKeyHash,std::equal_to<md::SplineKey>,true>,std::__unordered_map_equal<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::equal_to<md::SplineKey>,md::SplineKeyHash,true>,std::allocator<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>>>::find<md::SplineKey>(&a4[33], v33 + 4);
      if (v39)
      {
        v40 = a4[34];
        v41 = v39[1];
        v42 = vcnt_s8(v40);
        v42.i16[0] = vaddlv_u8(v42);
        if (v42.u32[0] > 1uLL)
        {
          if (v41 >= *&v40)
          {
            v41 %= *&v40;
          }
        }

        else
        {
          v41 &= *&v40 - 1;
        }

        v43 = a4[33];
        v44 = *(*&v43 + 8 * v41);
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44 != v39);
        if (v45 == &a4[35])
        {
          goto LABEL_57;
        }

        v46 = v45[1];
        if (v42.u32[0] > 1uLL)
        {
          if (v46 >= *&v40)
          {
            v46 %= *&v40;
          }
        }

        else
        {
          v46 &= *&v40 - 1;
        }

        if (v46 != v41)
        {
LABEL_57:
          if (!*v39)
          {
            goto LABEL_58;
          }

          v47 = *(*v39 + 8);
          if (v42.u32[0] > 1uLL)
          {
            if (v47 >= *&v40)
            {
              v47 %= *&v40;
            }
          }

          else
          {
            v47 &= *&v40 - 1;
          }

          if (v47 != v41)
          {
LABEL_58:
            *(*&v43 + 8 * v41) = 0;
          }
        }

        v48 = *v39;
        if (*v39)
        {
          v49 = *(*&v48 + 8);
          if (v42.u32[0] > 1uLL)
          {
            if (v49 >= *&v40)
            {
              v49 %= *&v40;
            }
          }

          else
          {
            v49 &= *&v40 - 1;
          }

          if (v49 != v41)
          {
            *(*&a4[33] + 8 * v49) = v45;
            v48 = *v39;
          }
        }

        *v45 = v48;
        *v39 = 0;
        --*&a4[36];
        operator delete(v39);
        v34 = a4[38];
      }

      v36 += v38;
      v33 = *(v33 + 1);
      ++v35;
    }

    while (v33 != v34);
    v50 = a4[31];
    if (v50 != v33)
    {
      v51 = *(*v33 + 8);
      v52 = *v50;
      *(v52 + 8) = v51;
      *v51 = v52;
      do
      {
        v53 = *(v50 + 1);
        --*&a4[32];
        v54 = *(v50 + 6);
        if (v54)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v54);
        }

        operator delete(v50);
        v50 = v53;
      }

      while (v53 != v33);
    }

    v55 = a4[39];
    v31 = *&v55 >= v36;
    v56 = (*&v55 - v36);
    if (!v31)
    {
      v56 = 0;
    }

    a4[39] = v56;
  }

  a4[38] = &a4[30];
  if (!*&a4[16])
  {
  }

  if (!*&a4[18])
  {
  }

  if (!*a4)
  {
  }

  if (!*&a4[2])
  {
  }

  if (!*&a4[4])
  {
  }

  if (!*&a4[6])
  {
  }

  if (!*&a4[12])
  {
  }

  if (!*&a4[14])
  {
  }

  if (!*&a4[8])
  {
  }

  if (!*&a4[10])
  {
  }

  result = md::LayoutContext::cameraType(this);
  a4[40].i8[0] = result;
  return result;
}

void std::vector<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>(v2, v1);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v5 = (v1 + 24);
      std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>(v2, v1);
  }
}

void std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>>(v6, v5);
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverTexcoordsConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverTexcoordsConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignFlyoverTexcoordsConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(void)::metadata >= 0x200)
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

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>();
    unk_1EB83C2E0 = 0xCB8B71FD962316ALL;
    qword_1EB83C2E8 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>]";
    qword_1EB83C2F0 = 91;
  }
}

ggl::PolygonBase::MeshMesh *ggl::PolygonBase::MeshMesh::MeshMesh(ggl::PolygonBase::MeshMesh *this, const char *a2)
{
  ggl::MeshTyped<ggl::PolygonBase::DefaultVbo>::typedReflection();
  *(this + 1) = a2;
  ggl::RenderDataHolder::RenderDataHolder(this + 16);
  *(this + 7) = &ggl::MeshTyped<ggl::PolygonBase::DefaultVbo>::typedReflection(void)::r;
  *(this + 8) = 0;
  v4 = this + 64;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 15) = 0;
  *(this + 17) = 0;
  *(this + 14) = this + 120;
  *this = &unk_1F2A47520;
  *(this + 2) = &unk_1F2A47540;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::resize((this + 64), qword_1ED66A640);
  *this = &unk_1F2A474E0;
  *(this + 2) = &unk_1F2A47500;
  if (!a2)
  {
    a2 = "/VertexData";
  }

  v6 = ggl::zone_mallocator::instance(v5);
  v7 = pthread_rwlock_rdlock((v6 + 32));
  if (v7)
  {
    geo::read_write_lock::logFailure(v7, "read lock", v8);
  }

  v9 = malloc_type_zone_malloc(*v6, 0x100uLL, 0x1081040D98108EAuLL);
  atomic_fetch_add((v6 + 24), 1u);
  geo::read_write_lock::unlock((v6 + 32));
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_1F2A47560;
  v10 = ggl::VertexData::VertexData((v9 + 4), a2, &ggl::PolygonBase::defaultVboReflection, 0, 6, 0);
  v9[4] = &unk_1F2A47598;
  v9[29] = &unk_1F2A475B8;
  *&v11 = v10;
  *(&v11 + 1) = v9;
  v12 = *(*v4 + 8);
  **v4 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  return this;
}

void std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v3 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

void std::vector<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>(v2, v1);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTexcoordsHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonTexcoordsHandle>();
    *algn_1EB83C398 = 0x5B12559DCF20DC9ALL;
    qword_1EB83C3A0 = "md::ls::FlyoverCommonTexcoordsHandle]";
    qword_1EB83C3A8 = 36;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>(void)::metadata >= 0x200)
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

mdm::zone_mallocator *std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t *a2)
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
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>>(v14, v13);
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
    result = std::__split_buffer<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v22);
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

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::DaVinci::Style> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::Style> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[332];
}

unint64_t md::RoadBatchKey::hash(md::RoadBatchKey *this)
{
  v2 = *this;
  v3 = gss::FeatureAttributeSet::hash(*(*this + 240), *(*this + 248));
  v5 = *(v2 + 284);
  if (*(v2 + 284))
  {
    v6 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      if (v10 < v5 && (v8 & 1) == 0)
      {
        v11 = *(v2 + 272);
        v9 = (v11 + 4 * v10);
        v4 = (v11 + *(v2 + 280) + 2 * v10);
        v8 = 1;
      }

      v6 ^= (*v4 - 0x61C8864680B583EBLL + ((((v6 << 6) - 0x61C8864680B583EBLL + (v6 >> 2) + *v9) ^ v6) << 6) + ((((v6 << 6) - 0x61C8864680B583EBLL + (v6 >> 2) + *v9) ^ v6) >> 2)) ^ ((v6 << 6) - 0x61C8864680B583EBLL + (v6 >> 2) + *v9);
      v12 = v10 + 1;
      if (v8)
      {
        v8 = 0;
      }

      if (v12 < v5)
      {
        ++v10;
      }

      else
      {
        v10 = *(v2 + 284);
      }
    }

    while (v12 < v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ *(this + 4) ^ *(this + 20) ^ v3;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_13FlyoverCommon9TexcoordsEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A15188;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::vector<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(v2, v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon9TexcoordsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15188;
  a2[1] = v2;
  return result;
}

void std::vector<ggl::DaVinci::DecalPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::DecalPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::DecalPipelineSetup *>(v2, v1);
  }
}

void *ggl::FragmentedPool<ggl::DaVinci::DecalPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::DaVinci::DecalPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::DaVinci::DecalPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::DaVinci::DecalPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::DecalPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::DaVinci::DecalPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::DecalPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void sub_1B2969170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  ggl::BufferMemory::~BufferMemory(va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverS2TransformConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverS2TransformConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignFlyoverS2TransformConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *ggl::FragmentedPool<ggl::DaVinci::RibbonPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::DaVinci::RibbonPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::DaVinci::RibbonPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::DaVinci::RibbonPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::RibbonPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::DaVinci::RibbonPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::RibbonPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(void)::metadata >= 0x200)
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

void std::vector<ggl::DaVinci::RibbonPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::RibbonPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::RibbonPipelineSetup *>(v2, v1);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>();
    unk_1EB83C350 = 0x68B9076D41547F1ALL;
    qword_1EB83C358 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>]";
    qword_1EB83C360 = 93;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonS2TransformHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonS2TransformHandle>();
    unk_1EB83BCD0 = 0x81BF69EEE736436;
    qword_1EB83BCD8 = "md::ls::FlyoverCommonS2TransformHandle]";
    qword_1EB83BCE0 = 38;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata >= 0x200)
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

void *ggl::FragmentedPool<ggl::DaVinci::GroundShadowMapPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::DaVinci::GroundShadowMapPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::DaVinci::GroundShadowMapPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::DaVinci::GroundShadowMapPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundShadowMapPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::DaVinci::GroundShadowMapPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundShadowMapPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void sub_1B2969BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  ggl::BufferMemory::~BufferMemory(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  ggl::BufferMemory::~BufferMemory(&a17);
  v19 = *(v17 - 88);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  _Unwind_Resume(a1);
}

void std::vector<ggl::DaVinci::GroundShadowMapPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundShadowMapPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GroundShadowMapPipelineSetup *>(v2, v1);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[336];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_13FlyoverCommon11S2TransformEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14FE8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *ggl::FragmentedPool<ggl::DaVinci::GroundDepthPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::DaVinci::GroundDepthPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::DaVinci::GroundDepthPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::DaVinci::GroundDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundDepthPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::DaVinci::GroundDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundDepthPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::DaVinci::GroundDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundDepthPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GroundDepthPipelineSetup *>(v2, v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon11S2TransformEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14FE8;
  a2[1] = v2;
  return result;
}

void *ggl::FragmentedPool<ggl::DaVinci::GroundNonCompressedPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::DaVinci::GroundNonCompressedPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::DaVinci::GroundNonCompressedPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::DaVinci::GroundNonCompressedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundNonCompressedPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::DaVinci::GroundNonCompressedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundNonCompressedPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t md::ita::AssignFlyoverSharedConstantData::operator()(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v64[3] = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v60 = &unk_1F2A15490;
  v61 = &v53;
  v62 = &v54;
  v63 = &v60;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverSharedConstants>(*(a2 + 8));
  v6 = v5[4];
  v7 = v5[5];
  v8 = _ZTWN4ecs27Runtime11_localStateE();
  v9 = _ZTWN4ecs27Runtime11_stackIndexE();
  if (v6 == v7)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = *(v5[7] + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8));
      *(v8 + 104 * *v9 + 24) = *v6;
      if (!v63)
      {
LABEL_34:
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v63 + 6))(v63, v11 + 8 * (v10++ & 0x3F));
      ++v6;
    }

    while (v6 != v7);
  }

  *(v8 + 104 * *v9 + 24) = -65536;
  v12 = v8 + 104 * *v9;
  v13 = *(v12 + 92);
  *(v12 + 92) = v13 + 1;
  *(v12 + 4 * v13 + 28) = v10;
  v14 = v8 + 104 * *v9;
  v16 = *(v14 + 92);
  v15 = (v14 + 92);
  if (v16 >= 0x10)
  {
    *v15 = 0;
  }

  result = std::__function::__value_func<void ()(md::ls::FlyoverSharedConstants const&)>::~__value_func[abi:nn200100](&v60);
  if (v53)
  {
    v60 = &unk_1F2A154D8;
    v61 = &v54;
    v62 = &v53;
    v63 = &v60;
    v18 = *(a3 + 8);
    v19 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v18);
    v20 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(v18);
    v21 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(v18);
    v64[0] = v19;
    v64[1] = v20;
    v22 = 1;
    v23 = v19;
    v24 = v64;
    v64[2] = v21;
    do
    {
      if (*(v64[v22] + 40) - *(v64[v22] + 32) < *(v23 + 40) - *(v23 + 32))
      {
        v23 = v64[v22];
        v24 = &v64[v22];
      }

      ++v22;
    }

    while (v22 != 3);
    v25 = *(*v24 + 32);
    v26 = *(*v24 + 40);
    v55 = v25;
    v56 = v26;
    v57 = v19;
    v58 = v20;
    v59 = v21;
    while (v25 != v26 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v55, *v25, v25[1]))
    {
      v25 += 2;
      v55 = v25;
    }

    v27 = v55;
    if (v55 == v26)
    {
      v28 = 0;
    }

    else
    {
      v52 = a3;
      v28 = 0;
      v29 = v58;
      v30 = v59;
      v32 = v56;
      v31 = v57;
      do
      {
        v33 = v27[1];
        v34 = v33 & 0x3F;
        v35 = (v33 >> 3) & 0x1FF8;
        v36 = *(*(*(v31 + 8) + v35) + 4 * v34 + 2);
        v37 = *(*(v31 + 56) + ((v36 >> 3) & 0x1FF8));
        v38 = *(v29 + 32);
        v39 = *(*(v29 + 8) + v35) + 4 * v34;
        v40 = *(*(*(v30 + 8) + v35) + 4 * v34 + 2);
        v41 = *(*(v30 + 56) + ((v40 >> 3) & 0x1FF8));
        v42 = *(v39 + 2);
        *(v8 + 104 * *v9 + 24) = *v27;
        if (!v63)
        {
          goto LABEL_34;
        }

        (*(*v63 + 6))(v63, v37 + 8 * (v36 & 0x3F), v38 + 4 * v42, v41 + 12 * (v40 & 0x3F));
        ++v28;
        v43 = v27 + 2;
        while (1)
        {
          v27 = v43;
          v55 = v43;
          if (v43 == v32)
          {
            break;
          }

          v44 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v55, *v43, v43[1]);
          v43 = v27 + 2;
          if (v44)
          {
            v45 = v27;
            goto LABEL_26;
          }
        }

        v45 = v32;
LABEL_26:
        ;
      }

      while (v45 != v26);
      v46 = *(v52 + 8);
      {
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
        *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
        qword_1EB83D950 = "md::ls::PipelineSetup]";
        qword_1EB83D958 = 21;
      }

      *(v46 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v46 + 4096);
    }

    *(v8 + 104 * *v9 + 24) = -65536;
    v47 = v8 + 104 * *v9;
    v48 = *(v47 + 92);
    *(v47 + 92) = v48 + 1;
    *(v47 + 4 * v48 + 28) = v28;
    v49 = v8 + 104 * *v9;
    v51 = *(v49 + 92);
    v50 = (v49 + 92);
    if (v51 >= 0x10)
    {
      *v50 = 0;
    }

    return std::__function::__value_func<void ()(md::ls::PipelineSetup &,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> const&)>::~__value_func[abi:nn200100](&v60);
  }

  return result;
}

void sub_1B296A48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(md::ls::FlyoverSharedConstants const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverSharedConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverSharedConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignFlyoverSharedConstantData::operator()((a1 + 8), a2, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void std::vector<ggl::DaVinci::GroundNonCompressedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundNonCompressedPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GroundNonCompressedPipelineSetup *>(v2, v1);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverSharedConstants>();
    *algn_1EB83CBF8 = 0xE57F1B6EAAE9263ALL;
    qword_1EB83CC00 = "md::ls::FlyoverSharedConstants]";
    qword_1EB83CC08 = 30;
  }
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(v1 + 2))
  {
    *(v1 + 2) = i - 1;
    a1 = std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>::~unique_ptr[abi:nn200100](i - 1);
  }

  v4 = *v1;
  if (*v1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>>(v5, v4);
  }

  return v1;
}

void *ggl::FragmentedPool<ggl::DaVinci::GroundPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::DaVinci::GroundPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::DaVinci::GroundPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::DaVinci::GroundPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::DaVinci::GroundPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}