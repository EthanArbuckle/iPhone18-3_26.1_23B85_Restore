ggl::RenderDataHolder *ggl::Hillshade::Pos2DUVPipelineState::Pos2DUVPipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4, char a5, char a6)
{
  {
    v16 = a4;
    v19 = a2;
    v20 = a3;
    a2 = v19;
    a3 = v20;
    a4 = v16;
    if (v17)
    {
      ggl::Hillshade::Pos2DUVPipelineSetup::typedReflection(v17);
      ggl::Hillshade::Pos2DUVPipelineState::typedReflection(void)::ref = &ggl::Hillshade::Pos2DUVPipelineSetup::typedReflection(void)::ref;
      ggl::HillshadeShader::typedReflection(v18);
      qword_1EB830020 = &ggl::HillshadeShader::typedReflection(void)::ref;
      {
        ggl::Hillshade::pipelineStatePos2DUVPipelineAttributeStructBinding(void)::attr = 0;
        unk_1EB82FF40 = 0;
        qword_1EB82FF48 = "";
        dword_1EB82FF50 = 0;
        qword_1EB82FF58 = &ggl::Hillshade::pipelineStatePos2DUVPipelineAttributeBinding_0(void)::attr;
        unk_1EB82FF60 = 2;
      }

      qword_1EB830028 = &ggl::Hillshade::pipelineStatePos2DUVPipelineAttributeStructBinding(void)::attr;
      unk_1EB830030 = 1;
      qword_1EB830038 = 0;
      unk_1EB830040 = 1;
      qword_1EB830048 = &ggl::Hillshade::pipelineStatePos2DUVPipelineDeviceStructBinding(void)::ref;
      unk_1EB830050 = 0;
      {
        ggl::Hillshade::pipelineStatePos2DUVPipelineConstantStructBinding(void)::ref = 0;
        unk_1EB82FF70 = 0;
        qword_1EB82FF78 = "view";
        dword_1EB82FF80 = 3;
        qword_1EB82FF88 = &ggl::Hillshade::pipelineStatePos2DUVPipelineConstantViewBinding(void)::reflection;
        *algn_1EB82FF90 = xmmword_1B33B0750;
        qword_1EB82FFA0 = 1;
        unk_1EB82FFA8 = "transform";
        dword_1EB82FFB0 = 3;
        qword_1EB82FFB8 = &ggl::Hillshade::pipelineStatePos2DUVPipelineConstantTransformBinding(void)::reflection;
        unk_1EB82FFC0 = xmmword_1B33B0A10;
        qword_1EB82FFD0 = 2;
        unk_1EB82FFD8 = "style";
        dword_1EB82FFE0 = 3;
        qword_1EB82FFE8 = &ggl::Hillshade::pipelineStatePos2DUVPipelineConstantStyleBinding(void)::reflection;
        unk_1EB82FFF0 = 4;
      }

      qword_1EB830058 = &ggl::Hillshade::pipelineStatePos2DUVPipelineConstantStructBinding(void)::ref;
      unk_1EB830060 = 3;
      a4 = v16;
      a2 = v19;
      a3 = v20;
    }
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v23 = *a3;
  *&v23[16] = *(a3 + 16);
  *&v23[28] = *(a3 + 28);
  v11 = *(a3 + 44);
  v21 = *a4;
  v22 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::Hillshade::Pos2DUVPipelineState::typedReflection(void)::ref;
  *(this + 6) = v10;
  *(this + 7) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v14 = this + i;
    v14[64] = 0;
    *(v14 + 68) = xmmword_1B33B0760;
    *(v14 + 84) = 0;
    *(v14 + 100) = 0;
    *(v14 + 92) = 0;
  }

  *(this + 16) = v21;
  *(this + 17) = v22;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v23;
  *(this + 76) = *&v23[12];
  *(this + 92) = *&v23[28];
  *(this + 108) = v11;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  *this = &unk_1F2A0FD60;
  *(this + 304) = a5;
  *(this + 305) = a6;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v12);
  *(this + 288) = 1;
  return this;
}

void ggl::Hillshade::Pos2DUVPipelineSetup::typedReflection(ggl::Hillshade::Pos2DUVPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection();
    ggl::Hillshade::Pos2DUVPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection(void)::r;
    *algn_1EB830078 = &ggl::Hillshade::pipelineDataPos2DUVPipelineDeviceStructs(void)::ref;
    qword_1EB830080 = 0;
    {
      ggl::Hillshade::pipelineDataPos2DUVPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1EB830000 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB830008 = ggl::Hillshade::HillshadeStyle::reflection(void)::reflection;
    }

    qword_1EB830088 = &ggl::Hillshade::pipelineDataPos2DUVPipelineConstantStructs(void)::ref;
    unk_1EB830090 = xmmword_1B33B07A0;
  }
}

ggl::zone_mallocator *std::vector<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
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
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Hillshade::Pos2DUVPipelineSetup *>(v6, 100);
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
    return std::__split_buffer<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::Hillshade::Pos2DUVPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Hillshade::Pos2DUVPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Hillshade::Pos2DUVPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Hillshade::Pos2DUVPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Hillshade::Pos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Hillshade::Pos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t **std::unique_ptr<md::HillshadeRenderResources>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
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

    std::unique_ptr<ggl::FragmentedPool<ggl::Hillshade::Pos2DUVPipelineSetup>>::reset[abi:nn200100](v2 + 7, 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100](v2 + 6, 0);
    v4 = v2[5];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = v2[3];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = v2[1];
    v2[1] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *v2;
    *v2 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B28D9060(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C62190](v3, 0x1020C40455D1DCFLL);
  std::unique_ptr<md::TrailJunctionRenderable::SharedResources>::reset[abi:nn200100](v2 + 64, 0);
  md::RoadRenderLayer::~RoadRenderLayer(v2);

  _Unwind_Resume(a1);
}

void md::TrailJunctionRenderable::SharedResources::SharedResources(md::TrailJunctionRenderable::SharedResources *this, const ggl::StandardLibrary *a2, const RenderTargetFormat *a3, __int128 *a4)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->colorFormats[2], 1uLL, memory_order_relaxed);
  }

  v4 = *a4;
  v5 = a4[1];
  *(this + 15) = 0;
  *(this + 24) = v4;
  *(this + 40) = v5;
  *(this + 56) = 1;
  *(this + 60) = 0x700000006;
  *(this + 68) = 0x100000000;
  *(this + 19) = 7;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 100) = 15;
  *(this + 104) = 0;
  *(this + 16) = 0;
  *(this + 14) = this + 120;
  operator new();
}

void sub_1B28D920C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(v1[15]);
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<md::TrailJunctionRenderable::SharedResources>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(v2[15]);
    v3 = v2[2];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::DaVinciGroundRenderLayer::DaVinciGroundRenderLayer(uint64_t a1, uint64_t a2, void *a3, char a4, int a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (a5 == 1)
  {
    v21 = 2228257;
    v10 = &v21;
    v11 = 2;
  }

  else
  {
    if (a5 == 2)
    {
      v20 = 54;
      v10 = &v20;
    }

    else
    {
      v19 = 62;
      v10 = &v19;
    }

    v11 = 1;
  }

  v12 = *(a2 + 104);
  [v12 format];
  v13 = v9;
  v14 = v13;
  if (a5 > 2)
  {
    if (a5 == 3)
    {
      [v13 standardCommandBufferSelector];
      *v46 = *(*(v44 + 8) + 238);
      [v14 standardCommandBufferSelector];
      *&v46[2] = *(*(v42 + 8) + 68);
      [v14 standardCommandBufferSelector];
      *&v46[4] = *(*(v40 + 8) + 74);
      [v14 standardCommandBufferSelector];
      *&v46[6] = *(*(v38 + 8) + 84);
      [v14 standardCommandBufferSelector];
      *&v46[8] = *(*(v36 + 8) + 130);
      [v14 standardCommandBufferSelector];
      *&v46[10] = *(*(v34 + 8) + 124);
      *&v46[12] = 67306496;
      std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&__p, v46, 8);
      goto LABEL_24;
    }
  }

  else if (a5 >= 2)
  {
    [v13 standardCommandBufferSelector];
    *v46 = *(*(v44 + 8) + 232);
    [v14 standardCommandBufferSelector];
    *&v46[2] = *(*(v42 + 8) + 66);
    [v14 standardCommandBufferSelector];
    *&v46[4] = *(*(v40 + 8) + 72);
    [v14 standardCommandBufferSelector];
    *&v46[6] = *(*(v38 + 8) + 78);
    [v14 standardCommandBufferSelector];
    *&v46[8] = *(*(v36 + 8) + 128);
    [v14 standardCommandBufferSelector];
    *&v46[10] = *(*(v34 + 8) + 122);
    *&v46[12] = 50529024;
    [v14 standardCommandBufferSelector];
    *&v46[16] = *(*(v32 + 8) + 172);
    [v14 standardCommandBufferSelector];
    *&v46[18] = *(*(v30 + 8) + 174);
    [v14 standardCommandBufferSelector];
    *&v46[20] = *(*(v28 + 8) + 176);
    [v14 standardCommandBufferSelector];
    *&v46[22] = *(*(v26 + 8) + 162);
    [v14 standardCommandBufferSelector];
    v47 = *(*(v24 + 8) + 164);
    [v14 standardCommandBufferSelector];
    v48 = *(*(v22 + 8) + 166);
    std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&__p, v46, 14);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }

    goto LABEL_18;
  }

  [v13 standardCommandBufferSelector];
  *v46 = *(*(v44 + 8) + 4);
  [v14 standardCommandBufferSelector];
  v15 = 8 * (a5 & 0x1F);
  *&v46[2] = *(*(v42 + 8) + 2 * ((0x7377747373uLL >> v15) & 0x77));
  [v14 standardCommandBufferSelector];
  *&v46[4] = *(*(v40 + 8) + 2 * ((0x1D22211D1DuLL >> v15) & 0x3F));
  [v14 standardCommandBufferSelector];
  *&v46[6] = *(*(v38 + 8) + 2 * ((0x2325242323uLL >> v15) & 0x27));
  [v14 standardCommandBufferSelector];
  *&v46[8] = *(*(v36 + 8) + 76);
  [v14 standardCommandBufferSelector];
  *&v46[10] = *(*(v34 + 8) + 2 * ((0x3F41403F3FuLL >> v15) & 0x7F));
  [v14 standardCommandBufferSelector];
  *&v46[12] = *(*(v32 + 8) + 2 * ((0x3C3E3D3C3CuLL >> v15) & 0x3F));
  *&v46[14] = 33751552;
  [v14 standardCommandBufferSelector];
  *&v46[18] = *(*(v30 + 8) + 88);
  [v14 standardCommandBufferSelector];
  *&v46[20] = *(*(v28 + 8) + 136);
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&__p, v46, 11);
LABEL_18:
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

LABEL_24:
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }

  v16 = v14;
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](v46, v10, v11);
  *(a1 + 8) = 0;
  *a1 = &unk_1F2A16858;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v18 != __p)
  {
    std::vector<md::MapDataType>::__vallocate[abi:nn200100](a1 + 8, (v18 - __p) >> 1);
  }

  *(a1 + 32) = 0;
  *(a1 + 34) = a4;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
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
  *(a1 + 248) = xmmword_1B33B1990;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = *v46;
  *(a1 + 336) = *&v46[16];
  *(a1 + 344) = 2 * (a5 != 3);
  *a1 = &unk_1F2A2EC58;
  *(a1 + 352) = 0;
  operator new();
}

void sub_1B28D9F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a24);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a30);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  v35 = *(v33 - 168);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  v36 = *(v33 - 152);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  v37 = *(v33 - 136);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  _Unwind_Resume(a1);
}

void *std::map<md::DrapedPolygonPlacement,md::CommandBufferLocation>::map[abi:nn200100](void *result, int *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (*(v6 + 7) < *v3)
      {
LABEL_9:
        v11 = v4 ? v6 + 1 : result + 1;
      }

      else
      {
        v11 = result + 1;
        if (v4)
        {
          v11 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = *(v4 + 28);
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v12 + 1;
            v4 = v12[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
      }

      v3 += 2;
      if (v3 == &a2[2 * a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

uint64_t std::__function::__func<md::ElevatedPolygonRenderResources::ElevatedPolygonRenderResources(ggl::StandardLibrary const&,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::ElevatedPolygonRenderResources::ElevatedPolygonRenderResources(ggl::StandardLibrary const&,ggl::RenderTargetFormat const&)::$_0>,ggl::DaVinci::ElevatedStrokeColorPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A3D8B8;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
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
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *>(v6, 100);
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
    return std::__split_buffer<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::DaVinci::ElevatedStrokeColorPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::DaVinci::ElevatedStrokeColorPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
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
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *>(v6, 100);
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
    return std::__split_buffer<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::DaVinci::ElevatedFillColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
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
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedFillColorPipelineSetup *>(v6, 100);
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
    return std::__split_buffer<ggl::DaVinci::ElevatedFillColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::DaVinci::ElevatedFillColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedFillColorPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::DaVinci::ElevatedFillColorPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::DaVinci::ElevatedFillColorPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
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
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *>(v6, 100);
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
    return std::__split_buffer<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::DaVinciCenterLineRoadsRenderLayer::DaVinciCenterLineRoadsRenderLayer(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v13 = a201[(a2 - 33)];
  [*(a3 + 104) format];
  if (v7)
  {
    [v7 standardCommandBufferSelector];
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  commandBufferLocationsForRenderLayerType(&__p, a2, v8);
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
  *(a1 + 34) = a2;
  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1065353216;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
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
  *(a1 + 344) = 2;
  *a1 = &unk_1F2A2E6B8;
  *(a1 + 352) = 0;
  operator new();
}

void sub_1B28DBE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = *v18;
  if (*v18)
  {
    *(v17 + 416) = v20;
    operator delete(v20);
  }

  std::unique_ptr<md::RoadStyling>::~unique_ptr[abi:nn200100]((v17 + 400));
  std::unique_ptr<md::RoadSharedResources>::~unique_ptr[abi:nn200100]((v17 + 384));
  std::unique_ptr<md::RoadSharedResources>::~unique_ptr[abi:nn200100]((v17 + 376));
  v21 = *(v17 + 368);
  *(v17 + 368) = 0;
  if (v21)
  {
    md::PatternedSharedResources::~PatternedSharedResources(v21);
    MEMORY[0x1B8C62190]();
  }

  md::CartographicTiledVectorRenderLayer<md::DaVinciRoadTileDataRenderable>::~CartographicTiledVectorRenderLayer(v17);

  _Unwind_Resume(a1);
}

void *commandBufferLocationsForRenderLayerType(void *a1, int a2, uint64_t a3)
{
  if (a2 <= 35)
  {
    switch(a2)
    {
      case '!':
        v3 = *(*(a3 + 8) + 94);
        goto LABEL_14;
      case '""':
        v9 = *(a3 + 8);
        v11 = v9[51];
        v12 = v9[73];
        v13 = v9[30];
        v6 = 3;
        return std::vector<md::CommandBufferLocation>::vector[abi:nn200100](a1, &v11, v6);
      case '#':
        v4 = *(a3 + 8);
        v11 = *(v4 + 104);
        v5 = *(v4 + 148);
LABEL_17:
        v12 = v5;
        v6 = 2;
        return std::vector<md::CommandBufferLocation>::vector[abi:nn200100](a1, &v11, v6);
    }

LABEL_13:
    v3 = *(*(a3 + 8) + 102);
    goto LABEL_14;
  }

  if (a2 > 37)
  {
    if (a2 == 38)
    {
      v8 = *(a3 + 8);
      v11 = *(v8 + 108);
      v5 = *(v8 + 112);
      goto LABEL_17;
    }

    if (a2 == 39)
    {
      v3 = *(*(a3 + 8) + 110);
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a2 == 36)
  {
    v7 = *(a3 + 8);
    v11 = *(v7 + 100);
    v5 = *(v7 + 106);
    goto LABEL_17;
  }

  v3 = *(*(a3 + 8) + 96);
LABEL_14:
  v11 = v3;
  v6 = 1;
  return std::vector<md::CommandBufferLocation>::vector[abi:nn200100](a1, &v11, v6);
}

{
  if (a2 == 46)
  {
    v3 = *(a3 + 8);
    v8[0] = *(v3 + 214);
    v8[1] = *(v3 + 64);
    v4 = v8;
    v5 = 2;
  }

  else
  {
    v7 = *(*(a3 + 8) + 216);
    v4 = &v7;
    v5 = 1;
  }

  return std::vector<md::CommandBufferLocation>::vector[abi:nn200100](a1, v4, v5);
}

void md::DaVinciHikingRenderLayer::DaVinciHikingRenderLayer(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2 == 37)
  {
    {
      depthBiasForElevatedHikingFeatures(md::CartoRenderLayerType)::$_0::operator() const(void)::cached_result = GEOConfigGetBOOL();
    }

    {
      GEOConfigGetDouble();
      depthBiasForElevatedHikingFeatures(md::CartoRenderLayerType)::$_1::operator() const(void)::cached_result = v8;
    }

    {
      depthSlopeScaleForElevatedHikingFeatures(md::CartoRenderLayerType)::$_0::operator() const(void)::cached_result = GEOConfigGetBOOL();
    }

    {
      {
        GEOConfigGetDouble();
        depthSlopeScaleForElevatedHikingFeatures(md::CartoRenderLayerType)::$_1::operator() const(void)::cached_result = v9;
      }
    }
  }

  md::DaVinciCenterLineRoadsRenderLayer::DaVinciCenterLineRoadsRenderLayer(a1, a2, a3, v7);
}

void sub_1B28DC340(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void md::DaVinciTrafficRenderLayer::DaVinciTrafficRenderLayer(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2 == 47)
  {
    v8 = 53;
  }

  else
  {
    v8 = 52;
  }

  v14 = v8;
  [*(a3 + 104) format];
  if (v7)
  {
    [v7 standardCommandBufferSelector];
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  commandBufferLocationsForRenderLayerType(&__p, a2, v9);
  v10 = v7;
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&v15, &v14, 1);
  *(a1 + 8) = 0;
  *a1 = &unk_1F2A16858;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v13 != __p)
  {
    std::vector<md::MapDataType>::__vallocate[abi:nn200100](a1 + 8, (v13 - __p) >> 1);
  }

  *(a1 + 32) = 0;
  *(a1 + 34) = a2;
  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1065353216;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
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
  *(a1 + 248) = xmmword_1B33B1310;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = v15;
  *(a1 + 336) = v16;
  *(a1 + 344) = 2;
  *a1 = &unk_1F2A2ED48;
  *(a1 + 352) = 0;
  operator new();
}

void sub_1B28DC710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = v19[46];
  v19[46] = 0;
  if (v21)
  {
    MEMORY[0x1B8C62190](v21, 0x1000C4049ECCB0CLL);
  }

  md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::~CartographicTiledVectorRenderLayer(v19);

  _Unwind_Resume(a1);
}

void md::ClientDrapedPolygonRenderLayer::ClientDrapedPolygonRenderLayer(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = *(a5 + 8);
  if (a2 == 57)
  {
    LOWORD(v15) = v9[45];
    WORD1(v15) = v9[69];
  }

  else
  {
    LOWORD(v15) = v9[46];
    WORD1(v15) = v9[70];
  }

  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&v12, &v15, 2);
  v14 = a2;
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&v15, &v14, 1);
  *(a1 + 8) = 0;
  *a1 = &unk_1F2A16858;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v10 = v12;
  if (v13 != v12)
  {
    std::vector<md::MapDataType>::__vallocate[abi:nn200100](a1 + 8, (v13 - v12) >> 1);
  }

  *(a1 + 32) = 0;
  *(a1 + 34) = 49;
  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1065353216;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
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
  *(a1 + 248) = xmmword_1B33B21F0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = v15;
  *(a1 + 336) = v16;
  *(a1 + 344) = 2;
  *a1 = &unk_1F2A3F858;
  *(a1 + 352) = a1 + 360;
  *(a1 + 360) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = a1 + 384;
  *(a1 + 400) = a1 + 408;
  *(a1 + 408) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = a1 + 432;
  *(a1 + 448) = a2;
  *(a1 + 450) = 33;
  if (v10)
  {
    v13 = v10;
    operator delete(v10);
  }

  *a1 = &unk_1F2A3F770;
  v11 = *(a5 + 8);
  LODWORD(v15) = 0;
  if (a2 == 57)
  {
    WORD2(v15) = v11[45];
    DWORD2(v15) = 1;
    WORD6(v15) = v11[69];
  }

  else
  {
    WORD2(v15) = v11[46];
    DWORD2(v15) = 1;
    WORD6(v15) = v11[70];
  }

  std::map<md::DrapedPolygonPlacement,md::CommandBufferLocation>::map[abi:nn200100]((a1 + 456), &v15, 2);
  [*(a3 + 104) format];
  std::allocate_shared[abi:nn200100]<md::ElevatedPolygonRenderResources,std::allocator<md::ElevatedPolygonRenderResources>,ggl::StandardLibrary const&,ggl::RenderTargetFormat const&,0>();
}

void sub_1B28DCAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  *v10 = v11;
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(v10 + 432));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(v10 + 408));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(v10 + 384));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(v10 + 360));
  md::CartographicTiledRenderLayer<md::ElevatedPolygonRenderable>::~CartographicTiledRenderLayer(v10);
  _Unwind_Resume(a1);
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
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
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GlobeTexturedPipelineSetup *>(v6, 100);
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
    return std::__split_buffer<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::GlobeRasterRenderResources::GlobeRasterRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1,std::allocator<md::GlobeRasterRenderResources::GlobeRasterRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1>,ggl::DaVinci::GlobeTexturedPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A10A40;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GlobeTexturedPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::DaVinci::GlobeTexturedPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::GlobeTexturedPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::DaVinci::GlobeTexturedPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::DaVinci::GlobeTexturedPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::DaVinci::GlobeTexturedPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ggl::MeshTyped<ggl::DaVinci::GlobeTextured>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::DaVinci::GlobeTextured>::attributesReflection(void)::r = &ggl::DaVinci::globeTexturedReflection;
    }

    ggl::MeshTyped<ggl::DaVinci::GlobeTextured>::typedReflection(void)::r = &ggl::MeshTyped<ggl::DaVinci::GlobeTextured>::attributesReflection(void)::r;
    qword_1EB8411A0 = 1;
  }
}

