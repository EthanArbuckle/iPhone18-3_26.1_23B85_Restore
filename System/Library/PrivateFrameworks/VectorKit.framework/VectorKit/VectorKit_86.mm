unint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedFillColorWithDistancePipelineState,std::shared_ptr<ggl::ElevatedFillColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(void *a1, int8x8_t *a2, uint64_t *a3, uint8x8_t a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 9);
  v9 = *(a3 + 11);
  v10 = *(a3 + 12);
  a4.i32[0] = *(a3 + 13);
  v36 = vmovl_u8(a4);
  v11 = *(a3 + 17);
  v12 = *(a3 + 18);
  v13 = *(a3 + 19);
  v14 = *(a3 + 20);
  v15 = *(a3 + 21);
  v16 = *(a3 + 22);
  v17 = *(a3 + 24);
  v18 = *(a3 + 25);
  v19 = *(a3 + 26);
  v20 = *(a3 + 27);
  v21 = *(a3 + 28);
  v22 = *(a3 + 29);
  v23 = *(a3 + 30);
  v24 = *(a3 + 31);
  v25 = *(a3 + 32);
  v26 = *(a3 + 10);
  v27 = *(a3 + 33);
  v60[0] = 0;
  memset(&v60[15], 0, 15);
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = a4.i32[0];
  v43 = 0;
  v44 = v11;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v50 = v17;
  v51 = BYTE2(v6) | BYTE3(v6);
  v52 = (v36.i8[4] & 1) == 0;
  v53 = v7 ^ 1;
  v54 = 0;
  v55 = 0;
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v60[1] = v22;
  v60[2] = v23;
  v60[3] = v24;
  v60[4] = v25;
  v60[5] = v26;
  v60[6] = v8 & v36.i8[4] | v12 | v11;
  *&v60[7] = v25 ^ 1u;
  v60[8] = v27;
  result = ggl::packFunctionConstantKey(&v37, v15);
  v29 = a2[13];
  if (!*&v29)
  {
    goto LABEL_17;
  }

  v30 = vcnt_s8(v29);
  v30.i16[0] = vaddlv_u8(v30);
  if (v30.u32[0] > 1uLL)
  {
    v31 = result;
    if (result >= *&v29)
    {
      v31 = result % *&v29;
    }
  }

  else
  {
    v31 = (*&v29 - 1) & result;
  }

  v32 = *(*&a2[12] + 8 * v31);
  if (!v32 || (v33 = *v32) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v34 = v33[1];
    if (v34 == result)
    {
      break;
    }

    if (v30.u32[0] > 1uLL)
    {
      if (v34 >= *&v29)
      {
        v34 %= *&v29;
      }
    }

    else
    {
      v34 &= *&v29 - 1;
    }

    if (v34 != v31)
    {
      goto LABEL_17;
    }

LABEL_16:
    v33 = *v33;
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  if (v33[2] != result)
  {
    goto LABEL_16;
  }

  v35 = v33[4];
  *a1 = v33[3];
  a1[1] = v35;
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2DEF2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25)
{
  v28 = v26[4];
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  operator delete(v26);
  std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::DaVinci::ElevatedFillColorWithDistancePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<ggl::DaVinci::ElevatedFillColorPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedFillColorPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedFillColorPipelineSetup *>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02810;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *>(uint64_t a1, void *a2)
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

unint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorPipelineState,std::shared_ptr<ggl::ElevatedStrokeColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, __int128 a17, char a18, char a19, unsigned __int8 a20, char a21, char a22, char a23)
{
  v53 = *MEMORY[0x1E69E9840];
  memset(v52, 0, sizeof(v52));
  v33[0] = a3;
  v45 = 0;
  v33[1] = a4;
  v33[2] = a5;
  v33[3] = a6;
  v33[4] = a7;
  v33[5] = a8;
  v33[6] = a9;
  v33[7] = a10;
  v33[8] = a11;
  v33[9] = a12;
  v33[10] = a13;
  v33[11] = a14;
  v33[12] = a15;
  v33[13] = a16;
  v33[14] = a17;
  v34 = BYTE1(a17);
  v35 = BYTE2(a17);
  v36 = BYTE3(a17);
  v37 = BYTE4(a17);
  v38 = *(&a17 + 5);
  v39 = a5 | a6;
  v40 = a17 ^ 1;
  v41 = a11 ^ 1;
  v42 = 0;
  v43 = 0;
  v44 = *(&a17 + 9);
  v46 = *(&a17 + 13);
  v47 = __PAIR16__(a18, HIBYTE(a17));
  v48 = a19;
  v49 = a12 & a17 | BYTE3(a17) | BYTE2(a17);
  v50 = a18 ^ 1;
  v51 = a20;
  result = ggl::packFunctionConstantKey(v33, BYTE5(a17));
  v25 = *(a2 + 104);
  if (!v25)
  {
    goto LABEL_17;
  }

  v26 = vcnt_s8(v25);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = result;
    if (result >= v25)
    {
      v27 = result % v25;
    }
  }

  else
  {
    v27 = (v25 - 1) & result;
  }

  v28 = *(*(a2 + 96) + 8 * v27);
  if (!v28 || (v29 = *v28) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v30 = v29[1];
    if (v30 == result)
    {
      break;
    }

    if (v26.u32[0] > 1uLL)
    {
      if (v30 >= v25)
      {
        v30 %= v25;
      }
    }

    else
    {
      v30 &= v25 - 1;
    }

    if (v30 != v27)
    {
      goto LABEL_17;
    }

LABEL_16:
    v29 = *v29;
    if (!v29)
    {
      goto LABEL_17;
    }
  }

  if (v29[2] != result)
  {
    goto LABEL_16;
  }

  v31 = v29[4];
  *a1 = v29[3];
  a1[1] = v31;
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2DF0444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31)
{
  v34 = v32[4];
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  operator delete(v32);
  std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::DaVinci::ElevatedStrokeColorPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *>(uint64_t a1, void *a2)
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

void md::layoutElevatedPolygonMeshes<md::DaVinciGroundRenderable>(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int8x8_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1;
  v15 = *(a3 + 4);
  if (a3[3] == 1)
  {
    v16 = *(a2 + 264);
    v153 = *(a2 + 256);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v153 = 0;
    v16 = 0;
  }

  v17 = md::LayoutContext::get<md::CameraContext>(*(a1 + 8));
  v19 = fmaxf(*(v17 + 3080) + *(v17 + 3076), 1.0);
  v158 = 0uLL;
  v20 = *a7;
  v151 = a5;
  v152 = v16;
  v148 = v14;
  if (!*a7)
  {
    v25 = 0;
    v24 = 0;
    v23 = 2;
    v22 = 0.0;
    LODWORD(v26) = 0;
    goto LABEL_39;
  }

  v21 = *(a7 + 8);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v169.i64, v20, v21);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  v22 = 0.0;
  if (v171 != 1)
  {
    v25 = 0;
    v24 = 0;
    v23 = 2;
    v27 = 1;
LABEL_20:
    LODWORD(v26) = 0;
    goto LABEL_32;
  }

  if (v19 >= 0x17)
  {
    LODWORD(v14) = 23;
  }

  else
  {
    LODWORD(v14) = v19;
  }

  v23 = 2;
  if ((gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v169.i64[0] + 24), 91, v14, 2u, 0) & 1) == 0)
  {
    v25 = 0;
    v27 = 0;
    v24 = 0;
    goto LABEL_20;
  }

  v24 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v169.i64[0] + 24), 104, v14, 2, 0);
  if (gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(107, 2u, *(v169.i64[0] + 24)))
  {
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v156, *(v169.i64[0] + 24), 93, 2u, fminf(v19, 23.0));
  }

  else
  {
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v156, *(v169.i64[0] + 24), 93, v14, 2u, 0);
  }

  v147 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v156[0])), vdupq_n_s32(0x37800080u));
  v158 = v147;
  v23 = *(v169.i64[0] + 24);
  *&v26 = fminf(v19, 23.0);
  v28 = *v23;
  if (!*v23 || (v29 = *v28, LODWORD(v28) = *v28 == 1.0, *(v23 + 10) != 1) || (v29 != 0.0 ? (_ZF = v29 == 1.0) : (_ZF = 1), _ZF))
  {
    v31 = *(v23 + v28 + 11);
    if (v31 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v169.i64[0] + 24), 97, v31, 0, *&v26);
      LODWORD(v26) = v32;
      goto LABEL_31;
    }

    goto LABEL_234;
  }

  while (1)
  {
    LOBYTE(v156[0]) = 1;
    LOBYTE(v159) = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v23, 97, 0, v156, *&v26);
    v145 = v15;
    v138 = v137;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v23, 97, 1, &v159, *&v26);
    *&v26 = v138 + ((v139 - v138) * v29);
    v15 = v145;
LABEL_31:
    v23 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v23, 319, v14, 2, 0);
    v25 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v169.i64[0] + 24), 138, v14, 2, 0) - 1 < 2;
    v18 = v147;
    v22 = v147.f32[3];
    v27 = 1;
LABEL_32:
    if (v171 == 1)
    {
      (*(*v169.i64[0] + 56))(v169.i64[0]);
    }

    if (v170)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v170);
    }

    if (v169.i64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v169.i64[1]);
    }

    if (v27)
    {
LABEL_39:
      if (a3[1] == 1)
      {
        v18 = xmmword_1B33AFEE0;
        v158 = xmmword_1B33AFEE0;
        v22 = 1.0;
      }

      if (v22 >= 0.0039062 && *&v26 >= 0.1)
      {
        *v18.i32 = *(a2 + 376) * *&v26;
        v147 = v18;
        v18 = ggl::RenderItem::RenderItem(&v169, "draped stroke");
        v167.n128_u8[0] = 0;
        v168 = 0;
        v159 = 0;
        v160 = 0;
        v161 = 256;
        v162 = 1;
        v163 = 0;
        v164 = 2;
        v165 = 0;
        v166 = 0;
        *(&v165 + 2) = v153 != 0;
        v33 = *(a6 + 88);
        if (!v33)
        {
          v42 = *(a6 + 8);
          v167 = *(a6 + 24);
          v168 = 1;
          v43 = ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup>::pop(*&v151[1]);
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v156, *(v43[17] + 48));
          v44 = 0;
          v45 = v157;
          v46 = v157;
          *v157 = v158;
          v47 = v46 + 2;
          do
          {
            *(v47 + v44) = *(a8 + v44);
            v44 += 4;
          }

          while (v44 != 16);
          v143 = v42;
          v48 = 0;
          if (v23 == 1)
          {
            v49 = 0.0;
          }

          else
          {
            v49 = 1.0;
          }

          if (v23 == 1)
          {
            *v48.i32 = 1.0;
          }

          if (v23 == 2)
          {
            v49 = 0.5;
            *v48.i32 = 0.5;
          }

          v50 = -(v147.f32[0] * v49);
          *v48.i32 = *v48.i32 * v147.f32[0];
          if (a3[1])
          {
            v50 = -1.0;
            *v48.i32 = 1.0;
          }

          *(v45 + 4) = v50;
          *(v45 + 5) = v48.i32[0];
          BYTE6(v165) = a3[2];
          v40 = v151;
          md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineState,std::shared_ptr<ggl::ElevatedStrokeColorWithDistanceShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v154, v151 + 21, &v159, v48);
          v51 = v155;
          ggl::GlobeAtmosphere::BasePipelineSetup::setState(v43, v154, v155);
          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v51);
          }

          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v43[17], v43[29], *(a2 + 224), *(a2 + 232));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v43[17], v43[29], *(a2 + 240), *(a2 + 248));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(v43[17], v43[29], v153, v152);
          v171 = v43;
          ggl::BufferMemory::~BufferMemory(v156);
          v52 = 1;
LABEL_71:
          LODWORD(v14) = 1;
          if (v22 >= 1.0)
          {
            v62 = md::DaVinciRenderStateCache::renderState(&v40[34], 3, 0, ((a3[1] | a3[2]) & 1) == 0, 0, 1, a3[1], 3);
          }

          else
          {
            v172 = a3[4] + md::StencilReserverByColor::reserveSlot(&v40[35].__shared_owners_, &v158);
            v62 = v40 + 24;
          }

          v170 = v62;
          v173 = (v24 << 10) | 1u;
          v63 = *(a4 + 8);
          if (v63)
          {
            v64 = a4 + 8;
            do
            {
              if (*(v63 + 28) >= v25)
              {
                v64 = v63;
              }

              v63 = *(v63 + 8 * (*(v63 + 28) < v25));
            }

            while (v63);
            if (v64 != a4 + 8 && v25 >= *(v64 + 28))
            {
              v65 = md::FrameGraph::renderQueueForPass(*(*(a3 + 1) + 8), *(v64 + 32));
              if (v65)
              {
                v66 = *(*(v65 + 16) + 8 * *(v64 + 33));
              }

              else
              {
                v66 = 0;
              }

              v67 = &v151[99];
              if (v52)
              {
                md::RenderItemPool::construct(v67, &v169, v143, &v167);
              }

              else
              {
                md::RenderItemPool::construct(v67, &v169, v143);
              }

              ggl::CommandBuffer::pushRenderItem(v66, v68);
            }
          }

          goto LABEL_87;
        }

        if (v33 != 1)
        {
          goto LABEL_232;
        }

        if (*(a6 + 32) == 1)
        {
          v143 = *(a6 + 8);
          v14 = ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorPipelineSetup>::pop(*v151);
          md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorPipelineState,std::shared_ptr<ggl::ElevatedStrokeColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v156, &v151[4], &v159);
          v34 = *(&v156[0] + 1);
          ggl::GlobeAtmosphere::BasePipelineSetup::setState(v14, *&v156[0], *(&v156[0] + 1));
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v34);
          }

          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v156, *(v14[17] + 48));
          v36 = 0;
          v37 = v157;
          v38.i32[1] = DWORD1(v158);
          *v157 = v158;
          v37[6].i32[0] = v15;
          do
          {
            v37[4].i32[v36] = *(a8 + v36 * 4);
            ++v36;
          }

          while (v36 != 4);
          if ((*(a6 + 32) & 1) == 0)
          {
            goto LABEL_233;
          }

          v38.i32[0] = *(a6 + 24);
          v39 = v23;
          if (v23 == 2)
          {
            v41 = 0x3F0000003F000000;
            v40 = v151;
          }

          else
          {
            v40 = v151;
            if (v39 == 1)
            {
              v41 = 1065353216;
            }

            else
            {
              v41 = 0x3F80000000000000;
            }
          }

          v53 = vmul_n_f32(v41, v147.f32[0]);
          *v35.i32 = *(a6 + 28) + *v38.i32;
          v54 = vdup_lane_s32(v38, 0);
          v55.i32[0] = vsub_f32(v38, v53).u32[0];
          v55.i32[1] = vadd_f32(v54, v53).i32[1];
          v56 = vmaxnm_f32(vdiv_f32(v55, vdup_lane_s32(v35, 0)), 0);
          __asm
          {
            FMOV            V1.2S, #1.0
            FMOV            V2.2S, #-1.0
          }

          v37[2] = vmla_f32(_D2, 0x4000000040000000, vminnm_f32(v56, _D1));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v14[17], v14[29], *(a2 + 224), *(a2 + 232));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v14[17], v14[29], *(a2 + 240), *(a2 + 248));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(v14[17], v14[29], v153, v152);
          v171 = v14;
          ggl::BufferMemory::~BufferMemory(v156);
          v52 = 0;
          goto LABEL_71;
        }
      }
    }

LABEL_87:
    v158 = 0uLL;
    v69 = *a7;
    if (!*a7)
    {
      v72 = 0;
      v24 = 0;
      v23 = 2;
      v71 = 0.0;
      LODWORD(v26) = 0;
      goto LABEL_121;
    }

    v70 = *(a7 + 8);
    if (v70)
    {
      atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v169.i64, v69, v70);
    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v70);
    }

    v71 = 0.0;
    if (v171 != 1)
    {
      v72 = 0;
      v24 = 0;
      v23 = 2;
      v73 = 1;
LABEL_102:
      LODWORD(v26) = 0;
      goto LABEL_114;
    }

    if (v19 >= 0x17)
    {
      LODWORD(v14) = 23;
    }

    else
    {
      LODWORD(v14) = v19;
    }

    v23 = 2;
    if ((gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v169.i64[0] + 24), 91, v14, 2u, 0) & 1) == 0)
    {
      v72 = 0;
      v73 = 0;
      v24 = 0;
      goto LABEL_102;
    }

    v24 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v169.i64[0] + 24), 104, v14, 2, 0);
    if (gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(407, 2u, *(v169.i64[0] + 24)))
    {
      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v156, *(v169.i64[0] + 24), 403, 2u, fminf(v19, 23.0));
    }

    else
    {
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v156, *(v169.i64[0] + 24), 403, v14, 2u, 0);
    }

    v147 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v156[0])), vdupq_n_s32(0x37800080u));
    v158 = v147;
    v74 = *(v169.i64[0] + 24);
    v75 = fminf(v19, 23.0);
    v76 = *v74;
    if (*v74)
    {
      v77 = *v76;
      LODWORD(v76) = *v76 == 1.0;
      if (*(v74 + 10) == 1 && v77 != 0.0 && v77 != 1.0)
      {
        goto LABEL_237;
      }
    }

    v79 = *(v74 + v76 + 11);
    if (v79 == 2)
    {
      v77 = 0.0;
LABEL_237:
      LOBYTE(v156[0]) = 1;
      LOBYTE(v159) = 1;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v74, 404, 0, v156, v75);
      v146 = v15;
      v141 = v140;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v74, 404, 1, &v159, v75);
      *&v26 = v141 + ((v142 - v141) * v77);
      v15 = v146;
      goto LABEL_113;
    }

    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v169.i64[0] + 24), 404, v79, 0, v75);
    LODWORD(v26) = v80;
LABEL_113:
    v23 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v74, 408, v14, 2, 0);
    v72 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v169.i64[0] + 24), 138, v14, 2, 0) - 1 < 2;
    v18 = v147;
    v71 = v147.f32[3];
    v73 = 1;
LABEL_114:
    if (v171 == 1)
    {
      (*(*v169.i64[0] + 56))(v169.i64[0]);
    }

    if (v170)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v170);
    }

    if (v169.i64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v169.i64[1]);
    }

    if ((v73 & 1) == 0)
    {
      goto LABEL_169;
    }

LABEL_121:
    if (a3[1] == 1)
    {
      v18 = xmmword_1B33AFEE0;
      v158 = xmmword_1B33AFEE0;
      v71 = 1.0;
    }

    if (v71 < 0.0039062 || *&v26 < 0.1)
    {
      goto LABEL_169;
    }

    *v18.i32 = *(a2 + 376) * *&v26;
    v147 = v18;
    ggl::RenderItem::RenderItem(&v169, "draped stroke");
    v167.n128_u8[0] = 0;
    v168 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 256;
    v162 = 1;
    v163 = 0;
    v164 = 2;
    v165 = 0;
    v166 = 0;
    *(&v165 + 2) = v153 != 0;
    v81 = *(a6 + 88);
    if (!v81)
    {
      v89 = *(a6 + 8);
      v167 = *(a6 + 24);
      v168 = 1;
      v14 = ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup>::pop(*&v151[1]);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v156, *(v14[17] + 48));
      v90 = 0;
      v91 = v157;
      v92 = v157;
      *v157 = v158;
      v93 = v92 + 2;
      do
      {
        *(v93 + v90) = *(a8 + v90);
        v90 += 4;
      }

      while (v90 != 16);
      v144 = v89;
      v94 = 0;
      if (v23 == 1)
      {
        v95 = 0.0;
      }

      else
      {
        v95 = 1.0;
      }

      if (v23 == 1)
      {
        *v94.i32 = 1.0;
      }

      if (v23 == 2)
      {
        v95 = 0.5;
        *v94.i32 = 0.5;
      }

      v96 = -(v147.f32[0] * v95);
      *v94.i32 = *v94.i32 * v147.f32[0];
      if (a3[1])
      {
        v96 = -1.0;
        *v94.i32 = 1.0;
      }

      *(v91 + 4) = v96;
      *(v91 + 5) = v94.i32[0];
      BYTE6(v165) = a3[2];
      v23 = v151;
      md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineState,std::shared_ptr<ggl::ElevatedStrokeColorWithDistanceShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v154, v151 + 21, &v159, v94);
      v97 = v155;
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(v14, v154, v155);
      if (v97)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v97);
      }

      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v14[17], v14[29], *(a2 + 224), *(a2 + 232));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v14[17], v14[29], *(a2 + 240), *(a2 + 248));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(v14[17], v14[29], v153, v152);
      v171 = v14;
      ggl::BufferMemory::~BufferMemory(v156);
      v98 = 1;
      goto LABEL_153;
    }

    if (v81 == 1)
    {
      break;
    }

LABEL_232:
    std::__throw_bad_variant_access[abi:nn200100]();
LABEL_233:
    std::__throw_bad_optional_access[abi:nn200100]();
LABEL_234:
    v29 = 0.0;
  }

  if (*(a6 + 64) != 1)
  {
    goto LABEL_169;
  }

  v144 = *(a6 + 40);
  v14 = ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorPipelineSetup>::pop(*v151);
  md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorPipelineState,std::shared_ptr<ggl::ElevatedStrokeColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v156, &v151[4], &v159);
  v82 = *(&v156[0] + 1);
  ggl::GlobeAtmosphere::BasePipelineSetup::setState(v14, *&v156[0], *(&v156[0] + 1));
  if (v82)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v82);
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v156, *(v14[17] + 48));
  v84 = 0;
  v85 = v157;
  v86.i32[1] = DWORD1(v158);
  *v157 = v158;
  v85[6].i32[0] = v15;
  do
  {
    v85[4].i32[v84] = *(a8 + v84 * 4);
    ++v84;
  }

  while (v84 != 4);
  if ((*(a6 + 64) & 1) == 0)
  {
    goto LABEL_233;
  }

  v86.i32[0] = *(a6 + 56);
  v87 = v23;
  if (v23 == 2)
  {
    v88 = 0x3F0000003F000000;
    v23 = v151;
  }

  else
  {
    v23 = v151;
    if (v87 == 1)
    {
      v88 = 1065353216;
    }

    else
    {
      v88 = 0x3F80000000000000;
    }
  }

  v99 = vmul_n_f32(v88, v147.f32[0]);
  *v83.i32 = *(a6 + 60) + *v86.i32;
  v100 = vdup_lane_s32(v86, 0);
  v101.i32[0] = vsub_f32(v86, v99).u32[0];
  v101.i32[1] = vadd_f32(v100, v99).i32[1];
  v102 = vmaxnm_f32(vdiv_f32(v101, vdup_lane_s32(v83, 0)), 0);
  __asm
  {
    FMOV            V1.2S, #1.0
    FMOV            V2.2S, #-1.0
  }

  v85[2] = vmla_f32(_D2, 0x4000000040000000, vminnm_f32(v102, _D1));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v14[17], v14[29], *(a2 + 224), *(a2 + 232));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v14[17], v14[29], *(a2 + 240), *(a2 + 248));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(v14[17], v14[29], v153, v152);
  v171 = v14;
  ggl::BufferMemory::~BufferMemory(v156);
  v98 = 0;
