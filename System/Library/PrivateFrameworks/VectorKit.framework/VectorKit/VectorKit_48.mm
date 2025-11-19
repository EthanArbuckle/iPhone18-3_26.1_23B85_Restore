uint64_t gms::_BasicMaterial<ggl::Texture2D>::lineWidth(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 240))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

void gms::BasicMaterial<ggl::Texture2D>::gradientMaskFactorRGB(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if ((v6 > 0.00000011921 || (v7 = *(a1 + 16)) == 0) && (v6 < 1.0 || (v7 = *(a1 + 32)) == 0))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      (*(*v9 + 696))(&v18, a3.n128_f32[0]);
    }

    else
    {
      LOBYTE(v18) = 0;
      v20 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(*v10 + 696))(&v15, v3);
    }

    else
    {
      LOBYTE(v15) = 0;
      v17 = 0;
    }

    if (v20 == 1)
    {
      if (v17 == 1)
      {
        *a2 = gm::lerp<gm::Matrix<float,3,1>,float>(*&v18, *(&v18 + 1), v19, *&v15, *(&v15 + 1), v16, v6);
        *(a2 + 4) = v11;
        *(a2 + 8) = v12;
        v13 = (a2 + 12);
LABEL_21:
        *v13 = 1;
        return;
      }

      v13 = (a2 + 12);
      *a2 = v18;
      v14 = v19;
    }

    else
    {
      *a2 = 0;
      *(a2 + 12) = 0;
      v13 = (a2 + 12);
      if (v17 != 1)
      {
        return;
      }

      *a2 = v15;
      v14 = v16;
    }

    *(a2 + 8) = v14;
    goto LABEL_21;
  }

  v8 = *(*v7 + 696);

  v8(a3);
}

unint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::RibbonPipelineState,std::shared_ptr<ggl::DaVinciRibbonShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, __int128 a17, char a18, char a19, unsigned __int8 a20, char a21, char a22, char a23)
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

void sub_1B2B084D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31)
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

void ggl::Glyph3d::DefaultPipelineSetup::setViewCommonConstantData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 80) = a3;
  *(a1 + 88) = 0;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 88);
  *(a2 + 80) = a3;
  *(a2 + 88) = a4;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::pop(void *a1)
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
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(v13, v12);
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
    std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,ggl::zone_mallocator> &>::~__split_buffer(v24);
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

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::pop(void *a1)
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
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>(v13, v12);
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
    std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,ggl::zone_mallocator> &>::~__split_buffer(v24);
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

uint64_t **std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::find<md::MaterialTextureManager::TextureKey>(void *a1, md::MaterialTextureManager::TextureKey *this)
{
  v4 = md::MaterialTextureManager::TextureKey::hash(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v9 == v4)
      {
        if (i[2] == *this && *(i + 12) == *(this + 4) && *(i + 26) == *(this + 10))
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t md::DaVinciRenderStateCache::renderState(mdm::zone_mallocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (a4)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (a5)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    v14 = 8;
  }

  else
  {
    v14 = 0;
  }

  if (a7)
  {
    v15 = 16;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 | v14 | a3 | v12 | v13;
  v18 = *a1;
  v17 = *(a1 + 1);
  while (v18 != v17)
  {
    if (*v18 == a2 && (v18[2] & 0x1F) == v16 && v18[1] == a8)
    {
      if (v18 != v17)
      {
        return *(v18 + 1);
      }

      break;
    }

    v18 += 16;
  }

  v48 = a7;
  if (a6)
  {
    v19 = 0x80000202020100;
  }

  else
  {
    v19 = 1;
  }

  v20 = mdm::zone_mallocator::instance(a1);
  v21 = pthread_rwlock_rdlock((v20 + 32));
  if (v21)
  {
    geo::read_write_lock::logFailure(v21, "read lock", v22);
  }

  v23 = malloc_type_zone_malloc(*v20, 0xD8uLL, 0x10A1040CDE4DB83uLL);
  atomic_fetch_add((v20 + 24), 1u);
  geo::read_write_lock::unlock((v20 + 32));
  v24 = ggl::RenderDataHolder::RenderDataHolder(v23);
  *v23 = &unk_1F2A5C710;
  *(v23 + 9) = (v12 >> 1) ^ 1 | (a8 << 8) | ((a3 ^ 1) << 16);
  *(v23 + 10) = v13 << 28;
  *(v23 + 11) = v13 << 28;
  *(v23 + 6) = v19;
  *(v23 + 67) = 0;
  *(v23 + 59) = 0;
  v23[75] = 0;
  *(v23 + 132) = 0;
  *(v23 + 124) = 0;
  *(v23 + 94) = 257;
  *(v23 + 24) = 0;
  *(v23 + 25) = 0;
  v23[208] = 0;
  v23[58] = a2;
  v23[56] = 1;
  v25 = v48;
  if (a2 != 3)
  {
    v25 = 0;
  }

  v23[57] = v25;
  LOBYTE(v50) = a2;
  HIBYTE(v50) = a8;
  v51 = v16;
  v49 = 0;
  v52 = v23;
  v27 = *a1;
  v26 = *(a1 + 1);
  if (*a1 == v26)
  {
    goto LABEL_33;
  }

  v18 = *a1;
  while (*v18 != a2 || (v18[2] & 0x1F) != v16 || v18[1] != a8)
  {
    v18 += 16;
    if (v18 == v26)
    {
      goto LABEL_33;
    }
  }

  if (v18 == v26)
  {
LABEL_33:
    v28 = *(a1 + 2);
    if (v26 >= v28)
    {
      v31 = (v26 - v27) >> 4;
      v32 = v31 + 1;
      if ((v31 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v33 = v28 - v27;
      if (v33 >> 3 > v32)
      {
        v32 = v33 >> 3;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFF0)
      {
        v34 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        v35 = mdm::zone_mallocator::instance(v24);
        v36 = pthread_rwlock_rdlock((v35 + 32));
        if (v36)
        {
          geo::read_write_lock::logFailure(v36, "read lock", v37);
        }

        v38 = malloc_type_zone_malloc(*v35, 16 * v34, 0x102004038DE4064uLL);
        atomic_fetch_add((v35 + 24), 1u);
        geo::read_write_lock::unlock((v35 + 32));
      }

      else
      {
        v38 = 0;
      }

      v39 = &v38[16 * v31];
      v40 = &v38[16 * v34];
      v41 = v50;
      v39[2] = v51;
      *v39 = v41;
      v52 = 0;
      *(v39 + 1) = v23;
      v30 = v39 + 16;
      v42 = *(a1 + 1) - *a1;
      v43 = &v39[-v42];
      v44 = memcpy(&v39[-v42], *a1, v42);
      v45 = *a1;
      *a1 = v43;
      *(a1 + 1) = v30;
      *(a1 + 2) = v40;
      if (v45)
      {
        v46 = mdm::zone_mallocator::instance(v44);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<md::DaVinciRenderStateCache::RenderStateKey,std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>>>(v46, v45);
      }
    }

    else
    {
      v29 = v50;
      *(v26 + 2) = v51;
      *v26 = v29;
      v52 = 0;
      *(v26 + 8) = v23;
      v30 = (v26 + 16);
    }

    *(a1 + 1) = v30;
    v18 = (v30 - 16);
  }

  std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>::~unique_ptr[abi:nn200100](&v52);
  std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>::~unique_ptr[abi:nn200100](&v49);
  return *(v18 + 1);
}

void std::__function::__func<md::ita::AssignRenderOrder::operator()(ecs2::Query<md::ls::IsDecal const&,md::ls::RenderItemID const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::CustomZIndex const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::SharedMaterialZIndexHandle const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassShadow const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassSceneDepth const&,md::ls::RenderOrderToUse &>)::$_1,std::allocator<md::ita::AssignRenderOrder::operator()(ecs2::Query<md::ls::IsDecal const&,md::ls::RenderItemID const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::CustomZIndex const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::SharedMaterialZIndexHandle const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassShadow const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassSceneDepth const&,md::ls::RenderOrderToUse &>)::$_1>,void ()(md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::CustomZIndex const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t *a7)
{
  v7 = 256;
  if (!*a5)
  {
    v7 = 512;
  }

  *a7 = (v7 + (*a4 << 9)) & 0xFFFFFFFFFFFFFF00 | (*a6 >> 4);
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::LightingLogic::_calculateShadowProjectionBounds(md::CameraContext const&,md::SceneContext const&,gm::Matrix<double,4,4> const&,gm::Box<double,3> &)const::$_0::operator()(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*a2 + 32))(a2);
  if (v6[3] >= *v6 && v6[4] >= v6[1] && v6[5] >= v6[2])
  {
    if (gdc::ToCoordinateSystem(*(*a1 + 3784)))
    {
      v7 = *(a2 + 608);
      v8 = *(a2 + 616);
      v9 = 1 << *(a2 + 169);
      v10 = 1.0 / v9;
      v11 = *(a2 + 176);
      v12 = v9 + ~*(a2 + 172);
      *&v37 = v10 * v11;
      *(&v37 + 1) = v10 * v12;
      *&v38 = v10 + v11 * v10;
      *(&v38 + 1) = v10 + v12 * v10;
      gdc::GlobeTileUtils::boundsFromMercatorRect(v45, &v37, v7, v8);
      v13 = a1[1];
      geo::OrientedBox<double,3u,double,double>::toMatrix(&v26, v45);
      for (i = 0; i != 4; ++i)
      {
        v15 = 0;
        v16 = &v26;
        do
        {
          v17 = 0;
          v18 = 0.0;
          v19 = v13;
          do
          {
            v20 = *v19;
            v19 += 4;
            v18 = v18 + v16[v17++] * v20;
          }

          while (v17 != 4);
          *(&v37 + 4 * v15++ + i) = v18;
          v16 += 4;
        }

        while (v15 != 4);
        ++v13;
      }
    }

    else
    {
      v21 = a1[1];
      v22 = geo::QuadTile::flatBounds<double>(a2 + 168);
      v28 = 0u;
      v30 = 0u;
      v31 = 0;
      v27 = 0u;
      v33 = 0;
      v26 = v23 - v22;
      v29 = COERCE_UNSIGNED_INT64(v25 - v24);
      v32 = v23 - v22;
      v34 = v22;
      v35 = v24;
      v36 = xmmword_1B33B0740;
      gm::operator*<double,4,4,4>(&v37, v21, &v26);
    }

    *(&v45[10] + 8) = v41;
    *(&v45[11] + 8) = v42;
    *(&v45[12] + 8) = v43;
    *(&v45[13] + 8) = v44;
    *(&v45[6] + 8) = v37;
    *(&v45[7] + 8) = v38;
    *(&v45[8] + 8) = v39;
    *(&v45[9] + 8) = v40;
    operator new();
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }
}

void sub_1B2B09020(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::LightingLogic::_calculateShadowProjectionBounds(md::CameraContext const&,md::SceneContext const&,gm::Matrix<double,4,4> const&,gm::Box<double,3> &)::$_0::operator() const(gdc::LayerDataWithWorld const&)::{lambda(gm::Matrix<float,3,1> const&)#1},std::allocator<md::LightingLogic::_calculateShadowProjectionBounds(md::CameraContext const&,md::SceneContext const&,gm::Matrix<double,4,4> const&,gm::Box<double,3> &)::$_0::operator() const(gdc::LayerDataWithWorld const&)::{lambda(gm::Matrix<float,3,1> const&)#1}>,void ()(gm::Matrix<float,3,1>&)>::operator()(void *a1, float32x2_t *a2)
{
  v3 = a1[3];
  v4 = a2[1].f32[0];
  v7 = vcvtq_f64_f32(*a2);
  v8 = v4;
  v9 = 0x3FF0000000000000;
  gm::operator*<double,4,4,1>(v3, &v7);
  v6 = a1[1];
  if (v5 < *v6 || (v6 = a1[2], v5 > *v6))
  {
    *v6 = v5;
  }
}

void extractExternalOverlayState(void *a1, void ***a2)
{
  v5 = a1;
  *(*a2 + 620) = [v5 selected];
  *(*a2 + 621) = [v5 hasFocus];
  *(*a2 + 622) = [v5 skipped];
  *(*a2 + 623) = [v5 showTraffic];
  v3 = [v5 boundingMapRegion];
  v4 = **a2;
  **a2 = v3;

  *(*a2 + 624) = [v5 containsTransit];
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PassShadowConfiguration>(ecs2::Entity,md::ls::PassShadowConfiguration &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A54A68;
  a2[1] = *(result + 8);
  return result;
}

uint64_t ecs2::BasicRegistry<void>::add<md::ls::PassShadowConfiguration>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassShadowConfiguration>();
    *algn_1EB83CA28 = 0x7216A09FEC0661A6;
    qword_1EB83CA30 = "md::ls::PassShadowConfiguration]";
    qword_1EB83CA38 = 31;
  }

  v56 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowConfiguration>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PassShadowConfiguration>(a1);
  v7 = v6;
  v8 = a2 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v8 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((a2 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_55;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = a2 | (WORD1(a2) << 16);
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = a2 | (WORD1(a2) << 16);
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = a2;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v54 = v27;
    v55 = a3;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    v53 = v27 >> 6;
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_61;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v27 = v32 - v44;
      v45 = *(v7 + 96);
      if (v27 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v28 + 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (!(v48 >> 60))
        {
          operator new();
        }

LABEL_61:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v27);
      *(v7 + 88) = v43 + 16 * v27;
      v28 = v53;
      LOBYTE(v27) = v54;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v30 = *(v7 + 56);
    a3 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  *(*(v30 + 8 * v28) + (v27 & 0x3F)) = *a3;
  v49 = *(v7 + 152);
  v50 = *(v7 + 160);
  while (v49 != v50)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), a2);
    v49 += 32;
  }

LABEL_55:
  v51 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v51 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v56;

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassShadowConfiguration>(a1);
}

uint64_t ecs2::BasicRegistry<void>::didWrite<md::ls::PassShadowConfiguration>(uint64_t result)
{
  {
    v2 = result;
    result = v2;
    if (v1)
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassShadowConfiguration>();
      *algn_1EB83CA28 = 0x7216A09FEC0661A6;
      qword_1EB83CA30 = "md::ls::PassShadowConfiguration]";
      qword_1EB83CA38 = 31;
      result = v2;
    }
  }

  *(result + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowConfiguration>(void)::metadata) = *(result + 4096);
  return result;
}

void *md::StandardPassList::_buildShadowFrameGraph(void *this, const BOOL *a2, md::FrameGraphBuilder *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v21[0] = 258;
    v22 = 0x3E80000000000000;
    v23 = 0x3E80000000000000;
    v24 = 0x100000015;
    v25 = 0;
    v26 = 0;
    v27 = 0x100000001;
    v28 = 4;
    v29 = 1;
    v12 = 258;
    v13 = 0x3E80000000000000;
    v14 = 0x3E80000000000000;
    v15 = 0x100000004;
    v16 = 0;
    v17 = 0;
    v18 = 0x100000001;
    v19 = 4;
    v20 = 0;
    v3 = 258;
    v4 = 0x3E80000000000000;
    v5 = 0x3E80000000000000;
    v6 = 0x100000004;
    v7 = 0;
    v8 = 0;
    v9 = 0x100000000;
    v10 = 1;
    v11 = 2;
    md::FrameGraphBuilder::createResource(a3, v21, "DV Shadow", 0xFA9BA3C000000009, 0);
  }

  this[11] = 0;
  this[12] = 0;
  this[13] = 0;
  return this;
}

void md::FrameGraphBuilder::addRenderPass<md::DaVinciShadowCommandBufferIdInfo>(uint64_t a1)
{
  v2 = 0;
  v4 = *(a1 + 152);
  v3 = *(a1 + 160);
  while (1)
  {
    v5 = md::CommandBufferPool::pop(*(a1 + 184), v2, off_1E7B3AB20[v2]);
    v6 = v5;
    v8 = *(a1 + 160);
    v7 = *(a1 + 168);
    if (v8 >= v7)
    {
      v10 = *(a1 + 152);
      v11 = (v8 - v10) >> 3;
      if ((v11 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = v7 - v10;
      v13 = v12 >> 2;
      if (v12 >> 2 <= (v11 + 1))
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v14);
      }

      v15 = (8 * v11);
      *v15 = v6;
      v9 = 8 * v11 + 8;
      v16 = *(a1 + 152);
      v17 = *(a1 + 160) - v16;
      v18 = v15 - v17;
      memcpy(v15 - v17, v16, v17);
      v19 = *(a1 + 152);
      *(a1 + 152) = v18;
      *(a1 + 160) = v9;
      *(a1 + 168) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v8 = v5;
      v9 = (v8 + 1);
    }

    *(a1 + 160) = v9;
    if (++v2 == 5)
    {
      md::FrameGraphResourcePools::constructRenderQueue(*(a1 + 184), *(a1 + 152) + v3 - v4, 5uLL);
    }
  }
}

uint64_t std::__function::__func<md::StandardPassList::_buildShadowFrameGraph(BOOL const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildShadowFrameGraph(BOOL const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A36108;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::StandardPassList::_buildShadowFrameGraph(BOOL const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildShadowFrameGraph(BOOL const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::string::basic_string[abi:nn200100]<0>(&__str, "Shadow Pass");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v4 = v3[11];
  *(a2 + 168) = v4;
  if ((*(a2 + 196) & 1) == 0)
  {
    v5 = *(v4 + 88);
    *(a2 + 192) = *(v4 + 104);
    *(a2 + 176) = v5;
    *(a2 + 196) = 1;
  }

  *(a2 + 104) = v3[12];
  *(a2 + 136) = v3[13];
  *(a2 + 200) = 1;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PassShadowDescriptor>(ecs2::Entity,md::ls::PassShadowDescriptor &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A552C8;
  a2[1] = *(result + 8);
  return result;
}

void *std::__hash_table<std::__hash_value_type<md::ResourceKey,std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>>,std::__unordered_map_hasher<md::ResourceKey,std::__hash_value_type<md::ResourceKey,std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>>,std::hash<md::ResourceKey>,std::equal_to<md::ResourceKey>,true>,std::__unordered_map_equal<md::ResourceKey,std::__hash_value_type<md::ResourceKey,std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>>,std::equal_to<md::ResourceKey>,std::hash<md::ResourceKey>,true>,std::allocator<std::__hash_value_type<md::ResourceKey,std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>>>>::find<md::ResourceKey>(void *a1, uint64_t a2)
{
  v4 = std::hash<md::ResourceKey>::operator()(a2);
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (md::ResourceKey::operator==((v11 + 2), a2))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

unint64_t std::hash<md::ResourceKey>::operator()(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v1 = *a1;
    v2 = (*a1 << 6) + (*a1 >> 2) + *(a1 + 8) - 0x61C8864680B583EBLL;
    return v2 ^ v1;
  }

  if (*(a1 + 44) == 1)
  {
    v3 = ((*(a1 + 24) << 6) + (*(a1 + 24) >> 2) + *(a1 + 28) - 0x61C8864680B583EBLL) ^ *(a1 + 24);
    v4 = (*(a1 + 40) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3;
    v1 = (*(a1 + 36) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
    v2 = *(a1 + 32) + (v1 << 6) + (v1 >> 2) - 0x61C8864680B583EBLL;
    return v2 ^ v1;
  }

  return 0;
}

BOOL md::ResourceKey::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1 && *(a2 + 16) == 1)
  {
    if (*a1 == *a2)
    {
      v2 = *(a1 + 8);
      v3 = *(a2 + 8);
      return v2 == v3;
    }
  }

  else if (*(a1 + 44) == 1 && *(a2 + 44) == 1 && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36))
  {
    v2 = *(a1 + 40);
    v3 = *(a2 + 40);
    return v2 == v3;
  }

  return 0;
}

uint64_t **std::__function::__func<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_1,std::allocator<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_1>,void ()(md::ls::UniqueMaterialData &)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  result = md::MaterialResourceStore::canDeleteMaterial(**(a1 + 8), *(a2 + 8), *(a2 + 16));
  if (result)
  {
    v4 = *v2;
    v5 = ecs2::ExecutionTaskContext::currentEntity(result);

    return ecs2::addComponent<md::ls::PendingDeletion>(v4, v5);
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::didWrite<md::ls::PassShadowDescriptor>(uint64_t result)
{
  {
    v2 = result;
    result = v2;
    if (v1)
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowDescriptor>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassShadowDescriptor>();
      unk_1EB83CF40 = 0x73F7A94D4E0637DDLL;
      qword_1EB83CF48 = "md::ls::PassShadowDescriptor]";
      qword_1EB83CF50 = 28;
      result = v2;
    }
  }

  *(result + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowDescriptor>(void)::metadata) = *(result + 4096);
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialData>();
    *algn_1EB83D0E8 = 0x3209EBE3B62CF3D3;
    qword_1EB83D0F0 = "md::ls::UniqueMaterialData]";
    qword_1EB83D0F8 = 26;
  }
}

uint64_t ecs2::BasicRegistry<void>::add<md::ls::PassShadowDescriptor>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowDescriptor>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassShadowDescriptor>();
    unk_1EB83CF40 = 0x73F7A94D4E0637DDLL;
    qword_1EB83CF48 = "md::ls::PassShadowDescriptor]";
    qword_1EB83CF50 = 28;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowDescriptor>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassShadowDescriptor>(a1);
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
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      v30 = a2;
      *(4 * v17) = a2;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      v30 = a2;
      *v14 = a2;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v25;
    v27 = v6[13];
    for (i = v6[14]; v27 != i; v27 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v30);
    }
  }

  else
  {
    v30 = (a2 >> 16) << 16;
  }

  v28 = *(a1 + 41016) + (HIWORD(v30) << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassShadowDescriptor>(a1);
}

uint64_t std::__function::__func<md::ita::PrepareRenderableData::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle &,md::ls::BaseMapTileHandle const&>,ecs2::Query<md::ls::TileMatrix const&,md::ls::WillEnterView const&,md::ls::TileRenderableDataHandle &>)::$_0,std::allocator<md::ita::PrepareRenderableData::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle &,md::ls::BaseMapTileHandle const&>,ecs2::Query<md::ls::TileMatrix const&,md::ls::WillEnterView const&,md::ls::TileRenderableDataHandle &>)::$_0>,void ()(md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle &,md::ls::BaseMapTileHandle const&)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  TileMatrix = md::VKMRenderResourcesStore::getTileMatrix(**(a1 + 8), *a2);
  v8 = TileMatrix[5];
  v45[4] = TileMatrix[4];
  v45[5] = v8;
  v9 = TileMatrix[7];
  v45[6] = TileMatrix[6];
  v45[7] = v9;
  v10 = TileMatrix[1];
  v45[0] = *TileMatrix;
  v45[1] = v10;
  v11 = TileMatrix[3];
  v45[2] = TileMatrix[2];
  v45[3] = v11;
  RenderableData = md::VKMRenderResourcesStore::getRenderableData(**(a1 + 8), *a3);
  BaseMapTileDataRenderable = md::VKMRenderResourcesStore::getBaseMapTileDataRenderable(**(a1 + 8), *a4);
  v44 = 0;
  md::BaseMapTileDataRenderable::getTransformValues(BaseMapTileDataRenderable, &v44 + 4, &v44);
  v14 = 0;
  v15 = v44;
  v16 = **(a1 + 16);
  v17 = **(a1 + 24);
  v18 = *(a1 + 40);
  v19 = **(a1 + 32);
  do
  {
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = 0;
      v23 = 0.0;
      v24 = v18;
      do
      {
        v25 = *v24;
        v24 += 4;
        v23 = v23 + *(v21 + v22) * v25;
        v22 += 8;
      }

      while (v22 != 32);
      v41[4 * v20++ + v14] = v23;
      v21 += 2;
    }

    while (v20 != 4);
    ++v14;
    ++v18;
  }

  while (v14 != 4);
  v26 = 0;
  v27 = v41;
  do
  {
    v29 = *v27;
    v28 = v27[1];
    v27 += 2;
    *&v43[v26] = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v28);
    v26 += 16;
  }

  while (v26 != 64);
  result = geo::Frustum<float>::Frustum(v41, v43);
  v31 = 0;
  v32 = v41;
  v33 = RenderableData;
  do
  {
    for (i = 0; i != 12; i += 4)
    {
      *(v33 + i) = *(v32 + i);
    }

    *(RenderableData + 16 * v31 + 12) = HIDWORD(v41[2 * v31 + 1]);
    ++v31;
    v33 += 16;
    v32 += 2;
  }

  while (v31 != 6);
  v35 = 0;
  v36 = RenderableData + 96;
  v37 = &v42;
  do
  {
    for (j = 0; j != 12; j += 4)
    {
      *(v36 + j) = *(v37 + j);
    }

    ++v35;
    v36 += 12;
    v37 = (v37 + 12);
  }

  while (v35 != 8);
  for (k = 0; k != 64; k += 16)
  {
    *(RenderableData + 192 + k) = *&v43[k];
  }

  *(RenderableData + 280) = (v16 * *(&v15 + 1)) * v17;
  if (v19)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = *&v15;
  }

  *(RenderableData + 284) = v40;
  *(RenderableData + 288) = v19 ^ 1;
  return result;
}