void ggl::DaVinci::GlobeTexturedPipelineSetup::typedReflection(ggl::DaVinci::GlobeTexturedPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::DaVinci::GlobeTextured>::typedReflection();
    ggl::DaVinci::GlobeTexturedPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::DaVinci::GlobeTextured>::typedReflection(void)::r;
    *algn_1EB83E018 = &ggl::DaVinci::pipelineDataGlobeTexturedPipelineDeviceStructs(void)::ref;
    qword_1EB83E020 = 0;
    {
      ggl::DaVinci::pipelineDataGlobeTexturedPipelineConstantStructs(void)::ref = ggl::FlyoverCommon::Shared::reflection(void)::reflection;
      unk_1EB83DFE0 = ggl::DaVinci::S2Transform::reflection(void)::reflection;
      qword_1EB83DFE8 = ggl::FlyoverCommon::Clip::reflection(void)::reflection;
    }

    qword_1EB83E028 = &ggl::DaVinci::pipelineDataGlobeTexturedPipelineConstantStructs(void)::ref;
    *algn_1EB83E030 = xmmword_1B33B0A70;
  }
}

uint64_t *std::unique_ptr<md::GlobeRasterRenderResources>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 112);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 96);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = *(v2 + 80);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(v2 + 64);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(v2 + 48);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v2 + 8), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::DaVinci::GlobeTexturedPipelineSetup>>::reset[abi:nn200100](v2, 0);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<std::unique_ptr<md::RenderLayer>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::unique_ptr<md::RenderLayer>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::unique_ptr<md::RenderLayer>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<md::RenderLayer>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void md::CartographicMapEngineConfiguration::didBecomeActive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 41672);
  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(a2 + 41928) + 16), 0x2FED70A4459DFCA1uLL);
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      v8 = *(v7 + 26);
      if (v8)
      {
        gss::ClientStyleState<gss::PropertyID>::removeClientStyleAttribute(v8, 0x10036u);
        md::StyleLogic::setStyleManagerDidChange(v7);
      }
    }
  }

  *(*(*(v5 + 40) + 320) + 268) = 1;
  v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(a2 + 41928) + 16), 0x20A1ED17D78F322BuLL);
  if (v9)
  {
    v9 = v9[5];
  }

  md::LabelsLogic::setWorldType(v9, *(a1 + 32));
  v10 = *(v5 + 40);
  if ((*(v5 + 48) - v10) >= 0x98)
  {
    v11 = *(v10 + 144);
    if (v11)
    {
      v12 = *(a2 + 41928);
      v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v12 + 16), 0x20A1ED17D78F322BuLL);
      if (v13)
      {
        v14 = v13[5];
      }

      else
      {
        v14 = 0;
      }

      v15 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v12 + 16), 0xBEC1A12372CEEC00);
      if (v15)
      {
        v16 = v15[5];
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v16 = 0;
        if (!v14)
        {
LABEL_15:
          if (v16)
          {
            v18 = md::LabelExternalPointFeature::incident(*(v16 + 304));
            [v18 setRouteOverlayCache:*(v11 + 72)];
          }

          return;
        }
      }

      v17 = *(*(*(v14 + 160) + 168) + 32);
      (*(*v17 + 128))(v17, *(v11 + 72));
      goto LABEL_15;
    }
  }
}

void gss::ClientStyleState<gss::PropertyID>::removeClientStyleAttribute(uint64_t a1, unsigned int a2)
{
  v4 = pthread_rwlock_wrlock((a1 + 16));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "write lock", v5);
  }

  v6 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::erase(a1 + 216, a2);
  if (geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::erase(a1 + 240, a2) | v6)
  {
    v7 = COERCE_FLOAT(atomic_load((a1 + 272)));
    v8 = v7 <= 0.0;
    v9 = 1;
    if (v8)
    {
      v9 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((a1 + 240), a1 + 216) ^ 1;
    }

    atomic_store(v9, (a1 + 270));
    atomic_fetch_add((a1 + 264), 1u);
  }

  v10 = pthread_rwlock_unlock((a1 + 16));
  if (v10)
  {

    geo::read_write_lock::logFailure(v10, "unlock", v11);
  }
}

uint64_t geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::erase(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v4 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1, a2);
  v5 = *(a1 + 12);
  if (v4 == v5)
  {
    return 0;
  }

  v6 = v4;
  if (*(a1 + 17))
  {
    v7 = v5 - 1;
    *(a1 + 12) = v7;
    v8 = v7 - v4;
    memmove((*a1 + 4 * v4), (*a1 + 4 * (v4 + 1)), 4 * v8);
    v9 = *a1 + *(a1 + 8);
    memmove((v9 + 2 * v6), (v9 + 2 * (v6 + 1)), 2 * v8);
  }

  else
  {
    v10 = v5 - 1;
    v11 = *a1;
    *(*a1 + 4 * v4) = *(*a1 + 4 * v10);
    *(v11 + *(a1 + 8) + 2 * v4) = *(v11 + *(a1 + 8) + 2 * v10);
    --*(a1 + 12);
  }

  return 1;
}

void md::StyleLogic::setStyleManagerDidChange(md::StyleLogic *this)
{
  v3 = 4;
  geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert(this + 141, &v3);
  v2 = **(this + 155);
  if (v2)
  {
    v4 = 12;
    md::MapEngine::setNeedsTick(v2, &v4);
  }
}

void md::LabelsLogic::setWorldType(int8x8_t *a1, unsigned int a2)
{
  if (a1[27].u8[0] != a2)
  {
    a1[27].i8[0] = a2;
    v3 = md::LabelsLogic::labelManagerForWorldType(a1, a2);
    v5 = *v3;
    v4 = v3[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = a1[20];
    if (v6 != v5)
    {
      *(*&v6 + 1664) = 0;
      (*(**(*&v6 + 240) + 16))(*(*&v6 + 240));
      v7 = a1[18];
      if (*(v7 + 24) != v5)
      {
        v8 = *(v7 + 32);
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = *(v7 + 32);
        v10 = v5;
        *(v7 + 24) = v5;
        *(v7 + 32) = v4;
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v9);
          v10 = *(v7 + 24);
        }

        v11 = *(*(v7 + 40) + 28);
        v12 = atomic_load(v10 + 3045);
        if ((v12 ^ v11))
        {
          atomic_store(v11, v10 + 3045);
          md::LabelManager::updateTileZBias(v10);
        }

        md::LabelManager::setTargetDisplay(*(v7 + 24), **(v7 + 40));
        md::LabelManager::setTrafficEnabled(*(v7 + 24), *(*(v7 + 40) + 25));
        md::LabelManager::setTrafficClosuresEnabled(*(v7 + 24), *(*(v7 + 40) + 26));
        md::LabelSettings::setExternalTrafficFeatures(v7, *(*(v7 + 40) + 64), *(*(v7 + 40) + 264));
      }

      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = a1[21];
      a1[20] = v5;
      a1[21] = v4;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      v14 = a1[24];
      if (v14)
      {
        while (1)
        {
          v15 = v14[3];
          if (v15 != a1[20])
          {
            break;
          }

          v19 = *v14;
LABEL_49:
          v14 = v19;
          if (!v19)
          {
            goto LABEL_50;
          }
        }

        md::LabelManager::willShutdown(v15);
        v16 = a1[23];
        v17 = v14[1];
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

        v19 = *v14;
        v20 = a1[22];
        v21 = *(*&v20 + 8 * v17);
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21 != v14);
        if (v22 == &a1[24])
        {
          goto LABEL_56;
        }

        v23 = v22[1];
        if (v18.u32[0] > 1uLL)
        {
          if (*&v23 >= *&v16)
          {
            *&v23 %= *&v16;
          }
        }

        else
        {
          *&v23 &= *&v16 - 1;
        }

        v24 = *v14;
        if (*&v23 != v17)
        {
LABEL_56:
          if (v19)
          {
            v25 = v19[1];
            if (v18.u32[0] > 1uLL)
            {
              if (v25 >= *&v16)
              {
                v25 %= *&v16;
              }
            }

            else
            {
              v25 &= *&v16 - 1;
            }

            v24 = *v14;
            if (v25 == v17)
            {
              goto LABEL_42;
            }
          }

          *(*&v20 + 8 * v17) = 0;
          v24 = *v14;
        }

        if (!v24)
        {
LABEL_48:
          *v22 = v24;
          *v14 = 0;
          --*&a1[25];
          std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>::operator()[abi:nn200100](1, v14);
          goto LABEL_49;
        }

LABEL_42:
        v26 = v24[1];
        if (v18.u32[0] > 1uLL)
        {
          if (v26 >= *&v16)
          {
            v26 %= *&v16;
          }
        }

        else
        {
          v26 &= *&v16 - 1;
        }

        if (v26 != v17)
        {
          *(*&a1[22] + 8 * v26) = v22;
          v24 = *v14;
        }

        goto LABEL_48;
      }
    }

LABEL_50:
    if (v4)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void sub_1B28DDC48(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    if (!v1)
    {
LABEL_4:
      _Unwind_Resume(a1);
    }
  }

  else if (!v1)
  {
    goto LABEL_4;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  goto LABEL_4;
}

uint64_t md::CompositeLabeler::synchWithHomeQueue(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 16))(v3);
  }

  return this;
}

void md::StandardLabeler::synchWithHomeQueue(md::StandardLabeler *this)
{
  v1 = *(this + 4);
  md::LabelCustomFeatureSupport::flushQueuedCommands(v1);
  v2 = *(v1 + 9);
  if (v2 != (v1 + 80))
  {
    do
    {
      v3 = v2[26];
      if (v3 != v2[27])
      {
        v4 = 0;
        v5 = 0;
        do
        {
          v6 = v3 + v4;
          v7 = *(v3 + v4);
          v8 = *(v6 + 8);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v9 = *(v7 + 32);
          if (!v9)
          {
            v13 = std::__throw_bad_function_call[abi:nn200100]();
            if (v8)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            }

            _Unwind_Resume(v13);
          }

          (*(*v9 + 48))(v9);
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
          }

          ++v5;
          v3 = v2[26];
          v4 += 16;
        }

        while (v5 < (v2[27] - v3) >> 4);
        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2 + 26);
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v12 = *v11 == v2;
          v2 = v11;
        }

        while (!v12);
      }

      v2 = v11;
    }

    while (v11 != (v1 + 80));
  }

  md::LabelCustomFeatureSupport::flushQueuedCommands(v1);
}

void md::LabelCustomFeatureSupport::flushQueuedCommands(md::LabelCustomFeatureSupport *this)
{
  v1 = *(this + 5);
  v2 = (this + 40);
  if (v1 != *(this + 6))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = v1 + v4;
      v7 = *(v1 + v4);
      v8 = *(v6 + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(v7 + 32);
      if (!v9)
      {
        v10 = std::__throw_bad_function_call[abi:nn200100]();
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        _Unwind_Resume(v10);
      }

      (*(*v9 + 48))(v9);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      ++v5;
      v1 = *(this + 5);
      v4 += 16;
    }

    while (v5 < (*(this + 6) - v1) >> 4);

    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
  }
}

uint64_t md::LabelManager::setTargetDisplay(std::mutex *a1, char a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F2A119C0;
  v3[1] = a1;
  LOBYTE(v4[0]) = a2;
  v4[1] = v3;
  memset(v4 + 1, 0, 7);
  md::LabelManager::queueCommand(a1, 13, 1, v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v3);
}

void sub_1B28DE018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setTargetDisplay(gss::TargetDisplay)::$_0,std::allocator<md::LabelManager::setTargetDisplay(gss::TargetDisplay)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A119C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::LabelManager::setTrafficEnabled(md::LabelManager *this, char a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  *(this + 3608) = a2;
  v3[0] = &unk_1F2A11B28;
  v3[1] = this;
  LOBYTE(v4[0]) = a2;
  v4[1] = v3;
  memset(v4 + 1, 0, 7);
  md::LabelManager::queueCommand(this, 14, 1, v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v3);
}

void sub_1B28DE0FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setTrafficEnabled(BOOL)::$_0,std::allocator<md::LabelManager::setTrafficEnabled(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11B28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::LabelManager::setTrafficClosuresEnabled(md::LabelManager *this, char a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  *(this + 3609) = a2;
  v3[0] = &unk_1F2A11B70;
  v3[1] = this;
  LOBYTE(v4[0]) = a2;
  v4[1] = v3;
  memset(v4 + 1, 0, 7);
  md::LabelManager::queueCommand(this, 15, 1, v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v3);
}

void sub_1B28DE1DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setTrafficClosuresEnabled(BOOL)::$_0,std::allocator<md::LabelManager::setTrafficClosuresEnabled(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11B70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void md::LabelSettings::setExternalTrafficFeatures(uint64_t a1, void *a2, int a3)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(*(a1 + 40) + 64);
  v7 = v5;
  if (v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v6 isEqual:v7];
  }

  v9 = *(a1 + 40);
  if (!v8 || *(v9 + 264) != a3)
  {
    v10 = v7;
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = *(v9 + 64);
    *(v9 + 64) = v11;

    *(*(a1 + 40) + 264) = a3;
  }

  geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v18, v7);
  geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v15, v18);
  v16 = a3;
  v17 = 0;
  operator new();
}

void *geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A436C8;
  a1[1] = v3;
  return a1;
}

void *geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A436C8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

uint64_t geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A436C8;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void std::__function::__func<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0,std::allocator<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A436C8;

  operator delete(a1);
}

void md::LabelSettings::setHiddenTrafficIncidentFeatures(uint64_t a1, void *a2)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v11 = a2;
  v3 = [MEMORY[0x1E695DFD8] setWithArray:*(*(a1 + 40) + 88)];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  if (([v3 isEqualToSet:v4] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = v11;
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = *(v5 + 88);
    *(v5 + 88) = v7;

    geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v13, v7);
    geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v12, v13);
    v12[6] = 0;
    operator new();
  }
}

void sub_1B28DE834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a15);

  a19 = &unk_1F2A436C8;
  _Unwind_Resume(a1);
}

void md::LabelSettings::setARWalkingFeatures(md::LabelSettings *this, VKARWalkingFeatureSet *a2, int a3)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((a3 & 1) != 0 || *(*(this + 5) + 144) != v5)
  {
    if (GEOGetVectorKitLabelSettingsLog(void)::onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitLabelSettingsLog(void)::onceToken, &__block_literal_global_37986);
    }

    v7 = GEOGetVectorKitLabelSettingsLog(void)::log;
    if (os_log_type_enabled(GEOGetVectorKitLabelSettingsLog(void)::log, OS_LOG_TYPE_INFO))
    {
      v8 = "NO";
      if (a3)
      {
        v8 = "YES";
      }

      *buf = 136315394;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "setARWalkingFeatures(force:%s):%@", buf, 0x16u);
    }

    geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(*(this + 5) + 136, v6);
    geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v15, v6);
    geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v9, v15);
    v14 = 0;
    operator new();
  }
}

void sub_1B28DEAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, id a18)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a13);

  a17 = &unk_1F2A3ED40;
  _Unwind_Resume(a1);
}

void ___ZL31GEOGetVectorKitLabelSettingsLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "LabelSettings");
  v1 = GEOGetVectorKitLabelSettingsLog(void)::log;
  GEOGetVectorKitLabelSettingsLog(void)::log = v0;
}

void *geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A3ED40;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void *geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A3ED40;
  a1[1] = v3;
  return a1;
}

uint64_t geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A3ED40;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void std::__function::__func<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0,std::allocator<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A3ED40;

  operator delete(a1);
}

void md::LabelSettings::setClientLocalizedStrings(md::LabelSettings *this, VKClientLocalizedStrings *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  v3 = a2;
  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v2 + 272, v3);
  v5[0] = &unk_1F2A3D128;
  v5[1] = v3;
  geo::_retain_ptr<VKClientLocalizedStrings * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v4, v5);
  v4[6] = 0;
  operator new();
}

void sub_1B28DEEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a15);

  _Unwind_Resume(a1);
}

void *geo::_retain_ptr<VKClientLocalizedStrings * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A3D128;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void std::__function::__func<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0,std::allocator<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A3D128;

  operator delete(a1);
}

void md::LabelSettings::setLabelExclusionRegions(uint64_t a1, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = a2;
  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v2 + 104, v3);
  v5[0] = &unk_1F2A3D0C8;
  v5[1] = v3;
  geo::_retain_ptr<NSArray<VKLabelExclusionRegion *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v4, v5);
  v4[6] = 0;
  operator new();
}

void sub_1B28DF1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a15);

  _Unwind_Resume(a1);
}

void *geo::_retain_ptr<NSArray<VKLabelExclusionRegion *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A3D0C8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void std::__function::__func<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0,std::allocator<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A3D0C8;

  operator delete(a1);
}

void md::LabelSettings::setScreenLabelFeatures(uint64_t a1, void *a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 40) + 128), a2);
  v4 = a2;
  v5 = *(a1 + 24);
  v7[0] = &unk_1F2A11FA8;
  v7[1] = v5;
  v6 = v4;
  v7[2] = v6;
  v7[3] = v7;
  md::LabelManager::queueCommand(v5, 68, 1, v7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7);
}

void sub_1B28DF434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a10);

  _Unwind_Resume(a1);
}

id std::__function::__func<md::LabelManager::setScreenLabelFeatures(NSArray<VKScreenLabelFeature *> *)::$_0,std::allocator<md::LabelManager::setScreenLabelFeatures(NSArray<VKScreenLabelFeature *> *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F2A11FA8;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

uint64_t md::LabelManager::setSupportedEVConnectorTypes(uint64_t this, uint64_t a2)
{
  v2[4] = *MEMORY[0x1E69E9840];
  if (*(this + 3496) != a2)
  {
    v2[0] = &unk_1F2A11E88;
    v2[1] = this;
    v2[2] = a2;
    v2[3] = v2;
    md::LabelManager::queueCommand(this, 69, 1, v2);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
  }

  return this;
}

void sub_1B28DF540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::LabelManager::setCustomFeatureDataSources(md::LabelManager *this, NSArray *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v3 = (*(**(*(this + 21) + 64) + 32))(*(*(this + 21) + 64));
  if (v3)
  {
    v4 = v10;
    while (v3[12])
    {
      md::LabelCustomFeatureSupport::removeDataSourceInternal(v3, *(v3[9] + 32));
    }

    memset(v11, 0, sizeof(v11));
    v5 = v4;
    if ([(NSArray *)v5 countByEnumeratingWithState:v11 objects:v12 count:16])
    {
      md::LabelCustomFeatureSupport::addDataSourceInternal(v3, **(&v11[0] + 1));
    }

    v6 = v3[2];
    *(v6 + 3034) = 1;
    v7 = atomic_load((v6 + 3053));
    if (v7)
    {
      v8 = *(v6 + 136);
      if (v8)
      {
        v9 = *(v8 + 56);
        if (v9)
        {
          std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v9, v6, 9);
        }
      }
    }
  }
}