LABEL_153:
  if (v71 >= 1.0)
  {
    v105 = md::DaVinciRenderStateCache::renderState((v23 + 816), 3, 0, ((a3[1] | a3[2]) & 1) == 0, 0, 1, a3[1], 3);
  }

  else
  {
    v172 = a3[4] + md::StencilReserverByColor::reserveSlot(v23 + 848, &v158);
    v105 = (v23 + 576);
  }

  v170 = v105;
  v173 = (v24 << 10) | 3u;
  v106 = *(a4 + 8);
  if (v106)
  {
    v107 = a4 + 8;
    do
    {
      if (*(v106 + 28) >= v72)
      {
        v107 = v106;
      }

      v106 = *(v106 + 8 * (*(v106 + 28) < v72));
    }

    while (v106);
    if (v107 != a4 + 8 && v72 >= *(v107 + 28))
    {
      v108 = md::FrameGraph::renderQueueForPass(*(*(a3 + 1) + 8), *(v107 + 32));
      if (v108)
      {
        v109 = *(*(v108 + 16) + 8 * *(v107 + 33));
      }

      else
      {
        v109 = 0;
      }

      v110 = &v151[99];
      if (v98)
      {
        md::RenderItemPool::construct(v110, &v169, v144, &v167);
      }

      else
      {
        md::RenderItemPool::construct(v110, &v169, v144);
      }

      ggl::CommandBuffer::pushRenderItem(v109, v111);
    }
  }

LABEL_169:
  v112 = *a7;
  if (!*a7)
  {
    if ((*a3 & 1) == 0)
    {
      goto LABEL_229;
    }

    v24 = 0;
    v115 = 0;
    goto LABEL_196;
  }

  v113 = *(a7 + 8);
  if (v113)
  {
    atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v169.i64, v112, v113);
  if (v113)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v113);
  }

  v26 = 0;
  v114 = 0;
  if (v171 != 1)
  {
    v115 = 0;
    v24 = 0;
    v116 = 1;
LABEL_185:
    v19 = 0.0;
    goto LABEL_188;
  }

  v23 = v19;
  if (v23 >= 0x17)
  {
    LODWORD(v14) = 23;
  }

  else
  {
    LODWORD(v14) = v19;
  }

  if ((gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v169.i64[0] + 24), 91, v14, 2u, 0) & 1) == 0)
  {
    v115 = 0;
    v116 = 0;
    v24 = 0;
    goto LABEL_185;
  }

  v24 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v169.i64[0] + 24), 104, v14, 2, 0);
  a7 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(*v148[2], *(v148[2] + 8));
  if (gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(108, 2u, *(v169.i64[0] + 24)))
  {
    md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v156, a7, &v169, 2u, v19);
  }

  else
  {
    md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v156, a7, &v169, v19, 2u);
  }

  v26 = *&v156[0];
  v19 = *(v156 + 3);
  v114 = DWORD2(v156[0]);
  v115 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v169.i64[0] + 24), 138, v14, 2, 0) - 1 < 2;
  v116 = 1;
LABEL_188:
  if (v171 == 1)
  {
    (*(*v169.i64[0] + 56))(v169.i64[0]);
  }

  if (v170)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v170);
  }

  if (v169.i64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v169.i64[1]);
  }

  if ((v116 & 1) == 0)
  {
    goto LABEL_229;
  }

  if (*a3)
  {
LABEL_196:
    v26 = 0x3F80000000000000;
    v114 = 0;
    v19 = 1.0;
  }

  else if (v19 < 0.0039062)
  {
    goto LABEL_229;
  }

  ggl::RenderItem::RenderItem(&v169, "draped fill");
  v167.n128_u8[0] = 0;
  v168 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 256;
  v162 = 1;
  v163 = 0;
  v164 = 2;
  v165 = 0;
  v166 = 0;
  *(&v165 + 2) = v153 != 0;
  v117 = *(a6 + 88);
  if (v117)
  {
    if (v117 == 1)
    {
      v118 = *(a6 + 72);
      if (!v118)
      {
        goto LABEL_229;
      }

      v119 = ggl::FragmentedPool<ggl::DaVinci::ElevatedFillColorPipelineSetup>::pop(*&v151[2]);
      md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedFillColorPipelineState,std::shared_ptr<ggl::ElevatedFillNoWidthClipColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v158, v151 + 38, &v159, v120);
      v121 = *(&v158 + 1);
      v156[0] = v158;
      if (*(&v158 + 1))
      {
        atomic_fetch_add_explicit((*(&v158 + 1) + 8), 1uLL, memory_order_relaxed);
        ggl::PipelineSetup::setState(v119, v156);
        std::__shared_weak_count::__release_shared[abi:nn200100](v121);
        std::__shared_weak_count::__release_shared[abi:nn200100](v121);
      }

      else
      {
        ggl::PipelineSetup::setState(v119, v156);
      }

      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v156, *(v119[17] + 32));
      v129 = 0;
      v130 = v157;
      *v157 = v26;
      *(v130 + 2) = v114;
      *(v130 + 3) = v19;
      *(v130 + 8) = v15;
      v131 = v130 + 1;
      do
      {
        *(v131 + v129) = *(a8 + v129);
        v129 += 4;
      }

      while (v129 != 16);
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v119[17], v119[29], *(a2 + 224), *(a2 + 232));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v119[17], v119[29], *(a2 + 240), *(a2 + 248));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(v119[17], v119[29], v153, v152);
      v171 = v119;
      ggl::BufferMemory::~BufferMemory(v156);
      v128 = 0;
      goto LABEL_214;
    }

    goto LABEL_232;
  }

  if (*(a6 + 40) != 1)
  {
    goto LABEL_229;
  }

  v118 = *(a6 + 8);
  v167 = *(a6 + 24);
  v168 = 1;
  v122 = ggl::FragmentedPool<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup>::pop(*&v151[3]);
  md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedFillColorWithDistancePipelineState,std::shared_ptr<ggl::ElevatedFillColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v156, v151 + 55, &v159, v123);
  v124 = *(&v156[0] + 1);
  ggl::GlobeAtmosphere::BasePipelineSetup::setState(v122, *&v156[0], *(&v156[0] + 1));
  if (v124)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v124);
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v156, *(v122[17] + 32));
  v125 = 0;
  v126 = v157;
  *v157 = v26;
  *(v126 + 2) = v114;
  *(v126 + 3) = v19;
  v127 = v126 + 1;
  do
  {
    *(v127 + v125) = *(a8 + v125);
    v125 += 4;
  }

  while (v125 != 16);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v122[17], v122[29], *(a2 + 224), *(a2 + 232));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v122[17], v122[29], *(a2 + 240), *(a2 + 248));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(v122[17], v122[29], v153, v152);
  v171 = v122;
  ggl::BufferMemory::~BufferMemory(v156);
  v128 = 1;
LABEL_214:
  v170 = md::DaVinciRenderStateCache::renderState(&v151[102], 3, 0, *a3 ^ 1u, 0, 1, *a3, 3);
  v173 = (v24 << 10);
  v132 = *(a4 + 8);
  v150 = a4 + 8;
  if (v132)
  {
    v133 = v150;
    do
    {
      if (*(v132 + 28) >= v115)
      {
        v133 = v132;
      }

      v132 = *(v132 + 8 * (*(v132 + 28) < v115));
    }

    while (v132);
    if (v133 != v150 && v115 >= *(v133 + 28))
    {
      v134 = md::FrameGraph::renderQueueForPass(*(*(a3 + 1) + 8), *(v133 + 32));
      if (v134)
      {
        v135 = *(*(v134 + 16) + 8 * *(v133 + 33));
        if (v128)
        {
          goto LABEL_223;
        }

LABEL_227:
        md::RenderItemPool::construct(&v151[99], &v169, v118);
      }

      else
      {
        v135 = 0;
        if (!v128)
        {
          goto LABEL_227;
        }

LABEL_223:
        md::RenderItemPool::construct(&v151[99], &v169, v118, &v167);
      }

      ggl::CommandBuffer::pushRenderItem(v135, v136);
    }
  }

LABEL_229:
  if (v152)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v152);
  }
}

void sub_1B2DF19BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void md::Logic<md::ARDebugDrawIntersectionsLogic,md::ARDebugDrawIntersectionsContext,md::LogicDependencies<gdc::TypeList<md::ARWorldIntersectorContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::ARDebugDrawIntersectionsLogic::runBeforeLayout(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 120);
  v3 = gdc::Registry::storage<arComponents::DidIntersectFrustum>(v2);
  v4 = gdc::Registry::storage<arComponents::LocalBounds>(v2);
  v65 = gdc::Registry::storage<arComponents::MapTileDataComponent>(v2);
  v5.i64[0] = v3;
  v5.i64[1] = v4;
  v6 = (v65 + 32);
  v67 = vaddq_s64(v5, vdupq_n_s64(0x20uLL));
  v68 = v65 + 32;
  v7 = v67.i64[0];
  v8 = 1;
  v9 = &v67;
  do
  {
    if (*(v67.i64[v8] + 32) - *(v67.i64[v8] + 24) < *(v7 + 32) - *(v7 + 24))
    {
      v7 = v67.i64[v8];
      v9 = (&v67 + v8 * 8);
    }

    ++v8;
  }

  while (v8 != 3);
  v10 = (v3 + 32);
  v64 = v9->i64[0];
  if (v3 + 32 == v9->i64[0])
  {
    v45 = *(v3 + 56);
    v44 = *(v3 + 64);
    while (v45 != v44)
    {
      v46 = *(v45 + 4);
      if (v4[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v4 + 4, v46) && *(v65 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6, v46))
      {
        v47 = *v45;
        v48 = HIDWORD(*v45);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v4 + 4, HIDWORD(*v45));
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v6, v48);
        v49 = gdc::Registry::storage<arComponents::DidIntersectRaycast>(*(a1 + 120));
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v49 + 32), v48);
        v51 = *(a1 + 120);
        if (*(v49 + 64) == Index)
        {
          v67.i16[0] = 257;
          v52 = -256;
        }

        else
        {
          v67.i16[0] = 0;
          v52 = -16776961;
        }

        *(v67.i32 + 2) = v52;
        v53 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v51);
        gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(v53, v47, v67.i16);
      }

      v45 += 8;
    }
  }

  if (v4 + 4 == v64)
  {
    v54 = v4[7];
    v55 = v4[8];
    while (v54 != v55)
    {
      v56 = *(v54 + 4);
      if (*(v3 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v10, v56) && *(v65 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6, v56))
      {
        v57 = *v54;
        v58 = HIDWORD(*v54);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v6, HIDWORD(*v54));
        v59 = gdc::Registry::storage<arComponents::DidIntersectRaycast>(*(a1 + 120));
        v60 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v59 + 32), v58);
        v61 = *(a1 + 120);
        if (*(v59 + 64) == v60)
        {
          v67.i16[0] = 257;
          v62 = -256;
        }

        else
        {
          v67.i16[0] = 0;
          v62 = -16776961;
        }

        *(v67.i32 + 2) = v62;
        v63 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v61);
        gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(v63, v57, v67.i16);
      }

      v54 += 8;
    }
  }

  v11 = v4 + 4;
  if (v6 == v64)
  {
    v12 = *(v65 + 56);
    for (i = *(v65 + 64); v12 != i; v12 += 8)
    {
      v14 = *(v12 + 4);
      if (*(v3 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v10, v14) && v4[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v11, v14))
      {
        v15 = *v12;
        v16 = HIDWORD(*v12);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v11, HIDWORD(*v12));
        v17 = gdc::Registry::storage<arComponents::DidIntersectRaycast>(*(a1 + 120));
        v18 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v17 + 32), v16);
        v19 = *(a1 + 120);
        if (*(v17 + 64) == v18)
        {
          v67.i16[0] = 257;
          *(v67.i32 + 2) = -256;
        }

        else
        {
          v67.i16[0] = 0;
          *(v67.i32 + 2) = -16776961;
        }

        v20 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v19);
        gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(v20, v15, v67.i16);
        v11 = v4 + 4;
      }
    }
  }

  v21 = *(a1 + 120);
  v22 = gdc::Registry::storage<arComponents::DidIntersectFrustum>(v21);
  v23 = gdc::Registry::storage<arComponents::WorldBounds>(v21);
  v24 = v23;
  v25 = (v23 + 32);
  v27 = v22[7];
  v26 = v22[8];
  if (*(v23 + 64) - *(v23 + 56) >= (v26 - v27))
  {
    v28 = v22 + 4;
  }

  else
  {
    v28 = (v23 + 32);
  }

  v66 = v28;
  if (v22 + 4 == v28 && v27 != v26)
  {
    do
    {
      if (*(v24 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v25, *(v27 + 4)))
      {
        v30 = *v27;
        v31 = HIDWORD(*v27);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v25, HIDWORD(*v27));
        v32 = gdc::Registry::storage<arComponents::DidIntersectRaycast>(*(a1 + 120));
        v33 = *(v32 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v32 + 32), v31);
        v34 = *(a1 + 120);
        v67.i8[0] = 0;
        v67.i8[1] = v33;
        *(v67.i32 + 2) = -16776961;
        v35 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v34);
        gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(v35, v30, v67.i16);
      }

      v27 += 8;
    }

    while (v27 != v26);
  }

  if (v25 == v66)
  {
    v36 = *(v24 + 56);
    for (j = *(v24 + 64); v36 != j; v36 += 8)
    {
      if (v22[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v22 + 4, *(v36 + 4)))
      {
        v38 = *v36;
        v39 = HIDWORD(*v36);
        v40 = gdc::Registry::storage<arComponents::DidIntersectRaycast>(*(a1 + 120));
        v41 = *(v40 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v40 + 32), v39);
        v42 = *(a1 + 120);
        v67.i8[0] = 0;
        v67.i8[1] = v41;
        *(v67.i32 + 2) = -16776961;
        v43 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v42);
        gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(v43, v38, v67.i16);
      }
    }
  }
}

uint64_t gdc::Registry::storage<arComponents::DidIntersectRaycast>(uint64_t a1)
{
  v3 = 0xB9556ADEAD93443FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xB9556ADEAD93443FLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::DidIntersectFrustum>(uint64_t a1)
{
  v3 = 0x410D1776E02BD50ALL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x410D1776E02BD50AuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::DidIntersectFrustum>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<arComponents::DidIntersectFrustum>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::DidIntersectFrustum>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::DidIntersectRaycast>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<arComponents::DidIntersectRaycast>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::DidIntersectRaycast>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t md::Logic<md::ARDebugDrawIntersectionsLogic,md::ARDebugDrawIntersectionsContext,md::LogicDependencies<gdc::TypeList<md::ARWorldIntersectorContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA77E48F1AFA034A1 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7[0] = gdc::Context::context<md::ARWorldIntersectorContext>(*(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::Context::context<md::ARWorldIntersectorContext>(void *a1)
{
  v1 = a1[1];
  if (!*&v1)
  {
    return 0;
  }

  v2 = vcnt_s8(v1);
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = 0x6DBE9777D7FEDAAELL;
    if (*&v1 <= 0x6DBE9777D7FEDAAEuLL)
    {
      v3 = 0x6DBE9777D7FEDAAEuLL % *&v1;
    }
  }

  else
  {
    v3 = (*&v1 - 1) & 0x6DBE9777D7FEDAAELL;
  }

  v4 = *(*a1 + 8 * v3);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == 0x6DBE9777D7FEDAAELL)
    {
      break;
    }

    if (v2.u32[0] > 1uLL)
    {
      if (v6 >= *&v1)
      {
        v6 %= *&v1;
      }
    }

    else
    {
      v6 &= *&v1 - 1;
    }

    if (v6 != v3)
    {
      return 0;
    }

LABEL_16:
    result = 0;
    v5 = *v5;
    if (!v5)
    {
      return result;
    }
  }

  if (v5[2] != 0x6DBE9777D7FEDAAELL)
  {
    goto LABEL_16;
  }

  v8 = v5[5];
  if (*(v8 + 8) == 0x6DBE9777D7FEDAAELL)
  {
    return *(v8 + 32);
  }

  return 0;
}

uint64_t md::Logic<md::ARDebugDrawIntersectionsLogic,md::ARDebugDrawIntersectionsContext,md::LogicDependencies<gdc::TypeList<md::ARWorldIntersectorContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA77E48F1AFA034A1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARWorldIntersectorContext>(*(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARDebugDrawIntersectionsLogic,md::ARDebugDrawIntersectionsContext,md::LogicDependencies<gdc::TypeList<md::ARWorldIntersectorContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA77E48F1AFA034A1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARWorldIntersectorContext>(*(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARDebugDrawIntersectionsLogic,md::ARDebugDrawIntersectionsContext,md::LogicDependencies<gdc::TypeList<md::ARWorldIntersectorContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA77E48F1AFA034A1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARWorldIntersectorContext>(*(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARDebugDrawIntersectionsLogic,md::ARDebugDrawIntersectionsContext,md::LogicDependencies<gdc::TypeList<md::ARWorldIntersectorContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA77E48F1AFA034A1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARWorldIntersectorContext>(*(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARDebugDrawIntersectionsContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARDebugDrawIntersectionsContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A24AF8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARDebugDrawIntersectionsContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A24AF8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARDebugDrawIntersectionsLogic::~ARDebugDrawIntersectionsLogic(md::ARDebugDrawIntersectionsLogic *this)
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

void md::RegionalResourceTileData::~RegionalResourceTileData(md::RegionalResourceTileData *this)
{
  md::RegionalResourceTileData::~RegionalResourceTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A028E8;
  *(this + 80) = &unk_1F2A02928;
  v2 = *(this + 92);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MapTileData::~MapTileData(this);
}

uint64_t md::TransitLine::resolveStyleIfNecessary(uint64_t a1, unsigned int a2)
{
  v109 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 64) + 184 * a2;
  md::TransitLine::updateFeatureQueryForMergeTypeIfNecessary(a1, a2);
  if (*(v3 + 177) != 1)
  {
    return v3 + 16;
  }

  v4 = *(a1 + 60);
  v5 = *v3;
  v6 = *(v3 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v100, v5, v6);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (v103 != 1)
  {
    v87 = 0;
    goto LABEL_94;
  }

  if (v4 >= 0x17u)
  {
    v7 = 23;
  }

  else
  {
    v7 = v4;
  }

  v8 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v100[3], 91, v7, 2u, 0);
  v105 = 1;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v104, v100[3], 92, v7, 0, &v105);
  v9 = vdupq_n_s32(0x37800080u);
  v106 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v104)), v9);
  if (v105)
  {
    v10 = &v106;
  }

  else
  {
    v10 = (a1 + 36);
  }

  v95 = v9;
  v96 = *v10;
  v105 = 1;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v104, v100[3], 92, v7, 1u, &v105);
  v106 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v104)), v95);
  if (v105)
  {
    v11 = &v106;
  }

  else
  {
    v11 = (a1 + 36);
  }

  v12 = *v11;
  v13 = v100[3];
  if (*v13)
  {
    v14 = **v13;
  }

  else
  {
    v14 = 0.0;
  }

  *(v3 + 16) = vmlaq_n_f32(v96, vsubq_f32(v12, v96), v14);
  *(v3 + 32) = v12;
  if (v8)
  {
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v13, 94, v7, 2u, 0);
    v15 = v100[3];
    *(v3 + 72) = v16;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v15, 264, v7, 2u, 0);
    *(v3 + 76) = v17;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v100[3], 97, v7, 2u, 0);
  }

  else
  {
    *(v3 + 72) = 0;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v13, 264, v7, 2u, 0);
    *(v3 + 76) = v19;
    v18 = 0;
  }

  *(v3 + 80) = v18;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v106, v100[3], 93, v7, 2u, 0);
  *(v3 + 48) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v106.f32)), vdupq_n_s32(0x37800080u));
  *(v3 + 84) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v100[3], 265, v7, 2u, 0);
  *(v3 + 88) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v100[3], 267, v7, 2, 0);
  *(v3 + 92) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v100[3], 268, v7, 2u, 0);
  *(v3 + 96) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v100[3], 269, v7, 2, 0);
  *(v3 + 100) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v100[3], 104, v7, 2, 0);
  v20 = v100;
  if (*(v3 + 28) > 0.0)
  {
    v21 = v100[3];
    v22 = *v21;
    if (*v21 && (v23 = *v22, LODWORD(v22) = *v22 == 1.0, *(v21 + 10) == 1) && v23 != 0.0 && v23 != 1.0 || (v24 = *(v21 + v22 + 11), v24 == 2))
    {
      v25 = *(v21 + 16);
      if (v25)
      {
        v26 = *(v25 + 72);
        if (v26)
        {
          v27 = *v26 + 120 * *(v26 + v7 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v27, 0x114u) != *(v27 + 12))
          {
LABEL_41:
            v97 = *(v3 + 16);
            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v21, 276, v7, 2u, 0);
            __asm
            {
              FMOV            V1.4S, #-1.0
              FMOV            V2.4S, #1.0
            }

            *(v3 + 16) = vmlaq_n_f32(_Q2, vaddq_f32(v97, _Q1), v40);
            v20 = v100;
            goto LABEL_42;
          }
        }

        if (*(v21 + 56))
        {
          v28 = *(v21 + 48);
          v29 = 8 * *(v21 + 56);
          while (1)
          {
            v30 = *(*v28 + 72);
            if (v30)
            {
              v31 = *v30 + 120 * *(v30 + v7 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v31, 0x114u) != *(v31 + 12))
              {
                goto LABEL_41;
              }
            }

            v28 += 8;
            v24 = 1;
            v29 -= 8;
            if (!v29)
            {
              goto LABEL_38;
            }
          }
        }
      }

      v24 = 1;
    }