uint64_t md::VKMRenderResourcesStore::getRenderableData(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 1612, a2);
  if (v3 == a1[1617])
  {
    return 0;
  }

  v5 = (v3 - a1[1616]) >> 3;
  v6 = (v5 >> 3) & 0x1FFFFFFFFFFFFFF8;
  LODWORD(v5) = v5 & 0x3F;
  result = *(a1[1625] + v6) + 292 * v5;
  ++*(*(a1[1619] + v6) + 24 * v5);
  return result;
}

uint64_t md::VKMRenderResourcesStore::getBaseMapTileDataRenderable(void *a1, unint64_t a2)
{
  v2 = a2 >> 6;
  v3 = a1[1691];
  if (v2 < (a1[1692] - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = (v4 + 16 * (a2 & 0x3F)), *v5 == HIDWORD(a2)))
  {
    v6 = a1[1694];
    v7 = v6 + 8 * v5[1];
    v8 = a1[1695];
  }

  else
  {
    v8 = a1[1695];
    v6 = a1[1694];
    v7 = v8;
  }

  if (v7 == v8)
  {
    return 0;
  }

  v9 = v7 - v6;
  v10 = *(a1[1703] + (((v9 >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8));
  if (!v10)
  {
    return 0;
  }

  else
  {
    return *(v10 + (v9 & 0x1F8));
  }
}

void md::BaseMapTileDataRenderable::getTransformValues(md::BaseMapTileDataRenderable *this, unint64_t a2, unint64_t a3)
{
  if (a2 | a3)
  {
    v5 = *(this + 30);
    ggl::BufferMemory::BufferMemory(v6);
    ggl::ResourceAccessor::accessConstantData(v8, 0, v5, 0);
    ggl::BufferMemory::operator=(v6, v8);
    ggl::BufferMemory::~BufferMemory(v8);
    if (a2)
    {
      *a2 = *(v7 + 340);
    }

    if (a3)
    {
      *a3 = *(v7 + 40);
    }

    ggl::BufferMemory::~BufferMemory(v6);
  }
}

uint64_t geo::Frustum<float>::Frustum(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v88 = *MEMORY[0x1E69E9840];
  v4 = &v79;
  v5 = a2;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      v4->i32[i] = *(v5 + 1 * i);
    }

    ++v3;
    ++v4;
    v5 += 4;
  }

  while (v3 != 4);
  v7 = 0;
  v8.i64[1] = v82.i64[1];
  v9 = vaddq_f32(v79, v82);
  v87[4] = v9;
  v87[5] = vsubq_f32(v82, v79);
  v87[2] = vaddq_f32(v80, v82);
  v87[3] = vsubq_f32(v82, v80);
  v10 = vsubq_f32(v82, v81);
  v87[0] = v81;
  v87[1] = v10;
  v10.i32[0] = 1.0;
  do
  {
    v11 = 0;
    v12 = &v87[v7];
    v13 = *(v12 + 2);
    v14 = *v12;
    v86.i64[0] = *v12;
    v86.i32[2] = v13;
    v15 = 0.0;
    do
    {
      *&v15 = *&v15 + (v86.f32[v11] * v86.f32[v11]);
      ++v11;
    }

    while (v11 != 3);
    v16 = 0;
    v17 = 1.0 / sqrtf(*&v15);
    do
    {
      v85[0].f32[v16] = v86.f32[v16] * v17;
      ++v16;
    }

    while (v16 != 3);
    v18 = a1 + 16 * v7;
    LODWORD(v14) = v85[0].i32[2];
    v8.i64[0] = v85[0].i64[0];
    v9.i32[0] = *(v12 + 3);
    *&v15 = *v9.i32 * v17;
    *v18 = v85[0].i64[0];
    *(v18 + 8) = v14;
    *(v18 + 12) = LODWORD(v15);
    ++v7;
  }

  while (v7 != 6);
  gm::Matrix<float,4,4>::inverted<int,void>(v85, a2, v10, v15, *&v14, v8, v9);
  __asm { FMOV            V8.2S, #-1.0 }

  *v86.i64 = _D8;
  v86.i32[2] = 0;
  v24 = gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(v85, &v86);
  v25 = 0;
  *(a1 + 96) = LODWORD(v24);
  *(a1 + 100) = v26;
  *(a1 + 104) = v27;
  v83 = _D8;
  v28 = v85;
  v84 = 1065353216;
  do
  {
    v29 = 0;
    v30 = 0.0;
    do
    {
      v30 = v30 + (*(&v83 + v29 * 4) * v28[v29].f32[0]);
      ++v29;
    }

    while (v29 != 3);
    v86.f32[v25] = v85[3].f32[v25] + v30;
    ++v25;
    v28 = (v28 + 4);
  }

  while (v25 != 4);
  v31 = 0;
  v32 = (&v86 | 0xC);
  v33 = vld1q_dup_f32(v32);
  __asm { FMOV            V0.4S, #1.0 }

  v35 = vmulq_f32(v86, vdivq_f32(_Q0, v33));
  *(a1 + 108) = v35.i64[0];
  *(a1 + 116) = v35.i32[2];
  v83 = -_D8;
  v84 = 0;
  v36 = v85;
  do
  {
    v37 = 0;
    v38 = 0.0;
    do
    {
      v38 = v38 + (*(&v83 + v37 * 4) * v36[v37].f32[0]);
      ++v37;
    }

    while (v37 != 3);
    v86.f32[v31] = v85[3].f32[v31] + v38;
    ++v31;
    v36 = (v36 + 4);
  }

  while (v31 != 4);
  v39 = 0;
  v40 = (&v86 | 0xC);
  v41 = vld1q_dup_f32(v40);
  v42 = vmulq_f32(v86, vdivq_f32(_Q0, v41));
  *(a1 + 120) = v42.i64[0];
  *(a1 + 128) = v42.i32[2];
  v83 = -_D8;
  v84 = 1065353216;
  v43 = v85;
  do
  {
    v44 = 0;
    v45 = 0.0;
    do
    {
      v45 = v45 + (*(&v83 + v44 * 4) * v43[v44].f32[0]);
      ++v44;
    }

    while (v44 != 3);
    v86.f32[v39] = v85[3].f32[v39] + v45;
    ++v39;
    v43 = (v43 + 4);
  }

  while (v39 != 4);
  v46 = 0;
  v47 = (&v86 | 0xC);
  v48 = vld1q_dup_f32(v47);
  v49 = vmulq_f32(v86, vdivq_f32(_Q0, v48));
  *(a1 + 132) = v49.i64[0];
  *(a1 + 140) = v49.i32[2];
  __asm { FMOV            V1.2S, #1.0 }

  v83 = -_D1;
  v84 = 0;
  v51 = v85;
  do
  {
    v52 = 0;
    v53 = 0.0;
    do
    {
      v53 = v53 + (*(&v83 + v52 * 4) * v51[v52].f32[0]);
      ++v52;
    }

    while (v52 != 3);
    v86.f32[v46] = v85[3].f32[v46] + v53;
    ++v46;
    v51 = (v51 + 4);
  }

  while (v46 != 4);
  v54 = 0;
  v55 = (&v86 | 0xC);
  v56 = vld1q_dup_f32(v55);
  v57 = vmulq_f32(v86, vdivq_f32(_Q0, v56));
  *(a1 + 144) = v57.i64[0];
  *(a1 + 152) = v57.i32[2];
  v83 = -_D1;
  v84 = 1065353216;
  v58 = v85;
  do
  {
    v59 = 0;
    v60 = 0.0;
    do
    {
      v60 = v60 + (*(&v83 + v59 * 4) * v58[v59].f32[0]);
      ++v59;
    }

    while (v59 != 3);
    v86.f32[v54] = v85[3].f32[v54] + v60;
    ++v54;
    v58 = (v58 + 4);
  }

  while (v54 != 4);
  v61 = 0;
  v62 = (&v86 | 0xC);
  v63 = vld1q_dup_f32(v62);
  v64 = vmulq_f32(v86, vdivq_f32(_Q0, v63));
  *(a1 + 164) = v64.i32[2];
  *(a1 + 156) = v64.i64[0];
  v83 = _D1;
  v84 = 0;
  v65 = v85;
  do
  {
    v66 = 0;
    v67 = 0.0;
    do
    {
      v67 = v67 + (*(&v83 + v66 * 4) * v65[v66].f32[0]);
      ++v66;
    }

    while (v66 != 3);
    v86.f32[v61] = v85[3].f32[v61] + v67;
    ++v61;
    v65 = (v65 + 4);
  }

  while (v61 != 4);
  v68 = 0;
  v69 = (&v86 | 0xC);
  v70 = vld1q_dup_f32(v69);
  v71 = vmulq_f32(v86, vdivq_f32(_Q0, v70));
  *(a1 + 168) = v71.i64[0];
  *(a1 + 176) = v71.i32[2];
  v83 = _D1;
  v84 = 1065353216;
  v72 = v85;
  do
  {
    v73 = 0;
    v74 = 0.0;
    do
    {
      v74 = v74 + (*(&v83 + v73 * 4) * v72[v73].f32[0]);
      ++v73;
    }

    while (v73 != 3);
    v86.f32[v68] = v85[3].f32[v68] + v74;
    ++v68;
    v72 = (v72 + 4);
  }

  while (v68 != 4);
  v75 = (&v86 | 0xC);
  v76 = vld1q_dup_f32(v75);
  v77 = vmulq_f32(v86, vdivq_f32(_Q0, v76));
  *(a1 + 180) = v77.i64[0];
  *(a1 + 188) = v77.i32[2];
  return a1;
}

double gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1;
  do
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      v5 = v5 + (*(a2 + v4) * *(v3 + 4 * v4));
      v4 += 4;
    }

    while (v4 != 12);
    v14.f32[v2] = *(a1 + 4 * v2 + 48) + v5;
    ++v2;
    v3 += 4;
  }

  while (v2 != 4);
  v6 = (&v14 | 0xC);
  v7 = vld1q_dup_f32(v6);
  __asm { FMOV            V2.4S, #1.0 }

  *&result = vmulq_f32(v14, vdivq_f32(_Q2, v7)).u64[0];
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileRenderableDataHandle>();
    unk_1EB83C760 = 0xCF1A54FDD9A1F93FLL;
    qword_1EB83C768 = "md::ls::TileRenderableDataHandle]";
    qword_1EB83C770 = 32;
  }
}

void std::__function::__func<md::ita::UpdateTileRenderables::operator()(ecs2::Query<md::ls::TileRenderableDataHandle const&,md::ls::BoundsWidth const&,md::ls::TileViewConstantDataHandle &>)::$_0,std::allocator<md::ita::UpdateTileRenderables::operator()(ecs2::Query<md::ls::TileRenderableDataHandle const&,md::ls::BoundsWidth const&,md::ls::TileViewConstantDataHandle &>)::$_0>,void ()(md::ls::TileRenderableDataHandle const&,md::ls::BoundsWidth const&,md::ls::TileViewConstantDataHandle &)>::operator()(uint64_t a1, unint64_t *a2, float *a3, unint64_t *a4)
{
  RenderableData = md::VKMRenderResourcesStore::getRenderableData(**(a1 + 8), *a2);
  v8 = **(a1 + 16);
  v9 = *a3;
  v10 = v8[173];
  v11 = v8[471];
  v12 = v8[171];
  v13 = md::VKMRenderResourcesStore::getConstantData<ggl::Tile::View>(**(a1 + 8), *a4);
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v17, v13, 1);
  v14 = 0;
  v15 = v17[5];
  do
  {
    *(v15 + v14) = *(RenderableData + 192 + v14);
    v14 += 4;
  }

  while (v14 != 64);
  v16 = v11 * v10 / (v12 * v9);
  *(v15 + 64) = v16;
  ggl::BufferMemory::~BufferMemory(v17);
}

unint64_t md::VKMRenderResourcesStore::getTileMatrix(void *a1, unint64_t a2)
{
  v3 = (ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 1586, a2) - a1[1590]) >> 3;
  v4 = v3 & 0x3F;
  v5 = (v3 >> 3) & 0x1FFFFFFFFFFFFFF8;
  result = *(a1[1599] + v5) + (v4 << 8);
  ++*(*(a1[1593] + v5) + 24 * v4);
  return result;
}

uint64_t md::VKMRenderResourcesStore::getConstantData<ggl::Tile::View>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 851, a2);
  if (v3 == a1[856])
  {
    return 0;
  }

  v4 = (v3 - a1[855]) >> 3;
  v5 = (v4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = *(a1[864] + v5);
  ++*(*(a1[858] + v5) + 24 * (v4 & 0x3F));
  if (!v6)
  {
    return 0;
  }

  else
  {
    return *(v6 + 24 * (v4 & 0x3F));
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileViewConstantDataHandle>();
    unk_1EB83C520 = 0x414BF8D9069621AELL;
    qword_1EB83C528 = "md::ls::TileViewConstantDataHandle]";
    qword_1EB83C530 = 34;
  }
}

uint64_t md::VKMRenderResourcesStore::getInverseTileMatrix(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 1586, a2);
  if (v3 == a1[1591])
  {
    v6 = 0;
  }

  else
  {
    v4 = (((v3 - a1[1590]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
    v5 = 24 * (((v3 - a1[1590]) >> 3) & 0x3F);
    v6 = *(a1[1599] + v4) + ((((v3 - a1[1590]) >> 3) & 0x3F) << 8);
    ++*(*(a1[1593] + v4) + v5);
  }

  return v6 + 128;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileStyleCameraConstantDataHandle>();
    unk_1EB83BAF0 = 0x80A8239313E99C5FLL;
    qword_1EB83BAF8 = "md::ls::TileStyleCameraConstantDataHandle]";
    qword_1EB83BB00 = 41;
  }
}

void std::__function::__func<md::ita::UpdateDepthPrePassConstants::operator()(ecs2::Query<md::ls::TileRenderableDataHandle const&,md::ls::TilePrepassShadowConstantDataHandle &>,ecs2::Query<md::ls::TileMatrix const&,md::ls::TilePrepassConstantDataHandle &>)::$_0,std::allocator<md::ita::UpdateDepthPrePassConstants::operator()(ecs2::Query<md::ls::TileRenderableDataHandle const&,md::ls::TilePrepassShadowConstantDataHandle &>,ecs2::Query<md::ls::TileMatrix const&,md::ls::TilePrepassConstantDataHandle &>)::$_0>,void ()(md::ls::TileRenderableDataHandle const&,md::ls::TilePrepassShadowConstantDataHandle &)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v5 = md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::Shadow>(**(a1 + 8), *a3);
  RenderableData = md::VKMRenderResourcesStore::getRenderableData(**(a1 + 8), *a2);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v9, v5);
  v7 = 0;
  v8 = v9[5];
  do
  {
    *(v8 + v7) = *(RenderableData + 192 + v7);
    v7 += 4;
  }

  while (v7 != 64);
  ggl::BufferMemory::~BufferMemory(v9);
}

float std::__function::__func<md::ita::UpdateDepthPrePassConstants::operator()(ecs2::Query<md::ls::TileRenderableDataHandle const&,md::ls::TilePrepassShadowConstantDataHandle &>,ecs2::Query<md::ls::TileMatrix const&,md::ls::TilePrepassConstantDataHandle &>)::$_1,std::allocator<md::ita::UpdateDepthPrePassConstants::operator()(ecs2::Query<md::ls::TileRenderableDataHandle const&,md::ls::TilePrepassShadowConstantDataHandle &>,ecs2::Query<md::ls::TileMatrix const&,md::ls::TilePrepassConstantDataHandle &>)::$_1>,void ()(md::ls::TileMatrix const&,md::ls::TilePrepassConstantDataHandle &)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v5 = md::VKMRenderResourcesStore::getConstantData<ggl::Tile::LinearDepth>(**(a1 + 8), *a3);
  TileMatrix = md::VKMRenderResourcesStore::getTileMatrix(**(a1 + 8), *a2);
  v7 = TileMatrix[5];
  v33[4] = TileMatrix[4];
  v33[5] = v7;
  v8 = TileMatrix[7];
  v33[6] = TileMatrix[6];
  v33[7] = v8;
  v9 = TileMatrix[1];
  v33[0] = *TileMatrix;
  v33[1] = v9;
  v10 = TileMatrix[3];
  v33[2] = TileMatrix[2];
  v33[3] = v10;
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v31, v5);
  v11 = 0;
  v12 = **(a1 + 16);
  v13 = (v12 + 3160);
  do
  {
    v14 = 0;
    v15 = v33;
    do
    {
      v16 = 0;
      v17 = 0.0;
      v18 = v13;
      do
      {
        v19 = *v18;
        v18 += 4;
        v17 = v17 + *(v15 + v16) * v19;
        v16 += 8;
      }

      while (v16 != 32);
      *&v29[4 * v14++ + v11] = v17;
      v15 += 2;
    }

    while (v14 != 4);
    ++v11;
    ++v13;
  }

  while (v11 != 4);
  v20 = 0;
  v21 = v29;
  do
  {
    v23 = *v21;
    v22 = v21[1];
    v21 += 2;
    v30[v20++] = vcvt_hight_f32_f64(vcvt_f32_f64(v23), v22);
  }

  while (v20 != 4);
  v24 = v32;
  v25 = v30[1];
  *v32 = v30[0];
  *(v24 + 1) = v25;
  v26 = v30[3];
  *(v24 + 2) = v30[2];
  *(v24 + 3) = v26;
  v27 = 1.0 / *(v12 + 976);
  v24[16] = v27;
  ggl::BufferMemory::~BufferMemory(v31);
  return result;
}