uint64_t md::LabelSettings_Presentation::setShieldSize(std::mutex *a1, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 1) = a3;
  v4[0] = &unk_1F2A11810;
  v4[1] = a1;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(a1, 10, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28DF7FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setShieldSize(grl::SizeGroup)::$_0,std::allocator<md::LabelManager::setShieldSize(grl::SizeGroup)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11810;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::LabelSettings_Presentation::setShieldIdiom(std::mutex *a1, uint64_t a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x1E69E9840];
  *(a2 + 8) = a3;
  v4[0] = &unk_1F2A11978;
  v4[1] = a1;
  v4[2] = a3;
  v4[3] = v4;
  md::LabelManager::queueCommand(a1, 12, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28DF8D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setShieldIdiom(VKShieldIdiom)::$_0,std::allocator<md::LabelManager::setShieldIdiom(VKShieldIdiom)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11978;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::LabelSettings_Presentation::setShowsVenues(std::mutex *this, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 16) = a3;
  v4[0] = &unk_1F2A12350;
  v4[1] = this;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(this, 48, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28DF9B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setShowVenues(BOOL)::$_0,std::allocator<md::LabelManager::setShowVenues(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12350;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::LabelSettings_Presentation::setLocalizeLabels(std::mutex *this, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 24) = a3;
  v4[0] = &unk_1F2A11588;
  v4[1] = this;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(this, 5, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28DFA94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t md::LabelSettings_Presentation::setLabelScaleFactor(std::mutex *a1, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 48) = a3;
  v4[0] = &unk_1F2A115D0;
  v4[1] = a1;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(a1, 4, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28DFB44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setLocalizeLabels(BOOL)::$_0,std::allocator<md::LabelManager::setLocalizeLabels(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11588;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::LabelSettings_Presentation::setShowsPOIs(std::mutex *this, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 17) = a3;
  v4[0] = &unk_1F2A11C00;
  v4[1] = this;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(this, 18, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28DFC28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setLabelScaleFactor(gss::LabelScaleFactor)::$_0,std::allocator<md::LabelManager::setLabelScaleFactor(gss::LabelScaleFactor)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A115D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::LabelSettings_Presentation::setShowsPointLabels(std::mutex *this, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 18) = a3;
  v4[0] = &unk_1F2A11D20;
  v4[1] = this;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(this, 51, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28DFD0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setShowsPointsOfInterest(BOOL)::$_0,std::allocator<md::LabelManager::setShowsPointsOfInterest(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11C00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

__n128 std::__function::__func<md::LabelManager::setShowsPointLabels(BOOL)::$_0,std::allocator<md::LabelManager::setShowsPointLabels(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11D20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::LabelSettings_Presentation::setShowsRoadLabels(std::mutex *this, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 19) = a3;
  v4[0] = &unk_1F2A11C90;
  v4[1] = this;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(this, 52, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28DFE24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setShowsRoadLabels(BOOL)::$_0,std::allocator<md::LabelManager::setShowsRoadLabels(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11C90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::LabelSettings_Presentation::setShowsRoadShields(std::mutex *this, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 20) = a3;
  v4[0] = &unk_1F2A11CD8;
  v4[1] = this;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(this, 53, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28DFF04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t md::LabelSettings_Presentation::setShowsContourLabels(std::mutex *this, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 21) = a3;
  v4[0] = &unk_1F2A11D68;
  v4[1] = this;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(this, 54, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28DFFB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setShowsRoadShields(BOOL)::$_0,std::allocator<md::LabelManager::setShowsRoadShields(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11CD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::LabelSettings_Presentation::setShowsPhysicalFeatureLabels(std::mutex *this, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 22) = a3;
  v4[0] = &unk_1F2A11DB0;
  v4[1] = this;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(this, 55, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28E009C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setShowsContourLabels(BOOL)::$_0,std::allocator<md::LabelManager::setShowsContourLabels(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11D68;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

__n128 std::__function::__func<md::LabelManager::setShowsPhysicalFeatureLabels(BOOL)::$_0,std::allocator<md::LabelManager::setShowsPhysicalFeatureLabels(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11DB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::LabelSettings_Presentation::setShowsLabels(std::mutex *this, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 23) = a3;
  v4[0] = &unk_1F2A11DF8;
  v4[1] = this;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(this, 56, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28E01B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::LabelSettings_Presentation::setPointsOfInterestFilter(uint64_t a1, uint64_t *a2)
{
  v3 = *(*a1 + 40);
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(v3 + 304);
  *(v3 + 296) = v5;
  *(v3 + 304) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B28E02E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setShowsLabels(BOOL)::$_0,std::allocator<md::LabelManager::setShowsLabels(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11DF8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void std::__function::__func<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0,std::allocator<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

uint64_t md::LabelSettings_Presentation::setMKRenderingSelectionBalloon(std::mutex *this, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 27) = a3;
  v4[0] = &unk_1F2A11E40;
  v4[1] = this;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(this, 66, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28E0494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::LabelSettings_Presentation::setLabelSelectionFilter(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*a1 + 40) + 312), a2);
  v3 = a2;
}

__n128 std::__function::__func<md::LabelManager::setMKRenderingSelectionBalloon(BOOL)::$_0,std::allocator<md::LabelManager::setMKRenderingSelectionBalloon(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11E40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::LabelSettings_Navigation::setNavigationShieldSize(std::mutex *a1, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 2) = a3;
  v4[0] = &unk_1F2A11930;
  v4[1] = a1;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(a1, 11, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28E05BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setNavigationShieldSize(grl::SizeGroup)::$_0,std::allocator<md::LabelManager::setNavigationShieldSize(grl::SizeGroup)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11930;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::LabelSettings_Navigation::setRouteUserOffset(md::LabelSettings_Navigation *this, const PolylineCoordinate *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  *(*(*this + 40) + 184) = *a2;
  v2 = *(*this + 24);
  *(v2 + 3600) = *a2;
  v3 = *a2;
  v5[0] = &unk_1F2A120C8;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v5;
  md::LabelManager::queueCommand(v2, 25, 1, v5);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
}

void sub_1B28E06B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::LabelSettings_Navigation::setFocusedPolyline(md::LabelSettings_Navigation *this, VKPolylineOverlay *a2)
{
  v3 = a2;
  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(*(*this + 40) + 192, v3);
  md::LabelManager::setFocusedPolyline(*(*this + 24), v3);
}

__n128 std::__function::__func<md::LabelManager::setRouteUserOffset(geo::PolylineCoordinate const&)::$_0,std::allocator<md::LabelManager::setRouteUserOffset(geo::PolylineCoordinate const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A120C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::LabelManager::setFocusedPolyline(md::LabelManager *this, VKPolylineOverlay *a2)
{
  v3[3] = *MEMORY[0x1E69E9840];
  geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v3, a2);
  geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v2, v3);
  v2[6] = 0;
  operator new();
}

void sub_1B28E08A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, id a18)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a13);

  a17 = &unk_1F2A4BA98;
  _Unwind_Resume(a1);
}

void *geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A4BA98;
  a1[1] = v3;
  return a1;
}

void *geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A4BA98;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

uint64_t geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A4BA98;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void md::LabelManager::flushCommands(md::LabelManager *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(this + 3424);
  if ((v1 & 1) == 0)
  {
    *&v5.__shared_owners_ = 0uLL;
    v6 = 0;
    std::mutex::lock(this + 50);
    v4 = *(this + 204);
    *&v5.__shared_owners_ = v4;
    *(this + 204) = 0u;
    v6 = *(this + 410);
    *(this + 410) = 0;
    atomic_store(1u, this + 3424);
    std::mutex::unlock(this + 50);
    for (i = v4; i != *(&v4 + 1); i += 16)
    {
      std::invoke[abi:nn200100]<std::function<void ()(void)> &>(*(*i + 32));
    }

    v5.__vftable = &v5.__shared_owners_;
    std::vector<std::shared_ptr<md::LabelManagerCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelManagerCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  }
}

void sub_1B28E0B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, char a13)
{
  a12 = &a13;
  std::vector<std::shared_ptr<md::LabelManagerCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelManagerCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a12);
  _Unwind_Resume(a1);
}

void md::LabelManager::clearScene(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 3048) & 1) == 0 && *(a1 + 128) == 1)
  {
    *(a1 + 3048) = 1;
    if (a2)
    {
      if (a2 == 3)
      {
        v4 = *(a1 + 296);
        v5 = v4[3];
        v6 = __CFADD__(v5, 1);
        v7 = v5 + 1;
        v4[3] = v7;
        if (v6)
        {
          *(v4 + 3) = 0x100000002;
          v7 = 2;
        }

        v4[4] = v7 - 1;
        atomic_store(v7, v4 + 2);
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      md::LabelManager::setSelectedLabelMarker(a1, &v17);
    }

    (*(**(a1 + 240) + 280))(*(a1 + 240));
    std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v17, *(a1 + 8), *(a1 + 16));
    if (a2 == 1)
    {
      v8 = *(a1 + 336);
      std::mutex::lock(v8);
      md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::purge(&v8[3].__m_.__opaque[8]);
      md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::purge(&v8[5]);
      std::mutex::unlock(v8);
      md::FontAtlas::clear(*(a1 + 304));
    }

    (*(**(a1 + 240) + 208))(*(a1 + 240));
    v9 = *(a1 + 336);
    std::mutex::lock(v9);
    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::clear(v9 + 240);
    std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear((v9 + 208));
    *(v9 + 308) = 0;
    *(v9 + 300) = 0;
    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::clear(v9 + 352);
    std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear((v9 + 320));
    *(v9 + 420) = 0;
    *(v9 + 412) = 0;
    std::mutex::unlock(v9);
    std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::clear(a1 + 368);
    if (a2 == 2)
    {
      v10 = *(a1 + 264);
      if (*(v10 + 72))
      {
        std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::__deallocate_node(*(v10 + 56));
        *(v10 + 56) = 0;
        v11 = *(v10 + 40);
        if (v11)
        {
          for (i = 0; i != v11; ++i)
          {
            *(*(v10 + 32) + 8 * i) = 0;
          }
        }

        *(v10 + 72) = 0;
      }

      std::__list_imp<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,mdm::zone_mallocator>>::clear(v10);
      *(v10 + 100) = 0;
      *(v10 + 92) = 0;
    }

    (*(**(a1 + 240) + 112))(*(a1 + 240), a2);
    v13 = *(*(a1 + 336) + 184);
    if (v13)
    {
      gss::StylesheetManager<gss::PropertyID>::clearCaches(v13);
    }

    *(a1 + 3038) = 1;
    *(a1 + 3040) = 1;
    v14 = atomic_load((a1 + 3053));
    if (v14)
    {
      v15 = *(a1 + 136);
      if (v15)
      {
        v16 = *(v15 + 56);
        if (v16)
        {
          std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v16, a1, 9);
        }
      }
    }

    *(a1 + 3048) = 0;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }
  }
}

void sub_1B28E0E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::LabelManager::setNeedsClearScene(BOOL)::$_0,std::allocator<md::LabelManager::setNeedsClearScene(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  md::LabelManager::clearScene(*(a1 + 8), v1);
}

uint64_t std::invoke[abi:nn200100]<std::function<void ()(void)> &>(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return md::CompositeLabeler::clearPreviouslySelectedLabelMarker(v4);
  }
}

uint64_t md::CompositeLabeler::clearPreviouslySelectedLabelMarker(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 208))(v3);
  }

  return this;
}

void md::StandardLabeler::clearPreviouslySelectedLabelMarker(md::StandardLabeler *this)
{
  v1 = *(this + 32);
  if (v1)
  {
    md::Label::setPreviouslySelected(*(v1 + 288), *(this + 3), 0);
    v3 = *(this + 6);
    v5[0] = 0;
    v5[1] = 0;
    md::LabelPool::setLocalLabel(v3, (v3 + 720), v5);
    v4 = *(this + 33);
    *(this + 32) = 0;
    *(this + 33) = 0;
    if (v4)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear(uint64_t *a1)
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
        std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>((v2 + 2));
        v7 = mdm::zone_mallocator::instance(v6);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,void *>>(v7, v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::clear(uint64_t a1)
{
  if (*(a1 + 40))
  {
    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
    *(a1 + 24) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 40) = 0;
  }
}

void std::__list_imp<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,mdm::zone_mallocator>>::clear(uint64_t *a1)
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
        std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>((v2 + 2));
        v7 = mdm::zone_mallocator::instance(v6);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,void *>>(v7, v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::clear(uint64_t a1)
{
  if (*(a1 + 40))
  {
    std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
    *(a1 + 24) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 40) = 0;
  }
}

uint64_t md::CompositeLabeler::clearScene(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = (*(*v5 + 112))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

void md::MapNavLabeler::clearScene(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    md::RouteLineSupport::restyleFeatures(*(a1 + 64));
    [*(a1 + 56) clearSceneIsMemoryWarning:0];
  }

  else
  {
    [*(a1 + 56) clearSceneIsMemoryWarning:a2 == 1];
    if (a2 == 1)
    {
      goto LABEL_5;
    }
  }

  md::LabelNavEtaLabeler::clearEtaFeatures(*(a1 + 720));
LABEL_5:
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 584));
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 616));
  v4 = *(a1 + 656);
  v5 = *(a1 + 648);
  if (v4 != v5)
  {
    v6 = v4 - 3;
    v7 = v4 - 3;
    v8 = v4 - 3;
    do
    {
      v9 = *v8;
      v8 -= 3;
      (*v9)(v7);
      v6 -= 3;
      v10 = v7 == v5;
      v7 = v8;
    }

    while (!v10);
  }

  *(a1 + 656) = v5;
  v11 = *(a1 + 728);
  v12 = *v11;
  if (*(*v11 + 32))
  {
    v13 = v12[3];
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

    v12[3] = 0;
    v15 = v12[2];
    if (v15)
    {
      for (i = 0; i != v15; ++i)
      {
        *(v12[1] + 8 * i) = 0;
      }
    }

    v12[4] = 0;
  }

  std::__list_imp<std::pair<unsigned long,geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::clear(v12 + 6);
  v17 = v11[1];
  if (v17[4])
  {
    v18 = v17[3];
    if (v18)
    {
      do
      {
        v19 = *v18;
        operator delete(v18);
        v18 = v19;
      }

      while (v19);
    }

    v17[3] = 0;
    v20 = v17[2];
    if (v20)
    {
      for (j = 0; j != v20; ++j)
      {
        *(v17[1] + 8 * j) = 0;
      }
    }

    v17[4] = 0;
  }

  std::__list_imp<std::pair<unsigned long,std::shared_ptr<md::LabelIcon>>>::clear(v17 + 6);
}

void std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::clear(uint64_t a1)
{
  if (*(a1 + 40))
  {
    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
    *(a1 + 24) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 40) = 0;
  }
}

void std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,mdm::zone_mallocator>>::clear(uint64_t a1)
{
  if (*(a1 + 40))
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
    *(a1 + 24) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 40) = 0;
  }
}

void md::LabelNavEtaLabeler::clearEtaFeatures(md::LabelNavEtaLabeler *this)
{
  v2 = this + 496;
  std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(this + 62));
  *(this + 64) = 0;
  *(this + 61) = v2;
  *(this + 62) = 0;
  std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(this + 66));
  *(this + 68) = 0;
  *(this + 65) = this + 528;
  *(this + 66) = 0;
  std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(*(this + 73));
  *(this + 75) = 0;
  *(this + 72) = this + 584;
  *(this + 73) = 0;
  std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(*(this + 77));
  *(this + 79) = 0;
  *(this + 76) = this + 616;
  *(this + 77) = 0;
  std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(*(this + 81));
  *(this + 83) = 0;
  *(this + 80) = this + 648;
  *(this + 81) = 0;
  std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(*(this + 85));
  *(this + 87) = 0;
  *(this + 84) = this + 680;
  *(this + 85) = 0;
  std::__tree<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,mdm::zone_mallocator>>::destroy(*(this + 33));
  *(this + 35) = 0;
  *(this + 32) = this + 264;
  *(this + 33) = 0;
  std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::destroy(*(this + 45));
  *(this + 47) = 0;
  *(this + 44) = this + 360;
  *(this + 45) = 0;
  v4 = *(this + 19);
  v3 = *(this + 20);
  if (v3 != v4)
  {
    v5 = v3 - 3;
    v6 = v3 - 3;
    v7 = v3 - 3;
    do
    {
      v8 = *v7;
      v7 -= 3;
      (*v8)(v6);
      v5 -= 3;
      v9 = v6 == v4;
      v6 = v7;
    }

    while (!v9);
  }

  *(this + 20) = v4;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 23);
  v10 = *(this + 36);
  for (i = *(this + 37); i != v10; i -= 8)
  {
    v12 = *(i - 8);
  }

  *(this + 37) = v10;
  v13 = *(this + 40);
  for (j = *(this + 41); j != v13; j -= 8)
  {
    v15 = *(j - 8);
  }

  *(this + 41) = v13;
  std::__tree<std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,mdm::zone_mallocator>>::destroy(*(this + 53));
  *(this + 55) = 0;
  *(this + 52) = this + 424;
  *(this + 53) = 0;
  *(this + 352) = 0;
  *(this + 706) = 0;
}

void std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(a1 + 1));
    v6 = a1 + 40;
    std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);

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

void std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>((a1 + 4));
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<md::RouteRangeAnnotationRequest,void *>>(v3, a1);
  }
}

void std::__tree<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,mdm::zone_mallocator>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,mdm::zone_mallocator>>::destroy(*(a1 + 1));
    v4 = (a1 + 40);
    std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::__destroy_vector::operator()[abi:nn200100](&v4);

    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,void *>>(v3, a1);
  }
}

void std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::destroy(a1[1]);
    a1[5] = off_1F2A59C08;

    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void *>>(v3, a1);
  }
}

void std::__tree<std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,mdm::zone_mallocator>>::destroy(a1[1]);

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

void std::__list_imp<std::pair<unsigned long,std::shared_ptr<md::LabelIcon>>>::clear(uint64_t *a1)
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
        v6 = v2[4];
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

uint64_t *md::StandardLabeler::clearScene(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      md::LabelFeaturePool::flushRemovedTiles(*(a1 + 64));
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      md::LabelCustomFeatureSupport::updateStylesForFeatures(*(a1 + 32));
      v3 = *(a1 + 40);
      if (*(v3 + 8) != *(v3 + 16))
      {
        md::LabelFeatureStyler::styleExternalFeatures(*(*v3 + 296), (v3 + 8));
      }
    }

    md::LabelPool::resetActiveLabels(*(a1 + 48));
  }

  else
  {
    md::LabelPool::clear(*(a1 + 48));
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 72));
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 104));
LABEL_10:
  v4 = *(a1 + 48);
  md::LabelPool::pruneCachedLabels(v4);

  return md::LabelPool::pruneCustomFeatureLabels(v4);
}

void md::MapStandardLabeler::clearScene(uint64_t a1, int a2)
{
  md::StandardLabeler::clearScene(a1, a2);
  if (a2 != 1)
  {
    if (a2 == 3)
    {
      md::LabelTransitSupport::updateStylesForFeatures(*(a1 + 392));
    }

    v4 = *(*(a1 + 400) + 32);
    if (v4)
    {
      (*(*v4 + 32))(v4);
    }

    operator new();
  }

  v5 = *(a1 + 392) + 368;

  std::__hash_table<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,md::LabelTransitSupport::TransitLineColorKeyHash,std::equal_to<std::pair<unsigned long long,BOOL>>,true>,std::__unordered_map_equal<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::equal_to<std::pair<unsigned long long,BOOL>>,md::LabelTransitSupport::TransitLineColorKeyHash,true>,geo::allocator_adapter<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,mdm::zone_mallocator>>::clear(v5);
}

void std::__list_imp<std::pair<unsigned long,geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::clear(uint64_t *a1)
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
        v2[3] = &unk_1F2A43ED8;

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t md::LabelPool::resetActiveLabels(uint64_t this)
{
  v1 = this;
  v2 = *(this + 224);
  v3 = (this + 232);
  if (v2 != (this + 232))
  {
    do
    {
      v4 = v2[6];
      *(v4 + 1340) = 0;
      if (*(v4 + 1339))
      {
        *(v4 + 1339) = 0;
        md::Label::clearAnimation(v4);
      }

      this = md::Label::clearStagingParts(v4);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  *(v1 + 758) = 1;
  return this;
}

void md::LabelPool::pruneCachedLabels(md::LabelPool *this)
{
  v1 = *(this + 24);
  v2 = (this + 200);
  if (v1 != (this + 200))
  {
    do
    {
      v4 = v1[7];
      if (!v4 || *(v4 + 8) == -1)
      {
        v8 = v1[1];
        v9 = v1;
        if (v8)
        {
          do
          {
            v6 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v6 = v9[2];
            v7 = *v6 == v9;
            v9 = v6;
          }

          while (!v7);
        }

        if (*(this + 24) == v1)
        {
          *(this + 24) = v6;
        }

        --*(this + 27);
        std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(this + 25), v1);
        v10 = v1[7];
        if (v10)
        {
          std::__shared_weak_count::__release_weak(v10);
        }

        v11 = mdm::zone_mallocator::instance(v10);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,void *>>(v11, v1);
      }

      else
      {
        v5 = v1[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v1[2];
            v7 = *v6 == v1;
            v1 = v6;
          }

          while (!v7);
        }
      }

      v1 = v6;
    }

    while (v6 != v2);
  }
}

void md::TransitNodeFeaturePool::resetCache(md::TransitNodeFeaturePool *this)
{
  v3 = *(this + 16);
  v2 = (this + 128);
  if (!v3)
  {
    v4 = *(this + 15);
    *(this + 15) = 0;
    std::unique_ptr<md::TransitNodeTextureAtlas>::reset[abi:nn200100](v2, v4);
  }

  operator new();
}