LABEL_38:
    v32 = *(v21 + 16 * v24 + 16);
    if (!v32)
    {
      goto LABEL_42;
    }

    v33 = *(v32 + 72);
    if (v33)
    {
      v34 = *v33 + 120 * *(v33 + v7 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v34, 0x114u) != *(v34 + 12))
      {
        goto LABEL_41;
      }
    }

    v50 = v21 + 16 * v24;
    if (*(v50 + 56))
    {
      v51 = *(v50 + 48);
      v52 = 8 * *(v50 + 56);
      do
      {
        v53 = *(*v51 + 72);
        if (v53)
        {
          v54 = *v53 + 120 * *(v53 + v7 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v54, 0x114u) != *(v54 + 12))
          {
            goto LABEL_41;
          }
        }

        v51 += 8;
        v52 -= 8;
      }

      while (v52);
    }
  }

LABEL_42:
  if (*(v3 + 44) <= 0.0)
  {
    goto LABEL_64;
  }

  v41 = v20[3];
  v42 = *(v41 + 12);
  if (v42 == 2)
  {
    v43 = *(v41 + 16);
    if (v43)
    {
      v44 = *(v43 + 72);
      if (v44)
      {
        v45 = *v44 + 120 * *(v44 + v7 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v45, 0x114u) != *(v45 + 12))
        {
LABEL_63:
          v98 = *(v3 + 32);
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v41, 276, v7, 1u, 0);
          __asm
          {
            FMOV            V1.4S, #-1.0
            FMOV            V2.4S, #1.0
          }

          *(v3 + 32) = vmlaq_n_f32(_Q2, vaddq_f32(v98, _Q1), v60);
          v20 = v100;
          goto LABEL_64;
        }
      }

      if (*(v41 + 56))
      {
        v46 = *(v41 + 48);
        v47 = 8 * *(v41 + 56);
        while (1)
        {
          v48 = *(*v46 + 72);
          if (v48)
          {
            v49 = *v48 + 120 * *(v48 + v7 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v49, 0x114u) != *(v49 + 12))
            {
              goto LABEL_63;
            }
          }

          v46 += 8;
          v42 = 1;
          v47 -= 8;
          if (!v47)
          {
            goto LABEL_60;
          }
        }
      }
    }

    v42 = 1;
  }

LABEL_60:
  v55 = *(v41 + 16 * v42 + 16);
  if (!v55)
  {
    goto LABEL_64;
  }

  v56 = *(v55 + 72);
  if (v56)
  {
    v57 = *v56 + 120 * *(v56 + v7 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v57, 0x114u) != *(v57 + 12))
    {
      goto LABEL_63;
    }
  }

  v74 = v41 + 16 * v42;
  if (*(v74 + 56))
  {
    v75 = *(v74 + 48);
    v76 = 8 * *(v74 + 56);
    do
    {
      v77 = *(*v75 + 72);
      if (v77)
      {
        v78 = *v77 + 120 * *(v77 + v7 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v78, 0x114u) != *(v78 + 12))
        {
          goto LABEL_63;
        }
      }

      v75 += 8;
      v76 -= 8;
    }

    while (v76);
  }

LABEL_64:
  v61 = *(v3 + 60);
  if (v61 > 0.0)
  {
    v62 = v20[3];
    v63 = *v62;
    if (*v62 && (v64 = *v63, LODWORD(v63) = *v63 == 1.0, *(v62 + 10) == 1) && (v64 != 0.0 ? (_ZF = v64 == 1.0) : (_ZF = 1), !_ZF) || (v66 = *(v62 + v63 + 11), v66 == 2))
    {
      v67 = *(v62 + 16);
      if (v67)
      {
        v68 = *(v67 + 72);
        if (v68)
        {
          v69 = *v68 + 120 * *(v68 + v7 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v69, 0x115u) != *(v69 + 12))
          {
LABEL_92:
            v99 = *(v3 + 48);
            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v62, 277, v7, 2u, 0);
            __asm
            {
              FMOV            V1.4S, #-1.0
              FMOV            V2.4S, #1.0
            }

            v85 = vmlaq_n_f32(_Q2, vaddq_f32(v99, _Q1), v84);
            *(v3 + 48) = v85;
            v61 = v85.f32[3];
            v20 = v100;
            goto LABEL_93;
          }
        }

        if (*(v62 + 56))
        {
          v70 = *(v62 + 48);
          v71 = 8 * *(v62 + 56);
          while (1)
          {
            v72 = *(*v70 + 72);
            if (v72)
            {
              v73 = *v72 + 120 * *(v72 + v7 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v73, 0x115u) != *(v73 + 12))
              {
                goto LABEL_92;
              }
            }

            v70 += 8;
            v66 = 1;
            v71 -= 8;
            if (!v71)
            {
              goto LABEL_89;
            }
          }
        }
      }

      v66 = 1;
    }

LABEL_89:
    v79 = *(v62 + 16 * v66 + 16);
    if (v79)
    {
      v80 = *(v79 + 72);
      if (!v80 || (v81 = *v80 + 120 * *(v80 + v7 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v81, 0x115u) == *(v81 + 12)))
      {
        v90 = v62 + 16 * v66;
        if (!*(v90 + 56))
        {
          goto LABEL_93;
        }

        v91 = *(v90 + 48);
        v92 = 8 * *(v90 + 56);
        while (1)
        {
          v93 = *(*v91 + 72);
          if (v93)
          {
            v94 = *v93 + 120 * *(v93 + v7 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v94, 0x115u) != *(v94 + 12))
            {
              break;
            }
          }

          v91 += 8;
          v92 -= 8;
          if (!v92)
          {
            goto LABEL_93;
          }
        }
      }

      goto LABEL_92;
    }
  }

LABEL_93:
  *(v3 + 80) = *(v3 + 72) + (*(v3 + 80) * 2.0);
  *(v3 + 64) = *(v3 + 28);
  *(v3 + 68) = v61;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(&v106, v20[3], 0x12Cu, v7, 2);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vdeallocate((v3 + 112));
  *(v3 + 112) = v106;
  *(v3 + 128) = v107;
  v106 = 0uLL;
  v107 = 0;
  *(v3 + 144) = v108;
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v106);
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v100[3], 326, v7, 2u, 0);
  *(v3 + 168) = v86;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v106, v100[3], 151, v7, 2u, 0);
  *(v3 + 152) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v106.f32)), vdupq_n_s32(0x37800080u));
  *(v3 + 104) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v100[3], 341, v7, 2, 0);
  v87 = v103;
LABEL_94:
  v88 = *(v3 + 68);
  *(v3 + 28) = *(a1 + 52) * *(v3 + 64);
  *(v3 + 60) = *(a1 + 52) * v88;
  if (v87)
  {
    (*(*v100 + 56))(v100);
  }

  if (v102)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v102);
  }

  if (v101)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v101);
  }

  *(v3 + 177) = 0;
  return v3 + 16;
}

void sub_1B2DF3878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<md::TransitLine::MergeTypeInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = (v4 - 72);
      do
      {
        std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v6);
        v7 = *(v6 - 13);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v8 = v6 - 112;
        v6 = (v6 - 184);
      }

      while (v8 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void md::TransitLine::updateFeatureQueryForMergeTypeIfNecessary(uint64_t *a1, unsigned int a2)
{
  v2 = a2;
  v27 = *MEMORY[0x1E69E9840];
  v4 = a1[8] + 184 * a2;
  v5 = *(a1 + 88);
  if ((*(v4 + 176) & 1) != 0 || *(v4 + 178) != v5 || *(v4 + 179) != a2)
  {
    v23[0] = 0;
    v23[1] = 0;
    v24 = 256;
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v23, 0x10002u) = v5;
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v23, 0x10015u) = v2;
    *(v4 + 178) = v5 | (v2 << 8);
    v6 = *v4;
    if (!*v4)
    {
      v13 = *a1;
      if (*a1)
      {
        md::createFeatureAttributeSet(v26, (a1[2] + 24));
        std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v25, *v13, *(v13 + 8));
        operator new();
      }

      goto LABEL_29;
    }

    v7 = *(v6 + 16);
    if (!v7 || (v8 = std::__shared_weak_count::lock(v7)) == 0)
    {
LABEL_29:
      *(v4 + 176) = 256;
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v23);
      return;
    }

    v9 = v8;
    v10 = *(v6 + 8);
    if (!v10)
    {
      goto LABEL_28;
    }

    v11 = *(v10 + 520);
    v12 = *(v10 + 528);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      if (*(v11 + 268))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        goto LABEL_18;
      }

      v16 = *(v6 + 256);
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      if (v16)
      {
LABEL_18:
        gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v26, v10, (v6 + 272), v23);
        v17 = v26[0];
        v26[0] = 0uLL;
        v15 = *(v6 + 264);
        *(v6 + 256) = v17;
        if (v15)
        {
LABEL_19:
          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
          if (*(&v26[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v26[0] + 1));
          }
        }

LABEL_21:
        v18 = *(v10 + 520);
        v19 = *(v10 + 528);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          v20 = *(v18 + 268);
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
          if (v20)
          {
            goto LABEL_28;
          }

LABEL_25:
          *&v26[0] = v6 + 32;
          v21 = pthread_rwlock_wrlock((v6 + 32));
          if (v21)
          {
            geo::read_write_lock::logFailure(v21, "write lock", v22);
          }

          std::unique_ptr<gss::RenderStyle<gss::PropertyID>>::reset[abi:nn200100]((v6 + 24), 0);
          geo::write_lock_guard::~write_lock_guard(v26);
          goto LABEL_28;
        }

        if ((*(v18 + 268) & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_28:
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        goto LABEL_29;
      }
    }

    else if ((*(v11 + 268) & 1) != 0 || *(v6 + 256))
    {
      goto LABEL_18;
    }

    gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v26, v10, (v6 + 272), v23);
    v14 = v26[0];
    v26[0] = 0uLL;
    v15 = *(v6 + 248);
    *(v6 + 240) = v14;
    if (v15)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }
}

void sub_1B2DF3E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<gss::StylesheetQuery<gss::PropertyID>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A029D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gss::FeatureQueryImpl<gss::PropertyID>::getAttributeMapForStyle(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (a1 + 256);
    if (!*(a1 + 256))
    {
      v3 = (a1 + 240);
    }
  }

  else
  {
    v3 = (a1 + 240);
  }

  result = *v3;
  if (*v3)
  {
    return (*(*result + 64))();
  }

  return result;
}

void gss::FeatureQueryImpl<gss::PropertyID>::unlock(uint64_t a1)
{
  v2 = (a1 + 240);
  v3 = *(a1 + 240);
  v4 = *(a1 + 256);
  if (v3 >= v4)
  {
    v5 = *(a1 + 240);
  }

  else
  {
    v5 = *(a1 + 256);
  }

  if (v3 >= v4)
  {
    v6 = a1 + 240;
  }

  else
  {
    v6 = a1 + 256;
  }

  v7 = *(v6 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *v2;
    v4 = *(a1 + 256);
  }

  if (v3 >= v4)
  {
    v2 = (a1 + 256);
  }

  v8 = *v2;
  v9 = v2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    (*(*v8 + 56))(v8);
  }

  if (v5)
  {
    (*(*v5 + 56))(v5);
  }

  v10 = pthread_rwlock_unlock((a1 + 32));
  if (v10)
  {
    geo::read_write_lock::logFailure(v10, "unlock", v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void sub_1B2DF419C(_Unwind_Exception *exception_object)
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

uint64_t gss::FeatureQueryImpl<gss::PropertyID>::lock(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (!a1[1])
      {
        v10 = 0;
LABEL_35:
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        return v10;
      }

      v7 = a1 + 30;
      v8 = a1[30];
      v9 = a1[32];
      if (v8 >= v9)
      {
        v10 = a1[30];
      }

      else
      {
        v10 = a1[32];
      }

      if (v8 >= v9)
      {
        v11 = a1 + 30;
      }

      else
      {
        v11 = a1 + 32;
      }

      v12 = v11[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *v7;
        v9 = a1[32];
      }

      if (v8 >= v9)
      {
        v7 = a1 + 32;
      }

      v14 = *v7;
      v13 = v7[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10 && ((*(*v10 + 48))(v10, 0) & 1) == 0)
      {
        goto LABEL_30;
      }

      if (v14 && ((*(*v14 + 48))(v14, 0) & 1) == 0)
      {
        v14 = v10;
        if (!v10)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (gss::Queryable<gss::PropertyID>::lock(a1, a2))
        {
          v10 = 1;
LABEL_31:
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v13);
          }

          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v12);
          }

          goto LABEL_35;
        }

        if (v10)
        {
          (*(*v10 + 56))(v10);
        }

        if (!v14)
        {
LABEL_30:
          v10 = 0;
          goto LABEL_31;
        }
      }

      (*(*v14 + 56))(v14);
      goto LABEL_30;
    }
  }

  return 0;
}

void sub_1B2DF4388(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

uint64_t gss::FeatureQueryImpl<gss::PropertyID>::resolve(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  result = *(a1 + 256);
  if (result)
  {
    v4 = *(*result + 40);

    return v4();
  }

  return result;
}

uint64_t gss::FeatureQueryImpl<gss::PropertyID>::targetCartoStyle@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 256);
  if (result)
  {
    return (*(*result + 24))();
  }

  result = *(a1 + 240);
  if (result)
  {
    return (*(*result + 24))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void gss::FeatureQueryImpl<gss::PropertyID>::~FeatureQueryImpl(void *a1)
{
  *a1 = &unk_1F2A02978;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 34));
  v2 = a1[33];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[31];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  gss::Queryable<gss::PropertyID>::~Queryable(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gss::FeatureQueryImpl<gss::PropertyID>::~FeatureQueryImpl(void *a1)
{
  *a1 = &unk_1F2A02978;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 34));
  v2 = a1[33];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[31];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return gss::Queryable<gss::PropertyID>::~Queryable(a1);
}

void std::__shared_ptr_emplace<gss::FeatureQueryImpl<gss::PropertyID>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::TransitLine::MergeTypeInfo>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void md::TransitLine::TransitLine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *MEMORY[0x1E69E9840];
  *a1 = a4;
  *(a1 + 8) = a5;
  if (a5)
  {
    atomic_fetch_add_explicit((a5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 52) = 1065353216;
  *(a1 + 56) = -1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  operator new();
}

void sub_1B2DF494C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<md::TransitLine::MergeTypeInfo>::__destroy_vector::operator()[abi:nn200100](va);
  v6 = *(v4 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  _Unwind_Resume(a1);
}

uint64_t md::TransitLine::debugSystemName(std::__shared_weak_count ***this)
{
  v1 = this;
  v2 = this[2];
  v3 = std::__shared_weak_count::lock(v2[1]);
  v4 = (*v2)[55].__vftable;
  LODWORD(v1) = *(*(v1 + 2) + 80);
  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  return *(&v4[1].__on_zero_shared + 9 * v1);
}

id md::TransitLine::debugString(uint64_t a1, unsigned int a2)
{
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = *(a1 + 64) + 184 * a2;
  if ((*(v5 + 176) & 1) == 0)
  {
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v18, v6, v7);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      if (v21 == 1)
      {
        v9 = v18[3];
        v10 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = "";
        if (v10)
        {
          v13 = *(v10 + 104);
          if (v13)
          {
            v12 = v13;
          }
        }

        [v4 appendFormat:@"style:%s\n", v12];
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }
      }

      v14 = md::HighlightHelper::debugAttributesToString((*v5 + 272), v8);
      [v4 appendFormat:@"attrs:{%@}\n", v14];

      if (v21 == 1)
      {
        (*(*v18 + 56))(v18);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v20);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }
  }

  if ((*(v5 + 177) & 1) == 0)
  {
    [v4 appendFormat:@"width: fill=%.1f, stroke=%.1f spacing=%.1f\n", *(v5 + 72), *(v5 + 80), *(v5 + 76)];
  }

  v15 = *(a1 + 64);
  v16 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v15[1], vdupq_n_s32(0x437F0000u))));
  [v4 appendFormat:@"system=%llu color=%X group=%i z=%i\n", *(a1 + 24), bswap32(vuzp1_s8(v16, v16).u32[0]), *(a1 + 32), v15[6].u32[1]];
  [v4 appendFormat:@"Merge: SameSys+Color=%i SysThresh=%i Group=%i GroupThresh=%i\n", v15[5].u8[4], v15[5].u32[2], v15[5].u8[12], v15[6].u32[0]];

  return v4;
}

void sub_1B2DF4BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (a18 == 1)
  {
    (*(*a14 + 56))(a14);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(a1);
}

void md::MuninLabelLayer::layout(md::MuninLabelLayer *this, const md::LayoutContext *a2)
{
  ++*(this + 18);
  std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::clear(*(this + 8));
  v22 = a2;
  v23 = gdc::Context::context<md::MuninSceneContext>(*(a2 + 1));
  v4 = 0;
  v34 = 2490405;
  while (1)
  {
    v24 = v4;
    v25 = *(&v34 + v4);
    md::SceneContext::renderData(&v32, v23[1], v25);
    v31 = v32;
    v5 = v32;
    if (gdc::DataKeyIterator::operator!=(v32, v33))
    {
      break;
    }

    v4 = v24 + 2;
    if (v24 == 2)
    {
      md::LabelManager::layout(*(this + 6), v22, *(this + 8));
    }
  }

  v6 = gdc::DataIterator::operator*(v5);
  v7 = *v6;
  v8 = *(*v6 + 728);
  v9 = *(*v6 + 736);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(v7 + 168);
  v27 = *(v7 + 172);
  v26[0] = v10;
  v28 = *(v7 + 184);
  v29 = *(v7 + 192);
  v30 = v25;
  v11 = *(this + 8);
  v12 = std::__hash_table<std::__hash_value_type<md::MuninLabelMapTileKey,std::__list_iterator<std::pair<md::MuninLabelMapTileKey,std::shared_ptr<md::MuninLabelMapTile>>,void *>>,std::__unordered_map_hasher<md::MuninLabelMapTileKey,std::__hash_value_type<md::MuninLabelMapTileKey,std::__list_iterator<std::pair<md::MuninLabelMapTileKey,std::shared_ptr<md::MuninLabelMapTile>>,void *>>,md::MuninLabelMapTileKeyHash,std::equal_to<md::MuninLabelMapTileKey>,true>,std::__unordered_map_equal<md::MuninLabelMapTileKey,std::__hash_value_type<md::MuninLabelMapTileKey,std::__list_iterator<std::pair<md::MuninLabelMapTileKey,std::shared_ptr<md::MuninLabelMapTile>>,void *>>,std::equal_to<md::MuninLabelMapTileKey>,md::MuninLabelMapTileKeyHash,true>,std::allocator<std::__hash_value_type<md::MuninLabelMapTileKey,std::__list_iterator<std::pair<md::MuninLabelMapTileKey,std::shared_ptr<md::MuninLabelMapTile>>,void *>>>>::find<md::MuninLabelMapTileKey>(v11 + 8, v26);
  if (v12)
  {
    v13 = v11[14];
    v14 = *(v12 + 7);
    if (v13 != v14)
    {
      v15 = v14[1];
      if (v15 != v13)
      {
        v16 = *v14;
        *(v16 + 8) = v15;
        *v15 = v16;
        v17 = *v13;
        *(v17 + 8) = v14;
        *v14 = v17;
        *v13 = v14;
        v14[1] = v13;
        v13 = v11[14];
      }
    }
  }

  else
  {
    v13 = v11 + 13;
  }

  if ((*(this + 8) + 104) != v13)
  {
    v19 = v13[7];
    v18 = v13[8];
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *(v7 + 744);
    v21 = *(v7 + 752);
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    md::LabelMapTile::loadResourcesTile(v19, v20, v21);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    memset(v35, 0, sizeof(v35));
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *&v36 = v8;
    *(&v36 + 1) = v9;
    md::LabelMapTile::loadLabelTiles(v19, v35);
  }

  operator new();
}

void sub_1B2DF55C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36)
{
  operator delete(v37);
  std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<md::MuninLabelMapTileKey,std::__list_iterator<std::pair<md::MuninLabelMapTileKey,std::shared_ptr<md::MuninLabelMapTile>>,void *>>,std::__unordered_map_hasher<md::MuninLabelMapTileKey,std::__hash_value_type<md::MuninLabelMapTileKey,std::__list_iterator<std::pair<md::MuninLabelMapTileKey,std::shared_ptr<md::MuninLabelMapTile>>,void *>>,md::MuninLabelMapTileKeyHash,std::equal_to<md::MuninLabelMapTileKey>,true>,std::__unordered_map_equal<md::MuninLabelMapTileKey,std::__hash_value_type<md::MuninLabelMapTileKey,std::__list_iterator<std::pair<md::MuninLabelMapTileKey,std::shared_ptr<md::MuninLabelMapTile>>,void *>>,std::equal_to<md::MuninLabelMapTileKey>,md::MuninLabelMapTileKeyHash,true>,std::allocator<std::__hash_value_type<md::MuninLabelMapTileKey,std::__list_iterator<std::pair<md::MuninLabelMapTileKey,std::shared_ptr<md::MuninLabelMapTile>>,void *>>>>::find<md::MuninLabelMapTileKey>(void *a1, geo::QuadTile *this)
{
  v4 = md::MuninLabelMapTileKeyHash::operator()(this);
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
      if (std::__unordered_map_equal<md::MuninLabelMapTileKey,std::__hash_value_type<md::MuninLabelMapTileKey,std::__list_iterator<std::pair<md::MuninLabelMapTileKey,std::shared_ptr<md::MuninLabelMapTile>>,void *>>,std::equal_to<md::MuninLabelMapTileKey>,md::MuninLabelMapTileKeyHash,true>::operator()[abi:nn200100](i + 16, this))
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

uint64_t md::MuninLabelMapTileKeyHash::operator()(geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  return ((*(this + 2) << 6) + (*(this + 2) >> 2) + *(this + 32) - 0x61C8864680B583EBLL) ^ *(this + 2);
}

BOOL std::__unordered_map_equal<md::MuninLabelMapTileKey,std::__hash_value_type<md::MuninLabelMapTileKey,std::__list_iterator<std::pair<md::MuninLabelMapTileKey,std::shared_ptr<md::MuninLabelMapTile>>,void *>>,std::equal_to<md::MuninLabelMapTileKey>,md::MuninLabelMapTileKeyHash,true>::operator()[abi:nn200100](unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[24] == 1)
  {
    v8 = a2;
    v9 = a1;
    geo::QuadTile::computeHash(a1);
    a2 = v8;
    a1 = v9;
    v9[24] = 0;
  }

  v2 = *(a1 + 2);
  if (a2[24])
  {
    v6 = (a2[1] + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
    v7 = (*(a2 + 1) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
    v3 = (*(a2 + 2) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
    *(a2 + 2) = v3;
    a2[24] = 0;
  }

  else
  {
    v3 = *(a2 + 2);
  }

  v4 = v2 == v3 && *a1 == *a2 && a1[1] == a2[1] && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  return *(a1 + 16) == *(a2 + 16) && v4;
}

void std::__shared_ptr_emplace<md::MuninLabelMapTile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02A78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninLabelLayer::~MuninLabelLayer(md::MuninLabelLayer *this)
{
  md::MuninLabelLayer::~MuninLabelLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A02A08;
  std::unique_ptr<md::MuninLabelTileCache>::~unique_ptr[abi:nn200100](this + 8);
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A16858;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

uint64_t *std::unique_ptr<md::MuninLabelTileCache>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 120))
    {
      v3 = *(v2 + 112);
      v4 = *(*(v2 + 104) + 8);
      v5 = *v3;
      *(v5 + 8) = v4;
      *v4 = v5;
      *(v2 + 120) = 0;
      if (v3 != (v2 + 104))
      {
        do
        {
          v6 = v3[1];
          v7 = v3[8];
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v7);
          }

          operator delete(v3);
          v3 = v6;
        }

        while (v6 != (v2 + 104));
      }
    }

    v8 = *(v2 + 80);
    if (v8)
    {
      do
      {
        v9 = *v8;
        operator delete(v8);
        v8 = v9;
      }

      while (v9);
    }

    v10 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v10)
    {
      operator delete(v10);
    }

    std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__deallocate_node(*(v2 + 24));
    v11 = std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x1B8C62190](v11, 0x10A0C409AB4F84ELL);
  }

  return a1;
}