void std::__function::__func<md::ita::UpdateTileTransforms::operator()(ecs2::Query<md::ls::TileBounds const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle &>)::$_0,std::allocator<md::ita::UpdateTileTransforms::operator()(ecs2::Query<md::ls::TileBounds const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle &>)::$_0>,void ()(md::ls::TileBounds const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle &)>::operator()(uint64_t a1, double *a2, unint64_t *a3, unint64_t *a4)
{
  v7 = md::VKMRenderResourcesStore::getConstantData<ggl::Tile::Transform>(**(a1 + 8), *a4);
  md::VKMRenderResourcesStore::getTileMatrix(**(a1 + 8), *a3);
  v8 = a2[2];
  v9 = *a2;
  ggl::BufferMemory::BufferMemory(v14);
  ggl::ResourceAccessor::accessConstantData(v16, 0, v7, 1);
  ggl::BufferMemory::operator=(v14, v16);
  ggl::BufferMemory::~BufferMemory(v16);
  v10 = *(a1 + 32);
  v11 = v15;
  *(v15 + 348) = **(a1 + 24);
  *(v11 + 344) = *v10;
  v12 = v8 - v9;
  v13 = fmin(*(**(a1 + 40) + 3776) / (v12 * 40075017.0), 0.0);
  *(v11 + 352) = v13;
  ggl::BufferMemory::~BufferMemory(v14);
}

uint64_t md::VKMRenderResourcesStore::getConstantData<ggl::Tile::Transform>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 825, a2);
  if (v3 == a1[830])
  {
    return 0;
  }

  v4 = (v3 - a1[829]) >> 3;
  v5 = v4 & 0x3F;
  v6 = (v4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v7 = *(a1[832] + v6);
  v8 = *(a1[838] + v6);
  ++*(v7 + 24 * v5);
  if (!v8)
  {
    return 0;
  }

  else
  {
    return *(v8 + 24 * v5);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileTransformConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileTransformConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileTransformConstantDataHandle>();
    *algn_1EB83BB78 = 0xD270E8E58701C515;
    qword_1EB83BB80 = "md::ls::TileTransformConstantDataHandle]";
    qword_1EB83BB88 = 39;
  }
}

void std::__function::__func<md::ita::UpdateCameraStyleLight::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileStyleCameraConstantDataHandle &>)::$_0,std::allocator<md::ita::UpdateCameraStyleLight::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileStyleCameraConstantDataHandle &>)::$_0>,void ()(md::ls::TileMatrix const&,md::ls::TileStyleCameraConstantDataHandle &)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  InverseTileMatrix = md::VKMRenderResourcesStore::getInverseTileMatrix(**(a1 + 8), *a2);
  v6 = InverseTileMatrix[5];
  v28[4] = InverseTileMatrix[4];
  v28[5] = v6;
  v7 = InverseTileMatrix[7];
  v28[6] = InverseTileMatrix[6];
  v28[7] = v7;
  v8 = InverseTileMatrix[1];
  v28[0] = *InverseTileMatrix;
  v28[1] = v8;
  v9 = InverseTileMatrix[3];
  v28[2] = InverseTileMatrix[2];
  v28[3] = v9;
  v10 = md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::StyleCameraLighting>(**(a1 + 8), *a3);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v26, v10);
  v11 = *(a1 + 16);
  v12 = *(v11 + 2);
  v20 = *v11;
  v21 = v12;
  v22 = 0x3FF0000000000000;
  v13 = gm::operator*<double,4,4,1>(v28, &v20);
  v14 = 0;
  *v23 = v13;
  v23[1] = v15;
  v23[2] = v16;
  v23[3] = v17;
  do
  {
    v18 = *&v23[v14];
    *(&v24 + v14++) = v18;
  }

  while (v14 != 3);
  v19 = v27;
  *v27 = v24;
  *(v19 + 2) = v25;
  ggl::BufferMemory::~BufferMemory(v26);
}

uint64_t md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::StyleCameraLighting>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 1171, a2);
  if (v3 == a1[1176])
  {
    return 0;
  }

  v4 = (v3 - a1[1175]) >> 3;
  v5 = (v4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = *(a1[1184] + v5);
  ++*(*(a1[1178] + v5) + 24 * (v4 & 0x3F));
  if (!v6)
  {
    return 0;
  }

  else
  {
    return *(v6 + 24 * (v4 & 0x3F));
  }
}

uint64_t md::VKMRenderResourcesStore::getConstantDataStorage<ggl::Tile::Clipping>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 903, a2);
  if (v3 == a1[908])
  {
    return 0;
  }

  v4 = (((v3 - a1[907]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v5 = 3 * (((v3 - a1[907]) >> 3) & 0x3F);
  result = *(a1[916] + v4) + 24 * (((v3 - a1[907]) >> 3) & 0x3F);
  ++*(*(a1[910] + v4) + 8 * v5);
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileClippingConstantDataHandle>();
    *algn_1EB83BC68 = 0xCAC3230B44CECEB9;
    qword_1EB83BC70 = "md::ls::TileClippingConstantDataHandle]";
    qword_1EB83BC78 = 38;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>();
    *algn_1EB83B9F8 = 0xE57C2F66048E40BDLL;
    qword_1EB83BA00 = "md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>]";
    qword_1EB83BA08 = 75;
  }
}

uint64_t md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::Shadow>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 929, a2);
  if (v3 == a1[934])
  {
    return 0;
  }

  v4 = (v3 - a1[933]) >> 3;
  v5 = (v4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = *(a1[942] + v5);
  ++*(*(a1[936] + v5) + 24 * (v4 & 0x3F));
  if (!v6)
  {
    return 0;
  }

  else
  {
    return *(v6 + 24 * (v4 & 0x3F));
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TilePrepassShadowConstantDataHandle>();
    *algn_1EB83BA88 = 0xB4E92DEB291A7B99;
    qword_1EB83BA90 = "md::ls::TilePrepassShadowConstantDataHandle]";
    qword_1EB83BA98 = 43;
  }
}

uint64_t md::VKMRenderResourcesStore::getConstantData<ggl::Tile::LinearDepth>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 877, a2);
  if (v3 == a1[882])
  {
    return 0;
  }

  v4 = (v3 - a1[881]) >> 3;
  v5 = (v4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = *(a1[890] + v5);
  ++*(*(a1[884] + v5) + 24 * (v4 & 0x3F));
  if (!v6)
  {
    return 0;
  }

  else
  {
    return *(v6 + 24 * (v4 & 0x3F));
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TilePrepassConstantDataHandle>();
    unk_1EB83BD30 = 0x33C39664142A0949;
    qword_1EB83BD38 = "md::ls::TilePrepassConstantDataHandle]";
    qword_1EB83BD40 = 37;
  }
}

float std::__function::__func<md::ita::UpdateTilePerPoint::operator()(ecs2::Query<md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TileRenderableDataHandle const&>)::$_0,std::allocator<md::ita::UpdateTilePerPoint::operator()(ecs2::Query<md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TileRenderableDataHandle const&>)::$_0>,void ()(md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TileRenderableDataHandle const&)>::operator()(uint64_t a1, unint64_t *a2)
{
  BaseMapTileDataRenderable = md::VKMRenderResourcesStore::getBaseMapTileDataRenderable(**(a1 + 8), *a2);
  result = *(**(a1 + 16) + 3768) * *(**(a1 + 16) + 1384) / (*(**(a1 + 16) + 1368) * (*(BaseMapTileDataRenderable + 80) - *(BaseMapTileDataRenderable + 64)));
  *(BaseMapTileDataRenderable + 376) = result;
  return result;
}

float std::__function::__func<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat::operator()(ecs2::Query<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>)::$_0,std::allocator<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat::operator()(ecs2::Query<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>)::$_0>,void ()(md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = md::VKMRenderResourcesStore::getKey<md::StyleCacheKey>(**(a1 + 8), *a3);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  _H0 = *(v5 + 4);
  __asm { FCVT            S0, H0 }

  v13 = **(a1 + 24);
  v14.i32[0] = *v5;
  v16.i64[0] = vcvtq_f32_f16(v14).u64[0];
  v16.i64[1] = __PAIR64__(v13, _S0);
  storeDirectionForKey(*v6, v4, &v16);
  return result;
}

uint64_t md::VKMRenderResourcesStore::getKey<md::StyleCacheKey>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 177, a2);
  if (v3 == a1[182])
  {
    return 0;
  }

  v4 = (((v3 - a1[181]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v5 = ((v3 - a1[181]) >> 3) & 0x3F;
  result = *(a1[190] + v4) + 16 * v5;
  ++*(*(a1[184] + v4) + 24 * v5);
  return result;
}

void storeDirectionForKey(uint64_t a1, float *a2, float32x4_t *a3)
{
  for (i = 0; i != 4; ++i)
  {
    a2[i] = a3->f32[i];
  }

  v7 = md::getCachedHandle<md::ConstantDataStorage<ggl::DaVinci::Style>,geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style>,md::StyleCacheKeyHasher>(*(a1 + 1336), *(a1 + 1344), a2);
  if (!v7)
  {
    v106 = 0uLL;
    v107 = 0;
    v109 = 0;
    v10 = *(a1 + 1200);
    v11 = *(a1 + 1216);
    if (*(a1 + 1192) == v10)
    {
      v12 = ((*(a1 + 1224) - v11) >> 3) | 0x100000000;
      v110 = v12;
      std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 1216, &v110);
    }

    else
    {
      v12 = *(v11 + 8 * *(v10 - 8));
      *(a1 + 1200) = v10 - 8;
    }

    v110 = v12;
    v13 = v12 >> 6;
    v14 = *(a1 + 1000);
    v15 = *(a1 + 992);
    if (v13 >= (v14 - v15) >> 3)
    {
      v16 = v13 + 1;
      v17 = v13 + 1 - ((v14 - v15) >> 3);
      v18 = *(a1 + 1008);
      if (v17 > (v18 - v14) >> 3)
      {
        v19 = v18 - v15;
        if (v19 >> 2 > v16)
        {
          v16 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v16;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v20);
      }

      bzero(*(a1 + 1000), 8 * v17);
      *(a1 + 1000) = v14 + 8 * v17;
      v15 = *(a1 + 992);
    }

    v21 = *(v15 + 8 * v13);
    if (!v21)
    {
      operator new();
    }

    v22 = (v21 + 16 * (v12 & 0x3F));
    if (*v22 != -1 || v22[1] != 0)
    {
LABEL_83:
      v67 = md::StyleCacheKeyHasher::operator()(a2);
      v68 = v67;
      v69 = *(a1 + 1344);
      if (v69)
      {
        v70 = vcnt_s8(v69);
        v70.i16[0] = vaddlv_u8(v70);
        v71 = v70.u32[0];
        if (v70.u32[0] > 1uLL)
        {
          v72 = v67;
          if (v67 >= *&v69)
          {
            v72 = v67 % *&v69;
          }
        }

        else
        {
          v72 = (*&v69 + 0x7FFFFFFFFFFFFFFFLL) & v67;
        }

        v73 = *(*(a1 + 1336) + 8 * v72);
        if (v73)
        {
          for (j = *v73; j; j = *j)
          {
            v75 = *(j + 1);
            if (v75 == v68)
            {
              if (md::StyleCacheKey::operator==(j + 4, a2))
              {
                *(j + 4) = v12;
                v76 = *(a1 + 1384);
                if (v76)
                {
                  v77 = vcnt_s8(v76);
                  v77.i16[0] = vaddlv_u8(v77);
                  if (v77.u32[0] > 1uLL)
                  {
                    v78 = v12;
                    if (v12 >= *&v76)
                    {
                      v78 = v12 % *&v76;
                    }
                  }

                  else
                  {
                    v78 = (*&v76 - 1) & v12;
                  }

                  v79 = *(*(a1 + 1376) + 8 * v78);
                  if (v79)
                  {
                    for (k = *v79; k; k = *k)
                    {
                      v81 = k[1];
                      if (v81 == v12)
                      {
                        if (k[2] == v12)
                        {
                          for (m = 0; m != 4; ++m)
                          {
                            *(k + m * 4 + 24) = a2[m];
                          }

                          if (v107)
                          {
                            std::__shared_weak_count::__release_shared[abi:nn200100](v107);
                          }

                          v83 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find((a1 + 984), v12);
                          if (v83 == *(a1 + 1024))
                          {
                            return;
                          }

                          v84 = v83;
                          v85 = *(a1 + 1016);
                          v86 = *(a1 + 1288);
                          if (*(a1 + 1280) == v86)
                          {
                            v87 = *(a1 + 1328);
                            if (!v87)
                            {
                              v102 = std::__throw_bad_function_call[abi:nn200100]();
                              operator delete(k);
                              _Unwind_Resume(v102);
                            }

                            v9 = (*(*v87 + 48))(v87);
                          }

                          else
                          {
                            v9 = *(v86 - 8);
                            *(a1 + 1288) = v86 - 8;
                          }

                          v88 = 0x9DDFEA08EB382D69 * ((8 * (v9 & 0x1FFFFFFF) + 8) ^ HIDWORD(v9));
                          v89 = 0x9DDFEA08EB382D69 * (HIDWORD(v9) ^ (v88 >> 47) ^ v88);
                          v90 = 0x9DDFEA08EB382D69 * (v89 ^ (v89 >> 47));
                          v91 = *(a1 + 1248);
                          if (!*&v91)
                          {
                            goto LABEL_144;
                          }

                          v92 = vcnt_s8(v91);
                          v92.i16[0] = vaddlv_u8(v92);
                          if (v92.u32[0] > 1uLL)
                          {
                            v93 = 0x9DDFEA08EB382D69 * (v89 ^ (v89 >> 47));
                            if (v90 >= *&v91)
                            {
                              v93 = v90 % *&v91;
                            }
                          }

                          else
                          {
                            v93 = v90 & (*&v91 - 1);
                          }

                          v94 = *(*(a1 + 1240) + 8 * v93);
                          if (!v94 || (v95 = *v94) == 0)
                          {
LABEL_144:
                            operator new();
                          }

                          while (1)
                          {
                            v96 = v95[1];
                            if (v96 == v90)
                            {
                              if (v95[2] == v9)
                              {
                                v97 = (((v84 - v85) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
                                v98 = *(*(a1 + 1040) + v97);
                                v99 = ((v84 - v85) >> 3) & 0x3F;
                                v100 = *(*(a1 + 1088) + v97);
                                v101 = *(*(a1 + 1136) + v97);
                                *(v100 + 24 * v99) = v9;
                                ++*(v98 + 24 * v99);
                                *(v101 + 8 * v99) = v9;
                                if (v9)
                                {
                                  goto LABEL_146;
                                }

                                return;
                              }
                            }

                            else
                            {
                              if (v92.u32[0] > 1uLL)
                              {
                                if (v96 >= *&v91)
                                {
                                  v96 %= *&v91;
                                }
                              }

                              else
                              {
                                v96 &= *&v91 - 1;
                              }

                              if (v96 != v93)
                              {
                                goto LABEL_144;
                              }
                            }

                            v95 = *v95;
                            if (!v95)
                            {
                              goto LABEL_144;
                            }
                          }
                        }
                      }

                      else
                      {
                        if (v77.u32[0] > 1uLL)
                        {
                          if (v81 >= *&v76)
                          {
                            v81 %= *&v76;
                          }
                        }

                        else
                        {
                          v81 &= *&v76 - 1;
                        }

                        if (v81 != v78)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                operator new();
              }
            }

            else
            {
              if (v71 > 1)
              {
                if (v75 >= *&v69)
                {
                  v75 %= *&v69;
                }
              }

              else
              {
                v75 &= *&v69 - 1;
              }

              if (v75 != v72)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 1016, &v110);
    v24 = ((*(a1 + 1024) - *(a1 + 1016)) >> 3) - 1;
    *v22 = HIDWORD(v12);
    v22[1] = v24;
    v25 = v24 & 0x3F;
    v26 = *(*(a1 + 1040) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 1040), v24)) + 24 * v25;
    *v26 = xmmword_1B33B09D0;
    *(v26 + 16) = 0;
    v27 = v24 >> 6;
    v28 = *(a1 + 1096);
    v29 = *(a1 + 1088);
    v105 = v24 >> 6;
    if (v24 >> 6 >= (v28 - v29) >> 3)
    {
      v30 = v27 + 1;
      v31 = v27 + 1 - ((v28 - v29) >> 3);
      v32 = *(a1 + 1104);
      v103 = v28 - v29;
      if (v31 > (v32 - v28) >> 3)
      {
        v33 = v32 - v29;
        v34 = (v32 - v29) >> 2;
        if (v34 <= v30)
        {
          v34 = v27 + 1;
        }

        if (v33 >= 0x7FFFFFFFFFFFFFF8)
        {
          v35 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }

        if (!(v35 >> 61))
        {
          operator new();
        }

        goto LABEL_148;
      }

      v36 = 0;
      v37 = (v31 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v38 = vdupq_n_s64(v37);
      do
      {
        v39 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(vdupq_n_s64(v36), xmmword_1B33B0560)));
        if (v39.i8[0])
        {
          *(v28 + 8 * v36) = 0;
        }

        if (v39.i8[4])
        {
          *(v28 + 8 * v36 + 8) = 0;
        }

        v36 += 2;
      }

      while (v37 - ((v31 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v36);
      *(a1 + 1096) = v28 + 8 * v31;
      v40 = *(a1 + 1120);
      v41 = *(a1 + 1112);
      v42 = (v40 - v41) >> 4;
      if (v42 <= v27)
      {
        v43 = v30 - v42;
        v44 = *(a1 + 1128);
        if (v43 > (v44 - v40) >> 4)
        {
          v45 = v44 - v41;
          v46 = v45 >> 3;
          if (v45 >> 3 <= v30)
          {
            v46 = v30;
          }

          if (v45 >= 0x7FFFFFFFFFFFFFF0)
          {
            v46 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v46 >> 60))
          {
            operator new();
          }

          goto LABEL_148;
        }

        bzero(*(a1 + 1120), 16 * v43);
        *(a1 + 1120) = v40 + 16 * v43;
        v27 = v105;
      }

      else if (v30 < v42)
      {
        *(a1 + 1120) = v41 + 16 * v30;
      }

      v29 = *(a1 + 1088);
      if (v103 < *(a1 + 1096) - v29)
      {
        operator new();
      }
    }

    v47 = *(v29 + 8 * v27) + 24 * v25;
    *v47 = v106;
    *(v47 + 16) = v107;
    *(&v106 + 1) = 0;
    v107 = 0;
    v48 = *(a1 + 1144);
    v49 = *(a1 + 1136);
    if (v27 < (v48 - v49) >> 3)
    {
LABEL_82:
      *(*(v49 + 8 * v27) + 8 * v25) = v109;
      goto LABEL_83;
    }

    v50 = v27 + 1;
    v51 = v27 + 1 - ((v48 - v49) >> 3);
    v52 = *(a1 + 1152);
    v104 = v48 - v49;
    if (v51 > (v52 - v48) >> 3)
    {
      v53 = v52 - v49;
      v54 = (v52 - v49) >> 2;
      if (v54 <= v50)
      {
        v54 = v27 + 1;
      }

      if (v53 >= 0x7FFFFFFFFFFFFFF8)
      {
        v55 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v54;
      }

      if (!(v55 >> 61))
      {
        operator new();
      }

      goto LABEL_148;
    }

    v56 = 0;
    v57 = (v51 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v58 = vdupq_n_s64(v57);
    do
    {
      v59 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(vdupq_n_s64(v56), xmmword_1B33B0560)));
      if (v59.i8[0])
      {
        *(v48 + 8 * v56) = 0;
      }

      if (v59.i8[4])
      {
        *(v48 + 8 * v56 + 8) = 0;
      }

      v56 += 2;
    }

    while (v57 - ((v51 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v56);
    *(a1 + 1144) = v48 + 8 * v51;
    v60 = *(a1 + 1168);
    v61 = *(a1 + 1160);
    v62 = (v60 - v61) >> 4;
    if (v62 > v27)
    {
      if (v50 < v62)
      {
        *(a1 + 1168) = v61 + 16 * v50;
      }

      goto LABEL_80;
    }

    v63 = v50 - v62;
    v64 = *(a1 + 1176);
    if (v63 <= (v64 - v60) >> 4)
    {
      bzero(*(a1 + 1168), 16 * v63);
      *(a1 + 1168) = v60 + 16 * v63;
      v27 = v105;
LABEL_80:
      v49 = *(a1 + 1136);
      if (v104 < *(a1 + 1144) - v49)
      {
        operator new();
      }

      goto LABEL_82;
    }

    v65 = v64 - v61;
    v66 = v65 >> 3;
    if (v65 >> 3 <= v50)
    {
      v66 = v50;
    }

    if (v65 >= 0x7FFFFFFFFFFFFFF0)
    {
      v66 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (!(v66 >> 60))
    {
      operator new();
    }

LABEL_148:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>((a1 + 984), v7);
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
LABEL_146:
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v106, v9);
      *v108 = vcvt_f16_f32(*a3);
      ggl::BufferMemory::~BufferMemory(&v106);
    }
  }
}

uint64_t md::getCachedHandle<md::ConstantDataStorage<ggl::DaVinci::Style>,geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style>,md::StyleCacheKeyHasher>(uint64_t a1, unint64_t a2, float *a3)
{
  v6 = md::StyleCacheKeyHasher::operator()(a3);
  if (!a2)
  {
    return 0;
  }

  v7 = v6;
  v8 = vcnt_s8(a2);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= a2)
    {
      v10 = v6 % a2;
    }
  }

  else
  {
    v10 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & v6;
  }

  v11 = *(a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (!*v11)
  {
    return 0;
  }

  while (1)
  {
    v14 = *(v12 + 1);
    if (v14 == v7)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v14 >= a2)
      {
        v14 %= a2;
      }
    }

    else
    {
      v14 &= a2 - 1;
    }

    if (v14 != v10)
    {
      return 0;
    }

LABEL_17:
    result = 0;
    v12 = *v12;
    if (!v12)
    {
      return result;
    }
  }

  if (!md::StyleCacheKey::operator==(v12 + 4, a3))
  {
    goto LABEL_17;
  }

  return *(v12 + 4);
}

uint64_t md::StyleCacheKeyHasher::operator()(float *a1)
{
  v1 = a1[1];
  v2 = 0x9E3779B97F4A7C15;
  v3 = *a1 - 0x61C8864680B583EBLL;
  if (*a1 == 0.0)
  {
    v3 = 0x9E3779B97F4A7C15;
  }

  v4 = LODWORD(v1) - 0x61C8864680B583EBLL;
  if (v1 == 0.0)
  {
    v4 = 0x9E3779B97F4A7C15;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = ((v3 >> 2) + (v3 << 6) + v4) ^ v3;
  v8 = LODWORD(v5) - 0x61C8864680B583EBLL;
  if (v5 == 0.0)
  {
    v8 = 0x9E3779B97F4A7C15;
  }

  v9 = (v8 + (v7 << 6) + (v7 >> 2)) ^ v7;
  if (v6 != 0.0)
  {
    v2 = LODWORD(v6) - 0x61C8864680B583EBLL;
  }

  return (v2 + (v9 << 6) + (v9 >> 2)) ^ v9;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleDataKeyHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleDataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileStyleDataKeyHandle>();
    *algn_1EB82F468 = 0xC8961A732428331FLL;
    qword_1EB82F470 = "md::ls::TileStyleDataKeyHandle]";
    qword_1EB82F478 = 30;
  }
}

void md::MaterialResourceStore::getMaterial(unint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v5 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a2 + 2, a3);
  if (v5 == a2[7] || (v6 = (((v5 - a2[6]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8, v7 = *(a2[9] + v6), v8 = *(a2[15] + v6), v9 = 3 * (((v5 - a2[6]) >> 3) & 0x3F), ++*(v7 + 8 * v9), !v8))
  {
    v16 = *a2;
    v18 = 0;
    v19 = 0;
    gms::MaterialManager<ggl::Texture2D>::materialForKeyAndAttributes(a1, v16, &v18, 0);
  }

  else
  {
    v10 = (v8 + 8 * v9);
    v11 = v10[1];
    if (!v11)
    {
      v13 = *a2;
      v18 = *v10;
      v19 = 0;
      gms::MaterialManager<ggl::Texture2D>::materialForKeyAndAttributes(&v17, v13, &v18, 0);
      v14 = v17;
      v15 = v10[2];
      *(v10 + 1) = v17;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        v11 = v10[1];
      }

      else
      {
        v11 = v14;
      }
    }

    v12 = v10[2];
    *a1 = v11;
    a1[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

uint64_t md::MaterialResourceStore::getMaterialVisibilityOptions(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 56, a2);
  if (v3 == a1[61])
  {
    return 0;
  }

  v5 = (((v3 - a1[60]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = ((v3 - a1[60]) >> 3) & 0x3F;
  result = *(a1[69] + v5) + 3 * v6;
  ++*(*(a1[63] + v5) + 24 * v6);
  return result;
}

uint64_t gms::ZoomablePropertyStore<BOOL>::getProperty(uint64_t a1, float a2)
{
  v4 = floorf(a2);
  v5 = *(a1 + 64);
  if (((v5 == v4) & ~*(a1 + 68)) != 0 || v5 == a2)
  {
    return *(a1 + 69);
  }

  if (v4 >= 0x17)
  {
    v6 = 23;
  }

  else
  {
    v6 = v4;
  }

  v7 = geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::find((a1 + 40), v6 + 1);
  if (!*(a1 + 56) || (v8 = v7, v9 = geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::find((a1 + 40), v6), (a1 + 48) == v9))
  {
    v13 = 0;
    v16 = 0;
    *(a1 + 64) = v4;
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = a2 - v6;
      if (v11 <= 1.0 && v11 >= 0.0 && a1 + 48 != v8)
      {
        v18 = *(geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::find((a1 + 40), v6) + 27);
        v13 = v18;
        v17 = *(geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::find((a1 + 40), v6 + 1) + 27);
        if (v18 == v17)
        {
          v14 = 0;
        }

        else
        {
          v19 = a2 - v6;
          v13 = (*(*v10 + 48))(v10, &v19, &v18, &v17);
          v14 = 1;
          v4 = a2;
        }

        *(a1 + 64) = v4;
        *(a1 + 68) = v14;
        v16 = 1;
        goto LABEL_20;
      }
    }

    v13 = *(v9 + 27);
    *(a1 + 64) = v4;
    v16 = 1;
  }

  *(a1 + 68) = 0;
LABEL_20:
  result = v13 | (v16 << 8);
  *(a1 + 69) = v13 | (v16 << 8);
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialVisibilityOptionsHandle>();
    *algn_1EB83BA18 = 0x849CB194B84BB63DLL;
    qword_1EB83BA20 = "md::ls::UniqueMaterialVisibilityOptionsHandle]";
    qword_1EB83BA28 = 45;
  }
}

uint64_t *ecs2::group_storage<geo::handle<md::ls::ZIndex>,md::Counter,md::ls::ZIndex,md::ls::ZIndex*>::find(uint64_t *result, void *a2, unint64_t a3)
{
  v3 = a3 >> 6;
  v4 = a2[1];
  if (v3 < (a2[2] - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && (v6 = (v5 + 16 * (a3 & 0x3F)), *v6 == HIDWORD(a3)))
  {
    v7 = a2[4];
    v8 = v7 + 8 * v6[1];
  }

  else
  {
    v7 = a2[4];
    v8 = a2[5];
  }

  *result = (v8 - v7) >> 3;
  result[1] = (a2 + 7);
  result[2] = (a2 + 13);
  result[3] = (a2 + 19);
  return result;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::zIndex(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 216))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::UniqueMaterialData const&,md::ls::UniqueColorDataHandle &,md::ls::SharedColorDataHandle *,md::ls::ColorDataHandle *>,std::tuple<>>::isValid(unsigned __int16 **a1)
{
  v1 = (*a1)[1];
  v2 = v1 >> 6;
  v3 = *(a1[2] + 1);
  if (v1 >> 6 < (*(a1[2] + 2) - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = **a1, v6 = 4 * (v1 & 0x3F), *(v4 + v6) == v5) && (v7 = *(a1[3] + 1), v2 < (*(a1[3] + 2) - v7) >> 3) && (v9 = *(v7 + 8 * v2)) != 0)
  {
    return *(v9 + v6) == v5;
  }

  else
  {
    return 0;
  }
}

void gms::BasicMaterial<ggl::Texture2D>::albedoFactorRGB(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if ((v6 > 0.00000011921 || (v7 = *(a1 + 16)) == 0) && (v6 < 1.0 || (v7 = *(a1 + 32)) == 0))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      (*(*v9 + 648))(&v18, a3.n128_f32[0]);
    }

    else
    {
      LOBYTE(v18) = 0;
      v20 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(*v10 + 648))(&v15, v3);
    }

    else
    {
      LOBYTE(v15) = 0;
      v17 = 0;
    }

    if (v20 == 1)
    {
      if (v17 == 1)
      {
        *a2 = gm::lerp<gm::Matrix<float,3,1>,float>(*&v18, *(&v18 + 1), v19, *&v15, *(&v15 + 1), v16, v6);
        *(a2 + 4) = v11;
        *(a2 + 8) = v12;
        v13 = (a2 + 12);
LABEL_22:
        *v13 = 1;
        return;
      }

      v13 = (a2 + 12);
      *a2 = v18;
      v14 = v19;
    }

    else
    {
      *a2 = 0;
      *(a2 + 12) = 0;
      v13 = (a2 + 12);
      if (v17 != 1)
      {
        return;
      }

      *a2 = v15;
      v14 = v16;
    }

    *(a2 + 8) = v14;
    goto LABEL_22;
  }

  v8 = *(*v7 + 648);

  v8(a3);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::albedoFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 232);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 648))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::alpha(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 624))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (*(*v9 + 624))(v9, a2);
      v11 = v10 & 0xFFFFFF00;
      v12 = HIDWORD(v10);
      v13 = v10;
    }

    else
    {
      v11 = 0;
      v13 = 0;
      LOBYTE(v12) = 0;
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = (*(*v14 + 624))(v14, a2);
      v16 = v15 & 0xFFFFFF00;
      v7 = HIDWORD(v15);
      v17 = v15;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      LOBYTE(v7) = 0;
    }

    v18 = v17 | v16;
    v19 = v13 | v11;
    if (v7)
    {
      *&v19 = COERCE_FLOAT(v13 | v11) + ((*&v18 - COERCE_FLOAT(v13 | v11)) * v4);
      v20 = 1;
    }

    else
    {
      v20 = v12;
    }

    if (v12)
    {
      LODWORD(v6) = v19;
    }

    else
    {
      LODWORD(v6) = v18;
    }

    if (v12)
    {
      LOBYTE(v7) = v20;
    }
  }

  return v6 | (v7 << 32);
}

uint64_t gms::NonZoomablePropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>::getProperty@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 12) = 0;
  if (*(result + 20) == 1)
  {
    *a2 = *(result + 8);
    *(a2 + 8) = *(result + 16);
    *(a2 + 12) = 1;
  }

  return result;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::alpha(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 624))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t md::MaterialResourceStore::getColorData(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 164, a2);
  if (v3 == a1[169])
  {
    return 0;
  }

  v5 = (v3 - a1[168]) >> 3;
  v6 = (v5 >> 3) & 0x1FFFFFFFFFFFFFF8;
  LODWORD(v5) = v5 & 0x3F;
  result = *(a1[177] + v6) + 20 * v5;
  ++*(*(a1[171] + v6) + 24 * v5);
  return result;
}