uint64_t *md::LabelPool::pruneCustomFeatureLabels(uint64_t *this)
{
  v1 = this[68];
  v2 = this + 69;
  if (v1 != this + 69)
  {
    v3 = this;
    do
    {
      v4 = v1[6];
      if (v4[844] || (v4[1339] & 1) != 0 || (v5 = atomic_load(v4 + 1385)) != 0)
      {
LABEL_6:
        v6 = v1[1];
        if (v6)
        {
          do
          {
            this = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            this = v1[2];
            v7 = *this == v1;
            v1 = this;
          }

          while (!v7);
        }
      }

      else
      {
        v8 = v1[6];
        v9 = v3[29];
        if (v9)
        {
          v10 = *(*(v8 + 8) + 72);
          v11 = *(v8 + 48);
          do
          {
            v12 = *(v9 + 32);
            v13 = *(v9 + 40);
            v14 = v11 < v13;
            if (v10 != v12)
            {
              v14 = v10 < v12;
            }

            if (!v14)
            {
              v15 = v13 < v11;
              if (v10 == v12)
              {
                v16 = v15;
              }

              else
              {
                v16 = v12 < v10;
              }

              if (!v16)
              {
                goto LABEL_6;
              }

              v9 += 8;
            }

            v9 = *v9;
          }

          while (v9);
        }

        atomic_store(0, (v8 + 1330));
        v17 = atomic_load((v8 + 1330));
        if ((v17 & 1) == 0)
        {
          *(v8 + 352) = 0;
        }

        this = std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::erase((v3 + 68), v1);
      }

      v1 = this;
    }

    while (this != v2);
  }

  return this;
}

std::__shared_weak_count *std::unique_ptr<md::LabelTrafficTilePool>::reset[abi:nn200100](std::__shared_weak_count *result, std::__shared_weak_count_vtbl *a2)
{
  v2 = result->__vftable;
  result->__vftable = a2;
  if (v2)
  {
    get_deleter = v2[1].__get_deleter;
    if (get_deleter)
    {
      on_zero_shared_weak = v2[1].__on_zero_shared_weak;
      v5 = v2[1].__get_deleter;
      if (on_zero_shared_weak != get_deleter)
      {
        do
        {
          result = *(on_zero_shared_weak - 1);
          if (result)
          {
            std::__shared_weak_count::__release_weak(result);
          }

          on_zero_shared_weak = (on_zero_shared_weak - 16);
        }

        while (on_zero_shared_weak != get_deleter);
        v5 = v2[1].__get_deleter;
      }

      v2[1].__on_zero_shared_weak = get_deleter;
      v6 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::weak_ptr<md::LabelTrafficTile>>(v6, v5);
    }

    std::mutex::~mutex(v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,md::LabelTransitSupport::TransitLineColorKeyHash,std::equal_to<std::pair<unsigned long long,BOOL>>,true>,std::__unordered_map_equal<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::equal_to<std::pair<unsigned long long,BOOL>>,md::LabelTransitSupport::TransitLineColorKeyHash,true>,geo::allocator_adapter<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,mdm::zone_mallocator>>::clear(uint64_t a1)
{
  if (*(a1 + 40))
  {
    std::__hash_table<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,md::LabelTransitSupport::TransitLineColorKeyHash,std::equal_to<std::pair<unsigned long long,BOOL>>,true>,std::__unordered_map_equal<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::equal_to<std::pair<unsigned long long,BOOL>>,md::LabelTransitSupport::TransitLineColorKeyHash,true>,geo::allocator_adapter<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
    *(a1 + 24) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 40) = 0;
  }
}

void std::__function::__func<md::LabelManager::setTrafficEnabled(BOOL)::$_0,std::allocator<md::LabelManager::setTrafficEnabled(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != *(v1 + 3022))
  {
    *(v1 + 3022) = v2;
    v3 = *(v1 + 3440);
    if (v3 && (*(*v3 + 160))(v3))
    {
      md::LabelManager::deselectLabelMarkerImpl(v1);
    }

    *(v1 + 3034) = 1;
    *(v1 + 3038) = 1;
    *(v1 + 3040) = 1;
    v4 = atomic_load((v1 + 3053));
    if (v4)
    {
      v5 = *(v1 + 136);
      if (v5)
      {
        v6 = *(v5 + 56);
        if (v6)
        {

          std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v6, v1, 9);
        }
      }
    }
  }
}

void md::LabelNavTrafficSupport::setExternalTrafficFeatures(md::LabelNavTrafficSupport *this, NSArray *a2, char a3)
{
  v130 = *MEMORY[0x1E69E9840];
  v108 = a2;
  *(this + 152) = a3;
  v114 = this;
  v7 = this + 40;
  v6 = *(this + 5);
  v5 = *(v7 + 1);
  if (v5 != v6)
  {
    v8 = v5 - 3;
    v9 = v5 - 3;
    v10 = v5 - 3;
    do
    {
      v11 = *v10;
      v10 -= 3;
      (*v11)(v9);
      v8 -= 3;
      v12 = v9 == v6;
      v9 = v10;
    }

    while (!v12);
  }

  v13 = v114;
  *(v114 + 6) = v6;
  v129 = 0;
  v127 = v128;
  v128[0] = 0;
  if ([(NSArray *)v108 count])
  {
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v14 = v109;
    v15 = [v14 countByEnumeratingWithState:&v115 objects:v126 count:16];
    if (v15)
    {
      v16 = *v116;
      v111 = *v116;
      v112 = v14;
      do
      {
        v17 = 0;
        v113 = v15;
        do
        {
          if (*v116 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v115 + 1) + 8 * v17);
          if (![v18 trafficFeatureType] && (objc_msgSend(v18, "isNotForDisplay") & 1) == 0)
          {
            v19 = v18;
            v20 = v19;
            v21 = v128[0];
            v22 = v128;
            v23 = v128;
            if (!v128[0])
            {
              goto LABEL_22;
            }

            v23 = v128;
            while (1)
            {
              while (1)
              {
                v22 = v21;
                v19 = VKTrafficIncidentFeatureSetLessThan::operator()(v20, v21[4]);
                if (!v19)
                {
                  break;
                }

                v21 = *v22;
                v23 = v22;
                if (!*v22)
                {
                  goto LABEL_22;
                }
              }

              v19 = VKTrafficIncidentFeatureSetLessThan::operator()(v22[4], v20);
              if (!v19)
              {
                break;
              }

              v23 = v22 + 1;
              v21 = v22[1];
              if (!v21)
              {
                goto LABEL_22;
              }
            }

            if (!*v23)
            {
LABEL_22:
              v24 = mdm::zone_mallocator::instance(v19);
              v25 = pthread_rwlock_rdlock((v24 + 32));
              if (v25)
              {
                geo::read_write_lock::logFailure(v25, "read lock", v26);
              }

              v27 = malloc_type_zone_malloc(*v24, 0x28uLL, 0x10A0040AE65CA53uLL);
              atomic_fetch_add((v24 + 24), 1u);
              geo::read_write_lock::unlock((v24 + 32));
              v27[4] = v20;
              *v27 = 0;
              v27[1] = 0;
              v27[2] = v22;
              *v23 = v27;
              if (*v127)
              {
                v127 = *v127;
                v27 = *v23;
              }

              std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v128[0], v27);
              ++v129;
              v28 = v20;
              v29 = v114;
              v30 = *(v114 + 6);
              v31 = *(v114 + 7);
              if (v30 >= v31)
              {
                v33 = *(v114 + 5);
                v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v33) >> 3);
                v35 = v34 + 1;
                if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v36 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v33) >> 3);
                if (2 * v36 > v35)
                {
                  v35 = 2 * v36;
                }

                if (v36 >= 0x555555555555555)
                {
                  v37 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v37 = v35;
                }

                if (v37)
                {
                  v38 = mdm::zone_mallocator::instance(v30);
                  v39 = pthread_rwlock_rdlock((v38 + 32));
                  if (v39)
                  {
                    geo::read_write_lock::logFailure(v39, "read lock", v40);
                  }

                  v41 = malloc_type_zone_malloc(*v38, 24 * v37, 0x81040B49F1EBBuLL);
                  atomic_fetch_add((v38 + 24), 1u);
                  geo::read_write_lock::unlock((v38 + 32));
                }

                else
                {
                  v41 = 0;
                }

                v42 = &v41[24 * v34];
                v43 = geo::_retain_ptr<VKTrafficIncidentFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v42, v28);
                v45 = *(v114 + 5);
                v44 = *(v114 + 6);
                v46 = &v42[-(v44 - v45)];
                if (v44 != v45)
                {
                  v110 = v37;
                  v47 = &v41[24 * v34 + -8 * ((v44 - v45) >> 3)];
                  v48 = *(v114 + 5);
                  v49 = &v42[-(v44 - v45)];
                  do
                  {
                    *v49 = &unk_1F2A542C0;
                    *(v49 + 1) = 0;
                    v50 = (v49 + 8);
                    objc_storeStrong(v50, *(v48 + 8));
                    v51 = *(v48 + 8);
                    *(v48 + 8) = 0;

                    v48 += 24;
                    v47 += 24;
                    v49 = (v50 + 2);
                  }

                  while (v48 != v44);
                  v52 = v45;
                  v53 = v45;
                  v46 = &v42[-(v44 - v45)];
                  v37 = v110;
                  do
                  {
                    v54 = *v53;
                    v53 += 24;
                    v43 = (*v54)(v45);
                    v52 += 24;
                    v45 = v53;
                  }

                  while (v53 != v44);
                }

                v32 = v42 + 24;
                *&v55 = v42 + 24;
                *(&v55 + 1) = &v41[24 * v37];
                v29 = v114;
                v56 = *(v114 + 5);
                *(v114 + 5) = v46;
                *(v114 + 3) = v55;
                if (v56)
                {
                  v57 = mdm::zone_mallocator::instance(v43);
                  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKTrafficIncidentFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v57, v56);
                }
              }

              else
              {
                v32 = geo::_retain_ptr<VKTrafficIncidentFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v30, v28) + 3;
                *(v114 + 6) = v32;
              }

              *(v29 + 6) = v32;
            }

            v14 = v112;
            v15 = v113;
            v16 = v111;
          }

          ++v17;
        }

        while (v17 != v15);
        v15 = [v14 countByEnumeratingWithState:&v115 objects:v126 count:16];
      }

      while (v15);
    }

    v13 = v114;
  }

  v58 = *(v13 + 4);
  if (v58)
  {
    [v58 removeAllObjects];
  }

  else
  {
    v59 = objc_alloc(MEMORY[0x1E695DF70]);
    v60 = [v59 initWithCapacity:v129];
    v61 = *(v13 + 4);
    *(v13 + 4) = v60;

    v13 = v114;
  }

  v123 = 0uLL;
  v124 = 0;
  v63 = *(v13 + 9);
  v64 = *(v13 + 10);
  for (i = (v13 + 72); v63 != v64; v13 = v114)
  {
    v65 = (*(**v63 + 200))();
    v66 = v128[0];
    if (!v128[0])
    {
      goto LABEL_68;
    }

    v67 = v128;
    do
    {
      v68 = v66;
      v69 = v67;
      v70 = VKTrafficIncidentFeatureSetLessThan::operator()(v66[4], v65);
      v71 = v70;
      if (!v70)
      {
        v67 = v68;
      }

      v66 = v68[v71];
    }

    while (v66);
    if (v67 == v128 || (!v70 ? (v72 = v68) : (v72 = v69), VKTrafficIncidentFeatureSetLessThan::operator()(v65, v72[4])))
    {
LABEL_68:
    }

    else
    {

      v74 = *(&v123 + 1);
      if (*(&v123 + 1) >= v124)
      {
        v77 = (*(&v123 + 1) - v123) >> 4;
        v78 = v77 + 1;
        if ((v77 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v79 = &v124[-v123];
        if (&v124[-v123] >> 3 > v78)
        {
          v78 = v79 >> 3;
        }

        if (v79 >= 0x7FFFFFFFFFFFFFF0)
        {
          v80 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v80 = v78;
        }

        v121 = &v125;
        if (v80)
        {
          v81 = mdm::zone_mallocator::instance(v73);
          v82 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::TrafficIncidentLabelFeature>>(v81, v80);
        }

        else
        {
          v82 = 0;
        }

        v83 = &v82[16 * v77];
        v84 = *v63;
        *v83 = *v63;
        if (*(&v84 + 1))
        {
          atomic_fetch_add_explicit((*(&v84 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v85 = &v82[16 * v80];
        v76 = v83 + 16;
        v86 = &v83[-(*(&v123 + 1) - v123)];
        memcpy(v86, v123, *(&v123 + 1) - v123);
        v87 = v123;
        v88 = v124;
        *&v123 = v86;
        *(&v123 + 1) = v76;
        v124 = v85;
        v119.__shared_weak_owners_ = v87;
        v120 = v88;
        v119.__vftable = v87;
        v119.__shared_owners_ = v87;
        std::__split_buffer<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(&v119);
      }

      else
      {
        **(&v123 + 1) = *v63;
        v75 = v63[1];
        *(v74 + 8) = v75;
        if (v75)
        {
          atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
        }

        v76 = (v74 + 16);
      }

      *(&v123 + 1) = v76;
      v89 = v67[1];
      v90 = v67;
      if (v89)
      {
        do
        {
          v91 = v89;
          v89 = *v89;
        }

        while (v89);
      }

      else
      {
        do
        {
          v91 = v90[2];
          v12 = *v91 == v90;
          v90 = v91;
        }

        while (!v12);
      }

      if (v127 == v67)
      {
        v127 = v91;
      }

      --v129;
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v128[0], v67);

      v93 = mdm::zone_mallocator::instance(v92);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<VKTrafficIncidentFeature * {__strong},void *>>(v93, v67);
    }

    v63 += 2;
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](i);
  v94 = *(v13 + 72);
  *(v13 + 72) = v123;
  v123 = v94;
  v95 = *(v13 + 11);
  *(v13 + 11) = v124;
  v124 = v95;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v13 + 13);
  if (v127 != v128)
  {
    v96 = v127[4];
    v122 = v96;
    if ([v96 routeRelevance] == 3 || objc_msgSend(v96, "routeRelevance") == 2)
    {
      if ([v96 isOnSelectedRoute] && ((v97 = objc_msgSend(v96, "routeOffset"), v98 = *(v114 + 34), v98 > v97) || v98 == v97 && *(v114 + 35) > *(&v97 + 1)))
      {
        v99 = 2;
      }

      else
      {
        v99 = 3;
      }

      [v96 setRouteRelevance:v99];
    }

    std::allocate_shared[abi:nn200100]<md::TrafficIncidentLabelFeature,std::allocator<md::TrafficIncidentLabelFeature>,VKTrafficIncidentFeature * {__strong}&,std::shared_ptr<md::RouteAnnotationDedupingGroup> &,0>();
  }

  v100 = v114;
  *(v114 + 18) = 0xFFFFFFFFLL;
  v101 = *(v114 + 14);
  v102 = *(v114 + 13);
  if (v102 != v101)
  {
    std::__introsort<std::_ClassicAlgPolicy,md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0 &,std::shared_ptr<md::TrafficIncidentLabelFeature> *,false>(v102, v101, 126 - 2 * __clz((v101 - v102) >> 4), 1);
    v103 = (*(***(v114 + 13) + 200))(**(v114 + 13));
    *(v114 + 18) = [v103 routeOffset];

    v100 = v114;
  }

  v104 = *(v100 + 1);
  *(v104 + 3034) = 1;
  v105 = atomic_load((v104 + 3053));
  if (v105)
  {
    v106 = *(v104 + 136);
    if (v106)
    {
      v107 = *(v106 + 56);
      if (v107)
      {
        std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v107, v104, 9);
      }
    }
  }

  v119.__vftable = &v123;
  std::vector<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v119);
  std::__tree<VKTrafficIncidentFeature * {__strong},VKTrafficIncidentFeatureSetLessThan,geo::allocator_adapter<VKTrafficIncidentFeature * {__strong},mdm::zone_mallocator>>::destroy(v128[0]);
}

void sub_1B28E2B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30, char a31)
{
  a30 = &a31;
  std::vector<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a30);
  std::__tree<VKTrafficIncidentFeature * {__strong},VKTrafficIncidentFeatureSetLessThan,geo::allocator_adapter<VKTrafficIncidentFeature * {__strong},mdm::zone_mallocator>>::destroy(*(v32 - 120));

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0,std::allocator<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  (***(*(v1 + 168) + 48))(*(*(v1 + 168) + 48), *(a1 + 24), *(a1 + 40));
  v2 = *(**(*(v1 + 168) + 32) + 144);

  return v2();
}

uint64_t std::__function::__func<md::LabelManager::setTrafficClosuresEnabled(BOOL)::$_0,std::allocator<md::LabelManager::setTrafficClosuresEnabled(BOOL)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (v2 != *(v1 + 3023))
  {
    *(v1 + 3023) = v2;
    *(v1 + 3034) = 1;
    *(v1 + 3038) = 1;
    *(v1 + 3040) = 1;
    v3 = atomic_load((v1 + 3053));
    if (v3)
    {
      v4 = *(v1 + 136);
      if (v4)
      {
        result = *(v4 + 56);
        if (result)
        {
          return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(result, v1, 9);
        }
      }
    }
  }

  return result;
}

void std::vector<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::TrafficIncidentLabelFeature>>(v5, v3);
  }
}

void std::__tree<VKTrafficIncidentFeature * {__strong},VKTrafficIncidentFeatureSetLessThan,geo::allocator_adapter<VKTrafficIncidentFeature * {__strong},mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<VKTrafficIncidentFeature * {__strong},VKTrafficIncidentFeatureSetLessThan,geo::allocator_adapter<VKTrafficIncidentFeature * {__strong},mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<VKTrafficIncidentFeature * {__strong},VKTrafficIncidentFeatureSetLessThan,geo::allocator_adapter<VKTrafficIncidentFeature * {__strong},mdm::zone_mallocator>>::destroy(a1[1]);

    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<VKTrafficIncidentFeature * {__strong},void *>>(v3, a1);
  }
}