void std::vector<md::MetaDataRegion>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = (v4 - 24);
        std::vector<md::MetaDataRegionPolygon>::__destroy_vector::operator()[abi:nn200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<md::MetaDataRegionPolygon,0>(uint64_t a1)
{
  v3 = (a1 + 40);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;

    operator delete(v2);
  }
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::Polygon2<float>>,geo::Polygon2<float>*>(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = *v5;
      a3[2] = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a3 += 3;
    }

    while (v5 != a2);
    do
    {
      v6 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v6;
        operator delete(v6);
      }

      v4 += 24;
    }

    while (v4 != a2);
  }
}

void md::RegionMetaTileData::~RegionMetaTileData(md::RegionMetaTileData *this)
{
  md::RegionMetaTileData::~RegionMetaTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A02AB0;
  *(this + 80) = &unk_1F2A02AF0;
  v2 = (this + 728);
  std::vector<md::MetaDataRegion>::__destroy_vector::operator()[abi:nn200100](&v2);

  md::MapTileData::~MapTileData(this);
}

uint64_t std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*,md::GraphTraversalPath const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

float gm::Matrix<float,2,1>::distanceSquaredToPolyline<int,void>(float32x2_t *a1, unint64_t a2, float32x2_t *a3, void *a4, float *a5)
{
  *a4 = 0;
  *a5 = 0.0;
  if (a2 < 2)
  {
    return 3.4028e38;
  }

  v5 = 0;
  v6 = *a1;
  v7 = a2 - 1;
  v8 = a3 + 1;
  result = 3.4028e38;
  do
  {
    v10 = v8[-1];
    v11 = vsub_f32(*v8, v10);
    v12 = vmul_f32(v11, v11);
    v13 = 0.0;
    if (vaddv_f32(v12) > 1.0e-15)
    {
      v14 = vadd_f32(vdup_lane_s32(v12, 1), v12);
      v15 = vmul_f32(vsub_f32(v6, v10), v11);
      v13 = fminf(fmaxf(vdiv_f32(vadd_f32(vdup_lane_s32(v15, 1), v15), v14).f32[0], 0.0), 1.0);
    }

    v16 = vsub_f32(v6, vmla_n_f32(v10, v11, v13));
    v17 = vaddv_f32(vmul_f32(v16, v16));
    if (v17 < result)
    {
      *a4 = v5;
      *a5 = v13;
      v6 = *a1;
      result = v17;
    }

    ++v8;
    ++v5;
    --v7;
  }

  while (v7);
  return result;
}

uint64_t gm::Matrix<float,4,4>::Matrix<float,3,3>(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = result;
  do
  {
    v4 = 0;
    v5 = v3;
    do
    {
      *v5 = *(a2 + v4);
      v5 += 4;
      v4 += 12;
    }

    while (v4 != 36);
    ++v2;
    ++v3;
    a2 += 4;
  }

  while (v2 != 3);
  *(result + 12) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0x3F80000000000000;
  return result;
}

void std::__shared_ptr_emplace<ggl::GlobeStars::StarsPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02C60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::GlobeStars::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::GlobeStars::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02C08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::GlobeAtmosphere::BasePipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02BD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::GlobeAtmosphere::AtmosphereConstants>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::GlobeAtmosphere::AtmosphereConstants>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02B78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Building::Fade>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Building::Fade>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02C98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::RouteLineArrow::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02D70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A02D50;
  v5 = (a1 + 248);
  std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  md::FrameAllocator<ggl::RenderItem>::reset(a1 + 224);
  free(*(a1 + 224));
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 168);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  ggl::RenderItem::~RenderItem((a1 + 16));
  return a1;
}

void std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2 + 56;
    std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>::reset[abi:nn200100](--v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>>(v6, v4);
  }
}

void std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>::reset[abi:nn200100](uint64_t (****a1)(void))
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteLineArrowRibbon>(v3, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteLineArrowRibbon>(uint64_t a1, void *a2)
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

void md::Ribbons::RibbonBatch<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::RouteLineArrow::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::RouteLineArrow::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02DA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RouteLineArrowBatch::~RouteLineArrowBatch(md::RouteLineArrowBatch *this)
{
  *this = &unk_1F2A02CF0;
  v2 = *(this + 37);
  *(this + 37) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A02D30;
  v3 = *(this + 36);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonBatch(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A02CF0;
  v2 = *(this + 37);
  *(this + 37) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A02D30;
  v3 = *(this + 36);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonBatch(this);
}

void md::RibbonBatch<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A02D30;
  v2 = a1[36];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RibbonBatch<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A02D30;
  v2 = a1[36];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonBatch(a1);
}

void md::Ribbons::PassRenderItem::~PassRenderItem(md::Ribbons::PassRenderItem *this)
{
  ggl::RenderItem::~RenderItem(this);

  JUMPOUT(0x1B8C62190);
}

int16x4_t gss::lerpIfReal(int16x4_t *a1, uint16x4_t a2, uint16x4_t a3, float a4)
{
  v4 = vdupq_n_s32(0x37800080u);
  v5 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(a2)), v4);
  result = vmovn_s32(vcvtq_u32_f32(vmulq_f32(vmlaq_n_f32(v5, vmlaq_f32(vnegq_f32(v5), v4, vcvtq_f32_u32(vmovl_u16(a3))), a4), vdupq_n_s32(0x477FFF00u))));
  *a1 = result;
  return result;
}

uint64_t *gss::CartoStyle<gss::PropertyID>::valueForExistingKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(uint64_t a1, unsigned __int16 a2)
{
  v3 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((a1 + 72), a2);
  if (v3 == *(a1 + 84))
  {
    return &gss::PropertySetValueHelper<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
  }

  else
  {
    return (*(a1 + 72) + *(a1 + 80) + 8 * v3);
  }
}

void md::RouteLineArrowLayer::~RouteLineArrowLayer(md::RouteLineArrowLayer *this)
{
  *this = &unk_1F2A02E00;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A02E00;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonLayer(this);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A02E20;
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

  v6 = a1[9];
  a1[9] = 0;
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

void md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A02E00;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A02E00;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::~RibbonLayer(a1);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::RouteLineArrow::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::RouteLineArrow::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::RouteLineArrow::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

mdm::zone_mallocator *std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t *a2)
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
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>>(v14, v13);
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
    result = std::__split_buffer<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v22);
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

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::batch(std::unordered_map<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
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
                      std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100]((v7 + v53 + 8), v52);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v56, v54);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v110, v109);
                    v112 = v124;
                    v113 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                    v109 = *(v110 - 2);
                    v110 = v111;
                  }

                  while (v113 < ggl::CullingGrid::sortOrderForCells(*(v109 + 96)));
                  v124 = 0;
                  std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v111, v112);
                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
                      std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v66, v69);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v70, v79);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v83, v93);
                    v83 = v85;
                  }

                  while (v81 <= ((v8 - 2) >> 1));
                  a2 = v118;
                  v94 = v118 - 1;
                  if (v85 == v118 - 1)
                  {
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v85, v121);
                    v80 = v122;
                  }

                  else
                  {
                    v95 = *v94;
                    *v94 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v85, v95);
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v94, v121);
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
                          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v85, v103);
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
                        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v104, v102);
                        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                        a2 = v118;
                      }
                    }
                  }

                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](&v123, 0);
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
            std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v122, v40);
            v12 = v124;
          }

          v124 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v6 - 1, v12);
          result = std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
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
          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v122, v28);
          v12 = v124;
        }

        v124 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v16, v12);
        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
        a2 = v117;
        if (v15 >= v19)
        {
          break;
        }

LABEL_37:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::batch(std::unordered_map<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(v122, v16, a3, a4 & 1);
        a4 = 0;
        v6 = v16 + 1;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::batch(std::unordered_map<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v122, v16);
      v6 = v16 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::batch(std::unordered_map<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v16 + 1, v117);
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

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v5 = v1 + 3;
      std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::batch(std::unordered_map<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = ggl::CullingGrid::sortOrderForCells(*(v5 + 96));
      v7 = *a1;
      if (v6 < ggl::CullingGrid::sortOrderForCells(*(*a1 + 96)))
      {
        *a1 = v5;
        *(a2 - 1) = v7;
      }

      return 1;
    }
  }

  v8 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v9;
      v13 = ggl::CullingGrid::sortOrderForCells(*(*v9 + 96));
      if (v13 < ggl::CullingGrid::sortOrderForCells(*(*v8 + 96)))
      {
        *v9 = 0;
        v21 = v12;
        v14 = *v8;
        v15 = v10;
        while (1)
        {
          *(a1 + v15 + 16) = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100]((a1 + v15 + 24), v14);
          v16 = v21;
          if (v15 == -16)
          {
            break;
          }

          v17 = ggl::CullingGrid::sortOrderForCells(*(v21 + 96));
          v14 = *(a1 + v15 + 8);
          v15 -= 8;
          if (v17 >= ggl::CullingGrid::sortOrderForCells(*(v14 + 96)))
          {
            v18 = (a1 + v15 + 24);
            goto LABEL_19;
          }
        }

        v18 = a1;
LABEL_19:
        v21 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](v18, v16);
        if (++v11 == 8)
        {
          v19 = v9 + 1 == a2;
          std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
          return v19;
        }

        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineArrowRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
      }

      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>>(uint64_t a1, uint64_t a2)
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

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 8;
    std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>::reset[abi:nn200100]((i - 8));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>>(v5, v4);
  }

  return a1;
}

void md::RouteLineArrowLayer::layout(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v79 = *MEMORY[0x1E69E9840];
  v4 = 16;
  if (*(a2 + 56))
  {
    v4 = 24;
  }

  *(a1 + 56) = *(*(a1 + 168) + v4);
  md::LayoutContext::frameState(*a2);
  if ((*(v5 + 632) & 1) == 0)
  {
    v24 = *(a1 + 8);
    v25 = *(a1 + 16);
    goto LABEL_39;
  }

  v6 = *(*v2 + 8);
  v66 = md::LayoutContext::get<md::CameraContext>(v6);
  v63 = v2;
  if (*(v66 + 3784))
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = *(gdc::Camera::cameraFrame(v66) + 16);
      do
      {
        for (i = 0; i != 4; ++i)
        {
          v12 = v8 | (4 * i);
          geo::Frustum<double>::transformed(v68, v66 + 984, v7 + 1696 + 56 * v12);
          v13 = v7 + 32 + 104 * v12;
          v14 = *(v13 + 56);
          v15 = *(v13 + 88);
          v70[1] = *(v13 + 72);
          v71 = v15;
          v70[0] = v14;
          v72 = 0uLL;
          v73 = v10;
          gm::Box<double,3>::operator+=(v70, &v72);
          for (j = 0; j != 12; j += 2)
          {
            v17 = 0;
            v18 = *&v68[j + 1];
            v76 = v68[j];
            v77 = v18;
            do
            {
              v19 = v70 + v17;
              if (*(&v76 + v17) >= 0.0)
              {
                v19 = &v70[1] + v17 + 8;
              }

              *(&v72 + v17) = *v19;
              v17 += 8;
            }

            while (v17 != 24);
            v20 = 0;
            v21 = 0.0;
            do
            {
              v21 = v21 + *(&v68[j] + v20) * *(&v72 + v20);
              v20 += 8;
            }

            while (v20 != 24);
            v22 = *(&v68[j + 1] + 1) + v21;
            if (v22 < 0.0)
            {
              break;
            }
          }

          v23 = 1 << (4 * i + v8);
          if (v22 < 0.0)
          {
            v23 = 0;
          }

          v9 |= v23;
        }

        ++v8;
      }

      while (v8 != 4);
      goto LABEL_29;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v68, *(a1 + 120), 0);
    v27 = v69;
    v28 = 0.0;
  }

  else
  {
    v26 = 0.0;
    if (*md::LayoutContext::get<md::ElevationContext>(v6) == 1 && *(a1 + 112) == 1)
    {
      v26 = *(gdc::Camera::cameraFrame(v66) + 16) * 0.0000000249532021 * (1 << *(a1 + 81));
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v68, *(a1 + 120), 0);
    v27 = v69;
    v28 = v26;
  }

  v9 = ggl::CullingGrid::intersectedCellsForView(v27, v28);
  ggl::BufferMemory::~BufferMemory(v68);
LABEL_29:
  v24 = *(a1 + 8);
  v25 = *(a1 + 16);
  if (v24 == v25)
  {
    v2 = v63;
  }

  else
  {
    v29 = *(a1 + 8);
    v2 = v63;
    do
    {
      v30 = *v29;
      v31 = *(*v29 + 248);
      v32 = *(*v29 + 256);
      if (v31 == v32)
      {
        v33 = 0;
      }

      else
      {
        v33 = 0;
        do
        {
          v34 = *v31++;
          v35 = (*(v34 + 96) & v9) != 0;
          v33 |= v35;
          *(v34 + 48) = v35;
        }

        while (v31 != v32);
      }

      *(v30 + 136) = v33 & 1;
      *(v30 + 272) = v33 & 1;
      ++v29;
    }

    while (v29 != v25);
  }

LABEL_39:
  if (v24 != v25)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v62 = _Q0;
    v64 = vdupq_n_s32(0x37800080u);
    do
    {
      v41 = *v24;
      if (*(*v24 + 272) == 1)
      {
        v42 = *(v41 + 280);
        v43 = *(v41 + 288);
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v72, v42, v43);
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v43);
        }

        if (v75)
        {
          v44 = *(v2 + 8);
          gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(243, 2, *(v72 + 24), 0);
          v46 = v45;
          gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(244, 2, *(v72 + 24), 0);
          v48 = v47;
          gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(245, 2, *(v72 + 24), 0);
          v50 = v49;
          if (v44 >= 0x17)
          {
            v51 = 23;
          }

          else
          {
            v51 = v44;
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v72 + 24), 94, v51, 2u, 0);
          v53 = v52;
          v54 = *(v2 + 128);
          {
            v68[0] = xmmword_1B33B1010;
            geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::RouteLineArrowBatch::layout(md::RouteLineArrowContext const&)::defaultFillColor, v68);
          }

          {
            v68[0] = xmmword_1B33B1020;
            geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::RouteLineArrowBatch::layout(md::RouteLineArrowContext const&)::defaultStrokeColor, v68);
          }

          {
            v68[0] = v62;
            geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::RouteLineArrowBatch::layout(md::RouteLineArrowContext const&)::defaultHighlightedFillColor, v68);
          }

          {
            v68[0] = xmmword_1B33B1030;
            geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::RouteLineArrowBatch::layout(md::RouteLineArrowContext const&)::defaultHighlightedStrokeColor, v68);
          }

          v76 = md::RouteLineArrowBatch::layout(md::RouteLineArrowContext const&)::defaultFillColor;
          v78 = md::RouteLineArrowBatch::layout(md::RouteLineArrowContext const&)::defaultStrokeColor;
          v65 = md::RouteLineArrowBatch::layout(md::RouteLineArrowContext const&)::defaultHighlightedStrokeColor;
          v67 = md::RouteLineArrowBatch::layout(md::RouteLineArrowContext const&)::defaultHighlightedFillColor;
          v55 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(*v2 + 16), *(*(*v2 + 16) + 8));
          if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(v72 + 24), 0x86u, 2u))
          {
            gss::RenderStyle<gss::PropertyID>::valueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v70, *(v72 + 24), 134, 2);
            v68[0] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v70[0])), v64);
            gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(487, 2, *(v72 + 24), 0);
            md::AccessibilityHelper::luminanceAdjustedColor(&v76, *v55, v68, v56);
          }

          if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(v72 + 24), 0x87u, 2u))
          {
            gss::RenderStyle<gss::PropertyID>::valueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v70, *(v72 + 24), 135, 2);
            v68[0] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v70[0])), v64);
            gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(488, 2, *(v72 + 24), 0);
            md::AccessibilityHelper::luminanceAdjustedColor(&v78, *v55, v68, v57);
          }

          if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(v72 + 24), 0x13Du, 2u))
          {
            gss::RenderStyle<gss::PropertyID>::valueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v68, *(v72 + 24), 317, 2);
            v67 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v68[0])), v64);
          }

          if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(v72 + 24), 0x13Eu, 2u))
          {
            gss::RenderStyle<gss::PropertyID>::valueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v68, *(v72 + 24), 318, 2);
            v65 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v68[0])), v64);
          }

          v58 = (v53 + (fminf(fmaxf(v48 * (v44 - v46), 0.0), v50) * v53)) * v54;
          v59 = *(*(*(v41 + 296) + 136) + 32);
          ggl::BufferMemory::BufferMemory(v70);
          ggl::ResourceAccessor::accessConstantData(v68, 0, v59, 1);
          ggl::BufferMemory::operator=(v70, v68);
          ggl::BufferMemory::~BufferMemory(v68);
          v60 = *(&v71 + 1);
          *(*(&v71 + 1) + 80) = v67;
          *(v60 + 96) = v65;
          *(v60 + 112) = v58 * 0.6;
          v61 = v78;
          *(v60 + 48) = v76;
          *(v60 + 64) = v61;
          *(v60 + 36) = *(v2 + 220);
          *(v60 + 116) = *(v2 + 216);
          *v60 = v58 * 0.475;
          ggl::BufferMemory::~BufferMemory(v70);
          *(v41 + 56) = *(v2 + 57);
          *(v41 + 64) = *(v2 + 136);
          if (v75)
          {
            (*(*v72 + 56))(v72);
          }
        }

        else
        {
          *(v41 + 136) = 0;
          *(v41 + 272) = 0;
        }

        if (v74)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v74);
        }

        if (*(&v72 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v72 + 1));
        }
      }

      ++v24;
    }

    while (v24 != v25);
  }
}

void sub_1B2DF889C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 232);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 - 248);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(exception_object);
}

BOOL md::OBBIntersectsXYAABB(uint64_t a1, float *a2, float *a3)
{
  v3 = 0;
  v62 = *MEMORY[0x1E69E9840];
  do
  {
    *(&v41 + v3 * 4) = a2[v3 + 3] - a2[v3];
    ++v3;
  }

  while (v3 != 3);
  v4 = 0;
  v50 = v41;
  v51 = v42;
  do
  {
    *(&v41 + v4) = *(&v50 + v4) * 0.5;
    v4 += 4;
  }

  while (v4 != 12);
  v5 = 0;
  *v56 = v41;
  *&v56[8] = v42;
  do
  {
    *(&v41 + v5 * 4) = *&v56[v5 * 4] + a2[v5];
    ++v5;
  }

  while (v5 != 3);
  v6 = 0;
  v7 = a2[1];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[2];
  *v56 = (a2[3] - *a2) * 0.5;
  v11 = v41;
  v12 = v8 - v7;
  v13 = v42;
  v58 = v12 * 0.5;
  *&v56[4] = 0;
  v57 = 0;
  v59 = 0;
  v60 = 0;
  v61 = (v9 - v10) * 0.5;
  v14 = &v41;
  do
  {
    v15 = 0;
    v16 = v14;
    do
    {
      *v16 = *(a1 + v15);
      v16 += 2;
      v15 += 12;
    }

    while (v15 != 48);
    ++v6;
    v14 = (v14 + 4);
    a1 += 4;
  }

  while (v6 != 3);
  v17 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 1065353216;
  v47 = v11;
  v48 = v13;
  v18 = &v41;
  v49 = 1065353216;
  do
  {
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + (*(&v47 + v19 * 2) * *&v18[v19]);
      v19 += 2;
    }

    while (v19 != 8);
    *(&v50 + v17++) = v20;
    v18 = (v18 + 4);
  }

  while (v17 != 4);
  v21 = 0;
  v22 = *(&v50 + 1);
  v23 = *&v50;
  do
  {
    v24 = 0;
    v25 = &v56[12 * v21];
    v26 = *(v25 + 2);
    v38 = *v25;
    v39 = v26;
    v40 = 0;
    v27 = &v41;
    do
    {
      v28 = 0;
      v29 = 0.0;
      do
      {
        v29 = v29 + (*(&v38 + v28 * 2) * *&v27[v28]);
        v28 += 2;
      }

      while (v28 != 8);
      *(&v47 + v24++) = v29;
      v27 = (v27 + 4);
    }

    while (v24 != 4);
    v30 = &v50 + 12 * v21;
    v31 = v48;
    *v30 = v47;
    *(v30 + 2) = v31;
    ++v21;
  }

  while (v21 != 3);
  v32 = fabsf(v54);
  v33 = fabsf(*&v50) + fabsf(v52);
  v34 = (v33 + (v23 + v32)) >= *a3 && (v23 - (v33 + v32)) <= a3[2];
  if (v34 && (v35 = fabsf(v55), v36 = fabsf(v53) + fabsf(*(&v50 + 1)), (v36 + (v22 + v35)) >= a3[1]))
  {
    return (v22 - (v36 + v35)) <= a3[3];
  }

  else
  {
    return 0;
  }
}