float *gms::ZoomablePropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>::getProperty@<X0>(float *result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v4 = result;
  v6 = floorf(a3);
  v7 = *(result + 68);
  v8 = result[16];
  *a2 = 0;
  *(a2 + 12) = 0;
  if (((v8 == v6) & ~v7) == 0 && v8 != a3)
  {
    if (v6 >= 0x17)
    {
      v9 = 23;
    }

    else
    {
      v9 = v6;
    }

    result = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(result + 5, v9 + 1);
    if (!*(v4 + 7) || (v10 = result, result = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(v4 + 5, v9), v4 + 12 == result))
    {
      v19 = 0;
    }

    else
    {
      v11 = *(v4 + 4);
      if (v11)
      {
        v12 = a3 - v9;
        if (v12 <= 1.0 && v12 >= 0.0 && v4 + 12 != v10)
        {
          v14 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(v4 + 5, v9);
          v15 = v14 + 4;
          v26 = v14[4];
          v27 = *(v14 + 10);
          result = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(v4 + 5, v9 + 1);
          v24 = *(result + 4);
          v16 = *(result + 10);
          v25 = *(result + 10);
          if (v26 == v24 && v27 == v16)
          {
            v18 = 0;
            v23 = *v15;
            *(a2 + 8) = *(v15 + 2);
            *a2 = v23;
          }

          else
          {
            v28 = a3 - v9;
            result = (*(*v11 + 48))(v11, &v28, &v26, &v24);
            v18 = 1;
            v6 = a3;
          }

          v19 = 1;
          *(a2 + 12) = 1;
          v4[16] = v6;
          *(v4 + 68) = v18;
          goto LABEL_24;
        }
      }

      v20 = *(result + 4);
      *(a2 + 8) = result[10];
      *a2 = v20;
      v19 = 1;
      *(a2 + 12) = 1;
    }

    v4[16] = v6;
    *(v4 + 68) = 0;
LABEL_24:
    v21 = *(v4 + 84);
    if (v21 == v19)
    {
      if (*(v4 + 84))
      {
        *(v4 + 9) = *a2;
        v4[20] = *(a2 + 8);
      }
    }

    else
    {
      if (v21)
      {
        v22 = 0;
      }

      else
      {
        *(v4 + 9) = *a2;
        v4[20] = *(a2 + 8);
        v22 = 1;
      }

      *(v4 + 84) = v22;
    }

    return result;
  }

  if (*(result + 84) == 1)
  {
    *a2 = *(result + 9);
    *(a2 + 8) = result[20];
    *(a2 + 12) = 1;
  }

  return result;
}

void *gms::BasicMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if (v6 <= 0.00000011921 && (v7 = *(a1 + 16)) != 0 || v6 >= 1.0 && (v7 = *(a1 + 32)) != 0)
  {
    v8 = *(*v7 + 192);

    return v8(a3);
  }

  else
  {
    v13 = v6;
    v10 = *(a1 + 16);
    if (v10)
    {
      (*(*v10 + 192))(&v16, a3.n128_f32[0]);
    }

    else
    {
      v16.i8[0] = 0;
      v17 = 0;
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 192))(&v14, v3);
    }

    else
    {
      v14.i8[0] = 0;
      v15 = 0;
    }

    if (v17 == 1)
    {
      if (v15 == 1)
      {
        v11 = vmlaq_n_f32(v16, vsubq_f32(v14, v16), v13);
      }

      else
      {
        v11 = v16;
      }

      *a2 = v11;
      v12 = a2 + 1;
    }

    else
    {
      a2->i8[0] = 0;
      a2[1].i8[0] = 0;
      if (v15 != 1)
      {
        return result;
      }

      *a2 = v14;
      v12 = a2 + 1;
    }

    v12->i8[0] = 1;
  }

  return result;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 112);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 192))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedColorDataHandle>();
    unk_1EB83CC40 = 0xC893C1C4D3D90FF5;
    qword_1EB83CC48 = "md::ls::SharedColorDataHandle]";
    qword_1EB83CC50 = 29;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueColorDataHandle>();
    unk_1EB83CC20 = 0x60915CB292001F47;
    qword_1EB83CC28 = "md::ls::UniqueColorDataHandle]";
    qword_1EB83CC30 = 29;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ColorDataHandle>();
    unk_1EB83D750 = 0xA3F884E4E2541296;
    qword_1EB83D758 = "md::ls::ColorDataHandle]";
    qword_1EB83D760 = 23;
  }
}

void std::__function::__func<md::ita::ResolveMaterialEmissiveTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialEmissiveTexture &>,ecs2::Query<md::ls::SharedMaterialEmissiveTexture &,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> &>)::$_0,std::allocator<md::ita::ResolveMaterialEmissiveTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialEmissiveTexture &>,ecs2::Query<md::ls::SharedMaterialEmissiveTexture &,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialEmissiveTexture &)>::operator()(uint64_t a1, unint64_t *a2, TextureHandle *a3)
{
  md::MaterialResourceStore::getMaterial(&v23, **(a1 + 8), *a2);
  v22 = a2[1];
  v6 = v23;
  v7 = **(v23 + 48);
  v8 = *(v23 + 16);
  if (v8)
  {
    if (gms::_Material<ggl::Texture2D>::zoomable(v8, 4u) && v7 < 1.0)
    {
LABEL_5:
      v11 = **(a1 + 16);
      goto LABEL_6;
    }
  }

  v9 = *(v6 + 32);
  if (v9)
  {
    v10 = gms::_Material<ggl::Texture2D>::zoomable(v9, 4u);
    v11 = 0;
    if (!v10 || v7 <= 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:
  v12 = **(a1 + 24);
  v20 = 4;
  md::MaterialTextureManager::textureFromMaterial(v21, v12, &v23, &v22, &v20, v11);
  v14 = v21[0];
  v13 = v21[1];
  if (!v21[0] || (md::SharedResource::addFrameRef(v21[0], **(a1 + 32)), (v15 = *(v14 + 4)) == 0))
  {
    v16 = **(a1 + 24);
    v15 = *(v16 + 312);
    v17 = *(v16 + 320);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }
  }

  mre::GGLResourceStore::updateUnmanagedTexture(**(a1 + 40), *a3, v15);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v18 = v24;
  if (v24)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }
}

void sub_1B2B0E46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gms::_Material<ggl::Texture2D>::zoomable(uint64_t a1, unsigned __int8 a2)
{
  while (1)
  {
    v4 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>((a1 + 8), a2);
    if (v4)
    {
      break;
    }

    a1 = *(a1 + 72);
    if (!a1)
    {
      v5 = 0;
      return v5 & 1;
    }
  }

  v5 = *(v4 + 17);
  return v5 & 1;
}