void md::RouteAnnotationSupport::setTrafficFeatures(md::RouteAnnotationSupport *this, NSArray *a2)
{
  v180 = *MEMORY[0x1E69E9840];
  v163 = a2;
  if ([(NSArray *)v163 isEqualToArray:*(this + 2)])
  {
    goto LABEL_274;
  }

  v4 = *(this + 10);
  v6 = *(this + 11);
  v5 = (this + 80);
  while (v6 != v4)
  {
    v7 = *(v6 - 8);
    v6 -= 8;
  }

  v8 = (this + 48);
  v9 = *(this + 6);
  *(this + 11) = v4;
  for (i = *(this + 7); i != v9; i -= 8)
  {
    v11 = *(i - 8);
  }

  *(this + 7) = v9;
  v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v163 copyItems:0];
  geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(this + 8, v12);

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v13 = *(this + 2);
  v14 = [v13 countByEnumeratingWithState:&v169 objects:v179 count:16];
  if (v14)
  {
    v15 = *v170;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v170 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v169 + 1) + 8 * j);
        v18 = [v17 isIncident];
        if (v18)
        {
          v20 = *(this + 11);
          v19 = *(this + 12);
          if (v20 >= v19)
          {
            v23 = (v20 - *v5) >> 3;
            if ((v23 + 1) >> 61)
            {
              goto LABEL_275;
            }

            v24 = v19 - *v5;
            v25 = v24 >> 2;
            if (v24 >> 2 <= (v23 + 1))
            {
              v25 = v23 + 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFF8)
            {
              v26 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v26 = v25;
            }

            v176 = this + 104;
            if (v26)
            {
              v27 = mdm::zone_mallocator::instance(v18);
              v28 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<VKTrafficFeature * {__strong}>(v27, v26);
            }

            else
            {
              v28 = 0;
            }

            v35 = &v28[v23];
            v173 = v28;
            v174 = v35;
            *(&v175 + 1) = &v28[v26];
            *v35 = v17;
            *&v175 = v35 + 1;
            std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(this + 80, &v173);
            v2 = *(this + 11);
            std::__split_buffer<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator> &>::~__split_buffer(&v173);
          }

          else
          {
            *v20 = v17;
            v2 = (v20 + 1);
          }

          *(this + 11) = v2;
        }

        else
        {
          v22 = *(this + 7);
          v21 = *(this + 8);
          if (v22 >= v21)
          {
            v29 = (v22 - *v8) >> 3;
            if ((v29 + 1) >> 61)
            {
LABEL_275:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v30 = v21 - *v8;
            v31 = v30 >> 2;
            if (v30 >> 2 <= (v29 + 1))
            {
              v31 = v29 + 1;
            }

            if (v30 >= 0x7FFFFFFFFFFFFFF8)
            {
              v32 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v31;
            }

            v176 = this + 72;
            if (v32)
            {
              v33 = mdm::zone_mallocator::instance(v18);
              v34 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<VKTrafficFeature * {__strong}>(v33, v32);
            }

            else
            {
              v34 = 0;
            }

            v36 = &v34[v29];
            v173 = v34;
            v174 = v36;
            *(&v175 + 1) = &v34[v32];
            *v36 = v17;
            *&v175 = v36 + 1;
            std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(this + 48, &v173);
            v2 = *(this + 7);
            std::__split_buffer<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator> &>::~__split_buffer(&v173);
          }

          else
          {
            *v22 = v17;
            v2 = (v22 + 1);
          }

          *(this + 7) = v2;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v169 objects:v179 count:16];
    }

    while (v14);
  }

  v37 = *(this + 6);
  v38 = *(this + 7);
  v39 = 126 - 2 * __clz(v38 - v37);
  if (v38 == v37)
  {
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,false>(v37, v38, v40, 1);
  v42 = *(this + 6);
  v41 = *(this + 7);
  v43 = *(this + 27);
  if (v43 != (v41 - v42) >> 3)
  {
LABEL_148:
    if (v43)
    {
      std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::__deallocate_node(*(this + 25));
      *(this + 25) = 0;
      v94 = *(this + 23);
      if (v94)
      {
        for (k = 0; k != v94; ++k)
        {
          *(*(this + 22) + 8 * k) = 0;
        }
      }

      *(this + 27) = 0;
    }

    *(this + 19) = *(this + 18);
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 14);
    v173 = 0;
    v174 = 0;
    *(&v175 + 1) = 0;
    v177 = 0;
    *(&v175 + 1) = 0;
    v178 = 1.0;
    v96 = *(this + 6);
    v167 = *(this + 7);
    if (v96 == v167)
    {
      goto LABEL_268;
    }

    while (1)
    {
      v168 = *v96;
      if (![v168 isGrouped])
      {
        operator new();
      }

      v97 = [v168 groupIdentifier];
      v98 = v97;
      v99 = v97;
      v100 = v174;
      if (v174)
      {
        v101 = vcnt_s8(v174);
        v101.i16[0] = vaddlv_u8(v101);
        if (v101.u32[0] > 1uLL)
        {
          v2 = v97;
          if (v174 <= v97)
          {
            v2 = v97 % v174;
          }
        }

        else
        {
          v2 = (v174 - 1) & v97;
        }

        v102 = v173[v2];
        if (v102)
        {
          for (m = *v102; m; m = *m)
          {
            v104 = *(m + 1);
            if (v104 == v97)
            {
              if (*(m + 4) == v97)
              {
                goto LABEL_232;
              }
            }

            else
            {
              if (v101.u32[0] > 1uLL)
              {
                if (v104 >= v174)
                {
                  v104 %= v174;
                }
              }

              else
              {
                v104 &= v174 - 1;
              }

              if (v104 != v2)
              {
                break;
              }
            }
          }
        }
      }

      v105 = mdm::zone_mallocator::instance(v97);
      v106 = pthread_rwlock_rdlock((v105 + 32));
      if (v106)
      {
        geo::read_write_lock::logFailure(v106, "read lock", v107);
      }

      m = malloc_type_zone_malloc(*v105, 0x30uLL, 0x10A004033633FDEuLL);
      atomic_fetch_add((v105 + 24), 1u);
      geo::read_write_lock::unlock((v105 + 32));
      *m = 0;
      *(m + 1) = v99;
      *(m + 4) = v98;
      *(m + 3) = 0;
      *(m + 4) = 0;
      *(m + 5) = 0;
      v109 = (v177 + 1);
      if (!v100 || (v178 * v100) < v109)
      {
        break;
      }

LABEL_222:
      v130 = v173;
      v131 = v173[v2];
      if (v131)
      {
        *m = *v131;
      }

      else
      {
        *m = *(&v175 + 1);
        *(&v175 + 1) = m;
        v130[v2] = &v175 + 8;
        if (!*m)
        {
          goto LABEL_231;
        }

        v132 = *(*m + 8);
        if ((v100 & (v100 - 1)) != 0)
        {
          if (v132 >= v100)
          {
            v132 %= v100;
          }
        }

        else
        {
          v132 &= v100 - 1;
        }

        v131 = &v173[v132];
      }

      *v131 = m;
LABEL_231:
      ++v177;
LABEL_232:
      v134 = *(m + 4);
      v133 = *(m + 5);
      if (v134 >= v133)
      {
        v136 = *(m + 3);
        v137 = (v134 - v136) >> 3;
        if ((v137 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v138 = v133 - v136;
        v139 = v138 >> 2;
        if (v138 >> 2 <= (v137 + 1))
        {
          v139 = v137 + 1;
        }

        if (v138 >= 0x7FFFFFFFFFFFFFF8)
        {
          v140 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v140 = v139;
        }

        if (v140)
        {
          if (!(v140 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v141 = (8 * v137);
        *v141 = v168;
        v135 = 8 * v137 + 8;
        v142 = *(m + 3);
        v2 = *(m + 4);
        v143 = (v142 + v141 - v2);
        if (v2 != v142)
        {
          v144 = *(m + 3);
          v145 = v143;
          do
          {
            v146 = *v144;
            *v144++ = 0;
            *v145++ = v146;
          }

          while (v144 != v2);
          do
          {
          }

          while (v142 != v2);
          v142 = *(m + 3);
        }

        *(m + 3) = v143;
        *(m + 4) = v135;
        *(m + 5) = 0;
        if (v142)
        {
          operator delete(v142);
        }
      }

      else
      {
        *v134 = v168;
        v135 = (v134 + 1);
      }

      *(m + 4) = v135;

      if (++v96 == v167)
      {
        v149 = *(&v175 + 1);
        if (*(&v175 + 1))
        {
          v150 = **(*(&v175 + 1) + 24);
          v151 = *(v149 + 24);
          if ((*(v149 + 32) - v151) >= 9)
          {
            v152 = 1;
            do
            {
              v153 = *(v151 + 8 * v152);
              v154 = [v153 collisionPriority];
              if (v154 > [v150 collisionPriority])
              {
                v155 = v153;

                v150 = v155;
              }

              ++v152;
              v151 = *(v149 + 24);
            }

            while (v152 < (*(v149 + 32) - v151) >> 3);
          }

          [v150 mercatorPoint];
          [v150 routeOffset];
          [v150 routeOffsetInMeters];
          [v150 facingAzimuth];
          operator new();
        }

LABEL_268:
        md::LabelFeatureStyler::restyleFeatures(*(*this + 296), this + 144);
        v156 = *this;
        *(v156 + 3034) = 1;
        v157 = atomic_load((v156 + 3053));
        if (v157)
        {
          v158 = *(v156 + 136);
          if (v158)
          {
            v159 = *(v158 + 56);
            if (v159)
            {
              std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v159, v156, 9);
            }
          }
        }

        std::__hash_table<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,std::equal_to<int>,std::hash<int>,true>,geo::allocator_adapter<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,mdm::zone_mallocator>>::__deallocate_node(*(&v175 + 1));
        v161 = v173;
        v173 = 0;
        if (v161)
        {
          v162 = mdm::zone_mallocator::instance(v160);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,void *> *> *>(v162, v161);
        }

        goto LABEL_274;
      }
    }

    v110 = v100 < 3 || (v100 & (v100 - 1)) != 0;
    v111 = v110 | (2 * v100);
    v112 = vcvtps_u32_f32(v109 / v178);
    if (v111 <= v112)
    {
      v113 = v112;
    }

    else
    {
      v113 = v111;
    }

    if (v113 == 1)
    {
      v113 = 2;
    }

    else if ((v113 & (v113 - 1)) != 0)
    {
      prime = std::__next_prime(v113);
      v113 = prime;
    }

    v100 = v174;
    if (v113 > v174)
    {
      goto LABEL_187;
    }

    if (v113 < v174)
    {
      prime = vcvtps_u32_f32(v177 / v178);
      if (v174 < 3 || (v125 = vcnt_s8(v174), v125.i16[0] = vaddlv_u8(v125), v125.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v126 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v126;
        }
      }

      if (v113 <= prime)
      {
        v113 = prime;
      }

      if (v113 >= v100)
      {
        v100 = v174;
      }

      else
      {
        if (v113)
        {
LABEL_187:
          v114 = mdm::zone_mallocator::instance(prime);
          v115 = pthread_rwlock_rdlock((v114 + 32));
          if (v115)
          {
            geo::read_write_lock::logFailure(v115, "read lock", v116);
          }

          v117 = malloc_type_zone_malloc(*v114, 8 * v113, 0x2004093837F09uLL);
          atomic_fetch_add((v114 + 24), 1u);
          geo::read_write_lock::unlock((v114 + 32));
          v119 = v173;
          v173 = v117;
          if (v119)
          {
            v120 = mdm::zone_mallocator::instance(v118);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,void *> *> *>(v120, v119);
          }

          v121 = 0;
          v174 = v113;
          do
          {
            v173[v121++] = 0;
          }

          while (v113 != v121);
          v122 = *(&v175 + 1);
          if (*(&v175 + 1))
          {
            v123 = *(*(&v175 + 1) + 8);
            v124 = vcnt_s8(v113);
            v124.i16[0] = vaddlv_u8(v124);
            if (v124.u32[0] > 1uLL)
            {
              if (v123 >= v113)
              {
                v123 %= v113;
              }
            }

            else
            {
              v123 &= v113 - 1;
            }

            v173[v123] = &v175 + 8;
            for (n = *v122; n; v123 = v128)
            {
              v128 = n[1];
              if (v124.u32[0] > 1uLL)
              {
                if (v128 >= v113)
                {
                  v128 %= v113;
                }
              }

              else
              {
                v128 &= v113 - 1;
              }

              if (v128 != v123)
              {
                v129 = v173;
                if (!v173[v128])
                {
                  v173[v128] = v122;
                  goto LABEL_213;
                }

                *v122 = *n;
                *n = *v129[v128];
                *v129[v128] = n;
                n = v122;
              }

              v128 = v123;
LABEL_213:
              v122 = n;
              n = *n;
            }
          }

          v100 = v113;
          goto LABEL_217;
        }

        v147 = v173;
        v173 = 0;
        if (v147)
        {
          v148 = mdm::zone_mallocator::instance(prime);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,void *> *> *>(v148, v147);
        }

        v100 = 0;
        v174 = 0;
      }
    }

LABEL_217:
    if ((v100 & (v100 - 1)) != 0)
    {
      if (v100 <= v99)
      {
        v2 = v99 % v100;
      }

      else
      {
        v2 = v99;
      }
    }

    else
    {
      v2 = (v100 - 1) & v99;
    }

    goto LABEL_222;
  }

  if (v42 == v41)
  {
    goto LABEL_66;
  }

  do
  {
    v44 = *v42;
    v45 = md::TrafficFeatureHash::operator()(v44);
    v46 = *(this + 184);
    if (!*&v46)
    {
      goto LABEL_147;
    }

    v47 = vcnt_s8(v46);
    v47.i16[0] = vaddlv_u8(v47);
    if (v47.u32[0] > 1uLL)
    {
      v48 = v45;
      if (v45 >= *&v46)
      {
        v48 = v45 % *&v46;
      }
    }

    else
    {
      v48 = (*&v46 - 1) & v45;
    }

    v49 = *(*(this + 22) + 8 * v48);
    if (!v49 || (v50 = *v49) == 0)
    {
LABEL_147:

      v43 = *(this + 27);
      goto LABEL_148;
    }

    while (1)
    {
      v51 = v50[1];
      if (v45 == v51)
      {
        break;
      }

      if (v47.u32[0] > 1uLL)
      {
        if (v51 >= *&v46)
        {
          v51 %= *&v46;
        }
      }

      else
      {
        v51 &= *&v46 - 1;
      }

      if (v51 != v48)
      {
        goto LABEL_147;
      }

LABEL_62:
      v50 = *v50;
      if (!v50)
      {
        goto LABEL_147;
      }
    }

    if (v50[2] != v44)
    {
      goto LABEL_62;
    }

    ++v42;
  }

  while (v42 != v41);
  v42 = *(this + 6);
  v41 = *(this + 7);
LABEL_66:
  if (v42 != v41)
  {
    v164 = (this + 200);
    v165 = v41;
    while (1)
    {
      v52 = *v42;
      v53 = *v42;
      v173 = v53;
      v54 = std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::find<VKTrafficFeature * {__strong}>(this + 22, &v173);
      if (v54)
      {
        break;
      }

LABEL_145:

      if (++v42 == v41)
      {
        goto LABEL_274;
      }
    }

    v55 = v53;
    v166 = v54[2];
    if (v55 != v166)
    {
      v56 = v54[3];
      v57 = v55;
      v58 = v56[37];
      if (v56[38] != v58)
      {
        v41 = 0;
        while (*(v58 + 8 * v41) != v57)
        {
          if ([v57 isEqual:?])
          {
            objc_storeStrong((v56[37] + 8 * v41), v52);
            v59 = v56[33];
            v60 = v57;
            v61 = v60;
            if (v60)
            {
              v62 = v60;
            }

            else
            {
              v62 = 0;
            }

            v63 = v62;
            v64 = v59 + 24 * v41;
            v65 = *(v64 + 8);
            *(v64 + 8) = v61;

            break;
          }

          ++v41;
          v58 = v56[37];
          if (v41 >= (v56[38] - v58) >> 3)
          {
            break;
          }
        }
      }

      v66 = *(this + 184);
      v67 = v54[1];
      v68 = vcnt_s8(v66);
      v68.i16[0] = vaddlv_u8(v68);
      if (v68.u32[0] > 1uLL)
      {
        if (v67 >= *&v66)
        {
          v67 %= *&v66;
        }
      }

      else
      {
        v67 &= *&v66 - 1;
      }

      v69 = *(this + 22);
      v70 = *(v69 + 8 * v67);
      do
      {
        v71 = v70;
        v70 = *v70;
      }

      while (v70 != v54);
      if (v71 == v164)
      {
        goto LABEL_97;
      }

      v72 = v71[1];
      if (v68.u32[0] > 1uLL)
      {
        if (v72 >= *&v66)
        {
          v72 %= *&v66;
        }
      }

      else
      {
        v72 &= *&v66 - 1;
      }

      if (v72 != v67)
      {
LABEL_97:
        if (!*v54)
        {
          goto LABEL_98;
        }

        v73 = *(*v54 + 1);
        if (v68.u32[0] > 1uLL)
        {
          if (v73 >= *&v66)
          {
            v73 %= *&v66;
          }
        }

        else
        {
          v73 &= *&v66 - 1;
        }

        if (v73 != v67)
        {
LABEL_98:
          *(v69 + 8 * v67) = 0;
        }
      }

      v74 = *v54;
      if (*v54)
      {
        v75 = v74[1];
        if (v68.u32[0] > 1uLL)
        {
          if (v75 >= *&v66)
          {
            v75 %= *&v66;
          }
        }

        else
        {
          v75 &= *&v66 - 1;
        }

        if (v75 != v67)
        {
          *(*(this + 22) + 8 * v75) = v71;
          v74 = *v54;
        }
      }

      *v71 = v74;
      *v54 = 0;
      --*(this + 27);
      std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v54);
      v76 = md::TrafficFeatureHash::operator()(v57);
      v77 = v76;
      v78 = *(this + 23);
      if (v78)
      {
        v79 = vcnt_s8(v78);
        v79.i16[0] = vaddlv_u8(v79);
        if (v79.u32[0] > 1uLL)
        {
          v41 = v76;
          if (v76 >= v78)
          {
            v41 = v76 % v78;
          }
        }

        else
        {
          v41 = (v78 - 1) & v76;
        }

        v80 = *(*(this + 22) + 8 * v41);
        if (v80)
        {
          for (ii = *v80; ii; ii = *ii)
          {
            v82 = ii[1];
            if (v82 == v76)
            {
              if (ii[2] == v57)
              {
                goto LABEL_144;
              }
            }

            else
            {
              if (v79.u32[0] > 1uLL)
              {
                if (v82 >= v78)
                {
                  v82 %= v78;
                }
              }

              else
              {
                v82 &= v78 - 1;
              }

              if (v82 != v41)
              {
                break;
              }
            }
          }
        }
      }

      v83 = mdm::zone_mallocator::instance(v76);
      v84 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *>>(v83);
      *v84 = 0;
      v84[1] = v77;
      v84[2] = v57;
      v84[3] = v56;
      v85 = (*(this + 27) + 1);
      v86 = *(this + 56);
      if (!v78 || (v86 * v78) < v85)
      {
        v87 = (v78 & (v78 - 1)) != 0;
        if (v78 < 3)
        {
          v87 = 1;
        }

        v88 = v87 | (2 * v78);
        v89 = vcvtps_u32_f32(v85 / v86);
        if (v88 <= v89)
        {
          v90 = v89;
        }

        else
        {
          v90 = v88;
        }

        std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::__rehash<true>((this + 176), v90);
        v78 = *(this + 23);
        if ((v78 & (v78 - 1)) != 0)
        {
          if (v77 >= v78)
          {
            v41 = v77 % v78;
          }

          else
          {
            v41 = v77;
          }
        }

        else
        {
          v41 = (v78 - 1) & v77;
        }
      }

      v91 = *(this + 22);
      v92 = *(v91 + 8 * v41);
      if (v92)
      {
        *v84 = *v92;
        goto LABEL_142;
      }

      *v84 = *v164;
      *v164 = v84;
      *(v91 + 8 * v41) = v164;
      if (*v84)
      {
        v93 = *(*v84 + 8);
        if ((v78 & (v78 - 1)) != 0)
        {
          if (v93 >= v78)
          {
            v93 %= v78;
          }
        }

        else
        {
          v93 &= v78 - 1;
        }

        v92 = (*(this + 22) + 8 * v93);
LABEL_142:
        *v92 = v84;
      }

      ++*(this + 27);
    }

LABEL_144:

    v41 = v165;
    goto LABEL_145;
  }

LABEL_274:
}

void std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,false>(id *a1, void **a2, uint64_t a3, char a4)
{
LABEL_1:
  v6 = a2;
  v7 = a2 - 1;
  while (1)
  {
    v8 = a1;
    v9 = v6 - a1;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a1 + 1, v7);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a1 + 1, a1 + 2, v7);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a1 + 1, a1 + 2, a1 + 3, v7);
          return;
      }

      goto LABEL_9;
    }

    if (v9 < 2)
    {
      return;
    }

    v6 = a2;
    if (v9 == 2)
    {
      break;
    }