uint64_t md::MuninLabeler::layoutForStaging(md::MuninLabeler *this, const LabelUpdateOptions *a2)
{
  (*(**(this + 7) + 48))(*(this + 7));
  result = (*(**(this + 8) + 48))(*(this + 8), a2);
  v5 = *(this + 7);
  if (v5[52] != v5[53])
  {
    v6 = md::LabelSettingsStyleCache::muninPointStyle(*(*(v5[3] + 336) + 200));
    v7 = v5[52];
    v8 = v5[53];
    v9 = 126 - 2 * __clz((v8->i64 - v7) >> 3);
    if (v8 == v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    std::__introsort<std::_ClassicAlgPolicy,md::MuninPoiLabelSorter &,md::Label **,false>(v7, v8, v10, 1);
    v11 = *(v6 + 24);

    return md::MuninStandardLabeler::placeLabels(v5, v5 + 52, v11);
  }

  return result;
}

uint64_t md::MuninLabeler::synchronizedUpdate(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(result + 48) + 3027) ^ 1;
  v8 = v7 & 1;
  v9 = *(result + 72);
  if (v9 != (v7 & 1))
  {
    *(result + 72) = v8;
    *(*(result + 64) + 78) = v8;
    LOBYTE(v9) = v7;
  }

  if (*(result + 74) == 1)
  {
    *(result + 74) = 0;
    v10 = *(result + 75);
    v11 = *(result + 64);
    *(*(result + 56) + 441) = v10;
    *(v11 + 78) = (v10 | v9) & 1;
  }

  v12 = *(result + 8);
  v13 = *(result + 16);
  while (v12 != v13)
  {
    v14 = *v12++;
    result = (*(*v14 + 32))(v14, a2, a3, a4);
  }

  return result;
}

uint64_t md::MuninLabeler::startFrameLayout(uint64_t a1, uint64_t a2, float a3)
{
  v6 = gdc::Context::context<md::MuninSceneContext>(*(a2 + 8));
  v7 = v6[5];
  for (i = v6[6]; v7 != i; v7 += 272)
  {
    v9 = *v7;
    if (v9 <= 5)
    {
      if (v9 != 2)
      {
        if (v9 == 5)
        {
          *(*(a1 + 48) + 3611) = 0;
        }

        continue;
      }

      v12 = *(a1 + 48);
      *(v12 + 3611) = 1;
      *(v12 + 454) = 0;
      *(v12 + 560) = *(v12 + 584);
      *(v12 + 544) = *(v12 + 568);
      v10 = *(a1 + 56);
    }

    else
    {
      if (v9 != 6)
      {
        if (v9 == 7)
        {
          *(a1 + 74) = 257;
        }

        else if (v9 == 8)
        {
          *(a1 + 74) = 1;
        }

        continue;
      }

      v11 = *(a1 + 48);
      v10 = *(a1 + 56);
      *(v10 + 440) = 1;
      *(v11 + 454) = 1;
      *(v11 + 544) = *(v11 + 568);
      *(v11 + 560) = *(v11 + 584);
    }

    *(v10 + 442) = 1;
  }

  result = md::SceneStateManager::isFinishedLoadingAllLayers(v6[1]);
  if (*(a1 + 73) != result)
  {
    *(a1 + 73) = result;
    *(*(a1 + 48) + 3612) = result;
    if (result)
    {
      *(*(a1 + 56) + 440) = 1;
    }
  }

  v15 = *(a1 + 8);
  v14 = *(a1 + 16);
  while (v15 != v14)
  {
    v16 = *v15++;
    result = (*(*v16 + 24))(v16, a2, a3);
  }

  return result;
}

void md::MuninLabeler::~MuninLabeler(md::MuninLabeler *this)
{
  *this = &unk_1F2A02E78;
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
  *this = &unk_1F2A02E78;
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

void md::BuildingTileDataRenderable::~BuildingTileDataRenderable(id *this)
{
  md::BuildingTileDataRenderable::~BuildingTileDataRenderable(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A02FD0;
  [this[54] stop];
  [this[57] stop];
  v2 = this[64];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = this[62];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = this[60];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  this[56] = &unk_1F2A4BA00;

  this[53] = &unk_1F2A4BA00;

  md::MapTileDataRenderable<md::BuildingTileData>::~MapTileDataRenderable(this);
}

void sub_1B2DF91A4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 512);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 496);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 480);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *(v1 + 448) = &unk_1F2A4BA00;

  *(v1 + 424) = &unk_1F2A4BA00;
  md::MapTileDataRenderable<md::BuildingTileData>::~MapTileDataRenderable(v1);
  _Unwind_Resume(a1);
}

void md::MapTileDataRenderable<md::BuildingTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A02FF0;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::BuildingTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::BuildingTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gm::inverse<double>(uint64_t result, double *a2)
{
  v2 = 0;
  v3 = a2[10];
  v4 = a2[11];
  v6 = a2[14];
  v5 = a2[15];
  v7 = a2[4];
  v8 = a2[5];
  v10 = a2[8];
  v9 = a2[9];
  v12 = a2[6];
  v11 = a2[7];
  v14 = a2[12];
  v13 = a2[13];
  v56 = v6 * v4 * v8 + v9 * v5 * v12 + v13 * v3 * v11;
  v54 = v10 * v11 * v6 + v14 * v12 * v4;
  v55 = v5 * v3 * v8 + v9 * v6 * v11 + v12 * v4 * v13;
  v52 = v7 * v4 * v13 + v10 * v8 * v5 + v14 * v11 * v9;
  v53 = v7 * v4 * v6 + v10 * v12 * v5 + (v14 * v11 - v7 * v5) * v3;
  v50 = v10 * v12 * v13 + v14 * v8 * v3;
  v51 = v9 * v5 * v7 + v10 * v11 * v13 + v14 * v8 * v4;
  v16 = *a2;
  v15 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v49 = v13 * v3 * v7 + v14 * v12 * v9 + (v10 * v8 - v7 * v9) * v6;
  v19 = v17 * v10;
  v48 = v17 * v10 * v5 + v18 * v14 * v3 + *a2 * v4 * v6;
  v20 = v18 * v10;
  v21 = v15 * v10;
  v22 = v15 * v14;
  v47 = v17 * v14 * v4 + v18 * v10 * v6 + *a2 * v3 * v5;
  v46 = v15 * v10 * v6 + v17 * v14 * v9 + *a2 * v3 * v13;
  v45 = v15 * v11 * v6 + v17 * v8 * v5 + v18 * v13 * v12;
  v23 = v18 * v14 - *a2 * v5;
  v44 = (*a2 * v4 - v18 * v10) * v13 - (v15 * v14 * v4 - v15 * v10 * v5) + v23 * v9;
  v24 = v17 * v7;
  v25 = *a2 * v11;
  v26 = v18 * v7;
  v27 = v25 - v18 * v7;
  v43 = v27 * v6 - (v17 * v14 * v11 - v17 * v7 * v5) + v23 * v12;
  v28 = v15 * v7;
  v29 = v15 * v7 * v5 + v18 * v14 * v8;
  v30 = -(v15 * v14 * v12 - v17 * v14 * v8);
  v31 = v18 * v8;
  v32 = v12 * v5 * v15 + v17 * v13 * v11 + v18 * v8 * v6;
  v33 = *a2 * v8;
  v34 = v28 - v33;
  v35 = v15 * v11 * v3 + v18 * v9 * v12 + (v17 * v8 - v15 * v12) * v4;
  v36 = -(v21 * v11 - v20 * v8);
  v37 = v28 * v3 + v19 * v8;
  v38 = v22 * v3 + v19 * v13;
  v39 = v22 * v11 + v26 * v13;
  v40 = v19 * v11 + v26 * v3 + *a2 * v12 * v4;
  v41 = v37 + *a2 * v12 * v9;
  v42 = v30 + v34 * v6 + (*a2 * v12 - v24) * v13;
  v57[0] = v55 - v56;
  v57[1] = v6 * v4 * v15 + v17 * v9 * v5 + (v18 * v13 - v15 * v5) * v3 - (v17 * v13 * v4 + v18 * v9 * v6);
  v57[4] = v53 - v54;
  v57[5] = v47 - v48;
  v57[8] = v51 - v52;
  v57[9] = v44;
  v57[12] = v49 - v50;
  v57[13] = v38 + v9 * v6 * v16 - v46;
  v57[2] = v32 - v45;
  v57[3] = v35 - (v17 * v9 * v11 + v31 * v3);
  v57[6] = v43;
  v57[7] = v40 - (v24 * v4 + v20 * v12 + v25 * v3);
  v57[10] = v39 + v33 * v5 - (v29 + v25 * v13);
  v57[11] = v36 + v34 * v4 + v27 * v9;
  v57[14] = v42;
  v57[15] = v21 * v12 + v24 * v9 + v33 * v3 - v41;
  do
  {
    *(result + v2 * 8) = vmulq_n_f64(*&v57[v2], 1.0 / ((v53 - v54) * v15 + (v51 - v52) * v17 + v18 * (v49 - v50) + v16 * (v55 - v56)));
    v2 += 2;
  }

  while (v2 != 16);
  return result;
}

void md::BuildingTileDataRenderable::setAnimation(md::BuildingTileDataRenderable *this, VKAnimation *a2)
{
  v3[3] = *MEMORY[0x1E69E9840];
  geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v3, a2);
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(this + 424, v3);
  v3[0] = &unk_1F2A4BA00;
}

void md::BuildingTileDataRenderable::setAnimationForPitch(md::BuildingTileDataRenderable *this, VKAnimation *a2)
{
  v3[3] = *MEMORY[0x1E69E9840];
  geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v3, a2);
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(this + 448, v3);
  v3[0] = &unk_1F2A4BA00;
}

BOOL md::AreTransitStopIndicesEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 hasStopIndex] && objc_msgSend(v4, "hasStopIndex"))
  {
    v5 = [v3 stopIndex];
    v6 = v5 == [v4 stopIndex];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void md::LabelTransitRoute::LabelTransitRoute(md::LabelTransitRoute *this, GEOComposedRoute *a2, int a3)
{
  v4 = this;
  v187 = *MEMORY[0x1E69E9840];
  *this = &unk_1F2A580E8;
  *(this + 1) = 0;
  geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(this + 3, a2);
  *(v4 + 12) = a3;
  v5 = v4;
  *(v4 + 52) = 0;
  v4 = (v4 + 52);
  *(v5 + 12) = 0;
  *(v5 + 13) = 0;
  *(v5 + 11) = 0;
  *(v5 + 68) = 0;
  *(v5 + 60) = 0;
  *(v5 + 19) = 0;
  *(v5 + 15) = -1;
  *(v5 + 32) = -1;
  *(v5 + 17) = 0;
  *(v5 + 36) = -1;
  *(v5 + 20) = 0;
  *(v5 + 22) = 0;
  *(v5 + 19) = v5 + 160;
  *(v5 + 184) = xmmword_1B33B0740;
  *(v5 + 25) = 0x3EB0C6F7A0B5ED8DLL;
  *(v5 + 35) = 0;
  *(v5 + 36) = 0;
  *(v5 + 34) = 0;
  *(v5 + 15) = 0u;
  v164 = (v5 + 56);
  *(v5 + 32) = 0;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 19) = 0u;
  *(v5 + 20) = 0u;
  v162 = (v5 + 240);
  v6 = *(v5 + 4);
  v166 = v5;
  *v4 = [v6 pointCount];

  if (*v4)
  {
    [*(v5 + 4) pointAt:0];
    v8 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v7);
    v9 = vmulq_n_f64(xmmword_1B33B1040, v8);
    *(v5 + 184) = vmulq_f64(v9, v9);
    v10 = vmulq_n_f64(xmmword_1B33B1050, v8);
    *(v5 + 27) = *&vmulq_f64(v10, v10);
    v11 = vmulq_n_f64(xmmword_1B33B1060, v8);
    *(v5 + 14) = vmulq_f64(v11, v11);
    *(v5 + 200) = v10;
  }

  v12 = *(v5 + 4);
  v13 = [v12 segments];
  v14 = [v13 count];
  v15 = v14;
  v16 = *(v5 + 7);
  if (v14 > (*(v5 + 9) - v16) >> 3)
  {
    if (v14 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v17 = *(v5 + 8);
    v186 = (v166 + 80);
    v18 = mdm::zone_mallocator::instance(v14);
    v182 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>>(v18, v15);
    v183 = &v182[v17 - v16];
    v184 = v183;
    v185 = &v182[8 * v15];
    std::vector<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,mdm::zone_mallocator>>::__swap_out_circular_buffer(v164, &v182);
    std::__split_buffer<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,mdm::zone_mallocator> &>::~__split_buffer(&v182);
  }

  memset(v171, 0, sizeof(v171));
  v19 = [*(v166 + 4) segments];
  if ([v19 countByEnumeratingWithState:v171 objects:&v182 count:16])
  {
    *&v172 = 0;
    operator new();
  }

  v21 = *(v166 + 7);
  v22 = *(v166 + 8);
  if (v21 != v22)
  {
    while (1)
    {
      if (*v21)
      {
        v23 = *v21 + 8;
      }

      else
      {
        v23 = 0;
      }

      v24 = *(v23 + 8);
      md::LabelExternalPointFeature::incident(v24);
      v25 = [objc_claimAutoreleasedReturnValue() type] == 5;

      v26 = *v21;
      v27 = *v21 + 8;
      if (!*v21)
      {
        v27 = 0;
      }

      if (!v25)
      {
        v35 = *(v27 + 8);
        md::LabelExternalPointFeature::incident(v35);
        v36 = [objc_claimAutoreleasedReturnValue() type] == 6;

        if (!v36)
        {
          goto LABEL_83;
        }

        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        if (*v21)
        {
          v37 = *v21 + 8;
        }

        else
        {
          v37 = 0;
        }

        v38 = *(v37 + 8);
        md::LabelExternalPointFeature::incident(v38);
        v39 = [objc_claimAutoreleasedReturnValue() steps];

        v40 = [v39 countByEnumeratingWithState:&v175 objects:&v172 count:16];
        if (!v40)
        {
LABEL_40:

          goto LABEL_83;
        }

        v41 = *v176;
LABEL_34:
        v42 = 0;
        while (1)
        {
          if (*v176 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v43 = [*(*(&v175 + 1) + 8 * v42) transitStep];
          v44 = [v43 maneuverType] == 3;

          if (v44)
          {
            break;
          }

          if (v40 == ++v42)
          {
            v40 = [v39 countByEnumeratingWithState:&v175 objects:&v172 count:16];
            if (!v40)
            {
              goto LABEL_40;
            }

            goto LABEL_34;
          }
        }

        if (*v21)
        {
          v59 = *v21 + 8;
        }

        else
        {
          v59 = 0;
        }

        *(v59 + 70) = 1;

        goto LABEL_83;
      }

      if (*(v27 + 48) >= 2)
      {
        v169 = 0u;
        v170 = 0u;
        v167 = 0u;
        v168 = 0u;
        if (*v21)
        {
          v28 = *v21 + 8;
        }

        else
        {
          v28 = 0;
        }

        v29 = *(v28 + 8);
        md::LabelExternalPointFeature::incident(v29);
        v30 = [objc_claimAutoreleasedReturnValue() steps];

        v31 = [v30 countByEnumeratingWithState:&v167 objects:__src count:16];
        if (v31)
        {
          v32 = *v168;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v168 != v32)
              {
                objc_enumerationMutation(v30);
              }

              v34 = [*(*(&v167 + 1) + 8 * i) transitStep];
              if ([v34 maneuverType] == 7)
              {
                if (*v21)
                {
                  v45 = *v21 + 8;
                }

                else
                {
                  v45 = 0;
                }

                *(v45 + 69) = 1;

                goto LABEL_45;
              }
            }

            v31 = [v30 countByEnumeratingWithState:&v167 objects:__src count:16];
          }

          while (v31);
        }

LABEL_45:

        v26 = *v21;
      }

      v46 = v26 + 8;
      if (v26)
      {
        v47 = v26 + 8;
      }

      else
      {
        v47 = 0;
      }

      if (*(v47 + 69))
      {
        v48 = *(v47 + 48);
        _CF = v48 != 0;
        v50 = v48 - 1;
        if (!_CF)
        {
          v50 = 0;
        }

        v51 = *(v47 + 44) + v50;
        v52 = *(v47 + 24);
      }

      else
      {
        v52 = *(v47 + 24);
        if (v52)
        {
          v53 = *(*v164 + 8 * v52 - 8);
          if (v53)
          {
            v54 = v53 + 8;
          }

          else
          {
            v54 = 0;
          }

          v57 = v54 + 44;
          v55 = *(v54 + 44);
          v56 = *(v57 + 4);
          _CF = v56 != 0;
          v58 = v56 - 1;
          if (!_CF)
          {
            v58 = 0;
          }

          v51 = v55 + v58;
        }

        else
        {
          v51 = -1;
        }

        if (*(v47 + 48) >= 2)
        {
          goto LABEL_70;
        }
      }

      v60 = v52 + 1;
      v61 = *(v166 + 7);
      if (v60 < (*(v166 + 8) - v61) >> 3)
      {
        v62 = *(v61 + 8 * v60);
        if (v62)
        {
          v46 = v62 + 8;
        }

        else
        {
          v46 = 0;
        }

LABEL_70:
        v63 = *(v46 + 44);
        goto LABEL_72;
      }

      v63 = -1;
LABEL_72:
      if (v51 != -1 || v63 != -1)
      {
        if (v51 == v63)
        {
          v65 = 2;
        }

        else
        {
          v65 = 1;
        }

        *(v47 + 56) = v65;
        if (v51 == -1)
        {
          *(v47 + 52) = v63;
          v66 = v63 - v65;
        }

        else
        {
          *(v47 + 52) = v51;
          v66 = v51 - v65 + 1;
        }

        *(v47 + 64) = v66;
      }

LABEL_83:
      if (++v21 == v22)
      {
        v21 = *(v166 + 7);
        v22 = *(v166 + 8);
        break;
      }
    }
  }

  __src[1] = 0;
  __src[0] = 0;
  v180 = 0;
  if (v21 == v22)
  {
    v87 = 0;
    v85 = 0;
    v67 = 0;
    v84 = 0;
  }

  else
  {
    v67 = 0;
    v68 = 0;
    do
    {
      v69 = *v21 + 8;
      if (*v21)
      {
        v70 = *v21 + 8;
      }

      else
      {
        v70 = 0;
      }

      if (*(v70 + 56))
      {
        if (v67 >= v180)
        {
          v72 = (v67 - __src[0]) >> 3;
          if ((v72 + 1) >> 61)
          {
            goto LABEL_171;
          }

          v73 = (v180 - __src[0]) >> 2;
          if (v73 <= v72 + 1)
          {
            v73 = v72 + 1;
          }

          if (v180 - __src[0] >= 0x7FFFFFFFFFFFFFF8)
          {
            v74 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v74 = v73;
          }

          v186 = &v181;
          if (v74)
          {
            v75 = mdm::zone_mallocator::instance(v20);
            v76 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelTransitRoute::Range>(v75, v74);
          }

          else
          {
            v76 = 0;
          }

          v78 = &v76[8 * v74];
          v77 = &v76[8 * v72];
          *v77 = *(v70 + 52);
          v67 = v77 + 8;
          v79 = &v77[-(__src[1] - __src[0])];
          memcpy(v79, __src[0], __src[1] - __src[0]);
          v80 = __src[0];
          v81 = v180;
          __src[0] = v79;
          __src[1] = v67;
          v180 = v78;
          v184 = v80;
          v185 = v81;
          v182 = v80;
          v183 = v80;
          v20 = std::__split_buffer<md::LabelTransitRoute::Range,geo::allocator_adapter<md::LabelTransitRoute::Range,mdm::zone_mallocator> &>::~__split_buffer(&v182);
        }

        else
        {
          *v67 = *(v70 + 52);
          v67 += 8;
        }

        __src[1] = v67;
        v69 = *v21 + 8;
        if (*v21)
        {
          v82 = *v21 + 8;
        }

        else
        {
          v82 = 0;
        }

        v71 = (*(v82 + 56) + v68);
      }

      else
      {
        v71 = v68;
      }

      if (*(v69 + 69))
      {
        v83 = v68;
      }

      else
      {
        v83 = v71;
      }

      *(v69 + 60) = v83;
      ++v21;
      v68 = v71;
    }

    while (v21 != v22);
    v84 = v180;
    v85 = v71;
    if (v67 < v180)
    {
      *v67 = 0x7FFFFFFFLL;
      v86 = v67 + 8;
      goto LABEL_126;
    }

    v87 = __src[0];
  }

  v88 = (v67 - v87) >> 3;
  if ((v88 + 1) >> 61)
  {
LABEL_171:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v89 = v84 - v87;
  v90 = v89 >> 2;
  if (v89 >> 2 <= (v88 + 1))
  {
    v90 = v88 + 1;
  }

  if (v89 >= 0x7FFFFFFFFFFFFFF8)
  {
    v91 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v91 = v90;
  }

  v186 = &v181;
  if (v91)
  {
    v92 = mdm::zone_mallocator::instance(v20);
    v93 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelTransitRoute::Range>(v92, v91);
  }

  else
  {
    v93 = 0;
  }

  v95 = &v93[8 * v91];
  v94 = &v93[8 * v88];
  *v94 = 0x7FFFFFFFLL;
  v86 = v94 + 8;
  v96 = &v94[-(__src[1] - __src[0])];
  memcpy(v96, __src[0], __src[1] - __src[0]);
  v97 = __src[0];
  v98 = v180;
  __src[0] = v96;
  __src[1] = v86;
  v180 = v95;
  v184 = v97;
  v185 = v98;
  v182 = v97;
  v183 = v97;
  std::__split_buffer<md::LabelTransitRoute::Range,geo::allocator_adapter<md::LabelTransitRoute::Range,mdm::zone_mallocator> &>::~__split_buffer(&v182);
LABEL_126:
  __src[1] = v86;
  v99 = [*(v166 + 4) pointCount];
  std::vector<geo::Mercator2<double>,geo::allocator_adapter<geo::Mercator2<double>,mdm::zone_mallocator>>::resize(v162, v85 + v99);
  if (v99)
  {
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = v99;
    __asm { FMOV            V0.2D, #0.5 }

    v163 = _Q0;
    do
    {
      v108 = *(v166 + 4);
      [v108 pointAt:v101];
      v165 = v109;
      v111 = v110;

      v112 = tan(v111 * 0.00872664626 + 0.785398163);
      v113 = log(v112);
      v114 = *v162;
      v115.f64[0] = v165;
      v115.f64[1] = v113;
      *(*v162 + 16 * v103) = vmlaq_f64(v163, xmmword_1B33B0700, v115);
      v116 = __src[0];
      if (v101 == *(__src[0] + 2 * v102))
      {
        do
        {
          v117 = v116[2 * v102 + 1];
          if (v117 < 1)
          {
            v119 = v103;
          }

          else
          {
            v118 = *(v114 + 16 * v103);
            do
            {
              v119 = v103 + 1;
              *(v114 + 16 + 16 * v103++) = v118;
              --v117;
            }

            while (v117);
          }

          ++v102;
          v103 = v119;
        }

        while (v101 == v116[2 * v102]);
      }

      else
      {
        v119 = v103;
      }

      ++v101;
      v103 = v119 + 1;
    }

    while (v101 != v104);
  }

  else
  {
    v114 = *v162;
  }

  v120 = *(v166 + 31);
  v121 = (v120 - v114) >> 4;
  v123 = *(v166 + 34);
  v122 = *(v166 + 35);
  v124 = v122 - v123;
  v125 = (v122 - v123) >> 2;
  if (v121 <= v125)
  {
    if (v121 >= v125)
    {
      goto LABEL_169;
    }

    v148 = v123 + 4 * v121;
  }

  else
  {
    v126 = v121 - v125;
    v127 = *(v166 + 36);
    if (v126 > (v127 - v122) >> 2)
    {
      if (v121 >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v128 = v127 - v123;
      v129 = (v127 - v123) >> 1;
      if (v129 <= v121)
      {
        v129 = (v120 - v114) >> 4;
      }

      if (v128 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v130 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v130 = v129;
      }

      v186 = (v166 + 296);
      v131 = mdm::zone_mallocator::instance(v100);
      v132 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<float>(v131, v130);
      v133 = 0;
      v134 = (v126 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v135 = vdupq_n_s64(v134);
      v136 = &v132[v124];
      v137 = &v132[4 * v130];
      v138 = v134 - ((v126 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v139 = &v132[v124 + 8];
      do
      {
        v140 = vdupq_n_s64(v133);
        v141 = vmovn_s64(vcgeq_u64(v135, vorrq_s8(v140, xmmword_1B33B0560)));
        if (vuzp1_s16(v141, *v135.i8).u8[0])
        {
          *(v139 - 2) = 0;
        }

        if (vuzp1_s16(v141, *&v135).i8[2])
        {
          *(v139 - 1) = 0;
        }

        if (vuzp1_s16(*&v135, vmovn_s64(vcgeq_u64(v135, vorrq_s8(v140, xmmword_1B33B0550)))).i32[1])
        {
          *v139 = 0;
          *(v139 + 1) = 0;
        }

        v133 += 4;
        v139 += 16;
      }

      while (v138 != v133);
      v142 = &v132[4 * v121];
      v143 = *(v166 + 34);
      v144 = *(v166 + 35) - v143;
      v145 = &v136[-v144];
      memcpy(&v136[-v144], v143, v144);
      v146 = *(v166 + 34);
      *(v166 + 34) = v145;
      *(v166 + 35) = v142;
      v147 = *(v166 + 36);
      *(v166 + 36) = v137;
      v184 = v146;
      v185 = v147;
      v182 = v146;
      v183 = v146;
      v100 = std::__split_buffer<float,geo::allocator_adapter<float,mdm::zone_mallocator> &>::~__split_buffer(&v182);
      v114 = *(v166 + 30);
      v120 = *(v166 + 31);
LABEL_169:
      v172 = 0uLL;
      v173 = 0;
      v186 = &v174;
      v156 = mdm::zone_mallocator::instance(v100);
      v157 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelCollisionPath>(v156, 1);
      *v157 = ((v120 - v114) << 28) & 0xFFFFFFFF00000000;
      v158 = (v157 + 1);
      v159 = v157 - (*(&v172 + 1) - v172);
      memcpy(v159, v172, *(&v172 + 1) - v172);
      v160 = v172;
      v161 = v173;
      *&v172 = v159;
      *(&v172 + 1) = v158;
      v173 = v158;
      v184 = v160;
      v185 = v161;
      v182 = v160;
      v183 = v160;
      std::__split_buffer<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator> &>::~__split_buffer(&v182);
      *(&v172 + 1) = v158;
      operator new();
    }

    v149 = (v126 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v150 = vdupq_n_s64(v149);
    v151 = v149 - ((v126 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v152 = (v122 + 8);
    v153 = -4;
    do
    {
      v154 = vdupq_n_s64(v153 + 4);
      v155 = vmovn_s64(vcgeq_u64(v150, vorrq_s8(v154, xmmword_1B33B0560)));
      if (vuzp1_s16(v155, *v150.i8).u8[0])
      {
        *(v152 - 2) = 0;
      }

      if (vuzp1_s16(v155, *&v150).i8[2])
      {
        *(v152 - 1) = 0;
      }

      if (vuzp1_s16(*&v150, vmovn_s64(vcgeq_u64(v150, vorrq_s8(v154, xmmword_1B33B0550)))).i32[1])
      {
        *v152 = 0;
        v152[1] = 0;
      }

      v153 += 4;
      v152 += 4;
    }

    while (v151 != v153);
    v148 = v122 + 4 * v126;
  }

  *(v166 + 35) = v148;
  goto LABEL_169;
}

void sub_1B2DFBF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void **a53, uint64_t a54, uint64_t a55, void *a56)
{
  geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>::~fast_shared_ptr(&a56);
  std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(STACK[0x208]);
  a53 = (a32 + 312);
  std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a53);
  std::unique_ptr<md::LabelRouteCollisionInfo>::reset[abi:nn200100](a16 + 8, 0);
  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a32 + 272));
  std::vector<geo::Mercator2<double>,geo::allocator_adapter<geo::Mercator2<double>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a16);
  std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*(a32 + 160));
  a53 = a25;
  std::vector<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a53);
  a53 = a26;
  std::vector<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a53);
  *(a32 + 24) = &unk_1F2A4C308;

  *a32 = a9;
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<md::LabelRouteCollisionInfo>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 48));
    v3 = v2;
    std::vector<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<geo::Mercator2<double>,geo::allocator_adapter<geo::Mercator2<double>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::Mercator2<double>>(v2, v1);
  }
}

