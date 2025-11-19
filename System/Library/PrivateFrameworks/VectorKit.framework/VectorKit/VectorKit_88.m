void sub_1B2E1388C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (v20)
  {
    std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a20);
  }

  _Unwind_Resume(exception_object);
}

void md::LabelAnimator::setupLocationChangedFadeAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    v7 = 0;
    v6 = md::LabelAnimator::resolveParams(a1, a2, 2u, 1, 0);
    md::LabelAnimator::createFadeAnimation(a1, *(a3 + 8), 0.0, a2, v6, &v7);
    *(a1 + 89) = 1;
  }
}

__n128 geo::small_vector_base<md::LabelAnimation::Property>::push_back(uint64_t a1, __n128 *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = v4 - *a1;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
  v8 = *(a1 + 24);
  if (v8 < v7)
  {
    v9 = *(a1 + 16);
    v10 = (1 << -__clz(v8 + 1));
    if (v8 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v10 = 1;
    }

    if (v10 <= v7)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = malloc_type_malloc(24 * v11, 0x1020040545B2139uLL);
    v13 = v12;
    v14 = *a1;
    v15 = *(a1 + 8);
    if (*a1 != v15)
    {
      v16 = v12;
      do
      {
        v17 = *v14;
        *(v16 + 2) = v14[2];
        *v16 = v17;
        v16 += 24;
        v14 += 3;
      }

      while (v14 != v15);
    }

    if (v5 != v9)
    {
      free(*a1);
    }

    v4 = &v13[v6];
    *a1 = v13;
    *(a1 + 8) = &v13[v6];
    *(a1 + 24) = v11;
  }

  result = *a2;
  v4[1].n128_u64[0] = a2[1].n128_u64[0];
  *v4 = result;
  *(a1 + 8) += 24;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::LabelAnimationTrack>>(uint64_t a1, uint64_t a2)
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

float nextRandomNumber(void)
{
  {
    *(&__token.__r_.__value_.__s + 23) = 12;
    strcpy(&__token, "/dev/urandom");
    std::random_device::random_device(&nextRandomNumber(void)::randomDevice, &__token);
    if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__token.__r_.__value_.__l.__data_);
    }
  }

  {
    v8 = MEMORY[0x1B8C61D10](&nextRandomNumber(void)::randomDevice);
    v9 = v8 + ((v8 / 0x7FFFFFFF) | ((v8 / 0x7FFFFFFF) << 31));
    if (v9 <= 1)
    {
      v9 = 1;
    }

    nextRandomNumber(void)::randomEngine = v9;
  }

  v0 = &unk_1EB82A000;
  {
    v0 = &unk_1EB82A000;
    if (v10)
    {
      nextRandomNumber(void)::generator = 1065353216;
      v0 = &unk_1EB82A000;
    }
  }

  v1 = v0[50];
  v2 = 48271 * (nextRandomNumber(void)::randomEngine % 0xADC8u);
  v3 = 3399 * (nextRandomNumber(void)::randomEngine / 0xADC8u);
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x7FFFFFFF;
  }

  nextRandomNumber(void)::randomEngine = v6 + v5;
  return (v1 * 4.6566e-10) * (v6 + v5 - 1);
}

void non-virtual thunk toggl::TexturedAnimatedRibbon::BaseMesh::~BaseMesh(ggl::TexturedAnimatedRibbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::TexturedAnimatedRibbon::BaseMesh::~BaseMesh(ggl::TexturedAnimatedRibbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::TexturedAnimatedRibbon::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::TexturedAnimatedRibbon::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::TexturedAnimatedRibbon::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Glyph::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Glyph::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Glyph::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Glyph::DefaultVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Glyph::DefaultMesh::~DefaultMesh(ggl::Glyph::DefaultMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Glyph::DefaultMesh::~DefaultMesh(ggl::Glyph::DefaultMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::Glyph::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Glyph::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::TexturedInnerShadowRibbon::PipelineSetup::~PipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E148AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKAnnotationTrackingCameraController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *gdc::Context::get<md::CameraContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x1AF456233693CD46uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x1AF456233693CD46)
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

void md::DebugRenderLayer::renderTriangulatedLines(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x1AF456233693CD46uLL);
  v7 = *(*(a1 + 48) + 104);
  v8 = v7[1];
  if (v8 == *v7)
  {
    v10 = v7[11];
    if (!v10)
    {
      goto LABEL_7;
    }

    v9 = (*(*v10 + 48))(v10);
    *&v16 = v9;
  }

  else
  {
    v9 = *(v8 - 8);
    *&v16 = v9;
    v7[1] = v8 - 8;
  }

  std::vector<ggl::Debug::LineMesh *,geo::allocator_adapter<ggl::Debug::LineMesh *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v7 + 4), &v16);
  v15 = v9;
  v11 = v7[15];
  if (v11)
  {
    (*(*v11 + 48))(v11, &v15);
    v12 = 0xAAAAAAAAAAAAAAACLL * ((a5[1] - *a5) >> 3);
    ggl::BufferData::resize(**(v9 + 64), v12);
    v13 = **(v9 + 64);
    ggl::BufferMemory::BufferMemory(v17);
    ggl::ResourceAccessor::accessIndexData(&v15, 0, v13, 0, v12, 1, 0);
    ggl::BufferMemory::operator=(v17, &v15);
    ggl::BufferMemory::~BufferMemory(&v15);
    operator new();
  }

LABEL_7:
  v14 = std::__throw_bad_function_call[abi:nn200100]();
  ggl::BufferMemory::~BufferMemory(v17);
  _Unwind_Resume(v14);
}

void md::DebugRenderLayer::renderLines(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v13 && (v14 = v13[5], *(v14 + 8) == 0x1AF456233693CD46))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  v16 = ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::pop(*(*(a1 + 48) + 96));
  v17 = 0x5555555555555556 * ((a5[1] - *a5) >> 3);
  ggl::BufferData::resize(**(v16 + 8), v17);
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(v56, **(v16 + 8), 0, v17);
  v18 = *a5;
  v19 = a5[1];
  v20 = v19 - *a5;
  if (v19 != *a5)
  {
    v21 = 0;
    v22 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3);
    v23 = v56[5];
    if (v22 <= 1)
    {
      v22 = 1;
    }

    v24 = *a5;
    do
    {
      v25 = 0;
      v26 = (v18 + 24 * v21);
      v27 = *(v26 + 2);
      v28 = *v26;
      v29 = v23 + 32 * v21;
      *v29 = v28;
      *(v29 + 8) = v27;
      *(v29 + 12) = 1065353216;
      do
      {
        *(&v52 + v25) = *(v24 + v25 + 12) + *(v24 + v25);
        v25 += 4;
      }

      while (v25 != 12);
      v30 = v23 + ((32 * v21) | 0x10);
      v31 = v53;
      *v30 = v52;
      *(v30 + 8) = v31;
      *(v30 + 12) = 1065353216;
      ++v21;
      v24 += 24;
    }

    while (v21 != v22);
  }

  v32 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(*(a1 + 48) + 112));
  v33 = v32;
  v34 = 0;
  v35 = (v15 + 808);
  do
  {
    v36 = 0;
    v37 = a3;
    do
    {
      v38 = 0;
      v39 = 0.0;
      v40 = v35;
      do
      {
        v41 = *v40;
        v40 += 4;
        v39 = v39 + *(v37 + v38) * v41;
        v38 += 8;
      }

      while (v38 != 32);
      *&(&(&v52)[4 * v36++])[v34] = v39;
      v37 += 32;
    }

    while (v36 != 4);
    ++v34;
    ++v35;
  }

  while (v34 != 4);
  v42 = 0;
  v43 = &v52;
  do
  {
    v45 = *v43;
    v44 = v43[1];
    v43 += 2;
    v55[v42++] = vcvt_hight_f32_f64(vcvt_f32_f64(v45), v44);
  }

  while (v42 != 4);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v52, *(*(v32 + 136) + 16));
  v46 = v54;
  v47 = v55[1];
  *v54 = v55[0];
  v46[1] = v47;
  v48 = v55[3];
  v46[2] = v55[2];
  v46[3] = v48;
  ggl::BufferMemory::~BufferMemory(&v52);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(*(v33 + 136), *(v33 + 232), *a7, a7[1]);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v52, **(v33 + 136));
  v49 = 0;
  v50 = v54;
  do
  {
    *(v50 + v49) = *(a4 + v49);
    v49 += 4;
  }

  while (v49 != 16);
  ggl::BufferMemory::~BufferMemory(&v52);
  v51 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 48) + 160));
  v51[8] = v16;
  v51[4] = v33;
  v51[3] = *(*(a1 + 48) + 168);
  v52 = v51;
  std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a6 + 72), &v52);
  ggl::BufferMemory::~BufferMemory(v56);
}

void md::DebugRenderLayer::renderQuadTile(uint64_t a1, md::LayoutContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.%d.%d\n%s", *(a3 + 8), *(a3 + 4), *(a3 + 1), a7, a6];
  objc_claimAutoreleasedReturnValue();
  v10 = *(a2 + 1);
  v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v10, 0x1AF456233693CD46uLL);
  if (v11 && (v12 = v11[5], *(v12 + 8) == 0x1AF456233693CD46))
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  v14 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v10, 0x3070CB6B3C7F21D3uLL);
  if (v14 && (v15 = v14[5], *(v15 + 8) == 0x3070CB6B3C7F21D3))
  {
    v16 = *(v15 + 32);
  }

  else
  {
    v16 = 0;
  }

  v17 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(*(a1 + 48) + 112));
  v18 = (v13 + 808);
  v19 = md::LayoutContext::cameraType(a2);
  v20 = gdc::ToCoordinateSystem(v19);
  md::GeometryLogic::tileMatrix(v36, v20, a3, 0.0, v21);
  v22 = 0;
  while (1)
  {
    v23 = 0;
    v24 = v36;
    do
    {
      v25 = 0;
      v26 = 0.0;
      v27 = v18;
      do
      {
        v28 = *v27;
        v27 += 4;
        v26 = v26 + *&v24[v25] * v28;
        v25 += 8;
      }

      while (v25 != 32);
      *(&v37 + 4 * v23++ + v22) = v26;
      v24 += 32;
    }

    while (v23 != 4);
    ++v22;
    ++v18;
    if (v22 == 4)
    {
      v29 = 0;
      v30 = &v37;
      do
      {
        v32 = *v30;
        v31 = v30[1];
        v30 += 2;
        v39[v29++] = vcvt_hight_f32_f64(vcvt_f32_f64(v32), v31);
      }

      while (v29 != 4);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v37, *(*(v17 + 136) + 16));
      v33 = v38;
      v34 = v39[1];
      *v38 = v39[0];
      v33[1] = v34;
      v35 = v39[3];
      v33[2] = v39[2];
      v33[3] = v35;
      ggl::BufferMemory::~BufferMemory(&v37);
      md::GeometryContext::transformConstantData(0.0, 0.0, &v37, v16, a3, *(v13 + 3784), -1);
    }
  }
}

void _drawS2Cell(char *a1, float32x4_t *a2, uint64_t a3, uint64_t a4, float a5, float a6)
{
  v9 = 0;
  v75 = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v10 = a1[1];
  v11 = *a1;
  v70 = vrev64_s32(*(a1 + 4));
  v71 = v10;
  v72 = v11;
  v73 = &v75;
  v74 = a3;
  *(a4 + 104) = 1069547520;
  v12 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(*a2, vdupq_n_s32(0x437F0000u))));
  *(a4 + 96) = vuzp1_s8(v12, v12).u32[0];
  __asm { FMOV            V0.2S, #1.0 }

  v61 = _D0;
  do
  {
    v18 = (&_drawS2Cell(geo::QuadTile const&,geo::Color<float,4,(geo::ColorSpace)0> const&,gm::Matrix<float,2,1>,gm::Matrix<float,4,4> const&,ggl::DebugConsole *)::corners + 16 * v9);
    v19 = *v18;
    v20 = v18[1];
    v21 = (&_drawS2Cell(geo::QuadTile const&,geo::Color<float,4,(geo::ColorSpace)0> const&,gm::Matrix<float,2,1>,gm::Matrix<float,4,4> const&,ggl::DebugConsole *)::corners + 16 * (++v9 & 3));
    v62 = v19;
    v63 = *v21 - v19;
    v22 = v21[1] - v20;
    v23 = 0.0;
    do
    {
      v24 = v19 + v63 * v23;
      v25 = v20 + v22 * v23;
      v23 = v23 + 0.1;
      v26 = geo::S2CellCoordinates::geocentricFromTileUnit<double>(&v70, v24, v25, 0.0);
      v27 = 0;
      *&v65 = v26;
      *(&v65 + 1) = v28;
      v66 = v29;
      do
      {
        v30 = *(&v65 + v27);
        *(v68 + v27++) = v30;
      }

      while (v27 != 3);
      v31 = v20;
      v32 = v22;
      v33 = v20 + v22 * v23;
      v34 = gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(a3, v68);
      v35 = *&v34;
      v37 = v36;
      v38 = v75;
      v39 = geo::S2CellCoordinates::geocentricFromTileUnit<double>(&v70, v63 * v23 + v19, v33, 0.0);
      v40 = 0;
      *&v65 = v39;
      *(&v65 + 1) = v41;
      v66 = v42;
      do
      {
        v43 = *(&v65 + v40);
        *(v68 + v40++) = v43;
      }

      while (v40 != 3);
      *&v64 = v35 + 1.0;
      v44 = vmul_f32(v38, 0x3F0000003F000000);
      v45 = gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(a3, v68);
      v46.i32[0] = vadd_f32(*&v45, v61).u32[0];
      HIDWORD(v45) = v47;
      v46.i32[1] = vsub_f32(v61, *&v45).i32[1];
      *&v65 = vmul_f32(v44, v46);
      v48 = vmul_f32(v44, __PAIR64__(1.0 - v37, v64));
      *(a4 + 8) = v48;
      ggl::DebugConsole::drawLine(a4, &v65, v48.f32[0]);
      v19 = v62;
      v20 = v31;
      v22 = v32;
    }

    while (v23 < 1.0);
  }

  while (v9 != 4);
  v49 = geo::S2CellCoordinates::geocentricFromTileUnit<double>(&v70, 0.5, 0.5, 0.0);
  v50 = 0;
  *&v65 = v49;
  *(&v65 + 1) = v51;
  v66 = v52;
  do
  {
    v53 = *(&v65 + v50);
    *(v68 + v50++) = v53;
  }

  while (v50 != 3);
  v54 = gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(a3, v68);
  v55.i32[0] = vadd_f32(*&v54, v61).u32[0];
  HIDWORD(v54) = v56;
  v55.i32[1] = vsub_f32(v61, *&v54).i32[1];
  *(a4 + 8) = vmul_f32(vmul_f32(v75, 0x3F0000003F000000), v55);
  *(a4 + 104) = 1056964608;
  *(a4 + 40) = 0x100000001;
  *(&v65 + 4) = *(a1 + 4);
  LOWORD(v65) = *a1;
  v66 = *(a1 + 2);
  v67 = a1[24];
  md::debugString<geo::QuadTile>(v68, &v65);
  v57 = v69;
  v58 = v68[0];
  if (v69 >= 0)
  {
    v59 = v68;
  }

  else
  {
    v59 = v68[0];
  }

  if (v69 >= 0)
  {
    v60 = v69;
  }

  else
  {
    v60 = v68[1];
  }

  ggl::DebugConsole::drawString(a4, v59, v60);
  if (v57 < 0)
  {
    operator delete(v58);
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](a1 + 128);
  return a1;
}

uint64_t gdc::Registry::each<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_11>(uint64_t result, uint64_t a2, void *a3)
{
  if (a2 != result)
  {
    v3 = (a2 - result) >> 3;
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = (result + 4);
    do
    {
      v5 = *v4;
      v4 += 2;
      if (v5 != -1)
      {
        ++*a3;
      }

      --v3;
    }

    while (v3);
  }

  return result;
}

void md::DebugRenderLayer::renderSolidQuadTile(uint64_t a1, md::LayoutContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.%d.%d\n%s", *(a3 + 8), *(a3 + 4), *(a3 + 1), a7];
  objc_claimAutoreleasedReturnValue();
  v10 = *(a2 + 1);
  v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v10, 0x1AF456233693CD46uLL);
  if (v11 && (v12 = v11[5], *(v12 + 8) == 0x1AF456233693CD46))
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  v14 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v10, 0x3070CB6B3C7F21D3uLL);
  if (v14 && (v15 = v14[5], *(v15 + 8) == 0x3070CB6B3C7F21D3))
  {
    v16 = *(v15 + 32);
  }

  else
  {
    v16 = 0;
  }

  v17 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(*(a1 + 48) + 112));
  v18 = (v13 + 808);
  v19 = md::LayoutContext::cameraType(a2);
  v20 = gdc::ToCoordinateSystem(v19);
  md::GeometryLogic::tileMatrix(v37, v20, a3, 0.0, v21);
  v22 = 0;
  while (1)
  {
    v23 = 0;
    v24 = v37;
    do
    {
      v25 = 0;
      v26 = 0.0;
      v27 = v18;
      do
      {
        v28 = *v27;
        v27 += 4;
        v26 = v26 + *&v24[v25] * v28;
        v25 += 8;
      }

      while (v25 != 32);
      *(&v38 + 4 * v23++ + v22) = v26;
      v24 += 32;
    }

    while (v23 != 4);
    ++v22;
    ++v18;
    if (v22 == 4)
    {
      v29 = 0;
      v30 = &v38;
      do
      {
        v32 = *v30;
        v31 = v30[1];
        v30 += 2;
        v40[v29++] = vcvt_hight_f32_f64(vcvt_f32_f64(v32), v31);
      }

      while (v29 != 4);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v38, *(*(v17 + 136) + 16));
      v33 = v39;
      v34 = v40[1];
      *v39 = v40[0];
      v33[1] = v34;
      v35 = v40[3];
      v33[2] = v40[2];
      v33[3] = v35;
      ggl::BufferMemory::~BufferMemory(&v38);
      v36 = md::LayoutContext::cameraType(a2);
      md::GeometryContext::transformConstantData(0.0, 0.0, &v38, v16, a3, v36, -1);
    }
  }
}

void md::DebugRenderLayer::drawMeshErrorsInGroundTile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  *(a3 + 40) = 1;
  v5 = *a1;
  [v5 sizeInPixels];
  v7 = v6;
  [*a1 sizeInPixels];
  v9 = v8;

  v38 = *(a2 + 172);
  v37[0] = *(a2 + 168);
  v39 = *(a2 + 184);
  v40 = *(a2 + 192);
  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a1 + 8), 0x1AF456233693CD46uLL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0x1AF456233693CD46))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = v7;
  v14 = v9;
  v15 = (v12 + 808);
  v16 = md::LayoutContext::cameraType(a1);
  v17 = gdc::ToCoordinateSystem(v16);
  md::GeometryLogic::tileMatrix(&v41, v17, v37, 0.0, v18);
  for (i = 0; i != 4; ++i)
  {
    v20 = 0;
    v21 = &v41;
    do
    {
      v22 = 0;
      v23 = 0.0;
      v24 = v15;
      do
      {
        v25 = *v24;
        v24 += 4;
        v23 = v23 + *(v21 + v22) * v25;
        v22 += 8;
      }

      while (v22 != 32);
      *&v35[4 * v20++ - 1 + i] = v23;
      v21 += 2;
    }

    while (v20 != 4);
    ++v15;
  }

  v26 = 0;
  v27 = &v34;
  do
  {
    v29 = *v27;
    v28 = *(v27 + 1);
    v27 += 4;
    *&v36[v26] = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v28);
    v26 += 16;
  }

  while (v26 != 64);
  v34 = 0x3F0000003F000000;
  LODWORD(v35[0]) = 0;
  v30 = gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(v36, &v34);
  v32 = (*(a3 + 28) * 4.0) + ((1.0 - v31) * (v14 * 0.5));
  *(a3 + 8) = (v13 * 0.5) + (*&v30 * (v13 * 0.5));
  *(a3 + 12) = v32;
  if (*(a2 + 936) != *(a2 + 944))
  {
    v35[0] = 0;
    v35[1] = 0;
    v34 = v35;
    operator new();
  }

  ggl::DebugConsole::drawString(a3, "no mesh errors\n", 15);
}