LABEL_9:
    if (v9 <= 23)
    {
      v98 = a1 + 1;
      v99 = a1 == v6 || v98 == v6;
      v100 = v99;
      if ((a4 & 1) == 0)
      {
        if ((v100 & 1) == 0)
        {
          while (1)
          {
            v201 = v98;
            v202 = v8[1];
            v203 = *v8;
            v204 = [v202 routeOffset];
            v205 = a2;
            v206 = [v203 routeOffset];
            if (v204 < v206)
            {
              break;
            }

            if (v204 == v206 && *(&v204 + 1) < *(&v206 + 1))
            {
              goto LABEL_254;
            }

LABEL_263:
            v98 = v201 + 1;
            v8 = v201;
            if (v201 + 1 == v205)
            {
              return;
            }
          }

LABEL_254:
          v208 = 0;
          v209 = *v201;
          *v201 = 0;
          for (i = v8; ; v8 = i)
          {
            v211 = *v8;
            *v8 = 0;
            v8[1] = v211;

            v212 = *--i;
            v213 = v212;
            v214 = [v209 routeOffset];
            v215 = [v213 routeOffset];
            if (v214 >= v215)
            {

              if (v214 != v215 || *(&v214 + 1) >= *(&v215 + 1))
              {
                v217 = *v8;
                *v8 = v209;

                v205 = a2;
                goto LABEL_263;
              }
            }

            else
            {
            }

            v208 = *v8;
          }
        }

        return;
      }

      if (v100)
      {
        return;
      }

      v101 = 0;
      v102 = a1;
      while (1)
      {
        v103 = v98;
        v104 = v102[1];
        v105 = *v102;
        v106 = [v104 routeOffset];
        v107 = [v105 routeOffset];
        if (v106 < v107)
        {
          break;
        }

        if (v106 == v107 && *(&v106 + 1) < *(&v107 + 1))
        {
          goto LABEL_150;
        }

LABEL_162:
        v98 = v103 + 1;
        v101 += 8;
        v102 = v103;
        if (v103 + 1 == a2)
        {
          return;
        }
      }

LABEL_150:
      v109 = *v102;
      v110 = v102[1];
      *v102 = 0;
      v102[1] = v109;
      v111 = a1;
      if (v102 != a1)
      {
        v112 = v101;
        do
        {
          v113 = (a1 + v112);
          v114 = *(a1 + v112 - 8);
          v115 = [v110 routeOffset];
          v116 = [v114 routeOffset];
          if (v115 >= v116)
          {

            if (v115 != v116 || *(&v115 + 1) >= *(&v116 + 1))
            {
              v111 = (a1 + v112);
              goto LABEL_161;
            }
          }

          else
          {
          }

          v118 = *(v113 - 1);
          v119 = *v113;
          *(v113 - 1) = 0;
          *v113 = v118;

          v112 -= 8;
        }

        while (v112);
        v111 = a1;
      }

LABEL_161:
      v120 = *v111;
      *v111 = v110;

      goto LABEL_162;
    }

    v221 = a1;
    if (!a3)
    {
      if (a1 == v6)
      {
        return;
      }

      v121 = (v9 - 2) >> 1;
      v219 = v121;
      v223 = v9;
      while (1)
      {
        v122 = v121;
        if (v219 < v121)
        {
          goto LABEL_203;
        }

        v123 = (2 * v121) | 1;
        v124 = &v221[v123];
        if (2 * v121 + 2 >= v9)
        {
          goto LABEL_176;
        }

        v125 = *v124;
        v126 = v124[1];
        v127 = [v125 routeOffset];
        v128 = [v126 routeOffset];
        if (v127 >= v128)
        {

          if (v127 != v128 || *(&v127 + 1) >= *(&v128 + 1))
          {
            goto LABEL_176;
          }
        }

        else
        {
        }

        ++v124;
        v123 = 2 * v122 + 2;
LABEL_176:
        v130 = &v221[v122];
        v131 = *v124;
        v132 = *v130;
        v133 = [v131 routeOffset];
        v134 = [v132 routeOffset];
        if (v133 < v134)
        {
          v9 = v223;
          goto LABEL_202;
        }

        v135 = v133 == v134 && *(&v133 + 1) < *(&v134 + 1);
        v9 = v223;
        if (!v135)
        {
          v136 = *v130;
          *v130 = 0;
          while (1)
          {
            v137 = v124;
            v138 = *v124;
            *v124 = 0;
            v139 = *v130;
            *v130 = v138;

            if (v219 < v123)
            {
              goto LABEL_201;
            }

            v140 = 2 * v123;
            v123 = (2 * v123) | 1;
            v124 = &v221[v123];
            v141 = v140 + 2;
            if (v140 + 2 < v9)
            {
              v142 = *v124;
              v143 = v124[1];
              v144 = [v142 routeOffset];
              v145 = [v143 routeOffset];
              if (v144 < v145)
              {

LABEL_192:
                ++v124;
                v123 = v141;
                goto LABEL_193;
              }

              if (v144 == v145 && *(&v144 + 1) < *(&v145 + 1))
              {
                goto LABEL_192;
              }
            }

LABEL_193:
            v147 = *v124;
            v148 = v136;
            v149 = [v147 routeOffset];
            v150 = [v148 routeOffset];
            if (v149 < v150)
            {

              v9 = v223;
LABEL_201:
              v132 = *v137;
              *v137 = v136;
LABEL_202:

              break;
            }

            v151 = v149 == v150 && *(&v149 + 1) < *(&v150 + 1);
            v130 = v137;
            v9 = v223;
            if (v151)
            {
              goto LABEL_201;
            }
          }
        }

LABEL_203:
        v121 = v122 - 1;
        if (!v122)
        {
          v152 = v221;
          while (1)
          {
            v153 = 0;
            v154 = *v152;
            *v152 = 0;
            v155 = (v9 - 2) >> 1;
            v156 = v152;
            v224 = v9;
            do
            {
              v157 = v156;
              v158 = &v156[v153];
              v156 = v158 + 1;
              v159 = 2 * v153;
              v153 = (2 * v153) | 1;
              v160 = v159 + 2;
              if (v159 + 2 >= v9)
              {
                goto LABEL_215;
              }

              v162 = v158[2];
              v161 = v158 + 2;
              v163 = *(v161 - 1);
              v164 = v162;
              v165 = [v163 routeOffset];
              v166 = [v164 routeOffset];
              if (v165 < v166)
              {

                v9 = v224;
LABEL_214:
                v156 = v161;
                v153 = v160;
                goto LABEL_215;
              }

              v167 = v165 == v166 && *(&v165 + 1) < *(&v166 + 1);
              v9 = v224;
              if (v167)
              {
                goto LABEL_214;
              }

LABEL_215:
              v168 = *v156;
              *v156 = 0;
              v169 = *v157;
              *v157 = v168;
            }

            while (v153 <= v155);
            v170 = a2 - 1;
            v99 = v156 == --a2;
            if (v99)
            {
              v182 = *v156;
              *v156 = v154;
              v152 = v221;
LABEL_237:

              goto LABEL_238;
            }

            v171 = *v170;
            *v170 = 0;
            v172 = *v156;
            *v156 = v171;

            v173 = *v170;
            *v170 = v154;

            v152 = v221;
            v174 = (v156 - v221 + 8) >> 3;
            v175 = v174 - 2;
            if (v174 >= 2)
            {
              v176 = v175 >> 1;
              v177 = &v221[v175 >> 1];
              v178 = *v177;
              v179 = *v156;
              v180 = [v178 routeOffset];
              v181 = [v179 routeOffset];
              if (v180 < v181)
              {

                v9 = v224;
                goto LABEL_226;
              }

              v183 = v180 == v181 && *(&v180 + 1) < *(&v181 + 1);
              v9 = v224;
              if (v183)
              {
LABEL_226:
                v184 = *v156;
                *v156 = 0;
                v185 = *v177;
                *v177 = 0;
                v186 = *v156;
                *v156 = v185;

                if (v175 >= 2)
                {
                  while (1)
                  {
                    v188 = v176 - 1;
                    v176 = (v176 - 1) >> 1;
                    v187 = &v221[v176];
                    v189 = *v187;
                    v190 = v184;
                    v191 = [v189 routeOffset];
                    v192 = [v190 routeOffset];
                    if (v191 >= v192)
                    {

                      v193 = v191 == v192 && *(&v191 + 1) < *(&v192 + 1);
                      v9 = v224;
                      if (!v193)
                      {
                        break;
                      }
                    }

                    else
                    {

                      v9 = v224;
                    }

                    v194 = *v187;
                    *v187 = 0;
                    v195 = *v177;
                    *v177 = v194;

                    v177 = &v221[v176];
                    if (v188 < 2)
                    {
                      goto LABEL_236;
                    }
                  }
                }

                v187 = v177;
LABEL_236:
                v182 = *v187;
                *v187 = v184;
                goto LABEL_237;
              }
            }

LABEL_238:
            if (v9-- <= 2)
            {
              return;
            }
          }
        }
      }
    }

    v10 = v9 >> 1;
    v11 = v9;
    v12 = &a1[v9 >> 1];
    if (v11 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(v12, a1, v7);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, v12, v7);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1 + 1, v12 - 1, a2 - 2);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1 + 2, &a1[v10 + 1], a2 - 3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(v12 - 1, v12, &a1[v10 + 1]);
      v13 = *a1;
      *a1 = 0;
      v14 = *v12;
      *v12 = 0;
      v15 = *a1;
      *a1 = v14;

      v16 = *v12;
      *v12 = v13;
    }

    --a3;
    if (a4)
    {
      goto LABEL_19;
    }

    v17 = *(a1 - 1);
    v18 = *a1;
    v19 = [v17 routeOffset];
    v20 = [v18 routeOffset];
    if (v19 >= v20)
    {

      if (v19 == v20 && *(&v19 + 1) < *(&v20 + 1))
      {
        goto LABEL_19;
      }

      v60 = *a1;
      *a1 = 0;
      v61 = *v7;
      v62 = [v60 routeOffset];
      v63 = [v61 routeOffset];
      if (v62 < v63)
      {

LABEL_74:
        ++a1;
        while (1)
        {
          v64 = *a1;
          v65 = [v60 routeOffset];
          v66 = [v64 routeOffset];
          if (v65 < v66)
          {
            break;
          }

          ++a1;
          if (v65 == v66 && *(&v65 + 1) < *(&v66 + 1))
          {
            --a1;
            goto LABEL_92;
          }
        }

LABEL_91:

        goto LABEL_92;
      }

      if (v62 == v63 && *(&v62 + 1) < *(&v63 + 1))
      {
        goto LABEL_74;
      }

      v68 = a1 + 1;
      do
      {
        a1 = v68;
        if (v68 >= v6)
        {
          break;
        }

        v64 = *v68;
        v69 = [v60 routeOffset];
        v70 = [v64 routeOffset];
        if (v69 < v70)
        {
          goto LABEL_91;
        }

        v68 = a1 + 1;
      }

      while (v69 != v70 || *(&v69 + 1) >= *(&v70 + 1));
LABEL_92:
      j = v6;
      if (a1 < v6)
      {
        for (j = v7; ; --j)
        {
          v73 = *j;
          v74 = [v60 routeOffset];
          v75 = [v73 routeOffset];
          if (v74 >= v75)
          {

            if (v74 != v75 || *(&v74 + 1) >= *(&v75 + 1))
            {
              break;
            }
          }

          else
          {
          }
        }
      }

LABEL_117:
      if (a1 < j)
      {
        v77 = *a1;
        *a1 = 0;
        v78 = *j;
        *j = 0;
        v79 = *a1;
        *a1++ = v78;

        v80 = *j;
        *j = v77;

        do
        {
          v81 = *a1;
          v82 = [v60 routeOffset];
          v83 = [v81 routeOffset];
          if (v82 < v83)
          {
            goto LABEL_110;
          }

          ++a1;
        }

        while (v82 != v83 || *(&v82 + 1) >= *(&v83 + 1));
        --a1;
        while (1)
        {
          v85 = j - 1;
          while (1)
          {
            j = v85;
            v81 = *v85;
            v86 = [v60 routeOffset];
            v87 = [v81 routeOffset];
            if (v86 < v87)
            {
              break;
            }

            v85 = j - 1;
            if (v86 != v87 || *(&v86 + 1) >= *(&v87 + 1))
            {
              goto LABEL_117;
            }
          }

LABEL_110:
        }
      }

      v89 = a1 - 1;
      if (a1 - 1 != v8)
      {
        v90 = *v89;
        *v89 = 0;
        v91 = *v8;
        *v8 = v90;
      }

      v92 = *v89;
      *v89 = v60;

      a4 = 0;
      v6 = a2;
    }

    else
    {

LABEL_19:
      v21 = *a1;
      *a1 = 0;
      for (k = a1 + 1; ; ++k)
      {
        v24 = k - 1;
        v23 = *k;
        v25 = v21;
        v26 = [v23 routeOffset];
        v27 = [v25 routeOffset];
        if (v26 < v27)
        {

          continue;
        }

        if (v26 != v27 || *(&v26 + 1) >= *(&v27 + 1))
        {
          break;
        }
      }

      v222 = a3;
      v29 = v7;
      if (v24 == a1)
      {
        v29 = v7;
        while (k < v29 + 1)
        {
          v35 = *v29;
          v36 = v25;
          v37 = [v35 routeOffset];
          v38 = [v36 routeOffset];
          if (v37 < v38)
          {
            goto LABEL_42;
          }

          --v29;
          if (v37 == v38 && *(&v37 + 1) < *(&v38 + 1))
          {
LABEL_41:
            ++v29;
            goto LABEL_44;
          }
        }

        ++v29;
      }

      else
      {
        while (1)
        {
          v30 = *v29;
          v31 = v25;
          v32 = [v30 routeOffset];
          v33 = [v31 routeOffset];
          if (v32 < v33)
          {
            break;
          }

          --v29;
          if (v32 == v33 && *(&v32 + 1) < *(&v33 + 1))
          {
            goto LABEL_41;
          }
        }

LABEL_42:
      }

LABEL_44:
      if (k < v29)
      {
        v39 = k;
        v40 = v29;
        do
        {
          v41 = *v39;
          *v39 = 0;
          v42 = *v40;
          *v40 = 0;
          v43 = *v39;
          *v39 = v42;

          v44 = *v40;
          *v40 = v41;
LABEL_47:

          v45 = v39 + 1;
          do
          {
            v39 = v45;
            v46 = *v45;
            v44 = v25;
            v47 = [v46 routeOffset];
            v48 = [v44 routeOffset];
            if (v47 < v48)
            {
              goto LABEL_47;
            }

            v45 = v39 + 1;
          }

          while (v47 == v48 && *(&v47 + 1) < *(&v48 + 1));
          v24 = v39 - 1;
          --v40;
          while (1)
          {
            v50 = *v40;
            v51 = v44;
            v52 = [v50 routeOffset];
            v53 = [v51 routeOffset];
            if (v52 < v53)
            {
              break;
            }

            --v40;
            if (v52 == v53 && *(&v52 + 1) < *(&v53 + 1))
            {
              ++v40;
              goto LABEL_62;
            }
          }

LABEL_62:
          ;
        }

        while (v39 < v40);
      }

      if (v24 != v221)
      {
        v55 = *v24;
        *v24 = 0;
        v56 = *v221;
        *v221 = v55;
      }

      v57 = *v24;
      *v24 = v25;

      v58 = k >= v29;
      v6 = a2;
      v7 = a2 - 1;
      a3 = v222;
      if (v58)
      {
        v59 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*>(v221, v24);
        a1 = v24 + 1;
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*>(v24 + 1, a2))
        {
          a2 = v24;
          a1 = v221;
          if (v59)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v59)
        {
          goto LABEL_69;
        }
      }

      else
      {
LABEL_69:
        std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,false>(v221, v24, v222, a4 & 1);
        a4 = 0;
        a1 = v24 + 1;
      }
    }
  }

  v93 = *v7;
  v94 = *a1;
  v95 = [v93 routeOffset];
  v96 = [v94 routeOffset];
  v97 = v96;
  if (v95 >= v96)
  {

    if (v95 == v97 && *(&v95 + 1) < *(&v97 + 1))
    {
      goto LABEL_243;
    }
  }

  else
  {

LABEL_243:
    v197 = *a1;
    *a1 = 0;
    v198 = *v7;
    *v7 = 0;
    v199 = *a1;
    *a1 = v198;

    v200 = *v7;
    *v7 = v197;
  }
}

void md::ScreenLabelFeatureSupport::setScreenLabelFeatures(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v4 = [v3 count];
  if (v4)
  {
    if (!(v4 >> 61))
    {
      v52 = &v48;
      std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v4);
    }

    goto LABEL_67;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v6)
  {
    v7 = *v45;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        v10 = v49;
        if (v49 >= v50)
        {
          v12 = v49 - v48;
          if ((v12 + 1) >> 61)
          {
            goto LABEL_67;
          }

          v13 = (v50 - v48) >> 2;
          if (v13 <= v12 + 1)
          {
            v13 = v12 + 1;
          }

          if (v50 - v48 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v13;
          }

          v52 = &v48;
          if (v14)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v14);
          }

          v15 = (8 * v12);
          v51[0] = 0;
          v51[1] = v15;
          v51[3] = 0;
          *v15 = v9;
          v51[2] = v15 + 1;
          std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(&v48, v51);
          v11 = v49;
          std::__split_buffer<GEOComposedRouteSection * {__strong}>::~__split_buffer(v51);
        }

        else
        {
          *v10 = v9;
          v11 = v10 + 1;
        }

        v49 = v11;
      }

      v6 = [v5 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v6);
  }

  v16 = 126 - 2 * __clz(v49 - v48);
  if (v49 == v48)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,false>(v48, v49, v17, 1);
  v18 = v48;
  v19 = v49;
  if (v48 != v49)
  {
    v20 = v48 + 1;
    while (v20 != v49)
    {
      v22 = v20 - 1;
      v21 = *(v20 - 1);
      v23 = *v20++;
      if (v21 == v23)
      {
        v24 = v22 + 2;
        if (v22 + 2 != v49)
        {
          do
          {
            v25 = *v24;
            if (*v22 != *v24)
            {
              *v24 = 0;
              v26 = v22[1];
              *++v22 = v25;
            }

            ++v24;
          }

          while (v24 != v19);
          v18 = v48;
          v19 = v49;
        }

        v27 = v22 + 1;
        goto LABEL_36;
      }
    }

LABEL_39:
    v27 = v19;
    goto LABEL_41;
  }

  v27 = v48;
LABEL_36:
  if (v27 == v19)
  {
    goto LABEL_39;
  }

  while (v19 != v27)
  {
    v28 = *--v19;
  }

  v49 = v27;
  v18 = v48;
LABEL_41:
  v29 = *(a1 + 40);
  v31 = *(a1 + 48);
  v30 = (a1 + 40);
  v32 = v27 - v18;
  v33 = v31 - v29;
  if (v27 - v18 != v31 - v29 || memcmp(v18, *(a1 + 40), v27 - v18))
  {
    if (v30 != &v48)
    {
      v34 = *(a1 + 56);
      if (v34 - v29 < v32)
      {
        if (v29)
        {
          v35 = v29;
          if (v31 != v29)
          {
            do
            {
              v36 = *--v31;
            }

            while (v31 != v29);
            v35 = *v30;
          }

          *(a1 + 48) = v29;
          operator delete(v35);
          v34 = 0;
          *v30 = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
        }

        v37 = v32 >> 3;
        if (!((v32 >> 3) >> 61))
        {
          if (v34 >> 2 > v37)
          {
            v37 = v34 >> 2;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            v38 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v37;
          }

          if (!(v38 >> 61))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v38);
          }
        }

LABEL_67:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v33 >= v32)
      {
        v40 = std::__copy_impl::operator()[abi:nn200100]<VKScreenLabelFeature * {__strong}*,VKScreenLabelFeature * {__strong}*,VKScreenLabelFeature * {__strong}*>(v18, v27, v29);
        for (j = *(a1 + 48); j != v40; --j)
        {
          v43 = *(j - 1);
        }
      }

      else
      {
        v39 = (v18 + v33);
        std::__copy_impl::operator()[abi:nn200100]<VKScreenLabelFeature * {__strong}*,VKScreenLabelFeature * {__strong}*,VKScreenLabelFeature * {__strong}*>(v18, v39, v29);
        v40 = *(a1 + 48);
        while (v39 != v27)
        {
          v41 = *v39++;
          *v40++ = v41;
        }
      }

      *(a1 + 48) = v40;
    }

    *(a1 + 88) = 1;
  }

  v51[0] = &v48;
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](v51);
}