void std::vector<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>::~fast_shared_ptr(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>>(v6, v5);
  }
}

void std::vector<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>::~fast_shared_ptr(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>>(v6, v5);
  }
}

void **geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>::~fast_shared_ptr(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*v2)-- == 1)
    {
      *(v2 + 1) = &unk_1F2A1BD80;

      operator delete(*a1);
      *a1 = 0;
    }
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>>(uint64_t a1, void *a2)
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

void geo::_retain_ptr<GEOComposedRouteSegment * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1BD80;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOComposedRouteSegment * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1BD80;

  return a1;
}

void **geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>::~fast_shared_ptr(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*v2)-- == 1)
    {
      v4 = *(v2 + 11);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      operator delete(*a1);
      *a1 = 0;
    }
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::Mercator2<double>>(uint64_t a1, void *a2)
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

void std::vector<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v7 = *--v3;
        v6 = v7;
        if (v7)
        {
          if ((*v6)-- == 1)
          {
            std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v6 + 120));
            std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v6 + 88));
            std::__hash_table<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,mdm::zone_mallocator>>::__deallocate_node(*(v6 + 56));
            v10 = *(v6 + 32);
            *(v6 + 32) = 0;
            if (v10)
            {
              v11 = mdm::zone_mallocator::instance(v9);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *>(v11, v10);
            }

            operator delete(*v3);
            *v3 = 0;
          }
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v12 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>>(v12, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>>(uint64_t a1, void *a2)
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

void std::__hash_table<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,mdm::zone_mallocator>>::__deallocate_node(mdm::zone_mallocator *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = v2[3];
      if (v3)
      {
        if ((*v3)-- == 1)
        {
          std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v3 + 6));
          operator delete(v2[3]);
          v2[3] = 0;
        }
      }

      v5 = mdm::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *>>(v5, v2);
    }

    while (v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelCollisionPath>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::RouteWaypointLabelFeature>>(uint64_t a1, void *a2)
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

void geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>::reset(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*v2)-- == 1)
    {
      v4 = *(v2 + 11);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      operator delete(*a1);
    }
  }

  *a1 = 0;
}

BOOL isOriginStopSkippedForStep(void *a1)
{
  v1 = a1;
  v2 = [v1 transitVehicle];
  v3 = [v2 pickupDropoffType];

  if (v3 == 100)
  {
    v4 = 1;
  }

  else if ([v1 maneuver] == 9 && (objc_msgSend(v1, "originStop"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "muid"), objc_msgSend(v1, "destinationStop"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "muid"), v7, v5, v6 == v8) && (objc_msgSend(v1, "getNextStep"), v9 = objc_claimAutoreleasedReturnValue(), (v10 = v9) != 0))
  {
    v11 = [v9 transitVehicle];
    v4 = [v11 pickupDropoffType] == 100;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void **geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>::operator=(void **a1, void **a2)
{
  v4 = *a1;
  if (*a1)
  {
    if ((*v4)-- == 1)
    {
      v6 = *(v4 + 11);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }

      operator delete(*a1);
      *a1 = 0;
    }
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

void md::LabelTransitRoute::insertStationWalkingPathNodes(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  v6 = *a3 + 8;
  if (!*a3)
  {
    v6 = 0;
  }

  v7 = *(*(a1 + 56) + 8 * *(v6 + 24));
  if (v7)
  {
    v8 = v7 + 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(v8 + 60) + *(v6 + 44));
  v10 = *a4;
  if (*a4)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v11 = *(a1 + 240);
      if (v9 < (*(a1 + 248) - v11) >> 4)
      {
        v12 = 0;
        v13 = (v11 + 16 * v9);
        v14 = *v13;
        v15 = *(a1 + 200);
        v16 = 1;
        do
        {
          v17 = vabdd_f64(v14, v10[v12 + 5]);
          if ((v16 & 1) == 0)
          {
            break;
          }

          v16 = 0;
          v14 = v13[1];
          v12 = 1;
        }

        while (v17 < v15);
        if (v17 < v15)
        {
          if (*(v10 + 109) == 4)
          {
            goto LABEL_49;
          }

          v18 = *(a1 + 96);
          v19 = *(a1 + 104);
          if (v18 < v19)
          {
            *v18 = 0;
            v20 = *a4;
            *v18 = *a4;
            if (v20)
            {
              ++*v20;
            }

            v21 = v18 + 1;
LABEL_48:
            *(a1 + 96) = v21;
LABEL_49:
            geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>::reset(a4);
            md::LabelTransitRoute::createNode(&v45);
          }

          v35 = *(a1 + 88);
          v36 = (v18 - v35) >> 3;
          v37 = v36 + 1;
          if (!((v36 + 1) >> 61))
          {
            v38 = v19 - v35;
            if (v38 >> 2 > v37)
            {
              v37 = v38 >> 2;
            }

            if (v38 >= 0x7FFFFFFFFFFFFFF8)
            {
              v39 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v39 = v37;
            }

            v49 = a1 + 112;
            if (v39)
            {
              v40 = mdm::zone_mallocator::instance(a1);
              v41 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>>(v40, v39);
            }

            else
            {
              v41 = 0;
            }

            v42 = &v41[8 * v36];
            v45 = v41;
            v46 = v42;
            v48 = &v41[8 * v39];
            *v42 = 0;
            v43 = *a4;
            *v42 = *a4;
            if (v43)
            {
              ++*v43;
            }

            v47 = v42 + 1;
            std::vector<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,mdm::zone_mallocator>>::__swap_out_circular_buffer(a1 + 88, &v45);
            v21 = *(a1 + 96);
            std::__split_buffer<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,mdm::zone_mallocator> &>::~__split_buffer(&v45);
            goto LABEL_48;
          }

LABEL_50:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }
      }
    }

    v22 = *(a1 + 96);
    v23 = *(a1 + 104);
    if (v22 >= v23)
    {
      v26 = *(a1 + 88);
      v27 = (v22 - v26) >> 3;
      v28 = v27 + 1;
      if ((v27 + 1) >> 61)
      {
        goto LABEL_50;
      }

      v29 = v23 - v26;
      if (v29 >> 2 > v28)
      {
        v28 = v29 >> 2;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      v49 = a1 + 112;
      if (v30)
      {
        v31 = mdm::zone_mallocator::instance(a1);
        v32 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>>(v31, v30);
      }

      else
      {
        v32 = 0;
      }

      v33 = &v32[8 * v27];
      v45 = v32;
      v46 = v33;
      v48 = &v32[8 * v30];
      *v33 = 0;
      v34 = *a4;
      *v33 = *a4;
      if (v34)
      {
        ++*v34;
      }

      v47 = v33 + 1;
      std::vector<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,mdm::zone_mallocator>>::__swap_out_circular_buffer(a1 + 88, &v45);
      v25 = *(a1 + 96);
      std::__split_buffer<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,mdm::zone_mallocator> &>::~__split_buffer(&v45);
    }

    else
    {
      *v22 = 0;
      v24 = *a4;
      *v22 = *a4;
      if (v24)
      {
        ++*v24;
      }

      v25 = v22 + 1;
    }

    *(a1 + 96) = v25;
    geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>::reset(a4);
  }

  md::LabelTransitRoute::createNode(&v44);
}

void md::LabelTransitRoute::mercatorPointForLatLng(void *a1, float64x2_t *a2)
{
  v15 = a1;
  [v15 lat];
  v4 = v3;
  [v15 lng];
  v14 = v5;
  v6 = tan(v4 * 0.00872664626 + 0.785398163);
  v7 = log(v6);
  v8.f64[0] = v14;
  v8.f64[1] = v7;
  __asm { FMOV            V1.2D, #0.5 }

  *a2 = vmlaq_f64(_Q1, xmmword_1B33B0700, v8);
}

uint64_t *std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v4 = result;
  v6 = (result + 1);
  v5 = result[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        break;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = (result + 1);
LABEL_9:
    v9 = mdm::zone_mallocator::instance(result);
    v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<unsigned long long,void *>>(v9);
    v10[4] = *a3;

    return std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(v4, v7, v6, v10);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>>(uint64_t a1, uint64_t a2)
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

void **std::vector<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,mdm::zone_mallocator>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = 0;
      *v9++ = *v8;
      *v8++ = 0;
    }

    while (v8 != v5);
    do
    {
      result = geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>::~fast_shared_ptr(result) + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

void **std::__split_buffer<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,mdm::zone_mallocator> &>::~__split_buffer(void **a1)
{
  v1 = a1;
  v3 = a1[1];
  for (i = a1[2]; i != v3; i = v1[2])
  {
    v1[2] = i - 1;
    a1 = geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>::~fast_shared_ptr(i - 1);
  }

  v4 = *v1;
  if (*v1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>>(v5, v4);
  }

  return v1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<unsigned long long,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x28uLL, 0x102004068CDCF72uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelTransitRoute::Range>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x100004000313F17uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelTransitRoute::Range,geo::allocator_adapter<md::LabelTransitRoute::Range,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelTransitRoute::Range>(v5, v4);
  }

  return a1;
}

void std::vector<geo::Mercator2<double>,geo::allocator_adapter<geo::Mercator2<double>,mdm::zone_mallocator>>::resize(mdm::zone_mallocator *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = v4 - *a1;
  v6 = v5 >> 4;
  if (a2 <= v5 >> 4)
  {
    if (a2 >= v6)
    {
      return;
    }

    v25 = &v3[a2];
    goto LABEL_22;
  }

  v7 = a2 - v6;
  v8 = *(a1 + 2);
  if (v7 <= (v8 - v4) >> 4)
  {
    bzero(*(a1 + 1), 16 * v7);
    v25 = (v4 + 16 * v7);
LABEL_22:
    *(a1 + 1) = v25;
    return;
  }

  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v9 = v8 - v3;
  v10 = v9 >> 3;
  if (v9 >> 3 <= a2)
  {
    v10 = a2;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  v12 = mdm::zone_mallocator::instance(a1);
  v13 = pthread_rwlock_rdlock((v12 + 32));
  if (v13)
  {
    geo::read_write_lock::logFailure(v13, "read lock", v14);
  }

  v15 = malloc_type_zone_malloc(*v12, 16 * v11, 0x1000040451B5BE8uLL);
  atomic_fetch_add((v12 + 24), 1u);
  geo::read_write_lock::unlock((v12 + 32));
  v16 = &v15[v5];
  v17 = &v15[16 * v11];
  bzero(v16, 16 * v7);
  v20 = *a1;
  v19 = *(a1 + 1);
  v21 = &v16[*a1 - v19];
  if (v19 != *a1)
  {
    v22 = &v16[*a1 - v19];
    do
    {
      v23 = *v20++;
      *v22 = v23;
      v22 += 16;
    }

    while (v20 != v19);
    v20 = *a1;
  }

  *a1 = v21;
  *(a1 + 1) = &v16[16 * v7];
  *(a1 + 2) = v17;
  if (v20)
  {
    v24 = mdm::zone_mallocator::instance(v18);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::Mercator2<double>>(v24, v20);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelCollisionPath>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x100004000313F17uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::vector<md::LabelTransitRoute::Range,geo::allocator_adapter<md::LabelTransitRoute::Range,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelTransitRoute::Range>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelTransitRoute::Range>(uint64_t a1, void *a2)
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

mdm::zone_mallocator *std::__split_buffer<float,geo::allocator_adapter<float,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<float>(v5, v4);
  }

  return a1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>>(uint64_t a1, uint64_t a2)
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

void **std::vector<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,mdm::zone_mallocator>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = 0;
      *v9++ = *v8;
      *v8++ = 0;
    }

    while (v8 != v5);
    do
    {
      result = geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>::~fast_shared_ptr(result) + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

void **std::__split_buffer<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,mdm::zone_mallocator> &>::~__split_buffer(void **a1)
{
  v1 = a1;
  v3 = a1[1];
  for (i = a1[2]; i != v3; i = v1[2])
  {
    v1[2] = i - 1;
    a1 = geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>::~fast_shared_ptr(i - 1);
  }

  v4 = *v1;
  if (*v1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>>(v5, v4);
  }

  return v1;
}

void md::LabelTransitRoute::buildFeatureForWaypoint(md::LabelTransitRoute *this, md::LabelManager *a2, VKRouteWaypointInfo *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  _ZNSt3__115allocate_sharedB8nn200100IN2md25LabelExternalPointFeatureENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B2DFE540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v22 - 128));

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::RouteWaypointLabelFeature>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

std::__shared_weak_count *std::__split_buffer<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::RouteWaypointLabelFeature>>(v5, v4);
  }

  return v1;
}

void std::__shared_ptr_emplace<md::RouteWaypointLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A46058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

mdm::zone_mallocator *std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<GeoCodecsFeatureStylePair const*,GeoCodecsFeatureStylePair const*>(mdm::zone_mallocator *result, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return result;
  }

  v6 = __src;
  v8 = result;
  v10 = *(result + 1);
  v9 = *(result + 2);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *result;
    v12 = a5 + (&v10[-*result] >> 3);
    if (v12 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = &__dst[-v11] >> 3;
    v44[4] = result + 24;
    if (v14)
    {
      v16 = mdm::zone_mallocator::instance(result);
      v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v16, v14);
    }

    else
    {
      v17 = 0;
    }

    v33 = &v17[8 * v15];
    v34 = 8 * a5;
    v35 = v33;
    do
    {
      v36 = *v6++;
      *v35 = v36;
      v35 += 8;
      v34 -= 8;
    }

    while (v34);
    v37 = &v17[8 * v14];
    memcpy(&v33[8 * a5], __dst, *(v8 + 1) - __dst);
    v38 = *v8;
    v39 = &v33[8 * a5 + *(v8 + 1) - __dst];
    *(v8 + 1) = __dst;
    v40 = (__dst - v38);
    v41 = &v33[-(__dst - v38)];
    memcpy(v41, v38, v40);
    v42 = *v8;
    *v8 = v41;
    *(v8 + 1) = v39;
    v43 = *(v8 + 2);
    *(v8 + 2) = v37;
    v44[2] = v42;
    v44[3] = v43;
    v44[0] = v42;
    v44[1] = v42;
    return std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(v44);
  }

  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = *(result + 1);
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    *(result + 1) = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = __dst;
    v32 = v6;
    goto LABEL_34;
  }

  v19 = &__src[v10 - __dst];
  v20 = *(result + 1);
  while (v19 != a4)
  {
    v21 = *v19;
    v19 += 8;
    *v20 = v21;
    v20 += 8;
  }

  *(result + 1) = v20;
  if (v18 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v20[-8 * a5];
    v28 = v20;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    *(result + 1) = v28;
    if (v20 != v26)
    {
      result = memmove(&__dst[8 * a5], __dst, v20 - v26);
    }

    if (v10 != __dst)
    {
      v31 = __dst;
      v32 = v6;
      v30 = v10 - __dst;
LABEL_34:

      return memmove(v31, v32, v30);
    }
  }

  return result;
}