uint64_t md::DrapingContext::debugStateForDrapingKey(_BYTE *a1, uint64_t a2, unsigned __int8 *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v26);
  for (i = *(*(a2 + 16) + 16); i; i = *i)
  {
    for (j = i[9]; j; j = *j)
    {
      if (j[40] == 1)
      {
        geo::QuadTile::computeHash(j + 16);
        j[40] = 0;
      }

      v7 = *(j + 4);
      if (a3[24])
      {
        v15 = (a3[1] - 0x61C8864680B583EBLL + ((*a3 - 0x61C8864680B583EBLL) << 6) + ((*a3 - 0x61C8864680B583EBLL) >> 2)) ^ (*a3 - 0x61C8864680B583EBLL);
        v16 = (*(a3 + 1) - 0x61C8864680B583EBLL + (v15 << 6) + (v15 >> 2)) ^ v15;
        v8 = (*(a3 + 2) - 0x61C8864680B583EBLL + (v16 << 6) + (v16 >> 2)) ^ v16;
        *(a3 + 2) = v8;
        a3[24] = 0;
      }

      else
      {
        v8 = *(a3 + 2);
      }

      if (v7 == v8 && j[16] == *a3 && j[17] == a3[1] && *(j + 5) == *(a3 + 1) && *(j + 6) == *(a3 + 2) && *(j + 24) == 58)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "\n", 1);
        v21 = *(i + 20);
        *v20 = *(i + 8);
        v22 = i[4];
        v23 = *(i + 40);
        md::debugString<geo::QuadTile>(__p, v20);
        if ((v25 & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        if ((v25 & 0x80u) == 0)
        {
          v10 = v25;
        }

        else
        {
          v10 = __p[1];
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, v9, v10);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, ":", 1);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        v11 = atomic_load(*(j + 9));
        v12 = v11 - 1;
        v13 = "Pending";
        if (v12 <= 2u)
        {
          v13 = off_1E7B346C0[v12];
        }

        v14 = strlen(v13);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, v13, v14);
      }
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a1, v26);
  v26[0] = *MEMORY[0x1E69E54D8];
  v17 = *(MEMORY[0x1E69E54D8] + 72);
  *(v26 + *(v26[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v27 = v17;
  v28 = MEMORY[0x1E69E5548] + 16;
  if (v30 < 0)
  {
    operator delete(v29[7].__locale_);
  }

  v28 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v29);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v31);
}

void sub_1B2E16B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  a20 = *MEMORY[0x1E69E54D8];
  v40 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a20 + *(a20 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a22 = v40;
  a23 = MEMORY[0x1E69E5548] + 16;
  if (a36 < 0)
  {
    operator delete(__p);
  }

  a23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a24);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a39);
  _Unwind_Resume(a1);
}

uint64_t md::DebugRenderLayer::renderTexturedQuadTile(md::DebugRenderLayer *this, const md::LayoutContext *a2, const geo::QuadTile *a3, ggl::Texture2D *a4, ggl::CommandBuffer *a5, float a6)
{
  v9 = *(a2 + 1);
  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v9, 0x1AF456233693CD46uLL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0x1AF456233693CD46))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v9, 0x3070CB6B3C7F21D3uLL);
  if (v13 && (v14 = v13[5], *(v14 + 8) == 0x3070CB6B3C7F21D3))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(*(this + 6) + 144);
  v17 = v16[1];
  if (v17 == *v16)
  {
    v19 = v16[11];
    if (!v19)
    {
      goto LABEL_23;
    }

    v18 = (*(*v19 + 48))(v19);
    v44[0] = v18;
  }

  else
  {
    v18 = *(v17 - 8);
    v44[0] = v18;
    v16[1] = v17 - 8;
  }

  std::vector<ggl::Textured::Pos2DUVExtendedPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVExtendedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v16 + 4), v44);
  v45 = v18;
  v20 = v16[15];
  if (v20)
  {
    (*(*v20 + 48))(v20, &v45);
    v21 = (v12 + 808);
    v22 = md::LayoutContext::cameraType(a2);
    v23 = gdc::ToCoordinateSystem(v22);
    md::GeometryLogic::tileMatrix(v44, v23, a3, 0.0, v24);
    v25 = 0;
    while (1)
    {
      v26 = 0;
      v27 = v44;
      do
      {
        v28 = 0;
        v29 = 0.0;
        v30 = v21;
        do
        {
          v31 = *v30;
          v30 += 4;
          v29 = v29 + *&v27[v28++] * v31;
        }

        while (v28 != 4);
        *(v46 + 4 * v26++ + v25 + 14) = v29;
        v27 += 4;
      }

      while (v26 != 4);
      ++v25;
      ++v21;
      if (v25 == 4)
      {
        v32 = 0;
        v33 = &v45;
        do
        {
          v35 = *v33;
          v34 = v33[1];
          v33 += 2;
          v46[v32++] = vcvt_hight_f32_f64(vcvt_f32_f64(v35), v34);
        }

        while (v32 != 4);
        ggl::DataAccess<ggl::Tile::View>::DataAccess(v42, **(v18 + 136), 1);
        v36 = v43;
        v37 = v46[1];
        *v43 = v46[0];
        v36[1] = v37;
        v38 = v46[3];
        v36[2] = v46[2];
        v36[3] = v38;
        ggl::BufferMemory::~BufferMemory(v42);
        md::GeometryContext::transformConstantData(0.0, 0.0, &v45, v15, a3, *(v12 + 3784), -1);
      }
    }
  }

LABEL_23:
  v39 = std::__throw_bad_function_call[abi:nn200100]();
  return md::DebugRenderLayer::renderScreenTexturedQuad(v39, v40);
}

ggl::zone_mallocator *md::DebugRenderLayer::renderScreenTexturedQuad(uint64_t a1, md::LayoutContext *this, uint64_t a3, uint64_t a4, double a5, float a6, float a7)
{
  v13 = md::LayoutContext::camera(this);
  v15 = gdc::Camera::aspectRatio(v13, v13[46], v13[47]);
  v16 = *(*(a1 + 48) + 152);
  v17 = v16[1];
  if (v17 == *v16)
  {
    v19 = v16[11];
    if (!v19)
    {
      goto LABEL_21;
    }

    v14 = (*(*v19 + 48))(v19);
    v18 = v14;
  }

  else
  {
    v18 = *(v17 - 8);
    v16[1] = v17 - 8;
  }

  v21 = v16[5];
  v20 = v16[6];
  if (v21 >= v20)
  {
    v23 = v16[4];
    v24 = (v21 - v23) >> 3;
    if ((v24 + 1) >> 61)
    {
      goto LABEL_22;
    }

    v25 = v20 - v23;
    v26 = v25 >> 2;
    if (v25 >> 2 <= (v24 + 1))
    {
      v26 = v24 + 1;
    }

    if (v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      v27 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v26;
    }

    v45[4] = v16 + 7;
    if (v27)
    {
      v28 = ggl::zone_mallocator::instance(v14);
      v29 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::ScreenTexturedQuadPipelineSetup *>(v28, v27);
    }

    else
    {
      v29 = 0;
    }

    v31 = &v29[8 * v27];
    v30 = &v29[8 * v24];
    *v30 = v18;
    v22 = v30 + 1;
    v32 = v16[4];
    v33 = v16[5] - v32;
    v34 = v30 - v33;
    memcpy(v30 - v33, v32, v33);
    v35 = v16[4];
    v16[4] = v34;
    v16[5] = v22;
    v36 = v16[6];
    v16[6] = v31;
    v45[2] = v35;
    v45[3] = v36;
    v45[0] = v35;
    v45[1] = v35;
    std::__split_buffer<ggl::Textured::ScreenTexturedQuadPipelineSetup *,geo::allocator_adapter<ggl::Textured::ScreenTexturedQuadPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v45);
  }

  else
  {
    *v21 = v18;
    v22 = v21 + 1;
  }

  v16[5] = v22;
  v45[0] = v18;
  v37 = v16[15];
  if (!v37)
  {
LABEL_21:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_22:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v38 = v15 * a7;
  (*(*v37 + 48))(v37, v45);
  v39 = **(v18 + 17);
  ggl::BufferMemory::BufferMemory(v43);
  ggl::ResourceAccessor::accessConstantData(v45, 0, v39, 1);
  ggl::BufferMemory::operator=(v43, v45);
  ggl::BufferMemory::~BufferMemory(v45);
  v40 = v44;
  *v44 = a5;
  *(v40 + 2) = a6;
  *(v40 + 3) = v38;
  ggl::BufferMemory::~BufferMemory(v43);
  if (!a3)
  {
    a3 = *(*(a1 + 48) + 240);
  }

  **(v18 + 21) = a3;
  v41 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 48) + 160));
  v41[8] = *md::DebugLayerRenderResources::unitTexturedMesh(*(a1 + 48));
  v41[4] = v18;
  v41[3] = *(*(a1 + 48) + 192);
  v45[0] = v41;
  return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a4 + 72), v45);
}

void md::DebugRenderLayer::paintLayerMeshBounds(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, const geo::QuadTile *a7)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  md::SceneContext::renderData(&v34, a5, a4);
  v33 = v34;
  v7 = v34;
  if (gdc::DataKeyIterator::operator!=(v34, v35))
  {
    v8 = gdc::DataIterator::operator*(v7);
    v37 = v36;
    v9 = gdc::Context::context<md::components::SharedTransformData>(*(*v8 + 1328));
    v10 = *(a6 + 3784);
    v11 = gdc::ToCoordinateSystem(v10);
    v12 = 0;
    v13 = 39;
    if (v11)
    {
      v13 = 23;
    }

    v14 = &v9[v13];
    v15 = *(a6 + 5592);
    if (!v15)
    {
      v15 = a6;
    }

    v16 = v14;
    for (i = (v15 + 808); ; ++i)
    {
      v18 = 0;
      v19 = v16;
      do
      {
        v20 = 0;
        v21 = 0.0;
        v22 = i;
        do
        {
          v23 = *v22;
          v22 += 4;
          v21 = v21 + v19[v20++] * v23;
        }

        while (v20 != 4);
        v31[4 * v18++ + v12] = v21;
        v19 += 4;
      }

      while (v18 != 4);
      if (++v12 == 4)
      {
        v24 = 0;
        v25 = v31;
        do
        {
          v27 = *v25;
          v26 = v25[1];
          v25 += 2;
          *&v32[v24] = vcvt_hight_f32_f64(vcvt_f32_f64(v27), v26);
          v24 += 16;
        }

        while (v24 != 64);
        geo::Frustum<float>::Frustum(v31, v32);
        md::GeometryContext::transformConstantData(v9[55], v9[56], &v30, a7, v9, v10, -1);
      }
    }
  }

  if (v36)
  {
    operator delete(v36);
  }
}

void sub_1B2E17808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44)
{
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a44);
  }

  v46 = *(v44 - 216);
  if (v46)
  {
    operator delete(v46);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::view<md::components::Decal const,md::components::MeshInstance const>(uint64_t a1)
{
  v2 = gdc::Registry::storage<md::components::Decal>(a1);
  gdc::Registry::storage<md::components::MeshInstance>(a1);
  return v2;
}

void gdc::RegistryView<md::components::Decal const,md::components::MeshInstance const>::each<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_13>(void *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a1 + 32;
  if (!*a1)
  {
    v5 = 0;
  }

  v6 = v3 + 4;
  if (!v3)
  {
    v6 = 0;
  }

  if (v6[4] - v6[3] >= *(v5 + 32) - *(v5 + 24))
  {
    v6 = v5;
  }

  if (v5 == v6)
  {
    v7 = v4[7];
    v8 = v4[8];
    if (v7 != v8)
    {
      v9 = *a2;
      v88 = a2;
      v90 = a2[1];
      v85 = a2[2];
      v86 = v6;
      v84 = a2[3];
      v10 = v4[10];
      do
      {
        v11 = a1[1];
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v11 + 4, *(v7 + 4));
        v13 = v11[8];
        if (v13 != Index)
        {
          v14 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v11 + 4, *(v7 + 4));
          if (v13 == v14)
          {
            v15 = v11[11];
          }

          else
          {
            v15 = (v11[10] + 112 * ((v14 - v11[7]) >> 3));
          }

          md::GeometryLogic::adjustedMeshBounds(v92, (v15 + 9), *v90);
          v16 = 0;
          v17 = v9;
          while (1)
          {
            v18 = 0;
            v19 = *(v9 + v16 + 8);
            v93 = *(v9 + v16);
            v94 = v19;
            do
            {
              v20 = &v92[v18];
              if (*(&v93 + v18) >= 0.0)
              {
                v20 = &v92[v18 + 12];
              }

              *(&v95 + v18) = *v20;
              v18 += 4;
            }

            while (v18 != 12);
            v21 = 0;
            v22 = 0.0;
            do
            {
              v22 = v22 + (*(v17 + v21) * *(&v95 + v21));
              v21 += 4;
            }

            while (v21 != 12);
            if ((*(v9 + v16 + 12) + v22) < 0.0)
            {
              break;
            }

            v16 += 16;
            v17 += 16;
            if (v16 == 96)
            {
              v24 = v15[9];
              v23 = v15[10];
              v25 = v15[11];
              v26 = v15[12] - v24;
              v27 = v15[13] - v23;
              v28 = v15[14] - v25;
              if (*v10)
              {
                v29 = v85;
              }

              else
              {
                v29 = v84;
              }

              v30 = v29[1];
              v31 = v29[2];
              if (v30 >= v31)
              {
                v33 = (v30 - *v29) >> 6;
                v34 = v33 + 1;
                if ((v33 + 1) >> 58)
                {
LABEL_85:
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v35 = v31 - *v29;
                if (v35 >> 5 > v34)
                {
                  v34 = v35 >> 5;
                }

                if (v35 >= 0x7FFFFFFFFFFFFFC0)
                {
                  v36 = 0x3FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v36 = v34;
                }

                if (v36)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v36);
                }

                v37 = v33 << 6;
                *v37 = v26;
                *(v37 + 12) = 0;
                *(v37 + 4) = 0;
                *(v37 + 20) = v27;
                *(v37 + 24) = 0;
                *(v37 + 32) = 0;
                *(v37 + 40) = v28;
                *(v37 + 44) = 0;
                *(v37 + 48) = v24;
                *(v37 + 52) = v23;
                *(v37 + 56) = v25;
                *(v37 + 60) = 1065353216;
                v38 = *v29;
                v39 = v29[1];
                v40 = (v33 << 6) + *v29 - v39;
                if (v39 != *v29)
                {
                  v41 = (v37 + *v29 - v39);
                  do
                  {
                    v42 = *v38;
                    v43 = v38[1];
                    v44 = v38[3];
                    v41[2] = v38[2];
                    v41[3] = v44;
                    *v41 = v42;
                    v41[1] = v43;
                    v41 += 4;
                    v38 += 4;
                  }

                  while (v38 != v39);
                  v38 = *v29;
                }

                v32 = v37 + 64;
                *v29 = v40;
                v29[1] = v37 + 64;
                v29[2] = 0;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                *v30 = v26;
                *(v30 + 12) = 0;
                *(v30 + 4) = 0;
                *(v30 + 20) = v27;
                *(v30 + 24) = 0;
                *(v30 + 32) = 0;
                *(v30 + 40) = v28;
                *(v30 + 44) = 0;
                *(v30 + 48) = v24;
                *(v30 + 52) = v23;
                *(v30 + 56) = v25;
                v32 = v30 + 64;
                *(v30 + 60) = 1065353216;
              }

              v29[1] = v32;
              break;
            }
          }
        }

        ++v10;
        v7 += 8;
      }

      while (v7 != v8);
      v3 = a1[1];
      v6 = v86;
      a2 = v88;
    }
  }

  v45 = v3 + 4;
  if (!v3)
  {
    v45 = 0;
  }

  if (v45 == v6)
  {
    v46 = v3[7];
    v47 = v3[8];
    if (v46 != v47)
    {
      v48 = *a2;
      v89 = a2[2];
      v91 = a2[1];
      v87 = a2[3];
      v49 = v3[10];
      do
      {
        v50 = *a1;
        v51 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((*a1 + 32), *(v46 + 4));
        v52 = v50[8];
        if (v52 != v51)
        {
          v53 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v50 + 4, *(v46 + 4));
          if (v52 == v53)
          {
            v54 = v50[11];
          }

          else
          {
            v54 = (v50[10] + ((v53 - v50[7]) >> 1));
          }

          md::GeometryLogic::adjustedMeshBounds(v92, (v49 + 9), *v91);
          v55 = 0;
          v56 = v48;
          do
          {
            v57 = 0;
            v58 = *(v48 + v55 + 8);
            v93 = *(v48 + v55);
            v94 = v58;
            do
            {
              v59 = &v92[v57];
              if (*(&v93 + v57) >= 0.0)
              {
                v59 = &v92[v57 + 12];
              }

              *(&v95 + v57) = *v59;
              v57 += 4;
            }

            while (v57 != 12);
            v60 = 0;
            v61 = 0.0;
            do
            {
              v61 = v61 + (*(v56 + v60) * *(&v95 + v60));
              v60 += 4;
            }

            while (v60 != 12);
            if ((*(v48 + v55 + 12) + v61) < 0.0)
            {
              goto LABEL_83;
            }

            v55 += 16;
            v56 += 16;
          }

          while (v55 != 96);
          v63 = v49[9];
          v62 = v49[10];
          v64 = v49[11];
          v65 = v49[12] - v63;
          v66 = v49[13] - v62;
          v67 = v49[14] - v64;
          if (*v54)
          {
            v68 = v89;
          }

          else
          {
            v68 = v87;
          }

          v69 = v68[1];
          v70 = v68[2];
          if (v69 >= v70)
          {
            v72 = (v69 - *v68) >> 6;
            v73 = v72 + 1;
            if ((v72 + 1) >> 58)
            {
              goto LABEL_85;
            }

            v74 = v70 - *v68;
            if (v74 >> 5 > v73)
            {
              v73 = v74 >> 5;
            }

            if (v74 >= 0x7FFFFFFFFFFFFFC0)
            {
              v75 = 0x3FFFFFFFFFFFFFFLL;
            }

            else
            {
              v75 = v73;
            }

            if (v75)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v75);
            }

            v76 = v72 << 6;
            *v76 = v65;
            *(v76 + 12) = 0;
            *(v76 + 4) = 0;
            *(v76 + 20) = v66;
            *(v76 + 24) = 0;
            *(v76 + 32) = 0;
            *(v76 + 40) = v67;
            *(v76 + 44) = 0;
            *(v76 + 48) = v63;
            *(v76 + 52) = v62;
            *(v76 + 56) = v64;
            *(v76 + 60) = 1065353216;
            v77 = *v68;
            v78 = v68[1];
            v79 = (v72 << 6) + *v68 - v78;
            if (v78 != *v68)
            {
              v80 = (v76 + *v68 - v78);
              do
              {
                v81 = *v77;
                v82 = v77[1];
                v83 = v77[3];
                v80[2] = v77[2];
                v80[3] = v83;
                *v80 = v81;
                v80[1] = v82;
                v80 += 4;
                v77 += 4;
              }

              while (v77 != v78);
              v77 = *v68;
            }

            v71 = v76 + 64;
            *v68 = v79;
            v68[1] = v76 + 64;
            v68[2] = 0;
            if (v77)
            {
              operator delete(v77);
            }
          }

          else
          {
            *v69 = v65;
            *(v69 + 12) = 0;
            *(v69 + 4) = 0;
            *(v69 + 20) = v66;
            *(v69 + 24) = 0;
            *(v69 + 32) = 0;
            *(v69 + 40) = v67;
            *(v69 + 44) = 0;
            *(v69 + 48) = v63;
            *(v69 + 52) = v62;
            *(v69 + 56) = v64;
            v71 = v69 + 64;
            *(v69 + 60) = 1065353216;
          }

          v68[1] = v71;
        }

LABEL_83:
        v49 += 28;
        v46 += 8;
      }

      while (v46 != v47);
    }
  }
}

uint64_t ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(void *a1)
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

  std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v8);
  v9 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__tree<std::__value_type<gdc::RequestType,unsigned int>,std::__map_value_compare<gdc::RequestType,std::__value_type<gdc::RequestType,unsigned int>,std::less<gdc::RequestType>,true>,std::allocator<std::__value_type<gdc::RequestType,unsigned int>>>::__emplace_unique_key_args<gdc::RequestType,std::piecewise_construct_t const&,std::tuple<gdc::RequestType&&>,std::tuple<>>(v7);
}

uint64_t *std::__tree<std::__value_type<gdc::RequestType,unsigned int>,std::__map_value_compare<gdc::RequestType,std::__value_type<gdc::RequestType,unsigned int>,std::less<gdc::RequestType>,true>,std::allocator<std::__value_type<gdc::RequestType,unsigned int>>>::__emplace_unique_key_args<gdc::RequestType,std::piecewise_construct_t const&,std::tuple<gdc::RequestType&&>,std::tuple<>>(uint64_t a1, unsigned __int8 a2)
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
      v4 = *(v2 + 28);
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

uint64_t md::DebugLayerRenderResources::unitRectMesh(md::DebugLayerRenderResources *this)
{
  if (!*(this + 34))
  {
    operator new();
  }

  return this + 272;
}

uint64_t md::DebugLayerRenderResources::cameraBoxMesh(md::DebugLayerRenderResources *this)
{
  if (!*(this + 40))
  {
    std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>,std::allocator<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>>,char const(&)[28],unsigned long const&,0>();
  }

  return this + 320;
}