void md::MaterialTextureManager::textureFromMaterial(md::SharedResource **a1, pthread_rwlock_t *a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5, unsigned int a6)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v8 = *a3;
  if (!*a3)
  {
    goto LABEL_4;
  }

  v12 = *a5;
  switch(v12)
  {
    case 4:
      v13 = (*(*v8 + 72))(v8, a6);
      if ((v13 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      break;
    case 1:
      v13 = (*(*v8 + 24))(v8, a6);
      if ((v13 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      break;
    case 3:
      v13 = (*(*v8 + 56))(v8, a6);
      if ((v13 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      break;
    case 2:
      v13 = (*(*v8 + 40))(v8, a6);
      if ((v13 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      break;
    default:
      goto LABEL_4;
  }

  v14 = v13;
  v23 = *a4;
  v24 = 0;
  LOWORD(v24) = *a5;
  BYTE2(v24) = v13;
  geo::read_lock_guard::read_lock_guard(v25, a2);
  v15 = std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::find<md::MaterialTextureManager::TextureKey>(&a2[1].__sig, &v23);
  if (v15)
  {
    v17 = v15[4];
    v16 = v15[5];
    if (v16)
    {
      atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
    }

    geo::read_write_lock::unlock(v25[0]);
  }

  else
  {
    geo::read_write_lock::unlock(v25[0]);
    v18 = *(*a3 + 16);
    v19 = *(*a3 + 24);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gms::TextureStore<ggl::Texture2D>::getTexture(&v21, *(v18 + 48), v14);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    if (v21)
    {
      geo::write_lock_guard::write_lock_guard(v20, a2);
      std::allocate_shared[abi:nn200100]<md::SharedTexture2D,std::allocator<md::SharedTexture2D>,std::shared_ptr<ggl::Texture2D> &,md::SharedResourcesManager *&,0>();
    }

    v17 = 0;
    v16 = 0;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }
  }

  if (!v17 || (md::SharedResource::addFrameRef(v17, 0), !*(v17 + 4)))
  {
LABEL_4:
    std::allocate_shared[abi:nn200100]<md::SharedTexture2D,std::allocator<md::SharedTexture2D>,std::shared_ptr<ggl::Texture2D> &,decltype(nullptr),0>();
  }

  *a1 = v17;
  a1[1] = v16;
}

void sub_1B2B0E810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, pthread_rwlock_t *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  geo::write_lock_guard::~write_lock_guard(&a13);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  _Unwind_Resume(a1);
}

uint64_t gms::BasicMaterial<ggl::Texture2D>::emissive(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 96))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::emissive(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
    goto LABEL_6;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    LOWORD(v3) = (*(*v3 + 96))(v3);
LABEL_6:
    v4 = BYTE1(v3);
    return v3 | (v4 << 8);
  }

  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t mre::GGLResourceStore::getTextureStorageTracked(mre::GGLResourceStore *this, TextureHandle a2)
{
  v3 = ecs2::sparse_set<mre::TextureHandle,64ul>::find(this + 55, a2.var0.value);
  if (v3 == *(this + 60))
  {
    return 0;
  }

  v5 = (v3 - *(this + 59)) >> 4;
  v6 = v5 & 0x3F;
  v7 = (v5 >> 3) & 0x1FFFFFFFFFFFFFF8;
  result = *(*(this + 68) + v7) + 40 * v6;
  ++*(*(*(this + 62) + v7) + 24 * v6);
  return result;
}

void mre::GGLResourceStore::updateUnmanagedTexture(mre::GGLResourceStore *this, TextureHandle a2, ggl::Texture2D *a3)
{
  TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(this, a2);
  if (TextureStorageTracked)
  {
    v6 = TextureStorageTracked;
    std::__shared_mutex_base::lock((this + 104));
    *v6 = a3;
    v6[1] = a3;
    if (a3)
    {
      v7 = *(a3 + 17) | (*(a3 + 16) << 32);
      v6[2] = *(a3 + 10);
      v6[3] = v7;
    }

    std::__shared_mutex_base::unlock((this + 104));
  }
}

uint64_t ecs2::sparse_set<mre::TextureHandle,64ul>::find(void *a1, unint64_t a2)
{
  v2 = a2 >> 6;
  v3 = a1[1];
  if (v2 < (a1[2] - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = (v4 + 16 * (a2 & 0x3F)), *v5 == HIDWORD(a2)))
  {
    return a1[4] + 16 * v5[1];
  }

  else
  {
    return a1[5];
  }
}

void std::__destroy_at[abi:nn200100]<md::SharedTexture2D,0>(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialEmissiveTexture>();
    unk_1EB83BD10 = 0x1202E9D2D9704CABLL;
    qword_1EB83BD18 = "md::ls::UniqueMaterialEmissiveTexture]";
    qword_1EB83BD20 = 37;
  }
}

uint64_t std::__function::__func<md::ita::PrepareSlices::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::PrimitiveType const&,md::ls::SharedMaterialVisibilityOptionsHandle const*,md::ls::RenderableVisibilityOptions const*,md::ls::MarketMask const*>,ecs2::Query<md::ls::UniqueMaterialVisibilityOptionsHandle const&>)::$_0,std::allocator<md::ita::PrepareSlices::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::PrimitiveType const&,md::ls::SharedMaterialVisibilityOptionsHandle const*,md::ls::RenderableVisibilityOptions const*,md::ls::MarketMask const*>,ecs2::Query<md::ls::UniqueMaterialVisibilityOptionsHandle const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::PrimitiveType const&,md::ls::SharedMaterialVisibilityOptionsHandle const*,md::ls::RenderableVisibilityOptions const*,md::ls::MarketMask const*)>::operator()(uint64_t result, uint64_t a2, unsigned __int8 *a3, unint64_t **a4, unsigned __int8 **a5, _BYTE **a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  if ((v6 - 4) >= 0xFFFFFFFD)
  {
    v7 = result;
    v8 = *a4;
    v9 = *a5;
    v10 = *a6;
    if ((***(result + 8) & 1) != 0 || (v6 - 3) <= 0xFFFFFFFD)
    {
      v11 = **(result + 16) ^ 1;
      if (!v8)
      {
        goto LABEL_9;
      }

      result = md::MaterialResourceStore::getMaterialVisibilityOptions(**(result + 24), *v8);
      LOBYTE(v8) = *(result + 1);
      if (v9 && (*v7[2] & 1) != 0)
      {
        v11 = v9[2];
      }

      if (*result)
      {
LABEL_9:
        if (v9)
        {
          v12 = *v9;
          LOBYTE(v8) = v9[1];
          if (*v7[4] == 1)
          {
            v13 = v9[3] ^ 1;
LABEL_14:
            if (v13 & 1 | ((v8 & 1) == 0) | v11 & 1 && v12 && (!v10 || (*v10 & *v7[5]) != 0))
            {
              v15 = &unk_1F2A05730;
              v16 = ecs2::ExecutionTaskContext::currentEntity(result) << 32;
              v17 = &v15;
              v18[3] = v18;
              v18[0] = &unk_1F2A05730;
              v18[1] = v16;
              v19 = 0;
              ecs2::Runtime::queueCommand();
              if (v19 != -1)
              {
                (off_1F2A05768[v19])(&v14, v18);
              }

              v19 = -1;
              return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v15);
            }

            return result;
          }
        }

        else
        {
          v12 = 1;
        }

        v13 = 1;
        goto LABEL_14;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)0>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)0> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A05730;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::SliceAssignmentT<(md::SliceType)0>>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)0>>(a1);
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
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::BoundData>();
    unk_1EB83B7E0 = 0x2523AFF0E364AA00;
    qword_1EB83B7E8 = "md::BoundData]";
    qword_1EB83B7F0 = 13;
  }
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::BoundData const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::WantsCulledSlices const&,md::ls::IntendedSceneLayer const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::RenderableVisibilityOptions const&>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::BoundData const,md::ls::VisibilityGroupID const,md::ls::SharedRenderableDataHandle const,md::ls::WantsCulledSlices const,md::ls::IntendedSceneLayer const,md::ls::SliceAssignmentT<(md::SliceType)0> const,md::ls::RenderableVisibilityOptions const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v8 = *(v6 + 8 * v3)) != 0 && *(v8 + 4 * (a3 & 0x3F)) == a2 && (v9 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v9) >> 3) && (v10 = *(v9 + 8 * v3)) != 0 && *(v10 + 4 * (a3 & 0x3F)) == a2 && (v11 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v11) >> 3) && (v12 = *(v11 + 8 * v3)) != 0 && *(v12 + 4 * (a3 & 0x3F)) == a2 && (v13 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v13) >> 3) && (v14 = *(v13 + 8 * v3)) != 0 && *(v14 + 4 * (a3 & 0x3F)) == a2 && (v15 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v15) >> 3) && (v16 = *(v15 + 8 * v3)) != 0 && *(v16 + 4 * (a3 & 0x3F)) == a2 && (v17 = *(a1[8] + 8), v3 < (*(a1[8] + 16) - v17) >> 3) && (v18 = *(v17 + 8 * v3)) != 0 && *(v18 + 4 * (a3 & 0x3F)) == a2 && (v19 = *(a1[9] + 8), v3 < (*(a1[9] + 16) - v19) >> 3) && (v20 = *(v19 + 8 * v3)) != 0)
  {
    return *(v20 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)1>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)1> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29EB958;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::insert(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *a2 >> 6;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = v7 - v6;
  if (v5 >= (v7 - v6) >> 3)
  {
    v9 = v5 + 1;
    v10 = *(a1 + 24);
    if (v5 + 1 - (v8 >> 3) > (v10 - v7) >> 3)
    {
      v11 = v10 - v6;
      if (v11 >> 2 > v9)
      {
        v9 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v9;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v12);
    }

    v17 = ((8 * v5 - v8) & 0xFFFFFFFFFFFFFFF8) + 8;
    bzero(*(a1 + 16), v17);
    *(a1 + 16) = v7 + v17;
  }

  v13 = *(*(a1 + 8) + 8 * v5);
  if (!v13)
  {
    operator new();
  }

  v14 = (v13 + 16 * (v4 & 0x3F));
  if (*v14 == 255 && *(v14 + 1) == 0)
  {
    std::vector<md::VKMRenderResourcesStore::group_handle>::emplace_back<md::VKMRenderResourcesStore::group_handle const&>(a1 + 32, a2);
    v16 = ((*(a1 + 40) - *(a1 + 32)) >> 4) - 1;
    *v14 = *(a2 + 8);
    *(v14 + 1) = v16;
  }
}

void std::vector<md::VKMRenderResourcesStore::group_handle>::emplace_back<md::VKMRenderResourcesStore::group_handle const&>(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mre::TextureHandle>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void ecs2::BasicRegistry<void>::add<md::ls::SliceAssignmentT<(md::SliceType)1>>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)1>>(a1);
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
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedRenderableDataHandle>();
    *algn_1EB83C568 = 0x5EBA003AC7A96B8ALL;
    qword_1EB83C570 = "md::ls::SharedRenderableDataHandle]";
    qword_1EB83C578 = 34;
  }
}

void std::__function::__func<md::ita::PrepareMainSliceWithCulled::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::WantsCulledSlices const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>)::$_0,std::allocator<md::ita::PrepareMainSliceWithCulled::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::WantsCulledSlices const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::WantsCulledSlices const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::operator()(ecs2::ExecutionTaskContext *a1, uint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 1);
  v6 = *v5;
  v7 = ecs2::ExecutionTaskContext::currentEntity(a1);
  v8 = ecs2::addComponent<md::ls::SliceAssignmentT<(md::SliceType)7>>(v6, v7);
  v9 = *v5;
  v10 = ecs2::ExecutionTaskContext::currentEntity(v8);
  ecs2::addComponent<md::ls::InView>(v9, v10);
  v11 = *(a1 + 2);

  ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::insert(v11, a3);
}

uint64_t ecs2::addComponent<md::ls::SliceAssignmentT<(md::SliceType)7>>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29EB810;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F29EB810;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F29EB848[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)7>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)7> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29EB810;
  a2[1] = *(result + 8);
  return result;
}

uint64_t ecs2::addComponent<md::ls::InView>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29EB8C8;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F29EB8C8;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F29EB848[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InView>(ecs2::Entity,md::ls::InView &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29EB8C8;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::SliceAssignmentT<(md::SliceType)7>>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)7>>(a1);
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
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::InView>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::InView>(a1);
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
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>(void)::metadata) = *(a1 + 4096);
}

void std::__function::__func<md::ita::PrepareMaterialStyleConstantDataHandle::operator()(ecs2::Query<md::ls::InView const&,md::ls::RenderableMaterialData const&>)::$_0,std::allocator<md::ita::PrepareMaterialStyleConstantDataHandle::operator()(ecs2::Query<md::ls::InView const&,md::ls::RenderableMaterialData const&>)::$_0>,void ()(md::ls::InView const&,md::ls::RenderableMaterialData const&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = *(a1 + 32);
  md::MaterialResourceStore::getMaterial(&v25, **(a1 + 8), *a3);
  v5 = v25;
  if (v25)
  {
    v6 = (*(*v25 + 456))(v25, **(a1 + 16));
    v7 = (*(*v5 + 504))(v5, **(a1 + 16));
    if ((v6 & 0x100000000) != 0)
    {
      _S8 = *&v6;
    }

    else
    {
      _S8 = 0.0;
    }

    if ((v7 & 0x100000000) != 0)
    {
      _S9 = *&v7;
    }

    else
    {
      _S9 = 1.0;
    }

    v24[0] = _S8;
    v24[1] = _S9;
    v10 = **(a1 + 24);
    v11 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>>>::find<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>((v10 + 12360), _S8, _S9);
    if (!v11 || (v12 = *(v11 + 3)) == 0)
    {
      v12 = md::VKMRenderResourcesStore::createConstantDataHandle<ggl::DaVinci::MaterialStyle,md::VKMShinyStyleCacheKey>(v10, v24);
      v13 = md::VKMRenderResourcesStore::pop<ggl::DaVinci::MaterialStyle>(**(a1 + 24), v12);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v22, v13);
      __asm { FCVT            H0, S8 }

      v19 = v23;
      __asm { FCVT            H1, S9 }

      *v23 = _H0;
      v19[1] = _H1;
      ggl::BufferMemory::~BufferMemory(v22);
    }

    v21 = ecs2::ExecutionTaskContext::currentEntity(v11);
    ecs2::addComponent<md::ls::MaterialStyleConstantDataHandle>(*v4, v21, v12);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }
}

void sub_1B2B10054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(exception_object);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::specularity(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 336))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (*(*v9 + 336))(v9, a2);
      v11 = v10 & 0xFFFFFF00;
      v12 = HIDWORD(v10);
      v13 = v10;
    }

    else
    {
      v11 = 0;
      v13 = 0;
      LOBYTE(v12) = 0;
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = (*(*v14 + 336))(v14, a2);
      v16 = v15 & 0xFFFFFF00;
      v7 = HIDWORD(v15);
      v17 = v15;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      LOBYTE(v7) = 0;
    }

    v18 = v17 | v16;
    v19 = v13 | v11;
    if (v7)
    {
      *&v19 = COERCE_FLOAT(v13 | v11) + ((*&v18 - COERCE_FLOAT(v13 | v11)) * v4);
      v20 = 1;
    }

    else
    {
      v20 = v12;
    }

    if (v12)
    {
      LODWORD(v6) = v19;
    }

    else
    {
      LODWORD(v6) = v18;
    }

    if (v12)
    {
      LOBYTE(v7) = v20;
    }
  }

  return v6 | (v7 << 32);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::specularity(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 336))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::shininess(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 360))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::shininess(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 360))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (*(*v9 + 360))(v9, a2);
      v11 = v10 & 0xFFFFFF00;
      v12 = HIDWORD(v10);
      v13 = v10;
    }

    else
    {
      v11 = 0;
      v13 = 0;
      LOBYTE(v12) = 0;
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = (*(*v14 + 360))(v14, a2);
      v16 = v15 & 0xFFFFFF00;
      v7 = HIDWORD(v15);
      v17 = v15;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      LOBYTE(v7) = 0;
    }

    v18 = v17 | v16;
    v19 = v13 | v11;
    if (v7)
    {
      *&v19 = COERCE_FLOAT(v13 | v11) + ((*&v18 - COERCE_FLOAT(v13 | v11)) * v4);
      v20 = 1;
    }

    else
    {
      v20 = v12;
    }

    if (v12)
    {
      LODWORD(v6) = v19;
    }

    else
    {
      LODWORD(v6) = v18;
    }

    if (v12)
    {
      LOBYTE(v7) = v20;
    }
  }

  return v6 | (v7 << 32);
}

uint64_t ecs2::addComponent<md::ls::MaterialStyleConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F29F3BD8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F29F3BD8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F29F3C10[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

float *std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>>>::find<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>(void *a1, float a2, float a3)
{
  if (a2 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = LODWORD(a2);
  }

  v4 = 0x9E3779B97F4A7C15;
  if (a3 != 0.0)
  {
    v4 = LODWORD(a3) - 0x61C8864680B583EBLL;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = ((v3 >> 2) + (v3 << 6) + v4) ^ v3;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v5)
    {
      v8 = v6 % *&v5;
    }
  }

  else
  {
    v8 = v6 & (*&v5 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = *(result + 1);
    if (v11 == v6)
    {
      if (result[4] == a2 && result[5] == a3)
      {
        return result;
      }
    }

    else
    {
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

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::MaterialStyleConstantDataHandle>(ecs2::Entity,md::ls::MaterialStyleConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F3BD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<md::ita::KeepMaterialAlbedoTextureAlive::operator()(ecs2::Query<md::ls::UniqueMaterialAlbedoTexture &>)::$_0,std::allocator<md::ita::KeepMaterialAlbedoTextureAlive::operator()(ecs2::Query<md::ls::UniqueMaterialAlbedoTexture &>)::$_0>,void ()(md::ls::UniqueMaterialAlbedoTexture &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    md::SharedResource::addFrameRef(v3, **(a1 + 8));
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialAlbedoTexture>();
    *algn_1EB83C3B8 = 0x5FF8F613B2E16249;
    qword_1EB83C3C0 = "md::ls::UniqueMaterialAlbedoTexture]";
    qword_1EB83C3C8 = 35;
  }
}

void ecs2::BasicRegistry<void>::add<md::ls::MaterialStyleConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialStyleConstantDataHandle>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>(void)::metadata) = *(v55 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialStyleConstantDataHandle>();
    unk_1EB83BC20 = 0x8DB28088BB3C2FE3;
    qword_1EB83BC28 = "md::ls::MaterialStyleConstantDataHandle]";
    qword_1EB83BC30 = 39;
  }
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::SharedColorDataHandle const&,md::ls::UniqueColorDataHandle const*,md::ls::ColorDataHandle &,md::ls::AlbedoTintColor const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::SharedColorDataHandle const,md::ls::ColorDataHandle,md::ls::AlbedoTintColor const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0)
  {
    return *(v11 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<md::ita::CheckIfOpaque::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const*,md::ls::ColorDataHandle const&,md::ls::RenderableMaterialData const&,md::ls::HasOverlayPatch const*>)::$_0,std::allocator<md::ita::CheckIfOpaque::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const*,md::ls::ColorDataHandle const&,md::ls::RenderableMaterialData const&,md::ls::HasOverlayPatch const*>)::$_0>,void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const*,md::ls::ColorDataHandle const&,md::ls::RenderableMaterialData const&,md::ls::HasOverlayPatch const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t *a5, unint64_t *a6, _BYTE **a7)
{
  v9 = *a4;
  v10 = *a7;
  v11 = *(a1 + 32);
  ColorData = md::MaterialResourceStore::getColorData(**(a1 + 8), *a5);
  v13 = *(ColorData + 16);
  if (v10 && *v10 != 1)
  {
    v15 = 1;
  }

  else
  {
    if (v13 <= -0.1)
    {
      v14 = *(ColorData + 12);
    }

    else
    {
      v14 = v13;
    }

    v15 = v14 >= 0.999999;
  }

  md::MaterialResourceStore::getMaterial(&v25, **(a1 + 8), *a6);
  v24 = 1;
  hasAlpha = md::MaterialTextureManager::hasAlpha(&v25, &v24, **(a1 + 24));
  v17 = hasAlpha ^ 1;
  if (!v9)
  {
    v17 = 1;
  }

  v18 = v17 & v15;
  v19 = ecs2::ExecutionTaskContext::currentEntity(hasAlpha);
  v20 = *v11;
  if (v18)
  {
    ecs2::addComponent<md::ls::IsOpaque>(v20, v19);
  }

  else
  {
    v21 = ecs2::addComponent<md::ls::IsTransparent>(v20, v19, LODWORD(v13));
    v22 = ecs2::ExecutionTaskContext::currentEntity(v21);
    ecs2::addComponent<md::ls::CheckIfRequiresDepthPeel>(*v11, v22);
  }

  v23 = v26;
  if (v26)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }
}

void sub_1B2B10FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::MaterialTextureManager::hasAlpha(uint64_t *a1, _BYTE *a2, unsigned int a3)
{
  v4 = *a1;
  if (!v4)
  {
    return 0;
  }

  v6 = *a2;
  if (v6 != 1)
  {
    switch(v6)
    {
      case 2:
        v7 = (*(*v4 + 40))(v4, a3);
        goto LABEL_4;
      case 3:
        v7 = (*(*v4 + 56))(v4, a3);
        goto LABEL_4;
      case 4:
        v7 = (*(*v4 + 72))(v4, a3);
        goto LABEL_4;
    }

    return 0;
  }

  v7 = (*(*v4 + 24))(v4, a3);
LABEL_4:
  hasAlpha = 0;
  if ((v7 & 0x100) != 0 && *a2 == 1)
  {
    v9 = *(*a1 + 16);
    v10 = *(*a1 + 24);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    hasAlpha = gms::TextureStore<ggl::Texture2D>::hasAlpha(*(v9 + 48), v7);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }
  }

  return hasAlpha;
}

void sub_1B2B1115C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
    goto LABEL_6;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    LOWORD(v3) = (*(*v3 + 24))(v3);