void std::vector<md::LabelFeaturePlacementInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 4);
        v6 -= 32;
        v7 = v8;
        if (v8)
        {
          *(v4 - 3) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void md::LabelExternalFeature::~LabelExternalFeature(void **this)
{
  *this = &unk_1F2A54298;
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100]((this + 18));
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  v2 = this[13];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = this[6];
  if (v3)
  {
    v4 = this[7];
    v5 = this[6];
    if (v4 != v3)
    {
      do
      {
        v4 -= 104;
        std::allocator_traits<std::allocator<md::LabelExternalTextElement>>::destroy[abi:nn200100]<md::LabelExternalTextElement,void,0>(v4);
      }

      while (v4 != v3);
      v5 = this[6];
    }

    this[7] = v3;
    operator delete(v5);
  }

  v6 = this[5];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

{
  md::LabelExternalFeature::~LabelExternalFeature(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelExternalFeature::finalize(md::LabelExternalFeature *this)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  v4 = (this + 48);
  v5 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v3 - v2) >> 3));
  if (v3 == v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::LabelExternalFeature::finalize(void)::{lambda(md::LabelExternalTextElement const&,md::LabelExternalTextElement const&)#1} &,md::LabelExternalTextElement*,false>(v2, v3, v6, 1);

  return std::vector<md::LabelExternalTextElement>::shrink_to_fit(v4);
}

uint64_t std::vector<md::LabelExternalTextElement>::shrink_to_fit(uint64_t *a1)
{
  v2 = a1[2];
  result = *a1;
  v4 = a1[1];
  v5 = v2 - result;
  if (v5 > (v4 - result))
  {
    v14 = a1;
    if (v4 != result)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::LabelExternalTextElement>>(0x4EC4EC4EC4EC4EC5 * ((v4 - result) >> 3));
    }

    v6 = 8 * ((v4 - result) >> 3);
    v11 = 0;
    v12 = v6;
    v13 = v6;
    if (0x4EC4EC4EC4EC4EC5 * (v5 >> 3))
    {
      v7 = a1[1];
      v8 = v6 + result - v7;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::LabelExternalTextElement>,md::LabelExternalTextElement*>(result, v7, v8);
      v9 = *a1;
      *a1 = v8;
      v10 = a1[2];
      *(a1 + 1) = v13;
      *&v13 = v9;
      *(&v13 + 1) = v10;
      v11 = v9;
      v12 = v9;
    }

    return std::__split_buffer<md::LabelExternalTextElement>::~__split_buffer(&v11);
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,md::LabelExternalFeature::finalize(void)::{lambda(md::LabelExternalTextElement const&,md::LabelExternalTextElement const&)#1} &,md::LabelExternalTextElement*,false>(unsigned __int8 *a1, __int16 *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v7 = a2 - 52;
    v171 = a2 - 156;
    v172 = a2 - 104;
    v218 = a2;
    v173 = a2 - 52;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = a1;
          v9 = a2 - a1;
          v10 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v83 = v8[104];
                v84 = *v7;
                if (v83 >= *v8)
                {
                  if (v84 >= v83)
                  {
                    return;
                  }

                  std::swap[abi:nn200100]<md::LabelExternalTextElement>(v8 + 52, v7);
                  if (v8[104] >= *v8)
                  {
                    return;
                  }

                  v82 = v8;
                  v81 = (v8 + 104);
                }

                else
                {
                  if (v84 < v83)
                  {
                    goto LABEL_141;
                  }

                  std::swap[abi:nn200100]<md::LabelExternalTextElement>(v8, v8 + 52);
                  if (*v7 >= v8[104])
                  {
                    return;
                  }

                  v82 = (v8 + 104);
LABEL_142:
                  v81 = v7;
                }

LABEL_143:

                std::swap[abi:nn200100]<md::LabelExternalTextElement>(v82, v81);
                return;
              case 4:

                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalFeature::finalize(void)::{lambda(md::LabelExternalTextElement const&,md::LabelExternalTextElement const&)#1} &,md::LabelExternalTextElement*,0>(v8, v8 + 52, v8 + 104, v7);
                return;
              case 5:
                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalFeature::finalize(void)::{lambda(md::LabelExternalTextElement const&,md::LabelExternalTextElement const&)#1} &,md::LabelExternalTextElement*,0>(v8, v8 + 52, v8 + 104, v8 + 156);
                if (*v7 >= v8[312])
                {
                  return;
                }

                std::swap[abi:nn200100]<md::LabelExternalTextElement>(v8 + 156, v7);
                if (v8[312] >= v8[208])
                {
                  return;
                }

                std::swap[abi:nn200100]<md::LabelExternalTextElement>(v8 + 104, v8 + 156);
                if (v8[208] >= v8[104])
                {
                  return;
                }

                std::swap[abi:nn200100]<md::LabelExternalTextElement>(v8 + 52, v8 + 104);
                if (v8[104] >= *v8)
                {
                  return;
                }

                v81 = (v8 + 104);
                v82 = v8;
                goto LABEL_143;
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
              if (*v7 >= *v8)
              {
                return;
              }

LABEL_141:
              v82 = v8;
              goto LABEL_142;
            }
          }

          v220 = v8;
          if (v9 <= 2495)
          {
            v85 = (v8 + 104);
            v87 = v8 == a2 || v85 == a2;
            if (a4)
            {
              if (!v87)
              {
                v88 = 0;
                v89 = v8;
                do
                {
                  v90 = v85;
                  if (v89[104] < *v89)
                  {
                    v91 = *v85;
                    v189 = *(v89 + 14);
                    *v246 = *(v89 + 15);
                    *&v246[7] = *(v89 + 127);
                    v184 = v89[135];
                    *(v89 + 14) = 0;
                    *(v89 + 15) = 0;
                    v201 = *(v89 + 17);
                    *v240 = *(v89 + 18);
                    *&v240[7] = *(v89 + 151);
                    v195 = v89[159];
                    *(v89 + 16) = 0;
                    *(v89 + 17) = 0;
                    *(v89 + 18) = 0;
                    *(v89 + 19) = 0;
                    v92 = *(v89 + 20);
                    *&v234[7] = *(v89 + 175);
                    *v234 = *(v89 + 21);
                    v207 = v89[183];
                    *(v89 + 20) = 0;
                    *(v89 + 21) = 0;
                    v93 = *(v89 + 23);
                    *&v228[7] = *(v89 + 199);
                    *v228 = *(v89 + 24);
                    v94 = v89[207];
                    *(v89 + 22) = 0;
                    *(v89 + 23) = 0;
                    v95 = v88;
                    *(v89 + 24) = 0;
                    *(v89 + 25) = 0;
                    v213 = v94;
                    while (1)
                    {
                      v96 = v95;
                      v97 = &v8[v95];
                      *&v8[v95 + 104] = *&v8[v95];
                      if (v8[v95 + 135] < 0)
                      {
                        operator delete(*(v97 + 14));
                      }

                      *(v97 + 7) = *(v97 + 8);
                      *(v97 + 16) = *(v97 + 3);
                      v97[31] = 0;
                      v97[8] = 0;
                      if (v97[159] < 0)
                      {
                        operator delete(*(v97 + 17));
                      }

                      v98 = &v8[v96];
                      *(v97 + 136) = *&v8[v96 + 32];
                      *(v97 + 19) = *&v8[v96 + 48];
                      v98[55] = 0;
                      v98[32] = 0;
                      if (v8[v96 + 183] < 0)
                      {
                        operator delete(*(v98 + 20));
                      }

                      *(v98 + 10) = *(v98 + 56);
                      *(v98 + 22) = *(v98 + 9);
                      v98[79] = 0;
                      v98[56] = 0;
                      if (v98[207] < 0)
                      {
                        operator delete(*(v98 + 23));
                      }

                      v99 = &v8[v96];
                      *(v98 + 184) = *&v8[v96 + 80];
                      *(v98 + 25) = *&v8[v96 + 96];
                      v99[103] = 0;
                      v99[80] = 0;
                      if (!v96)
                      {
                        break;
                      }

                      v95 = v96 - 104;
                      if (*(v99 - 104) <= v91)
                      {
                        v100 = v93;
                        v101 = &v8[v96];
                        v99 = &v8[v96];
                        goto LABEL_172;
                      }
                    }

                    v100 = v93;
                    v101 = v8;
LABEL_172:
                    v102 = (v99 + 8);
                    v103 = (v99 + 32);
                    v104 = (v99 + 80);
                    v105 = (v99 + 56);
                    *v101 = v91;
                    if (v101[31] < 0)
                    {
                      operator delete(*v102);
                    }

                    *v102 = v189;
                    *(v101 + 2) = *v246;
                    *(v101 + 23) = *&v246[7];
                    v101[31] = v184;
                    a2 = v218;
                    if (v101[55] < 0)
                    {
                      operator delete(*v103);
                    }

                    *v103 = v201;
                    *(v101 + 5) = *v240;
                    *(v101 + 47) = *&v240[7];
                    v101[55] = v195;
                    v8 = v220;
                    if (v101[79] < 0)
                    {
                      operator delete(*v105);
                    }

                    *v105 = v92;
                    *(v101 + 8) = *v234;
                    *(v101 + 71) = *&v234[7];
                    v101[79] = v207;
                    if (v101[103] < 0)
                    {
                      operator delete(*v104);
                    }

                    *v104 = v100;
                    *(v101 + 11) = *v228;
                    *(v101 + 95) = *&v228[7];
                    v101[103] = v213;
                  }

                  v85 = (v90 + 104);
                  v88 += 104;
                  v89 = v90;
                }

                while (v90 + 104 != a2);
              }
            }

            else if (!v87)
            {
              v159 = v8 - 104;
              do
              {
                v160 = v85;
                if (v8[104] < *v8)
                {
                  v161 = *v85;
                  v162 = v8;
                  v163 = *(v8 + 14);
                  *v249 = *(v162 + 15);
                  *&v249[7] = *(v162 + 127);
                  v164 = v162[135];
                  *(v162 + 14) = 0;
                  *(v162 + 15) = 0;
                  v165 = *(v162 + 17);
                  *v243 = *(v162 + 18);
                  *&v243[7] = *(v162 + 151);
                  v166 = v162[159];
                  *(v162 + 16) = 0;
                  *(v162 + 17) = 0;
                  *(v162 + 18) = 0;
                  *(v162 + 19) = 0;
                  v211 = *(v162 + 20);
                  *&v237[7] = *(v162 + 175);
                  *v237 = *(v162 + 21);
                  v167 = v162[183];
                  *(v162 + 20) = 0;
                  *(v162 + 21) = 0;
                  v221 = *(v162 + 23);
                  *&v231[7] = *(v162 + 199);
                  *v231 = *(v162 + 24);
                  v217 = v162[207];
                  *(v162 + 22) = 0;
                  *(v162 + 23) = 0;
                  v168 = v159;
                  *(v162 + 24) = 0;
                  *(v162 + 25) = 0;
                  do
                  {
                    v169 = v168;
                    *(v168 + 104) = *(v168 + 52);
                    if (v168[239] < 0)
                    {
                      operator delete(*(v168 + 27));
                    }

                    *(v168 + 216) = *(v168 + 7);
                    *(v168 + 29) = *(v168 + 16);
                    v168[135] = 0;
                    v168[112] = 0;
                    if (v168[263] < 0)
                    {
                      operator delete(*(v168 + 30));
                    }

                    *(v168 + 15) = *(v168 + 136);
                    *(v168 + 32) = *(v168 + 19);
                    v168[159] = 0;
                    v168[136] = 0;
                    v170 = (v168 + 264);
                    if (v169[287] < 0)
                    {
                      operator delete(*v170);
                    }

                    *v170 = *(v169 + 10);
                    *(v169 + 35) = *(v169 + 22);
                    v169[183] = 0;
                    v169[160] = 0;
                    if (v169[311] < 0)
                    {
                      operator delete(*(v169 + 36));
                    }

                    *(v169 + 18) = *(v169 + 184);
                    *(v169 + 38) = *(v169 + 25);
                    v169[207] = 0;
                    v169[184] = 0;
                    v168 = v169 - 104;
                  }

                  while (*v169 > v161);
                  *(v169 + 52) = v161;
                  if (v169[135] < 0)
                  {
                    operator delete(*(v169 + 14));
                  }

                  *(v169 + 14) = v163;
                  *(v169 + 127) = *&v249[7];
                  *(v169 + 15) = *v249;
                  v169[135] = v164;
                  if (v169[159] < 0)
                  {
                    operator delete(*(v169 + 17));
                  }

                  *(v169 + 17) = v165;
                  *(v169 + 151) = *&v243[7];
                  *(v169 + 18) = *v243;
                  v169[159] = v166;
                  if (v169[183] < 0)
                  {
                    operator delete(*(v169 + 20));
                  }

                  *(v169 + 20) = v211;
                  *(v169 + 175) = *&v237[7];
                  *(v169 + 21) = *v237;
                  v169[183] = v167;
                  if (v169[207] < 0)
                  {
                    operator delete(*(v169 + 23));
                  }

                  a2 = v218;
                  *(v169 + 23) = v221;
                  *(v169 + 199) = *&v231[7];
                  *(v169 + 24) = *v231;
                  v169[207] = v217;
                }

                v85 = (v160 + 104);
                v159 += 104;
                v8 = v160;
              }

              while (v160 + 104 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v106 = v11 >> 1;
              v107 = v11 >> 1;
              do
              {
                v108 = v107;
                if (v106 >= v107)
                {
                  v109 = (2 * v107) | 1;
                  v110 = &v8[104 * v109];
                  if (2 * v108 + 2 >= v10)
                  {
                    v111 = *v110;
                  }

                  else
                  {
                    v111 = *v110;
                    v112 = v110[104];
                    v113 = v111 >= v112;
                    if (v111 <= v112)
                    {
                      v111 = v110[104];
                    }

                    if (!v113)
                    {
                      v110 += 104;
                      v109 = 2 * v108 + 2;
                    }
                  }

                  v114 = &v8[104 * v108];
                  if (v111 >= *v114)
                  {
                    v115 = *v114;
                    v181 = *(v114 + 1);
                    *&v247[7] = *(v114 + 23);
                    *v247 = *(v114 + 2);
                    v178 = v114[31];
                    *(v114 + 1) = 0;
                    *(v114 + 2) = 0;
                    v185 = *(v114 + 4);
                    *v241 = *(v114 + 5);
                    *&v241[7] = *(v114 + 47);
                    v190 = v114[55];
                    *(v114 + 3) = 0;
                    *(v114 + 4) = 0;
                    *(v114 + 5) = 0;
                    *(v114 + 6) = 0;
                    v202 = *(v114 + 7);
                    *&v235[7] = *(v114 + 71);
                    *v235 = *(v114 + 8);
                    v196 = v114[79];
                    *(v114 + 7) = 0;
                    *(v114 + 8) = 0;
                    v214 = *(v114 + 10);
                    *&v229[7] = *(v114 + 95);
                    *v229 = *(v114 + 11);
                    v208 = v114[103];
                    *(v114 + 9) = 0;
                    *(v114 + 10) = 0;
                    *(v114 + 11) = 0;
                    *(v114 + 12) = 0;
                    do
                    {
                      v116 = v110;
                      v117 = v110 + 8;
                      *v114 = *v110;
                      if (v114[31] < 0)
                      {
                        operator delete(*(v114 + 1));
                      }

                      v118 = *v117;
                      *(v114 + 3) = *(v117 + 2);
                      *(v114 + 8) = v118;
                      v116[31] = 0;
                      v116[8] = 0;
                      if (v114[55] < 0)
                      {
                        operator delete(*(v114 + 4));
                      }

                      v119 = *(v116 + 2);
                      *(v114 + 6) = *(v116 + 6);
                      *(v114 + 2) = v119;
                      v116[55] = 0;
                      v116[32] = 0;
                      if (v114[79] < 0)
                      {
                        operator delete(*(v114 + 7));
                      }

                      v120 = *(v116 + 56);
                      *(v114 + 9) = *(v116 + 9);
                      *(v114 + 56) = v120;
                      v116[79] = 0;
                      v116[56] = 0;
                      if (v114[103] < 0)
                      {
                        operator delete(*(v114 + 10));
                      }

                      v121 = *(v116 + 5);
                      *(v114 + 12) = *(v116 + 12);
                      *(v114 + 5) = v121;
                      v116[103] = 0;
                      v116[80] = 0;
                      if (v106 < v109)
                      {
                        break;
                      }

                      v110 = &v220[104 * ((2 * v109) | 1)];
                      if (2 * v109 + 2 >= v10)
                      {
                        v122 = *v110;
                        v109 = (2 * v109) | 1;
                      }

                      else
                      {
                        v122 = *v110;
                        v123 = v110[104];
                        v124 = v122 >= v123;
                        if (v122 <= v123)
                        {
                          v122 = v110[104];
                        }

                        if (v124)
                        {
                          v109 = (2 * v109) | 1;
                        }

                        else
                        {
                          v110 += 104;
                          v109 = 2 * v109 + 2;
                        }
                      }

                      v114 = v116;
                    }

                    while (v122 >= v115);
                    *v116 = v115;
                    if (v116[31] < 0)
                    {
                      operator delete(*v117);
                    }

                    *(v116 + 1) = v181;
                    *(v116 + 2) = *v247;
                    *(v116 + 23) = *&v247[7];
                    v116[31] = v178;
                    if (v116[55] < 0)
                    {
                      operator delete(*(v116 + 4));
                    }

                    *(v116 + 4) = v185;
                    *(v116 + 5) = *v241;
                    *(v116 + 47) = *&v241[7];
                    v116[55] = v190;
                    v8 = v220;
                    if (v116[79] < 0)
                    {
                      operator delete(*(v116 + 7));
                    }

                    *(v116 + 7) = v202;
                    *(v116 + 8) = *v235;
                    *(v116 + 71) = *&v235[7];
                    v116[79] = v196;
                    if (v116[103] < 0)
                    {
                      operator delete(*(v116 + 10));
                    }

                    *(v116 + 10) = v214;
                    *(v116 + 11) = *v229;
                    *(v116 + 95) = *&v229[7];
                    v116[103] = v208;
                  }
                }

                v107 = v108 - 1;
              }

              while (v108);
              v125 = 0x4EC4EC4EC4EC4EC5 * (v9 >> 3);
              v126 = v218;
              do
              {
                if (v125 >= 2)
                {
                  v219 = v126;
                  v127 = 0;
                  v128 = *v8;
                  v129 = *(v8 + 1);
                  *&v225[7] = *(v8 + 23);
                  *v225 = *(v8 + 2);
                  v130 = v8[31];
                  *(v8 + 1) = 0;
                  *(v8 + 2) = 0;
                  v186 = *(v8 + 4);
                  *v224 = *(v8 + 5);
                  *&v224[7] = *(v8 + 47);
                  v191 = v8[55];
                  *(v8 + 5) = 0;
                  *(v8 + 6) = 0;
                  *(v8 + 3) = 0;
                  *(v8 + 4) = 0;
                  v197 = *(v8 + 7);
                  *&v223[7] = *(v8 + 71);
                  *v223 = *(v8 + 8);
                  v203 = v8[79];
                  *(v8 + 7) = 0;
                  *(v8 + 8) = 0;
                  v209 = *(v8 + 10);
                  *&v222[7] = *(v8 + 95);
                  *v222 = *(v8 + 11);
                  v215 = v8[103];
                  *(v8 + 9) = 0;
                  *(v8 + 10) = 0;
                  v131 = v8;
                  *(v8 + 11) = 0;
                  *(v8 + 12) = 0;
                  do
                  {
                    v132 = &v131[13 * v127];
                    v133 = v132 + 104;
                    if (2 * v127 + 2 >= v125)
                    {
                      v127 = (2 * v127) | 1;
                    }

                    else
                    {
                      v135 = v132[208];
                      v134 = v132 + 208;
                      if (*(v134 - 104) >= v135)
                      {
                        v127 = (2 * v127) | 1;
                      }

                      else
                      {
                        v133 = v134;
                        v127 = 2 * v127 + 2;
                      }
                    }

                    v136 = (v133 + 8);
                    *v131 = *v133;
                    if (*(v131 + 31) < 0)
                    {
                      operator delete(v131[1]);
                    }

                    v137 = *v136;
                    v131[3] = *(v133 + 3);
                    *(v131 + 1) = v137;
                    v133[31] = 0;
                    v133[8] = 0;
                    if (*(v131 + 55) < 0)
                    {
                      operator delete(v131[4]);
                    }

                    v138 = *(v133 + 2);
                    v131[6] = *(v133 + 6);
                    *(v131 + 2) = v138;
                    v133[55] = 0;
                    v133[32] = 0;
                    if (*(v131 + 79) < 0)
                    {
                      operator delete(v131[7]);
                    }

                    v139 = *(v133 + 56);
                    v131[9] = *(v133 + 9);
                    *(v131 + 7) = v139;
                    v133[79] = 0;
                    v133[56] = 0;
                    if (*(v131 + 103) < 0)
                    {
                      operator delete(v131[10]);
                    }

                    v140 = *(v133 + 5);
                    v131[12] = *(v133 + 12);
                    *(v131 + 5) = v140;
                    v133[103] = 0;
                    v133[80] = 0;
                    v131 = v133;
                  }

                  while (v127 <= ((v125 - 2) >> 1));
                  if (v133 == (v126 - 52))
                  {
                    *v133 = v128;
                    if (v133[31] < 0)
                    {
                      operator delete(*v136);
                    }

                    *(v133 + 1) = v129;
                    *(v133 + 2) = *v225;
                    *(v133 + 23) = *&v225[7];
                    v133[31] = v130;
                    if (v133[55] < 0)
                    {
                      operator delete(*(v133 + 4));
                    }

                    *(v133 + 4) = v186;
                    *(v133 + 5) = *v224;
                    *(v133 + 47) = *&v224[7];
                    v133[55] = v191;
                    if (v133[79] < 0)
                    {
                      operator delete(*(v133 + 7));
                    }

                    *(v133 + 7) = v197;
                    *(v133 + 8) = *v223;
                    *(v133 + 71) = *&v223[7];
                    v133[79] = v203;
                    if (v133[103] < 0)
                    {
                      operator delete(*(v133 + 10));
                    }

                    *(v133 + 10) = v209;
                    *(v133 + 11) = *v222;
                    *(v133 + 95) = *&v222[7];
                    v133[103] = v215;
                  }

                  else
                  {
                    *v133 = *(v126 - 52);
                    if (v133[31] < 0)
                    {
                      operator delete(*v136);
                    }

                    v141 = *(v126 - 6);
                    *(v133 + 3) = *(v126 - 10);
                    *v136 = v141;
                    *(v126 - 73) = 0;
                    *(v126 - 96) = 0;
                    if (v133[55] < 0)
                    {
                      operator delete(*(v133 + 4));
                    }

                    v142 = *(v126 - 36);
                    *(v133 + 6) = *(v126 - 7);
                    *(v133 + 2) = v142;
                    *(v126 - 49) = 0;
                    *(v126 - 72) = 0;
                    if (v133[79] < 0)
                    {
                      operator delete(*(v133 + 7));
                    }

                    v143 = *(v126 - 3);
                    *(v133 + 9) = *(v126 - 4);
                    *(v133 + 56) = v143;
                    *(v126 - 25) = 0;
                    *(v126 - 48) = 0;
                    if (v133[103] < 0)
                    {
                      operator delete(*(v133 + 10));
                    }

                    v144 = *(v126 - 12);
                    *(v133 + 12) = *(v126 - 1);
                    *(v133 + 5) = v144;
                    *(v126 - 1) = 0;
                    *(v126 - 24) = 0;
                    *(v126 - 52) = v128;
                    if (*(v126 - 73) < 0)
                    {
                      operator delete(*(v126 - 12));
                    }

                    *(v126 - 12) = v129;
                    *(v126 - 81) = *&v225[7];
                    *(v126 - 11) = *v225;
                    *(v126 - 73) = v130;
                    if (*(v126 - 49) < 0)
                    {
                      operator delete(*(v126 - 9));
                    }

                    *(v126 - 9) = v186;
                    *(v126 - 57) = *&v224[7];
                    *(v126 - 8) = *v224;
                    *(v126 - 49) = v191;
                    if (*(v126 - 25) < 0)
                    {
                      operator delete(*(v126 - 6));
                    }

                    *(v126 - 6) = v197;
                    *(v126 - 33) = *&v223[7];
                    *(v126 - 5) = *v223;
                    *(v126 - 25) = v203;
                    if (*(v126 - 1) < 0)
                    {
                      operator delete(*(v126 - 3));
                    }

                    *(v126 - 3) = v209;
                    *(v126 - 9) = *&v222[7];
                    *(v126 - 2) = *v222;
                    *(v126 - 1) = v215;
                    v145 = v133 + 104 - v220;
                    if (v145 >= 105)
                    {
                      v146 = (0x4EC4EC4EC4EC4EC5 * (v145 >> 3) - 2) >> 1;
                      v147 = &v220[104 * v146];
                      if (*v147 < *v133)
                      {
                        v148 = *v133;
                        v149 = *(v133 + 1);
                        *&v248[7] = *(v133 + 23);
                        *v248 = *(v133 + 2);
                        v150 = v133[31];
                        *v136 = 0;
                        *(v133 + 2) = 0;
                        *(v133 + 3) = 0;
                        v192 = *(v133 + 4);
                        *v242 = *(v133 + 5);
                        *&v242[7] = *(v133 + 47);
                        v151 = v133[55];
                        *(v133 + 4) = 0;
                        *(v133 + 5) = 0;
                        v204 = *(v133 + 7);
                        *&v236[7] = *(v133 + 71);
                        *v236 = *(v133 + 8);
                        v198 = v133[79];
                        *(v133 + 6) = 0;
                        *(v133 + 7) = 0;
                        *(v133 + 8) = 0;
                        *(v133 + 9) = 0;
                        v216 = *(v133 + 10);
                        *&v230[7] = *(v133 + 95);
                        *v230 = *(v133 + 11);
                        v210 = v133[103];
                        *(v133 + 10) = 0;
                        *(v133 + 11) = 0;
                        *(v133 + 12) = 0;
                        do
                        {
                          v152 = v147;
                          v153 = v147 + 8;
                          *v133 = *v147;
                          if (v133[31] < 0)
                          {
                            operator delete(*(v133 + 1));
                          }

                          v154 = *v153;
                          *(v133 + 3) = *(v153 + 2);
                          *(v133 + 8) = v154;
                          v152[31] = 0;
                          v152[8] = 0;
                          if (v133[55] < 0)
                          {
                            operator delete(*(v133 + 4));
                          }

                          v155 = *(v152 + 2);
                          *(v133 + 6) = *(v152 + 6);
                          *(v133 + 2) = v155;
                          v152[55] = 0;
                          v152[32] = 0;
                          if (v133[79] < 0)
                          {
                            operator delete(*(v133 + 7));
                          }

                          v156 = *(v152 + 56);
                          *(v133 + 9) = *(v152 + 9);
                          *(v133 + 56) = v156;
                          v152[79] = 0;
                          v152[56] = 0;
                          if (v133[103] < 0)
                          {
                            operator delete(*(v133 + 10));
                          }

                          v157 = *(v152 + 5);
                          *(v133 + 12) = *(v152 + 12);
                          *(v133 + 5) = v157;
                          v152[103] = 0;
                          v152[80] = 0;
                          if (!v146)
                          {
                            break;
                          }

                          v146 = (v146 - 1) >> 1;
                          v147 = &v220[104 * v146];
                          v133 = v152;
                        }

                        while (*v147 < v148);
                        *v152 = v148;
                        if (v152[31] < 0)
                        {
                          operator delete(*v153);
                        }

                        *(v152 + 1) = v149;
                        *(v152 + 2) = *v248;
                        *(v152 + 23) = *&v248[7];
                        v152[31] = v150;
                        if (v152[55] < 0)
                        {
                          operator delete(*(v152 + 4));
                        }

                        *(v152 + 4) = v192;
                        *(v152 + 5) = *v242;
                        *(v152 + 47) = *&v242[7];
                        v152[55] = v151;
                        v126 = v219;
                        if (v152[79] < 0)
                        {
                          operator delete(*(v152 + 7));
                        }

                        *(v152 + 7) = v204;
                        *(v152 + 8) = *v236;
                        *(v152 + 71) = *&v236[7];
                        v152[79] = v198;
                        if (v152[103] < 0)
                        {
                          operator delete(*(v152 + 10));
                        }

                        *(v152 + 10) = v216;
                        *(v152 + 11) = *v230;
                        *(v152 + 95) = *&v230[7];
                        v152[103] = v210;
                      }
                    }
                  }

                  v8 = v220;
                }

                v126 -= 52;
              }

              while (v125-- > 2);
            }

            return;
          }

          v12 = v10 >> 1;
          v13 = &v8[104 * (v10 >> 1)];
          v14 = *v7;
          if (v9 >= 0x3401)
          {
            v15 = *v13;
            if (v15 >= *v8)
            {
              if (v14 >= v15 || (std::swap[abi:nn200100]<md::LabelExternalTextElement>(v13, v7), *v13 >= *v8))
              {
LABEL_26:
                v22 = (v8 + 104);
                v21 = v8[104];
                v23 = &v8[104 * v12];
                v26 = *(v23 - 104);
                v25 = (v23 - 104);
                v24 = v26;
                v27 = *v172;
                if (v26 >= v21)
                {
                  if (v27 >= v24 || (std::swap[abi:nn200100]<md::LabelExternalTextElement>(v25, v172), *v25 >= *v22))
                  {
LABEL_38:
                    v30 = &v220[104 * v12];
                    v33 = v30[104];
                    v32 = (v30 + 104);
                    v31 = v33;
                    v34 = *v171;
                    if (v33 >= v220[208])
                    {
                      if (v34 >= v31 || (std::swap[abi:nn200100]<md::LabelExternalTextElement>(v32, v171), *v32 >= v220[208]))
                      {
LABEL_47:
                        v37 = *v13;
                        v38 = *v32;
                        if (v37 >= *v25)
                        {
                          if (v38 >= v37)
                          {
                            goto LABEL_56;
                          }

                          std::swap[abi:nn200100]<md::LabelExternalTextElement>(v13, v32);
                          if (*v13 >= *v25)
                          {
                            goto LABEL_56;
                          }

                          v39 = v25;
                          v40 = v13;
                        }

                        else
                        {
                          v39 = v25;
                          if (v38 >= v37)
                          {
                            std::swap[abi:nn200100]<md::LabelExternalTextElement>(v25, v13);
                            if (*v32 >= *v13)
                            {
LABEL_56:
                              v8 = v220;
                              v19 = v220;
                              v20 = v13;
                              goto LABEL_57;
                            }

                            v39 = v13;
                          }

                          v40 = v32;
                        }

                        std::swap[abi:nn200100]<md::LabelExternalTextElement>(v39, v40);
                        goto LABEL_56;
                      }

                      v35 = (v220 + 208);
                      v36 = v32;
                    }

                    else
                    {
                      v35 = (v220 + 208);
                      if (v34 >= v31)
                      {
                        std::swap[abi:nn200100]<md::LabelExternalTextElement>(v35, v32);
                        if (*v171 >= *v32)
                        {
                          goto LABEL_47;
                        }

                        v35 = v32;
                      }

                      v36 = v171;
                    }

                    std::swap[abi:nn200100]<md::LabelExternalTextElement>(v35, v36);
                    goto LABEL_47;
                  }

                  v28 = v22;
                  v29 = v25;
                }

                else
                {
                  v28 = v22;
                  if (v27 >= v24)
                  {
                    std::swap[abi:nn200100]<md::LabelExternalTextElement>(v22, v25);
                    if (*v172 >= *v25)
                    {
                      goto LABEL_38;
                    }

                    v28 = v25;
                  }

                  v29 = v172;
                }

                std::swap[abi:nn200100]<md::LabelExternalTextElement>(v28, v29);
                goto LABEL_38;
              }

              v16 = v8;
              v17 = v13;
            }

            else
            {
              v16 = v8;
              if (v14 >= v15)
              {
                std::swap[abi:nn200100]<md::LabelExternalTextElement>(v8, v13);
                if (*v7 >= *v13)
                {
                  goto LABEL_26;
                }

                v16 = v13;
              }

              v17 = v7;
            }

            std::swap[abi:nn200100]<md::LabelExternalTextElement>(v16, v17);
            goto LABEL_26;
          }

          v18 = *v8;
          if (v18 >= *v13)
          {
            if (v14 < v18)
            {
              std::swap[abi:nn200100]<md::LabelExternalTextElement>(v8, v7);
              if (*v8 < *v13)
              {
                v19 = v13;
                v20 = v8;
                goto LABEL_57;
              }
            }
          }

          else
          {
            v19 = v13;
            if (v14 < v18)
            {
              goto LABEL_21;
            }

            std::swap[abi:nn200100]<md::LabelExternalTextElement>(v13, v8);
            if (*v7 < *v8)
            {
              v19 = v8;
LABEL_21:
              v20 = v7;
LABEL_57:
              std::swap[abi:nn200100]<md::LabelExternalTextElement>(v19, v20);
            }
          }

          v212 = a3 - 1;
          if ((a4 & 1) != 0 || *(v8 - 104) < *v8)
          {
            break;
          }

          v62 = *v8;
          v63 = (v8 + 8);
          v64 = *(v8 + 1);
          *&v245[7] = *(v8 + 23);
          *v245 = *(v8 + 2);
          v65 = v8[31];
          *(v8 + 1) = 0;
          *(v8 + 2) = 0;
          *(v8 + 3) = 0;
          v66 = (v8 + 32);
          v183 = *(v8 + 4);
          *v239 = *(v8 + 5);
          *&v239[7] = *(v8 + 47);
          v177 = v65;
          v180 = v8[55];
          *(v8 + 4) = 0;
          *(v8 + 5) = 0;
          *(v8 + 6) = 0;
          v67 = (v8 + 56);
          v194 = *(v8 + 7);
          *&v233[7] = *(v8 + 71);
          *v233 = *(v8 + 8);
          v188 = v8[79];
          *(v8 + 7) = 0;
          v68 = *(v8 + 11);
          v69 = (v8 + 80);
          v206 = *(v8 + 10);
          *(v8 + 8) = 0;
          *(v8 + 9) = 0;
          *&v227[7] = *(v8 + 95);
          *v227 = v68;
          v200 = v8[103];
          a1 = v8;
          *(v8 + 10) = 0;
          *(v8 + 11) = 0;
          *(v8 + 12) = 0;
          if (*v7 <= v62)
          {
            v71 = v8 + 104;
            do
            {
              a1 = v71;
              if (v71 >= v218)
              {
                break;
              }

              v71 += 104;
            }

            while (*a1 <= v62);
          }

          else
          {
            do
            {
              v70 = a1[104];
              a1 += 104;
            }

            while (v70 <= v62);
          }

          v72 = v7;
          v73 = v218;
          if (a1 < v218)
          {
            v73 = v218;
            do
            {
              v74 = *(v73 - 104);
              v73 -= 52;
            }

            while (v74 > v62);
          }

          while (a1 < v73)
          {
            std::swap[abi:nn200100]<md::LabelExternalTextElement>(a1, v73);
            do
            {
              v75 = a1[104];
              a1 += 104;
            }

            while (v75 <= v62);
            do
            {
              v76 = *(v73 - 104);
              v73 -= 52;
            }

            while (v76 > v62);
          }

          if (a1 - 104 != v220)
          {
            *v220 = *(a1 - 52);
            if (v220[31] < 0)
            {
              operator delete(*v63);
            }

            v77 = *(a1 - 6);
            *(v8 + 3) = *(a1 - 10);
            *v63 = v77;
            *(a1 - 73) = 0;
            *(a1 - 96) = 0;
            if (v220[55] < 0)
            {
              operator delete(*v66);
            }

            v78 = *(a1 - 72);
            *(v8 + 6) = *(a1 - 7);
            *v66 = v78;
            *(a1 - 49) = 0;
            *(a1 - 72) = 0;
            if (v220[79] < 0)
            {
              operator delete(*v67);
            }

            v79 = *(a1 - 3);
            *(v8 + 9) = *(a1 - 4);
            *v67 = v79;
            *(a1 - 25) = 0;
            *(a1 - 48) = 0;
            if (v220[103] < 0)
            {
              operator delete(*v69);
            }

            v80 = *(a1 - 24);
            *(v8 + 12) = *(a1 - 1);
            *v69 = v80;
            *(a1 - 1) = 0;
            *(a1 - 24) = 0;
          }

          *(a1 - 52) = v62;
          if (*(a1 - 73) < 0)
          {
            operator delete(*(a1 - 12));
          }

          *(a1 - 12) = v64;
          *(a1 - 81) = *&v245[7];
          *(a1 - 11) = *v245;
          *(a1 - 73) = v177;
          a3 = v212;
          a2 = v218;
          v7 = v72;
          if (*(a1 - 49) < 0)
          {
            operator delete(*(a1 - 9));
          }

          *(a1 - 9) = v183;
          *(a1 - 57) = *&v239[7];
          *(a1 - 8) = *v239;
          *(a1 - 49) = v180;
          if (*(a1 - 25) < 0)
          {
            operator delete(*(a1 - 6));
          }

          *(a1 - 6) = v194;
          *(a1 - 33) = *&v233[7];
          *(a1 - 5) = *v233;
          *(a1 - 25) = v188;
          if (*(a1 - 1) < 0)
          {
            operator delete(*(a1 - 3));
          }

          a4 = 0;
          *(a1 - 3) = v206;
          *(a1 - 9) = *&v227[7];
          *(a1 - 2) = *v227;
          *(a1 - 1) = v200;
        }

        v41 = *v8;
        v42 = v8 + 8;
        v179 = *(v8 + 1);
        *&v244[7] = *(v8 + 23);
        *v244 = *(v8 + 2);
        v43 = v8[31];
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *(v8 + 3) = 0;
        v45 = v8 + 32;
        v44 = *(v8 + 4);
        *v238 = *(v8 + 5);
        *&v238[7] = *(v8 + 47);
        v175 = v43;
        v176 = v8[55];
        *(v8 + 4) = 0;
        *(v8 + 5) = 0;
        *(v8 + 6) = 0;
        v46 = v8 + 56;
        v187 = v44;
        v193 = *(v8 + 7);
        *&v232[7] = *(v8 + 71);
        *v232 = *(v8 + 8);
        v182 = v8[79];
        *(v8 + 7) = 0;
        *(v8 + 8) = 0;
        *(v8 + 9) = 0;
        v47 = v8 + 80;
        v205 = *(v8 + 10);
        *&v226[7] = *(v8 + 95);
        *v226 = *(v8 + 11);
        v199 = v8[103];
        *(v8 + 10) = 0;
        *(v8 + 11) = 0;
        v48 = v8;
        *(v8 + 12) = 0;
        do
        {
          v49 = v48;
          v50 = v48[104];
          v48 += 104;
        }

        while (v50 < v41);
        v51 = v218;
        if (v49 == v8)
        {
          v51 = v218;
          do
          {
            if (v48 >= v51)
            {
              break;
            }

            v53 = *(v51 - 104);
            v51 -= 52;
          }

          while (v53 >= v41);
        }

        else
        {
          do
          {
            v52 = *(v51 - 104);
            v51 -= 52;
          }

          while (v52 >= v41);
        }

        a1 = v48;
        if (v48 < v51)
        {
          v54 = v51;
          do
          {
            std::swap[abi:nn200100]<md::LabelExternalTextElement>(a1, v54);
            do
            {
              v55 = a1[104];
              a1 += 104;
            }

            while (v55 < v41);
            do
            {
              v56 = *(v54 - 104);
              v54 -= 52;
            }

            while (v56 >= v41);
          }

          while (a1 < v54);
        }

        if (a1 - 104 != v220)
        {
          *v220 = *(a1 - 52);
          if (v220[31] < 0)
          {
            operator delete(*v42);
          }

          v57 = *(a1 - 6);
          *(v42 + 2) = *(a1 - 10);
          *v42 = v57;
          *(a1 - 73) = 0;
          *(a1 - 96) = 0;
          if (v220[55] < 0)
          {
            operator delete(*v45);
          }

          v58 = *(a1 - 72);
          *(v45 + 2) = *(a1 - 7);
          *v45 = v58;
          *(a1 - 49) = 0;
          *(a1 - 72) = 0;
          if (v220[79] < 0)
          {
            operator delete(*v46);
          }

          v59 = *(a1 - 3);
          *(v46 + 2) = *(a1 - 4);
          *v46 = v59;
          *(a1 - 25) = 0;
          *(a1 - 48) = 0;
          if (v220[103] < 0)
          {
            operator delete(*v47);
          }

          v60 = *(a1 - 24);
          *(v47 + 2) = *(a1 - 1);
          *v47 = v60;
          *(a1 - 1) = 0;
          *(a1 - 24) = 0;
        }

        *(a1 - 52) = v41;
        if (*(a1 - 73) < 0)
        {
          operator delete(*(a1 - 12));
        }

        *(a1 - 12) = v179;
        *(a1 - 81) = *&v244[7];
        *(a1 - 11) = *v244;
        *(a1 - 73) = v175;
        a2 = v218;
        v7 = v173;
        if (*(a1 - 49) < 0)
        {
          operator delete(*(a1 - 9));
        }

        *(a1 - 9) = v187;
        *(a1 - 57) = *&v238[7];
        *(a1 - 8) = *v238;
        *(a1 - 49) = v176;
        if (*(a1 - 25) < 0)
        {
          operator delete(*(a1 - 6));
        }

        *(a1 - 6) = v193;
        *(a1 - 33) = *&v232[7];
        *(a1 - 5) = *v232;
        *(a1 - 25) = v182;
        if (*(a1 - 1) < 0)
        {
          operator delete(*(a1 - 3));
        }

        *(a1 - 3) = v205;
        *(a1 - 9) = *&v226[7];
        *(a1 - 2) = *v226;
        *(a1 - 1) = v199;
        v113 = v48 >= v51;
        a3 = v212;
        if (v113)
        {
          break;
        }

LABEL_96:
        std::__introsort<std::_ClassicAlgPolicy,md::LabelExternalFeature::finalize(void)::{lambda(md::LabelExternalTextElement const&,md::LabelExternalTextElement const&)#1} &,md::LabelExternalTextElement*,false>(v220, a1 - 104, v212, a4 & 1);
        a4 = 0;
      }

      v61 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalFeature::finalize(void)::{lambda(md::LabelExternalTextElement const&,md::LabelExternalTextElement const&)#1} &,md::LabelExternalTextElement*>(v220, a1 - 52);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalFeature::finalize(void)::{lambda(md::LabelExternalTextElement const&,md::LabelExternalTextElement const&)#1} &,md::LabelExternalTextElement*>(a1, v218))
      {
        break;
      }

      if (!v61)
      {
        goto LABEL_96;
      }
    }

    a2 = (a1 - 104);
    a1 = v220;
    if (!v61)
    {
      continue;
    }

    break;
  }
}

void std::swap[abi:nn200100]<md::LabelExternalTextElement>(__int16 *a1, __int16 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  *v24 = *(a1 + 2);
  *&v24[7] = *(a1 + 23);
  v6 = *(a1 + 31);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 1) = 0;
  v7 = a1 + 16;
  v8 = *(a1 + 4);
  *v23 = *(a1 + 5);
  *&v23[7] = *(a1 + 47);
  v9 = *(a1 + 55);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  v10 = a1 + 28;
  v18 = *(a1 + 7);
  *&v22[7] = *(a1 + 71);
  *v22 = *(a1 + 8);
  v17 = *(a1 + 79);
  *(a1 + 7) = 0;
  v12 = a1 + 40;
  v11 = *(a1 + 10);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *&v21[7] = *(a1 + 95);
  v20 = v11;
  *v21 = *(a1 + 11);
  v19 = *(a1 + 103);
  *(a1 + 10) = 0;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *a1 = *a2;
  v13 = *(a2 + 4);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = v13;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*v7);
  }

  v14 = *(a2 + 2);
  *(v7 + 2) = *(a2 + 6);
  *v7 = v14;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*v10);
  }

  v15 = *(a2 + 28);
  *(v10 + 2) = *(a2 + 9);
  *v10 = v15;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*v12);
  }

  v16 = *(a2 + 5);
  *(v12 + 2) = *(a2 + 12);
  *v12 = v16;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  *a2 = v4;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 1));
  }

  *(a2 + 1) = v5;
  *(a2 + 2) = *v24;
  *(a2 + 23) = *&v24[7];
  *(a2 + 31) = v6;
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 4));
  }

  *(a2 + 4) = v8;
  *(a2 + 5) = *v23;
  *(a2 + 47) = *&v23[7];
  *(a2 + 55) = v9;
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 7));
  }

  *(a2 + 7) = v18;
  *(a2 + 8) = *v22;
  *(a2 + 71) = *&v22[7];
  *(a2 + 79) = v17;
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 10));
  }

  *(a2 + 10) = v20;
  *(a2 + 11) = *v21;
  *(a2 + 95) = *&v21[7];
  *(a2 + 103) = v19;
}