void sub_1B2E18234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  ggl::BufferMemory::~BufferMemory(va);
  ggl::BufferMemory::~BufferMemory(va1);
  v5 = *(v3 - 56);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v3 - 40);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  _Unwind_Resume(a1);
}

float64x2_t geo::Geocentric<double>::toMercator3<double>(double *a1, uint64_t a2)
{
  v13 = 0.0;
  v14 = 0uLL;
  geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(a1, &v13);
  v12 = v14;
  v3 = tan(v13 * 0.5 + 0.785398163);
  v4 = log(v3);
  *&v5.f64[0] = v12;
  v5.f64[1] = v4;
  result = vdupq_n_s64(0x3FC45F306DC9C883uLL);
  __asm { FMOV            V2.2D, #0.5 }

  *a2 = vmlaq_f64(_Q2, result, v5);
  *(a2 + 16) = *(&v12 + 1);
  return result;
}

void md::DebugRenderLayer::layout(md::LayoutContext const&)::$_14::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a3 + 16);
  v8 = *(a2 + 8);
  v9 = 1 << *(a2 + 1);
  v10 = 1.0 / v9;
  v11 = v9 + ~*(a2 + 4);
  v33 = v10 * v8;
  *&v34 = v10 * v11;
  *(&v34 + 1) = v10 + v8 * v10;
  *&v35 = v10 + v11 * v10;
  gdc::GlobeTileUtils::boundsFromMercatorRect(&v56, &v33, v7, v7);
  v12 = md::LayoutContext::cameraType(a1[1]);
  if (gdc::ToCoordinateSystem(v12))
  {
    v47 = v56;
    v49 = v58;
    v48 = v57;
    v50 = v59;
    v51 = v60;
    v52 = v61;
    v53 = v62;
    v54 = v63;
    geo::OrientedBox<double,3u,double,double>::toMatrix(v55, &v47);
  }

  else
  {
    v13 = 1 << *(a2 + 1);
    v14 = 1.0 / v13;
    v15 = v14 * *(a2 + 8);
    v16 = ~*(a2 + 4);
    v35 = 0u;
    v37 = 0;
    v38 = 0u;
    v39 = 0;
    v34 = 0u;
    v41 = 0;
    v33 = v14;
    v36 = v14;
    v40 = v14;
    v42 = v15;
    v43 = v14 * (v13 + v16);
    v44 = xmmword_1B33B0740;
    v17 = *(a3 + 16) / (v14 * 40075017.0);
    v45 = 0uLL;
    v46 = v17;
    gm::Matrix<double,4,4>::affineTranslated<int,void>(v55, &v33, &v45);
  }

  v18 = 0;
  for (i = *a1[2] + 808; ; i += 8)
  {
    v20 = 0;
    v21 = v55;
    do
    {
      v22 = 0;
      v23 = 0.0;
      v24 = i;
      do
      {
        v25 = *v24;
        v24 += 4;
        v23 = v23 + *&v21[v22] * v25;
        v22 += 8;
      }

      while (v22 != 32);
      *(&v33 + 4 * v20++ + v18) = v23;
      v21 += 32;
    }

    while (v20 != 4);
    if (++v18 == 4)
    {
      v26 = 0;
      v27 = &v33;
      do
      {
        v29 = *v27;
        v28 = *(v27 + 2);
        v27 += 4;
        *(&v47 + v26) = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v28);
        v26 += 16;
      }

      while (v26 != 64);
      v30 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(*(v6 + 48) + 112));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v33, *(*(v30 + 136) + 16));
      v31 = 0;
      v32 = v36;
      do
      {
        *(*&v32 + v31) = *(&v47 + v31);
        v31 += 16;
      }

      while (v31 != 64);
      ggl::BufferMemory::~BufferMemory(&v33);
      md::GeometryLogic::createUnitTransformConstantData(&v33);
    }
  }
}

__n128 std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::push_front(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    v7 = 85 * ((v5 - v6) >> 3) - 1;
    v8 = v5 - v6;
    if (v5 == v6)
    {
      v7 = 0;
    }

    if ((v7 - *(a1 + 40)) < 0x55)
    {
      v9 = *(a1 + 24);
      v10 = v9 - *a1;
      if (v8 < v10)
      {
        operator new();
      }

      if (v9 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v11);
    }

    *(a1 + 32) = 85;
    v17 = *(v5 - 8);
    *(a1 + 16) = v5 - 8;
    std::__split_buffer<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *,std::allocator<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *>>::emplace_front<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *&>(a1, &v17);
    v4 = *(a1 + 32);
  }

  v12 = *(a1 + 8);
  v13 = (v12 + 8 * (v4 / 0x55));
  v14 = *v13 - 4080 * (v4 / 0x55) + 48 * v4;
  if (*(a1 + 16) == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4080;
  }

  *(v14 - 48) = *a2;
  *(v14 - 40) = *(a2 + 8);
  *(v14 - 24) = *(a2 + 24);
  result = *(a2 + 32);
  *(v14 - 16) = result;
  v16 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 - 1;
  *(a1 + 40) = v16;
  return result;
}

void sub_1B2E18D04(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::__maybe_remove_back_spare[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 85 * ((v1 - v2) >> 3) - 1;
  }

  if ((v3 - (a1[5] + a1[4])) >= 0xAA)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }
}

void *md::DebugRenderLayer::layout(md::LayoutContext const&)::$_15::operator()(void *result, double *a2, uint64_t a3, double *a4)
{
  if (*a4 > 0.001)
  {
    v6 = result;
    v7 = *result;
    LOBYTE(v92) = vcvtmd_s64_f64(log2(40075017.0 / *a4));
    LOBYTE(v81[0]) = 5;
    LOBYTE(v80[0]) = 30;
    if (qword_1EB8436A0)
    {
      (*(*qword_1EB8436A0 + 48))(&v90);
      v8 = BYTE1(v90);
      v9 = md::LayoutContext::cameraType(v6[1]);
      v10 = gdc::ToCoordinateSystem(v9);
      v11 = *a2;
      if (v10)
      {
        v12 = 1 << SBYTE1(v90);
        v13 = (1 << SBYTE1(v90));
        v14 = cos(v11 + v11) * -559.82 + 111132.92;
        v15 = v14 + cos(v11 * 4.0) * 1.175;
        v16 = v15 + cos(v11 * 6.0) * -0.0023;
        v17 = v11 * 0.5;
        v18 = tan(v17 + 0.78103484);
        v19 = log(v18);
        v20 = tan(v17 + 0.789761487);
        v21 = v16 / (fabs((log(v20) - v19) * 0.159154943) * v13);
      }

      else
      {
        v21 = 40075017.0 / (1 << v8);
        v17 = v11 * 0.5;
        v12 = 1 << SBYTE1(v90);
        v13 = (1 << SBYTE1(v90));
      }

      v22 = *a4;
      v23 = a2[1];
      v24 = *a4 / v21;
      v25 = tan(v17 + 0.785398163);
      v26 = log(v25);
      v27 = 1.0 / v13;
      v28 = v12 + ~HIDWORD(v90);
      v29 = 1.0 / v13 * v91;
      v30 = 1.0 / v13 * v28;
      v31 = (v23 * 0.159154943 + 0.5 - v29) * v13;
      v32 = (v26 * 0.159154943 + 0.5 - v30) * v13;
      v33 = a2[2];
      v92 = v29;
      *&v93 = v30;
      *(&v93 + 1) = v27 + v91 * v27;
      *&v94 = v27 + v28 * v27;
      gdc::GlobeTileUtils::boundsFromMercatorRect(&v82, &v92, v33 - v22 * 0.5, v33 + v22 * 0.5);
      v34 = md::LayoutContext::cameraType(v6[1]);
      if (gdc::ToCoordinateSystem(v34))
      {
        v62 = v83;
        v61 = v82;
        v63 = v84;
        v64 = v85;
        v65 = v86;
        v66 = v87;
        v67 = v88;
        v68 = v89;
        geo::OrientedBox<double,3u,double,double>::toMatrix(&v69, &v61);
      }

      else
      {
        v35 = 1.0 / (1 << SBYTE1(v90));
        v72 = 0u;
        v74 = 0;
        v70 = 0u;
        v71 = 0u;
        v73 = 0u;
        v76 = 0;
        v69 = v35;
        *&v72 = v35;
        v75 = v35;
        v77 = v35 * v91;
        v78 = v35 * ((1 << SBYTE1(v90)) + ~HIDWORD(v90));
        v79 = xmmword_1B33B0740;
      }

      *&v59 = v31;
      *(&v59 + 1) = v32;
      v60 = 0;
      v36 = v80;
      gm::Matrix<double,4,4>::affineTranslated<int,void>(v80, &v69, &v59);
      v37 = 0;
      v99 = 0u;
      v100 = 0u;
      v96 = 0u;
      v97 = 0;
      v94 = 0u;
      v95 = 0u;
      v93 = 0u;
      v101 = 0x3FF0000000000000;
      v98 = 0x3FF0000000000000;
      v92 = v24;
      *&v95 = v24;
      do
      {
        v38 = 0;
        v39 = &v92;
        do
        {
          v40 = 0;
          v41 = 0.0;
          v42 = v36;
          do
          {
            v43 = *v42;
            v42 += 4;
            v41 = v41 + v39[v40++] * v43;
          }

          while (v40 != 4);
          *&v81[4 * v38++ + v37] = v41;
          v39 += 4;
        }

        while (v38 != 4);
        ++v37;
        v36 = (v36 + 8);
      }

      while (v37 != 4);
      v44 = 0;
      for (i = *v6[2] + 808; ; i += 8)
      {
        v46 = 0;
        v47 = v81;
        do
        {
          v48 = 0;
          v49 = 0.0;
          v50 = i;
          do
          {
            v51 = *v50;
            v50 += 4;
            v49 = v49 + *&v47[v48++] * v51;
          }

          while (v48 != 4);
          *(&v92 + 4 * v46++ + v44) = v49;
          v47 += 4;
        }

        while (v46 != 4);
        if (++v44 == 4)
        {
          v52 = 0;
          v53 = &v92;
          do
          {
            v55 = *v53;
            v54 = *(v53 + 2);
            v53 += 4;
            v80[v52++] = vcvt_hight_f32_f64(vcvt_f32_f64(v55), v54);
          }

          while (v52 != 4);
          v56 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(*(v7 + 48) + 112));
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v92, *(*(v56 + 136) + 16));
          v57 = v95;
          *v95 = v80[0];
          v57[1] = v80[1];
          v57[2] = v80[2];
          v57[3] = v80[3];
          ggl::BufferMemory::~BufferMemory(&v92);
          md::GeometryLogic::createUnitTransformConstantData(&v92);
        }
      }
    }

    v58 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v58);
  }

  return result;
}

void md::DebugRenderLayer::paintModelTiles(md::DebugRenderLayer *this, const md::LayoutContext *a2, md::DebugConsole *a3, ggl::CommandBuffer *a4)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::clear(this + 96);
  v8 = *(this + 7);
  *(this + 7) = 0;
  v9 = *(this + 12);
  *(this + 12) = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 9);
  *(this + 14) = v10;
  v11 = *(this + 8);
  *(this + 13) = v11;
  *(this + 8) = 0;
  v12 = *(this + 10);
  *(this + 15) = v12;
  *(this + 32) = *(this + 22);
  if (v12)
  {
    v13 = *(v10 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      v15 = v13 >= v11;
      v14 = v13 % v11;
      if (!v15)
      {
        v14 = v13;
      }
    }

    else
    {
      v14 = (v11 - 1) & v13;
    }

    *(*(this + 12) + 8 * v14) = this + 112;
    *(this + 9) = 0;
    *(this + 10) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::clear(this + 56);
  v16 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 1), 0x99BED48DEFBBD82BLL);
  if (v16 && (v17 = v16[5], *(v17 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v63 = *(v17 + 32);
  }

  else
  {
    v63 = 0;
  }

  v18 = 0;
  do
  {
    v19 = *(&md::DebugRenderLayer::paintModelTiles(md::LayoutContext const&,md::DebugConsole *,ggl::CommandBuffer *)::debugDataTypes + v18);
    v20 = +[VKDebugSettings sharedSettings];
    v67 = [v20 paintTiles];
    v66 = [v20 paintVertices];
    v65 = [v20 paintJunctions];
    v21 = 0;
    v22 = 0;
    v64 = v18;
    if (v19 <= 18)
    {
      if (v19 > 5)
      {
        if (v19 == 6)
        {
          v47 = [v20 paintVenues];
          v22 = 0;
          v23 = 0;
          v21 = 0;
          v24 = 0;
          v39 = v47 == 0;
          v40 = 0x1000000000000;
        }

        else
        {
          if (v19 != 14)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            if (v19 == 16)
            {
              v37 = [v20 drawDebugTransit];
              v21 = [v20 paintLoadReason];
              v22 = 0;
              v24 = 0;
              v25 = 0;
              if (v37)
              {
                v23 = 0x100000000;
              }

              else
              {
                v23 = 0;
              }
            }

            goto LABEL_56;
          }

          v45 = [v20 paintBuildings];
          v21 = [v20 paintLoadReason];
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v39 = v45 == 0;
          v40 = 0x100000000000000;
        }

        goto LABEL_45;
      }

      if (v19 != 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        if (v19 == 2)
        {
          v41 = [v20 paintRoadBoundaries];
          v42 = [v20 paintRoadTiles];
          v62 = [v20 paintLoadReason];
          v29 = v41;

          if (v42)
          {
            v35 = v66;
            v34 = v67;
            v36 = v65;
            v28 = v62;
LABEL_35:
            v24 = 0;
            v30 = 0;
            v31 = 0;
            v33 = 0;
            v32 = 0x10000;
            goto LABEL_57;
          }

          v24 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          goto LABEL_52;
        }

        goto LABEL_56;
      }

LABEL_36:
      v43 = [v20 paintPolygonTiles];
      v44 = [v20 paintCoastlines];
      v21 = [v20 paintLoadReason];
      v23 = 0;
      v24 = 0;
      if (v43)
      {
        v25 = 0x100000000;
      }

      else
      {
        v25 = 0;
      }

      if (v44)
      {
        v22 = 0x1000000;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_56;
    }

    if (v19 > 50)
    {
      if (v19 == 51)
      {
        v48 = [v20 paintDaVinciMetaTiles];
        v22 = 0;
        v23 = 0;
        v21 = 0;
        v25 = 0;
        if (v48)
        {
          v24 = 0x1000000000000;
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_56;
      }

      if (v19 != 57)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        if (v19 == 64)
        {
          v38 = [v20 paintTopographicTiles];
          v22 = 0;
          v23 = 0;
          v21 = 0;
          v24 = 0;
          v39 = v38 == 0;
          v40 = 0x10000000000;
LABEL_45:
          if (v39)
          {
            v25 = 0;
          }

          else
          {
            v25 = v40;
          }
        }

LABEL_56:
        v49 = v21;
        v50 = v23;
        v51 = v25;
        v52 = v20;
        v31 = v22;

        v33 = v51;
        v30 = v50;
        v28 = v49;
        v29 = 0;
        v32 = 0;
        v35 = v66;
        v34 = v67;
        v36 = v65;
        goto LABEL_57;
      }

      goto LABEL_36;
    }

    if (v19 == 19)
    {
      v46 = [v20 paintPointTiles];
      v62 = 0;
LABEL_49:

      v24 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      v32 = 0;
      if (v46)
      {
        v33 = 0x1000000;
      }

      else
      {
        v33 = 0;
      }

LABEL_52:
      v35 = v66;
      v34 = v67;
      v36 = v65;
      v28 = v62;
      goto LABEL_57;
    }

    if (v19 == 20)
    {
      v46 = [v20 paintPoiTiles];
      v62 = [v20 paintLoadReason];
      goto LABEL_49;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (v19 != 44)
    {
      goto LABEL_56;
    }

    v26 = [v20 paintRoadTiles];
    v27 = [v20 paintLoadReason];

    v28 = v27;
    v29 = 0;
    v24 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v35 = v66;
    v34 = v67;
    v36 = v65;
    if (v26)
    {
      goto LABEL_35;
    }

LABEL_57:
    v53 = 256;
    if (v34)
    {
      v54 = 256;
    }

    else
    {
      v54 = 0;
    }

    v55 = v29 | v32 | v33 | v54;
    v56 = 0x10000000000;
    if (!v28)
    {
      v56 = 0;
    }

    v39 = v36 == 0;
    v57 = 0x10000;
    if (v39)
    {
      v57 = 0;
    }

    if (!v35)
    {
      v53 = 0;
    }

    v58 = v57 | v53 | v24 | v56 | v30;
    *v71 = v55;
    v71[14] = BYTE6(v24);
    *&v71[12] = WORD2(v58);
    *&v71[8] = v58 | v31;
    if (v55 | *&v71[7])
    {
      md::SceneContext::renderData(&v69, *v63, v19);
      v68 = v69;
      v59 = v70;
      for (i = v69; gdc::DataKeyIterator::operator!=(i, v59); i = v68)
      {
        v61 = gdc::DataIterator::operator*(i);
        md::DebugRenderLayer::renderTileData(this, a2, v71, *v61, v19, a4, a3);
        gdc::DataIterator::operator++(&v68);
      }
    }

    v18 = v64 + 2;
  }

  while (v64 != 20);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::clear(this + 96);
}

void md::DebugRenderLayer::renderTileData(void *a1, md::LayoutContext *a2, _BYTE *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v10 = +[VKDebugSettings sharedSettings];
  [v10 daVinciMetaTileOpacity];
  v12 = v11;

  v114 = (a4 + 648);
  v13 = *(a4 + 648);
  if (a5 == 51)
  {
    if (!v13)
    {
      v125 = 1065353216;
      v126 = 0;
      v127 = v12;
      md::DebugRenderLayer::renderSolidQuadTile(a1, a2, a4 + 168, &v125, a6, a7, "");
    }
  }

  else if (!v13)
  {
    return;
  }

  v113 = a1 + 7;
  if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(a1 + 7, v13))
  {
    if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(a1 + 12, v13))
    {
      operator new();
    }

    v125 = a4 + 648;
    std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::__emplace_unique_key_args<std::shared_ptr<geo::codec::VectorTile>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<geo::codec::VectorTile> const&>,std::tuple<>>(a1 + 12, v13);
    v14 = 0x9DDFEA08EB382D69 * ((8 * (*v114 & 0x1FFFFFFF) + 8) ^ HIDWORD(*v114));
    v15 = 0x9DDFEA08EB382D69 * (HIDWORD(*v114) ^ (v14 >> 47) ^ v14);
    v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
    v17 = a1[8];
    if (v17)
    {
      v18 = vcnt_s8(v17);
      v18.i16[0] = vaddlv_u8(v18);
      if (v18.u32[0] > 1uLL)
      {
        v19 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
        if (v16 >= *&v17)
        {
          v19 = v16 % *&v17;
        }
      }

      else
      {
        v19 = v16 & (*&v17 - 1);
      }

      v20 = *(*v113 + 8 * v19);
      if (v20)
      {
        for (i = *v20; i; i = *i)
        {
          v22 = i[1];
          if (v22 == v16)
          {
            if (i[2] == *v114)
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v18.u32[0] > 1uLL)
            {
              if (v22 >= *&v17)
              {
                v22 %= *&v17;
              }
            }

            else
            {
              v22 &= *&v17 - 1;
            }

            if (v22 != v19)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

LABEL_26:
  v125 = a4 + 648;
  v23 = std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::__emplace_unique_key_args<std::shared_ptr<geo::codec::VectorTile>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<geo::codec::VectorTile> const&>,std::tuple<>>(v113, *v114)[4];
  v24 = *(a2 + 1);
  v25 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v24, 0x1AF456233693CD46uLL);
  if (v25 && (v26 = v25[5], *(v26 + 8) == 0x1AF456233693CD46))
  {
    v27 = *(v26 + 32);
  }

  else
  {
    v27 = 0;
  }

  v28 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v24, 0x3070CB6B3C7F21D3uLL);
  if (v28 && (v29 = v28[5], *(v29 + 8) == 0x3070CB6B3C7F21D3))
  {
    v30 = *(v29 + 32);
  }

  else
  {
    v30 = 0;
  }

  v31 = *(*v114 + 800);
  v32 = 0.0;
  if (v31 && *(v31 + 24))
  {
    gdc::Tiled::unitsPerMeter((a4 + 168));
    v32 = (1.0 / v33);
  }

  v34 = md::LayoutContext::cameraType(a2);
  v35 = gdc::ToCoordinateSystem(v34);
  md::GeometryLogic::tileMatrix(&v125, v35, (a4 + 168), v32, v36);
  v37 = 0;
  v38 = (v27 + 808);
  do
  {
    v39 = 0;
    v40 = &v125;
    do
    {
      v41 = 0;
      v42 = 0.0;
      v43 = v38;
      do
      {
        v44 = *v43;
        v43 += 4;
        v42 = v42 + *&v40[v41++] * v44;
      }

      while (v41 != 4);
      *&v119[4 * v39++ + v37] = v42;
      v40 += 4;
    }

    while (v39 != 4);
    ++v37;
    ++v38;
  }

  while (v37 != 4);
  v45 = 0;
  v46 = v119;
  do
  {
    v48 = *v46;
    v47 = *(v46 + 1);
    v46 += 4;
    *(&v121 + v45) = vcvt_hight_f32_f64(vcvt_f32_f64(v48), v47);
    v45 += 16;
  }

  while (v45 != 64);
  if (a3[2] == 1)
  {
    v49 = v23[16];
    if (v49 && *(**(v49 + 64) + 8) <= *(**(v49 + 64) + 48) - *(**(v49 + 64) + 40))
    {
      v50 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v50 + 136) + 16));
      v51 = v120;
      v52 = v122;
      *v120 = v121;
      v51[1] = v52;
      v53 = v124;
      v51[2] = v123;
      v51[3] = v53;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(0.0, v32, v119, v30, (a4 + 168), *(v27 + 3784), -1);
    }

    v54 = v23[17];
    if (v54 && *(**(v54 + 64) + 8) <= *(**(v54 + 64) + 48) - *(**(v54 + 64) + 40))
    {
      v55 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v55 + 136) + 16));
      v56 = v120;
      v57 = v122;
      *v120 = v121;
      v56[1] = v57;
      v58 = v124;
      v56[2] = v123;
      v56[3] = v58;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(0.0, v32, v119, v30, (a4 + 168), *(v27 + 3784), -1);
    }
  }

  if (a3[3] == 1)
  {
    v59 = v23[22];
    if (v59)
    {
      if (*(**(v59 + 64) + 8) <= *(**(v59 + 64) + 48) - *(**(v59 + 64) + 40))
      {
        v60 = ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(*(a1[6] + 136));
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v60 + 136));
        v61 = v120;
        v62 = v122;
        *v120 = v121;
        v61[1] = v62;
        v63 = v124;
        v61[2] = v123;
        v61[3] = v63;
        ggl::BufferMemory::~BufferMemory(v119);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v60 + 136));
        v120[5] = xmmword_1B33B1150;
        ggl::BufferMemory::~BufferMemory(v119);
        md::GeometryContext::transformConstantData(0.0, 0.0, v119, v30, (a4 + 168), *(v27 + 3784), -1);
      }
    }
  }

  if ((a3[4] & 1) != 0 || (a3[8] & 1) != 0 || (a3[6] & 1) != 0 || a3[7] == 1)
  {
    v64 = v23[18];
    if (v64)
    {
      if (*(**(v64 + 64) + 8) <= *(**(v64 + 64) + 48) - *(**(v64 + 64) + 40))
      {
        v65 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v65 + 136) + 16));
        v66 = v120;
        v67 = v122;
        *v120 = v121;
        v66[1] = v67;
        v68 = v124;
        v66[2] = v123;
        v66[3] = v68;
        ggl::BufferMemory::~BufferMemory(v119);
        md::GeometryContext::transformConstantData(0.0, 0.0, v119, v30, (a4 + 168), *(v27 + 3784), -1);
      }
    }
  }

  if (a3[6] == 1)
  {
    v69 = v23[19];
    if (v69 && *(**(v69 + 64) + 8) <= *(**(v69 + 64) + 48) - *(**(v69 + 64) + 40))
    {
      v70 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v70 + 136) + 16));
      v71 = v120;
      v72 = v122;
      *v120 = v121;
      v71[1] = v72;
      v73 = v124;
      v71[2] = v123;
      v71[3] = v73;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(0.0, 0.0, v119, v30, (a4 + 168), *(v27 + 3784), -1);
    }

    v74 = v23[20];
    if (v74 && *(**(v74 + 64) + 8) <= *(**(v74 + 64) + 48) - *(**(v74 + 64) + 40))
    {
      v75 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v75 + 136) + 16));
      v76 = v120;
      v77 = v122;
      *v120 = v121;
      v76[1] = v77;
      v78 = v124;
      v76[2] = v123;
      v76[3] = v78;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(0.0, 0.0, v119, v30, (a4 + 168), *(v27 + 3784), -1);
    }
  }

  if (a3[9] == 1)
  {
    v79 = v23[23];
    if (v79)
    {
      if (*(**(v79 + 64) + 8) <= *(**(v79 + 64) + 48) - *(**(v79 + 64) + 40))
      {
        v80 = ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(*(a1[6] + 136));
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v80 + 136));
        v81 = v120;
        v82 = v122;
        *v120 = v121;
        v81[1] = v82;
        v83 = v124;
        v81[2] = v123;
        v81[3] = v83;
        ggl::BufferMemory::~BufferMemory(v119);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v80 + 136));
        v120[5] = xmmword_1B33B1150;
        ggl::BufferMemory::~BufferMemory(v119);
        md::GeometryContext::transformConstantData(0.0, 0.0, v119, v30, (a4 + 168), *(v27 + 3784), -1);
      }
    }
  }

  if (a3[10] == 1)
  {
    v84 = v23[24];
    if (v84 && *(**(v84 + 64) + 8) <= *(**(v84 + 64) + 48) - *(**(v84 + 64) + 40))
    {
      v85 = ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(*(a1[6] + 136));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v85 + 136));
      v86 = v120;
      v87 = v122;
      *v120 = v121;
      v86[1] = v87;
      v88 = v124;
      v86[2] = v123;
      v86[3] = v88;
      ggl::BufferMemory::~BufferMemory(v119);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v85 + 136));
      v120[5] = xmmword_1B33B0720;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(0.0, 0.0, v119, v30, (a4 + 168), *(v27 + 3784), -1);
    }

    v89 = v23[26];
    if (v89 && *(**(v89 + 64) + 8) <= *(**(v89 + 64) + 48) - *(**(v89 + 64) + 40))
    {
      v90 = ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(*(a1[6] + 136));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v90 + 136));
      v91 = v120;
      v92 = v122;
      *v120 = v121;
      v91[1] = v92;
      v93 = v124;
      v91[2] = v123;
      v91[3] = v93;
      ggl::BufferMemory::~BufferMemory(v119);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v90 + 136));
      v120[5] = xmmword_1B33AFEE0;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(0.0, 0.0, v119, v30, (a4 + 168), *(v27 + 3784), -1);
    }

    v94 = v23[25];
    if (v94 && *(**(v94 + 64) + 8) <= *(**(v94 + 64) + 48) - *(**(v94 + 64) + 40))
    {
      v95 = ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(*(a1[6] + 136));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v95 + 136));
      v96 = v120;
      v97 = v122;
      *v120 = v121;
      v96[1] = v97;
      v98 = v124;
      v96[2] = v123;
      v96[3] = v98;
      ggl::BufferMemory::~BufferMemory(v119);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v95 + 136));
      v120[5] = xmmword_1B33B06F0;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(0.0, 0.0, v119, v30, (a4 + 168), *(v27 + 3784), -1);
    }
  }

  if (a3[11] == 1)
  {
    v99 = v23[21];
    if (v99)
    {
      if (*(**(v99 + 64) + 8) <= *(**(v99 + 64) + 48) - *(**(v99 + 64) + 40))
      {
        v100 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v100 + 136) + 16));
        v101 = v120;
        v102 = v122;
        *v120 = v121;
        v101[1] = v102;
        v103 = v124;
        v101[2] = v123;
        v101[3] = v103;
        ggl::BufferMemory::~BufferMemory(v119);
        md::GeometryContext::transformConstantData(0.0, 0.0, v119, v30, (a4 + 168), *(v27 + 3784), -1);
      }
    }
  }

  if (a3[12] == 1)
  {
    v104 = v23[27];
    if (v104)
    {
      if (*(**(v104 + 64) + 8) <= *(**(v104 + 64) + 48) - *(**(v104 + 64) + 40))
      {
        v105 = ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(*(a1[6] + 136));
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v105 + 136));
        v106 = v120;
        v107 = v122;
        *v120 = v121;
        v106[1] = v107;
        v108 = v124;
        v106[2] = v123;
        v106[3] = v108;
        ggl::BufferMemory::~BufferMemory(v119);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v105 + 136));
        v120[5] = xmmword_1B33B0720;
        ggl::BufferMemory::~BufferMemory(v119);
        md::GeometryContext::transformConstantData(0.0, 0.0, v119, v30, (a4 + 168), *(v27 + 3784), -1);
      }
    }
  }

  if ((a3[1] & 1) != 0 || (*a3 & 1) != 0 || (a3[2] & 1) != 0 || (a3[3] & 1) != 0 || (a3[4] & 1) != 0 || (a3[8] & 1) != 0 || (a3[6] & 1) != 0 || (a3[7] & 1) != 0 || (a3[9] & 1) != 0 || (a3[10] & 1) != 0 || (a3[11] & 1) != 0 || (a3[14] & 1) != 0 || a3[5] == 1)
  {
    v109 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v109 + 136) + 16));
    v110 = v120;
    v111 = v122;
    *v120 = v121;
    v110[1] = v111;
    v112 = v124;
    v110[2] = v123;
    v110[3] = v112;
    ggl::BufferMemory::~BufferMemory(v119);
    md::GeometryContext::transformConstantData(0.0, 0.0, v119, v30, (a4 + 168), *(v27 + 3784), -1);
  }
}