void sub_1B28E5D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = &a20;
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&a23);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelManager::setScreenLabelFeatures(NSArray<VKScreenLabelFeature *> *)::$_0,std::allocator<md::LabelManager::setScreenLabelFeatures(NSArray<VKScreenLabelFeature *> *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(*(a1 + 8) + 168) + 64);
  return (*(*v2 + 88))(v2, v1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,false>(void **a1, void **a2, uint64_t a3, char a4)
{
LABEL_1:
  v113 = a2 - 1;
  v110 = a2 - 3;
  v111 = a2 - 2;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(v7, v7 + 1, v113);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(v7, v7 + 1, v7 + 2, v113);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(v7, v7 + 1, v7 + 2, v7 + 3, v113);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v49 = *v7;
        if (*v113 < *v7)
        {
          *v7 = 0;
          v50 = *v113;
          *v113 = 0;
          v51 = *v7;
          *v7 = v50;

          v52 = *v113;
          *v113 = v49;
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return;
      }

      v66 = v9 >> 1;
      v67 = v9 >> 1;
      do
      {
        v68 = v67;
        if (v66 >= v67)
        {
          v69 = (2 * v67) | 1;
          v70 = &a1[v69];
          if (2 * v68 + 2 >= v8)
          {
            v71 = *v70;
          }

          else
          {
            v71 = *v70;
            if (*v70 < v70[1])
            {
              v71 = v70[1];
              ++v70;
              v69 = 2 * v68 + 2;
            }
          }

          v72 = &a1[v68];
          v73 = *v72;
          if (v71 >= *v72)
          {
            *v72 = 0;
            v74 = *v70;
            do
            {
              v75 = v70;
              *v70 = 0;
              v76 = *v72;
              *v72 = v74;

              if (v66 < v69)
              {
                break;
              }

              v70 = &a1[(2 * v69) | 1];
              if (2 * v69 + 2 >= v8)
              {
                v74 = *v70;
                v69 = (2 * v69) | 1;
              }

              else
              {
                v74 = *v70;
                if (*v70 >= v70[1])
                {
                  v69 = (2 * v69) | 1;
                }

                else
                {
                  v74 = v70[1];
                  ++v70;
                  v69 = 2 * v69 + 2;
                }
              }

              v72 = v75;
            }

            while (v74 >= v73);
            v77 = *v75;
            *v75 = v73;
          }
        }

        v67 = v68 - 1;
      }

      while (v68);
      while (2)
      {
        v78 = a2;
        v79 = 0;
        v80 = *a1;
        *a1 = 0;
        v81 = a1;
        do
        {
          v82 = &v81[v79];
          v83 = v82 + 1;
          if (2 * v79 + 2 >= v8)
          {
            v84 = *v83;
            v79 = (2 * v79) | 1;
          }

          else
          {
            v86 = v82[2];
            v85 = v82 + 2;
            v84 = v86;
            v87 = *(v85 - 1);
            v88 = v87 >= v86;
            if (v87 < v86)
            {
              v83 = v85;
            }

            else
            {
              v84 = *(v85 - 1);
            }

            if (v88)
            {
              v79 = (2 * v79) | 1;
            }

            else
            {
              v79 = 2 * v79 + 2;
            }
          }

          *v83 = 0;
          v89 = *v81;
          *v81 = v84;

          v81 = v83;
        }

        while (v79 <= (v8 - 2) / 2);
        a2 = v78 - 1;
        if (v83 != v78 - 1)
        {
          v90 = *a2;
          *a2 = 0;
          v91 = *v83;
          *v83 = v90;

          v92 = *a2;
          *a2 = v80;

          v93 = (v83 - a1 + 8) >> 3;
          v94 = v93 < 2;
          v95 = v93 - 2;
          if (!v94)
          {
            v96 = v95 >> 1;
            v97 = &a1[v95 >> 1];
            v98 = *v83;
            if (*v97 < *v83)
            {
              v99 = v78 - 1;
              *v83 = 0;
              v100 = *v97;
              do
              {
                v101 = v97;
                *v97 = 0;
                v102 = *v83;
                *v83 = v100;

                if (!v96)
                {
                  break;
                }

                v96 = (v96 - 1) >> 1;
                v97 = &a1[v96];
                v100 = *v97;
                v83 = v101;
              }

              while (*v97 < v98);
              v103 = *v101;
              *v101 = v98;
              a2 = v99;
LABEL_124:
            }
          }

          v94 = v8-- <= 2;
          if (v94)
          {
            return;
          }

          continue;
        }

        break;
      }

      v103 = *v83;
      *v83 = v80;
      goto LABEL_124;
    }

    v10 = v8 >> 1;
    v11 = &v7[v8 >> 1];
    if (v8 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(&v7[v8 >> 1], v7, v113);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(v7, &v7[v8 >> 1], v113);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(v7 + 1, v11 - 1, v111);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(v7 + 2, &v7[v10 + 1], v110);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,0>(v11 - 1, &v7[v8 >> 1], &v7[v10 + 1]);
      v12 = *v7;
      *v7 = 0;
      v13 = *v11;
      *v11 = 0;
      v14 = *v7;
      *v7 = v13;

      v15 = *v11;
      *v11 = v12;
    }

    --a3;
    v16 = *v7;
    if ((a4 & 1) != 0 || *(v7 - 1) < v16)
    {
      *v7 = 0;
      v17 = v7;
      do
      {
        v18 = v17;
        v20 = v17[1];
        ++v17;
        v19 = v20;
      }

      while (v20 < v16);
      v21 = a2;
      if (v18 == a1)
      {
        do
        {
          if (v17 >= a2)
          {
            break;
          }

          v23 = *--a2;
        }

        while (v23 >= v16);
      }

      else
      {
        do
        {
          v22 = *--a2;
        }

        while (v22 >= v16);
      }

      if (v17 < a2)
      {
        v24 = v17;
        v25 = a2;
        do
        {
          *v24 = 0;
          v26 = *v25;
          *v25 = 0;
          v27 = *v24;
          *v24 = v26;

          v28 = *v25;
          *v25 = v19;

          do
          {
            v18 = v24;
            v29 = v24[1];
            ++v24;
            v19 = v29;
          }

          while (v29 < v16);
          do
          {
            v30 = *--v25;
          }

          while (v30 >= v16);
        }

        while (v24 < v25);
      }

      if (v18 != a1)
      {
        v31 = *v18;
        *v18 = 0;
        v32 = *a1;
        *a1 = v31;
      }

      v33 = *v18;
      *v18 = v16;

      v88 = v17 >= a2;
      a2 = v21;
      if (!v88)
      {
        goto LABEL_35;
      }

      v34 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*>(a1, v18);
      v7 = v18 + 1;
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*>(v18 + 1, v21))
      {
        a2 = v18;
        if (v34)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v34)
      {
LABEL_35:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,GEOComposedRoute * {__strong}*,false>(a1, v18, a3, a4 & 1);
        a4 = 0;
        v7 = v18 + 1;
      }
    }

    else
    {
      *v7 = 0;
      if (v16 >= *v113)
      {
        v36 = v7 + 1;
        do
        {
          v7 = v36;
          if (v36 >= a2)
          {
            break;
          }

          ++v36;
        }

        while (v16 >= *v7);
      }

      else
      {
        do
        {
          v35 = v7[1];
          ++v7;
        }

        while (v16 >= v35);
      }

      v37 = a2;
      if (v7 < a2)
      {
        v37 = a2;
        do
        {
          v38 = *--v37;
        }

        while (v16 < v38);
      }

      if (v7 < v37)
      {
        v39 = *v7;
        do
        {
          *v7 = 0;
          v40 = *v37;
          *v37 = 0;
          v41 = *v7;
          *v7 = v40;

          v42 = *v37;
          *v37 = v39;

          do
          {
            v43 = v7[1];
            ++v7;
            v39 = v43;
          }

          while (v16 >= v43);
          do
          {
            v44 = *--v37;
          }

          while (v16 < v44);
        }

        while (v7 < v37);
      }

      v45 = v7 - 1;
      if (v7 - 1 != a1)
      {
        v46 = *v45;
        *v45 = 0;
        v47 = *a1;
        *a1 = v46;
      }

      v48 = *v45;
      *v45 = v16;

      a4 = 0;
    }
  }

  v53 = v7 + 1;
  v55 = v7 == a2 || v53 == a2;
  if (a4)
  {
    if (!v55)
    {
      v56 = 0;
      v57 = v7;
      do
      {
        v58 = *v57;
        v59 = v57[1];
        v57 = v53;
        if (v59 < v58)
        {
          v60 = a2;
          *v53 = 0;
          v61 = v56;
          while (1)
          {
            v62 = (a1 + v61);
            v63 = *(a1 + v61 + 8);
            *v62 = 0;
            v62[1] = v58;

            if (!v61)
            {
              break;
            }

            v58 = *(v62 - 1);
            v61 -= 8;
            if (v59 >= v58)
            {
              v64 = (a1 + v61 + 8);
              goto LABEL_84;
            }
          }

          v64 = a1;
LABEL_84:
          v65 = *v64;
          *v64 = v59;

          a2 = v60;
        }

        v53 = v57 + 1;
        v56 += 8;
      }

      while (v57 + 1 != a2);
    }
  }

  else if (!v55)
  {
    do
    {
      v104 = *a1;
      v105 = a1[1];
      a1 = v53;
      if (v105 < v104)
      {
        *v53 = 0;
        v106 = v53;
        do
        {
          v107 = v106;
          *--v106 = 0;
          v108 = *v107;
          *v107 = v104;

          v104 = *(v107 - 2);
        }

        while (v105 < v104);
        v109 = *v106;
        *v106 = v105;
      }

      v53 = a1 + 1;
    }

    while (a1 + 1 != a2);
  }
}

void std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__func<md::LabelManager::setShieldSize(grl::SizeGroup)::$_0,std::allocator<md::LabelManager::setShieldSize(grl::SizeGroup)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != *(result + 3392))
  {
    *(result + 3392) = v3;
    return md::LabelManager::queueRestyle(result, 0);
  }

  return result;
}

uint64_t std::__function::__func<md::LabelManager::setShieldIdiom(VKShieldIdiom)::$_0,std::allocator<md::LabelManager::setShieldIdiom(VKShieldIdiom)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != *(result + 3384))
  {
    *(result + 3384) = v3;
    return md::LabelManager::queueRestyle(result, 0);
  }

  return result;
}

void std::__function::__func<md::LabelManager::setLocalizeLabels(BOOL)::$_0,std::allocator<md::LabelManager::setLocalizeLabels(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 336);
  v4 = *(a1 + 16);
  std::mutex::lock(v3);
  if (*(v3 + 156) == v4)
  {

    std::mutex::unlock(v3);
  }

  else
  {
    *(v3 + 156) = v4;
    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::clear(v3 + 240);
    std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear((v3 + 208));
    *(v3 + 308) = 0;
    *(v3 + 300) = 0;
    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::clear(v3 + 352);
    std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear((v3 + 320));
    *(v3 + 420) = 0;
    *(v3 + 412) = 0;
    v5 = *(v3 + 432);
    v6 = *(v3 + 156);
    if (*(v5 + 92) != v6)
    {
      *(v5 + 92) = v6;
      md::LabelStyle::invalidateCachedProperties(v5);
    }

    std::mutex::unlock(v3);
    atomic_store(*(a1 + 16), (v2 + 3426));
    *(v2 + 3034) = 1;
    md::LabelManager::clearScene(v2, 2);
    v7 = *(v2 + 288);
    v8 = *(a1 + 16);
    std::mutex::lock(v7);
    v9 = &v7[5].__m_.__opaque[40];
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      v10 = *(v9 + 2);
      if (v10)
      {
        v11 = v10 + 8;
      }

      else
      {
        v11 = 0;
      }

      (*(**(v11 + 8) + 32))(*(v11 + 8), *(v11 + 56), v8);
    }

    v12 = &v7[1].__m_.__opaque[16];
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      v13 = *(v12 + 2);
      if (v13)
      {
        v14 = v13 + 8;
      }

      else
      {
        v14 = 0;
      }

      (*(**(v14 + 8) + 32))(*(v14 + 8), *(v14 + 56), v8);
    }

    opaque = v7[3].__m_.__opaque;
    while (1)
    {
      opaque = *opaque;
      if (!opaque)
      {
        break;
      }

      v16 = *(opaque + 2);
      if (v16)
      {
        v17 = v16 + 8;
      }

      else
      {
        v17 = 0;
      }

      (*(**(v17 + 8) + 32))(*(v17 + 8), *(v17 + 56), v8);
    }

    v18 = &v7[6].__m_.__opaque[32];
    while (1)
    {
      v18 = *v18;
      if (!v18)
      {
        break;
      }

      v19 = *(v18 + 2);
      if (v19)
      {
        v20 = v19 + 8;
      }

      else
      {
        v20 = 0;
      }

      (*(**(v20 + 8) + 32))(*(v20 + 8), *(v20 + 56), v8);
    }

    std::mutex::unlock(v7);
    v21 = *(v2 + 296);
    v22 = v21[3];
    v23 = __CFADD__(v22, 1);
    v24 = v22 + 1;
    v21[3] = v24;
    if (v23)
    {
      *(v21 + 3) = 0x100000002;
      v24 = 2;
    }

    v21[4] = v24 - 1;
    atomic_store(v24, v21 + 2);
    v25 = *(v2 + 168);
    v26 = *v25;
    v27 = v25[1];
    while (v26 != v27)
    {
      v28 = *v26++;
      (*(*v28 + 16))(v28);
    }
  }
}

void md::LabelStyle::invalidateCachedProperties(md::LabelStyle *this)
{
  v1 = 0;
  v2 = 0;
  *(this + 136) = -1;
  *(this + 125) = 0;
  v11 = 0u;
  v12 = 0u;
  v3 = &v11;
  v4 = this + 408;
  do
  {
    v5 = v1;
    v6 = &v4[16 * v2];
    v7 = *v3;
    *v3 = 0;
    *(v3 + 1) = 0;
    v8 = *(v6 + 1);
    *v6 = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v1 = 1;
    v3 = &v12;
    v2 = 1;
  }

  while ((v5 & 1) == 0);
  for (i = 24; i != -8; i -= 16)
  {
    v10 = *(&v11 + i);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }
  }
}

void std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__tree<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::__map_value_compare<geo::c3mm::C3mmFileIndex,std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::less<geo::c3mm::C3mmFileIndex>,true>,std::allocator<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::__map_value_compare<geo::c3mm::C3mmFileIndex,std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::less<geo::c3mm::C3mmFileIndex>,true>,std::allocator<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>>>::destroy(*a1);
    std::__tree<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::__map_value_compare<geo::c3mm::C3mmFileIndex,std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::less<geo::c3mm::C3mmFileIndex>,true>,std::allocator<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>>>::destroy(a1[1]);
    v2 = a1[7];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    operator delete(a1);
  }
}

void md::LabelCustomFeatureSupport::localizeLabelsDidChange(std::__shared_weak_count *this)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(&v3, 0, sizeof(v3));
  md::LabelCustomFeatureSupport::populateAllLabelFeatures(this, &v3);
  if (v3.__vftable != v3.__shared_owners_)
  {
    md::LabelFeatureStyler::updateTextAndStyleForExternalFeatures(*(this->__shared_weak_owners_ + 296), &v3);
  }

  v2 = &v3;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelFeature>>(v5, v3);
  }
}

std::__shared_weak_count *md::LabelCustomFeatureSupport::populateAllLabelFeatures(std::__shared_weak_count *result, std::__shared_weak_count *a2)
{
  v2 = result[3].__vftable;
  p_shared_owners = &result[3].__shared_owners_;
  if (v2 != &result[3].__shared_owners_)
  {
    do
    {
      get_deleter = v2[6].__get_deleter;
      if (get_deleter)
      {
        result = std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::reserve(a2, get_deleter + ((a2->__shared_owners_ - a2->__vftable) >> 4));
        v6 = v2[6].~__shared_weak_count;
        if (v6 != &v2[6].~__shared_weak_count_0)
        {
          do
          {
            result = std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, (v6 + 5));
            v7 = v6[1];
            if (v7)
            {
              do
              {
                v8 = v7;
                v7 = *v7;
              }

              while (v7);
            }

            else
            {
              do
              {
                v8 = v6[2];
                v9 = *v8 == v6;
                v6 = v8;
              }

              while (!v9);
            }

            v6 = v8;
          }

          while (v8 != &v2[6].~__shared_weak_count_0);
        }
      }

      v10 = v2->~__shared_weak_count_0;
      if (v10)
      {
        do
        {
          on_zero_shared = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          on_zero_shared = v2->__on_zero_shared;
          v9 = *on_zero_shared == v2;
          v2 = on_zero_shared;
        }

        while (!v9);
      }

      v2 = on_zero_shared;
    }

    while (on_zero_shared != p_shared_owners);
  }

  return result;
}

void md::LabelTransitSupport::localizeLabelsDidChange(md::LabelTransitSupport *this)
{
  if (*(this + 16) != *(this + 17))
  {
    md::LabelFeatureStyler::updateTextAndStyleForExternalFeatures(*(*(this + 2) + 296), this + 16);
  }

  if (*(this + 30) != *(this + 31))
  {
    v2 = *(*(this + 2) + 296);
    v3 = atomic_load((*v2 + 3426));
    v4 = *(this + 31) - *(this + 30);
    if (v4)
    {
      v5 = 0;
      v6 = v4 >> 4;
      if (v6 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      do
      {
        (*(**(*(this + 30) + v5) + 40))(*(*(this + 30) + v5), *(this + 27) + v5, v3 & 1);
        v5 += 16;
        --v7;
      }

      while (v7);
    }

    md::LabelFeatureStyler::styleExternalFeatures(v2, this + 30);
  }
}

uint64_t std::__function::__func<md::LabelManager::setLabelScaleFactor(gss::LabelScaleFactor)::$_0,std::allocator<md::LabelManager::setLabelScaleFactor(gss::LabelScaleFactor)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (*(v1 + 3400) != v2)
  {
    *(v1 + 3400) = v2;
    md::LabelManager::resolveLabelScaleFactor(v1);

    return md::LabelManager::queueRestyle(v1, 0);
  }

  return result;
}

void std::__function::__func<md::LabelManager::setShowsPointsOfInterest(BOOL)::$_0,std::allocator<md::LabelManager::setShowsPointsOfInterest(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != *(v2 + 3025))
  {
    *(v2 + 3025) = v3;
    md::LabelManager::clearScene(v2, 0);
  }
}

void std::__function::__func<md::LabelManager::setShowsPointLabels(BOOL)::$_0,std::allocator<md::LabelManager::setShowsPointLabels(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2[3029])
  {
    v2[3029] = v3;
    if (v3 && v2[3027] == 1 && v2[3028] == 1 && v2[3030] == 1 && v2[3031] == 1)
    {
      v4 = v2[3032] ^ 1;
    }

    else
    {
      v4 = 1;
    }

    v2[3026] = v4 & 1;
    md::LabelManager::clearScene(v2, 0);
  }
}

void std::__function::__func<md::LabelManager::setShowsRoadLabels(BOOL)::$_0,std::allocator<md::LabelManager::setShowsRoadLabels(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2[3027])
  {
    v2[3027] = v3;
    if (v2[3029] == 1 && v3 && v2[3028] == 1 && v2[3030] == 1 && v2[3031] == 1)
    {
      v4 = v2[3032] ^ 1;
    }

    else
    {
      v4 = 1;
    }

    v2[3026] = v4 & 1;
    md::LabelManager::clearScene(v2, 0);
  }
}

void std::__function::__func<md::LabelManager::setShowsRoadShields(BOOL)::$_0,std::allocator<md::LabelManager::setShowsRoadShields(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2[3028])
  {
    v2[3028] = v3;
    if (v2[3029] == 1 && v2[3027] == 1 && v3 && v2[3030] == 1 && v2[3031] == 1)
    {
      v4 = v2[3032] ^ 1;
    }

    else
    {
      v4 = 1;
    }

    v2[3026] = v4 & 1;
    md::LabelManager::clearScene(v2, 0);
  }
}

void std::__function::__func<md::LabelManager::setShowsContourLabels(BOOL)::$_0,std::allocator<md::LabelManager::setShowsContourLabels(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2[3030] != v3)
  {
    v2[3030] = v3;
    if (v2[3029] == 1 && v2[3027] == 1 && v2[3028] == 1 && v3 && v2[3031] == 1)
    {
      v4 = v2[3032] ^ 1;
    }

    else
    {
      v4 = 1;
    }

    v2[3026] = v4 & 1;
    md::LabelManager::clearScene(v2, 0);
  }
}

void std::__function::__func<md::LabelManager::setShowsPhysicalFeatureLabels(BOOL)::$_0,std::allocator<md::LabelManager::setShowsPhysicalFeatureLabels(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2[3031] != v3)
  {
    v2[3031] = v3;
    if (v2[3029] == 1 && v2[3027] == 1 && v2[3028] == 1 && v2[3030] == 1 && v3)
    {
      v4 = v2[3032] ^ 1;
    }

    else
    {
      v4 = 1;
    }

    v2[3026] = v4 & 1;
    md::LabelManager::clearScene(v2, 0);
  }
}

void std::__function::__func<md::LabelManager::setShowsLabels(BOOL)::$_0,std::allocator<md::LabelManager::setShowsLabels(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2[3032] != v3)
  {
    v2[3032] = v3;
    if (v2[3029] == 1 && v2[3027] == 1 && v2[3028] == 1 && v2[3030] == 1)
    {
      v4 = v3 ^ 1;
      if (v2[3031] != 1)
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 1;
    }

    v2[3026] = v4;
    md::LabelManager::clearScene(v2, 0);
  }
}

void std::__function::__func<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0,std::allocator<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 != *(v2 + 3616))
  {
    v3 = a1[3];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    *(v2 + 3616) = v1;
    v4 = *(v2 + 3624);
    *(v2 + 3624) = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    *(v2 + 3038) = 1;
    *(v2 + 3040) = 1;
    v5 = atomic_load((v2 + 3053));
    if (v5)
    {
      v6 = *(v2 + 136);
      if (v6)
      {
        v7 = *(v6 + 56);
        if (v7)
        {

          std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v7, v2, 9);
        }
      }
    }
  }
}

void md::MapNavLabeler::setRouteUserOffset(md::MapNavLabeler *this, const PolylineCoordinate *a2)
{
  *(this + 804) = *a2;
  v4 = *(this + 11);
  if (v4 && ([v4 routeInfo], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "route"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = *(this + 11);
    v8 = [v7 routeInfo];
    v9 = [v8 route];

    [v9 distanceFromPoint:0 toPoint:*a2];
    *(this + 102) = v10;
  }

  else
  {
    *(this + 102) = 0;
  }

  if ((*(*this + 360))(this))
  {
    md::RouteLineSupport::setRouteUserOffset(*(this + 8), a2);
    [*(this + 7) setRouteUserOffset:*a2];
  }

  v11 = *(this + 9);
  v12 = v11[6];
  if (v11[7] != v12)
  {
    v13 = 0;
    do
    {
      v14 = *(v12 + 8 * v13);
      v17 = v14;
      v15 = [v14 navigationState];
      [v14 updateNavigationStateForRouteUserOffset:a2];
      if (v15 != [v14 navigationState])
      {
        v16 = std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::find<VKTrafficFeature * {__strong}>(v11 + 22, &v17);
        if (v16)
        {
          (*(*v16[3] + 552))(v16[3], *v11);
        }
      }

      ++v13;
      v12 = v11[6];
    }

    while (v13 < (v11[7] - v12) >> 3);
  }
}

void std::__function::__func<md::LabelManager::setNavigationShieldSize(grl::SizeGroup)::$_0,std::allocator<md::LabelManager::setNavigationShieldSize(grl::SizeGroup)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != *(v2 + 3393))
  {
    *(v2 + 3393) = v3;
    if (*(v2 + 192) == 2)
    {
      md::LabelManager::clearScene(v2, 2);
    }
  }
}