LABEL_6:
    v4 = BYTE1(v3);
    return v3 | (v4 << 8);
  }

  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t gms::BasicMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 24))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t ecs2::addComponent<md::ls::IsOpaque>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51358;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A51358;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A072F8[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsOpaque>(ecs2::Entity,md::ls::IsOpaque &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A51358;
  a2[1] = *(result + 8);
  return result;
}

uint64_t gms::TextureStore<ggl::Texture2D>::hasAlpha(uint64_t a1, unsigned int a2)
{
  v4 = pthread_rwlock_rdlock(a1);
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (*(a1 + 232) <= a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = (*(*(a1 + 224) + ((a2 >> 3) & 0x18)) >> a2) & 1;
  }

  geo::read_write_lock::unlock(a1);
  return v6;
}

float std::__function::__func<md::ita::PrepareColorCorrectionFactorsConstantHandle::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const&,md::ls::SharedColorCorrectionDataHandle const&,md::ls::ColorCorrectionDataKeyHandle *>)::$_0,std::allocator<md::ita::PrepareColorCorrectionFactorsConstantHandle::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const&,md::ls::SharedColorCorrectionDataHandle const&,md::ls::ColorCorrectionDataKeyHandle *>)::$_0>,void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const&,md::ls::SharedColorCorrectionDataHandle const&,md::ls::ColorCorrectionDataKeyHandle *)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5, unint64_t **a6)
{
  v7 = a1;
  v8 = *a6;
  v9 = *(a1 + 24);
  ColorCorrectionData = md::MaterialResourceStore::getColorCorrectionData(**(a1 + 8), *a5);
  if (*(ColorCorrectionData + 8) == 1)
  {
    *&v12 = *ColorCorrectionData;
    v13 = *(ColorCorrectionData + 20);
    *&v212 = *ColorCorrectionData;
    if (v13)
    {
      v14 = *(ColorCorrectionData + 12);
    }

    else
    {
      v14 = 0x3F80000000000000;
    }

    *(&v212 + 1) = v14;
    LOBYTE(v15) = 1;
  }

  else
  {
    v15 = *(ColorCorrectionData + 20);
    *&v12 = 0x3F80000000000000;
    *&v212 = 0x3F80000000000000;
    if (v15 != 1)
    {
      if (v8)
      {
        v21 = md::getStorage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>((**(v7 + 16) + 5736), *v8);
        if (v21)
        {
          *(v21 + 16) = 0;
        }
      }

      return *v11.i32;
    }

    v14 = *(ColorCorrectionData + 12);
    *(&v212 + 1) = v14;
  }

  LOBYTE(v213) = v15;
  if (!v8)
  {
    v17 = **(v7 + 16);
    v209 = v212;
    LOBYTE(v210) = v213;
    v214 = 0;
    v18 = *(v17 + 5952);
    v19 = *(v17 + 5968);
    v204 = v9;
    if (*(v17 + 5944) == v18)
    {
      v20 = ((*(v17 + 5976) - v19) >> 3) | 0x100000000;
      v215 = v20;
      std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v17 + 5968, &v215);
    }

    else
    {
      v20 = *(v19 + 8 * *(v18 - 8));
      *(v17 + 5952) = v18 - 8;
    }

    v215 = v20;
    v22 = v20 >> 6;
    v23 = *(v17 + 5752);
    v24 = *(v17 + 5744);
    if (v22 >= (v23 - v24) >> 3)
    {
      v25 = v22 + 1;
      v26 = v22 + 1 - ((v23 - v24) >> 3);
      v27 = *(v17 + 5760);
      if (v26 > (v27 - v23) >> 3)
      {
        v28 = v27 - v24;
        if (v28 >> 2 > v25)
        {
          v25 = v28 >> 2;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v25;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v29);
      }

      bzero(*(v17 + 5752), 8 * v26);
      *(v17 + 5752) = v23 + 8 * v26;
      v24 = *(v17 + 5744);
    }

    v30 = *(v24 + 8 * v22);
    if (!v30)
    {
      operator new();
    }

    v207 = v7;
    v31 = (v30 + 16 * (v20 & 0x3F));
    if (*v31 != -1 || v31[1] != 0)
    {
LABEL_92:
      v82 = *a3;
      v83 = *(v17 + 6096);
      if (v83)
      {
        v84 = vcnt_s8(v83);
        v84.i16[0] = vaddlv_u8(v84);
        if (v84.u32[0] > 1uLL)
        {
          v85 = *a3;
          if (v82 >= *&v83)
          {
            v85 = v82 % *&v83;
          }
        }

        else
        {
          v85 = (*&v83 - 1) & v82;
        }

        v86 = *(*(v17 + 6088) + 8 * v85);
        if (v86)
        {
          v87 = *v86;
          if (*v86)
          {
            do
            {
              v88 = v87[1];
              if (v88 == v82)
              {
                if (v87[2] == v82)
                {
                  v7 = v207;
                  v87[3] = v20;
                  v89 = *a3;
                  v90 = *(v17 + 6136);
                  if (!*&v90)
                  {
                    goto LABEL_127;
                  }

                  v91 = vcnt_s8(v90);
                  v91.i16[0] = vaddlv_u8(v91);
                  if (v91.u32[0] > 1uLL)
                  {
                    v92 = v20;
                    if (v20 >= *&v90)
                    {
                      v92 = v20 % *&v90;
                    }
                  }

                  else
                  {
                    v92 = (*&v90 - 1) & v20;
                  }

                  v93 = *(*(v17 + 6128) + 8 * v92);
                  if (!v93 || (v94 = *v93) == 0)
                  {
LABEL_127:
                    operator new();
                  }

                  while (1)
                  {
                    v95 = v94[1];
                    if (v95 == v20)
                    {
                      if (v94[2] == v20)
                      {
                        v94[3] = v89;
                        v96 = *v204;
                        v97 = ecs2::ExecutionTaskContext::currentEntity(ColorCorrectionData);
                        ecs2::addComponent<md::ls::ColorCorrectionDataKeyHandle>(v96, v97, v20);
                        goto LABEL_128;
                      }
                    }

                    else
                    {
                      if (v91.u32[0] > 1uLL)
                      {
                        if (v95 >= *&v90)
                        {
                          v95 %= *&v90;
                        }
                      }

                      else
                      {
                        v95 &= *&v90 - 1;
                      }

                      if (v95 != v92)
                      {
                        goto LABEL_127;
                      }
                    }

                    v94 = *v94;
                    if (!v94)
                    {
                      goto LABEL_127;
                    }
                  }
                }
              }

              else
              {
                if (v84.u32[0] > 1uLL)
                {
                  if (v88 >= *&v83)
                  {
                    v88 %= *&v83;
                  }
                }

                else
                {
                  v88 &= *&v83 - 1;
                }

                if (v88 != v85)
                {
                  break;
                }
              }

              v87 = *v87;
            }

            while (v87);
          }
        }
      }

      operator new();
    }

    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v17 + 5768, &v215);
    v33 = ((*(v17 + 5776) - *(v17 + 5768)) >> 3) - 1;
    *v31 = HIDWORD(v20);
    v31[1] = v33;
    ColorCorrectionData = ecs2::pool<md::Counter,64ul>::page_at_index((v17 + 5792), v33);
    v34 = v33 & 0x3F;
    v35 = (*(*(v17 + 5792) + 8 * ColorCorrectionData) + 24 * v34);
    *v35 = vdupq_n_s64(1uLL);
    v35[1].i16[0] = 1;
    v36 = v33 >> 6;
    v37 = *(v17 + 5848);
    v38 = *(v17 + 5840);
    v39 = v37 - v38;
    v203 = v34;
    if (v33 >> 6 < (v37 - v38) >> 3)
    {
LABEL_61:
      v59 = *(v38 + 8 * v36) + 20 * v34;
      *v59 = v209;
      *(v59 + 16) = v210;
      v60 = *(v17 + 5896);
      v61 = *(v17 + 5888);
      v62 = v60 - v61;
      if (v36 < (v60 - v61) >> 3)
      {
LABEL_91:
        *(*(v61 + 8 * v36) + 8 * v34) = v214;
        goto LABEL_92;
      }

      v63 = v36 + 1;
      v64 = v36 + 1 - (v62 >> 3);
      v65 = *(v17 + 5904);
      if (v64 > (v65 - v60) >> 3)
      {
        v66 = v65 - v61;
        v67 = (v65 - v61) >> 2;
        if (v67 <= v63)
        {
          v67 = v36 + 1;
        }

        if (v66 >= 0x7FFFFFFFFFFFFFF8)
        {
          v68 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v67;
        }

        if (!(v68 >> 61))
        {
          operator new();
        }

        goto LABEL_278;
      }

      v69 = 0;
      v70 = (v64 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v71 = vdupq_n_s64(v70);
      do
      {
        v72 = vmovn_s64(vcgeq_u64(v71, vorrq_s8(vdupq_n_s64(v69), xmmword_1B33B0560)));
        if (v72.i8[0])
        {
          *(v60 + 8 * v69) = 0;
        }

        if (v72.i8[4])
        {
          *(v60 + 8 * v69 + 8) = 0;
        }

        v69 += 2;
      }

      while (v70 - ((v64 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v69);
      *(v17 + 5896) = v60 + 8 * v64;
      v73 = *(v17 + 5920);
      v74 = *(v17 + 5912);
      v75 = (v73 - v74) >> 4;
      if (v75 <= v36)
      {
        v77 = v63 - v75;
        v78 = *(v17 + 5928);
        if (v77 > (v78 - v73) >> 4)
        {
          v79 = v78 - v74;
          v80 = v79 >> 3;
          if (v79 >> 3 <= v63)
          {
            v80 = v36 + 1;
          }

          if (v79 >= 0x7FFFFFFFFFFFFFF0)
          {
            v81 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v81 = v80;
          }

          if (!(v81 >> 60))
          {
            operator new();
          }

          goto LABEL_278;
        }

        bzero(*(v17 + 5920), 16 * v77);
        v76 = v73 + 16 * v77;
      }

      else
      {
        if (v63 >= v75)
        {
          goto LABEL_89;
        }

        v76 = v74 + 16 * v63;
      }

      *(v17 + 5920) = v76;
LABEL_89:
      v61 = *(v17 + 5888);
      v34 = v203;
      if (v62 < (*(v17 + 5896) - v61))
      {
        operator new();
      }

      goto LABEL_91;
    }

    v40 = v36 + 1;
    v41 = v36 + 1 - (v39 >> 3);
    v42 = *(v17 + 5856);
    if (v41 > (v42 - v37) >> 3)
    {
      v43 = v42 - v38;
      v44 = (v42 - v38) >> 2;
      if (v44 <= v40)
      {
        v44 = v36 + 1;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFF8)
      {
        v45 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v44;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v45);
    }

    v46 = 0;
    v47 = (v41 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v48 = vdupq_n_s64(v47);
    do
    {
      v49 = vmovn_s64(vcgeq_u64(v48, vorrq_s8(vdupq_n_s64(v46), xmmword_1B33B0560)));
      if (v49.i8[0])
      {
        *(v37 + 8 * v46) = 0;
      }

      if (v49.i8[4])
      {
        *(v37 + 8 * v46 + 8) = 0;
      }

      v46 += 2;
    }

    while (v47 - ((v41 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v46);
    *(v17 + 5848) = v37 + 8 * v41;
    v50 = *(v17 + 5872);
    v51 = *(v17 + 5864);
    v52 = (v50 - v51) >> 4;
    if (v52 <= v36)
    {
      v54 = v40 - v52;
      v55 = *(v17 + 5880);
      if (v54 > (v55 - v50) >> 4)
      {
        v56 = v55 - v51;
        v57 = v56 >> 3;
        if (v56 >> 3 <= v40)
        {
          v57 = v36 + 1;
        }

        if (v56 >= 0x7FFFFFFFFFFFFFF0)
        {
          v58 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v58 = v57;
        }

        if (!(v58 >> 60))
        {
          operator new();
        }

        goto LABEL_278;
      }

      bzero(*(v17 + 5872), 16 * v54);
      v53 = v50 + 16 * v54;
    }

    else
    {
      if (v40 >= v52)
      {
        goto LABEL_59;
      }

      v53 = v51 + 16 * v40;
    }

    *(v17 + 5872) = v53;
LABEL_59:
    v38 = *(v17 + 5840);
    v34 = v203;
    if (v39 < (*(v17 + 5848) - v38))
    {
      operator new();
    }

    goto LABEL_61;
  }

  *(&v12 + 1) = v14;
  v206 = v12;
  v16 = md::getStorage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>((**(v7 + 16) + 5736), *v8);
  *v16 = v206;
  *(v16 + 16) = 1;
LABEL_128:
  v98 = **(v7 + 16);
  v99 = std::__hash_table<std::__hash_value_type<md::ColorCorrectionKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>>,std::__unordered_map_hasher<md::ColorCorrectionKey,std::__hash_value_type<md::ColorCorrectionKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>>,md::ColorCorrectionKeyHasher,std::equal_to<md::ColorCorrectionKey>,true>,std::__unordered_map_equal<md::ColorCorrectionKey,std::__hash_value_type<md::ColorCorrectionKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>>,std::equal_to<md::ColorCorrectionKey>,md::ColorCorrectionKeyHasher,true>,std::allocator<std::__hash_value_type<md::ColorCorrectionKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>>>>::find<md::ColorCorrectionKey>((v98 + 5656), &v212);
  if (!v99 || (v100 = v99[5]) == 0)
  {
    v208 = v7;
    v209 = 0uLL;
    v210 = 0;
    v214 = 0;
    v103 = *(v98 + 5520);
    v104 = *(v98 + 5536);
    if (*(v98 + 5512) == v103)
    {
      v105 = ((*(v98 + 5544) - v104) >> 3) | 0x100000000;
      v215 = v105;
      std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v98 + 5536, &v215);
    }

    else
    {
      v105 = *(v104 + 8 * *(v103 - 8));
      *(v98 + 5520) = v103 - 8;
    }

    v215 = v105;
    v106 = v105 >> 6;
    v107 = *(v98 + 5320);
    v108 = *(v98 + 5312);
    if (v106 >= (v107 - v108) >> 3)
    {
      v109 = v106 + 1;
      v110 = v106 + 1 - ((v107 - v108) >> 3);
      v111 = *(v98 + 5328);
      if (v110 > (v111 - v107) >> 3)
      {
        v112 = v111 - v108;
        if (v112 >> 2 > v109)
        {
          v109 = v112 >> 2;
        }

        if (v112 >= 0x7FFFFFFFFFFFFFF8)
        {
          v113 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v113 = v109;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v113);
      }

      bzero(*(v98 + 5320), 8 * v110);
      *(v98 + 5320) = v107 + 8 * v110;
      v108 = *(v98 + 5312);
    }

    v114 = *(v108 + 8 * v106);
    if (!v114)
    {
      operator new();
    }

    v115 = (v114 + 16 * (v105 & 0x3F));
    if (*v115 != -1 || v115[1] != 0)
    {
LABEL_213:
      v166 = md::ColorCorrectionKeyHasher::operator()(&v212);
      v167 = *(v98 + 5664);
      if (v167)
      {
        v168 = vcnt_s8(v167);
        v168.i16[0] = vaddlv_u8(v168);
        if (v168.u32[0] > 1uLL)
        {
          v169 = v166;
          if (v166 >= *&v167)
          {
            v169 = v166 % *&v167;
          }
        }

        else
        {
          v169 = (*&v167 - 1) & v166;
        }

        v170 = *(*(v98 + 5656) + 8 * v169);
        if (v170)
        {
          for (i = *v170; i; i = *i)
          {
            v172 = i[1];
            if (v172 == v166)
            {
              if (*(i + 1) == v212 && *(i + 32) == v213)
              {
                i[5] = v105;
                v173 = *(v98 + 5704);
                if (v173)
                {
                  v174 = vcnt_s8(v173);
                  v174.i16[0] = vaddlv_u8(v174);
                  if (v174.u32[0] > 1uLL)
                  {
                    v175 = v105;
                    if (v105 >= *&v173)
                    {
                      v175 = v105 % *&v173;
                    }
                  }

                  else
                  {
                    v175 = (*&v173 - 1) & v105;
                  }

                  v176 = *(*(v98 + 5696) + 8 * v175);
                  if (v176)
                  {
                    for (j = *v176; j; j = *j)
                    {
                      v178 = j[1];
                      if (v178 == v105)
                      {
                        if (j[2] == v105)
                        {
                          *(j + 3) = v212;
                          *(j + 40) = v213;
                          if (v210)
                          {
                            std::__shared_weak_count::__release_shared[abi:nn200100](v210);
                          }

                          v179 = **(v208 + 16);
                          v180 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v179 + 663, v105);
                          if (v180 == v179[668])
                          {
                            return *v11.i32;
                          }

                          v181 = v180;
                          v182 = v179[667];
                          v183 = v179[701];
                          if (v179[700] == v183)
                          {
                            v184 = v179[706];
                            if (!v184)
                            {
                              v201 = std::__throw_bad_function_call[abi:nn200100]();
                              operator delete(j);
                              _Unwind_Resume(v201);
                            }

                            v102 = (*(*v184 + 48))(v184);
                          }

                          else
                          {
                            v102 = *(v183 - 8);
                            v179[701] = v183 - 8;
                          }

                          v185 = 0x9DDFEA08EB382D69 * ((8 * (v102 & 0x1FFFFFFF) + 8) ^ HIDWORD(v102));
                          v186 = 0x9DDFEA08EB382D69 * (HIDWORD(v102) ^ (v185 >> 47) ^ v185);
                          v187 = 0x9DDFEA08EB382D69 * (v186 ^ (v186 >> 47));
                          v188 = v179[696];
                          if (!*&v188)
                          {
                            goto LABEL_274;
                          }

                          v11 = vcnt_s8(v188);
                          v11.i16[0] = vaddlv_u8(v11);
                          if (v11.u32[0] > 1uLL)
                          {
                            v189 = 0x9DDFEA08EB382D69 * (v186 ^ (v186 >> 47));
                            if (v187 >= *&v188)
                            {
                              v189 = v187 % *&v188;
                            }
                          }

                          else
                          {
                            v189 = v187 & (*&v188 - 1);
                          }

                          v190 = *(v179[695] + 8 * v189);
                          if (!v190 || (v191 = *v190) == 0)
                          {
LABEL_274:
                            operator new();
                          }

                          while (1)
                          {
                            v192 = v191[1];
                            if (v192 == v187)
                            {
                              if (v191[2] == v102)
                              {
                                v193 = (((v181 - v182) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
                                v194 = *(v179[670] + v193);
                                v195 = ((v181 - v182) >> 3) & 0x3F;
                                v196 = *(v179[676] + v193);
                                v197 = *(v179[682] + v193);
                                *(v196 + 24 * v195) = v102;
                                ++*(v194 + 24 * v195);
                                *(v197 + 8 * v195) = v102;
                                if (v102)
                                {
                                  goto LABEL_276;
                                }

                                return *v11.i32;
                              }
                            }

                            else
                            {
                              if (v11.u32[0] > 1uLL)
                              {
                                if (v192 >= *&v188)
                                {
                                  v192 %= *&v188;
                                }
                              }

                              else
                              {
                                v192 &= *&v188 - 1;
                              }

                              if (v192 != v189)
                              {
                                goto LABEL_274;
                              }
                            }

                            v191 = *v191;
                            if (!v191)
                            {
                              goto LABEL_274;
                            }
                          }
                        }
                      }

                      else
                      {
                        if (v174.u32[0] > 1uLL)
                        {
                          if (v178 >= *&v173)
                          {
                            v178 %= *&v173;
                          }
                        }

                        else
                        {
                          v178 &= *&v173 - 1;
                        }

                        if (v178 != v175)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                operator new();
              }
            }

            else
            {
              if (v168.u32[0] > 1uLL)
              {
                if (v172 >= *&v167)
                {
                  v172 %= *&v167;
                }
              }

              else
              {
                v172 &= *&v167 - 1;
              }

              if (v172 != v169)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v98 + 5336, &v215);
    v117 = ((*(v98 + 5344) - *(v98 + 5336)) >> 3) - 1;
    *v115 = HIDWORD(v105);
    v115[1] = v117;
    v118 = v117 & 0x3F;
    v119 = *(*(v98 + 5360) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((v98 + 5360), v117)) + 24 * v118;
    *v119 = xmmword_1B33B09D0;
    *(v119 + 16) = 0;
    v120 = v117 >> 6;
    v121 = *(v98 + 5416);
    v122 = *(v98 + 5408);
    v123 = v121 - v122;
    v205 = v118;
    if (v117 >> 6 < (v121 - v122) >> 3)
    {
      goto LABEL_182;
    }

    v124 = v120 + 1;
    v125 = v120 + 1 - (v123 >> 3);
    v126 = *(v98 + 5424);
    if (v125 > (v126 - v121) >> 3)
    {
      v127 = v126 - v122;
      v128 = (v126 - v122) >> 2;
      if (v128 <= v124)
      {
        v128 = v120 + 1;
      }

      if (v127 >= 0x7FFFFFFFFFFFFFF8)
      {
        v129 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v129 = v128;
      }

      if (!(v129 >> 61))
      {
        operator new();
      }

      goto LABEL_278;
    }

    v130 = 0;
    v131 = (v125 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v132 = vdupq_n_s64(v131);
    do
    {
      v133 = vmovn_s64(vcgeq_u64(v132, vorrq_s8(vdupq_n_s64(v130), xmmword_1B33B0560)));
      if (v133.i8[0])
      {
        *(v121 + 8 * v130) = 0;
      }

      if (v133.i8[4])
      {
        *(v121 + 8 * v130 + 8) = 0;
      }

      v130 += 2;
    }

    while (v131 - ((v125 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v130);
    *(v98 + 5416) = v121 + 8 * v125;
    v134 = *(v98 + 5440);
    v135 = *(v98 + 5432);
    v136 = (v134 - v135) >> 4;
    if (v136 <= v120)
    {
      v138 = v124 - v136;
      v139 = *(v98 + 5448);
      if (v138 > (v139 - v134) >> 4)
      {
        v140 = v139 - v135;
        v141 = v140 >> 3;
        if (v140 >> 3 <= v124)
        {
          v141 = v120 + 1;
        }

        if (v140 >= 0x7FFFFFFFFFFFFFF0)
        {
          v142 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v142 = v141;
        }

        if (!(v142 >> 60))
        {
          operator new();
        }

        goto LABEL_278;
      }

      bzero(*(v98 + 5440), 16 * v138);
      v137 = v134 + 16 * v138;
    }

    else
    {
      if (v124 >= v136)
      {
        goto LABEL_180;
      }

      v137 = v135 + 16 * v124;
    }

    *(v98 + 5440) = v137;
LABEL_180:
    v122 = *(v98 + 5408);
    v118 = v205;
    if (v123 < (*(v98 + 5416) - v122))
    {
      operator new();
    }

LABEL_182:
    v143 = *(v122 + 8 * v120) + 24 * v118;
    *v143 = v209;
    *(v143 + 16) = v210;
    *(&v209 + 1) = 0;
    v210 = 0;
    v144 = *(v98 + 5464);
    v145 = *(v98 + 5456);
    v146 = v144 - v145;
    if (v120 < (v144 - v145) >> 3)
    {
LABEL_212:
      *(*(v145 + 8 * v120) + 8 * v118) = v214;
      goto LABEL_213;
    }

    v147 = v120 + 1;
    v148 = v120 + 1 - (v146 >> 3);
    v149 = *(v98 + 5472);
    if (v148 > (v149 - v144) >> 3)
    {
      v150 = v149 - v145;
      v151 = (v149 - v145) >> 2;
      if (v151 <= v147)
      {
        v151 = v120 + 1;
      }

      if (v150 >= 0x7FFFFFFFFFFFFFF8)
      {
        v152 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v152 = v151;
      }

      if (!(v152 >> 61))
      {
        operator new();
      }

      goto LABEL_278;
    }

    v153 = 0;
    v154 = (v148 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v155 = vdupq_n_s64(v154);
    do
    {
      v156 = vmovn_s64(vcgeq_u64(v155, vorrq_s8(vdupq_n_s64(v153), xmmword_1B33B0560)));
      if (v156.i8[0])
      {
        *(v144 + 8 * v153) = 0;
      }

      if (v156.i8[4])
      {
        *(v144 + 8 * v153 + 8) = 0;
      }

      v153 += 2;
    }

    while (v154 - ((v148 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v153);
    *(v98 + 5464) = v144 + 8 * v148;
    v157 = *(v98 + 5488);
    v158 = *(v98 + 5480);
    v159 = (v157 - v158) >> 4;
    if (v159 > v120)
    {
      if (v147 >= v159)
      {
        goto LABEL_210;
      }

      v160 = v158 + 16 * v147;
LABEL_209:
      *(v98 + 5488) = v160;
LABEL_210:
      v145 = *(v98 + 5456);
      v118 = v205;
      if (v146 < (*(v98 + 5464) - v145))
      {
        operator new();
      }

      goto LABEL_212;
    }

    v161 = v147 - v159;
    v162 = *(v98 + 5496);
    if (v161 <= (v162 - v157) >> 4)
    {
      bzero(*(v98 + 5488), 16 * v161);
      v160 = v157 + 16 * v161;
      goto LABEL_209;
    }

    v163 = v162 - v158;
    v164 = v163 >> 3;
    if (v163 >> 3 <= v147)
    {
      v164 = v120 + 1;
    }

    if (v163 >= 0x7FFFFFFFFFFFFFF0)
    {
      v165 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v165 = v164;
    }

    if (!(v165 >> 60))
    {
      operator new();
    }

LABEL_278:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v101 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>((v98 + 5304), v100);
  if (v101)
  {
    v102 = *v101;
    if (*v101)
    {
LABEL_276:
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v209, v102);
      v199 = DWORD1(v212);
      v198 = v212;
      v200 = v211;
      *v211 = *(&v212 + 1);
      v200[1] = __PAIR64__(v199, v198);
      ggl::BufferMemory::~BufferMemory(&v209);
    }
  }

  return *v11.i32;
}

uint64_t md::MaterialResourceStore::getColorCorrectionData(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 326, a2);
  if (v3 == a1[331])
  {
    return 0;
  }

  v5 = (((v3 - a1[330]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = 3 * (((v3 - a1[330]) >> 3) & 0x3F);
  result = *(a1[339] + v5) + 24 * (((v3 - a1[330]) >> 3) & 0x3F);
  ++*(*(a1[333] + v5) + 8 * v6);
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<md::ColorCorrectionKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>>,std::__unordered_map_hasher<md::ColorCorrectionKey,std::__hash_value_type<md::ColorCorrectionKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>>,md::ColorCorrectionKeyHasher,std::equal_to<md::ColorCorrectionKey>,true>,std::__unordered_map_equal<md::ColorCorrectionKey,std::__hash_value_type<md::ColorCorrectionKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>>,std::equal_to<md::ColorCorrectionKey>,md::ColorCorrectionKeyHasher,true>,std::allocator<std::__hash_value_type<md::ColorCorrectionKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>>>>::find<md::ColorCorrectionKey>(void *a1, uint64_t a2)
{
  v4 = md::ColorCorrectionKeyHasher::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v9 == v4)
      {
        if (i[2] == *a2 && i[3] == *(a2 + 8) && *(i + 32) == *(a2 + 16))
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t md::ColorCorrectionKeyHasher::operator()(uint64_t a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = LODWORD(v2) - 0x61C8864680B583EBLL;
    if (v2 == 0.0)
    {
      v5 = 0x9E3779B97F4A7C15;
    }

    v1 ^= (v1 >> 2) + (v1 << 6) + v5;
    v2 = *(a1 + 4);
    v3 = 0;
  }

  while ((v4 & 1) != 0);
  v6 = 0;
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = *(a1 + 8 + 4 * v6);
    v11 = LODWORD(v10) - 0x61C8864680B583EBLL;
    if (v10 == 0.0)
    {
      v11 = 0x9E3779B97F4A7C15;
    }

    v7 ^= (v7 >> 2) + (v7 << 6) + v11;
    v6 = 1;
    v8 = 0;
  }

  while ((v9 & 1) != 0);
  v12 = ((v1 << 6) - 0x61C8864680B583EBLL + (v1 >> 2) + v7) ^ v1;
  return ((v12 << 6) - 0x61C8864680B583EBLL + (v12 >> 2) + *(a1 + 16)) ^ v12;
}

void ecs2::BasicRegistry<void>::add<md::ls::IsOpaque>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsOpaque>(a1);
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
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsOpaque>();
    *algn_1EB83B8F8 = 0x7087983DEF28DBFELL;
    qword_1EB83B900 = "md::ls::IsOpaque]";
    qword_1EB83B908 = 16;
  }
}

void md::DaVinciGroundRenderLayer::layoutRibbons(uint64_t a1, uint64_t a2, int64x2_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  v60 = a5;
  v61 = a4;
  v59 = a6;
  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0xDFC317497CF9A4BFLL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0xDFC317497CF9A4BFLL))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = +[VKDebugSettings sharedSettings];
  v14 = [v13 daVinciWireframeEnabled];

  v58 = v14;
  v15 = *(a1 + 3272);
  v16 = v15[1];
  v56 = *v15;
  v57 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(a4 + 392);
  v55 = v17;
  [*(*(a1 + 40) + 104) contentScale];
  *&v18 = v18;
  v54 = LODWORD(v18);
  v19 = *(a2 + 8);
  v20 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v19, 0xD2404CDD1F9A6950);
  if (v20 && (v22 = v20[5], *(v22 + 8) == 0xD2404CDD1F9A6950))
  {
    v21 = *(v22 + 32);
  }

  else
  {
    v21 = 0;
  }

  v53 = 1045220557;
  __asm { FMOV            V0.4S, #1.0 }

  v52 = _Q0;
  if (v12)
  {
    v28 = *(v12 + 64);
  }

  else
  {
    v28 = 0;
  }

  v51 = v28 & 1;
  v50[0] = 0;
  v50[16] = 0;
  v49[0] = 0;
  v49[12] = 0;
  v29 = *(*(a1 + 40) + 24);
  v30 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v19, 0x1AF456233693CD46uLL);
  if (v30 && (v31 = v30[5], *(v31 + 8) == 0x1AF456233693CD46))
  {
    v32 = *(v31 + 32);
  }

  else
  {
    v32 = 0;
  }

  v48 = v32;
  v33 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v19, 0x41E8D6E445F4145uLL);
  if (v33 && (v34 = v33[5], *(v34 + 8) == 0x41E8D6E445F4145))
  {
    v35 = *(v34 + 32);
  }

  else
  {
    v35 = 0;
  }

  v47 = v35;
  v46 = a1 + 528;
  v45[0] = a3;
  v45[1] = &v52;
  v45[2] = &v53;
  v45[3] = &v56;
  v45[4] = a2;
  v45[5] = v50;
  v45[6] = a1;
  v45[7] = &v54;
  v45[8] = v21;
  v45[9] = (a1 + 3288);
  v45[10] = v49;
  v45[11] = v29;
  v45[12] = &v51;
  v45[13] = &v59;
  v45[14] = &v61;
  v45[15] = &v47;
  v45[16] = &v55;
  v45[17] = &v46;
  v45[18] = &v48;
  v45[19] = &v58;
  v45[20] = &v60;
  v36 = *(v17 + 1080);
  if (*(v17 + 1088) != v36)
  {
    v37 = 0;
    do
    {
      v38 = (v36 + 56 * v37);
      v39 = v38[4];
      v40 = v38[5];
      while (v39 != v40)
      {
        v41 = v39[2];
        v42 = v39[3];
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        md::DaVinciGroundRenderLayer::layoutRibbons(md::LayoutContext const&,md::DaVinciGroundRenderLayer::MeshLayoutContext const&,md::DaVinciGroundRenderable *,ggl::CommandBuffer *,BOOL)::$_0::operator()(v45, v39, 0, v41, v42);
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v42);
        }

        v39 += 4;
      }

      v43 = v38[1];
      v44 = v38[2];
      while (v43 != v44)
      {
        md::DaVinciGroundRenderLayer::layoutRibbons(md::LayoutContext const&,md::DaVinciGroundRenderLayer::MeshLayoutContext const&,md::DaVinciGroundRenderable *,ggl::CommandBuffer *,BOOL)::$_0::operator()(v45, v43, v43[2], 0, 0);
        v43 += 3;
      }

      ++v37;
      v36 = *(v55 + 1080);
    }

    while (v37 < 0x6DB6DB6DB6DB6DB7 * ((*(v55 + 1088) - v36) >> 3));
    v16 = v57;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

void sub_1B2B1419C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2B141CC()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v0);
  }

  JUMPOUT(0x1B2B141B4);
}

void md::DaVinciGroundRenderLayer::layoutRibbonsECS(uint64_t a1, uint64_t a2, int64x2_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  md::DaVinciGroundRenderLayer::layoutRibbons(a1, a2, a3, a4, a5, a6);
  v9 = *(a2 + 8);
  v10 = md::LayoutContext::get<md::SettingsContext>(v9);
  if (v10)
  {
    v11 = *v10;
    v12 = v10[1];
    while (v11 != v12)
    {
      if (*v11 == 11)
      {
        if (v11 != v12)
        {
          if (*(v11 + 8))
          {
            v13 = gdc::Context::get<md::StyleLogicContext>(v9);
            md::ElevatedPolygonContext::ElevatedPolygonContext(v14, a2, *(a1 + 3336), *(*(a1 + 40) + 24));
            md::DaVinciGroundRenderLayer::layoutPredrapedPolygons(a1, a2, a4, v14, v13);
          }
        }

        return;
      }

      v11 += 16;
    }
  }
}

uint64_t md::ElevatedPolygonContext::ElevatedPolygonContext(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *a1 = 0x1000000;
  *(a1 + 8) = a4;
  *(a1 + 24) = 0;
  v7 = a1 + 24;
  *(a1 + 32) = 0;
  v8 = +[VKDebugSettings sharedSettings];
  if ([v8 daVinciWireframeEnabled])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v8 daVinciTintBandFillWireframeEnabled];
  }

  *a1 = v9;
  if ([v8 daVinciWireframeEnabled])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v8 daVinciTintBandStrokeWireframeEnabled];
  }

  *(a1 + 1) = v10;
  *(a1 + 2) = [v8 daVinciTintBandStrokeDistanceDebugEnabled];
  *(a1 + 3) = [v8 enableTileClipping];
  *(a1 + 4) = a3;
  *(a1 + 16) = 0;
  v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x401D4CCE847AB1D1uLL);
  if (v11 && (v12 = v11[5], *(v12 + 8) == 0x401D4CCE847AB1D1) && (v13 = *(v12 + 32)) != 0)
  {
    v14 = *(v13 + 8);
    *(v7 + 8) = *(v13 + 16);
    *v7 = v14;
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  return a1;
}

void md::DaVinciGroundRenderLayer::layoutPredrapedPolygons(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 392);
  v6 = *(v5 + 1368);
  for (i = *(v5 + 1376); v6 != i; v6 += 10)
  {
    _ZNSt3__116__variant_detail6__implIJN2md16ServerDrapedMeshENS2_18ClientDrapedMeshesEEECI1NS0_6__baseILNS0_6_TraitE1EJS3_S4_EEEILm0EJRKS3_EEENS_16in_place_index_tIXT_EEEDpOT0_(v19, v6);
    md::layoutElevatedPolygonMeshes<md::DaVinciGroundRenderable>(a2, a3, a4, a1 + 3544, *(a1 + 3568), v18, (v6 + 8), &xmmword_1B33B10E0);
    if (*(a4 + 32) == 1)
    {
      v13 = v6[5];
      v14 = v6[6];
      if (v13 != v14)
      {
        while (*v13 != *(a4 + 24))
        {
          if (++v13 == v14)
          {
            goto LABEL_12;
          }
        }
      }

      if (v13 != v14)
      {
        gss::QueryOverrides::QueryOverrides(v17, 1);
        gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v15, *a5, (v6[8] + 240), v17);
        md::layoutElevatedPolygonMeshes<md::DaVinciGroundRenderable>(a2, a3, a4, a1 + 3544, *(a1 + 3568), v18, &v15, &xmmword_1B33B10E0);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v16);
        }

        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v17);
      }
    }

LABEL_12:
    if (v20 != -1)
    {
      (off_1F2A48878[v20])(v17, v19);
    }
  }
}

void sub_1B2B14584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&a11);
  if (a25 != -1)
  {
    (*(v26 + 8 * a25))(&a11, v25 + 8);
  }

  _Unwind_Resume(a1);
}