uint64_t ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(void *a1)
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
    v9 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v9 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::Point::PipelineSetup *,geo::allocator_adapter<ggl::Point::PipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v9);
  v10 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v10);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return md::TrafficDynamicTileResource::QuadTileFromResourceKey(v7, v8);
}

uint64_t md::TrafficDynamicTileResource::QuadTileFromResourceKey(md::TrafficDynamicTileResource *this, const gdc::ResourceKey *a2)
{
  Int32 = gdc::ResourceKey::getInt32(a2, 2u);
  v5 = gdc::ResourceKey::getInt32(a2, 1u);
  result = gdc::ResourceKey::getInt32(a2, 0);
  *this = -1;
  *(this + 1) = Int32;
  *(this + 1) = v5;
  *(this + 2) = result;
  *(this + 2) = 0;
  *(this + 24) = 1;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Point::PipelineSetup *,geo::allocator_adapter<ggl::Point::PipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Point::PipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Point::PipelineSetup *,geo::allocator_adapter<ggl::Point::PipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Point::PipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Point::PipelineSetup *>(uint64_t a1, void *a2)
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

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::__emplace_unique_key_args<std::shared_ptr<geo::codec::VectorTile>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<geo::codec::VectorTile> const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
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

  v8 = *(*a1 + 8 * v7);
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

  return v9;
}

void sub_1B2E1D690(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::ModelTileDebugData>::__on_zero_shared(void *a1)
{
  v2 = a1[31];
  a1[31] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[30];
  a1[30] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[29];
  a1[29] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[28];
  a1[28] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[27];
  a1[27] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[26];
  a1[26] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a1[25];
  a1[25] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a1[24];
  a1[24] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = a1[23];
  a1[23] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = a1[22];
  a1[22] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = a1[21];
  a1[21] = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = a1[20];
  a1[20] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = a1[19];
  a1[19] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = a1[18];
  if (v15)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }
}

void std::__shared_ptr_emplace<md::ModelTileDebugData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gm::Matrix<double,4,4>::affineTranslated<int,void>(uint64_t result, double *a2, __int128 *a3)
{
  v3 = 0;
  v15 = 0;
  v14 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0x3FF0000000000000;
  v13 = 0x3FF0000000000000uLL;
  v16 = 0x3FF0000000000000;
  v17 = 0;
  v18 = *a3;
  v19 = *(a3 + 2);
  v20 = 0x3FF0000000000000;
  do
  {
    v4 = 0;
    v5 = &v10;
    do
    {
      v6 = 0;
      v7 = 0.0;
      v8 = a2;
      do
      {
        v9 = *v8;
        v8 += 4;
        v7 = v7 + *&v5[v6++] * v9;
      }

      while (v6 != 4);
      *(result + 8 * (4 * v4++ + v3)) = v7;
      v5 += 4;
    }

    while (v4 != 4);
    ++v3;
    ++a2;
  }

  while (v3 != 4);
  return result;
}

uint64_t md::DebugLayerRenderResources::unitBoxMesh(md::DebugLayerRenderResources *this)
{
  if (!*(this + 38))
  {
    operator new();
  }

  return this + 304;
}

void sub_1B2E1DD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  ggl::BufferMemory::~BufferMemory(&a9);
  ggl::BufferMemory::~BufferMemory(&a15);
  std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  _Unwind_Resume(a1);
}

uint64_t drawStringAt(void *a1, float32x2_t *a2, uint64_t a3, float32x4_t *a4, const char *a5)
{
  v8 = 0;
  v25 = xmmword_1B33B11C0;
  do
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (*(&v25 + v9) * *(a3 + 4 * v9));
      v9 += 4;
    }

    while (v9 != 16);
    *&v26.i32[v8++] = v10;
    a3 += 4;
  }

  while (v8 != 4);
  v23 = *v26.i8;
  v24 = vdupq_laneq_s32(v26, 3).u64[0];
  [a1 sizeInPixels];
  a2[12].i32[0] = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(*a4, vdupq_n_s32(0x437F0000u)))), *&v11.f64[0]).u32[0];
  v12 = vdiv_f32(v23, v24);
  __asm { FMOV            V3.2S, #1.0 }

  v18.i32[0] = vadd_f32(v12, _D3).u32[0];
  v18.i32[1] = vsub_f32(_D3, v12).i32[1];
  v11.f64[1] = v19;
  __asm { FMOV            V1.2D, #0.5 }

  a2[1] = vcvt_f32_f64(vmulq_f64(vmulq_f64(v11, _Q1), vcvtq_f64_f32(v18)));
  a2[5] = 0x100000001;
  v21 = strlen(a5);

  return ggl::DebugConsole::drawString(a2, a5, v21);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A208F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

const void **std::__split_buffer<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *,std::allocator<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *>>::emplace_front<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

double std::__function::__func<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_10,std::allocator<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_10>,geo::QuadTile ()(unsigned char const&,geo::Coordinate3D<geo::Radians,double> const&)>::operator()@<D0>(char *a1@<X1>, double *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v6 = tan(*a2 * 0.5 + 0.785398163);
  v7 = log(v6);
  v8 = *a1;
  v9 = 1 << *a1;
  v10 = vcvtmd_s64_f64((v7 * 0.159154943 + 0.5) * v9);
  result = (v5 * 0.159154943 + 0.5) * v9;
  *a3 = -1;
  *(a3 + 1) = v8;
  *(a3 + 4) = v9 + ~v10;
  *(a3 + 8) = vcvtmd_s64_f64(result);
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::BasePipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::BasePipelineSetup *>(uint64_t a1, uint64_t a2)
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

uint64_t gdc::Registry::storage<md::components::Decal>(uint64_t a1)
{
  v3 = 0x43A96E24B5C6AF5;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x43A96E24B5C6AF5uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::Decal>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 1;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 4);
    a1[11] = v8 - 4;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::Decal>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::Decal>::~ComponentStorageWrapper(uint64_t a1)
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

void md::DebugRenderLayer::renderInstancedMesh(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (*a7 != a7[1])
  {
    std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
    operator new();
  }
}

ggl::zone_mallocator *std::vector<ggl::Debug::InstancedBasePipelineSetup *,geo::allocator_adapter<ggl::Debug::InstancedBasePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::InstancedBasePipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Debug::InstancedBasePipelineSetup *,geo::allocator_adapter<ggl::Debug::InstancedBasePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::InstancedBasePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::InstancedBasePipelineSetup *>(uint64_t a1, void *a2)
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

void ggl::DeviceDataTyped<ggl::Debug::InstanceTransform>::~DeviceDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DeviceDataTyped<ggl::Debug::InstanceTransform>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03C88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::DebugLayerRenderResources::unitTexturedMesh(md::DebugLayerRenderResources *this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this + 256;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::ScreenTexturedQuadPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::ScreenTexturedQuadPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Textured::Pos2DUVExtendedPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVExtendedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::Pos2DUVExtendedPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Textured::Pos2DUVExtendedPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVExtendedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::Pos2DUVExtendedPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::Pos2DUVExtendedPipelineSetup *>(uint64_t a1, void *a2)
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

uint64_t md::DebugLayerRenderResources::unitQuadMesh(md::DebugLayerRenderResources *this)
{
  if (!*(this + 36))
  {
    operator new();
  }

  return this + 288;
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_6,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_7,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_8,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_9>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<double,3>,std::__variant_detail::_Trait::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>> const&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  geo::OrientedBox<double,3u,double,double>::toMatrix(v5, a2);
  v3.i32[0] = **(v2 + 64);
  v4 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v3))), vdupq_n_s32(0x3B808081u));
  operator new();
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_6,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_7,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_8,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_9>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<double,3>,std::__variant_detail::_Trait::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>> const&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a2 + 3);
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0x3FF0000000000000;
  v13 = v3;
  v14 = v3;
  v15 = v3;
  geo::Transform<double>::toMatrix(v6, &v7);
  v4.i32[0] = **(v2 + 112);
  v5 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v4))), vdupq_n_s32(0x3B808081u));
  operator new();
}

uint64_t md::DebugLayerRenderResources::icoSphere(md::DebugLayerRenderResources *this)
{
  if (!*(this + 44))
  {
    v4 = 0u;
    v5 = 0u;
    v6 = 1065353216;
    memset(v3, 0, sizeof(v3));
    memset(v2, 0, sizeof(v2));
    md::GeometryLogic::createIcoSphere(v3, v2, 1);
    std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>,std::allocator<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>>,char const(&)[28],unsigned long const&,0>();
  }

  return this + 352;
}

void sub_1B2E1F964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26)
{
  ggl::BufferMemory::~BufferMemory(&a11);
  ggl::BufferMemory::~BufferMemory(&a17);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a24);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  if (v26)
  {
    operator delete(v26);
  }

  v29 = *(v27 - 120);
  if (v29)
  {
    *(v27 - 112) = v29;
    operator delete(v29);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v27 - 96);
  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_6,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_7,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_8,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_9>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<double,3>,std::__variant_detail::_Trait::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>> const&>(uint64_t *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v14 = 0;
  v16 = 0;
  v11 = 0u;
  v12 = 0u;
  v15 = 0u;
  v18 = 0;
  v22 = 0x3FF0000000000000;
  v10 = v6 - v3;
  v13 = v7 - v4;
  v17 = v8 - v5;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  LODWORD(v3) = **(v2 + 16);
  v9 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*&v3))), vdupq_n_s32(0x3B808081u));
  operator new();
}