uint64_t std::__function::__func<md::LabelManager::setRouteUserOffset(geo::PolylineCoordinate const&)::$_0,std::allocator<md::LabelManager::setRouteUserOffset(geo::PolylineCoordinate const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  (*(**(*(v1 + 168) + 32) + 112))(*(*(v1 + 168) + 32), a1 + 16);
  v2 = *(**(*(v1 + 168) + 48) + 8);

  return v2();
}

void md::LabelNavTrafficSupport::setRouteUserOffset(PolylineCoordinate *this, const PolylineCoordinate *a2)
{
  this[17] = *a2;
  index = this[18].index;
  if (a2->index <= index && (a2->index != index || a2->offset <= this[18].offset))
  {
    return;
  }

  v5 = this[13];
  v6 = this[14];
  if (v6 != v5)
  {
    v7 = this[13];
    v8 = (*(***&v5 + 200))();
    v9 = [v8 routeOffset];
    if (a2->index < v9)
    {
    }

    else
    {
      if (a2->index != v9)
      {

        goto LABEL_7;
      }

      v10 = *(&v9 + 1);
      offset = a2->offset;

      if (offset > v10)
      {
LABEL_7:
        v12 = (*(***&v7 + 200))();
        [v12 setRouteRelevance:2];
        v12;
        v14 = this[9];
        v13 = this[10];
        if (v14 != v13)
        {
          do
          {
            if (**&v14 == **&v7)
            {
              goto LABEL_11;
            }

            *&v14 += 16;
          }

          while (v14 != v13);
          v14 = this[10];
        }

LABEL_11:
        if (v13 != v14)
        {
          if (*&v14 + 16 == v13)
          {
            v17 = v14;
          }

          else
          {
            do
            {
              v15 = *(*&v14 + 16);
              *(*&v14 + 16) = 0;
              *(*&v14 + 24) = 0;
              v16 = *(*&v14 + 8);
              **&v14 = v15;
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v16);
              }

              v17 = (*&v14 + 16);
              v18 = *&v14 + 32;
              *&v14 += 16;
            }

            while (v18 != v13);
            v13 = this[10];
          }

          while (v13 != v17)
          {
            v19 = *(*&v13 - 8);
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v19);
            }

            *&v13 -= 16;
          }

          this[10] = v17;
        }

        std::allocate_shared[abi:nn200100]<md::TrafficIncidentLabelFeature,std::allocator<md::TrafficIncidentLabelFeature>,VKTrafficIncidentFeature * {__strong}&,std::shared_ptr<md::RouteAnnotationDedupingGroup> &,0>();
      }
    }

    v5 = this[13];
    v6 = this[14];
  }

  if (v5 == v6)
  {
    this[18] = 0xFFFFFFFFLL;
  }

  else
  {
    v20 = (*(***&v5 + 200))();
    this[18] = [v20 routeOffset];
  }

  v21 = this[1];
  *(v21 + 3034) = 1;
  v22 = atomic_load((v21 + 3053));
  if (v22)
  {
    v23 = *(v21 + 136);
    if (v23)
    {
      v24 = *(v23 + 56);
      if (v24)
      {

        std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v24, v21, 9);
      }
    }
  }
}

void md::MapNavLabeler::setFocusedPolyline(id *this, VKPolylineOverlay *a2)
{
  v7 = a2;
  [this[7] setRoute:?];
  v3 = this[8];
  v4 = v7 != 0;
  if (!*(*(v3 + 1) + 184) && v3[278] != v4)
  {
    v3[278] = v4;
    v5 = *(v3 + 9);
    if (v5)
    {
      v6 = *(v5 + 49);
      if (v6 != v4)
      {
        if (*(v5 + 48))
        {
          *(v5 + 49) = v4;
          if ((v7 != 0) != v6)
          {
            md::WaypointStore::updateWaypointsForSelection(v5);
          }
        }

        else
        {
          *(v5 + 49) = v4;
        }
      }
    }
  }
}

void std::vector<std::shared_ptr<md::LabelManagerCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelManagerCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
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

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelManagerCommand>>(v6, v4);
  }
}

void std::__function::__func<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0,std::allocator<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A4BA98;

  operator delete(a1);
}

void md::LabelSettings_Navigation::setRouteContext(md::LabelSettings_Navigation *this, VKRouteContext *a2)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v3 = *(*this + 40);
  v4 = a2;
  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v3 + 216, v4);
  v5 = *(*this + 24);
  v13 = v4;
  geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v14, v13);
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v5 + 3560, v14);
  v14[0] = &unk_1F2A580E8;

  if (v13)
  {
    v6 = [(VKRouteContext *)v13 useType];
    if (v6 == 1)
    {
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v13;
    }

    if (v6)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = v8;
  v11 = v9;
  v12 = v10;
  operator new();
}

void *geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A580E8;
  a1[1] = v3;
  return a1;
}

void std::__function::__func<md::LabelManager::setRouteContext(VKRouteContext *)::$_0,std::allocator<md::LabelManager::setRouteContext(VKRouteContext *)::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<md::LabelManager::setRouteContext(VKRouteContext *)::$_1,std::allocator<md::LabelManager::setRouteContext(VKRouteContext *)::$_1>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void md::LabelSettings_Navigation::setCurrentLocationText(md::LabelSettings_Navigation *this, NSString *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = *(*this + 40);
  v3 = a2;
  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v2 + 240, v3);
  geo::_retain_ptr<NSString * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v5, v3);
  geo::_retain_ptr<NSString * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v4, v5);
  v4[6] = 0;
  operator new();
}

void sub_1B28E8090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a15);

  *(v15 - 64) = &unk_1F2A3D108;
  _Unwind_Resume(a1);
}

void *geo::_retain_ptr<NSString * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A3D108;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void std::__function::__func<md::LabelManager::setCurrentLocationText(NSString *)::$_0,std::allocator<md::LabelManager::setCurrentLocationText(NSString *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A3D108;

  operator delete(a1);
}

uint64_t md::LabelSettings_Markers::setSelectionEnabled(std::mutex *this, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  *(a2 + 29) = a3;
  v4[0] = &unk_1F2A11A08;
  v4[1] = this;
  LOBYTE(v5[0]) = a3;
  v5[1] = v4;
  memset(v5 + 1, 0, 7);
  md::LabelManager::queueCommand(this, 16, 1, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B28E82BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setLabelMarkerSelectionEnabled(BOOL)::$_0,std::allocator<md::LabelManager::setLabelMarkerSelectionEnabled(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11A08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void md::LabelManager::willShutdown(md::LabelManager *this)
{
  v16 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = this;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "MDL:WillShutdown LabelManager:%p", &v12, 0xCu);
  }

  atomic_store(1u, this + 3427);
  v3 = *(this + 33);
  v4 = *(v3 + 120);
  if (v4)
  {
    std::mutex::lock(*(v3 + 120));
    v4[1].__m_.__sig = 0;
    std::mutex::unlock(v4);
  }

  v5 = *(this + 35);
  v6 = *(v5 + 8);
  if (v6)
  {
    std::mutex::lock(*(v5 + 8));
    v6[1].__m_.__sig = 0;
    std::mutex::unlock(v6);
  }

  v7 = *(this + 34);
  v8 = *v7;
  if (*v7)
  {
    std::mutex::lock(*v7);
    v8[1].__m_.__sig = 0;
    std::mutex::unlock(v8);
  }

  v9 = *(this + 18);
  *(this + 17) = 0;
  *(this + 18) = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  updated = md::LabelManager::tryWaitForBkgdUpdateComplete(this, 0x3E8u);
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v11 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 134218240;
    v13 = this;
    v14 = 1024;
    v15 = updated;
    _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_INFO, "WillShutdown-End LabelManager:%p didBkgdTaskFinish:%i", &v12, 0x12u);
  }
}

uint64_t md::LabelManager::tryWaitForBkgdUpdateComplete(md::LabelManager *this, unsigned int a2)
{
  if (*(this + 3419) != 1)
  {
    return 1;
  }

  v3 = 1000000 * a2;
  v4 = *(this + 27);
  v5 = dispatch_time(0, v3);
  v6 = dispatch_semaphore_wait(v4, v5);

  if (v6)
  {
    return 0;
  }

  dispatch_semaphore_signal(*(this + 27));
  result = 1;
  if (*(this + 3419) == 1)
  {
    ++*(this + 3329);
    *(this + 1709) = 1;
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
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

void md::LabelManager::~LabelManager(md::LabelManager *this)
{
  v34 = *MEMORY[0x1E69E9840];
  *this = &unk_1F2A1C948;
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = gdc::to_string(*(*(this + 29) + 16));
    LODWORD(v33.__vftable) = 134218242;
    *(&v33.__vftable + 4) = this;
    WORD2(v33.__shared_owners_) = 2080;
    *(&v33.__shared_owners_ + 6) = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "MDL:Destroy LabelManager:%p type=%s", &v33, 0x16u);
  }

  v4 = *(this + 435);
  if (v4)
  {
    (*(*v4 + 48))(v4);
  }

  v5 = *(this + 436);
  if (v5)
  {
    (*(*v5 + 48))(v5);
  }

  md::LabelManager::deselectLabelMarkerImpl(this);
  (*(**(this + 30) + 208))(*(this + 30));
  *(*(this + 21) + 72) = *(*(this + 21) + 120);
  v6 = *(this + 30);
  *(this + 30) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (atomic_fetch_add(md::LabelManager::_labelManagerInstanceCount, 0xFFFFFFFF) == 1)
  {
    md::LabelManager::clearSystemCaches(this);
  }

  v7 = *(this + 497);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  std::unique_ptr<md::Monitorable<md::ConfigValue<GEOConfigKeyString,std::string>>>::~unique_ptr[abi:nn200100](this + 495);
  v8 = *(this + 494);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  std::unique_ptr<md::Monitorable<md::ConfigValue<GEOConfigKeyString,std::string>>>::~unique_ptr[abi:nn200100](this + 491);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 3848);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 3768);

  v9 = *(this + 453);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  *(this + 445) = &unk_1F2A580E8;

  v10 = *(this + 444);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 442);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  *(this + 438) = &unk_1F2A3D128;

  v12 = *(this + 436);
  *(this + 436) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 435);
  *(this + 435) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 431);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v33.__vftable = (this + 3264);
  std::vector<std::shared_ptr<md::LabelManagerCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelManagerCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v33);
  std::mutex::~mutex(this + 50);
  std::unique_ptr<md::FontGlyphCache>::reset[abi:nn200100]((this + 3168), 0);
  v15 = *(this + 376);
  *(this + 376) = 0;
  if (v15)
  {
    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(v15 + 304);
    v16 = *(v15 + 120);
    if (v16)
    {
      *(v15 + 128) = v16;
      operator delete(v16);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v15 + 80);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v15 + 40);
    v17 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::~__hash_table(v15);
    MEMORY[0x1B8C62190](v17, 0x10F0C40EC263EC2);
  }

  v18 = *(this + 366);
  if (v18)
  {
    *(this + 367) = v18;
    operator delete(v18);
  }

  v19 = *(this + 359);
  if (v19)
  {
    *(this + 360) = v19;
    operator delete(v19);
  }

  v20 = *(this + 205);
  if (v20)
  {
    *(this + 206) = v20;
    operator delete(v20);
  }

  v21 = *(this + 198);
  if (v21)
  {
    *(this + 199) = v21;
    operator delete(v21);
  }

  std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__deallocate_node(*(this + 49));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 368));
  std::unique_ptr<md::OcclusionManager>::~unique_ptr[abi:nn200100](this + 45);
  v22 = *(this + 44);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  std::unique_ptr<md::LabelStyleCache>::~unique_ptr[abi:nn200100](this + 42);
  std::unique_ptr<md::LabelRenderer>::~unique_ptr[abi:nn200100](this + 41);
  std::unique_ptr<md::LabelCollider>::~unique_ptr[abi:nn200100](this + 40);
  std::unique_ptr<md::FontTrackingCache>::~unique_ptr[abi:nn200100](this + 39);
  v23 = *(this + 38);
  *(this + 38) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 37);
  *(this + 37) = 0;
  if (v24)
  {
    MEMORY[0x1B8C62190](v24, 0x1020C405AF6BDC9);
  }

  std::unique_ptr<md::LabelFeaturePool>::~unique_ptr[abi:nn200100](this + 36);
  std::unique_ptr<md::LabelGlyphImageLoader>::~unique_ptr[abi:nn200100](this + 35);
  std::unique_ptr<md::LabelTextDataLoader>::~unique_ptr[abi:nn200100](this + 34);
  std::unique_ptr<md::LabelImageLoader>::~unique_ptr[abi:nn200100](this + 33);
  v25 = *(this + 32);
  *(this + 32) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(this + 31);
  *(this + 31) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(this + 30);
  *(this + 30) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  std::unique_ptr<md::LabelWorldTraits>::~unique_ptr[abi:nn200100](this + 29);
  *(this + 26) = &unk_1F2A1C970;

  std::unique_ptr<md::LabelsState>::~unique_ptr[abi:nn200100](this + 21);
  v28 = *(this + 20);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  v29 = *(this + 18);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  v30 = *(this + 15);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  *(this + 11) = &unk_1F2A59028;

  std::recursive_mutex::~recursive_mutex((this + 24));
  *this = off_1F2A40558;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, this);
  v32 = *(this + 2);
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }
}

{
  md::LabelManager::~LabelManager(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B28E8BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = v9[497];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  std::unique_ptr<md::Monitorable<md::ConfigValue<GEOConfigKeyString,std::string>>>::~unique_ptr[abi:nn200100](v9 + 495);
  v12 = v9[494];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  std::unique_ptr<md::Monitorable<md::ConfigValue<GEOConfigKeyString,std::string>>>::~unique_ptr[abi:nn200100](v9 + 491);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable((v9 + 481));
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable((v9 + 471));

  v13 = v9[453];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v9[445] = &unk_1F2A580E8;

  v14 = v9[444];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = v9[442];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v9[438] = &unk_1F2A3D128;

  v16 = v9[436];
  v9[436] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = v9[435];
  v9[435] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v9[431];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  a9 = v9 + 408;
  std::vector<std::shared_ptr<md::LabelManagerCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelManagerCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  std::mutex::~mutex(v9 + 50);
  std::unique_ptr<md::FontGlyphCache>::reset[abi:nn200100]((v9 + 396), 0);
  v19 = v9[376];
  v9[376] = 0;
  if (v19)
  {
    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(v19 + 304);
    v20 = *(v19 + 120);
    if (v20)
    {
      *(v19 + 128) = v20;
      operator delete(v20);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v19 + 80);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v19 + 40);
    v21 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::~__hash_table(v19);
    MEMORY[0x1B8C62190](v21, 0x10F0C40EC263EC2);
  }

  v22 = v9[366];
  if (v22)
  {
    v9[367] = v22;
    operator delete(v22);
  }

  v23 = v9[359];
  if (v23)
  {
    v9[360] = v23;
    operator delete(v23);
  }

  v24 = v9[205];
  if (v24)
  {
    v9[206] = v24;
    operator delete(v24);
  }

  v25 = v9[198];
  if (v25)
  {
    v9[199] = v25;
    operator delete(v25);
  }

  std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__deallocate_node(v9[49]);
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v9 + 46));
  std::unique_ptr<md::OcclusionManager>::~unique_ptr[abi:nn200100](v9 + 45);
  v26 = v9[44];
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  std::unique_ptr<md::LabelStyleCache>::~unique_ptr[abi:nn200100](v9 + 42);
  std::unique_ptr<md::LabelRenderer>::~unique_ptr[abi:nn200100](v9 + 41);
  std::unique_ptr<md::LabelCollider>::~unique_ptr[abi:nn200100](v9 + 40);
  std::unique_ptr<md::FontTrackingCache>::~unique_ptr[abi:nn200100](v9 + 39);
  v27 = v9[38];
  v9[38] = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = v9[37];
  v9[37] = 0;
  if (v28)
  {
    MEMORY[0x1B8C62190](v28, 0x1020C405AF6BDC9);
  }

  std::unique_ptr<md::LabelFeaturePool>::~unique_ptr[abi:nn200100](v9 + 36);
  std::unique_ptr<md::LabelGlyphImageLoader>::~unique_ptr[abi:nn200100](v9 + 35);
  std::unique_ptr<md::LabelTextDataLoader>::~unique_ptr[abi:nn200100](v9 + 34);
  std::unique_ptr<md::LabelImageLoader>::~unique_ptr[abi:nn200100](v9 + 33);
  v29 = v9[32];
  v9[32] = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = v9[31];
  v9[31] = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = v9[30];
  v9[30] = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  std::unique_ptr<md::LabelWorldTraits>::~unique_ptr[abi:nn200100](v9 + 29);
  v9[26] = &unk_1F2A1C970;

  std::unique_ptr<md::LabelsState>::~unique_ptr[abi:nn200100](v9 + 21);
  v32 = v9[20];
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = v9[18];
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  v34 = v9[15];
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  v9[11] = &unk_1F2A59028;

  std::recursive_mutex::~recursive_mutex((v9 + 3));
  *v9 = off_1F2A40558;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, v9);
  v36 = v9[2];
  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
  }

  _Unwind_Resume(a1);
}

void gdc::Timer::shutdown(gdc::Timer *this)
{
  std::mutex::lock((this + 16));
  v2 = *(this + 10);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 10));
    *(this + 10) = 0;
    *(this + 96) = 0;
    *(this + 1) = 0xBFF0000000000000;
  }

  std::mutex::unlock((this + 16));
}

void md::LabelManager::deselectLabelMarkerImpl(md::LabelManager *this)
{
  v1 = *(this + 430);
  if (v1)
  {
    if (v1 == *(this + 443))
    {
      v3 = (this + 3544);
      v4 = *(this + 17);
      if (v4)
      {
        v5 = *(v4 + 152);
        if (v5)
        {
          std::function<void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::operator()(v5, this);
        }
      }

      v6 = *(this + 444);
      *v3 = 0;
      *(this + 444) = 0;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    v7[0] = 0;
    v7[1] = 0;
    md::LabelManager::setSelectedLabelMarker(this, v7);
    *(this + 3035) = 1;
  }
}

void md::MapLabeler::~MapLabeler(md::MapLabeler *this)
{
  *this = &unk_1F29E5C68;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_1F2A36968;
  std::vector<md::Labeler *,geo::allocator_adapter<md::Labeler *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E5C68;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_1F2A36968;
  std::vector<md::Labeler *,geo::allocator_adapter<md::Labeler *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));
}

void md::MapStandardLabeler::~MapStandardLabeler(std::__shared_weak_count *this)
{
  this->__vftable = &unk_1F29EC910;
  this->__shared_owners_ = &unk_1F29ECB08;
  this->__shared_weak_owners_ = &unk_1F29ECB50;
  shared_owners = this[18].__shared_owners_;
  this[18].__shared_owners_ = 0;
  if (shared_owners)
  {
    (*(*shared_owners + 8))(shared_owners);
  }

  std::unique_ptr<md::LabelTrafficTilePool>::reset[abi:nn200100](this + 18, 0);
  shared_weak_owners = this[17].__shared_weak_owners_;
  this[17].__shared_weak_owners_ = 0;
  if (shared_weak_owners)
  {
    (*(*shared_weak_owners + 40))(shared_weak_owners);
  }

  std::unique_ptr<md::LabelExternalMeshModerator>::~unique_ptr[abi:nn200100](&this[17].__shared_owners_);
  v4 = this[17].__vftable;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = this[16].__shared_owners_;
  this[16].__shared_owners_ = 0;
  if (v5)
  {
    (*(*v5 + 48))(v5);
  }

  md::StandardLabeler::~StandardLabeler(this);
}

{
  md::MapStandardLabeler::~MapStandardLabeler(this);

  JUMPOUT(0x1B8C62190);
}

void md::LabelNavTrafficSupport::~LabelNavTrafficSupport(md::LabelNavTrafficSupport *this)
{
  *this = &unk_1F29E52B0;
  *(*(*(this + 1) + 168) + 48) = *(*(*(this + 1) + 168) + 88);
  *(this + 20) = &unk_1F2A3D0A8;

  v13 = (this + 104);
  std::vector<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = (this + 72);
  std::vector<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(this + 6);
    v5 = *(this + 5);
    if (v4 != v3)
    {
      v6 = v4 - 3;
      v7 = v4 - 3;
      v8 = v4 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        v2 = (*v9)(v7);
        v6 -= 3;
        v10 = v7 == v3;
        v7 = v8;
      }

      while (!v10);
      v5 = *(this + 5);
    }

    *(this + 6) = v3;
    v11 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKTrafficIncidentFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v11, v5);
  }

  v12 = *(this + 3);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }
}

{
  md::LabelNavTrafficSupport::~LabelNavTrafficSupport(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelBase *>(v2, v1);
  }
}

void md::RouteAnnotationDedupingGroup::~RouteAnnotationDedupingGroup(md::RouteAnnotationDedupingGroup *this)
{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
}

{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);

  JUMPOUT(0x1B8C62190);
}