unsigned int *std::__function::__func<md::ita::AssignRenderOrder::operator()(ecs2::Query<md::ls::IsDecal const&,md::ls::RenderItemID const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::CustomZIndex const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::SharedMaterialZIndexHandle const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassShadow const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassSceneDepth const&,md::ls::RenderOrderToUse &>)::$_2,std::allocator<md::ita::AssignRenderOrder::operator()(ecs2::Query<md::ls::IsDecal const&,md::ls::RenderItemID const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::CustomZIndex const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::SharedMaterialZIndexHandle const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassShadow const&,md::ls::RenderOrderToUse &>,ecs2::Query<md::ls::RenderItemID const&,md::ls::RenderableHash const&,md::ls::IntendedStandardPassSceneDepth const&,md::ls::RenderOrderToUse &>)::$_2>,void ()(md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::SharedMaterialZIndexHandle const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = *a5;
  result = md::MaterialResourceStore::getMaterialZIndex(**(a1 + 8), *a4);
  if (*(result + 4) == 1)
  {
    v11 = 0xFFFFFFFE00;
    if (v9)
    {
      v11 = 0;
    }

    v12 = v11 & 0xFFFFFFFFFFFFFF00 | (*a6 >> 4);
  }

  else
  {
    v13 = 256;
    if (!v9)
    {
      v13 = 512;
    }

    v12 = (v13 + (*result << 9)) & 0xFFFFFFFFFFFFFF00 | (*a6 >> 4);
  }

  *a7 = v12;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderOrderToUse>();
    unk_1EB83D530 = 0x9158B59D97A4E38DLL;
    qword_1EB83D538 = "md::ls::RenderOrderToUse]";
    qword_1EB83D540 = 24;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::VisibilityGroupTest>();
    unk_1EB83CFD0 = 0xFA77EBF8E4CA45B8;
    qword_1EB83CFD8 = "md::ls::VisibilityGroupTest]";
    qword_1EB83CFE0 = 27;
  }
}

uint64_t md::VKMRenderResourcesStore::getColorRampData(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 1638, a2);
  if (v3 == a1[1643])
  {
    return 0;
  }

  v5 = (v3 - a1[1642]) >> 3;
  v6 = (v5 >> 3) & 0x1FFFFFFFFFFFFFF8;
  LODWORD(v5) = v5 & 0x3F;
  result = *(a1[1651] + v6) + 88 * v5;
  ++*(*(a1[1645] + v6) + 24 * v5);
  return result;
}

uint64_t std::__function::__func<md::ita::PrepareFunctionConstantDescriptorBlendedWater::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ColorRampDataHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorBlendedWater::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ColorRampDataHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::ColorRampDataHandle const&)>::operator()(uint64_t result, uint64_t a2, unint64_t *a3)
{
  *(a2 + 6) = 0;
  if (**(result + 8) == 1)
  {
    result = md::VKMRenderResourcesStore::getColorRampData(**(result + 16), *a3);
    if (result)
    {
      if (*(result + 80) == 1 && *(result + 16))
      {
        if (*(result + 32))
        {
          *(a2 + 6) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__function::__func<md::ita::PrepareFunctionConstantDescriptorTileClipping::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ClippingConstantDataHandle const&,md::ls::SharedUniqueID const*>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorTileClipping::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ClippingConstantDataHandle const&,md::ls::SharedUniqueID const*>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::ClippingConstantDataHandle const&,md::ls::SharedUniqueID const*)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v6 = *a4;
  result = md::VKMRenderResourcesStore::getConstantDataStorage<ggl::Tile::Clipping>(**(a1 + 8), *a3);
  if (!result)
  {
    LOBYTE(v8) = 0;
    goto LABEL_5;
  }

  v8 = *result;
  if (!*result)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  LOBYTE(v8) = (v6 == 0) & **(a1 + 16);
  v9 = **(a1 + 24);
LABEL_6:
  *(a2 + 26) = v8;
  *(a2 + 27) = v9;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::UsesShadow const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gms::_PBRMaterial<ggl::Texture2D>::hideOnCollapse(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 576))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::PBRMaterial<ggl::Texture2D>::minHideOnCollapse(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 576))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 576))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5;
  if (v7 < v5)
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

uint64_t gms::PBRMaterial<ggl::Texture2D>::maxVisibility(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 264))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 264))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (v5 > v7)
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::visibility(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 264))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::zIndex(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 216))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

unint64_t gms::PBRMaterial<ggl::Texture2D>::minZIndex(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 216))(v4, a2);
    v6 = v5 & 0xFFFFFF00;
    v7 = HIDWORD(v5);
    v8 = v5;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    LOBYTE(v7) = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 216))(v9, v2);
    v11 = v10 & 0xFFFFFF00;
    v12 = HIDWORD(v10);
    v13 = v10;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    LOBYTE(v12) = 0;
  }

  LODWORD(v14) = v11 | v13;
  v15 = v6 | v8;
  if (v14 >= (v6 | v8))
  {
    v16 = v6 | v8;
  }

  else
  {
    v16 = v14;
  }

  if (v12)
  {
    v15 = v16;
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  if (v7)
  {
    v14 = v15;
  }

  else
  {
    v14 = v14;
  }

  if (v7)
  {
    LOBYTE(v12) = v17;
  }

  return v14 | (v12 << 32);
}

void gms::PBRMaterial<ggl::Texture2D>::albedoFactorRGB(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if ((v6 > 0.00000011921 || (v7 = *(a1 + 16)) == 0) && (v6 < 1.0 || (v7 = *(a1 + 32)) == 0))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      (*(*v9 + 648))(&v18, a3.n128_f32[0]);
    }

    else
    {
      LOBYTE(v18) = 0;
      v20 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(*v10 + 648))(&v15, v3);
    }

    else
    {
      LOBYTE(v15) = 0;
      v17 = 0;
    }

    if (v20 == 1)
    {
      if (v17 == 1)
      {
        *a2 = gm::lerp<gm::Matrix<float,3,1>,float>(*&v18, *(&v18 + 1), v19, *&v15, *(&v15 + 1), v16, v6);
        *(a2 + 4) = v11;
        *(a2 + 8) = v12;
        v13 = (a2 + 12);
LABEL_21:
        *v13 = 1;
        return;
      }

      v13 = (a2 + 12);
      *a2 = v18;
      v14 = v19;
    }

    else
    {
      *a2 = 0;
      *(a2 + 12) = 0;
      v13 = (a2 + 12);
      if (v17 != 1)
      {
        return;
      }

      *a2 = v15;
      v14 = v16;
    }

    *(a2 + 8) = v14;
    goto LABEL_21;
  }

  v8 = *(*v7 + 648);

  v8(a3);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::albedoFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 232);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 648))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::alpha(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 624))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

unint64_t gms::PBRMaterial<ggl::Texture2D>::alpha(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 624))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 624))(v8, a2);
      v10 = v9 & 0xFFFFFF00;
      v11 = HIDWORD(v9);
      v12 = v9;
    }

    else
    {
      v10 = 0;
      v12 = 0;
      LOBYTE(v11) = 0;
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = (*(*v13 + 624))(v13, a2);
      v15 = v14 & 0xFFFFFF00;
      v7 = HIDWORD(v14);
      v16 = v14;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      LOBYTE(v7) = 0;
    }

    v17 = v16 | v15;
    v18 = v12 | v10;
    if (v7)
    {
      *&v18 = COERCE_FLOAT(v12 | v10) + ((*&v17 - COERCE_FLOAT(v12 | v10)) * v4);
      v19 = 1;
    }

    else
    {
      v19 = v11;
    }

    if (v11)
    {
      LODWORD(v6) = v18;
    }

    else
    {
      LODWORD(v6) = v17;
    }

    if (v11)
    {
      LOBYTE(v7) = v19;
    }
  }

  return v6 | (v7 << 32);
}