void std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_1,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_2,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_3,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_4,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<float,3>,std::__variant_detail::_Trait::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo<float,2u,float,float>> const&>(__int128 ****a1, float *a2)
{
  v3 = **a1;
  memset(v33, 0, 24);
  v32 = 0u;
  v31 = 0u;
  v33[1] = 1065353216;
  v33[6] = 1065353216;
  v4 = a2[9] - a2[7];
  v5 = a2[10] - a2[8];
  *&v33[3] = *(a2 + 7);
  v30 = v4;
  *&v32 = v5;
  gm::Quaternion<float>::toMatrix(&v25, a2 + 3);
  gm::Matrix<float,4,4>::Matrix<4,void>(v29, &v25, a2);
  gm::operator*<float,4,4,4>(&v25, v29, &v30);
  v6 = v3[1];
  v7 = v3[2];
  if (v6 >= v7)
  {
    v11 = (v6 - *v3) >> 6;
    v12 = v11 + 1;
    if ((v11 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v7 - *v3;
    if (v13 >> 5 > v12)
    {
      v12 = v13 >> 5;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFC0)
    {
      v14 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v14);
    }

    v15 = (v11 << 6);
    v16 = v26;
    *v15 = v25;
    v15[1] = v16;
    v17 = v28;
    v15[2] = v27;
    v15[3] = v17;
    v10 = (v11 << 6) + 64;
    v18 = *v3;
    v19 = v3[1];
    v20 = (v15 + *v3 - v19);
    if (*v3 != v19)
    {
      v21 = v20;
      do
      {
        v22 = *v18;
        v23 = v18[1];
        v24 = v18[3];
        v21[2] = v18[2];
        v21[3] = v24;
        *v21 = v22;
        v21[1] = v23;
        v21 += 4;
        v18 += 4;
      }

      while (v18 != v19);
      v18 = *v3;
    }

    *v3 = v20;
    v3[1] = v10;
    v3[2] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v8 = v26;
    *v6 = v25;
    *(v6 + 1) = v8;
    v9 = v28;
    *(v6 + 2) = v27;
    *(v6 + 3) = v9;
    v10 = (v6 + 64);
  }

  v3[1] = v10;
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_1,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_2,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_3,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_4,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<float,3>,std::__variant_detail::_Trait::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo<float,2u,float,float>> const&>(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(*a1 + 16);
  memset(v31, 0, sizeof(v31));
  v30 = 0u;
  v34 = 1065353216;
  do
  {
    *&v28[v3] = *(a2 + v3 * 4 + 40) - *(a2 + v3 * 4 + 28);
    ++v3;
  }

  while (v3 != 3);
  v32 = *(a2 + 28);
  v33 = *(a2 + 36);
  v29 = v28[0];
  v31[0] = v28[1];
  v31[5] = v28[2];
  gm::Quaternion<float>::toMatrix(&v24, (a2 + 12));
  gm::Matrix<float,4,4>::Matrix<4,void>(v28, &v24, a2);
  gm::operator*<float,4,4,4>(&v24, v28, &v29);
  v5 = v4[1];
  v6 = v4[2];
  if (v5 >= v6)
  {
    v10 = (v5 - *v4) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v6 - *v4;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v13);
    }

    v14 = (v10 << 6);
    v15 = v25;
    *v14 = v24;
    v14[1] = v15;
    v16 = v27;
    v14[2] = v26;
    v14[3] = v16;
    v9 = (v10 << 6) + 64;
    v17 = *v4;
    v18 = v4[1];
    v19 = (v14 + *v4 - v18);
    if (*v4 != v18)
    {
      v20 = v19;
      do
      {
        v21 = *v17;
        v22 = v17[1];
        v23 = v17[3];
        v20[2] = v17[2];
        v20[3] = v23;
        *v20 = v21;
        v20[1] = v22;
        v20 += 4;
        v17 += 4;
      }

      while (v17 != v18);
      v17 = *v4;
    }

    *v4 = v19;
    v4[1] = v9;
    v4[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v7 = v25;
    *v5 = v24;
    *(v5 + 1) = v7;
    v8 = v27;
    *(v5 + 2) = v26;
    *(v5 + 3) = v8;
    v9 = (v5 + 64);
  }

  v4[1] = v9;
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_1,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_2,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_3,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_4,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<float,3>,std::__variant_detail::_Trait::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo<float,2u,float,float>> const&>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v28 = *a2;
  v29 = *(a2 + 2);
  v3 = *(a2 + 3);
  v30 = xmmword_1B33B0710;
  v31 = v3;
  v32 = v3;
  v33 = v3;
  v4 = *(v2 + 24);
  geo::Transform<float>::toMatrix(&v24, &v28);
  v5 = v4[1];
  v6 = v4[2];
  if (v5 >= v6)
  {
    v10 = (v5 - *v4) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v6 - *v4;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v13);
    }

    v14 = (v10 << 6);
    v15 = v25;
    *v14 = v24;
    v14[1] = v15;
    v16 = v27;
    v14[2] = v26;
    v14[3] = v16;
    v9 = (v10 << 6) + 64;
    v17 = *v4;
    v18 = v4[1];
    v19 = (v14 + *v4 - v18);
    if (*v4 != v18)
    {
      v20 = v19;
      do
      {
        v21 = *v17;
        v22 = v17[1];
        v23 = v17[3];
        v20[2] = v17[2];
        v20[3] = v23;
        *v20 = v21;
        v20[1] = v22;
        v20 += 4;
        v17 += 4;
      }

      while (v17 != v18);
      v17 = *v4;
    }

    *v4 = v19;
    v4[1] = v9;
    v4[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v7 = v25;
    *v5 = v24;
    *(v5 + 1) = v7;
    v8 = v27;
    *(v5 + 2) = v26;
    *(v5 + 3) = v8;
    v9 = (v5 + 64);
  }

  v4[1] = v9;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_1,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_2,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_3,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_4,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<float,3>,std::__variant_detail::_Trait::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo<float,2u,float,float>> const&>(uint64_t a1, float *a2)
{
  v2 = *(*a1 + 8);
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = a2[3] - *a2;
  v7 = a2[4] - v3;
  v8 = a2[5] - v5;
  v9 = v2[1];
  v10 = v2[2];
  if (v9 >= v10)
  {
    v12 = (v9 - *v2) >> 6;
    v13 = v12 + 1;
    if ((v12 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = v10 - *v2;
    if (v14 >> 5 > v13)
    {
      v13 = v14 >> 5;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFC0)
    {
      v15 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v15);
    }

    v16 = v12 << 6;
    *v16 = v6;
    *(v16 + 12) = 0;
    *(v16 + 4) = 0;
    *(v16 + 20) = v7;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = v8;
    *(v16 + 44) = 0;
    *(v16 + 48) = v4;
    *(v16 + 52) = v3;
    *(v16 + 56) = v5;
    *(v16 + 60) = 1065353216;
    v11 = (v12 << 6) + 64;
    v17 = *v2;
    v18 = v2[1];
    v19 = (v16 + *v2 - v18);
    if (v18 != *v2)
    {
      v20 = v19;
      do
      {
        v21 = *v17;
        v22 = v17[1];
        v23 = v17[3];
        v20[2] = v17[2];
        v20[3] = v23;
        *v20 = v21;
        v20[1] = v22;
        v20 += 4;
        v17 += 4;
      }

      while (v17 != v18);
      v17 = *v2;
    }

    *v2 = v19;
    v2[1] = v11;
    v2[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v9 = v6;
    *(v9 + 12) = 0;
    *(v9 + 4) = 0;
    *(v9 + 20) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = v8;
    *(v9 + 44) = 0;
    *(v9 + 48) = v4;
    *(v9 + 52) = v3;
    *(v9 + 56) = v5;
    v11 = v9 + 64;
    *(v9 + 60) = 1065353216;
  }

  v2[1] = v11;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::pop(void *a1)
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
    v9 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v9 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v9);
  v10 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v10);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::push_back[abi:nn200100](v7, v8);
}

ggl::zone_mallocator *std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::CommonMesh::Pos4Mesh *>(v11, v10);
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
    result = std::__split_buffer<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::CommonMesh::Pos4Mesh *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::vector<ggl::Debug::LinePipelineSetup *,geo::allocator_adapter<ggl::Debug::LinePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::LinePipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Debug::LinePipelineSetup *,geo::allocator_adapter<ggl::Debug::LinePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::LinePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::LinePipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Debug::LineMesh *,geo::allocator_adapter<ggl::Debug::LineMesh *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::LineMesh *>(v11, v10);
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
    result = std::__split_buffer<ggl::Debug::LineMesh *,geo::allocator_adapter<ggl::Debug::LineMesh *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::LineMesh *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::LineMesh *>(uint64_t a1, void *a2)
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

void ggl::ConstantDataTyped<ggl::Textured::ScreenTexturedQuad>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Textured::ScreenTexturedQuad>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03BA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E20D30(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void ggl::ConstantDataTyped<ggl::Textured::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Textured::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A39F70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Point::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Point::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E213D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ggl::ConstantDataTyped<ggl::Debug::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Debug::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A37148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Debug::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Debug::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A370F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E21DCC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ggl::ConstantDataTyped<ggl::Debug::Viewport>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Debug::Viewport>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E2213C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<ggl::Textured::ScreenTexturedQuadPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Textured::Pos2DUVExtendedPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A39E90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Point::PipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Debug::InstancedBasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A036F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Debug::LinePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A036C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Debug::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A372C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Venue3DStroke::HorizontalDefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Venue3DStroke::HorizontalDefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Venue3DStroke::HorizontalVenue3DStrokeMesh::~HorizontalVenue3DStrokeMesh(ggl::Venue3DStroke::HorizontalVenue3DStrokeMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Venue3DStroke::HorizontalVenue3DStrokeMesh::~HorizontalVenue3DStrokeMesh(ggl::Venue3DStroke::HorizontalVenue3DStrokeMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::Venue3DStroke::HorizontalDefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Venue3DStroke::HorizontalDefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Venue3DStroke::VerticalDefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Venue3DStroke::VerticalDefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Venue3DStroke::VerticalVenue3DStrokeMesh::~VerticalVenue3DStrokeMesh(ggl::Venue3DStroke::VerticalVenue3DStrokeMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Venue3DStroke::VerticalVenue3DStrokeMesh::~VerticalVenue3DStrokeMesh(ggl::Venue3DStroke::VerticalVenue3DStrokeMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::Venue3DStroke::VerticalDefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Venue3DStroke::VerticalDefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup::~HorizontalVenue3DStrokePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup::~VerticalVenue3DStrokePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::MuninCrossFadeRenderLayer::layout(md::MuninCrossFadeRenderLayer *this, const md::LayoutContext *a2)
{
  v4 = gdc::Context::context<md::MuninSceneContext>(*(a2 + 1))[4];
  if (v4)
  {
    if (*(this + 17) != v4)
    {
      v5 = *(v4 + 4);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:nn200100]();
        goto LABEL_39;
      }

      (*(*v5 + 48))(v5);
      std::unique_ptr<ggl::Drawable>::reset[abi:nn200100](this + 16, 0);
    }

    v6 = *(*(*(this + 5) + 24) + 8);
    v7 = *(v6 + 3);
    v8 = *(v6 + 4);
    __asm { FMOV            V8.2S, #1.0 }

    v14 = v8 - v7;
    if (v8 != v7)
    {
      v15 = 0;
      v16 = v14 >> 3;
      while (1)
      {
        v17 = *(v7 + 8 * v15);
        if (*v17 == 4)
        {
          v18 = *(v17 + 8);
          v19 = *(v6 + 18);
          if (v18 < (*(v6 + 19) - v19) >> 3)
          {
            break;
          }
        }

        if (++v15 >= v16)
        {
          goto LABEL_21;
        }
      }

      v20 = *(v19 + 8 * v18);
      if (v20)
      {
        v21 = *(v20 + 72);
        v55[0] = *(v20 + 56);
        v55[1] = v21;
        v22 = v21;
        if (v21 != *(this + 4))
        {
          goto LABEL_18;
        }

        if (v21)
        {
          v23 = v55;
          v24 = (this + 48);
          while (1)
          {
            v26 = *v23++;
            v25 = v26;
            v27 = *v24++;
            if (v25 != v27)
            {
              break;
            }

            if (!--v22)
            {
              goto LABEL_17;
            }
          }

LABEL_18:
          v28 = *(v20 + 72);
          *(this + 3) = *(v20 + 56);
          *(this + 4) = v28;
          v29 = *md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 1));
          v30 = *([v29 shaderLibrary] + 80);
          v31 = *(v30 + 2872);
          v56 = *(v30 + 2864);
          v57 = v31;
          if (v31)
          {
            atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
          }

          v58[0] = 1;
          *&v58[4] = xmmword_1B33B11E0;
          *&v58[20] = 1;
          v59 = 0;
          v60 = 0;
          LODWORD(v61) = 0;
          BYTE4(v61) = 15;
          [v29 gglDevice];
          std::allocate_shared[abi:nn200100]<ggl::Textured::Pos2DUVExtendedPipelineState,std::allocator<ggl::Textured::Pos2DUVExtendedPipelineState>,std::shared_ptr<ggl::TexturedExtendedShader>,ggl::ColorBufferOperation,ggl::RenderTargetFormat const&,BOOL const&,0>();
        }

LABEL_17:
        if (!*(this + 16))
        {
          goto LABEL_18;
        }
      }
    }

LABEL_21:
    v32 = md::FrameGraph::renderQueueForPass(v6, 4);
    if (v32)
    {
      v33 = **(v32 + 16);
    }

    else
    {
      v33 = 0;
    }

    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v58, *(this + 10));
    v34 = *v4;
    v35 = v61;
    *v61 = _D8;
    *(v35 + 2) = 1065353216;
    *(v35 + 3) = v34;
    ggl::BufferMemory::~BufferMemory(v58);
    v37 = **(this + 16);
    v39 = v33[10];
    v38 = v33[11];
    if (v39 < v38)
    {
      *v39 = v37;
      v40 = v39 + 1;
LABEL_35:
      v33[10] = v40;
      goto LABEL_36;
    }

    v41 = v33[9];
    v42 = (v39 - v41) >> 3;
    if (!((v42 + 1) >> 61))
    {
      v43 = v38 - v41;
      v44 = v43 >> 2;
      if (v43 >> 2 <= (v42 + 1))
      {
        v44 = v42 + 1;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFF8)
      {
        v45 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v44;
      }

      v60 = v33 + 12;
      if (v45)
      {
        v46 = ggl::zone_mallocator::instance(v36);
        v47 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v46, v45);
      }

      else
      {
        v47 = 0;
      }

      v49 = &v47[8 * v45];
      v48 = &v47[8 * v42];
      *v48 = v37;
      v40 = v48 + 8;
      v50 = v33[9];
      v51 = v33[10] - v50;
      v52 = &v48[-v51];
      memcpy(&v48[-v51], v50, v51);
      v53 = v33[9];
      v33[9] = v52;
      v33[10] = v40;
      v54 = v33[11];
      v33[11] = v49;
      *&v58[16] = v53;
      v59 = v54;
      *v58 = v53;
      *&v58[8] = v53;
      std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(v58);
      goto LABEL_35;
    }

LABEL_39:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_36:
  *(this + 17) = v4;
}

void sub_1B2E231A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, std::__shared_weak_count *);
  (*(*v9 + 8))(v9);
  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  ggl::BufferMemory::~BufferMemory(va);
  ggl::BufferMemory::~BufferMemory(va1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  (*(*v11 + 8))(v11);
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  v17 = *(v15 - 144);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E23290()
{
  if (v0)
  {
    JUMPOUT(0x1B2E23274);
  }

  JUMPOUT(0x1B2E23278);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2UV>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A18FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Textured::TileScalar>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Textured::TileScalar>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03F80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninCrossFadeRenderLayer::~MuninCrossFadeRenderLayer(uint64_t **this)
{
  md::MuninCrossFadeRenderLayer::~MuninCrossFadeRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A03F10;
  std::unique_ptr<ggl::Drawable>::reset[abi:nn200100](this + 16, 0);
  v2 = this[15];
  this[15] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[14];
  this[14] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = this[13];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = this[11];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *this = &unk_1F2A16858;
  v6 = this[1];
  if (v6)
  {
    this[2] = v6;
    operator delete(v6);
  }
}

void md::SequentialGEOResourceDataRequester::createDebugNode(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  ActiveResourceType = md::SequentialGEOResourceDataRequester::getActiveResourceType(a1);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 24))(v5, ActiveResourceType);
    if (v7)
    {
      v8 = v6;
      std::string::basic_string[abi:nn200100]<0>(&v31, "Download Range");
      gdc::DebugTreeValue::DebugTreeValue(&v32, v8);
      gdc::DebugTreeValue::DebugTreeValue(&v34, HIDWORD(v8));
      memset(v30, 0, sizeof(v30));
      std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v30, &v32, &v35, 2uLL);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "Download Range");
  gdc::DebugTreeValue::DebugTreeValue(v27, "None");
  gdc::DebugTreeNode::addProperty(a2, &v32, v27);
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (*(a1 + 32) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Min");
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_34;
    }

    gdc::DebugTreeValue::DebugTreeValue(v24, *(a1 + 28));
    gdc::DebugTreeNode::addProperty(a2, &v32, v24);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v9 = v25;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Min");
    gdc::DebugTreeValue::DebugTreeValue(v21, "None");
    gdc::DebugTreeNode::addProperty(a2, &v32, v21);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v9 = v22;
  }

  operator delete(v9);
LABEL_15:
  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (*(a1 + 40) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Max");
    if (*(a1 + 40))
    {
      gdc::DebugTreeValue::DebugTreeValue(v18, *(a1 + 36));
      gdc::DebugTreeNode::addProperty(a2, &v32, v18);
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v10 = v19;
      goto LABEL_23;
    }

LABEL_34:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Max");
  gdc::DebugTreeValue::DebugTreeValue(v15, "None");
  gdc::DebugTreeNode::addProperty(a2, &v32, v15);
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  v10 = v16;
LABEL_23:
  operator delete(v10);
LABEL_24:
  if (v33 < 0)
  {
    operator delete(v32);
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "gdc::ResourceType");
  if (ActiveResourceType > 0x35)
  {
    v11 = "<Invalid>";
  }

  else
  {
    v11 = off_1E7B3C1A8[ActiveResourceType];
  }

  gdc::DebugTreeValue::DebugTreeValue(v12, v11);
  gdc::DebugTreeNode::addProperty(a2, &v32, v12);
  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }
}

void sub_1B2E23864(_Unwind_Exception *a1)
{
  v5 = 0;
  while (1)
  {
    if (*(v2 + v5 + 119) < 0)
    {
      operator delete(*(v2 + v5 + 96));
    }

    v5 -= 64;
    if (v5 == -128)
    {
      if (*(v3 - 193) < 0)
      {
        operator delete(*(v3 - 216));
      }

      *(v3 - 184) = v1 + 72;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v3 - 184));
      *(v3 - 184) = v1 + 48;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v3 - 184));
      if (*(v1 + 47) < 0)
      {
        operator delete(*(v1 + 24));
      }

      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      _Unwind_Resume(a1);
    }
  }
}

void md::SequentialGEOResourceDataRequester::requestDataKeys(md::SequentialGEOResourceDataRequester *this, const gdc::SelectionContext *a2, char a3)
{
  v5 = *(a2 + 1);
  ActiveResourceType = md::SequentialGEOResourceDataRequester::getActiveResourceType(this);
  v7 = *(this + 1);
  if (v7)
  {
    v8 = (*(*v7 + 32))(v7, ActiveResourceType);
    if ((v8 & 0x100000000) != 0)
    {
      v9 = v8;
      v10 = (*(**(this + 1) + 24))(*(this + 1), ActiveResourceType);
      if (v11)
      {
        v12 = v10;
        v33 = HIDWORD(v10);
        if (*(this + 32) == 1)
        {
          v12 = *(this + 7);
        }

        if (*(this + 40) == 1)
        {
          LODWORD(v33) = *(this + 9);
        }

        v13 = *(a2 + 8);
        v14 = *v13;
        v15 = v9;
        if (v9)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          v17 = 0;
        }

        else
        {
          if (v9 >= v14)
          {
            v17 = 0;
          }

          else
          {
            v17 = 0;
            do
            {
              ++v17;
              v15 *= 2;
            }

            while (v15 < v14);
          }

          if (v15 > v14)
          {
            do
            {
              --v17;
              v18 = v15 > 2 * v14;
              v14 *= 2;
            }

            while (v18);
          }
        }

        v47 = 0;
        v48 = 0;
        v49 = 0;
        v19 = *(v13 + 3);
        if (v19)
        {
          v32 = -v17 & ~(-v17 >> 31);
          do
          {
            v20 = *(v19 + 17);
            v21 = 1 << v20;
            v22 = *(v19 + 6);
            v23 = (*(v19 + 5) % v21 + v21) % v21;
            v42[0] = *(v19 + 16);
            v42[1] = v20;
            v43 = v23;
            v44 = (v22 % v21 + v21) % v21;
            v45 = 0;
            v46 = 1;
            if (v20)
            {
              v24 = v20 >= v32;
              LODWORD(v20) = v20 - v32;
              if (!v24)
              {
                LODWORD(v20) = 0;
              }
            }

            if (v12 <= v20 && v33 >= v20)
            {
              v48 = v47;
              v25 = **(a2 + 8);
              v26 = (*(**(this + 1) + 32))(*(this + 1), ActiveResourceType);
              if ((v26 & 0x100000000) == 0)
              {
                v31 = std::__throw_bad_optional_access[abi:nn200100]();
                if (v47)
                {
                  v48 = v47;
                  operator delete(v47);
                }

                _Unwind_Resume(v31);
              }

              v9 = v9 & 0xFFFFFFFFFF000000 | *(this + 22) | (*(this + 46) << 16);
              md::TileAdjustmentHelpers::adjustTileForSizeAndResourceType(v25, v26, ActiveResourceType, *(this + 1), v42, v9, &v47);
              v28 = v47;
              v27 = v48;
              while (v28 != v27)
              {
                (*(*this + 80))(v41, this, v28);
                if (a3)
                {
                  v29 = 1;
                }

                else
                {
                  v29 = *(this + 4);
                }

                gdc::Tiled::mapDataKeyFromTile(v38, 0, v41, *(this + 11), v29);
                gdc::LayerDataCollector::addDataKey(v5, v38, (v19 + 2));
                if (geo::codec::VectorTile::hasComputedJunctions(*(this + 20)))
                {
                  v30 = (a3 & 1) != 0 ? 1 : *(this + 4);
                  gdc::Tiled::mapDataKeyFromTile(v35, 1u, v41, *(this + 11), v30);
                  gdc::LayerDataCollector::addDataKey(v5, v35, (v19 + 2));
                  if (v36 != v37)
                  {
                    free(v36);
                  }
                }

                if (v39 != v40)
                {
                  free(v39);
                }

                v28 += 32;
              }
            }

            v19 = *v19;
          }

          while (v19);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }
        }
      }
    }
  }
}

void md::SequentialGEOResourceDataRequester::~SequentialGEOResourceDataRequester(md::SequentialGEOResourceDataRequester *this)
{
  *this = &unk_1F2A03FF0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A03FF0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);
}

void generateRoadSignPath(CGContext *a1, const RoadSignMetrics *a2, const md::RoadSignPartMetrics *a3)
{
  CGContextSaveGState(a1);
  CGContextBeginPath(a1);
  v6 = *a3;
  if (v6 > 5)
  {
    if (v6 <= 0xF)
    {
      if (((1 << v6) & 0xC00) != 0)
      {
        v118 = *(a3 + 11);
        v119 = md::RoadSignPartMetrics::signMin(a3);
        v10 = v120;
        v121 = md::RoadSignPartMetrics::signMax(a3);
        v123 = v122;
        v124 = round(a2->_scale * a2->_cornerRadius * a2->_contentScale);
        v148 = *(a3 + 18);
        xb = *(a3 + 17);
        v125 = v119 - v118;
        v126 = 112;
        v127 = 104;
        if (*a3 == 10)
        {
          v127 = 120;
          v126 = 128;
          v128 = v124 + v119;
        }

        else
        {
          v119 = v121;
          v128 = v121 - v124;
        }

        if (*a3 == 10)
        {
          v129 = v121 + v118;
        }

        else
        {
          v129 = v125;
        }

        v130 = *(a3 + v126);
        v131 = *(a3 + v127);
        v132 = v123 - v124;
        CGContextMoveToPoint(a1, v129, v10);
        CGContextAddLineToPoint(a1, v129, v123);
        CGContextAddLineToPoint(a1, v128, v123);
        CGContextAddQuadCurveToPoint(a1, v119, v123, v119, v132);
        CGContextAddArcToPoint(a1, xb, v148, v131, v130, round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale));
        CGContextAddArcToPoint(a1, v131, v130, v129, v10, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
        v26 = a1;
        v27 = v129;
LABEL_75:
        v74 = v10;
        goto LABEL_76;
      }

      if (((1 << v6) & 0x3000) != 0)
      {
        v100 = *(a3 + 11);
        v101 = md::RoadSignPartMetrics::signMin(a3);
        v103 = v102;
        v104 = md::RoadSignPartMetrics::signMax(a3);
        v106 = v105;
        v107 = round(a2->_scale * a2->_cornerRadius * a2->_contentScale);
        v108 = 112;
        v109 = 104;
        v110 = 128;
        v111 = 120;
        if (*a3 == 12)
        {
          v111 = 104;
          v110 = 112;
          v109 = 120;
          v108 = 128;
          v112 = v101;
        }

        else
        {
          v112 = v104;
        }

        if (*a3 == 12)
        {
          v113 = v107 + v101;
        }

        else
        {
          v113 = v104 - v107;
        }

        if (*a3 == 12)
        {
          v114 = v104 + v100;
        }

        else
        {
          v114 = v101 - v100;
        }

        v137 = *(a3 + v111);
        v142 = *(a3 + v110);
        v115 = *(a3 + 17);
        v116 = *(a3 + 18);
        v147 = *(a3 + v109);
        xd = *(a3 + v108);
        v117 = v106 - v107;
        CGContextMoveToPoint(a1, v114, v103);
        CGContextAddLineToPoint(a1, v114, v106);
        CGContextAddLineToPoint(a1, v113, v106);
        CGContextAddQuadCurveToPoint(a1, v112, v106, v112, v117);
        CGContextAddArcToPoint(a1, v137, v142, v115, v116, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
        CGContextAddArcToPoint(a1, v115, v116, v147, xd, round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale));
        CGContextAddArcToPoint(a1, v147, xd, v114, v103, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
        v26 = a1;
        v27 = v114;
        v74 = v103;
        goto LABEL_76;
      }

      if (((1 << v6) & 0xC000) != 0)
      {
        v7 = *(a3 + 11);
        v8 = md::RoadSignPartMetrics::signMin(a3);
        v10 = v9;
        v11 = md::RoadSignPartMetrics::signMax(a3);
        v13 = round(a2->_scale * a2->_cornerRadius * a2->_contentScale);
        v14 = v8 - v7;
        v15 = (a3 + 104);
        v16 = (a3 + 112);
        v17 = v11 - v13;
        if (*a3 == 14)
        {
          v14 = v11 + v7;
          v17 = v13 + v8;
        }

        v143 = v14;
        x = v17;
        if (*a3 == 14)
        {
          v18 = (a3 + 104);
        }

        else
        {
          v8 = v11;
          v18 = (a3 + 120);
        }

        if (*a3 == 14)
        {
          v19 = (a3 + 112);
        }

        else
        {
          v19 = (a3 + 128);
        }

        if (*a3 == 14)
        {
          v15 = (a3 + 120);
          v16 = (a3 + 128);
        }

        v20 = *v16;
        v21 = *v15;
        v23 = *(a3 + 17);
        v22 = *(a3 + 18);
        v24 = *v19;
        v25 = *v18;
        v138 = v13 + v10;
        CGContextMoveToPoint(a1, v14, v12);
        CGContextAddArcToPoint(a1, v21, v20, v23, v22, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
        CGContextAddArcToPoint(a1, v23, v22, v25, v24, round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale));
        CGContextAddArcToPoint(a1, v25, v24, v8, v138, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
        CGContextAddLineToPoint(a1, v8, v138);
        CGContextAddQuadCurveToPoint(a1, v8, v10, x, v10);
        v26 = a1;
        v27 = v143;
        goto LABEL_75;
      }
    }

    if (v6 - 6 < 2)
    {
      v82 = *(a3 + 11);
      v83 = md::RoadSignPartMetrics::signMin(a3);
      v10 = v84;
      v85 = md::RoadSignPartMetrics::signMax(a3);
      v87 = v86;
      v88 = round(a2->_scale * a2->_cornerRadius * a2->_contentScale);
      v89 = v83 - v82;
      v90 = 112;
      v91 = 104;
      v92 = 128;
      v93 = 120;
      v94 = v85 + v82;
      if (*a3 == 6)
      {
        v93 = 104;
        v92 = 112;
        v91 = 120;
        v90 = 128;
        v95 = v88 + v83;
      }

      else
      {
        v95 = v85 - v88;
      }

      if (*a3 == 6)
      {
        v96 = v83;
      }

      else
      {
        v96 = v85;
      }

      if (*a3 == 6)
      {
        v57 = v94;
      }

      else
      {
        v57 = v89;
      }

      v97 = *(a3 + v93);
      v134 = *(a3 + v92);
      v136 = *(a3 + 17);
      xc = *(a3 + v90);
      v141 = *(a3 + 18);
      v146 = *(a3 + v91);
      v98 = v87 - v88;
      v99 = v88 + v10;
      CGContextMoveToPoint(a1, v57, v10);
      CGContextAddLineToPoint(a1, v57, v87);
      CGContextAddLineToPoint(a1, v95, v87);
      CGContextAddQuadCurveToPoint(a1, v96, v87, v96, v98);
      CGContextAddLineToPoint(a1, v96, v99);
      CGContextAddQuadCurveToPoint(a1, v96, v10, v95, v10);
      CGContextAddLineToPoint(a1, v97, v134);
      CGContextAddArcToPoint(a1, v97, v134, v136, v141, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
      CGContextAddArcToPoint(a1, v136, v141, v146, xc, round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale));
      CGContextAddArcToPoint(a1, v146, xc, v57, v10, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
    }

    else
    {
      if (v6 - 8 >= 2)
      {
        goto LABEL_77;
      }

      v43 = *(a3 + 11);
      v44 = md::RoadSignPartMetrics::signMin(a3);
      v10 = v45;
      v46 = md::RoadSignPartMetrics::signMax(a3);
      v48 = v47;
      v49 = *a3;
      v50 = round(a2->_scale * a2->_cornerRadius * a2->_contentScale);
      v52 = *(a3 + 15);
      v51 = *(a3 + 16);
      v133 = *(a3 + 17);
      v135 = *(a3 + 18);
      v139 = *(a3 + 14);
      v144 = *(a3 + 13);
      v53 = v46 + v43;
      v54 = v44 - v43;
      if (v49 == 8)
      {
        v55 = v50 + v44;
      }

      else
      {
        v55 = v46 - v50;
      }

      if (v49 == 8)
      {
        v56 = v44;
      }

      else
      {
        v56 = v46;
      }

      if (v49 == 8)
      {
        v57 = v53;
      }

      else
      {
        v57 = v54;
      }

      v58 = v48 - v50;
      xa = v50 + v10;
      CGContextMoveToPoint(a1, v57, v10);
      CGContextAddLineToPoint(a1, v57, v48);
      CGContextAddLineToPoint(a1, v55, v48);
      CGContextAddQuadCurveToPoint(a1, v56, v48, v56, v58);
      CGContextAddLineToPoint(a1, v52, v51);
      v59 = round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale);
      if (v59 <= 0.0)
      {
        CGContextAddLineToPoint(a1, v133, v135);
        v61 = v139;
        v60 = v144;
      }

      else
      {
        CGContextAddArcToPoint(a1, v133, v135, v144, v139, v59);
        v60 = v144;
        v61 = v139;
      }

      CGContextAddLineToPoint(a1, v60, v61);
      CGContextAddLineToPoint(a1, v56, xa);
      CGContextAddQuadCurveToPoint(a1, v56, v10, v55, v10);
    }

    v26 = a1;
    v27 = v57;
    goto LABEL_75;
  }

  if (v6 - 2 < 2)
  {
    v62 = *(a3 + 11);
    v63 = md::RoadSignPartMetrics::signMin(a3) - v62;
    md::RoadSignPartMetrics::signMin(a3);
    v65 = v64;
    v66 = md::RoadSignPartMetrics::signMax(a3) + v62;
    md::RoadSignPartMetrics::signMax(a3);
    v68 = v67;
    v70 = *(a3 + 17);
    v69 = *(a3 + 18);
    v140 = *(a3 + 13);
    v145 = *(a3 + 14);
    v71 = *(a3 + 15);
    v72 = *(a3 + 16);
    v73 = *a3;
    CGContextMoveToPoint(a1, v63, v65);
    CGContextAddLineToPoint(a1, v63, v68);
    if (v73 == 2)
    {
      CGContextAddLineToPoint(a1, v66, v68);
      CGContextAddLineToPoint(a1, v66, v65);
      CGContextAddArcToPoint(a1, v71, v72, v70, v69, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
      CGContextAddArcToPoint(a1, v70, v69, v140, v145, round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale));
      CGContextAddArcToPoint(a1, v140, v145, v63, v65, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
      v26 = a1;
      v27 = v63;
    }

    else
    {
      CGContextAddArcToPoint(a1, v140, v145, v70, v69, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
      CGContextAddArcToPoint(a1, v70, v69, v71, v72, round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale));
      CGContextAddArcToPoint(a1, v71, v72, v66, v68, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
      CGContextAddLineToPoint(a1, v66, v68);
      v26 = a1;
      v27 = v66;
    }

    v74 = v65;
    goto LABEL_76;
  }

  if (v6 - 4 < 2)
  {
    v28 = *(a3 + 11);
    v29 = md::RoadSignPartMetrics::signMin(a3);
    v31 = v30;
    v32 = md::RoadSignPartMetrics::signMax(a3);
    v34 = v33;
    v35 = *a3;
    v36 = round(a2->_scale * a2->_cornerRadius * a2->_contentScale);
    v37 = v32 + v28;
    v38 = v29 - v28;
    if (v35 == 4)
    {
      v39 = v36 + v29;
    }

    else
    {
      v39 = v32 - v36;
    }

    if (v35 == 4)
    {
      v40 = v37;
    }

    else
    {
      v29 = v32;
      v40 = v38;
    }

    v41 = v34 - v36;
    v42 = v36 + v31;
    CGContextMoveToPoint(a1, v40, v31);
    CGContextAddLineToPoint(a1, v40, v34);
    CGContextAddLineToPoint(a1, v39, v34);
    CGContextAddQuadCurveToPoint(a1, v29, v34, v29, v41);
    CGContextAddLineToPoint(a1, v29, v42);
    CGContextAddQuadCurveToPoint(a1, v29, v31, v39, v31);
    goto LABEL_77;
  }

  if (v6 == 1)
  {
    v75 = *(a3 + 11);
    v76 = md::RoadSignPartMetrics::signMin(a3) - v75;
    md::RoadSignPartMetrics::signMin(a3);
    v78 = v77;
    v79 = md::RoadSignPartMetrics::signMax(a3) + v75;
    md::RoadSignPartMetrics::signMax(a3);
    v81 = v80;
    CGContextMoveToPoint(a1, v76, v78);
    CGContextAddLineToPoint(a1, v76, v81);
    CGContextAddLineToPoint(a1, v79, v81);
    v26 = a1;
    v27 = v79;
    v74 = v78;
LABEL_76:
    CGContextAddLineToPoint(v26, v27, v74);
  }

LABEL_77:
  CGContextClosePath(a1);

  CGContextRestoreGState(a1);
}

void md::Logic<md::TransitLogic,md::TransitContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::TransitLogic::runBeforeLayout(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a1;
  v154 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = a3[1];
  v123 = (a1 + 232);
  if (a1 + 232 == a4)
  {
    *(a4 + 224) = *(a1 + 456);
  }

  else
  {
    *(a4 + 48) = *(a1 + 280);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(a4, *(a1 + 256));
    *(a4 + 104) = *(a1 + 336);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>((a4 + 56), *(a1 + 312));
    *(a4 + 160) = *(a1 + 392);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>((a4 + 112), *(a1 + 368));
    *(a4 + 216) = *(a1 + 448);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>((a4 + 168), *(a1 + 424));
    *(a4 + 224) = *(a1 + 456);
    *(a4 + 264) = *(a1 + 496);
    std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,void *> *>>((a4 + 232), *(a1 + 480));
    *(a4 + 304) = *(a1 + 536);
    std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,void *> *>>((a4 + 272), *(a1 + 520));
    v5 = a1;
  }

  *(a4 + 312) = *(v5 + 544);
  *(v5 + 552) = v6[365];
  *(v5 + 560) = v6[366];
  *(v5 + 568) = v6[367];
  *(v5 + 576) = v6[368];
  v8 = md::SceneContext::layerDataInView(v7, 16);
  v9 = md::SceneContext::layerDataInView(v7, 17);
  v131 = 0;
  v132 = 0;
  v129[1] = 0;
  v130 = &v131;
  v128 = v129;
  v129[0] = 0;
  v10 = v8 + 1;
  v12 = *(v5 + 120);
  v11 = v5 + 120;
  v147[0] = *v8;
  *&v142 = v8 + 1;
  *&v138 = v12;
  *&v133 = v11 + 8;
  v148[0].n128_u64[0] = &v130;
  v148[0].n128_u64[1] = &v131;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(&v149, v147, &v142, &v138, &v133, v148);
  v14 = a1 + 144;
  v13 = *(a1 + 144);
  v147[0] = *v9;
  *&v142 = v9 + 1;
  *&v138 = v13;
  *&v133 = a1 + 152;
  v148[0].n128_u64[0] = &v128;
  v148[0].n128_u64[1] = v129;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(&v149, v147, &v142, &v138, &v133, v148);
  if (v11 != v8)
  {
    std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v11, *v8, v8 + 1);
  }

  if (v14 != v9)
  {
    std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v14, *v9, v9 + 1);
  }

  v15 = (a1 + 168);
  *(a1 + 176) = *(a1 + 168);
  std::vector<md::Label *>::reserve((a1 + 168), v8[2]);
  v16 = *v8;
  v17 = a1;
  if (*v8 != v10)
  {
    v18 = *(a1 + 176);
    do
    {
      v19 = v16[4];
      v20 = *(v17 + 184);
      if (v18 >= v20)
      {
        v21 = (v18 - *v15) >> 3;
        if ((v21 + 1) >> 61)
        {
LABEL_165:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v22 = v20 - *v15;
        v23 = v22 >> 2;
        if (v22 >> 2 <= (v21 + 1))
        {
          v23 = v21 + 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v24);
        }

        *(8 * v21) = v19;
        v18 = (8 * v21 + 8);
        v25 = *(a1 + 168);
        v26 = *(a1 + 176) - v25;
        v27 = (8 * v21 - v26);
        memcpy(v27, v25, v26);
        v28 = *(a1 + 168);
        *(a1 + 168) = v27;
        *(a1 + 176) = v18;
        *(a1 + 184) = 0;
        if (v28)
        {
          operator delete(v28);
        }

        v17 = a1;
      }

      else
      {
        *v18++ = v19;
      }

      *(v17 + 176) = v18;
      v29 = v16[1];
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
          v30 = v16[2];
          v31 = *v30 == v16;
          v16 = v30;
        }

        while (!v31);
      }

      v16 = v30;
    }

    while (v30 != v10);
  }

  __p = 0;
  v126 = 0;
  v127 = 0;
  std::vector<md::Label *>::reserve(&__p, v132);
  v32 = v130;
  v33 = a1;
  if (v130 != &v131)
  {
    v34 = v126;
    do
    {
      v35 = v32[4];
      if (v34 >= v127)
      {
        v36 = __p;
        v37 = v34 - __p;
        v38 = (v34 - __p) >> 3;
        v39 = v38 + 1;
        if ((v38 + 1) >> 61)
        {
          goto LABEL_165;
        }

        v40 = v127 - __p;
        if ((v127 - __p) >> 2 > v39)
        {
          v39 = v40 >> 2;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF8)
        {
          v41 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v39;
        }

        if (v41)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v41);
        }

        v42 = (8 * v38);
        *v42 = v35;
        v34 = (v42 + 1);
        memcpy(0, v36, v37);
        __p = 0;
        v127 = 0;
        if (v36)
        {
          operator delete(v36);
        }

        v33 = a1;
      }

      else
      {
        *v34 = v35;
        v34 += 8;
      }

      v126 = v34;
      v43 = v32[1];
      if (v43)
      {
        do
        {
          v44 = v43;
          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        do
        {
          v44 = v32[2];
          v31 = *v44 == v32;
          v32 = v44;
        }

        while (!v31);
      }

      v32 = v44;
    }

    while (v44 != &v131);
  }

  v45 = v128;
  if (v128 == v129)
  {
    v46 = v126;
  }

  else
  {
    v46 = v126;
    do
    {
      v47 = v45[4];
      if (v46 >= v127)
      {
        v48 = __p;
        v49 = v46 - __p;
        v50 = (v46 - __p) >> 3;
        v51 = v50 + 1;
        if ((v50 + 1) >> 61)
        {
          goto LABEL_165;
        }

        v52 = v127 - __p;
        if ((v127 - __p) >> 2 > v51)
        {
          v51 = v52 >> 2;
        }

        if (v52 >= 0x7FFFFFFFFFFFFFF8)
        {
          v53 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v51;
        }

        if (v53)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v53);
        }

        v54 = (8 * v50);
        *v54 = v47;
        v46 = (v54 + 1);
        memcpy(0, v48, v49);
        __p = 0;
        v127 = 0;
        if (v48)
        {
          operator delete(v48);
        }

        v33 = a1;
      }

      else
      {
        *v46 = v47;
        v46 += 8;
      }

      v126 = v46;
      v55 = v45[1];
      if (v55)
      {
        do
        {
          v56 = v55;
          v55 = *v55;
        }

        while (v55);
      }

      else
      {
        do
        {
          v56 = v45[2];
          v31 = *v56 == v45;
          v45 = v56;
        }

        while (!v31);
      }

      v45 = v56;
    }

    while (v56 != v129);
  }

  *(v33 + 456) = 0;
  v57 = __p;
  if (__p != v46)
  {
    do
    {
      v58 = *v57;
      if (*(v33 + 272))
      {
        v59 = *(v33 + 440);
        md::TransitTileData::appendNodesAttachedToLines(*v57, *(v33 + 256), (v33 + 400));
        md::TransitTileData::setSelectedLines(v58, v123);
        md::TransitTileData::setSelectedNodes(*&v58[122], *&v58[123], (a1 + 400));
        v33 = a1;
        if (*(a1 + 440) > v59)
        {
          *(a1 + 456) = 1;
        }
      }

      else
      {
        v149 = 0;
        v150 = 0;
        v152 = 0;
        memset(v151, 0, sizeof(v151));
        v153 = 1065353216;
        md::TransitTileData::setSelectedLines(v58, &v149);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(0);
        v60 = v58[122];
        v61 = v58[123];
        v149 = 0;
        v150 = 0;
        v152 = 0;
        memset(v151, 0, sizeof(v151));
        v153 = 1065353216;
        md::TransitTileData::setSelectedNodes(v60, v61, &v149);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*&v151[7]);
        v63 = v149;
        if (v149)
        {
          v64 = mdm::zone_mallocator::instance(v62);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v64, v63);
        }

        v33 = a1;
      }

      ++v57;
    }

    while (v57 != v46);
  }

  if (*(v33 + 216) == 1)
  {
    v66 = *(v33 + 504);
    v65 = *(v33 + 512);
    *(v33 + 504) = *(v33 + 464);
    v67 = (v33 + 480);
    v68 = *(v33 + 520);
    v70 = *(v33 + 480);
    v69 = *(v33 + 488);
    v71 = *(v33 + 528);
    v72 = *(v33 + 496);
    v73 = *(v33 + 536);
    *(v33 + 464) = v66;
    *(v33 + 472) = v65;
    *(v33 + 520) = v70;
    *(v33 + 480) = v68;
    *(v33 + 488) = v71;
    *(v33 + 528) = v69;
    *(v33 + 496) = v73;
    *(v33 + 536) = v72;
    if (v71)
    {
      v74 = *(v68 + 8);
      if ((v65 & (v65 - 1)) != 0)
      {
        if (v74 >= v65)
        {
          v74 %= v65;
        }
      }

      else
      {
        v74 &= v65 - 1;
      }

      *(v66 + 8 * v74) = v67;
    }

    if (v69)
    {
      v75 = *(*(v33 + 520) + 8);
      v76 = *(v33 + 512);
      if ((v76 & (v76 - 1)) != 0)
      {
        if (v75 >= v76)
        {
          v75 %= v76;
        }
      }

      else
      {
        v75 &= v76 - 1;
      }

      *(*(v33 + 504) + 8 * v75) = v33 + 520;
    }

    if (v71)
    {
      v77 = *v67;
      if (*v67)
      {
        do
        {
          v78 = *v77;
          operator delete(v77);
          v77 = v78;
        }

        while (v78);
        v33 = a1;
        v65 = *(a1 + 472);
      }

      else
      {
        v33 = a1;
      }

      *v67 = 0;
      if (v65)
      {
        for (i = 0; i != v65; ++i)
        {
          *(*(v33 + 464) + 8 * i) = 0;
        }
      }

      *(v33 + 488) = 0;
    }

    *(v33 + 544) = 1;
    v80 = *(v33 + 200);
    v81 = [v80 routeInfo];
    v124 = [v81 route];

    v119 = [v124 stations];
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    obj = [v124 segments];
    v115 = [obj countByEnumeratingWithState:&v142 objects:&v149 count:16];
    if (v115)
    {
      v114 = *v143;
      do
      {
        for (j = 0; j != v115; ++j)
        {
          if (*v143 != v114)
          {
            objc_enumerationMutation(obj);
          }

          v82 = *(*(&v142 + 1) + 8 * j);
          if ([v82 type] == 6)
          {
            v83 = [v82 stepCount];
            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v122 = [v82 steps];
            v84 = [v122 countByEnumeratingWithState:&v138 objects:v148 count:16];
            if (!v84)
            {
              goto LABEL_158;
            }

            v85 = *v139;
            v86 = 1;
            v117 = v83 - 2;
            v118 = -1;
            while (1)
            {
              v87 = 0;
              v120 = v117 - v118;
              v118 += v84;
              do
              {
                if (*v139 != v85)
                {
                  objc_enumerationMutation(v122);
                }

                v88 = *(*(&v138 + 1) + 8 * v87);
                v89 = [v88 transitStep];
                v90 = [v88 originStop];
                v91 = [v124 getStationForStop:v90];
                if ([v91 hasMuid])
                {
                  if ([v89 vehicleInfosCount])
                  {
                    v92 = [v89 vehicleInfos];
                    v93 = [v92 objectAtIndexedSubscript:0];

                    v94 = [v93 pickupDropoffType] == 100;
                    if (!v90)
                    {
                      goto LABEL_134;
                    }
                  }

                  else
                  {
                    v94 = 0;
                    if (!v90)
                    {
                      goto LABEL_134;
                    }
                  }

                  if (v94)
                  {
                    goto LABEL_134;
                  }

                  v137 = [v91 muid];
                  v146 = &v137;
                  v95 = std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((a1 + 464), v137);
                  v96 = v95;
                  if (v86 & 1 | (v120 == v87))
                  {
                    v97 = 1;
                    goto LABEL_124;
                  }

                  if (*(v95 + 28) != 1)
                  {
                    v97 = 2;
LABEL_124:
                    *(v95 + 28) = v97;
                  }

                  v98 = [v88 destinationStop];
                  v99 = v98;
                  if (v98 && md::AreTransitStopIndicesEqual(v98, v90) && [v89 hasSignificanceForEndNode])
                  {
                    if (*(v96 + 29) == 1)
                    {
                      v100 = [v89 significanceForEndNode];
                      v101 = *(v96 + 6);
                      if (v101 <= v100)
                      {
                        v101 = v100;
                      }

                      *(v96 + 6) = v101;
                    }

                    else
                    {
                      *(v96 + 6) = [v89 significanceForEndNode];
                      *(v96 + 29) = 1;
                    }
                  }

                  v86 = 0;
                }

LABEL_134:

                ++v87;
              }

              while (v84 != v87);
              v84 = [v122 countByEnumeratingWithState:&v138 objects:v148 count:16];
              if (!v84)
              {
                goto LABEL_158;
              }
            }
          }

          if ([v82 type] == 5)
          {
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v122 = [v82 steps];
            v102 = [v122 countByEnumeratingWithState:&v133 objects:v147 count:16];
            if (v102)
            {
              v103 = *v134;
              do
              {
                for (k = 0; k != v102; ++k)
                {
                  if (*v134 != v103)
                  {
                    objc_enumerationMutation(v122);
                  }

                  v105 = *(*(&v133 + 1) + 8 * k);
                  v106 = [v105 transitStep];
                  if ([v106 maneuverType] == 7 || objc_msgSend(v106, "maneuverType") == 8)
                  {
                    v107 = [v105 accessPoint];
                    v108 = v107;
                    if (v107 && [v107 hasStationIndex])
                    {
                      v109 = [v119 objectAtIndexedSubscript:{objc_msgSend(v108, "stationIndex")}];
                      if ([v109 hasMuid])
                      {
                        v137 = [v109 muid];
                        v146 = &v137;
                        v110 = std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((a1 + 464), v137);
                        *(v110 + 28) = 1;
                        if ([v106 hasSignificanceForEndNode])
                        {
                          if (*(v110 + 29) == 1)
                          {
                            v111 = [v106 significanceForEndNode];
                            v112 = *(v110 + 6);
                            if (v112 <= v111)
                            {
                              v112 = v111;
                            }

                            *(v110 + 6) = v112;
                          }

                          else
                          {
                            *(v110 + 6) = [v106 significanceForEndNode];
                            *(v110 + 29) = 1;
                          }
                        }
                      }
                    }
                  }
                }

                v102 = [v122 countByEnumeratingWithState:&v133 objects:v147 count:16];
              }

              while (v102);
            }

LABEL_158:
          }
        }

        v115 = [obj countByEnumeratingWithState:&v142 objects:&v149 count:16];
      }

      while (v115);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(v129[0]);
  std::__tree<gdc::LayerDataWithWorld>::destroy(v131);
}

void sub_1B2E255C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(a24);
  std::__tree<gdc::LayerDataWithWorld>::destroy(a27);
  _Unwind_Resume(a1);
}