void *gms::PBRMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if (v6 <= 0.00000011921 && (v7 = *(a1 + 16)) != 0 || v6 >= 1.0 && (v7 = *(a1 + 32)) != 0)
  {
    v8 = *(*v7 + 192);

    return v8(a3);
  }

  else
  {
    v13 = v6;
    v10 = *(a1 + 16);
    if (v10)
    {
      (*(*v10 + 192))(&v16, a3.n128_f32[0]);
    }

    else
    {
      v16.i8[0] = 0;
      v17 = 0;
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 192))(&v14, v3);
    }

    else
    {
      v14.i8[0] = 0;
      v15 = 0;
    }

    if (v17 == 1)
    {
      if (v15 == 1)
      {
        v11 = vmlaq_n_f32(v16, vsubq_f32(v14, v16), v13);
      }

      else
      {
        v11 = v16;
      }

      *a2 = v11;
      v12 = a2 + 1;
    }

    else
    {
      a2->i8[0] = 0;
      a2[1].i8[0] = 0;
      if (v15 != 1)
      {
        return result;
      }

      *a2 = v14;
      v12 = a2 + 1;
    }

    v12->i8[0] = 1;
  }

  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 192))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::emissive(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 96))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::PBRMaterial<ggl::Texture2D>::emissive(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 96))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t **std::__function::__func<md::ita::CheckIfRenderableIsUnique::operator()(ecs2::Query<md::ls::UniqueRenderArrayID const&,md::ls::SharedUniqueID const&>)::$_0,std::allocator<md::ita::CheckIfRenderableIsUnique::operator()(ecs2::Query<md::ls::UniqueRenderArrayID const&,md::ls::SharedUniqueID const&>)::$_0>,void ()(md::ls::UniqueRenderArrayID const&,md::ls::SharedUniqueID const&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = (**(a1 + 8) + 40 * *a2 + 72);
  v4 = *a3;
  v5 = *(a3 + 8);
  result = std::__hash_table<md::UniqueRenderID,md::UniqueRenderIDHash,md::UniqueRenderIDKeyEqual,std::allocator<md::UniqueRenderID>>::find<md::UniqueRenderID>(v3, *a3, *(a3 + 8));
  if (!result)
  {
    v7 = ((v4 >> 34) + v4 + (HIDWORD(v4) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(v4);
    v8 = (v5 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
    v9 = v3[1];
    if (v9)
    {
      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = (v5 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
        if (v8 >= *&v9)
        {
          v11 = v8 % *&v9;
        }
      }

      else
      {
        v11 = v8 & (*&v9 - 1);
      }

      v12 = *(*v3 + 8 * v11);
      if (v12)
      {
        for (i = *v12; i; i = *i)
        {
          v14 = i[1];
          if (v14 == v8)
          {
            if (i[2] == v4 && *(i + 24) == v5)
            {
              return result;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v14 >= *&v9)
              {
                v14 %= *&v9;
              }
            }

            else
            {
              v14 &= *&v9 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  v17 = &unk_1F2A350D8;
  v18 = ecs2::ExecutionTaskContext::currentEntity(result) << 32;
  v19 = &v17;
  v20[3] = v20;
  v20[0] = &unk_1F2A350D8;
  v20[1] = v18;
  v21 = 0;
  ecs2::Runtime::queueCommand();
  if (v21 != -1)
  {
    (off_1F2A35178[v21])(&v16, v20);
  }

  v21 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v17);
}

uint64_t **std::__hash_table<md::UniqueRenderID,md::UniqueRenderIDHash,md::UniqueRenderIDKeyEqual,std::allocator<md::UniqueRenderID>>::find<md::UniqueRenderID>(void *a1, unint64_t a2, unsigned __int8 a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = ((a2 >> 34) + a2 + (HIDWORD(a2) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(a2);
  v5 = ((v4 << 6) + a3 + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
  v6 = vcnt_s8(v3);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v3)
    {
      v7 = v5 % *&v3;
    }
  }

  else
  {
    v7 = v5 & (*&v3 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == a2 && *(result + 24) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v3)
        {
          v10 %= *&v3;
        }
      }

      else
      {
        v10 &= *&v3 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::__unordered_map_hasher<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,md::ColorStyleCacheKeyHasher,std::equal_to<md::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::equal_to<md::ColorStyleCacheKey>,md::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>>>::find<md::ColorStyleCacheKey>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2)
  {
    v5 = geo::Color<float,4,(geo::ColorSpace)0>::hash(a2 + 4);
    v6 = a1[1];
    if (!*&v6)
    {
      return 0;
    }

    v7 = v5 - 0x61C8864680B583EBLL;
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = v5 - 0x61C8864680B583EBLL;
      if (v7 >= *&v6)
      {
        v9 = v7 % *&v6;
      }
    }

    else
    {
      v9 = (*&v6 - 1) & v7;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (result = *v10; result; result = *result)
      {
        v12 = result[1];
        if (v12 == v7)
        {
          v13 = *(result + 36);
          if (v13 != v2 || v13 == 0)
          {
            if (v13 == v2)
            {
              return result;
            }
          }

          else if (*(result + 20) == *(a2 + 4) && *(result + 28) == *(a2 + 12))
          {
            return result;
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
            return 0;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = std::__throw_bad_optional_access[abi:nn200100]();
    return ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v16, v17, v18, v19, v20);
  }

  return result;
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, unsigned __int16 a5)
{
  v5 = a5 >> 6;
  if (v5 < (a2 - a1) >> 3 && (v6 = *(a1 + 8 * v5)) != 0 && *(v6 + 4 * (a5 & 0x3F)) == a4 && (v7 = *(a3 + 8), v5 < (*(a3 + 16) - v7) >> 3) && (v8 = *(v7 + 8 * v5)) != 0)
  {
    return *(v8 + 4 * (a5 & 0x3F)) == a4;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderState>(ecs2::Entity,md::ls::RenderState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &off_1F2A52BD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderState>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderState>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderState>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderState>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderState>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderState>(void)::metadata) = *(v55 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderState>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderState>();
    unk_1EB83DB60 = 0x52AC71251090DBDELL;
    qword_1EB83DB68 = "md::ls::RenderState]";
    qword_1EB83DB70 = 19;
  }
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::GradientConstantDataHandle1>(ecs2::Entity,std::type_identity<md::ls::GradientConstantDataHandle1>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::GradientConstantDataHandle1>(ecs2::Entity,std::type_identity<md::ls::GradientConstantDataHandle1>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A353A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(ecs2::Entity,std::type_identity<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(ecs2::Entity,std::type_identity<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A356E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::remove<md::ls::GradientConstantDataHandle2>(uint64_t a1, int a2)
{
  v12 = a2;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle2>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GradientConstantDataHandle2>();
    *algn_1EB83C498 = 0x8963527098E963C3;
    qword_1EB83C4A0 = "md::ls::GradientConstantDataHandle2]";
    qword_1EB83C4A8 = 35;
  }

  v3 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle2>(void)::metadata;
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::GradientConstantDataHandle2>(a1);
  v5 = HIWORD(v12) >> 6;
  v6 = v4[1];
  if (v5 < (v4[2] - v6) >> 3)
  {
    v8 = *(v6 + 8 * v5);
    if (v8)
    {
      if (*(v8 + 4 * (BYTE2(v12) & 0x3F)) == v12)
      {
        v9 = v4;
        v10 = v4[31];
        for (i = v4[32]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), v12);
        }

        ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>::erase(v9, &v12);
      }
    }
  }

  v7 = *(a1 + 41016) + (HIWORD(v12) << 6);
  *(v7 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v3);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle2>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GradientConstantDataHandle2>();
    *algn_1EB83C498 = 0x8963527098E963C3;
    qword_1EB83C4A0 = "md::ls::GradientConstantDataHandle2]";
    qword_1EB83C4A8 = 35;
  }

  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle2>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::remove<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(uint64_t a1, int a2)
{
  v12 = a2;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>();
    unk_1EB83CDF0 = 0xCAA3A5E853432887;
    qword_1EB83CDF8 = "md::ls::TextureHandleForType<DaVinci::Gradient1Texture>]";
    qword_1EB83CE00 = 55;
  }

  v3 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(void)::metadata;
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(a1);
  v5 = HIWORD(v12) >> 6;
  v6 = v4[1];
  if (v5 < (v4[2] - v6) >> 3)
  {
    v8 = *(v6 + 8 * v5);
    if (v8)
    {
      if (*(v8 + 4 * (BYTE2(v12) & 0x3F)) == v12)
      {
        v9 = v4;
        v10 = v4[31];
        for (i = v4[32]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), v12);
        }

        ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::erase(v9, &v12);
      }
    }
  }

  v7 = *(a1 + 41016) + (HIWORD(v12) << 6);
  *(v7 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v3);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>();
    unk_1EB83CDF0 = 0xCAA3A5E853432887;
    qword_1EB83CDF8 = "md::ls::TextureHandleForType<DaVinci::Gradient1Texture>]";
    qword_1EB83CE00 = 55;
  }

  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::remove<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(uint64_t a1, int a2)
{
  v12 = a2;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>();
    *algn_1EB83CDC8 = 0xC55E4C6C5DFCA74ALL;
    qword_1EB83CDD0 = "md::ls::TextureHandleForType<DaVinci::Gradient2Texture>]";
    qword_1EB83CDD8 = 55;
  }

  v3 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(void)::metadata;
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(a1);
  v5 = HIWORD(v12) >> 6;
  v6 = v4[1];
  if (v5 < (v4[2] - v6) >> 3)
  {
    v8 = *(v6 + 8 * v5);
    if (v8)
    {
      if (*(v8 + 4 * (BYTE2(v12) & 0x3F)) == v12)
      {
        v9 = v4;
        v10 = v4[31];
        for (i = v4[32]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), v12);
        }

        ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::erase(v9, &v12);
      }
    }
  }

  v7 = *(a1 + 41016) + (HIWORD(v12) << 6);
  *(v7 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v3);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>();
    *algn_1EB83CDC8 = 0xC55E4C6C5DFCA74ALL;
    qword_1EB83CDD0 = "md::ls::TextureHandleForType<DaVinci::Gradient2Texture>]";
    qword_1EB83CDD8 = 55;
  }

  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleColorConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleColorConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleColorConstantDataHandle>();
    unk_1EB83BE80 = 0x7E6F38B7040F8E0FLL;
    qword_1EB83BE88 = "md::ls::StyleColorConstantDataHandle]";
    qword_1EB83BE90 = 36;
  }
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::GradientConstantDataHandle2>(ecs2::Entity,std::type_identity<md::ls::GradientConstantDataHandle2>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::GradientConstantDataHandle2>(ecs2::Entity,std::type_identity<md::ls::GradientConstantDataHandle2>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A354B8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(ecs2::Entity,std::type_identity<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(ecs2::Entity,std::type_identity<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A355D0;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StyleColorConstantDataHandle>(ecs2::Entity,md::ls::StyleColorConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A35730;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::remove<md::ls::GradientConstantDataHandle1>(uint64_t a1, int a2)
{
  v12 = a2;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle1>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GradientConstantDataHandle1>();
    unk_1EB83C4C0 = 0x8963537098E96576;
    qword_1EB83C4C8 = "md::ls::GradientConstantDataHandle1]";
    qword_1EB83C4D0 = 35;
  }

  v3 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle1>(void)::metadata;
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::GradientConstantDataHandle1>(a1);
  v5 = HIWORD(v12) >> 6;
  v6 = v4[1];
  if (v5 < (v4[2] - v6) >> 3)
  {
    v8 = *(v6 + 8 * v5);
    if (v8)
    {
      if (*(v8 + 4 * (BYTE2(v12) & 0x3F)) == v12)
      {
        v9 = v4;
        v10 = v4[31];
        for (i = v4[32]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), v12);
        }

        ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>::erase(v9, &v12);
      }
    }
  }

  v7 = *(a1 + 41016) + (HIWORD(v12) << 6);
  *(v7 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v3);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle1>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GradientConstantDataHandle1>();
    unk_1EB83C4C0 = 0x8963537098E96576;
    qword_1EB83C4C8 = "md::ls::GradientConstantDataHandle1]";
    qword_1EB83C4D0 = 35;
  }

  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle1>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::StyleColorConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleColorConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleColorConstantDataHandle>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::StyleColorConstantDataHandle>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleColorConstantDataHandle>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleColorConstantDataHandle>(void)::metadata) = *(v55 + 4096);
}

uint64_t md::VKMRenderResourcesStore::getPipeline(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 35, a2);
  if (v3 == a1[40])
  {
    return 0;
  }

  v4 = ((v3 - a1[39]) >> 3) & 0x3F;
  v5 = (((v3 - a1[39]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = *(a1[48] + v5);
  ++*(*(a1[42] + v5) + 24 * v4);
  if (!v6)
  {
    return 0;
  }

  else
  {
    return *(v6 + 16 * v4);
  }
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ItemsPrepared>(ecs2::Entity,md::ls::ItemsPrepared &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A3F678;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::ItemsPrepared>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>(void)::metadata) = *(v55 + 4096);
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::ita::UpdateStyleTextureIfNecessaryPendingOnly::operator()(uint64_t **a1, uint64_t a2)
{
  v96[4] = *MEMORY[0x1E69E9840];
  v4 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,md::LayoutContextProvider *>::service<md::LayoutContextProvider>(a1);
  v5 = (**v4)(v4);
  v6 = md::LayoutContext::get<md::MaterialContext>(*(v5 + 8));
  if (v6)
  {
    v7 = v6;
    v8 = +[VKDebugSettings sharedSettings];
    md::TerrainDebugOptions::TerrainDebugOptions(&v82, v8);

    v9 = *(v5 + 8);
    v10 = gdc::Context::get<md::StyleLogicContext>(v9);
    v11 = md::LayoutContext::get<md::CameraContext>(v9);
    v12 = *(v11 + 3076);
    v13 = *(v11 + 3080);
    v14 = v7[1];
    v80 = *v7;
    v81 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v13 + v12;
    v16 = ((v83 & 1) != 0 || v84 == 1) && v82 == 0;
    v17 = fmaxf(v15, 1.0);
    v18 = a1[1];
    if (!v18)
    {
      v19 = **a1;
      v20 = *v19;
      v21 = *(v19 + 8);
      if (v20 == v21)
      {
        goto LABEL_10;
      }

      while (*v20 != 0x41D4E9297E100630)
      {
        v18 = 0;
        v20 += 5;
        if (v20 == v21)
        {
          goto LABEL_13;
        }
      }

      if (v20 == v21)
      {
LABEL_10:
        v18 = 0;
      }

      else
      {
        v18 = v20[3];
        v71 = v20[4];
        if (v71)
        {
          atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v71);
        }
      }

LABEL_13:
      a1[1] = v18;
    }

    v76[0] = v18;
    v76[1] = ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,md::LayoutContextProvider *>::service<md::MaterialResourceStore>(a1);
    v76[2] = v10;
    v77 = v17;
    v78 = &v80;
    v79 = v16;
    v94[0] = &unk_1F29E5B08;
    v94[1] = v76;
    v94[2] = a1;
    v95 = v94;
    v22 = *(a2 + 8);
    v23 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablePendingProcessing>(v22);
    v24 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v22);
    v25 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMaterialData>(v22);
    v26 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(v22);
    HasMaterial = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRaster>(v22);
    v28 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialRasterMaxIndex>(v22);
    v96[0] = v23;
    v96[1] = v24;
    v29 = 1;
    v30 = v23;
    v31 = v96;
    v96[2] = v25;
    v96[3] = v26;
    do
    {
      if (*(v96[v29] + 40) - *(v96[v29] + 32) < *(v30 + 40) - *(v30 + 32))
      {
        v30 = v96[v29];
        v31 = &v96[v29];
      }

      ++v29;
    }

    while (v29 != 4);
    v33 = *(*v31 + 32);
    v32 = *(*v31 + 40);
    v85 = v33;
    v86 = v32;
    v87 = v23;
    v88 = v24;
    v89 = v25;
    v90 = v26;
    v91 = HasMaterial;
    v92 = v28;
    v75 = v32;
    while (v33 != v32 && !ecs2::ViewIterator<void,std::tuple<md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::isValid(&v85))
    {
      v33 += 2;
      v85 = v33;
      v32 = v75;
    }

    v34 = v85;
    if (v85 != v75)
    {
      v74 = v87;
      v72 = a2;
      v73 = v88;
      v35 = v89;
      v36 = v90;
      v37 = v91;
      v38 = v92;
      v39 = _ZTWN4ecs27Runtime11_localStateE();
      v40 = _ZTWN4ecs27Runtime11_stackIndexE();
      v41 = 0;
      v42 = v86;
      while (1)
      {
        v43 = v34[1];
        v44 = v43 >> 6;
        v45 = v43 & 0x3F;
        v46 = *v34;
        v47 = v37[1];
        if (v44 >= (v37[2] - v47) >> 3)
        {
          break;
        }

        v48 = *(v47 + 8 * v44);
        if (v48)
        {
          if (*(v48 + 4 * v45) != v46)
          {
            break;
          }

          v49 = *(v48 + 4 * v45 + 2);
          v48 = *(v37[7] + ((v49 >> 3) & 0x1FF8)) + 8 * (v49 & 0x3F);
        }

LABEL_29:
        v50 = v38[1];
        if (v44 < (v38[2] - v50) >> 3 && (v51 = *(v50 + 8 * v44)) != 0 && *(v51 + 4 * v45) == v46)
        {
          v52 = *(v51 + 4 * v45 + 2);
          v53 = *(v38[7] + ((v52 >> 3) & 0x1FF8)) + 2 * (v52 & 0x3F);
        }

        else
        {
          v53 = 0;
        }

        v54 = *(v74 + 32);
        v55 = *(*(*(v73 + 8) + 8 * v44) + 4 * v45 + 2);
        v56 = *(*(v73 + 56) + ((v55 >> 3) & 0x1FF8));
        v57 = *(*(*(v35 + 8) + 8 * v44) + 4 * v45 + 2);
        v58 = *(*(v35 + 56) + ((v57 >> 3) & 0x1FF8));
        v59 = *(*(*(v74 + 8) + 8 * v44) + 4 * v45 + 2);
        v60 = *(*(*(v36 + 8) + 8 * v44) + 4 * v45 + 2);
        v61 = *(*(v36 + 56) + ((v60 >> 3) & 0x1FF8));
        *(v39 + 104 * *v40 + 24) = *v34;
        v96[0] = v48;
        v93 = v53;
        if (!v95)
        {
          std::__throw_bad_function_call[abi:nn200100]();
        }

        (*(*v95 + 48))(v95, v54 + 4 * v59, v56 + 8 * (v55 & 0x3F), v58 + 32 * (v57 & 0x3F), v61 + 8 * (v60 & 0x3F), v96, &v93);
        ++v41;
        while (1)
        {
          v62 = v34;
          v34 += 2;
          v85 = v34;
          if (v34 == v42)
          {
            break;
          }

          if (ecs2::ViewIterator<void,std::tuple<md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::isValid(&v85))
          {
            v63 = v62 + 2;
            goto LABEL_40;
          }
        }

        v63 = v34;
        v34 = v42;
LABEL_40:
        v64 = v34 == v75;
        v34 = v63;
        if (v64)
        {
          v65 = *(v72 + 8);
          ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>();
          *(v65 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata) = *(v65 + 4096);
          goto LABEL_44;
        }
      }

      v48 = 0;
      goto LABEL_29;
    }

    v39 = _ZTWN4ecs27Runtime11_localStateE();
    v40 = _ZTWN4ecs27Runtime11_stackIndexE();
    v41 = 0;
LABEL_44:
    *(v39 + 104 * *v40 + 24) = -65536;
    v66 = v39 + 104 * *v40;
    v67 = *(v66 + 92);
    *(v66 + 92) = v67 + 1;
    *(v66 + 4 * v67 + 28) = v41;
    v68 = v39 + 104 * *v40;
    v70 = *(v68 + 92);
    v69 = (v68 + 92);
    if (v70 >= 0x10)
    {
      *v69 = 0;
    }

    std::__function::__value_func<void ()(md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*)>::~__value_func[abi:nn200100](v94);
    if (v81)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v81);
    }
  }
}

uint64_t gms::PBRMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 24))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 24))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

void ecs2::BasicRegistry<void>::add<md::ls::GradientConstantDataHandle1>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle1>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle1>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::GradientConstantDataHandle1>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle1>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle1>(void)::metadata) = *(v55 + 4096);
}