__n128 std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, __n128 *a6)
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
    v15 = v8[4];
    v16 = *(v8 + 48);
    v17 = v16;
    v18 = *(i + 48);
    v19 = i[4];
    if (v16 == v18 ? v15 < v19 : v16 < v18)
    {
      std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](a6, (v8 + 4));
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
      std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v35, (v8 + 4));
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

void std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_38;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_37:
    std::__tree<gdc::LayerDataWithWorld>::destroy(v12);
    goto LABEL_38;
  }

  v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v15 = v13[4];
      v14 = v13[5];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = *(v9 + 40);
      *(v9 + 32) = v15;
      *(v9 + 40) = v14;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }

      v17 = *(v13 + 48);
      *(v9 + 48) = *(v13 + 48);
      v18 = *v8;
      v19 = (a1 + 8);
      v20 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v19 = v18;
            v21 = *(v18 + 48);
            if (!(v17 == v21 ? *(v9 + 32) < v19[4] : v17 < v21))
            {
              break;
            }

            v18 = *v19;
            v20 = v19;
            if (!*v19)
            {
              goto LABEL_23;
            }
          }

          v18 = v19[1];
        }

        while (v18);
        v20 = v19 + 1;
      }

LABEL_23:
      std::__tree<unsigned short>::__insert_node_at(a1, v19, v20, v9);
      if (v10)
      {
        v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v10);
      }

      else
      {
        v10 = 0;
      }

      v23 = v13[1];
      if (v23)
      {
        do
        {
          a2 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v24 = *a2 == v13;
          v13 = a2;
        }

        while (!v24);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_37;
  }

LABEL_38:
  if (a2 != a3)
  {
    operator new();
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2)
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

  return v6;
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(void *a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    a1[5] = 0;
    v6 = a1[3];
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
        v9 = v2[2];
        *(v6 + 2) = v9;
        v8 = *v6;
        *(v6 + 1) = v9;
        inserted = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__node_insert_multi_prepare(v3, v9, v6 + 2);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__node_insert_multi_perform(v3, v6, inserted);
        v2 = *v2;
        if (v8)
        {
          v11 = v2 == 0;
        }

        else
        {
          v11 = 1;
        }

        v6 = v8;
      }

      while (!v11);
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(v8);
  }

  for (; v2; v2 = *v2)
  {
    v12 = mdm::zone_mallocator::instance(a1);
    v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<unsigned long long,void *>>(v12);
    *v13 = 0;
    v13[1] = 0;
    v14 = v2[2];
    v13[2] = v14;
    v13[1] = v14;
    v15 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__node_insert_multi_prepare(v3, v14, v13 + 2);
    a1 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__node_insert_multi_perform(v3, v13, v15);
  }
}

void sub_1B2E26120(mdm::zone_mallocator *a1)
{
  v3 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<unsigned long long,void *>>(v3, v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,void *> *>>(void *a1, uint64_t *a2)
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
      v8 = *(a2 + 6);
      *(v6 + 14) = *(a2 + 14);
      *(v6 + 6) = v8;
      v9 = *v6;
      v6[1] = v7;
      inserted = std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__node_insert_multi_prepare(a1, v7, v6 + 2);
      std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_perform(a1, v6, inserted);
      a2 = *a2;
      v6 = v9;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v11 = *v6;
      operator delete(v6);
      v6 = v11;
    }

    while (v11);
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && v18[2] == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__node_insert_multi_prepare(unint64_t prime, unint64_t a2, void *a3)
{
  v5 = prime;
  v6 = *(prime + 8);
  v7 = (*(prime + 40) + 1);
  v8 = *(prime + 48);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (*&v12 == 1)
    {
      v12 = 2;
    }

    else if ((*&v12 & (*&v12 - 1)) != 0)
    {
      prime = std::__next_prime(*&v12);
      v12 = prime;
      v6 = *(v5 + 8);
    }

    if (*&v12 <= v6)
    {
      if (*&v12 >= v6)
      {
        goto LABEL_40;
      }

      prime = vcvtps_u32_f32(*(v5 + 40) / *(v5 + 48));
      if (v6 < 3 || (v19 = vcnt_s8(v6), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v20 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v20;
        }
      }

      if (*&v12 <= prime)
      {
        v12 = prime;
      }

      if (*&v12 >= v6)
      {
        v6 = *(v5 + 8);
        goto LABEL_40;
      }

      if (!*&v12)
      {
        std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> **,0>(v5, 0);
        v6 = 0;
        *(v5 + 8) = 0;
        goto LABEL_40;
      }
    }

    v13 = mdm::zone_mallocator::instance(prime);
    v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v13, *&v12);
    std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> **,0>(v5, v14);
    v15 = 0;
    *(v5 + 8) = v12;
    do
    {
      *(*v5 + 8 * v15++) = 0;
    }

    while (*&v12 != v15);
    v16 = *(v5 + 24);
    if (v16)
    {
      v17 = v16[1];
      v18 = vcnt_s8(v12);
      v18.i16[0] = vaddlv_u8(v18);
      if (v18.u32[0] > 1uLL)
      {
        if (v17 >= *&v12)
        {
          v17 %= *&v12;
        }
      }

      else
      {
        v17 &= *&v12 - 1;
      }

      *(*v5 + 8 * v17) = v5 + 24;
      for (i = *v16; *v16; i = *v16)
      {
        v22 = i[1];
        if (v18.u32[0] > 1uLL)
        {
          if (v22 >= *&v12)
          {
            v22 %= *&v12;
          }
        }

        else
        {
          v22 &= *&v12 - 1;
        }

        if (v22 == v17)
        {
          v16 = i;
        }

        else
        {
          v23 = *v5;
          v24 = i;
          if (*(*v5 + 8 * v22))
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24 && i[2] == v24[2]);
            *v16 = v24;
            *v25 = **(v23 + 8 * v22);
            **(v23 + 8 * v22) = i;
          }

          else
          {
            *(v23 + 8 * v22) = v16;
            v16 = i;
            v17 = v22;
          }
        }
      }
    }

    v6 = v12;
  }

LABEL_40:
  v26 = vcnt_s8(v6);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = a2;
    if (v6 <= a2)
    {
      v27 = a2 % v6;
    }
  }

  else
  {
    v27 = (v6 - 1) & a2;
  }

  v28 = *(*v5 + 8 * v27);
  if (!v28)
  {
    return 0;
  }

  v29 = 0;
  do
  {
    result = v28;
    v28 = *v28;
    if (!v28)
    {
      break;
    }

    v31 = v28[1];
    if (v26.u32[0] > 1uLL)
    {
      v32 = v28[1];
      if (v31 >= v6)
      {
        v32 = v31 % v6;
      }
    }

    else
    {
      v32 = v31 & (v6 - 1);
    }

    if (v32 != v27)
    {
      break;
    }

    v33 = v31 == a2 && v28[2] == *a3;
    v34 = v33 != (v29 & 1);
    v35 = v29 & v34;
    v29 |= v34;
  }

  while (v35 != 1);
  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[3];
    result[3] = a2;
    *(*result + 8 * v4) = result + 3;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[5];
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<unsigned long long,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x18uLL, 0x102004024DAA5DEuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(uint64_t a1, uint64_t a2)
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

void std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v3, v2);
  }
}

uint64_t md::Logic<md::TransitLogic,md::TransitContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFD5D5EC7C4E1E43ELL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(*(a2 + 8));
    v8[1] = v7;
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::Logic<md::TransitLogic,md::TransitContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFD5D5EC7C4E1E43ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 152))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::TransitLogic,md::TransitContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFD5D5EC7C4E1E43ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 144))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::TransitLogic,md::TransitContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFD5D5EC7C4E1E43ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::TransitLogic,md::TransitContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFD5D5EC7C4E1E43ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

void sub_1B2E2713C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, mdm::zone_mallocator *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, mdm::zone_mallocator *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, mdm::zone_mallocator *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, mdm::zone_mallocator *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a44);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a39);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(a34);
  if (a31)
  {
    v48 = mdm::zone_mallocator::instance(v47);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v48, a31);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(a27);
  if (a24)
  {
    v50 = mdm::zone_mallocator::instance(v49);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v50, a24);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(a20);
  if (a17)
  {
    v52 = mdm::zone_mallocator::instance(v51);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v52, a17);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(a13);
  if (a10)
  {
    v54 = mdm::zone_mallocator::instance(v53);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v54, a10);
  }

  MEMORY[0x1B8C62190](v44, v45);
  _Unwind_Resume(a1);
}

uint64_t gdc::ObjectHolder<md::TransitContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::TransitContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::TransitContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::TransitContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A041C8;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 34));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 29));
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(v2[24]);
    std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 21));
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(v2[17]);
    std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 14));
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(v2[10]);
    std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 7));
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(v2[3]);
    v3 = std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C406878C016);
  }

  return a1;
}

void md::TransitLogic::didBecomeInactive(md::TransitLogic *this)
{
  v1 = this;
  *(this + 22) = *(this + 21);
  v2 = (this + 128);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 16));
  v3 = *(v1 + 19);
  v1 = (v1 + 152);
  *(v1 - 4) = v2;
  *v2 = 0;
  *(v1 - 2) = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(v3);
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 - 1) = v1;
}

void md::TransitLogic::~TransitLogic(md::TransitLogic *this)
{
  md::TransitLogic::~TransitLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04058;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 504);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 464);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(this + 53));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 400));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(this + 46));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 344));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(this + 39));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 288));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(this + 32));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 232));
  *(this + 24) = &unk_1F2A580E8;

  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 19));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 16));
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__rehash<true>(mdm::zone_mallocator *prime, size_t __n)
{
  v2 = prime;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
      v3 = prime;
    }
  }

  v4 = *(v2 + 8);
  if (v3 <= *&v4)
  {
    if (v3 >= *&v4)
    {
      return;
    }

    prime = vcvtps_u32_f32(*(v2 + 5) / *(v2 + 12));
    if (*&v4 < 3uLL || (v11 = vcnt_s8(v4), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      prime = std::__next_prime(prime);
    }

    else
    {
      v12 = 1 << -__clz(prime - 1);
      if (prime >= 2)
      {
        prime = v12;
      }
    }

    if (v3 <= prime)
    {
      v3 = prime;
    }

    if (v3 >= *&v4)
    {
      return;
    }

    if (!v3)
    {
      std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> **,0>(v2, 0);
      *(v2 + 1) = 0;
      return;
    }
  }

  v5 = mdm::zone_mallocator::instance(prime);
  v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v5, v3);
  std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> **,0>(v2, v6);
  v7 = 0;
  *(v2 + 1) = v3;
  do
  {
    *(*v2 + 8 * v7++) = 0;
  }

  while (v3 != v7);
  v8 = *(v2 + 3);
  if (v8)
  {
    v9 = v8[1];
    v10 = vcnt_s8(v3);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      if (v9 >= v3)
      {
        v9 %= v3;
      }
    }

    else
    {
      v9 &= v3 - 1;
    }

    *(*v2 + 8 * v9) = v2 + 24;
    v13 = *v8;
    if (*v8)
    {
      do
      {
        v14 = v13[1];
        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= v3)
          {
            v14 %= v3;
          }
        }

        else
        {
          v14 &= v3 - 1;
        }

        if (v14 != v9)
        {
          v15 = *v2;
          if (!*(*v2 + 8 * v14))
          {
            *(v15 + 8 * v14) = v8;
            goto LABEL_28;
          }

          *v8 = *v13;
          *v13 = **(v15 + 8 * v14);
          **(v15 + 8 * v14) = v13;
          v13 = v8;
        }

        v14 = v9;
LABEL_28:
        v8 = v13;
        v13 = *v13;
        v9 = v14;
      }

      while (v13);
    }
  }
}

void md::TransitLogic::setSelectedLines(md::TransitLogic *this, VKTransitLineMarker *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v29[0] = 0;
  v29[1] = 0;
  v30[0] = 0;
  v31 = 0;
  *(v30 + 7) = 0;
  v32 = 1065353216;
  if (v3 && [(VKTransitLineMarker *)v3 featureID])
  {
    v28 = [(VKTransitLineMarker *)v4 featureID];
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(v29, v28, &v28);
  }

  if ((this + 232) != v29)
  {
    *(this + 70) = v32;
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(this + 29, *(v30 + 7));
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::clear(this + 400);
  v5 = *(this + 21);
  v6 = *(this + 22);
  if (v5 != v6)
  {
    do
    {
      md::TransitTileData::appendNodesAttachedToLines(*v5++, *(this + 32), this + 100);
    }

    while (v5 != v6);
    v5 = *(this + 21);
    v6 = *(this + 22);
  }

  while (v5 != v6)
  {
    v7 = *v5;
    md::TransitTileData::setSelectedLines(*v5, this + 29);
    md::TransitTileData::setSelectedNodes(*&v7[122], *&v7[123], this + 50);
    ++v5;
  }

  v8 = *(this + 28);
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  while (v9 != v10)
  {
    if (*v9 == 17)
    {
      if (v9 != v10)
      {
        v11 = *(v9 + 8);
        if (v11)
        {
          if (v31)
          {
            v12 = [(VKTransitLineMarker *)v4 identifier];
            v13 = v12;
            if (!v31 || (v14 = *(this + 21), v15 = *(this + 22), v14 == v15))
            {
              v23 = -1;
            }

            else
            {
              v27 = v12;
              v16 = 3.4028e38;
              do
              {
                v17 = *(*v14 + 896);
                v18 = *(*v14 + 904);
                v19 = 3.4028e38;
                while (v17 != v18)
                {
                  v20 = *(v17 + 80);
                  v21 = *(v17 + 88);
                  while (v20 != v21)
                  {
                    v22 = *(*(*v20 + 8) + 16);
                    if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v29, *(v22 + 40)))
                    {
                      v19 = fminf(*(v22 + 84), v19);
                    }

                    v20 += 8;
                  }

                  v17 += 248;
                }

                v16 = fminf(v19, v16);
                v14 += 8;
              }

              while (v14 != v15);
              if (v16 >= 4295000000.0)
              {
                v23 = -1;
              }

              else
              {
                v23 = vcvtms_u32_f32(v16);
              }

              v13 = v27;
            }

            md::SelectedTransitLayerDataSource::setSelectedLine(v11, v13, v23);
          }

          else
          {
            md::SelectedTransitLayerDataSource::setSelectedLine(v11, 0, -1);
          }
        }
      }

      break;
    }

    v9 += 16;
  }

  *(this + 456) = 1;
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(v30 + 7));
  v25 = v29[0];
  v29[0] = 0;
  if (v25)
  {
    v26 = mdm::zone_mallocator::instance(v24);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v26, v25);
  }
}

void sub_1B2E27904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, mdm::zone_mallocator *a14)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(a14);
  if (a11)
  {
    v18 = mdm::zone_mallocator::instance(v17);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v18, a11);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(float *a1, unint64_t a2, void *a3)
{
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
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == a2)
        {
          if (i[2] == a2)
          {
            return;
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
      }
    }
  }

  v12 = mdm::zone_mallocator::instance(a1);
  v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<unsigned long long,void *>>(v12);
  *v13 = 0;
  v13[1] = a2;
  v13[2] = *a3;
  v14 = (*(a1 + 5) + 1);
  v15 = a1[12];
  if (!v7 || (v15 * v7) < v14)
  {
    v16 = 1;
    if (v7 >= 3)
    {
      v16 = (v7 & (v7 - 1)) != 0;
    }

    v17 = v16 | (2 * v7);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__rehash<true>(a1, v19);
    v7 = *(a1 + 1);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= a2)
      {
        v3 = a2 % v7;
      }

      else
      {
        v3 = a2;
      }
    }

    else
    {
      v3 = (v7 - 1) & a2;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v3);
  if (v21)
  {
    *v13 = *v21;
LABEL_38:
    *v21 = v13;
    goto LABEL_39;
  }

  *v13 = *(a1 + 3);
  *(a1 + 3) = v13;
  *(v20 + 8 * v3) = a1 + 6;
  if (*v13)
  {
    v22 = *(*v13 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v22 >= v7)
      {
        v22 %= v7;
      }
    }

    else
    {
      v22 &= v7 - 1;
    }

    v21 = (*a1 + 8 * v22);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 5);
}

void sub_1B2E27B50(mdm::zone_mallocator *a1)
{
  v3 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<unsigned long long,void *>>(v3, v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::clear(uint64_t a1)
{
  if (*(a1 + 40))
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
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

void *std::vector<VKTransitLineMarker * {__strong}>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void *std::vector<VKTransitLineMarker * {__strong}>::push_back[abi:nn200100](void *result, uint64_t *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v7 = (v4 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - *result;
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

    v12[4] = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v10);
    }

    v12[0] = 0;
    v12[1] = 8 * v7;
    v12[3] = 0;
    v11 = *a2;
    *a2 = 0;
    *(8 * v7) = v11;
    v12[2] = 8 * v7 + 8;
    std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(v2, v12);
    v6 = *(v2 + 8);
    result = std::__split_buffer<GEOComposedRouteSection * {__strong}>::~__split_buffer(v12);
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(v2 + 8) = v6;
  return result;
}

float std::__introsort<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,false>(uint64_t a1, float *a2, uint64_t a3, char a4, float result)
{
LABEL_1:
  v9 = a2 - 6;
  v10 = a2 - 2;
  v139 = a2 - 12;
  v140 = a2 - 8;
  v138 = a2 - 18;
  v11 = a2 - 14;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:
          v91 = (v12 + 40);
          result = *(v12 + 40);
          v92 = (v12 + 24);
          v93 = (v12 + 16);
          v94 = *(v12 + 16);
          v95 = *v10;
          if (result >= v94)
          {
            if (v95 >= result)
            {
              return result;
            }

            v131 = *v92;
            *v92 = *v9;
            *v9 = v131;
            *&v131 = *v91;
            *v91 = *v10;
            *v10 = v131;
            result = *v91;
            if (*v91 >= *v93)
            {
              return result;
            }

            v171 = *v12;
            *v12 = *v92;
            *v92 = v171;
          }

          else
          {
            if (v95 >= result)
            {
              v173 = *v12;
              *v12 = *v92;
              *v92 = v173;
              *(v12 + 16) = result;
              *(v12 + 40) = v94;
              result = *v10;
              if (*v10 >= v94)
              {
                return result;
              }

              v137 = *v92;
              *v92 = *v9;
              *v9 = v137;
              v93 = (v12 + 40);
            }

            else
            {
              v167 = *v12;
              *v12 = *v9;
              *v9 = v167;
            }

            v91 = a2 - 2;
          }

          result = *v93;
          *v93 = *v91;
          *v91 = result;
          return result;
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,0>(v12, (v12 + 24), (v12 + 48), a2 - 6);
        case 5:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,0>(v12, (v12 + 24), (v12 + 48), (v12 + 72));
          result = *v10;
          if (*v10 < *(v12 + 88))
          {
            v85 = *(v12 + 72);
            *(v12 + 72) = *v9;
            *v9 = v85;
            LODWORD(v85) = *(v12 + 88);
            *(v12 + 88) = *v10;
            *v10 = v85;
            result = *(v12 + 88);
            v86 = *(v12 + 64);
            if (result < v86)
            {
              v87 = *(v12 + 48);
              *(v12 + 48) = *(v12 + 72);
              *(v12 + 72) = v87;
              *(v12 + 64) = result;
              *(v12 + 88) = v86;
              v88 = *(v12 + 40);
              if (result < v88)
              {
                v89 = *(v12 + 24);
                *(v12 + 24) = *(v12 + 48);
                *(v12 + 48) = v89;
                *(v12 + 40) = result;
                *(v12 + 64) = v88;
                v90 = *(v12 + 16);
                if (result < v90)
                {
                  v165 = *v12;
                  *v12 = *(v12 + 24);
                  *(v12 + 24) = v165;
                  *(v12 + 16) = result;
                  *(v12 + 40) = v90;
                }
              }
            }
          }

          return result;
      }
    }

    else
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result = *v10;
        if (*v10 < *(v12 + 16))
        {
          v166 = *v12;
          *v12 = *v9;
          *v9 = v166;
          result = *(v12 + 16);
          *(v12 + 16) = *v10;
          *v10 = result;
        }

        return result;
      }
    }

    if (v13 <= 575)
    {
      break;
    }

    if (!a3)
    {
      if (v12 == a2)
      {
        return result;
      }

      v105 = (v14 - 2) >> 1;
      v106 = v105;
      do
      {
        v107 = v106;
        if (v105 >= v106)
        {
          v108 = (2 * v106) | 1;
          v109 = v12 + 24 * v108;
          if (2 * v107 + 2 < v14 && *(v109 + 16) < *(v109 + 40))
          {
            v109 += 24;
            v108 = 2 * v107 + 2;
          }

          v110 = v12 + 24 * v107;
          v111 = *(v110 + 16);
          if (*(v109 + 16) >= v111)
          {
            v169 = *v110;
            do
            {
              v112 = v110;
              v110 = v109;
              *v112 = *v109;
              *(v112 + 16) = *(v109 + 16);
              if (v105 < v108)
              {
                break;
              }

              v113 = 2 * v108;
              v108 = (2 * v108) | 1;
              v109 = v12 + 24 * v108;
              v114 = v113 + 2;
              if (v114 < v14 && *(v109 + 16) < *(v109 + 40))
              {
                v109 += 24;
                v108 = v114;
              }
            }

            while (*(v109 + 16) >= v111);
            *v110 = v169;
            *(v110 + 16) = v111;
          }
        }

        v106 = v107 - 1;
      }

      while (v107);
      v115 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
      while (2)
      {
        v116 = 0;
        v117 = a2;
        v143 = *v12;
        result = *(v12 + 16);
        v118 = v12;
        do
        {
          v119 = v118 + 24 * v116;
          v120 = v119 + 24;
          v121 = (2 * v116) | 1;
          v116 = 2 * v116 + 2;
          if (v116 >= v115)
          {
            v116 = v121;
          }

          else
          {
            v122 = *(v119 + 40);
            v123 = *(v119 + 64);
            v124 = v119 + 48;
            if (v122 >= v123)
            {
              v116 = v121;
            }

            else
            {
              v120 = v124;
            }
          }

          *v118 = *v120;
          *(v118 + 16) = *(v120 + 16);
          v118 = v120;
        }

        while (v116 <= ((v115 - 2) >> 1));
        a2 -= 6;
        if (v120 != v117 - 6)
        {
          *v120 = *a2;
          *(v120 + 16) = *(v117 - 2);
          *a2 = v143;
          *(v117 - 2) = result;
          v125 = v120 - v12 + 24;
          if (v125 >= 25)
          {
            v126 = (-2 - 0x5555555555555555 * (v125 >> 3)) >> 1;
            v127 = v12 + 24 * v126;
            result = *(v120 + 16);
            if (*(v127 + 16) < result)
            {
              v170 = *v120;
              do
              {
                v128 = v120;
                v120 = v127;
                *v128 = *v127;
                *(v128 + 16) = *(v127 + 16);
                if (!v126)
                {
                  break;
                }

                v126 = (v126 - 1) >> 1;
                v127 = v12 + 24 * v126;
              }

              while (*(v127 + 16) < result);
              v129 = v170;
LABEL_169:
              *v120 = v129;
              *(v120 + 16) = result;
            }
          }

          if (v115-- <= 2)
          {
            return result;
          }

          continue;
        }

        break;
      }

      v129 = v143;
      goto LABEL_169;
    }

    v15 = v14 >> 1;
    v16 = v12 + 24 * (v14 >> 1);
    v17 = *v10;
    if (v13 >= 0xC01)
    {
      v18 = (v16 + 16);
      v19 = *(v16 + 16);
      v20 = (v12 + 16);
      v21 = *(v12 + 16);
      if (v19 >= v21)
      {
        if (v17 < v19)
        {
          v146 = *v16;
          *v16 = *v9;
          *v9 = v146;
          v24 = *(v16 + 16);
          *(v16 + 16) = *v10;
          *v10 = v24;
          if (*(v16 + 16) < *v20)
          {
            v147 = *v12;
            *v12 = *v16;
            *v16 = v147;
            v22 = (v12 + 16);
            v25 = (v16 + 16);
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v17 < v19)
        {
          v144 = *v12;
          *v12 = *v9;
          *v9 = v144;
          v22 = (v12 + 16);
          goto LABEL_26;
        }

        v150 = *v12;
        *v12 = *v16;
        *v16 = v150;
        *(v12 + 16) = *(v16 + 16);
        *(v16 + 16) = v21;
        if (*v10 < v21)
        {
          v151 = *v16;
          *v16 = *v9;
          *v9 = v151;
          v22 = (v16 + 16);
LABEL_26:
          v25 = a2 - 2;
LABEL_27:
          v27 = *v22;
          *v22 = *v25;
          *v25 = v27;
        }
      }

      v28 = v12 + 24 * v15;
      v30 = *(v28 - 8);
      v29 = (v28 - 8);
      v31 = v30;
      v32 = v29 - 4;
      v33 = (v12 + 40);
      v34 = *v140;
      if (v30 >= *(v12 + 40))
      {
        if (v34 < v31)
        {
          v152 = *v32;
          *v32 = *v139;
          *v139 = v152;
          v36 = *v29;
          *v29 = *v140;
          *v140 = v36;
          if (*v29 < *v33)
          {
            v37 = *(v12 + 24);
            *(v12 + 24) = *v32;
            *v32 = v37;
            v38 = v29;
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v35 = *(v12 + 24);
          *(v12 + 24) = *v139;
          *v139 = v35;
          goto LABEL_39;
        }

        v40 = *(v12 + 24);
        *(v12 + 24) = *v32;
        *v32 = v40;
        *&v40 = *v33;
        *v33 = *v29;
        *v29 = v40;
        if (*v140 < *&v40)
        {
          v155 = *v32;
          *v32 = *v139;
          *v139 = v155;
          v33 = v29;
LABEL_39:
          v38 = a2 - 8;
LABEL_40:
          v41 = *v33;
          *v33 = *v38;
          *v38 = v41;
        }
      }

      v42 = v12 + 24 * v15;
      v44 = *(v42 + 40);
      v43 = (v42 + 40);
      v45 = v44;
      v46 = v43 - 4;
      v47 = (v12 + 64);
      v48 = *v11;
      if (v44 >= *(v12 + 64))
      {
        if (v48 < v45)
        {
          v156 = *v46;
          *v46 = *v138;
          *v138 = v156;
          v50 = *v43;
          *v43 = *v11;
          *v11 = v50;
          v45 = *v43;
          if (*v43 < *v47)
          {
            v51 = *(v12 + 48);
            *(v12 + 48) = *v46;
            *v46 = v51;
            v52 = v43;
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v48 < v45)
        {
          v49 = *(v12 + 48);
          *(v12 + 48) = *v138;
          *v138 = v49;
          goto LABEL_49;
        }

        v53 = *(v12 + 48);
        *(v12 + 48) = *v46;
        *v46 = v53;
        v45 = *v47;
        *v47 = *v43;
        *v43 = v45;
        if (*v11 < v45)
        {
          v157 = *v46;
          *v46 = *v138;
          *v138 = v157;
          v47 = v43;
LABEL_49:
          v52 = a2 - 14;
LABEL_50:
          v54 = *v47;
          *v47 = *v52;
          *v52 = v54;
          v45 = *v43;
        }
      }

      v55 = *v18;
      if (*v18 >= *v29)
      {
        if (v45 < v55)
        {
          v159 = *v16;
          *v16 = *v46;
          *v46 = v159;
          v56 = *(v16 + 16);
          v57 = *v43;
          *(v16 + 16) = *v43;
          *v43 = v56;
          if (v57 < *v29)
          {
            v160 = *v32;
            *v32 = *v16;
            *v16 = v160;
            v43 = (v16 + 16);
            goto LABEL_59;
          }
        }
      }

      else
      {
        if (v45 < v55)
        {
          v158 = *v32;
          *v32 = *v46;
          *v46 = v158;
          goto LABEL_59;
        }

        v161 = *v32;
        *v32 = *v16;
        *v16 = v161;
        v58 = *v29;
        *v29 = *(v16 + 16);
        *(v16 + 16) = v58;
        if (*v43 < v58)
        {
          v162 = *v16;
          *v16 = *v46;
          *v46 = v162;
          v29 = (v16 + 16);
LABEL_59:
          v59 = *v29;
          *v29 = *v43;
          *v43 = v59;
        }
      }

      v163 = *v12;
      *v12 = *v16;
      *v16 = v163;
      goto LABEL_61;
    }

    v18 = (v12 + 16);
    v23 = *(v12 + 16);
    v20 = (v16 + 16);
    if (v23 >= *(v16 + 16))
    {
      if (v17 >= v23)
      {
        goto LABEL_62;
      }

      v148 = *v12;
      *v12 = *v9;
      *v9 = v148;
      v26 = *(v12 + 16);
      *(v12 + 16) = *v10;
      *v10 = v26;
      if (*(v12 + 16) >= *v20)
      {
        goto LABEL_62;
      }

      v149 = *v16;
      *v16 = *v12;
      *v12 = v149;
      goto LABEL_61;
    }

    if (v17 < v23)
    {
      v145 = *v16;
      *v16 = *v9;
      *v9 = v145;
      goto LABEL_36;
    }

    v153 = *v16;
    *v16 = *v12;
    *v12 = v153;
    v39 = *(v16 + 16);
    *(v16 + 16) = v23;
    *(v12 + 16) = v39;
    if (*v10 < v39)
    {
      v154 = *v12;
      *v12 = *v9;
      *v9 = v154;
      v20 = (v12 + 16);
LABEL_36:
      v18 = a2 - 2;
LABEL_61:
      v60 = *v20;
      *v20 = *v18;
      *v18 = v60;
    }

LABEL_62:
    --a3;
    if (a4)
    {
      result = *(v12 + 16);
LABEL_65:
      v141 = *v12;
      v61 = v12;
      do
      {
        v62 = v61;
        v61 += 24;
      }

      while (*(v62 + 40) < result);
      v63 = a2;
      if (v62 == v12)
      {
        v66 = a2;
        while (v61 < v66)
        {
          v64 = v66 - 6;
          v67 = *(v66 - 2);
          v66 -= 6;
          if (v67 < result)
          {
            goto LABEL_75;
          }
        }

        v64 = v66;
      }

      else
      {
        do
        {
          v64 = v63 - 6;
          v65 = *(v63 - 2);
          v63 -= 6;
        }

        while (v65 >= result);
      }

LABEL_75:
      v12 = v61;
      if (v61 < v64)
      {
        v68 = v64;
        do
        {
          v69 = *v12;
          *v12 = *v68;
          *v68 = v69;
          LODWORD(v69) = *(v12 + 16);
          *(v12 + 16) = *(v68 + 16);
          *(v68 + 16) = v69;
          do
          {
            v70 = *(v12 + 40);
            v12 += 24;
          }

          while (v70 < result);
          do
          {
            v71 = *(v68 - 8);
            v68 -= 24;
          }

          while (v71 >= result);
        }

        while (v12 < v68);
      }

      v72 = (v12 - 24);
      if (v12 - 24 != a1)
      {
        *a1 = *v72;
        *(a1 + 16) = *(v12 - 8);
      }

      *v72 = v141;
      *(v12 - 8) = result;
      if (v61 < v64)
      {
        goto LABEL_86;
      }

      v73 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *>(a1, v12 - 24);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *>(v12, a2))
      {
        a2 = (v12 - 24);
        if (v73)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v73)
      {
LABEL_86:
        std::__introsort<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,false>(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      result = *(v12 + 16);
      if (*(v12 - 8) < result)
      {
        goto LABEL_65;
      }

      v142 = *v12;
      if (result >= *v10)
      {
        v76 = v12 + 24;
        do
        {
          v12 = v76;
          if (v76 >= a2)
          {
            break;
          }

          v77 = *(v76 + 16);
          v76 += 24;
        }

        while (result >= v77);
      }

      else
      {
        v74 = v12;
        do
        {
          v12 = v74 + 24;
          v75 = *(v74 + 40);
          v74 += 24;
        }

        while (result >= v75);
      }

      v78 = a2;
      if (v12 < a2)
      {
        v79 = a2;
        do
        {
          v78 = v79 - 6;
          v80 = *(v79 - 2);
          v79 -= 6;
        }

        while (result < v80);
      }

      while (v12 < v78)
      {
        v164 = *v12;
        *v12 = *v78;
        *v78 = v164;
        v81 = *(v12 + 16);
        *(v12 + 16) = v78[4];
        *(v78 + 4) = v81;
        do
        {
          v82 = *(v12 + 40);
          v12 += 24;
        }

        while (result >= v82);
        do
        {
          v83 = *(v78 - 2);
          v78 -= 6;
        }

        while (result < v83);
      }

      v84 = (v12 - 24);
      if (v12 - 24 != a1)
      {
        *a1 = *v84;
        *(a1 + 16) = *(v12 - 8);
      }

      a4 = 0;
      *v84 = v142;
      *(v12 - 8) = result;
    }
  }

  v96 = (v12 + 24);
  v98 = v12 == a2 || v96 == a2;
  if (a4)
  {
    if (!v98)
    {
      v99 = 0;
      v100 = v12;
      do
      {
        result = v100[10];
        v101 = v100[4];
        v100 = v96;
        if (result < v101)
        {
          v168 = *v96;
          v102 = v99;
          while (1)
          {
            v103 = v12 + v102;
            *(v103 + 24) = *(v12 + v102);
            *(v103 + 40) = *(v12 + v102 + 16);
            if (!v102)
            {
              break;
            }

            v102 -= 24;
            if (result >= *(v103 - 8))
            {
              v104 = v12 + v102 + 24;
              goto LABEL_135;
            }
          }

          v104 = v12;
LABEL_135:
          *v104 = v168;
          *(v104 + 16) = result;
        }

        v96 = v100 + 6;
        v99 += 24;
      }

      while (v100 + 6 != a2);
    }
  }

  else if (!v98)
  {
    v132 = v12 + 16;
    do
    {
      result = *(a1 + 40);
      v133 = *(a1 + 16);
      a1 = v96;
      if (result < v133)
      {
        v172 = *v96;
        v134 = v132;
        do
        {
          v135 = v134;
          *(v134 + 8) = *(v134 - 16);
          *(v134 + 24) = *v134;
          v136 = *(v134 - 24);
          v134 -= 24;
        }

        while (result < v136);
        *(v135 - 1) = v172;
        *v135 = result;
      }

      v96 = (a1 + 24);
      v132 += 24;
    }

    while ((a1 + 24) != a2);
  }

  return result;
}