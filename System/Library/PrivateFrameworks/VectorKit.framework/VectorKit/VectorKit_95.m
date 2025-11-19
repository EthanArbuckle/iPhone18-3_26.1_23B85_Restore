void md::DsmDecoder::decode(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  if ((a3[112] & 1) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  if (*(a2 + 2) == 50)
  {
    (*(**(a1 + 8) + 16))(__p);
    shared_owners = __p[0];
    v8 = __p[1];
    if (__p[1])
    {
      atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](__p[1]);
      }
    }

    if (!shared_owners)
    {
      goto LABEL_36;
    }

    v9 = shared_owners[6].__vftable;
    shared_owners = shared_owners[6].__shared_owners_;
    if (shared_owners)
    {
      atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v9 || !v9[71].__on_zero_shared_weak || (v10 = geo::codec::VectorTile::dtmRasterBlob(v9), v11 = *v10, v12 = *(v10 + 8), v12 == *v10))
    {
LABEL_36:
      *a4 = 0;
      a4[1] = 0;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      goto LABEL_71;
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      v11 = *v10;
      v12 = *(v10 + 8);
    }

    v13 = v12 - v11;
    if (v12 != v11)
    {
      __p[0] = 0;
      __p[1] = 0;
      v39 = 0;
      v36 = 0;
      v37 = 0;
      on_zero_shared_weak = v9[71].__on_zero_shared_weak;
      v15 = *(on_zero_shared_weak + 21);
      if (v15 > 1)
      {
        if (v15 != 2 && v15 != 6)
        {
          goto LABEL_55;
        }
      }

      else if (*(on_zero_shared_weak + 21))
      {
        if (v15 != 1 || md::ElevationRaster::decodePngElevationRaster(v11, v13, __p, &v37, &v36))
        {
          goto LABEL_55;
        }

        goto LABEL_40;
      }

      v29 = *(on_zero_shared_weak + 3);
      v36 = *(on_zero_shared_weak + 4);
      v37 = v29;
      v30 = geo::codec::VectorTile::dtmRasterBlob(v9);
      v31 = *(v30 + 16);
      *__p = *v30;
      v39 = v31;
      *v30 = 0;
      *(v30 + 8) = 0;
      *(v30 + 16) = 0;
      goto LABEL_55;
    }
  }

  else
  {
    v16 = (*(**a3 + 32))();
    v17 = (*(**a3 + 24))();
    if (v17)
    {
      v18 = v17;
      __p[0] = 0;
      __p[1] = 0;
      v39 = 0;
      v36 = 0;
      v37 = 0;
      shared_owners = 0;
      if (md::ElevationRaster::decodePngElevationRaster(v16, v17, __p, &v37, &v36))
      {
        v19 = v18 - 2;
        if (v18 < v18 - 2)
        {
          v19 = v18;
        }

        v20 = v19 + 2;
        if (v20 > v18)
        {
          goto LABEL_68;
        }

        v21 = *(v16 + v20 - 2);
        if (v21 < 0xC || v18 < v21)
        {
          if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
          }

          v23 = GEOGetVectorKitVKDefaultLog_log;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *v35 = 0;
            _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_ERROR, "DTM header verification failed.", v35, 2u);
          }

LABEL_68:
          shared_owners = 0;
LABEL_69:
          *a4 = 0;
          a4[1] = 0;
          if (__p[0])
          {
            operator delete(__p[0]);
          }

          goto LABEL_71;
        }

        v25 = v18 - v21;
        if (v18 < v25)
        {
          v25 = v18;
        }

        v26 = v25 + 4;
        if (v25 + 4 > v18)
        {
          v27 = v25 + 4;
        }

        else
        {
          v27 = v25 + 8;
          v25 += 4;
        }

        if (v27 <= v18)
        {
          v25 = v27;
        }

        if (v25 + 1 > v18)
        {
          goto LABEL_68;
        }

        v33 = v27 > v18 || v25 + 2 > v18;
        if (v33 || v26 > v18)
        {
          goto LABEL_68;
        }

LABEL_55:
        v32 = *(a2 + 8);
        gdc::ResourceKey::getInt32(v32, 2u);
        gdc::ResourceKey::getInt32(v32, 1u);
        gdc::ResourceKey::getInt32(v32, 0);
        operator new();
      }

LABEL_40:
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v24 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *v35 = 0;
        _os_log_impl(&dword_1B2754000, v24, OS_LOG_TYPE_ERROR, "failed to decode PNG DTM file", v35, 2u);
      }

      goto LABEL_69;
    }

    shared_owners = 0;
  }

  *a4 = 0;
  a4[1] = 0;
LABEL_71:
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_owners);
  }
}

void sub_1B2E8DC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::FlyoverDsmResource>::__on_zero_shared(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3 != a1[6])
  {

    free(v3);
  }
}

void std::__shared_ptr_emplace<md::FlyoverDsmResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A08E48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::ElevationRaster>::__on_zero_shared(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<md::ElevationRaster>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2B1C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DsmDecoder::~DsmDecoder(md::DsmDecoder *this)
{
  *this = &unk_1F2A08E20;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A08E20;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void md::Logic<md::ARRotateTowardsUserLogic,md::ARRotateTowardsUserContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::ARRotateTowardsUserLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v39 = *gdc::CameraView::position((*a3 + 3800));
  v40 = 0;
  v37 = xmmword_1B33B0740;
  v38 = 0;
  v4 = *(a1 + 120);
  v5 = gdc::Registry::storage<arComponents::RotateTowardsUser>(v4);
  v6 = gdc::Registry::storage<arComponents::WorldTransform>(v4);
  v7 = gdc::Registry::storage<arComponents::IsVisible>(v4);
  v8.i64[0] = v5;
  v8.i64[1] = v6;
  v9 = (v7 + 32);
  v41 = vaddq_s64(v8, vdupq_n_s64(0x20uLL));
  v42 = v7 + 32;
  v10 = v41.i64[0];
  v11 = 1;
  v12 = &v41;
  do
  {
    if (*(v41.i64[v11] + 32) - *(v41.i64[v11] + 24) < *(v10 + 32) - *(v10 + 24))
    {
      v10 = v41.i64[v11];
      v12 = (&v41 + v11 * 8);
    }

    ++v11;
  }

  while (v11 != 3);
  v13 = v12->i64[0];
  if (v5 + 4 == v12->i64[0])
  {
    v35 = v12->i64[0];
    v41.i64[0] = &v39;
    v41.i64[1] = &v37;
    v42 = a1;
    v14 = v5[7];
    v15 = v5[8];
    while (v14 != v15)
    {
      v16 = *(v14 + 4);
      Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6 + 4, v16);
      v18 = v6[8];
      if (v18 != Index && *(v7 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v9, v16))
      {
        v19 = *v14;
        v20 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v6 + 4, HIDWORD(*v14));
        if (v18 == v20)
        {
          v21 = v6[11];
        }

        else
        {
          v21 = (v6[10] + 80 * ((v20 - v6[7]) >> 3));
        }

        _ZZN2md24ARRotateTowardsUserLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_26ARRotateTowardsUserContextEENK3__0clENS5_6EntityERN12arComponents14WorldTransformE(v41.i64, v19, *v21);
      }

      v14 += 8;
    }

    v13 = v35;
  }

  if (v6 + 4 == v13)
  {
    v34 = a1;
    v36 = v13;
    v41.i64[0] = &v39;
    v41.i64[1] = &v37;
    v42 = a1;
    v23 = v6[7];
    v22 = v6[8];
    if (v23 != v22)
    {
      v24 = v6[10];
      do
      {
        v25 = *(v23 + 4);
        if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, v25) && *(v7 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v9, v25))
        {
          _ZZN2md24ARRotateTowardsUserLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_26ARRotateTowardsUserContextEENK3__0clENS5_6EntityERN12arComponents14WorldTransformE(v41.i64, *v23, *v24);
        }

        v24 += 5;
        v23 += 8;
      }

      while (v23 != v22);
    }

    a1 = v34;
    v13 = v36;
  }

  if (v9 == v13)
  {
    v41.i64[0] = &v39;
    v41.i64[1] = &v37;
    v42 = a1;
    v27 = *(v7 + 56);
    for (i = *(v7 + 64); v27 != i; v27 += 8)
    {
      v28 = *(v27 + 4);
      if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, v28))
      {
        v29 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6 + 4, v28);
        v30 = v6[8];
        if (v30 != v29)
        {
          v31 = *v27;
          v32 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v6 + 4, HIDWORD(*v27));
          if (v30 == v32)
          {
            v33 = v6[11];
          }

          else
          {
            v33 = (v6[10] + 80 * ((v32 - v6[7]) >> 3));
          }

          _ZZN2md24ARRotateTowardsUserLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_26ARRotateTowardsUserContextEENK3__0clENS5_6EntityERN12arComponents14WorldTransformE(v41.i64, v31, *v33);
        }
      }
    }
  }
}

void _ZZN2md24ARRotateTowardsUserLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_26ARRotateTowardsUserContextEENK3__0clENS5_6EntityERN12arComponents14WorldTransformE(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v5 = 0;
  v31 = *MEMORY[0x1E69E9840];
  v6 = a1[2];
  v27 = a3;
  v28 = 0;
  v7 = *a1;
  do
  {
    *(&v23 + v5 * 8) = *(v7 + v5 * 8) - v27.n128_f64[v5];
    ++v5;
  }

  while (v5 != 3);
  v8 = gm::Matrix<double,3,1>::normalized<int,void>(&v23);
  v9 = 0;
  *v26 = v8;
  v26[1] = v10;
  v26[2] = v11;
  v12 = a1[1];
  v13 = 0.0;
  do
  {
    v13 = v13 + *&v26[v9] * *(v12 + v9 * 8);
    ++v9;
  }

  while (v9 != 3);
  if (fabs(fabs(v13) + -1.0) <= 0.0001)
  {
    if (v13 >= 0.0)
    {
      return;
    }

    v18 = 0uLL;
    v19 = 0x3FF0000000000000;
    gm::quaternionFromAngleAxis<double>(&v20, &v18, 3.14159265);
  }

  else
  {
    gm::quaternionBetweenVectors<double>(&v20, v12, v26);
  }

  v23 = v20;
  v24 = v21;
  v25 = v22;
  v14 = *(v6 + 120);
  v29[0] = &unk_1F2A08FF0;
  v29[1] = &v23;
  v30 = v29;
  v15 = gdc::Registry::storage<arComponents::RotationToApply>(v14);
  v16 = gdc::ComponentStorageWrapper<arComponents::RotationToApply>::get(v15, a2);
  if (v16)
  {
    std::function<void ()(arComponents::RotationToApply &,BOOL)>::operator()(v30, v16, 0);
  }

  else
  {
    v20 = xmmword_1B33B0710;
    std::function<void ()(arComponents::RotationToApply &,BOOL)>::operator()(v30, &v20, 1);
    v18 = v20;
    v17 = gdc::Registry::storage<arComponents::RotationToApply>(v14);
    gdc::ComponentStorageWrapper<arComponents::RotationToApply>::emplace(v17, a2, &v18);
  }

  std::__function::__value_func<void ()(arComponents::RotationToApply &,BOOL)>::~__value_func[abi:nn200100](v29);
}

float _ZNSt3__110__function6__funcIZZN2md24ARRotateTowardsUserLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_26ARRotateTowardsUserContextEENK3__0clENS8_6EntityERN12arComponents14WorldTransformEEUlRNSL_15RotationToApplyEbE_NS_9allocatorISQ_EEFvSP_bEEclESP_Ob(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 8);
  do
  {
    v5 = *(v4 + 8 * v3);
    *&v8[v3++] = v5;
  }

  while (v3 != 3);
  v6 = *(v4 + 24);
  *&v8[3] = v6;
  gm::Quaternion<float>::operator*(&v9, a2, v8);
  *a2 = v9;
  *(a2 + 8) = v10;
  result = v11;
  *(a2 + 12) = v11;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN2md24ARRotateTowardsUserLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_26ARRotateTowardsUserContextEENK3__0clENS8_6EntityERN12arComponents14WorldTransformEEUlRNSL_15RotationToApplyEbE_NS_9allocatorISQ_EEFvSP_bEE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A08FF0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::Registry::storage<arComponents::RotateTowardsUser>(uint64_t a1)
{
  v3 = 0xBEA3F5CF520EA208;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBEA3F5CF520EA208);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::RotateTowardsUser>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::RotateTowardsUser>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::RotateTowardsUser>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t md::Logic<md::ARRotateTowardsUserLogic,md::ARRotateTowardsUserContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9C174DEE01931CA6 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
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

uint64_t md::Logic<md::ARRotateTowardsUserLogic,md::ARRotateTowardsUserContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9C174DEE01931CA6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 152))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARRotateTowardsUserLogic,md::ARRotateTowardsUserContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9C174DEE01931CA6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 144))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARRotateTowardsUserLogic,md::ARRotateTowardsUserContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9C174DEE01931CA6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARRotateTowardsUserLogic,md::ARRotateTowardsUserContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9C174DEE01931CA6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 128))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARRotateTowardsUserContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARRotateTowardsUserContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A09038;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARRotateTowardsUserContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A09038;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARRotateTowardsUserLogic::~ARRotateTowardsUserLogic(md::ARRotateTowardsUserLogic *this)
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

void *VertexData_Reader<TempFoundationTriangleAccessor,unsigned short>::VertexData_Reader(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(a1, **(a2 + 64), 0, (*(**(a2 + 64) + 48) - *(**(a2 + 64) + 40)) / *(**(a2 + 64) + 8), 0, a5);
  v10[6] = v10[5];
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v10 + 7, *(a2 + 96), a3, a4, 0, 1, a5);
  a1[13] = a1[12];
  a1[14] = (a4 - a3) / 3uLL;
  return a1;
}

void *VertexData_Reader<TempFoundationTriangleAccessor,unsigned int>::VertexData_Reader(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(a1, **(a2 + 64), 0, (*(**(a2 + 64) + 48) - *(**(a2 + 64) + 40)) / *(**(a2 + 64) + 8), 0, a5);
  v10[6] = v10[5];
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v10 + 7, *(a2 + 96), a3, a4, 0, a5);
  a1[13] = a1[12];
  a1[14] = (a4 - a3) / 3uLL;
  return a1;
}

uint64_t gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>>::compute(uint64_t a1)
{
  v129[12] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*(*a1 + 24) == 0.0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (*(v3 + 24) == 0.0)
  {
    return 0;
  }

  else
  {
    *(a1 + 170) = 0;
    v4 = *v3;
    v5 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v1, **v3, *(*v3 + 4));
    v7 = v6;
    v9 = v8;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v8;
    v10 = *(v3 + 8);
    v11 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v1, v10->f32[0], v10->f32[1]);
    v13 = v12;
    v15 = v14;
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v14;
    v16 = *(v3 + 16);
    v17 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v1, v16->f32[0], v16->f32[1]);
    v20 = 0;
    *(a1 + 64) = v17;
    *(a1 + 72) = v18;
    *(a1 + 80) = v19;
    if (v5 >= 0.0 && v5 <= 1.0)
    {
      v20 = v7 >= 0.0 && v7 <= 1.0 && v9 >= 0.0 && v9 <= 1.0;
    }

    v22 = *(a1 + 169) | v20;
    if (v11 >= 0.0 && v11 <= 1.0)
    {
      v24 = 0;
      v26 = v13 >= 0.0 && v13 <= 1.0;
      if (v26 && v15 >= 0.0)
      {
        v24 = 2 * (v15 <= 1.0);
      }
    }

    else
    {
      v24 = 0;
    }

    v27 = v24 | v22;
    if (v17 >= 0.0 && v17 <= 1.0)
    {
      v29 = 0;
      v30 = v18 >= 0.0 && v18 <= 1.0;
      if (v30 && v19 >= 0.0)
      {
        v29 = 4 * (v19 <= 1.0);
      }
    }

    else
    {
      v29 = 0;
    }

    *(a1 + 169) = v29 | v27;
    v31 = *v1;
    v32 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v3, **v1, *(*v1 + 4));
    v34 = v33;
    v36 = v35;
    *(a1 + 96) = v32;
    *(a1 + 104) = v33;
    *(a1 + 112) = v35;
    v37 = *(v1 + 8);
    v38 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v3, v37->f32[0], v37->f32[1]);
    v40 = v39;
    v42 = v41;
    *(a1 + 120) = v38;
    *(a1 + 128) = v39;
    *(a1 + 136) = v41;
    v43 = *(v1 + 16);
    v44 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v3, v43->f32[0], v43->f32[1]);
    v47 = 0;
    *(a1 + 144) = v44;
    *(a1 + 152) = v45;
    *(a1 + 160) = v46;
    if (v32 >= 0.0 && v32 <= 1.0)
    {
      v47 = v34 >= 0.0 && v34 <= 1.0 && v36 >= 0.0 && v36 <= 1.0;
    }

    v48 = 0;
    if (v38 >= 0.0 && v38 <= 1.0)
    {
      v48 = 0;
      if (v40 >= 0.0 && v40 <= 1.0 && v42 >= 0.0)
      {
        v48 = 2 * (v42 <= 1.0);
      }
    }

    v49 = 0;
    if (v44 >= 0.0 && v44 <= 1.0)
    {
      v49 = 0;
      if (v45 >= 0.0 && v45 <= 1.0 && v46 >= 0.0)
      {
        v49 = 4 * (v46 <= 1.0);
      }
    }

    *(a1 + 168) |= v49 | v48 | v47;
    v123 = vcvtq_f64_f32(*v31);
    v50 = vcvtq_f64_f32(*v37);
    v124 = v50;
    v51 = vcvtq_f64_f32(*v43);
    v125 = v51;
    v52 = vcvtq_f64_f32(*v4);
    v53 = vcvtq_f64_f32(*v10);
    v120 = v52;
    v121 = v53;
    v54 = vcvtq_f64_f32(*v16);
    v122 = v54;
    v55 = vsubq_f64(v51, v123);
    v56 = vmulq_f64(vextq_s8(v55, v55, 8uLL), vsubq_f64(v50, v123));
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v56, 1), v56)).u8[0])
    {
      v124 = v51;
      v125 = v50;
    }

    v57 = vsubq_f64(v53, v52);
    v58 = vsubq_f64(v54, v52);
    v59 = vmulq_f64(v57, vextq_s8(v58, v58, 8uLL));
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v59, 1), v59)).u8[0])
    {
      v121 = v54;
      v122 = v53;
    }

    v116 = v118;
    v117 = 6;
    v114 = v118;
    v115 = v118;
    *&buf = v129;
    *(&buf + 1) = v129;
    v127 = v129;
    v128 = 6;
    geo::small_vector_base<gm::Matrix<double,2,1>>::insert<gm::Matrix<double,2,1>*>(&buf, v129, &v123, &buf);
    v60 = 0;
    v61 = &v114;
    p_buf = &buf;
    do
    {
      v63 = p_buf;
      v64 = v60 + 1;
      if (v60 == 2)
      {
        v65 = 0;
      }

      else
      {
        v65 = v60 + 1;
      }

      if (v60)
      {
        p_buf = v61;
      }

      v66 = (v61 + 1);
      if (v60)
      {
        v61 = v63;
      }

      v67 = v63 + 1;
      if (v60)
      {
        v68 = v67;
      }

      else
      {
        v68 = v66;
      }

      v61[1] = *v61;
      if (v60)
      {
        v69 = v66;
      }

      else
      {
        v69 = v67;
      }

      v70 = *p_buf;
      v71 = *(p_buf + 1);
      v72 = v71 - *p_buf;
      if (v71 != *p_buf)
      {
        v73 = 0;
        v74 = *(&v120 + v60);
        v75 = v72 >> 4;
        v109 = vsubq_f64(*(&v120 + v65), v74);
        v110 = v74;
        v112 = vextq_s8(v109, v109, 8uLL);
        do
        {
          v76 = v73 + 1;
          if (v73 + 1 == v75)
          {
            v77 = 0;
          }

          else
          {
            v77 = v73 + 1;
          }

          v78 = (v70 + 16 * v77);
          v79 = *v78;
          v80 = *(v70 + 16 * v73);
          v81 = vsubq_f64(v80, v110);
          v82 = vmulq_f64(vextq_s8(v81, v81, 8uLL), v109);
          v83 = vmulq_f64(vsubq_f64(*v78, v110), v112);
          v84 = vdupq_laneq_s64(v83, 1);
          v85 = vcgtq_f64(v84, v83);
          if ((vmovn_s64(veorq_s8(vcgeq_f64(vdupq_laneq_s64(v82, 1), v82), v85)).u8[0] & 1) == 0)
          {
            v86 = vsubq_f64(v79, v80);
            v87 = vmulq_f64(v86, v112);
            v88 = vsubq_f64(v87, vdupq_laneq_s64(v87, 1));
            if (v88.f64[0] != 0.0)
            {
              v119 = vmlsq_lane_f64(v79, v86, vdivq_f64(vsubq_f64(v83, v84), v88).f64[0], 0);
              v108 = v85;
              geo::small_vector_base<gm::Matrix<double,2,1>>::push_back(v61, &v119);
              v85 = v108;
            }
          }

          if (vmovn_s64(v85).u32[0])
          {
            geo::small_vector_base<gm::Matrix<double,2,1>>::push_back(v61, v78);
          }

          v70 = *p_buf;
          v75 = (*v69 - *p_buf) >> 4;
          v73 = v76;
        }

        while (v76 < v75);
      }

      v60 = v64;
    }

    while (v64 != 3);
    if (v61 != &v114)
    {
      v115 = v114;
      geo::small_vector_base<gm::Matrix<double,2,1>>::insert<gm::Matrix<double,2,1>*>(&v114, v114, *v61, *v68);
    }

    if (buf != v127)
    {
      free(buf);
    }

    v89 = v114;
    v90 = (v115 - v114) >> 4;
    if (v90 <= 2)
    {
      v25 = *(a1 + 170);
    }

    else
    {
      if (v90 >= 7)
      {
        v91 = GEOGetGeoDisplayCoreDefaultLog();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = (v115 - v114) >> 4;
          _os_log_impl(&dword_1B2754000, v91, OS_LOG_TYPE_ERROR, "Exceeded triangle storage for polygon intersection (%zu verts)", &buf, 0xCu);
        }

        v89 = v114;
        v90 = (v115 - v114) >> 4;
      }

      if (v90 >= 6)
      {
        v92 = 6;
      }

      else
      {
        v92 = v90;
      }

      v25 = *(a1 + 170);
      if (v92 - 1 >= 2)
      {
        v93 = *a1;
        v94 = v92 - 2;
        v95 = 1;
        do
        {
          v96 = v89[v95++];
          v111 = v96;
          v113 = v89[v95 % v92];
          v97 = vcvt_f32_f64(*v89);
          v98 = a1 + 176 + 72 * v25;
          *v98 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v93, v97.f32[0], v97.f32[1]);
          *(v98 + 8) = v99;
          *(v98 + 16) = v100;
          v101 = vcvt_f32_f64(v111);
          *(v98 + 24) = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v93, v101.f32[0], v101.f32[1]);
          *(v98 + 32) = v102;
          *(v98 + 40) = v103;
          v104 = vcvt_f32_f64(v113);
          *(v98 + 48) = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v93, v104.f32[0], v104.f32[1]);
          *(v98 + 56) = v105;
          *(v98 + 64) = v106;
          *(a1 + 170) = ++v25;
          --v94;
        }

        while (v94);
      }
    }

    if (v89 != v116)
    {
      free(v89);
    }
  }

  return v25;
}

uint64_t FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(int8x16_t a1, double a2, float32_t a3, float32x2_t a4, float32_t a5, float32x2_t a6, float32x2_t a7)
{
  a4.f32[1] = a5;
  a6.f32[1] = a3;
  v7 = vmulq_n_f64(vcvtq_f64_f32(a7), a2);
  v8 = vmaxnmq_f64(vmlaq_f64(vmlaq_f64(vextq_s8(v7, v7, 8uLL), vcvtq_f64_f32(a6), vextq_s8(a1, a1, 8uLL)), a1, vcvtq_f64_f32(a4)), 0);
  v9 = vmovn_s64(vcgtq_f64(v8, vdupq_n_s64(0x40EFFFE000000000uLL)));
  if (v9.i8[0])
  {
    v10 = -65536;
  }

  else
  {
    v10 = v8.f64[0] << 16;
  }

  if (v9.i8[4])
  {
    v11 = 0xFFFF;
  }

  else
  {
    v11 = v8.f64[1];
  }

  return v10 | v11;
}

void geo::small_vector_base<gm::Matrix<double,2,1>>::insert<gm::Matrix<double,2,1>*>(uint64_t *a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v5 = a3;
  v8 = *a1;
  v7 = a1[1];
  v9 = a2 - *a1;
  v10 = a4 - a3;
  v11 = a4 - a3;
  if (v7 == a2)
  {
    if (v11 > a1[3] - (v9 >> 4))
    {
      geo::small_vector_base<gm::Matrix<double,2,1>>::grow(a1, (v9 >> 4) + v11);
      v7 = a1[1];
    }

    if (v5 != a4)
    {
      do
      {
        v18 = *v5++;
        *v7 = v18;
        v7 += 2;
      }

      while (v5 != a4);
      v7 = a1[1];
    }

    a1[1] = v7 + v10;
  }

  else
  {
    v12 = v11 + ((v7 - v8) >> 4);
    if (a1[3] < v12)
    {
      geo::small_vector_base<gm::Matrix<double,2,1>>::grow(a1, v12);
      v8 = *a1;
      v7 = a1[1];
    }

    v13 = (v8 + v9);
    a1[1] = v7 + v10;
    if (v7 != v13)
    {
      v14 = v7 - 1;
      v15 = (v14 + v10);
      do
      {
        v16 = v14 - 1;
        *(v15 - 1) = *(v14 - 1);
        v17 = *v14;
        v14 -= 2;
        *v15 = v17;
        v15 -= 2;
      }

      while (v16 != v13);
    }

    while (v5 != a4)
    {
      *v13 = *v5;
      v13[1] = *(v5++ + 1);
      v13 += 2;
    }
  }
}

BOOL gm::LineSegment<double,2>::intersect<double,void>(float64x2_t *a1, float64x2_t *a2, double *a3, double *a4, float64x2_t *a5)
{
  v5 = a1[1];
  v7 = a2[1].f64[0];
  v6 = a2[1].f64[1];
  v8 = -(vmuld_lane_f64(v7, v5, 1) - v6 * v5.f64[0]);
  if (v8 != 0.0)
  {
    v9 = vsubq_f64(vaddq_f64(*a1, v5), *a2);
    *a3 = -(vmuld_lane_f64(v7, v9, 1) - v9.f64[0] * v6) * (1.0 / v8);
    v10 = vmulq_f64(v9, vextq_s8(v5, v5, 8uLL));
    *a4 = 1.0 / v8 * vsubq_f64(vdupq_laneq_s64(v10, 1), v10).f64[0];
    if (a5)
    {
      *a5 = vmlsq_lane_f64(vaddq_f64(a1[1], *a1), v5, *a3, 0);
    }
  }

  return v8 != 0.0;
}

__n128 geo::small_vector_base<gm::Matrix<double,2,1>>::push_back(void *a1, __n128 *a2)
{
  v4 = a1[1];
  v5 = ((v4 - *a1) >> 4) + 1;
  if (a1[3] < v5)
  {
    geo::small_vector_base<gm::Matrix<double,2,1>>::grow(a1, v5);
    v4 = a1[1];
  }

  result = *a2;
  *v4 = *a2;
  a1[1] += 16;
  return result;
}

void geo::small_vector_base<gm::Matrix<double,2,1>>::grow(uint64_t a1, unint64_t a2)
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

  v10 = malloc_type_malloc(16 * v9, 0x1000040451B5BE8uLL);
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
  *(a1 + 8) = v11 + v4 - v3;
  *(a1 + 24) = v9;
}

uint64_t geo::containsPoint<float>(uint64_t a1, uint64_t a2, float *a3)
{
  v3 = a2 - a1;
  if (a2 == a1)
  {
    v31 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 3;
    v8 = *a3;
    v7 = a3[1];
    if ((v3 >> 3) <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v3 >> 3;
    }

    v10 = 1;
    do
    {
      v11 = 0;
      v12 = (a1 + 8 * v5++);
      v13 = 1;
      do
      {
        v14 = v12[v11];
        v15 = a3[v11];
        v16 = vabds_f32(v14, v15);
        v17 = v16 <= (fabsf(v15 + v14) * 0.000011921) || v16 <= 1.1755e-38;
        if ((v13 & 1) == 0)
        {
          break;
        }

        v13 = 0;
        v11 = 1;
      }

      while (v17);
      v18 = v5 == v6 ? 0 : v5;
      if (v17)
      {
        break;
      }

      v19 = (a1 + 8 * v18);
      v20 = v12[1];
      v21 = v19[1];
      if (v20 == v21 && v20 == v7)
      {
        v23 = *v19;
        if (*v12 <= v8 && v23 >= v8)
        {
          break;
        }

        if (v23 <= v8 && *v12 >= v8)
        {
          break;
        }
      }

      v26 = v20 > v7 || v21 <= v7;
      if (!v26 || (v21 <= v7 ? (v27 = v20 <= v7) : (v27 = 1), !v27))
      {
        v28 = *v12;
        if (*v12 != *v19)
        {
          v28 = (((*v19 - v28) * (v7 - v20)) / (v21 - v20)) + v28;
        }

        v29 = vabds_f32(v8, v28);
        if (v29 <= (fabsf(v8 + v28) * 0.000011921) || v29 < 1.1755e-38)
        {
          break;
        }

        if (v28 < v8)
        {
          ++v4;
        }
      }

      v10 = v5 < v6;
    }

    while (v5 != v9);
    v31 = v10 | v4;
  }

  return v31 & 1;
}

uint64_t gm::LineSegment<float,2>::intersects<float,void>(float32x2_t *a1, float32x2_t a2, double a3)
{
  v4 = a1[1].f32[0];
  v3 = a1[1].f32[1];
  v5 = -(vmuls_lane_f32(v4, *&a3, 1) - (v3 * *&a3));
  if (v5 == 0.0)
  {
    v11 = 0;
  }

  else
  {
    v6 = vsub_f32(vadd_f32(a2, *&a3), *a1);
    v7 = vmul_f32(v6, vrev64_s32(*&a3));
    *v8.f32 = vdup_lane_s32(vsub_f32(vdup_lane_s32(v7, 1), v7), 0);
    v8.f32[0] = -(vmuls_lane_f32(v4, v6, 1) - (v6.f32[0] * v3));
    v8.i64[1] = v8.i64[0];
    v9 = vmulq_n_f32(v8, 1.0 / v5);
    v10.i32[0] = vmovn_s32(vcgeq_f32(xmmword_1B33B09C0, v9)).u32[0];
    v10.i32[1] = vmovn_s32(vcgeq_f32(v9, xmmword_1B33B09C0)).i32[1];
    v11 = vminv_u16(vcltz_s16(vshl_n_s16(v10, 0xFuLL)));
  }

  return v11 & 1;
}

uint64_t std::__shared_ptr_pointer<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo> *,std::shared_ptr<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>>::__shared_ptr_default_delete<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>,ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>>,std::allocator<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo> *,std::shared_ptr<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>>::__shared_ptr_default_delete<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>,ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>>,std::allocator<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<std::shared_ptr<ggl::PolylineOverlayRibbon::ElevatedMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::PolylineOverlayRibbon::BakedWidthMesh,ggl::PolylineOverlayRibbon::ElevatedMesh,RibbonOverlayTriangleAccessor,StrokeTriangle>(md::FoundationMesh const&,ggl::PolylineOverlayRibbon::BakedWidthMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<ggl::PolylineOverlayRibbon::ElevatedMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::PolylineOverlayRibbon::BakedWidthMesh,ggl::PolylineOverlayRibbon::ElevatedMesh,RibbonOverlayTriangleAccessor,StrokeTriangle>(md::FoundationMesh const&,ggl::PolylineOverlayRibbon::BakedWidthMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 24);
  v5 = (*(*(v4 + 96) + 48) - *(*(v4 + 96) + 40)) / *(*(v4 + 96) + 8);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v109, **(v4 + 64), 0, (*(**(v4 + 64) + 48) - *(**(v4 + 64) + 40)) / *(**(v4 + 64) + 8), 0, *a2);
  v110 = v109[5];
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v111, *(v4 + 96), 0, v5, 0, 1, v3);
  v112 = v111[5];
  v113 = v5 / 3;
  v6 = *(a1 + 8);
  v7 = *(v6[12] + 216);
  if (v7 != 1)
  {
    if (v7)
    {
      goto LABEL_102;
    }

    VertexData_Reader<TempFoundationTriangleAccessor,unsigned short>::VertexData_Reader(v104, v6, v6[18], v6[19], v3);
    v8 = *(a1 + 40);
    v9 = **(a1 + 32);
    v11 = *v8;
    v10 = v8[1];
    v92 = **(a1 + 48);
    v88 = *(a1 + 8);
    v96 = *(a1 + 16);
    v98 = *(a1 + 56);
    *(v98 + 8) = 0;
    *v98 = 0;
    if (!v108 || !v113)
    {
      goto LABEL_101;
    }

    v147[0].n128_u8[0] = 0;
    v86 = v113;
    std::vector<BOOL>::vector(__p, v113);
    v12 = 0;
    v13 = v86;
    while (1)
    {
      v14 = __p[0];
      v15 = v12 >> 6;
      v16 = 1 << v12;
      if ((*(__p[0] + (v12 >> 6)) & (1 << v12)) == 0)
      {
        v17 = (v112 + 6 * v12);
        v18 = (v110 + 16 * v17[1]);
        v19 = (v110 + 16 * v17[2]);
        v142 = (v110 + 16 * *v17);
        v143 = v18;
        v144 = v19;
        v20 = vmul_f32(vsub_f32(*v142, *v19), vrev64_s32(vsub_f32(*v18, *v19)));
        *v20.i32 = vsub_f32(v20, vdup_lane_s32(v20, 1)).f32[0];
        v145 = *v20.i32;
        if (*v20.i32 != 0.0)
        {
          v90 = v12;
          if (gdc::_triangleIntersectsBox<gdc::Triangle<RibbonOverlayTriangleAccessor>,float>(&v142, v88 + 184))
          {
            v100 = v108;
            if (v108)
            {
              v21 = 0;
              v22 = 0;
              while (1)
              {
                v23 = (v105 + 16 * *(v107 + v21 + 2));
                v24 = *(v107 + v21 + 4);
                *&v139 = v105 + 16 * *(v107 + v21);
                *(&v139 + 1) = v23;
                *&v140 = v105 + 16 * v24;
                *(&v140 + 1) = (((*(v140 + 4) - *(v139 + 4)) * (*v23 - *v140)) + ((*v139 - *v140) * (v23[1] - *(v140 + 4))));
                v147[0].n128_u64[0] = &v139;
                v147[0].n128_u64[1] = &v142;
                v148 = 0;
                v149 = 0;
                if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>>::compute(v147))
                {
                  break;
                }

                ++v22;
                v21 += 6;
                if (v100 == v22)
                {
                  v14 = __p[0];
                  goto LABEL_14;
                }
              }

              ++*(v98 + 4);
              v140 = 0u;
              v141 = 0u;
              v139 = 0u;
              v147[0].n128_u64[0] = v90;
              v147[0].n128_u64[1] = v22;
              std::deque<gdc::TrianglePair>::push_back(&v139, v147);
              while (*(&v141 + 1))
              {
                *v138 = *(*(*(&v139 + 1) + ((v141 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v141);
                --*(&v141 + 1);
                *&v141 = v141 + 1;
                if (v141 >= 0x200)
                {
                  operator delete(**(&v139 + 1));
                  *(&v139 + 1) += 8;
                  *&v141 = v141 - 256;
                }

                v136 = 0u;
                v137 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v134 = 1065353216;
                std::deque<unsigned long>::push_back(&v135, &v138[2]);
                std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, *&v138[2]);
                v94 = *v138;
                gdc::_overlayNeighborsNoDegenerates<VertexData_Reader<RibbonOverlayTriangleAccessor,unsigned short>>(&v129, v109, v92, v138[0], __p);
                v126 = 0u;
                v127 = 0u;
                v128 = 1065353216;
                v25 = *(&v137 + 1);
                if (*(&v137 + 1))
                {
                  v101 = 6 * v94;
                  do
                  {
                    v26 = *(*(*(&v135 + 1) + ((v137 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v137 & 0x1FF));
                    *(&v137 + 1) = v25 - 1;
                    *&v137 = v137 + 1;
                    if (v137 >= 0x400)
                    {
                      operator delete(**(&v135 + 1));
                      *(&v135 + 1) += 8;
                      *&v137 = v137 - 512;
                    }

                    v27 = (v110 + 16 * *(v112 + v101 + 2));
                    v28 = (v110 + 16 * *(v112 + v101 + 4));
                    v122 = (v110 + 16 * *(v112 + 6 * v94));
                    v123 = v27;
                    v124 = v28;
                    v125 = (((v28[1] - v122[1]) * (*v27 - *v28)) + ((*v122 - *v28) * (v27[1] - v28[1])));
                    v29 = (v107 + 6 * v26);
                    v30 = (v105 + 16 * v29[1]);
                    v31 = (v105 + 16 * v29[2]);
                    v118 = (v105 + 16 * *v29);
                    v119 = v30;
                    v120 = v31;
                    v121 = (((v31[1] - v118[1]) * (*v30 - *v31)) + ((*v118 - *v31) * (v30[1] - v31[1])));
                    v32 = gdc::clipFoundationAgainstOverlayTriangle<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>,VertexData_Writer<StrokeTriangle>>(&v118, &v122, v96);
                    ++*v98;
                    if (v32)
                    {
                      v33 = v129;
                      if (v129 != v130)
                      {
                        do
                        {
                          v34 = *v33;
                          v35 = (v112 + 6 * v34);
                          v36 = (v110 + 16 * *v35);
                          v37 = (v110 + 16 * v35[1]);
                          v38 = v35[2];
                          v114 = v36;
                          v115 = v37;
                          v116 = (v110 + 16 * v38);
                          v117 = (((v116[1] - v36[1]) * (*v37 - *v116)) + ((*v36 - *v116) * (v37[1] - v116[1])));
                          v147[0].n128_u64[0] = &v118;
                          v147[0].n128_u64[1] = &v114;
                          v148 = 0;
                          v149 = 0;
                          if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>>::compute(v147))
                          {
                            v147[0].n128_u64[0] = v34;
                            v147[0].n128_u64[1] = v26;
                            std::deque<gdc::TrianglePair>::push_back(&v139, v147);
                            v39 = v130;
                            if (v33 + 1 != v130)
                            {
                              memmove(v33, v33 + 1, ((v130 - v33) & 0xFFFFFFFFFFFFFFFCLL) - 4);
                            }

                            v40 = v39 - 1;
                            v130 = v39 - 1;
                          }

                          else
                          {
                            ++v33;
                            v40 = v130;
                          }
                        }

                        while (v33 != v40);
                      }

                      v41 = gdc::TriangularDCEL::outerComponent(v9, v26 + v11);
                      v42 = v41;
                      v43 = v41;
                      do
                      {
                        v44 = gdc::TriangularDCEL::twin(v9, v43);
                        v45 = gdc::TriangularDCEL::incidentFace(v9, v44);
                        if (v45 != 0x3FFFFFFF)
                        {
                          v46 = v45;
                          if (v45 <= (((*(v9 + 10) - *(v9 + 9)) >> 2) / 3uLL) && !gdc::TriangularDCEL::_isBadFace(v9, v45) && v46 >= v11 && v46 < v10)
                          {
                            v147[0].n128_u64[0] = v46 - v11;
                            if (!std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(&v132, v147[0].n128_u64[0]))
                            {
                              std::deque<unsigned long>::push_back(&v135, v147);
                              std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, v46 - v11);
                            }
                          }
                        }

                        v43 = gdc::TriangularDCEL::next(v9, v43);
                      }

                      while (v43 != v42);
                    }

                    v25 = *(&v137 + 1);
                  }

                  while (*(&v137 + 1));
                }

                *(__p[0] + ((v94 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v94;
                std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v126);
                if (v129 != v131)
                {
                  free(v129);
                }

                std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v132);
                std::deque<unsigned long>::~deque[abi:nn200100](&v135);
              }

              std::deque<gdc::TrianglePair>::~deque[abi:nn200100](&v139);
              goto LABEL_18;
            }

LABEL_14:
            ++*(v98 + 4);
          }

          else
          {
            ++*(v98 + 8);
          }

          v14[v15] |= v16;
LABEL_18:
          v13 = v86;
          v12 = v90;
          goto LABEL_19;
        }

        *(__p[0] + v15) |= v16;
      }

LABEL_19:
      if (++v12 == v13)
      {
        goto LABEL_99;
      }
    }
  }

  VertexData_Reader<TempFoundationTriangleAccessor,unsigned int>::VertexData_Reader(v104, v6, v6[18], v6[19], v3);
  v47 = *(a1 + 40);
  v48 = **(a1 + 32);
  v50 = *v47;
  v49 = v47[1];
  v93 = **(a1 + 48);
  v89 = *(a1 + 8);
  v97 = *(a1 + 16);
  v99 = *(a1 + 56);
  *(v99 + 8) = 0;
  *v99 = 0;
  if (!v108 || !v113)
  {
    goto LABEL_101;
  }

  v147[0].n128_u8[0] = 0;
  v87 = v113;
  std::vector<BOOL>::vector(__p, v113);
  v51 = 0;
  v52 = v87;
  do
  {
    v53 = __p[0];
    v54 = v51 >> 6;
    v55 = 1 << v51;
    if ((*(__p[0] + (v51 >> 6)) & (1 << v51)) != 0)
    {
      goto LABEL_67;
    }

    v56 = (v112 + 6 * v51);
    v57 = (v110 + 16 * v56[1]);
    v58 = (v110 + 16 * v56[2]);
    v142 = (v110 + 16 * *v56);
    v143 = v57;
    v144 = v58;
    v59 = vmul_f32(vsub_f32(*v142, *v58), vrev64_s32(vsub_f32(*v57, *v58)));
    *v59.i32 = vsub_f32(v59, vdup_lane_s32(v59, 1)).f32[0];
    v145 = *v59.i32;
    if (*v59.i32 == 0.0)
    {
      *(__p[0] + v54) |= v55;
      goto LABEL_67;
    }

    v91 = v51;
    if (gdc::_triangleIntersectsBox<gdc::Triangle<RibbonOverlayTriangleAccessor>,float>(&v142, v89 + 184))
    {
      v102 = v108;
      if (v108)
      {
        v60 = 0;
        v61 = 0;
        while (1)
        {
          v62 = (v105 + 16 * *(v107 + v60 + 4));
          v63 = *(v107 + v60 + 8);
          *&v139 = v105 + 16 * *(v107 + v60);
          *(&v139 + 1) = v62;
          *&v140 = v105 + 16 * v63;
          *(&v140 + 1) = (((*(v140 + 4) - *(v139 + 4)) * (*v62 - *v140)) + ((*v139 - *v140) * (v62[1] - *(v140 + 4))));
          v147[0].n128_u64[0] = &v139;
          v147[0].n128_u64[1] = &v142;
          v148 = 0;
          v149 = 0;
          if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>>::compute(v147))
          {
            break;
          }

          ++v61;
          v60 += 12;
          if (v102 == v61)
          {
            v53 = __p[0];
            goto LABEL_62;
          }
        }

        ++*(v99 + 4);
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        v147[0].n128_u64[0] = v91;
        v147[0].n128_u64[1] = v61;
        std::deque<gdc::TrianglePair>::push_back(&v139, v147);
        while (*(&v141 + 1))
        {
          *v138 = *(*(*(&v139 + 1) + ((v141 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v141);
          --*(&v141 + 1);
          *&v141 = v141 + 1;
          if (v141 >= 0x200)
          {
            operator delete(**(&v139 + 1));
            *(&v139 + 1) += 8;
            *&v141 = v141 - 256;
          }

          v136 = 0u;
          v137 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v134 = 1065353216;
          std::deque<unsigned long>::push_back(&v135, &v138[2]);
          std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, *&v138[2]);
          v95 = *v138;
          gdc::_overlayNeighborsNoDegenerates<VertexData_Reader<RibbonOverlayTriangleAccessor,unsigned short>>(&v129, v109, v93, v138[0], __p);
          v126 = 0u;
          v127 = 0u;
          v128 = 1065353216;
          v64 = *(&v137 + 1);
          if (*(&v137 + 1))
          {
            v103 = 6 * v95;
            do
            {
              v65 = *(*(*(&v135 + 1) + ((v137 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v137 & 0x1FF));
              *(&v137 + 1) = v64 - 1;
              *&v137 = v137 + 1;
              if (v137 >= 0x400)
              {
                operator delete(**(&v135 + 1));
                *(&v135 + 1) += 8;
                *&v137 = v137 - 512;
              }

              v66 = (v110 + 16 * *(v112 + v103 + 2));
              v67 = (v110 + 16 * *(v112 + v103 + 4));
              v122 = (v110 + 16 * *(v112 + 6 * v95));
              v123 = v66;
              v124 = v67;
              v125 = (((v67[1] - v122[1]) * (*v66 - *v67)) + ((*v122 - *v67) * (v66[1] - v67[1])));
              v68 = (v107 + 12 * v65);
              v69 = (v105 + 16 * v68[1]);
              v70 = (v105 + 16 * v68[2]);
              v118 = (v105 + 16 * *v68);
              v119 = v69;
              v120 = v70;
              v121 = (((v70[1] - v118[1]) * (*v69 - *v70)) + ((*v118 - *v70) * (v69[1] - v70[1])));
              v71 = gdc::clipFoundationAgainstOverlayTriangle<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>,VertexData_Writer<StrokeTriangle>>(&v118, &v122, v97);
              ++*v99;
              if (v71)
              {
                v72 = v129;
                if (v129 != v130)
                {
                  do
                  {
                    v73 = *v72;
                    v74 = (v112 + 6 * v73);
                    v75 = (v110 + 16 * *v74);
                    v76 = (v110 + 16 * v74[1]);
                    v77 = v74[2];
                    v114 = v75;
                    v115 = v76;
                    v116 = (v110 + 16 * v77);
                    v117 = (((v116[1] - v75[1]) * (*v76 - *v116)) + ((*v75 - *v116) * (v76[1] - v116[1])));
                    v147[0].n128_u64[0] = &v118;
                    v147[0].n128_u64[1] = &v114;
                    v148 = 0;
                    v149 = 0;
                    if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>>::compute(v147))
                    {
                      v147[0].n128_u64[0] = v73;
                      v147[0].n128_u64[1] = v65;
                      std::deque<gdc::TrianglePair>::push_back(&v139, v147);
                      v78 = v130;
                      if (v72 + 1 != v130)
                      {
                        memmove(v72, v72 + 1, ((v130 - v72) & 0xFFFFFFFFFFFFFFFCLL) - 4);
                      }

                      v79 = v78 - 1;
                      v130 = v78 - 1;
                    }

                    else
                    {
                      ++v72;
                      v79 = v130;
                    }
                  }

                  while (v72 != v79);
                }

                v80 = gdc::TriangularDCEL::outerComponent(v48, v65 + v50);
                v81 = v80;
                v82 = v80;
                do
                {
                  v83 = gdc::TriangularDCEL::twin(v48, v82);
                  v84 = gdc::TriangularDCEL::incidentFace(v48, v83);
                  if (v84 != 0x3FFFFFFF)
                  {
                    v85 = v84;
                    if (v84 <= (((*(v48 + 10) - *(v48 + 9)) >> 2) / 3uLL) && !gdc::TriangularDCEL::_isBadFace(v48, v84) && v85 >= v50 && v85 < v49)
                    {
                      v147[0].n128_u64[0] = v85 - v50;
                      if (!std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(&v132, v147[0].n128_u64[0]))
                      {
                        std::deque<unsigned long>::push_back(&v135, v147);
                        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, v85 - v50);
                      }
                    }
                  }

                  v82 = gdc::TriangularDCEL::next(v48, v82);
                }

                while (v82 != v81);
              }

              v64 = *(&v137 + 1);
            }

            while (*(&v137 + 1));
          }

          *(__p[0] + ((v95 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v95;
          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v126);
          if (v129 != v131)
          {
            free(v129);
          }

          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v132);
          std::deque<unsigned long>::~deque[abi:nn200100](&v135);
        }

        std::deque<gdc::TrianglePair>::~deque[abi:nn200100](&v139);
        goto LABEL_66;
      }

LABEL_62:
      ++*(v99 + 4);
    }

    else
    {
      ++*(v99 + 8);
    }

    v53[v54] |= v55;
LABEL_66:
    v52 = v87;
    v51 = v91;
LABEL_67:
    ++v51;
  }

  while (v51 != v52);
LABEL_99:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

LABEL_101:
  ggl::BufferMemory::~BufferMemory(&v106);
  ggl::BufferMemory::~BufferMemory(v104);
LABEL_102:
  ggl::BufferMemory::~BufferMemory(v111);
  ggl::BufferMemory::~BufferMemory(v109);
}

void sub_1B2E90BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  ggl::BufferMemory::~BufferMemory(&a24);
  ggl::BufferMemory::~BufferMemory(&a17);
  ggl::BufferMemory::~BufferMemory(&a39);
  ggl::BufferMemory::~BufferMemory(&a32);
  _Unwind_Resume(a1);
}

BOOL gdc::_triangleIntersectsBox<gdc::Triangle<RibbonOverlayTriangleAccessor>,float>(uint64_t **a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1[1];
  v4 = &v21;
  v21 = **a1;
  v22 = v21;
  v5 = 1;
  do
  {
    v6 = *(v3 + v2);
    v7 = v5;
    *v4 = fminf(v6, *v4);
    *(&v22 + v2) = fmaxf(*(&v22 + v2), v6);
    v4 = &v21 + 1;
    v2 = 1;
    v5 = 0;
  }

  while ((v7 & 1) != 0);
  v8 = 0;
  v9 = a1[2];
  v10 = &v21;
  v11 = 1;
  do
  {
    v12 = *(v9 + v8);
    v13 = v11;
    *v10 = fminf(v12, *v10);
    *(&v22 + v8) = fmaxf(*(&v22 + v8), v12);
    v10 = &v21 + 1;
    v8 = 1;
    v11 = 0;
  }

  while ((v13 & 1) != 0);
  v14 = 0;
  v15 = 0;
  v16 = &v21;
  while (*(a2 + 8 + 4 * v15) > *v16)
  {
    v17 = *(a2 + 4 * v15);
    v18 = *(&v22 + v15);
    v15 = 1;
    v19 = (v17 < v18) & ~v14;
    v14 = 1;
    v16 = &v21 + 1;
    if ((v19 & 1) == 0)
    {
      return v17 < v18;
    }
  }

  return 0;
}

__n128 std::deque<gdc::TrianglePair>::push_back(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x100)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v12);
    }

    a1[4] = v7 - 256;
    v14 = *v5;
    a1[1] = v5 + 8;
    std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(a1, &v14);
    v5 = a1[1];
    v8 = a1[5] + a1[4];
  }

  result = *a2;
  *(*&v5[(v8 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v8) = *a2;
  ++a1[5];
  return result;
}

void sub_1B2E91278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *std::deque<unsigned long>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[4];
  v8 = result[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x200)
    {
      v9 = result[3];
      v10 = v9 - *result;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *result)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(v12);
    }

    result[4] = v7 - 512;
    v13 = *v5;
    result[1] = v5 + 8;
    result = std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(result, &v13);
    v5 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*&v5[(v8 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void sub_1B2E91770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

const gdc::TriangularDCEL::HalfEdge *gdc::_overlayNeighborsNoDegenerates<VertexData_Reader<RibbonOverlayTriangleAccessor,unsigned short>>(uint64_t a1, uint64_t a2, gdc::TriangularDCEL *this, unsigned int a4, void *a5)
{
  *a1 = a1 + 32;
  *(a1 + 8) = a1 + 32;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 3;
  v7 = gdc::TriangularDCEL::outerComponent(this, a4);
  v8 = v7;
  v9 = v7;
  v28 = a5;
  do
  {
    v10 = gdc::TriangularDCEL::twin(this, v9);
    v11 = gdc::TriangularDCEL::incidentFace(this, v10);
    v34 = v11;
    if (v11 != 0x3FFFFFFF)
    {
      v12 = v11;
      v13 = ((*(this + 10) - *(this + 9)) >> 2) / 3uLL;
      if (v11 <= v13 && !gdc::TriangularDCEL::_isBadFace(this, v11))
      {
        v14 = *a5;
        if (((*(*a5 + ((v12 >> 3) & 0x1FFFFFF8)) >> v12) & 1) == 0)
        {
          v15 = *(a2 + 48);
          v31 = *(a2 + 104);
          v16 = (v31 + 6 * v12);
          v17 = *(v15 + 16 * v16[2]);
          v18 = vmul_f32(vsub_f32(*(v15 + 16 * *v16), v17), vrev64_s32(vsub_f32(*(v15 + 16 * v16[1]), v17)));
          if (vmvn_s8(vceq_f32(v18, vdup_lane_s32(v18, 1))).u8[0])
          {
            geo::small_vector_base<unsigned int>::push_back(a1, &v34);
          }

          else
          {
            LOBYTE(v32) = 0;
            v33 = 0;
            v19 = gdc::TriangularDCEL::next(this, v10);
            while (1)
            {
              v20 = gdc::TriangularDCEL::twin(this, v19);
              v21 = gdc::TriangularDCEL::incidentFace(this, v20);
              if (v21 != 0x3FFFFFFF && v21 <= v13)
              {
                v23 = v21;
                if (!gdc::TriangularDCEL::_isBadFace(this, v21) && ((*(v14 + ((v23 >> 3) & 0x1FFFFFF8)) >> v23) & 1) == 0)
                {
                  v24 = (v31 + 6 * v23);
                  v25 = *(v15 + 16 * v24[2]);
                  v26 = vmul_f32(vsub_f32(*(v15 + 16 * *v24), v25), vrev64_s32(vsub_f32(*(v15 + 16 * v24[1]), v25)));
                  if (vmvn_s8(vceq_f32(v26, vdup_lane_s32(v26, 1))).u8[0])
                  {
                    break;
                  }
                }
              }

              v19 = gdc::TriangularDCEL::next(this, v19);
              if (v19 == v10)
              {
                goto LABEL_17;
              }
            }

            v32 = v23;
            v33 = 1;
            geo::small_vector_base<unsigned int>::push_back(a1, &v32);
LABEL_17:
            a5 = v28;
          }
        }
      }
    }

    result = gdc::TriangularDCEL::next(this, v9);
    v9 = result;
  }

  while (result != v8);
  return result;
}

void sub_1B2E91A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*a10 != *(a10 + 16))
  {
    free(*a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::clipFoundationAgainstOverlayTriangle<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>,VertexData_Writer<StrokeTriangle>>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v81 = a1;
  v82 = a2;
  v83 = 0;
  v84 = 0;
  v72 = gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>>::compute(&v81);
  if (v72)
  {
    if (v72 >= 4)
    {
      v4 = 4;
    }

    else
    {
      v4 = v72;
    }

    v5 = *(a3 + 216);
    v6 = v5 + (3 * v4);
    if (v6 > *(a3 + 208))
    {
      v7 = v6 > 1;
      v8 = (1 << -__clz(v6 - 1));
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 1;
      }

      *(a3 + 208) = v9;
      ggl::BufferData::resize(*(a3 + 192), v9);
      v5 = *(a3 + 216);
    }

    v10 = a3;
    do
    {
      v11 = *(a3 + 192);
      ggl::BufferMemory::BufferMemory(v86);
      ggl::ResourceAccessor::accessIndexData(v87, 0, v11, v5, v5 + 3, 1, 0);
      ggl::BufferMemory::operator=(v86, v87);
      ggl::BufferMemory::~BufferMemory(v87);
      ggl::BufferMemory::operator=(v10, v86);
      ggl::BufferMemory::~BufferMemory(v86);
      v5 = *(a3 + 216) + 3;
      *(a3 + 216) = v5;
      v10 += 48;
      --v4;
    }

    while (v4);
    v14 = v84;
    if (v84)
    {
      v15 = *v81;
      v16 = v81[1];
      v17 = *v82;
      v18 = v82[1];
      v73 = v81[2];
      v74 = v82;
      v19 = v82[2];
      v20 = *v73;
      v21 = (a3 + 40);
      v22 = &v85;
      do
      {
        v79 = *(v22 - 8);
        v23 = *(v22 - 6);
        v24 = *v15;
        v25 = *(v15 + 4);
        v26 = *v16;
        v27 = *(v16 + 4);
        LODWORD(v12) = v25;
        v13.i32[0] = v27;
        v28 = FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(v79, v23, *v15, *&v12, *v16, v13, v20);
        v29 = *v21;
        **v21 = v28;
        v76 = *(v22 - 5);
        v30 = *(v22 - 3);
        v31.i32[0] = v25;
        v32.i32[0] = v27;
        *(v29 + 4) = FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(v76, v30, v24, v31, v26, v32, v20);
        v75 = *(v22 - 2);
        v33 = *v22;
        v34.i32[0] = v25;
        v35.i32[0] = v27;
        *(v29 + 8) = FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(v75, *v22, v24, v34, v26, v35, v20);
        _V2.D[1] = v79.i64[1];
        _D1 = *(v16 + 8);
        __asm { FMLA            D0, D1, V2.D[1] }

        *&_D0 = _D0 + v23 * v73[1].f32[0];
        *(v29 + 3) = LODWORD(_D0);
        _V2.D[1] = v75.i64[1];
        _V7.D[1] = v76.i64[1];
        _D1 = *(v16 + 8);
        __asm { FMLA            D0, D1, V7.D[1] }

        *&_D0 = _D0 + v30 * v73[1].f32[0];
        *(v29 + 7) = LODWORD(_D0);
        _D1 = *(v16 + 8);
        __asm { FMLA            D0, D1, V2.D[1] }

        *&_D0 = _D0 + v33 * v73[1].f32[0];
        *(v29 + 11) = LODWORD(_D0);
        v49.i32[0] = *v15;
        v50.i32[0] = *v16;
        v50.i32[1] = *(v15 + 4);
        v49.i32[1] = *(v16 + 4);
        v78 = vcvtq_f64_f32(v49);
        v80 = vcvtq_f64_f32(v50);
        v20 = *v73;
        v77 = vcvtq_f64_f32(*v73);
        v51 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_f64(vmulq_f64(vextq_s8(*(v22 - 8), *(v22 - 8), 8uLL), v80), v78, *(v22 - 8)), v77, *(v22 - 6)));
        v87[0] = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v74, v51.f32[0], v51.f32[1]);
        v87[1] = v52;
        v87[2] = v53;
        v54 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_f64(vmulq_f64(vextq_s8(*(v22 - 5), *(v22 - 5), 8uLL), v80), v78, *(v22 - 5)), v77, *(v22 - 3)));
        v86[0] = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v74, v54.f32[0], v54.f32[1]);
        v86[1] = v55;
        v86[2] = v56;
        v57 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_f64(vmulq_f64(vextq_s8(*(v22 - 2), *(v22 - 2), 8uLL), v80), v78, *(v22 - 2)), v77, *v22));
        v88[0] = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v74, v57.f32[0], v57.f32[1]);
        v88[1] = v58;
        v88[2] = v59;
        v60 = StrokeTriangle::valueFromBarycentricCoordinates<1,gm::Matrix<short,2,1>,gm::Matrix<short,2,1>>(v87, *(v17 + 8), *(v17 + 10), *(v18 + 8), *(v18 + 10), *(v19 + 8), *(v19 + 10));
        v61 = *v21;
        *(*v21 + 1) = v60;
        *(v61 + 5) = StrokeTriangle::valueFromBarycentricCoordinates<1,gm::Matrix<short,2,1>,gm::Matrix<short,2,1>>(v86, *(v17 + 8), *(v17 + 10), *(v18 + 8), *(v18 + 10), *(v19 + 8), *(v19 + 10));
        v62 = StrokeTriangle::valueFromBarycentricCoordinates<1,gm::Matrix<short,2,1>,gm::Matrix<short,2,1>>(v88, *(v17 + 8), *(v17 + 10), *(v18 + 8), *(v18 + 10), *(v19 + 8), *(v19 + 10));
        v63 = *v61;
        v64 = (v61[8] - v63);
        v65 = v61[1];
        v66 = (v61[9] - v65);
        *(v61 + 9) = v62;
        v67 = v61[16];
        v68 = (v67 - v63);
        v69 = v61[17];
        v12 = (v69 - v65);
        if (v12 * v64 < v68 * v66)
        {
          v70 = *(v61 + 4);
          v61[8] = v67;
          v61[9] = v69;
          *(v61 + 8) = v70;
        }

        v21 += 6;
        v22 += 9;
        --v14;
      }

      while (v14);
    }
  }

  return v72;
}

uint64_t gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>>::compute(uint64_t a1)
{
  v129[12] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*(*a1 + 24) == 0.0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (*(v3 + 24) == 0.0)
  {
    return 0;
  }

  else
  {
    *(a1 + 178) = 0;
    v4 = *v3;
    v5 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v1, **v3, *(*v3 + 4));
    v7 = v6;
    v9 = v8;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v8;
    v10 = *(v3 + 8);
    v11 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v1, v10->f32[0], v10->f32[1]);
    v13 = v12;
    v15 = v14;
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v14;
    v16 = *(v3 + 16);
    v17 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v1, v16->f32[0], v16->f32[1]);
    v20 = 0;
    *(a1 + 64) = v17;
    *(a1 + 72) = v18;
    *(a1 + 80) = v19;
    if (v5 >= 0.0 && v5 <= 1.0)
    {
      v20 = v7 >= 0.0 && v7 <= 1.0 && v9 >= 0.0 && v9 <= 1.0;
    }

    v22 = *(a1 + 177) | v20;
    if (v11 >= 0.0 && v11 <= 1.0)
    {
      v24 = 0;
      v26 = v13 >= 0.0 && v13 <= 1.0;
      if (v26 && v15 >= 0.0)
      {
        v24 = 2 * (v15 <= 1.0);
      }
    }

    else
    {
      v24 = 0;
    }

    v27 = v24 | v22;
    if (v17 >= 0.0 && v17 <= 1.0)
    {
      v29 = 0;
      v30 = v18 >= 0.0 && v18 <= 1.0;
      if (v30 && v19 >= 0.0)
      {
        v29 = 4 * (v19 <= 1.0);
      }
    }

    else
    {
      v29 = 0;
    }

    *(a1 + 177) = v29 | v27;
    v31 = *v1;
    v32 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v3, **v1, *(*v1 + 4));
    v34 = v33;
    v36 = v35;
    *(a1 + 104) = v32;
    *(a1 + 112) = v33;
    *(a1 + 120) = v35;
    v37 = *(v1 + 8);
    v38 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v3, v37->f32[0], v37->f32[1]);
    v40 = v39;
    v42 = v41;
    *(a1 + 128) = v38;
    *(a1 + 136) = v39;
    *(a1 + 144) = v41;
    v43 = *(v1 + 16);
    v44 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v3, v43->f32[0], v43->f32[1]);
    v47 = 0;
    *(a1 + 152) = v44;
    *(a1 + 160) = v45;
    *(a1 + 168) = v46;
    if (v32 >= 0.0 && v32 <= 1.0)
    {
      v47 = v34 >= 0.0 && v34 <= 1.0 && v36 >= 0.0 && v36 <= 1.0;
    }

    v48 = 0;
    if (v38 >= 0.0 && v38 <= 1.0)
    {
      v48 = 0;
      if (v40 >= 0.0 && v40 <= 1.0 && v42 >= 0.0)
      {
        v48 = 2 * (v42 <= 1.0);
      }
    }

    v49 = 0;
    if (v44 >= 0.0 && v44 <= 1.0)
    {
      v49 = 0;
      if (v45 >= 0.0 && v45 <= 1.0 && v46 >= 0.0)
      {
        v49 = 4 * (v46 <= 1.0);
      }
    }

    *(a1 + 176) |= v49 | v48 | v47;
    v123 = vcvtq_f64_f32(*v31);
    v50 = vcvtq_f64_f32(*v37);
    v124 = v50;
    v51 = vcvtq_f64_f32(*v43);
    v125 = v51;
    v52 = vcvtq_f64_f32(*v4);
    v53 = vcvtq_f64_f32(*v10);
    v120 = v52;
    v121 = v53;
    v54 = vcvtq_f64_f32(*v16);
    v122 = v54;
    v55 = vsubq_f64(v51, v123);
    v56 = vmulq_f64(vextq_s8(v55, v55, 8uLL), vsubq_f64(v50, v123));
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v56, 1), v56)).u8[0])
    {
      v124 = v51;
      v125 = v50;
    }

    v57 = vsubq_f64(v53, v52);
    v58 = vsubq_f64(v54, v52);
    v59 = vmulq_f64(v57, vextq_s8(v58, v58, 8uLL));
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v59, 1), v59)).u8[0])
    {
      v121 = v54;
      v122 = v53;
    }

    v116 = v118;
    v117 = 6;
    v114 = v118;
    v115 = v118;
    *&buf = v129;
    *(&buf + 1) = v129;
    v127 = v129;
    v128 = 6;
    geo::small_vector_base<gm::Matrix<double,2,1>>::insert<gm::Matrix<double,2,1>*>(&buf, v129, &v123, &buf);
    v60 = 0;
    v61 = &v114;
    p_buf = &buf;
    do
    {
      v63 = p_buf;
      v64 = v60 + 1;
      if (v60 == 2)
      {
        v65 = 0;
      }

      else
      {
        v65 = v60 + 1;
      }

      if (v60)
      {
        p_buf = v61;
      }

      v66 = (v61 + 1);
      if (v60)
      {
        v61 = v63;
      }

      v67 = v63 + 1;
      if (v60)
      {
        v68 = v67;
      }

      else
      {
        v68 = v66;
      }

      v61[1] = *v61;
      if (v60)
      {
        v69 = v66;
      }

      else
      {
        v69 = v67;
      }

      v70 = *p_buf;
      v71 = *(p_buf + 1);
      v72 = v71 - *p_buf;
      if (v71 != *p_buf)
      {
        v73 = 0;
        v74 = *(&v120 + v60);
        v75 = v72 >> 4;
        v109 = vsubq_f64(*(&v120 + v65), v74);
        v110 = v74;
        v112 = vextq_s8(v109, v109, 8uLL);
        do
        {
          v76 = v73 + 1;
          if (v73 + 1 == v75)
          {
            v77 = 0;
          }

          else
          {
            v77 = v73 + 1;
          }

          v78 = (v70 + 16 * v77);
          v79 = *v78;
          v80 = *(v70 + 16 * v73);
          v81 = vsubq_f64(v80, v110);
          v82 = vmulq_f64(vextq_s8(v81, v81, 8uLL), v109);
          v83 = vmulq_f64(vsubq_f64(*v78, v110), v112);
          v84 = vdupq_laneq_s64(v83, 1);
          v85 = vcgtq_f64(v84, v83);
          if ((vmovn_s64(veorq_s8(vcgeq_f64(vdupq_laneq_s64(v82, 1), v82), v85)).u8[0] & 1) == 0)
          {
            v86 = vsubq_f64(v79, v80);
            v87 = vmulq_f64(v86, v112);
            v88 = vsubq_f64(v87, vdupq_laneq_s64(v87, 1));
            if (v88.f64[0] != 0.0)
            {
              v119 = vmlsq_lane_f64(v79, v86, vdivq_f64(vsubq_f64(v83, v84), v88).f64[0], 0);
              v108 = v85;
              geo::small_vector_base<gm::Matrix<double,2,1>>::push_back(v61, &v119);
              v85 = v108;
            }
          }

          if (vmovn_s64(v85).u32[0])
          {
            geo::small_vector_base<gm::Matrix<double,2,1>>::push_back(v61, v78);
          }

          v70 = *p_buf;
          v75 = (*v69 - *p_buf) >> 4;
          v73 = v76;
        }

        while (v76 < v75);
      }

      v60 = v64;
    }

    while (v64 != 3);
    if (v61 != &v114)
    {
      v115 = v114;
      geo::small_vector_base<gm::Matrix<double,2,1>>::insert<gm::Matrix<double,2,1>*>(&v114, v114, *v61, *v68);
    }

    if (buf != v127)
    {
      free(buf);
    }

    v89 = v114;
    v90 = (v115 - v114) >> 4;
    if (v90 <= 2)
    {
      v25 = *(a1 + 178);
    }

    else
    {
      if (v90 >= 7)
      {
        v91 = GEOGetGeoDisplayCoreDefaultLog();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = (v115 - v114) >> 4;
          _os_log_impl(&dword_1B2754000, v91, OS_LOG_TYPE_ERROR, "Exceeded triangle storage for polygon intersection (%zu verts)", &buf, 0xCu);
        }

        v89 = v114;
        v90 = (v115 - v114) >> 4;
      }

      if (v90 >= 6)
      {
        v92 = 6;
      }

      else
      {
        v92 = v90;
      }

      v25 = *(a1 + 178);
      if (v92 - 1 >= 2)
      {
        v93 = *a1;
        v94 = v92 - 2;
        v95 = 1;
        do
        {
          v96 = v89[v95++];
          v111 = v96;
          v113 = v89[v95 % v92];
          v97 = vcvt_f32_f64(*v89);
          v98 = a1 + 184 + 72 * v25;
          *v98 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v93, v97.f32[0], v97.f32[1]);
          *(v98 + 8) = v99;
          *(v98 + 16) = v100;
          v101 = vcvt_f32_f64(v111);
          *(v98 + 24) = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v93, v101.f32[0], v101.f32[1]);
          *(v98 + 32) = v102;
          *(v98 + 40) = v103;
          v104 = vcvt_f32_f64(v113);
          *(v98 + 48) = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v93, v104.f32[0], v104.f32[1]);
          *(v98 + 56) = v105;
          *(v98 + 64) = v106;
          *(a1 + 178) = ++v25;
          --v94;
        }

        while (v94);
      }
    }

    if (v89 != v116)
    {
      free(v89);
    }
  }

  return v25;
}

uint64_t std::deque<unsigned long>::~deque[abi:nn200100](uint64_t a1)
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
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
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

uint64_t std::deque<gdc::TrianglePair>::~deque[abi:nn200100](uint64_t a1)
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
    v5 = 128;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 256;
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

void geo::small_vector_base<unsigned int>::push_back(int **a1, int *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 - *a1;
  v7 = (v6 >> 2) + 1;
  v8 = a1[3];
  if (v8 < v7)
  {
    v9 = a1[2];
    v10 = (1 << -__clz(v8 + 1));
    if (v8 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v10 = 1;
    }

    if (v10 <= v7)
    {
      v11 = (v6 >> 2) + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
    v13 = *a1;
    v14 = a1[1];
    if (*a1 != v14)
    {
      v15 = v12;
      v16 = *a1;
      do
      {
        v17 = *v16++;
        *v15++ = v17;
      }

      while (v16 != v14);
    }

    if (v5 != v9)
    {
      free(v13);
    }

    *a1 = v12;
    v4 = (v12 + v6);
    a1[3] = v11;
  }

  *v4 = *a2;
  a1[1] = v4 + 1;
}

void *std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(v11);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v11);
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

__n128 std::__function::__func<std::shared_ptr<ggl::PolylineOverlayRibbon::ElevatedMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::PolylineOverlayRibbon::BakedWidthMesh,ggl::PolylineOverlayRibbon::ElevatedMesh,RibbonOverlayTriangleAccessor,StrokeTriangle>(md::FoundationMesh const&,ggl::PolylineOverlayRibbon::BakedWidthMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<ggl::PolylineOverlayRibbon::ElevatedMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::PolylineOverlayRibbon::BakedWidthMesh,ggl::PolylineOverlayRibbon::ElevatedMesh,RibbonOverlayTriangleAccessor,StrokeTriangle>(md::FoundationMesh const&,ggl::PolylineOverlayRibbon::BakedWidthMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A09218;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__shared_ptr_pointer<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo> *,std::shared_ptr<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>>::__shared_ptr_default_delete<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>,ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>>,std::allocator<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo> *,std::shared_ptr<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>>::__shared_ptr_default_delete<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>,ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>>,std::allocator<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::PolylineOverlayRibbon::BakedWidthMesh const>(ggl::PolylineOverlayRibbon::BakedWidthMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::PolylineOverlayRibbon::BakedWidthMesh const>(ggl::PolylineOverlayRibbon::BakedWidthMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **(a1 + 24);
  if (*(v4 + 216))
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v13, v4, *(a1 + 32), *(a1 + 40), 0, v3);
    if (*(a1 + 48))
    {
      v5 = 0;
      v6 = 3;
      do
      {
        gdc::TriangularDCEL::addFace(**(a1 + 8), *(v14 + 4 * v5), *(v14 + 4 * (v6 - 2)), *(v14 + 4 * (v6 - 1)), *(a1 + 16));
        v5 = v6;
        v7 = *(a1 + 48);
        v8 = v7 >= v6;
        v9 = v7 == v6;
        v6 += 3;
      }

      while (!v9 && v8);
    }
  }

  else
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v13, v4, *(a1 + 32), *(a1 + 40), 0, 1, v3);
    if (*(a1 + 48))
    {
      v10 = 0;
      v11 = 3;
      do
      {
        gdc::TriangularDCEL::addFace(**(a1 + 8), *(v14 + 2 * v10), *(v14 + 2 * (v11 - 2)), *(v14 + 2 * (v11 - 1)), *(a1 + 16));
        v10 = v11;
        v12 = *(a1 + 48);
        v8 = v12 >= v11;
        v9 = v12 == v11;
        v11 += 3;
      }

      while (!v9 && v8);
    }
  }

  ggl::BufferMemory::~BufferMemory(v13);
}

__n128 std::__function::__func<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::PolylineOverlayRibbon::BakedWidthMesh const>(ggl::PolylineOverlayRibbon::BakedWidthMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::PolylineOverlayRibbon::BakedWidthMesh const>(ggl::PolylineOverlayRibbon::BakedWidthMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A09158;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<void (*)(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int),std::allocator<void (*)(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int)>,void ()(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A09110;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<gdc::TriangularDCEL>::__on_zero_shared(void *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 19));
  std::__function::__value_func<void ()(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int)>::~__value_func[abi:nn200100]((a1 + 15));
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<gdc::TriangularDCEL>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A090D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DaVinci::ElevatedFillMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A09328;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<std::shared_ptr<ggl::DaVinci::ElevatedFillMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::DaVinci::TexturedCompressedMesh,ggl::DaVinci::ElevatedFillMesh,OverlayTriangleAccessor,FillTriangle>(md::FoundationMesh const&,ggl::DaVinci::TexturedCompressedMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<ggl::DaVinci::ElevatedFillMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::DaVinci::TexturedCompressedMesh,ggl::DaVinci::ElevatedFillMesh,OverlayTriangleAccessor,FillTriangle>(md::FoundationMesh const&,ggl::DaVinci::TexturedCompressedMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v150 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a1 + 24);
  v5 = (*(*(v4 + 96) + 48) - *(*(v4 + 96) + 40)) / *(*(v4 + 96) + 8);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v109, **(v4 + 64), 0, (*(**(v4 + 64) + 48) - *(**(v4 + 64) + 40)) / *(**(v4 + 64) + 8), 0, *a2);
  v110 = v109[5];
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v111, *(v4 + 96), 0, v5, 0, 1, v3);
  v112 = v111[5];
  v113 = v5 / 3;
  v6 = *(a1 + 8);
  v7 = *(v6[12] + 216);
  if (v7 != 1)
  {
    if (v7)
    {
      goto LABEL_102;
    }

    VertexData_Reader<TempFoundationTriangleAccessor,unsigned short>::VertexData_Reader(v104, v6, v6[18], v6[19], v3);
    v8 = *(a1 + 40);
    v9 = **(a1 + 32);
    v11 = *v8;
    v10 = v8[1];
    v92 = **(a1 + 48);
    v88 = *(a1 + 8);
    v96 = *(a1 + 16);
    v98 = *(a1 + 56);
    *(v98 + 8) = 0;
    *v98 = 0;
    if (!v108 || !v113)
    {
      goto LABEL_101;
    }

    v147[0].n128_u8[0] = 0;
    v86 = v113;
    std::vector<BOOL>::vector(__p, v113);
    v12 = 0;
    v13 = v86;
    while (1)
    {
      v14 = __p[0];
      v15 = v12 >> 6;
      v16 = 1 << v12;
      if ((*(__p[0] + (v12 >> 6)) & (1 << v12)) == 0)
      {
        v17 = (v112 + 6 * v12);
        v18 = (v110 + 16 * v17[1]);
        v19 = (v110 + 16 * v17[2]);
        v142 = (v110 + 16 * *v17);
        v143 = v18;
        v144 = v19;
        v20 = vmul_f32(vsub_f32(*v142, *v19), vrev64_s32(vsub_f32(*v18, *v19)));
        *v20.i32 = vsub_f32(v20, vdup_lane_s32(v20, 1)).f32[0];
        v145 = *v20.i32;
        if (*v20.i32 != 0.0)
        {
          v90 = v12;
          if (gdc::_triangleIntersectsBox<gdc::Triangle<RibbonOverlayTriangleAccessor>,float>(&v142, v88 + 184))
          {
            v100 = v108;
            if (v108)
            {
              v21 = 0;
              v22 = 0;
              while (1)
              {
                v23 = (v105 + 16 * *(v107 + v21 + 2));
                v24 = *(v107 + v21 + 4);
                *&v139 = v105 + 16 * *(v107 + v21);
                *(&v139 + 1) = v23;
                *&v140 = v105 + 16 * v24;
                *(&v140 + 1) = (((*(v140 + 4) - *(v139 + 4)) * (*v23 - *v140)) + ((*v139 - *v140) * (v23[1] - *(v140 + 4))));
                v147[0].n128_u64[0] = &v139;
                v147[0].n128_u64[1] = &v142;
                v148 = 0;
                v149 = 0;
                if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>>::compute(v147))
                {
                  break;
                }

                ++v22;
                v21 += 6;
                if (v100 == v22)
                {
                  v14 = __p[0];
                  goto LABEL_14;
                }
              }

              ++*(v98 + 4);
              v140 = 0u;
              v141 = 0u;
              v139 = 0u;
              v147[0].n128_u64[0] = v90;
              v147[0].n128_u64[1] = v22;
              std::deque<gdc::TrianglePair>::push_back(&v139, v147);
              while (*(&v141 + 1))
              {
                *v138 = *(*(*(&v139 + 1) + ((v141 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v141);
                --*(&v141 + 1);
                *&v141 = v141 + 1;
                if (v141 >= 0x200)
                {
                  operator delete(**(&v139 + 1));
                  *(&v139 + 1) += 8;
                  *&v141 = v141 - 256;
                }

                v136 = 0u;
                v137 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v134 = 1065353216;
                std::deque<unsigned long>::push_back(&v135, &v138[2]);
                std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, *&v138[2]);
                v94 = *v138;
                gdc::_overlayNeighborsNoDegenerates<VertexData_Reader<OverlayTriangleAccessor,unsigned short>>(&v129, v109, v92, v138[0], __p);
                v126 = 0u;
                v127 = 0u;
                v128 = 1065353216;
                v25 = *(&v137 + 1);
                if (*(&v137 + 1))
                {
                  v101 = 6 * v94;
                  do
                  {
                    v26 = *(*(*(&v135 + 1) + ((v137 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v137 & 0x1FF));
                    *(&v137 + 1) = v25 - 1;
                    *&v137 = v137 + 1;
                    if (v137 >= 0x400)
                    {
                      operator delete(**(&v135 + 1));
                      *(&v135 + 1) += 8;
                      *&v137 = v137 - 512;
                    }

                    v27 = (v110 + 16 * *(v112 + v101 + 2));
                    v28 = (v110 + 16 * *(v112 + v101 + 4));
                    v122 = (v110 + 16 * *(v112 + 6 * v94));
                    v123 = v27;
                    v124 = v28;
                    v125 = (((v28[1] - v122[1]) * (*v27 - *v28)) + ((*v122 - *v28) * (v27[1] - v28[1])));
                    v29 = (v107 + 6 * v26);
                    v30 = (v105 + 16 * v29[1]);
                    v31 = (v105 + 16 * v29[2]);
                    v118 = (v105 + 16 * *v29);
                    v119 = v30;
                    v120 = v31;
                    v121 = (((v31[1] - v118[1]) * (*v30 - *v31)) + ((*v118 - *v31) * (v30[1] - v31[1])));
                    v32 = gdc::clipFoundationAgainstOverlayTriangle<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>,VertexData_Writer<FillTriangle>>(&v118, &v122, v96);
                    ++*v98;
                    if (v32)
                    {
                      v33 = v129;
                      if (v129 != v130)
                      {
                        do
                        {
                          v34 = *v33;
                          v35 = (v112 + 6 * v34);
                          v36 = (v110 + 16 * *v35);
                          v37 = (v110 + 16 * v35[1]);
                          v38 = v35[2];
                          v114 = v36;
                          v115 = v37;
                          v116 = (v110 + 16 * v38);
                          v117 = (((v116[1] - v36[1]) * (*v37 - *v116)) + ((*v36 - *v116) * (v37[1] - v116[1])));
                          v147[0].n128_u64[0] = &v118;
                          v147[0].n128_u64[1] = &v114;
                          v148 = 0;
                          v149 = 0;
                          if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>>::compute(v147))
                          {
                            v147[0].n128_u64[0] = v34;
                            v147[0].n128_u64[1] = v26;
                            std::deque<gdc::TrianglePair>::push_back(&v139, v147);
                            v39 = v130;
                            if (v33 + 1 != v130)
                            {
                              memmove(v33, v33 + 1, ((v130 - v33) & 0xFFFFFFFFFFFFFFFCLL) - 4);
                            }

                            v40 = v39 - 1;
                            v130 = v39 - 1;
                          }

                          else
                          {
                            ++v33;
                            v40 = v130;
                          }
                        }

                        while (v33 != v40);
                      }

                      v41 = gdc::TriangularDCEL::outerComponent(v9, v26 + v11);
                      v42 = v41;
                      v43 = v41;
                      do
                      {
                        v44 = gdc::TriangularDCEL::twin(v9, v43);
                        v45 = gdc::TriangularDCEL::incidentFace(v9, v44);
                        if (v45 != 0x3FFFFFFF)
                        {
                          v46 = v45;
                          if (v45 <= (((*(v9 + 10) - *(v9 + 9)) >> 2) / 3uLL) && !gdc::TriangularDCEL::_isBadFace(v9, v45) && v46 >= v11 && v46 < v10)
                          {
                            v147[0].n128_u64[0] = v46 - v11;
                            if (!std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(&v132, v147[0].n128_u64[0]))
                            {
                              std::deque<unsigned long>::push_back(&v135, v147);
                              std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, v46 - v11);
                            }
                          }
                        }

                        v43 = gdc::TriangularDCEL::next(v9, v43);
                      }

                      while (v43 != v42);
                    }

                    v25 = *(&v137 + 1);
                  }

                  while (*(&v137 + 1));
                }

                *(__p[0] + ((v94 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v94;
                std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v126);
                if (v129 != v131)
                {
                  free(v129);
                }

                std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v132);
                std::deque<unsigned long>::~deque[abi:nn200100](&v135);
              }

              std::deque<gdc::TrianglePair>::~deque[abi:nn200100](&v139);
              goto LABEL_18;
            }

LABEL_14:
            ++*(v98 + 4);
          }

          else
          {
            ++*(v98 + 8);
          }

          v14[v15] |= v16;
LABEL_18:
          v13 = v86;
          v12 = v90;
          goto LABEL_19;
        }

        *(__p[0] + v15) |= v16;
      }

LABEL_19:
      if (++v12 == v13)
      {
        goto LABEL_99;
      }
    }
  }

  VertexData_Reader<TempFoundationTriangleAccessor,unsigned int>::VertexData_Reader(v104, v6, v6[18], v6[19], v3);
  v47 = *(a1 + 40);
  v48 = **(a1 + 32);
  v50 = *v47;
  v49 = v47[1];
  v93 = **(a1 + 48);
  v89 = *(a1 + 8);
  v97 = *(a1 + 16);
  v99 = *(a1 + 56);
  *(v99 + 8) = 0;
  *v99 = 0;
  if (!v108 || !v113)
  {
    goto LABEL_101;
  }

  v147[0].n128_u8[0] = 0;
  v87 = v113;
  std::vector<BOOL>::vector(__p, v113);
  v51 = 0;
  v52 = v87;
  do
  {
    v53 = __p[0];
    v54 = v51 >> 6;
    v55 = 1 << v51;
    if ((*(__p[0] + (v51 >> 6)) & (1 << v51)) != 0)
    {
      goto LABEL_67;
    }

    v56 = (v112 + 6 * v51);
    v57 = (v110 + 16 * v56[1]);
    v58 = (v110 + 16 * v56[2]);
    v142 = (v110 + 16 * *v56);
    v143 = v57;
    v144 = v58;
    v59 = vmul_f32(vsub_f32(*v142, *v58), vrev64_s32(vsub_f32(*v57, *v58)));
    *v59.i32 = vsub_f32(v59, vdup_lane_s32(v59, 1)).f32[0];
    v145 = *v59.i32;
    if (*v59.i32 == 0.0)
    {
      *(__p[0] + v54) |= v55;
      goto LABEL_67;
    }

    v91 = v51;
    if (gdc::_triangleIntersectsBox<gdc::Triangle<RibbonOverlayTriangleAccessor>,float>(&v142, v89 + 184))
    {
      v102 = v108;
      if (v108)
      {
        v60 = 0;
        v61 = 0;
        while (1)
        {
          v62 = (v105 + 16 * *(v107 + v60 + 4));
          v63 = *(v107 + v60 + 8);
          *&v139 = v105 + 16 * *(v107 + v60);
          *(&v139 + 1) = v62;
          *&v140 = v105 + 16 * v63;
          *(&v140 + 1) = (((*(v140 + 4) - *(v139 + 4)) * (*v62 - *v140)) + ((*v139 - *v140) * (v62[1] - *(v140 + 4))));
          v147[0].n128_u64[0] = &v139;
          v147[0].n128_u64[1] = &v142;
          v148 = 0;
          v149 = 0;
          if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>>::compute(v147))
          {
            break;
          }

          ++v61;
          v60 += 12;
          if (v102 == v61)
          {
            v53 = __p[0];
            goto LABEL_62;
          }
        }

        ++*(v99 + 4);
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        v147[0].n128_u64[0] = v91;
        v147[0].n128_u64[1] = v61;
        std::deque<gdc::TrianglePair>::push_back(&v139, v147);
        while (*(&v141 + 1))
        {
          *v138 = *(*(*(&v139 + 1) + ((v141 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v141);
          --*(&v141 + 1);
          *&v141 = v141 + 1;
          if (v141 >= 0x200)
          {
            operator delete(**(&v139 + 1));
            *(&v139 + 1) += 8;
            *&v141 = v141 - 256;
          }

          v136 = 0u;
          v137 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v134 = 1065353216;
          std::deque<unsigned long>::push_back(&v135, &v138[2]);
          std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, *&v138[2]);
          v95 = *v138;
          gdc::_overlayNeighborsNoDegenerates<VertexData_Reader<OverlayTriangleAccessor,unsigned short>>(&v129, v109, v93, v138[0], __p);
          v126 = 0u;
          v127 = 0u;
          v128 = 1065353216;
          v64 = *(&v137 + 1);
          if (*(&v137 + 1))
          {
            v103 = 6 * v95;
            do
            {
              v65 = *(*(*(&v135 + 1) + ((v137 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v137 & 0x1FF));
              *(&v137 + 1) = v64 - 1;
              *&v137 = v137 + 1;
              if (v137 >= 0x400)
              {
                operator delete(**(&v135 + 1));
                *(&v135 + 1) += 8;
                *&v137 = v137 - 512;
              }

              v66 = (v110 + 16 * *(v112 + v103 + 2));
              v67 = (v110 + 16 * *(v112 + v103 + 4));
              v122 = (v110 + 16 * *(v112 + 6 * v95));
              v123 = v66;
              v124 = v67;
              v125 = (((v67[1] - v122[1]) * (*v66 - *v67)) + ((*v122 - *v67) * (v66[1] - v67[1])));
              v68 = (v107 + 12 * v65);
              v69 = (v105 + 16 * v68[1]);
              v70 = (v105 + 16 * v68[2]);
              v118 = (v105 + 16 * *v68);
              v119 = v69;
              v120 = v70;
              v121 = (((v70[1] - v118[1]) * (*v69 - *v70)) + ((*v118 - *v70) * (v69[1] - v70[1])));
              v71 = gdc::clipFoundationAgainstOverlayTriangle<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>,VertexData_Writer<FillTriangle>>(&v118, &v122, v97);
              ++*v99;
              if (v71)
              {
                v72 = v129;
                if (v129 != v130)
                {
                  do
                  {
                    v73 = *v72;
                    v74 = (v112 + 6 * v73);
                    v75 = (v110 + 16 * *v74);
                    v76 = (v110 + 16 * v74[1]);
                    v77 = v74[2];
                    v114 = v75;
                    v115 = v76;
                    v116 = (v110 + 16 * v77);
                    v117 = (((v116[1] - v75[1]) * (*v76 - *v116)) + ((*v75 - *v116) * (v76[1] - v116[1])));
                    v147[0].n128_u64[0] = &v118;
                    v147[0].n128_u64[1] = &v114;
                    v148 = 0;
                    v149 = 0;
                    if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>>::compute(v147))
                    {
                      v147[0].n128_u64[0] = v73;
                      v147[0].n128_u64[1] = v65;
                      std::deque<gdc::TrianglePair>::push_back(&v139, v147);
                      v78 = v130;
                      if (v72 + 1 != v130)
                      {
                        memmove(v72, v72 + 1, ((v130 - v72) & 0xFFFFFFFFFFFFFFFCLL) - 4);
                      }

                      v79 = v78 - 1;
                      v130 = v78 - 1;
                    }

                    else
                    {
                      ++v72;
                      v79 = v130;
                    }
                  }

                  while (v72 != v79);
                }

                v80 = gdc::TriangularDCEL::outerComponent(v48, v65 + v50);
                v81 = v80;
                v82 = v80;
                do
                {
                  v83 = gdc::TriangularDCEL::twin(v48, v82);
                  v84 = gdc::TriangularDCEL::incidentFace(v48, v83);
                  if (v84 != 0x3FFFFFFF)
                  {
                    v85 = v84;
                    if (v84 <= (((*(v48 + 10) - *(v48 + 9)) >> 2) / 3uLL) && !gdc::TriangularDCEL::_isBadFace(v48, v84) && v85 >= v50 && v85 < v49)
                    {
                      v147[0].n128_u64[0] = v85 - v50;
                      if (!std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(&v132, v147[0].n128_u64[0]))
                      {
                        std::deque<unsigned long>::push_back(&v135, v147);
                        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, v85 - v50);
                      }
                    }
                  }

                  v82 = gdc::TriangularDCEL::next(v48, v82);
                }

                while (v82 != v81);
              }

              v64 = *(&v137 + 1);
            }

            while (*(&v137 + 1));
          }

          *(__p[0] + ((v95 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v95;
          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v126);
          if (v129 != v131)
          {
            free(v129);
          }

          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v132);
          std::deque<unsigned long>::~deque[abi:nn200100](&v135);
        }

        std::deque<gdc::TrianglePair>::~deque[abi:nn200100](&v139);
        goto LABEL_66;
      }

LABEL_62:
      ++*(v99 + 4);
    }

    else
    {
      ++*(v99 + 8);
    }

    v53[v54] |= v55;
LABEL_66:
    v52 = v87;
    v51 = v91;
LABEL_67:
    ++v51;
  }

  while (v51 != v52);
LABEL_99:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

LABEL_101:
  ggl::BufferMemory::~BufferMemory(&v106);
  ggl::BufferMemory::~BufferMemory(v104);
LABEL_102:
  ggl::BufferMemory::~BufferMemory(v111);
  ggl::BufferMemory::~BufferMemory(v109);
}

void sub_1B2E93FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  ggl::BufferMemory::~BufferMemory(&a24);
  ggl::BufferMemory::~BufferMemory(&a17);
  ggl::BufferMemory::~BufferMemory(&a39);
  ggl::BufferMemory::~BufferMemory(&a32);
  _Unwind_Resume(a1);
}

const gdc::TriangularDCEL::HalfEdge *gdc::_overlayNeighborsNoDegenerates<VertexData_Reader<OverlayTriangleAccessor,unsigned short>>(uint64_t a1, uint64_t a2, gdc::TriangularDCEL *this, unsigned int a4, void *a5)
{
  *a1 = a1 + 32;
  *(a1 + 8) = a1 + 32;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 3;
  v7 = gdc::TriangularDCEL::outerComponent(this, a4);
  v8 = v7;
  v9 = v7;
  v28 = a5;
  do
  {
    v10 = gdc::TriangularDCEL::twin(this, v9);
    v11 = gdc::TriangularDCEL::incidentFace(this, v10);
    v34 = v11;
    if (v11 != 0x3FFFFFFF)
    {
      v12 = v11;
      v13 = ((*(this + 10) - *(this + 9)) >> 2) / 3uLL;
      if (v11 <= v13 && !gdc::TriangularDCEL::_isBadFace(this, v11))
      {
        v14 = *a5;
        if (((*(*a5 + ((v12 >> 3) & 0x1FFFFFF8)) >> v12) & 1) == 0)
        {
          v15 = *(a2 + 48);
          v31 = *(a2 + 104);
          v16 = (v31 + 6 * v12);
          v17 = *(v15 + 16 * v16[2]);
          v18 = vmul_f32(vsub_f32(*(v15 + 16 * *v16), v17), vrev64_s32(vsub_f32(*(v15 + 16 * v16[1]), v17)));
          if (vmvn_s8(vceq_f32(v18, vdup_lane_s32(v18, 1))).u8[0])
          {
            geo::small_vector_base<unsigned int>::push_back(a1, &v34);
          }

          else
          {
            LOBYTE(v32) = 0;
            v33 = 0;
            v19 = gdc::TriangularDCEL::next(this, v10);
            while (1)
            {
              v20 = gdc::TriangularDCEL::twin(this, v19);
              v21 = gdc::TriangularDCEL::incidentFace(this, v20);
              if (v21 != 0x3FFFFFFF && v21 <= v13)
              {
                v23 = v21;
                if (!gdc::TriangularDCEL::_isBadFace(this, v21) && ((*(v14 + ((v23 >> 3) & 0x1FFFFFF8)) >> v23) & 1) == 0)
                {
                  v24 = (v31 + 6 * v23);
                  v25 = *(v15 + 16 * v24[2]);
                  v26 = vmul_f32(vsub_f32(*(v15 + 16 * *v24), v25), vrev64_s32(vsub_f32(*(v15 + 16 * v24[1]), v25)));
                  if (vmvn_s8(vceq_f32(v26, vdup_lane_s32(v26, 1))).u8[0])
                  {
                    break;
                  }
                }
              }

              v19 = gdc::TriangularDCEL::next(this, v19);
              if (v19 == v10)
              {
                goto LABEL_17;
              }
            }

            v32 = v23;
            v33 = 1;
            geo::small_vector_base<unsigned int>::push_back(a1, &v32);
LABEL_17:
            a5 = v28;
          }
        }
      }
    }

    result = gdc::TriangularDCEL::next(this, v9);
    v9 = result;
  }

  while (result != v8);
  return result;
}

void sub_1B2E94324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*a10 != *(a10 + 16))
  {
    free(*a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::clipFoundationAgainstOverlayTriangle<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>,VertexData_Writer<FillTriangle>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[46] = *MEMORY[0x1E69E9840];
  v61[0] = a1;
  v61[1] = a2;
  v62 = 0;
  v63 = 0;
  v55 = gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>>::compute(v61);
  if (v55)
  {
    if (v55 >= 4)
    {
      v4 = 4;
    }

    else
    {
      v4 = v55;
    }

    v5 = *(a3 + 216);
    v6 = v5 + (3 * v4);
    if (v6 > *(a3 + 208))
    {
      v7 = v6 > 1;
      v8 = (1 << -__clz(v6 - 1));
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 1;
      }

      *(a3 + 208) = v9;
      ggl::BufferData::resize(*(a3 + 192), v9);
      v5 = *(a3 + 216);
    }

    v10 = a3;
    do
    {
      v11 = *(a3 + 192);
      ggl::BufferMemory::BufferMemory(v59);
      ggl::ResourceAccessor::accessIndexData(v60, 0, v11, v5, v5 + 3, 1, 0);
      ggl::BufferMemory::operator=(v59, v60);
      ggl::BufferMemory::~BufferMemory(v60);
      ggl::BufferMemory::operator=(v10, v59);
      ggl::BufferMemory::~BufferMemory(v59);
      v5 = *(a3 + 216) + 3;
      *(a3 + 216) = v5;
      v10 += 48;
      --v4;
    }

    while (v4);
    v14 = v63;
    if (v63)
    {
      v15 = *v61[0];
      v16 = *(v61[0] + 8);
      v17 = *(v61[0] + 16);
      v18 = (a3 + 40);
      v19 = v64;
      do
      {
        v58 = *(v19 - 8);
        v20 = *(v19 - 6);
        v21 = *v15;
        v22 = *(v15 + 4);
        v23 = *v16;
        v24 = *(v16 + 4);
        v25 = *v17;
        LODWORD(v12) = v22;
        v13.i32[0] = v24;
        v26 = FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(v58, v20, *v15, *&v12, *v16, v13, *v17);
        v27 = v26;
        v28 = *v18;
        **v18 = v26;
        v57 = *(v19 - 5);
        v29 = *(v19 - 3);
        v30.i32[0] = v22;
        v31.i32[0] = v24;
        v32 = FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(v57, v29, v21, v30, v23, v31, v25);
        v33 = v32;
        v34 = HIWORD(v32);
        v28[2] = v32;
        v56 = *(v19 - 2);
        v35 = *v19;
        v36.i32[0] = v22;
        v37.i32[0] = v24;
        v38 = FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(v56, *v19, v21, v36, v23, v37, v25);
        v28[4] = v38;
        _V2.D[1] = v57.i64[1];
        _V7.D[1] = v58.i64[1];
        _D1 = *(v16 + 8);
        __asm { FMLA            D0, D1, V7.D[1] }

        *&_D0 = _D0 + v20 * v17[1].f32[0];
        v28[1] = LODWORD(_D0);
        _D1 = *(v16 + 8);
        __asm { FMLA            D0, D1, V2.D[1] }

        *&_D0 = _D0 + v29 * v17[1].f32[0];
        v28[3] = LODWORD(_D0);
        _V2.D[1] = v56.i64[1];
        _D1 = *(v16 + 8);
        __asm { FMLA            D0, D1, V2.D[1] }

        *&_D0 = _D0 + v35 * v17[1].f32[0];
        v28[5] = LODWORD(_D0);
        v52 = *(v28 + 1);
        v12 = (HIWORD(v38) - v52);
        if (v12 * (v33 - v27) < (v38 - v27) * (v34 - v52))
        {
          v53 = v28[2];
          v28[2] = v38;
          v28[4] = v53;
        }

        v18 += 6;
        v19 += 9;
        --v14;
      }

      while (v14);
    }
  }

  return v55;
}

__n128 std::__function::__func<std::shared_ptr<ggl::DaVinci::ElevatedFillMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::DaVinci::TexturedCompressedMesh,ggl::DaVinci::ElevatedFillMesh,OverlayTriangleAccessor,FillTriangle>(md::FoundationMesh const&,ggl::DaVinci::TexturedCompressedMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<ggl::DaVinci::ElevatedFillMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::DaVinci::TexturedCompressedMesh,ggl::DaVinci::ElevatedFillMesh,OverlayTriangleAccessor,FillTriangle>(md::FoundationMesh const&,ggl::DaVinci::TexturedCompressedMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A092E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::DaVinci::TexturedCompressedMesh const>(ggl::DaVinci::TexturedCompressedMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::DaVinci::TexturedCompressedMesh const>(ggl::DaVinci::TexturedCompressedMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **(a1 + 24);
  if (*(v4 + 216))
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v13, v4, *(a1 + 32), *(a1 + 40), 0, v3);
    if (*(a1 + 48))
    {
      v5 = 0;
      v6 = 3;
      do
      {
        gdc::TriangularDCEL::addFace(**(a1 + 8), *(v14 + 4 * v5), *(v14 + 4 * (v6 - 2)), *(v14 + 4 * (v6 - 1)), *(a1 + 16));
        v5 = v6;
        v7 = *(a1 + 48);
        v8 = v7 >= v6;
        v9 = v7 == v6;
        v6 += 3;
      }

      while (!v9 && v8);
    }
  }

  else
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v13, v4, *(a1 + 32), *(a1 + 40), 0, 1, v3);
    if (*(a1 + 48))
    {
      v10 = 0;
      v11 = 3;
      do
      {
        gdc::TriangularDCEL::addFace(**(a1 + 8), *(v14 + 2 * v10), *(v14 + 2 * (v11 - 2)), *(v14 + 2 * (v11 - 1)), *(a1 + 16));
        v10 = v11;
        v12 = *(a1 + 48);
        v8 = v12 >= v11;
        v9 = v12 == v11;
        v11 += 3;
      }

      while (!v9 && v8);
    }
  }

  ggl::BufferMemory::~BufferMemory(v13);
}

__n128 std::__function::__func<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::DaVinci::TexturedCompressedMesh const>(ggl::DaVinci::TexturedCompressedMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::DaVinci::TexturedCompressedMesh const>(ggl::DaVinci::TexturedCompressedMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A09298;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void md::TrafficDynamicTileDecoder::decode(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (((*(**a1 + 16))() & 1) == 0)
  {
    operator new();
  }

  *a2 = 0u;
}

void sub_1B2E95140(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::unique_ptr<md::TrafficDynamicTileResource>::~unique_ptr[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a5);
  }

  _Unwind_Resume(a1);
}

md::TrafficDynamicTileResource **std::unique_ptr<md::TrafficDynamicTileResource>::~unique_ptr[abi:nn200100](md::TrafficDynamicTileResource **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::TrafficDynamicTileResource::~TrafficDynamicTileResource(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void std::__shared_ptr_pointer<md::TrafficDynamicTileResource *,std::shared_ptr<md::TrafficDynamicTileResource>::__shared_ptr_default_delete<md::TrafficDynamicTileResource,md::TrafficDynamicTileResource>,std::allocator<md::TrafficDynamicTileResource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t *std::unique_ptr<zilch::TrafficDynamicTile>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x1B8C618C0]();
    MEMORY[0x1B8C62190](v3, 0x1032C40278CF260);
  }

  return a1;
}

void std::__shared_ptr_pointer<zilch::TrafficDynamicTile *,std::shared_ptr<zilch::TrafficDynamicTile>::__shared_ptr_default_delete<zilch::TrafficDynamicTile,zilch::TrafficDynamicTile>,std::allocator<zilch::TrafficDynamicTile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::FoggedDiffuseBuilding::BuildingPipelineSetup::~BuildingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *md::VenueFeatureMarker::debugString@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3 = *(this + 159);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = this[18];
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v4 = this[17];
  }

  else
  {
    v4 = this + 17;
  }

  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = mdm::zone_mallocator::instance(this);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v6, v5);
    v2[1] = v3;
    v2[2] = v5 | 0x8000000000000000;
    *v2 = v7;
    v2 = v7;
  }

  else
  {
    *(a2 + 23) = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  this = memmove(v2, v4, v3);
LABEL_13:
  *(v2 + v3) = 0;
  return this;
}

_BYTE *md::VenueFeatureMarker::shortName@<X0>(_BYTE *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a3;
  if (a2 && (this[240] & 1) != 0)
  {
    v4 = this + 216;
  }

  else
  {
    v4 = this + 160;
  }

  v5 = *(v4 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = v4[1];
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v4 = *v4;
  }

  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v5 | 7) + 1;
    }

    v7 = mdm::zone_mallocator::instance(this);
    v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v7, v6);
    v3[1] = v5;
    v3[2] = v6 | 0x8000000000000000;
    *v3 = v8;
    v3 = v8;
  }

  else
  {
    *(a3 + 23) = v5;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  this = memmove(v3, v4, v5);
LABEL_16:
  *(v3 + v5) = 0;
  return this;
}

_BYTE *md::VenueFeatureMarker::name@<X0>(_BYTE *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a3;
  if (a2 && (this[208] & 1) != 0)
  {
    v4 = this + 184;
  }

  else
  {
    v4 = this + 136;
  }

  v5 = *(v4 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = v4[1];
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v4 = *v4;
  }

  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v5 | 7) + 1;
    }

    v7 = mdm::zone_mallocator::instance(this);
    v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v7, v6);
    v3[1] = v5;
    v3[2] = v6 | 0x8000000000000000;
    *v3 = v8;
    v3 = v8;
  }

  else
  {
    *(a3 + 23) = v5;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  this = memmove(v3, v4, v5);
LABEL_16:
  *(v3 + v5) = 0;
  return this;
}

void md::VenueFeatureMarker::~VenueFeatureMarker(void **this)
{
  *this = &unk_1F2A09428;
  md::Venue::~Venue(this + 4);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A09428;
  md::Venue::~Venue(this + 4);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void md::Venue::~Venue(void **this)
{
  if (*(this + 208) == 1 && *(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 176) == 1 && *(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  v3 = this[5];
  if (v3)
  {
    this[6] = v3;
    operator delete(v3);
  }

  v4 = this + 2;
  std::vector<md::VenueBuilding>::__destroy_vector::operator()[abi:nn200100](&v4);
}

void std::vector<md::VenueBuilding>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 120;
        std::__destroy_at[abi:nn200100]<md::VenueBuilding,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<md::VenueBuilding,0>(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = a1;
  std::vector<md::VenueLevel>::__destroy_vector::operator()[abi:nn200100](&v3);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueBuilding>>(unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void ggl::DaVinci::GroundDepthPipelineSetup::~GroundDepthPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ImageCopy::Pos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A09510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::IdentifiedResourceLogic::debugConsoleString@<X0>(md::SceneContext **a1@<X2>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v57);
  v4 = *a1;
  *__p = 0u;
  v55 = 0u;
  v56 = 1065353216;
  v5 = md::SceneContext::layerDataInView(v4, 33);
  v6 = *v5;
  v52 = v5 + 1;
  if (*v5 != v5 + 1)
  {
    while (1)
    {
      v7 = v6[4];
      v8 = v6[5];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v53 = v8;
      v9 = gdc::Registry::storage<md::components::Asset>(*(v7 + 1328));
      v10 = v9[7];
      v11 = v9[8];
      if (v10 != v11)
      {
        break;
      }

LABEL_24:
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v53);
      }

      v19 = v6[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v6[2];
          v21 = *v20 == v6;
          v6 = v20;
        }

        while (!v21);
      }

      v6 = v20;
      if (v20 == v52)
      {
        goto LABEL_32;
      }
    }

    v12 = v9[10];
LABEL_6:
    v13 = *v12;
    if (!__p[1])
    {
      goto LABEL_22;
    }

    v14 = vcnt_s8(__p[1]);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = *v12;
      if (v13 >= __p[1])
      {
        v15 = v13 % __p[1];
      }
    }

    else
    {
      v15 = (__p[1] - 1) & v13;
    }

    v16 = *(__p[0] + v15);
    if (!v16 || (v17 = *v16) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v18 = v17[1];
      if (v18 == v13)
      {
        if (v17[2] == v13)
        {
          ++*(v17 + 6);
          v12 += 9;
          v10 += 8;
          if (v10 == v11)
          {
            goto LABEL_24;
          }

          goto LABEL_6;
        }
      }

      else
      {
        if (v14.u32[0] > 1uLL)
        {
          if (v18 >= __p[1])
          {
            v18 %= __p[1];
          }
        }

        else
        {
          v18 &= __p[1] - 1;
        }

        if (v18 != v15)
        {
          goto LABEL_22;
        }
      }

      v17 = *v17;
      if (!v17)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_32:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v57, "\n=== Assets ===\n", 16);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v57, "Count: ", 7);
  v22 = MEMORY[0x1B8C61CB0](&v57, *(a2 + 64));
  v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, " - In Scene: ", 13);
  v24 = MEMORY[0x1B8C61CB0](v23, *(&v55 + 1));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, "\n", 1);
  for (i = *(a2 + 56); i; i = *i)
  {
    v26 = i[3];
    v27 = MEMORY[0x1B8C61CF0](&v57, i[2]);
    v28 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v27, " - ", 3);
    v29 = MEMORY[0x1B8C61CB0](v28, *(i[3] + 368));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, " lods\n", 6);
    v30 = *(v26 + 184);
    v31 = *(v26 + 192);
    while (v30 != v31)
    {
      if (__p[1])
      {
        v32 = i[2];
        v33 = vcnt_s8(__p[1]);
        v33.i16[0] = vaddlv_u8(v33);
        if (v33.u32[0] > 1uLL)
        {
          v34 = i[2];
          if (v32 >= __p[1])
          {
            v34 = v32 % __p[1];
          }
        }

        else
        {
          v34 = (__p[1] - 1) & v32;
        }

        v35 = *(__p[0] + v34);
        if (v35)
        {
          for (j = *v35; j; j = *j)
          {
            v37 = j[1];
            if (v37 == v32)
            {
              if (j[2] == v32)
              {
                v44 = *(j + 6);
                goto LABEL_52;
              }
            }

            else
            {
              if (v33.u32[0] > 1uLL)
              {
                if (v37 >= __p[1])
                {
                  v37 %= __p[1];
                }
              }

              else
              {
                v37 &= __p[1] - 1;
              }

              if (v37 != v34)
              {
                break;
              }
            }
          }
        }
      }

      v44 = 0;
LABEL_52:
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v57, "\t Instances: ", 13);
      v38 = MEMORY[0x1B8C61C90](&v57, v44);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, "\n", 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v57, "\t\t", 2);
      v39 = MEMORY[0x1B8C61C80](&v57, 0);
      v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, ": ", 2);
      v41 = MEMORY[0x1B8C61CB0](v40, (v30[3] - v30[2]) / 3uLL);
      v42 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, " tri's ", 7);
      v43 = MEMORY[0x1B8C61CB0](v42, (*(*v30 + 72) - *(*v30 + 64)) >> 4);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, " vertices\n", 10);
      v30 += 10;
    }
  }

  if ((v64 & 0x10) != 0)
  {
    v47 = v63;
    if (v63 < v60)
    {
      v63 = v60;
      v47 = v60;
    }

    locale = v59[4].__locale_;
  }

  else
  {
    if ((v64 & 8) == 0)
    {
      v45 = 0;
      v46 = a3;
      a3[23] = 0;
      goto LABEL_67;
    }

    locale = v59[1].__locale_;
    v47 = v59[3].__locale_;
  }

  v46 = a3;
  v45 = v47 - locale;
  if ((v47 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v45 >= 0x17)
  {
    operator new();
  }

  a3[23] = v45;
  if (v45)
  {
    memmove(a3, locale, v45);
  }

LABEL_67:
  v46[v45] = 0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(__p);
  v57 = *MEMORY[0x1E69E54E8];
  *(&v57 + *(v57 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v58 = MEMORY[0x1E69E5548] + 16;
  if (v62 < 0)
  {
    operator delete(v61);
  }

  v58 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v59);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v65);
}

void sub_1B2E96314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a13);
  a19 = *MEMORY[0x1E69E54E8];
  *(&a19 + *(a19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a20 = MEMORY[0x1E69E5548] + 16;
  if (a33 < 0)
  {
    operator delete(__p);
  }

  a20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a21);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a36);
  _Unwind_Resume(a1);
}

uint64_t gdc::RegistryView<md::components::ReferencedAssetInstance,md::components::NonTiled>::getComponent<md::components::NonTiled,md::components::ReferencedAssetInstance>(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    return a1[11];
  }

  else
  {
    return a1[10] + 96 * ((v3 - a1[7]) >> 3);
  }
}

uint64_t gdc::RegistryView<md::components::Asset,md::components::NonTiled>::getComponent<md::components::NonTiled,md::components::Asset>(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    return a1[11];
  }

  else
  {
    return a1[10] + 72 * ((v3 - a1[7]) >> 3);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(*(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>>>::swap(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *a2;
  *a2 = v4;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 8);
  v10 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  v11 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v12;
  if (*(a1 + 24))
  {
    v13 = *(a1 + 8);
    v14 = *(*(a1 + 16) + 8);
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v14 >= v13)
      {
        v14 %= v13;
      }
    }

    else
    {
      v14 &= v13 - 1;
    }

    *(*a1 + 8 * v14) = a1 + 16;
  }

  if (v11)
  {
    v15 = *(a2 + 8);
    v16 = *(*(a2 + 16) + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v16 >= v15)
      {
        v16 %= v15;
      }
    }

    else
    {
      v16 &= v15 - 1;
    }

    *(*a2 + 8 * v16) = a2 + 16;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2)
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

void sub_1B2E96880(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t md::Logic<md::IdentifiedResourceLogic,md::IdentifiedResourceContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x12B1E486D3040E2CLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::resolveDependencies(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::IdentifiedResourceContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::IdentifiedResourceContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::IdentifiedResourceContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::IdentifiedResourceContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A09718;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v2 + 184);
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v2 + 144);
    v3 = *(v2 + 120);
    if (v3)
    {
      *(v2 + 128) = v3;
      operator delete(v3);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 80);
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v2 + 40);
    v4 = std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v4, 0x10B0C40F8CC62CALL);
  }

  return a1;
}

void md::IdentifiedResourceLogic::~IdentifiedResourceLogic(md::IdentifiedResourceLogic *this)
{
  md::IdentifiedResourceLogic::~IdentifiedResourceLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A09548;
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 304);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 224);

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 152);
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::unique_ptr<gdc::LayerDataCollector>::~unique_ptr[abi:nn200100](this + 16);
  std::unique_ptr<gdc::LayerDataCollector>::~unique_ptr[abi:nn200100](this + 15);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B2E96B2C(_Unwind_Exception *a1)
{
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 304);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 224);

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 152);
  v3 = *(v1 + 144);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::unique_ptr<gdc::LayerDataCollector>::~unique_ptr[abi:nn200100]((v1 + 128));
  std::unique_ptr<gdc::LayerDataCollector>::~unique_ptr[abi:nn200100]((v1 + 120));
  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

gdc::LayerDataCollector **std::unique_ptr<gdc::LayerDataCollector>::~unique_ptr[abi:nn200100](gdc::LayerDataCollector **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    gdc::LayerDataCollector::~LayerDataCollector(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void ___ZN2md23IdentifiedResourceLogicC2ERKNSt3__110shared_ptrINS_15RegistryManagerEEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1)
{
  md::IdentifiedResourceLogic::IdentifiedResourceLogic(std::shared_ptr<md::RegistryManager> const&,NSObject  {objcproto17OS_dispatch_queue}*)::$_0::operator()(*(a1 + 32));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"VKShouldFlushTileCachesNotification" object:0];
}

void ___ZN2md23IdentifiedResourceLogicC2ERKNSt3__110shared_ptrINS_15RegistryManagerEEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 192) = GEOConfigGetBOOL();
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"VKShouldFlushTileCachesNotification" object:0];
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(void *result, unint64_t a2)
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

void md::Logic<md::IdentifiedResourceLogic,md::IdentifiedResourceContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::BuildingRenderLayer::featureMarker(uint64_t a1@<X1>, double *a2@<X2>, void *a3@<X8>)
{
  v3 = *(a1 + 648);
  *a3 = 0;
  a3[1] = 0;
  if (v3)
  {
    v7 = geo::codec::VectorTile::totalBuildingFootprintsCount(v3);
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = geo::codec::buildingFootprintFeatureAtIndex(*(a1 + 648), i);
        v11 = *(v10 + 96);
        if (v11)
        {
          v12 = v10;
          for (j = 0; j != v11; ++j)
          {
            v23 = 0;
            v14 = geo::codec::multiSectionFeaturePoints(v12, j, &v23);
            if (VKPointInPolygon(v14, v23, *a2, a2[1]))
            {
              operator new();
            }
          }
        }
      }

      *a3 = 0;
      a3[1] = 0;
      v3 = *(a1 + 648);
    }

    v15 = geo::codec::VectorTile::polygonsCount(*(v3 + 96), *(v3 + 104));
    if (v15)
    {
      v16 = v15;
      for (k = 0; k < v16; ++k)
      {
        v18 = *(*(a1 + 648) + 96) + (k << 7);
        v23 = v18;
        v19 = *(v18 + 96);
        if (v19)
        {
          for (m = 0; m != v19; ++m)
          {
            v22 = 0;
            v21 = geo::codec::multiSectionFeaturePoints(v18, m, &v22);
            if (VKPointInPolygon(v21, v22, *a2, a2[1]))
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

void sub_1B2E97204(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  v1[1] = v2;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::VectorFeatureMarker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A36930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::BuildingRenderLayer::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = md::LayoutContext::get<md::VenueLogicContext>(v4);
  v6 = md::LayoutContext::get<md::CameraContext>(v4);
  v71 = md::LayoutContext::get<md::ElevationContext>(v4);
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      v9 = *v7;
      v10 = v6[471] * v6[173] / (v6[171] * (*(*v7 + 80) - *(*v7 + 64)));
      *(v9 + 376) = v10;
      *(v9 + 416) = *(v71 + 5);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v77, *(v9 + 224), 1);
      v11 = 0;
      v12 = v6 + 101;
      do
      {
        v13 = 0;
        v14 = v9 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          v72[4 * v13++ + v11] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v11;
        ++v12;
      }

      while (v11 != 4);
      v19 = 0;
      v20 = v72;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        *(&v73 + v19) = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
        v19 += 16;
      }

      while (v19 != 64);
      v23 = v78;
      v24 = v74;
      *v78 = v73;
      v23[1] = v24;
      v25 = v76;
      v23[2] = v75;
      v23[3] = v25;
      *(v23 + 16) = *(v9 + 376);
      ggl::BufferMemory::~BufferMemory(v77);
      v27 = *(v9 + 472);
      v28 = *(v9 + 480);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, v27, 1);
        std::__shared_weak_count::__release_shared[abi:nn200100](v28);
      }

      else
      {
        ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, v27, 1);
      }

      v29 = 0;
      v30 = v6 + 101;
      do
      {
        v31 = 0;
        v32 = v9 + 648;
        do
        {
          v33 = 0;
          v34 = 0.0;
          v35 = v30;
          do
          {
            v36 = *v35;
            v35 += 4;
            v34 = v34 + *(v32 + v33) * v36;
            v33 += 8;
          }

          while (v33 != 32);
          v72[4 * v31++ + v29] = v34;
          v32 += 32;
        }

        while (v31 != 4);
        ++v29;
        ++v30;
      }

      while (v29 != 4);
      v37 = 0;
      v38 = v72;
      do
      {
        v40 = *v38;
        v39 = v38[1];
        v38 += 2;
        *(&v73 + v37) = vcvt_hight_f32_f64(vcvt_f32_f64(v40), v39);
        v37 += 16;
      }

      while (v37 != 64);
      v41 = v78;
      v42 = v74;
      *v78 = v73;
      v41[1] = v42;
      v43 = v76;
      v41[2] = v75;
      v41[3] = v43;
      *(v41 + 16) = *(v9 + 376);
      ggl::BufferMemory::~BufferMemory(v77);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v44, *(v9 + 488), 1);
      v45 = 0;
      if (v5)
      {
        v46 = (v5 + 18);
        do
        {
          v47 = 0;
          v48 = v9 + 96;
          do
          {
            v49 = 0;
            v50 = 0.0;
            v51 = v46;
            do
            {
              v52 = *v51;
              v51 += 4;
              v50 = v50 + *(v48 + v49) * v52;
              v49 += 8;
            }

            while (v49 != 32);
            v72[4 * v47++ + v45] = v50;
            v48 += 32;
          }

          while (v47 != 4);
          ++v45;
          ++v46;
        }

        while (v45 != 4);
        v53 = 0;
        v54 = v72;
        do
        {
          v56 = *v54;
          v55 = v54[1];
          v54 += 2;
          *(&v73 + v53) = vcvt_hight_f32_f64(vcvt_f32_f64(v56), v55);
          v53 += 16;
        }

        while (v53 != 64);
      }

      else
      {
        v57 = v6 + 101;
        do
        {
          v58 = 0;
          v59 = v9 + 96;
          do
          {
            v60 = 0;
            v61 = 0.0;
            v62 = v57;
            do
            {
              v63 = *v62;
              v62 += 4;
              v61 = v61 + *(v59 + v60) * v63;
              v60 += 8;
            }

            while (v60 != 32);
            v72[4 * v58++ + v45] = v61;
            v59 += 32;
          }

          while (v58 != 4);
          ++v45;
          ++v57;
        }

        while (v45 != 4);
        v64 = 0;
        v65 = v72;
        do
        {
          v67 = *v65;
          v66 = v65[1];
          v65 += 2;
          *(&v73 + v64) = vcvt_hight_f32_f64(vcvt_f32_f64(v67), v66);
          v64 += 16;
        }

        while (v64 != 64);
      }

      v68 = v78;
      v69 = v74;
      *v78 = v73;
      v68[1] = v69;
      v70 = v76;
      v68[2] = v75;
      v68[3] = v70;
      *(v68 + 16) = *(v9 + 376);
      ggl::BufferMemory::~BufferMemory(v77);
      ++v7;
    }

    while (v7 != v8);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>,void *>>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void ___ZN2md19BuildingRenderLayer12animateTilesERKN3geo5sliceINSt3__111__wrap_iterIPKPNS_26BuildingTileDataRenderableEEEEEffff_block_invoke_3(uint64_t a1, float a2)
{
  v2 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (*(a1 + 64) > *(a1 + 68))
  {
    a2 = 1.0 - a2;
  }

  *(v5 + 408) = a2;
  v6 = *(a1 + 64);
  v7 = *(a1 + 68);
  *(v5 + 412) = v6 + ((*(*(a1 + 32) + 16))(v2) * (v7 - v6));
  v8 = *(a1 + 48);
  v9 = *(a1 + 72);
  v10 = *(a1 + 76);
  *(v8 + 420) = v9 + ((*(*(a1 + 32) + 16))(v2) * (v10 - v9));
  v11 = *(v4 + 456);
  v12 = *(a1 + 56);

  md::MercatorTerrainHeightCache::invalidateRect(v11, v12);
}

void ___ZN2md19BuildingRenderLayer12animateTilesERKN3geo5sliceINSt3__111__wrap_iterIPKPNS_26BuildingTileDataRenderableEEEEEffff_block_invoke_4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = 1.0;
  if (*(a1 + 56) > *(a1 + 60))
  {
    v4 = 0.0;
  }

  *(v2 + 408) = v4;
  *(v2 + 412) = *(a1 + 60);
  *(v2 + 420) = *(a1 + 64);
  md::BuildingTileDataRenderable::setAnimation(v2, 0);
  v5 = *(v3 + 456);
  v6 = *(a1 + 48);

  md::MercatorTerrainHeightCache::invalidateRect(v5, v6);
}

void md::BuildingRenderLayer::renderablesWillEnterView(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v5 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 8));
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v8 = v5;
    do
    {
      v9 = *(*v6 + 392);
      v10 = *(v9 + 728);
      v11 = *(v9 + 736);
      while (v10 != v11)
      {
        v12 = *v10;
        v13 = v10[1];
        while (v12 != v13)
        {
          v14 = *(v12 + 8);
          [v14 updateWithStyleManager:v8];

          v12 += 24;
        }

        v10 += 3;
      }

      ++v6;
    }

    while (v6 != v7);
    v6 = *a3;
    v7 = a3[1];
  }

  if (*(*(a1 + 376) + 17) == 1)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  md::BuildingRenderLayer::animateTiles(a1, v6, v7, 0.0, 1.0, 0.0, v15);
}

void md::BuildingRenderLayer::prepare(uint64_t **this, md::LayoutContext *a2)
{
  ((*this)[13])(this);
  v4 = this[34];
  for (i = this[35]; v4 != i; ++v4)
  {
    v6 = *v4;
    v7 = md::LabelExternalPointFeature::incident(*(*v4 + 432));
    if (v7)
    {
    }

    else
    {
      v8 = *(v6 + 456);
      md::LabelExternalPointFeature::incident(v8);
      objc_claimAutoreleasedReturnValue();

      if (!v8)
      {
        if (*(this[47] + 17))
        {
          v9 = 1.0;
        }

        else
        {
          v9 = 0.0;
        }

        *(v6 + 420) = v9;
      }
    }
  }

  if (*(this[47] + 17) == 1 && *(this[49] + 771) == 1)
  {
    v10 = this[35];
    v11 = this[34];
    if (v10 != v11)
    {
      **(a2 + 93) = 1;
      do
      {
        if ((*(*(a2 + 93) + 1) & 1) == 0)
        {
          v12 = *v11;
          if (*(*(*v11 + 392) + 888) != *(*(*v11 + 392) + 880))
          {
            v13 = *(v12 + 432);
            md::LabelExternalPointFeature::incident(v13);
            objc_claimAutoreleasedReturnValue();
            if (v13)
            {
              *(*(a2 + 93) + 1) = 1;
            }

            else
            {
              v14 = md::LabelExternalPointFeature::incident(*(v12 + 456));
              *(*(a2 + 93) + 1) = v14 != 0;
            }
          }
        }

        ++v11;
      }

      while (v11 != v10);
    }
  }
}

uint64_t md::BuildingRenderLayer::reserveStencilRange(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 486) == *(a3 + 1))
  {
    v3 = result;
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), 1, (*(result + 392) + 760), 0);
    *(*(v3 + 392) + 776) = result;
  }

  return result;
}

unint64_t md::BuildingRenderLayer::layout(md::BuildingRenderLayer *this, const md::LayoutContext *a2)
{
  v2 = this;
  v146 = *MEMORY[0x1E69E9840];
  v3 = *(this + 44);
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v4 = *(a2 + 1);
  v5 = md::LayoutContext::get<md::CameraContext>(v4);
  v6 = *(v2 + 408);
  if (*(*(v2 + 49) + 771) != 1)
  {
    md::BuildingRenderLayer::setBuildingMode(v2, 0, *(v2 + 408));
    goto LABEL_22;
  }

  v7 = gdc::Context::get<md::StyleLogicContext>(v4);
  v8 = *(*(v2 + 47) + 16);
  v9 = v7[85];
  gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v140, *(*v7 + 16));
  shared_owners = v140;
  if (v140)
  {
    shared_owners = v140[12].__shared_owners_;
  }

  if (v9 == 3 || (shared_owners & 1) != 0)
  {
    if (v8 != 1)
    {
      md::BuildingRenderLayer::setBuildingMode(v2, 1, v6);
    }

    goto LABEL_20;
  }

  v11 = *(gdc::Camera::cameraFrame(v5) + 32);
  if (v11 > 0.0 && v8 != 1)
  {
    v14 = 1;
LABEL_19:
    md::BuildingRenderLayer::setBuildingMode(v2, v14, v6);
    goto LABEL_20;
  }

  if (v11 == 0.0 && v8 != 0)
  {
    v14 = 0;
    goto LABEL_19;
  }

LABEL_20:
  if (v141)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v141);
  }

LABEL_22:
  md::BuildingRenderResources::resetPools(*(v2 + 49));
  md::LandmarkRenderResources::resetPools(*(v2 + 50));
  v15 = *(*(*(v2 + 5) + 24) + 8);
  md::FrameGraph::renderQueueForPass(v15, *(v2 + 472));
  v16 = md::FrameGraph::renderQueueForPass(v15, *(v2 + 474));
  if (v16)
  {
    v17 = *(*(v16 + 16) + 8 * *(v2 + 475));
  }

  else
  {
    v17 = 0;
  }

  v18 = md::FrameGraph::renderQueueForPass(v15, *(v2 + 476));
  if (v18)
  {
    v19 = *(*(v18 + 16) + 8 * *(v2 + 477));
  }

  else
  {
    v19 = 0;
  }

  v20 = md::FrameGraph::renderQueueForPass(v15, *(v2 + 478));
  if (v20)
  {
    v132 = *(*(v20 + 16) + 8 * *(v2 + 479));
  }

  else
  {
    v132 = 0;
  }

  v21 = md::FrameGraph::renderQueueForPass(v15, *(v2 + 480));
  if (v21)
  {
    v125 = *(*(v21 + 16) + 8 * *(v2 + 481));
  }

  else
  {
    v125 = 0;
  }

  v22 = md::FrameGraph::renderQueueForPass(v15, *(v2 + 482));
  if (v22)
  {
    v126 = *(*(v22 + 16) + 8 * *(v2 + 483));
  }

  else
  {
    v126 = 0;
  }

  v23 = md::FrameGraph::renderQueueForPass(v15, *(v2 + 484));
  if (v23)
  {
    v24 = *(*(v23 + 16) + 8 * *(v2 + 485));
  }

  else
  {
    v24 = 0;
  }

  ggl::CommandBuffer::clearRenderItems(v132);
  *(v132 + 4) = *(*(v2 + 49) + 760);
  ggl::CommandBuffer::clearRenderItems(v125);
  *(v125 + 4) = *(*(v2 + 49) + 760);
  ggl::CommandBuffer::clearRenderItems(v126);
  *(v126 + 4) = *(*(v2 + 49) + 760);
  ggl::CommandBuffer::clearRenderItems(v24);
  *(v24 + 32) = *(*(v2 + 49) + 760);
  v25 = *(a2 + 1);
  v26 = md::LayoutContext::get<md::VenueLogicContext>(v25);
  md::LayoutContext::zoomAtCentrePoint(v25);
  if (v26)
  {
    v28 = 1.0 - fminf(fmaxf((*(v2 + 103) * 2.0) + -31.0, 0.0), 1.0);
    *(v2 + 103) = v27;
    if (v28 < 0.00000011921 == (1.0 - fminf(fmaxf((v27 * 2.0) + -31.0, 0.0), 1.0)) >= 0.00000011921)
    {
      md::MercatorTerrainHeightCache::invalidateRect(*(v2 + 57), v5 + 2920);
    }
  }

  else
  {
    *(v2 + 103) = v27;
  }

  v131 = v2;
  if (*(*(v2 + 47) + 17) == 1)
  {
    v57 = *(v2 + 49);
    if (*(v57 + 771) == 1)
    {
      v58 = *(v2 + 34);
      v59 = *(v2 + 35);
      v123 = v19;
      if (v58 == v59)
      {
        v63 = 5;
      }

      else
      {
        v60 = 1;
        do
        {
          v61 = *v58++;
          v62 = (*(*(v61 + 392) + 888) - *(*(v61 + 392) + 880)) >> 4;
          if (v60 <= v62)
          {
            v60 = v62;
          }
        }

        while (v58 != v59);
        v63 = 5 * v60;
      }

      v134 = v63;
      if (*(v57 + 770))
      {
        v65 = *gdc::Context::get<md::StyleLogicContext>(*(a2 + 1));
        if (v65)
        {
          gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v138, *(v65 + 16));
          v66 = v138;
          if (v138)
          {
            v67 = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
            if (v67)
            {
              v68 = v67;
              v69 = *(v66 + 300);
              v70 = *(v66 + 308);
              v71 = *(v66 + 312);
              v72 = gdc::ToCoordinateSystem(*(v67 + 320));
              v73 = 2;
              if (v72)
              {
                v73 = 4;
              }

              v74 = &v68[v73];
              v75 = v74[1];
              v133 = *v74;
              if (v75)
              {
                atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v76 = *(v2 + 34);
              v129 = v75;
              for (i = *(v2 + 35); v76 != i; ++v76)
              {
                v77 = *v76;
                v78 = *(*v76 + 392);
                v79 = *(*(v2 + 49) + 592);
                v80 = v79[1];
                if (v80 == *v79)
                {
                  v82 = v79[11];
                  if (!v82)
                  {
                    goto LABEL_136;
                  }

                  v72 = (*(*v82 + 48))(v82);
                  v81 = v72;
                }

                else
                {
                  v81 = *(v80 - 8);
                  v79[1] = v80 - 8;
                }

                v84 = v79[5];
                v83 = v79[6];
                if (v84 >= v83)
                {
                  v86 = v79[4];
                  v87 = (v84 - v86) >> 3;
                  if ((v87 + 1) >> 61)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v88 = v83 - v86;
                  v89 = v88 >> 2;
                  if (v88 >> 2 <= (v87 + 1))
                  {
                    v89 = v87 + 1;
                  }

                  if (v88 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v90 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v90 = v89;
                  }

                  v144 = v79 + 7;
                  if (v90)
                  {
                    v91 = ggl::zone_mallocator::instance(v72);
                    v92 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingShadow::MeshPipelineSetup *>(v91, v90);
                  }

                  else
                  {
                    v92 = 0;
                  }

                  v94 = &v92[8 * v90];
                  v93 = &v92[8 * v87];
                  *v93 = v81;
                  v85 = v93 + 1;
                  v95 = v79[4];
                  v96 = v79[5] - v95;
                  v97 = v93 - v96;
                  memcpy(v93 - v96, v95, v96);
                  v98 = v79[4];
                  v79[4] = v97;
                  v79[5] = v85;
                  v99 = v79[6];
                  v79[6] = v94;
                  v142 = v98;
                  v143 = v99;
                  v141 = v98;
                  v140 = v98;
                  std::__split_buffer<ggl::BuildingShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v140);
                  v2 = v131;
                }

                else
                {
                  *v84 = v81;
                  v85 = v84 + 1;
                }

                v79[5] = v85;
                v140 = v81;
                v100 = v79[15];
                if (!v100)
                {
LABEL_136:
                  std::__throw_bad_function_call[abi:nn200100]();
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                (*(*v100 + 48))(v100, &v140);
                v102 = *(v77 + 472);
                v103 = *(v77 + 480);
                if (v103)
                {
                  atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
                  v105 = v81 + 136;
                  v104 = *(v81 + 17);
                  *v104 = v102;
                  v104[1] = 0;
                  v106 = *(v81 + 29);
                  atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                else
                {
                  v105 = v81 + 136;
                  v107 = *(v81 + 17);
                  *v107 = v102;
                  v107[1] = 0;
                  v106 = *(v81 + 29);
                }

                v108 = v106[1];
                *v106 = v102;
                v106[1] = v103;
                if (v108)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v108);
                }

                if (v103)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v103);
                }

                **(v81 + 21) = *(v78 + 904);
                LODWORD(v101) = *(v77 + 412);
                (*(VKAnimationCurveEaseInOut + 2))(v101);
                v135 = (v109 * v71) * *(v77 + 420);
                v110 = *(*v105 + 16);
                ggl::BufferMemory::BufferMemory(&v136);
                ggl::ResourceAccessor::accessConstantData(&v140, 0, v110, 1);
                ggl::BufferMemory::operator=(&v136, &v140);
                ggl::BufferMemory::~BufferMemory(&v140);
                v111 = v137;
                v137->i32[0] = **(v2 + 49);
                v111[2] = vmul_n_f32(v69, v135);
                v111[3].f32[0] = v135 * v70;
                v111[3].f32[1] = v135;
                ggl::BufferMemory::~BufferMemory(&v136);
                v112 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 49) + 752));
                v113 = *(*(v2 + 49) + 720);
                v112[2].__shared_weak_owners_ = v133;
                v112[3].__vftable = 0;
                v112[3].__shared_owners_ = 0;
                v112[3].__shared_weak_owners_ = 0;
                v112[4].__vftable = 1;
                v112[1].__vftable = v113;
                v112[1].__shared_owners_ = v81;
                v112[2].__vftable = v134;
                v140 = v112;
                v72 = std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v24 + 72), &v140);
              }

              if (v129)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v129);
              }
            }
          }

          if (v139)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v139);
          }
        }
      }

      for (j = 0; j != 2; ++j)
      {
        v115 = md::BuildingRenderLayer::layout(md::LayoutContext const&)::allSelectionStates[j];
        md::BuildingRenderLayer::layout3DBuildings(v2, v2 + 34, v125, a2, v115, 0);
        md::BuildingRenderLayer::layout3DBuildings(v2, v2 + 34, v126, a2, v115, 1);
      }

      md::BuildingRenderLayer::layout3DLandmarks(v2, v2 + 272, v17, a2, 0);
      goto LABEL_128;
    }
  }

  else if (!*(*(v2 + 47) + 17))
  {
    v123 = v19;
    v29 = 0;
    do
    {
      v128 = md::BuildingRenderLayer::layout(md::LayoutContext const&)::allSelectionStates[v29];
      v30 = *(a2 + 1);
      v31 = gdc::Context::context<md::PolygonContext>(v30);
      v124 = v29;
      if (v31 && *(v31 + 16) == 1)
      {
        v32 = v31[1];
      }

      else
      {
        v32 = 0;
      }

      if (v128 != 1 || v32 != 0)
      {
        v34 = *(v2 + 35);
        v35 = *(v2 + 34);
        if (v34 != v35)
        {
          md::LayoutContext::get<md::CameraContext>(v30);
          v36 = 0.0;
          v37 = 3.4028e38;
          do
          {
            v38 = *(*v35 + 392);
            v39 = *(v38 + 728);
            v40 = *(v38 + 736);
            while (v39 != v40)
            {
              v41 = *v39;
              v42 = v39[1];
              while (v41 != v42)
              {
                v43 = *(v41 + 8);
                v44 = *([v43 origin] + 8);
                v45 = *([v43 maxPoint] + 8);

                v37 = fminf(v44, v37);
                v36 = fmaxf(v36, v45);
                v41 += 24;
              }

              v39 += 3;
            }

            v35 += 8;
          }

          while (v35 != v34);
          v46 = *(a2 + 1);
          md::LayoutContext::get<md::VenueLogicContext>(v46);
          v47 = md::LayoutContext::get<md::SharedResourcesContext>(v46);
          if (*(v2 + 55))
          {
            v53 = *(v2 + 54);
            if (v53)
            {
              do
              {
                v54 = *v53;
                operator delete(v53);
                v53 = v54;
              }

              while (v54);
            }

            *(v2 + 54) = 0;
            v55 = *(v2 + 53);
            if (v55)
            {
              for (k = 0; k != v55; ++k)
              {
                *(*(v2 + 52) + 8 * k) = 0;
              }
            }

            *(v2 + 55) = 0;
          }

          [*v47 alphaAtlas];
          v48 = *(v2 + 34);
          if (v48 != *(v2 + 35))
          {
            v49 = *(*v48 + 224);
            v50 = *(*v48 + 232);
            if (v50)
            {
              atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
            }

            ggl::DataAccess<ggl::Tile::View>::DataAccess(&v140, v49, 0);
            v51 = 0;
            v52 = v145;
            do
            {
              *(&v138 + v51) = *(v52 + v51);
              v51 += 16;
            }

            while (v51 != 64);
            ggl::BufferMemory::~BufferMemory(&v140);
            ggl::CullingGrid::intersectedCellsForView(&v138, 0.0);
            md::featureIdPredicate();
          }
        }
      }

      md::BuildingRenderLayer::layout3DBuildings(v2, v2 + 34, v126, a2, v128, 1);
      v29 = v124 + 1;
    }

    while (v124 != 1);
    v64 = *(a2 + 1);
    md::LayoutContext::get<md::VenueLogicContext>(*(a2 + 1));
    if (*(v2 + 55))
    {
      v119 = *(v2 + 54);
      if (v119)
      {
        do
        {
          v120 = *v119;
          operator delete(v119);
          v119 = v120;
        }

        while (v120);
      }

      *(v2 + 54) = 0;
      v121 = *(v2 + 53);
      if (v121)
      {
        for (m = 0; m != v121; ++m)
        {
          *(*(v2 + 52) + 8 * m) = 0;
        }
      }

      *(v2 + 55) = 0;
      v64 = *(a2 + 1);
    }

    md::LayoutContext::get<md::CameraContext>(v64);
    gdc::Context::context<md::PolygonContext>(v64);
    v116 = *(v2 + 34);
    if (v116 != *(v2 + 35))
    {
      v117 = *(*v116 + 232);
      if (v117)
      {
        atomic_fetch_add_explicit((v117 + 8), 1uLL, memory_order_relaxed);
      }

      md::featureIdPredicate();
    }

LABEL_128:
    md::BuildingRenderLayer::layout3DLandmarks(v2, v2 + 272, v123, a2, 1);
  }

  ggl::CommandBuffer::sortRenderItems(*(v132 + 9), *(v132 + 10));
  ggl::CommandBuffer::sortRenderItems(*(v125 + 9), *(v125 + 10));
  return ggl::CommandBuffer::sortRenderItems(*(v126 + 9), *(v126 + 10));
}

void sub_1B2E9991C(_Unwind_Exception *a1)
{
  if (STACK[0x2A0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2A0]);
  }

  _Unwind_Resume(a1);
}

void md::BuildingRenderLayer::setBuildingMode(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 376);
  if (*(v3 + 17) != a2)
  {
    v4 = a2;
    if (a2)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (!a3 || (v7 = *(a1 + 280), v8 = *(a1 + 272), v7 == v8))
    {
      *(v3 + 16) = a2;
      *(v3 + 17) = a2;
      v16 = **(*(a1 + 40) + 88);
      if (v16)
      {
        v26[0] = 7;
        md::MapEngine::setNeedsTick(v16, v26);
      }

      v17 = *(a1 + 272);
      v18 = *(a1 + 280);
      while (v17 != v18)
      {
        v19 = *v17++;
        *(v19 + 420) = v6;
      }
    }

    else
    {
      do
      {
        v9 = *v8;
        v10 = [[VKTimedAnimation alloc] initWithDuration:0.300000012];
        v11 = *(*(a1 + 392) + 771);
        v12 = *(a1 + 376);
        if (v11 != *(v12 + 17))
        {
          *(v12 + 17) = v11;
          v13 = **(*(a1 + 40) + 88);
          if (v13)
          {
            v26[0] = 7;
            md::MapEngine::setNeedsTick(v13, v26);
          }
        }

        v14 = *(v9 + 420);
        v15 = *(v9 + 456);
        md::LabelExternalPointFeature::incident(v15);
        [objc_claimAutoreleasedReturnValue() stop];

        *(*(a1 + 376) + 16) = v4;
        [(VKTimedAnimation *)v10 setTimingFunction:VKAnimationCurveEaseOut];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = ___ZN2md19BuildingRenderLayer15setBuildingModeENS_18BuildingRenderModeEb_block_invoke;
        v23[3] = &__block_descriptor_64_e8_v12__0f8l;
        v23[4] = a1;
        v23[5] = v9;
        v24 = v14;
        v25 = v6;
        v23[6] = v9 + 64;
        [(VKTimedAnimation *)v10 setStepHandler:v23];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = ___ZN2md19BuildingRenderLayer15setBuildingModeENS_18BuildingRenderModeEb_block_invoke_2;
        v20[3] = &__block_descriptor_61_e8_v12__0B8l;
        v20[4] = a1;
        v20[5] = v9;
        v21 = v6;
        v22 = v4;
        v20[6] = v9 + 64;
        [(VKAnimation *)v10 setCompletionHandler:v20];
        md::BuildingTileDataRenderable::setAnimationForPitch(v9, &v10->super);
        md::AnimationRunner::runAnimation(*(a1 + 464), &v10->super);

        ++v8;
      }

      while (v8 != v7);
    }
  }
}

void ___ZN2md19BuildingRenderLayer15setBuildingModeENS_18BuildingRenderModeEb_block_invoke(uint64_t a1, float a2)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 420) = *(a1 + 56) + ((*(a1 + 60) - *(a1 + 56)) * a2);
  md::MercatorTerrainHeightCache::invalidateRect(*(v2 + 456), *(a1 + 48));
}

void ___ZN2md19BuildingRenderLayer15setBuildingModeENS_18BuildingRenderModeEb_block_invoke_2(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  md::BuildingTileDataRenderable::setAnimationForPitch(*(a1 + 40), 0);
  *(*(a1 + 40) + 420) = *(a1 + 56);
  if (a2)
  {
    v5 = *(a1 + 60);
    v6 = v4[47];
    if (v5 != *(v6 + 17))
    {
      *(v6 + 17) = v5;
      v7 = **(v4[5] + 88);
      if (v7)
      {
        v10 = 7;
        md::MapEngine::setNeedsTick(v7, &v10);
      }
    }

    v8 = v4[57];
    v9 = *(a1 + 48);

    md::MercatorTerrainHeightCache::invalidateRect(v8, v9);
  }
}

void md::DaVinciMaterialResourceDecoder::decode(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v6 = (*(**a2 + 32))(*a2);
    v7 = (*(**a2 + 24))();
    v9[0] = v6;
    v9[1] = v7;
    v9[2] = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 1065353216;
    v20 = 1065353216;
    v21 = 0u;
    v22 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 1065353216;
    v26 = 1065353216;
    v28 = 0u;
    v27 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 1065353216;
    v32 = 1065353216;
    v33 = 0u;
    v34 = 0u;
    v35 = 1065353216;
    v36 = 0u;
    v37 = 0u;
    v38 = 1065353216;
    v39 = 0u;
    v40 = 0u;
    v41 = 1065353216;
    v42 = 0u;
    v43 = 0u;
    v44 = 1065353216;
    v45 = 0;
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
    v49 = 1065353216;
    v51 = 0;
    v50 = 0u;
    if (geo::codec::MaterialSheet::decodeExternalMaterial(&v11, v9))
    {
      gdc::ResourceKey::getUInt64(*(a1 + 8), 0);
      md::DaVinciMaterialResourceDecoder::translateFromCodec(&v8, &v11);
    }

    *a3 = 0;
    a3[1] = 0;
    geo::codec::MaterialSheet::~MaterialSheet(&v11);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1B2E9A1F8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void **);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  geo::codec::MaterialSheet::~MaterialSheet(va1);
  _Unwind_Resume(a1);
}

void sub_1B2E9AF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  v24 = *(v22 - 200);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  v25 = *(v22 - 184);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  a21 = (v22 - 176);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a21);
  _Unwind_Resume(a1);
}

void geo::codec::MaterialSheet::~MaterialSheet(geo::codec::MaterialSheet *this)
{
  v2 = *(this + 64);
  if (v2)
  {
    v3 = *(this + 65);
    v4 = *(this + 64);
    if (v3 != v2)
    {
      v5 = *(this + 65);
      do
      {
        v7 = *(v5 - 40);
        v5 -= 40;
        v6 = v7;
        if (v7)
        {
          *(v3 - 32) = v6;
          free(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 64);
    }

    *(this + 65) = v2;
    free(v4);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 464);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(this + 376);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(this + 336);
  v8 = (this + 32);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = (this + 8);
  std::vector<geo::codec::MaterialSheet::Material>::__destroy_vector::operator()[abi:nn200100](&v8);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>::__destroy_vector::operator()[abi:nn200100](&v6);
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

void std::vector<geo::codec::MaterialSheet::Material>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 216;
      do
      {
        v7 = v6 - 240;
        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v6 + 168);
        std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(v6 + 80);
        std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(v6 + 40);
        v6 -= 456;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v4 - 40));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<md::DaVinciMaterialResource>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 184);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3 != *(a1 + 48))
  {

    free(v3);
  }
}

void std::__shared_ptr_emplace<md::DaVinciMaterialResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0B7C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void getMaterialFromCodec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *(a2 + 448);
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a5[1];
  v6 = *a5;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  gms::createMaterial<ggl::Texture2D>(a1, v8, &v9);
}

void sub_1B2E9C1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char,geo::allocator_adapter<unsigned char,geo::mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    if (v3 - *a2 < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
    *a1 = v6;
    *(a1 + 8) = v6;
    v7 = &v6[v5];
    *(a1 + 16) = &v6[v5];
    memmove(v6, v4, v5);
    *(a1 + 8) = v7;
  }

  return a1;
}

void gms::TextureStore<ggl::Texture2D>::addTexture(pthread_rwlock_t *a1, __int128 *a2, char a3)
{
  v8 = a3;
  v7 = a1;
  v5 = pthread_rwlock_wrlock(a1);
  if (v5)
  {
    geo::read_write_lock::logFailure(v5, "write lock", v6);
  }

  std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100](&a1[1], a2);
  std::vector<BOOL>::push_back(&a1[1].__opaque[16], &v8);
  geo::write_lock_guard::~write_lock_guard(&v7);
}

uint64_t geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::StyleAttribute const,unsigned short> *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v3 = result;
    if ((*(result + 16) & 1) == 0)
    {
      v5 = a2;
      v6 = *(result + 12);
      do
      {
        result = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v3, *v5);
        if (result == v6)
        {
          result = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(v3);
          if (!result)
          {
            return result;
          }

          v7 = *(v3 + 12);
          v8 = *v3;
          *(*v3 + 4 * v7) = *v5;
          *(v8 + *(v3 + 8) + 2 * v7) = *(v5 + 4);
          v6 = *(v3 + 12) + 1;
          *(v3 + 12) = v6;
          *(v3 + 17) = 0;
        }

        v5 += 8;
      }

      while (v5 != a3);
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,BOOL>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,BOOL>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,BOOL>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,BOOL>>>::find<unsigned char>(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 16) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::vector<std::pair<gm::Range<unsigned char>,float>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (v2 - *a2 >= 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void *std::vector<std::pair<gm::Range<unsigned char>,unsigned char>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v2 - *a2) < 0x5555555555555556)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t md::MuninRoadLabelingCameraState::MuninRoadLabelingCameraState(uint64_t a1, gdc::CameraView *this, uint64_t a3)
{
  v6 = gdc::CameraView::position(this);
  v7 = *(v6 + 16);
  *a1 = *v6;
  *(a1 + 16) = v7;
  v43 = 0.0;
  v44[0] = 0uLL;
  geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(a1, &v43);
  v41 = v44[0];
  v8 = tan(v43 * 0.5 + 0.785398163);
  v9 = log(v8);
  *&v10.f64[0] = v41;
  v10.f64[1] = v9;
  __asm { FMOV            V0.2D, #0.5 }

  v39 = _Q0;
  v40 = vdupq_n_s64(0x3FC45F306DC9C883uLL);
  v38 = vmlaq_f64(_Q0, v40, v10);
  *(a1 + 24) = v38;
  *(a1 + 40) = *(&v41 + 1);
  memcpy((a1 + 48), this + 984, 0x180uLL);
  for (i = 0; i != 192; i += 24)
  {
    v17 = &v43 + i;
    v45 = *(a1 + i + 240);
    v46 = *(a1 + i + 256);
    memset(v47, 0, sizeof(v47));
    geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(&v45, v47);
    v42 = *&v47[8];
    v18 = tan(*v47 * 0.5 + 0.785398163);
    v19 = log(v18);
    *&v20.f64[0] = v42;
    v20.f64[1] = v19;
    *v17 = vmlaq_f64(v39, v40, v20);
    *(v17 + 2) = *(&v42 + 1);
  }

  v21 = 0;
  v22 = a1 + 624;
  do
  {
    v23 = a1 + v21;
    *(v23 + 624) = *(&v43 + v21);
    *(v23 + 640) = *(v44 + v21 + 8);
    v21 += 24;
  }

  while (v21 != 192);
  v24 = 0;
  v25 = &qword_1B33B3FB8;
  do
  {
    v26 = a1 + v24;
    v27 = v22 + 24 * *(v25 - 2);
    v28 = v22 + 24 * *(v25 - 1);
    v29 = *v25;
    v25 += 3;
    gm::Plane3<double>::Plane3(v47, v27, v28, v22 + 24 * v29);
    *(v26 + 432) = *v47;
    *(v26 + 448) = *&v47[16];
    *(v26 + 456) = v48;
    v24 += 32;
  }

  while (v24 != 192);
  _D1 = 0x401921FB54442D18;
  _V2.D[1] = v38.f64[1];
  __asm { FMLA            D0, D1, V2.D[1]; __x }

  v33 = exp(_D0);
  v34 = atan(v33);
  *(a1 + 816) = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v34 * 114.591559 + -90.0);
  v35 = *(a3 + 16);
  *(a1 + 824) = *a3;
  *(a1 + 840) = v35;
  v36 = *(a3 + 24);
  *(a1 + 864) = *(a3 + 40);
  *(a1 + 848) = v36;
  *(a1 + 872) = *(a3 + 48);
  memcpy((a1 + 880), (a3 + 56), 0x198uLL);
  *(a1 + 1288) = *gdc::Camera::heading(this);
  return a1;
}

__n128 md::PolygonLayoutCharacteristics::modifyMVCForPolygonGroup@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

unint64_t md::PolygonLayerLayoutCharacteristics::renderOrderForAttributes(uint64_t a1, int a2, uint64_t a3, int a4, unint64_t a5, unsigned int a6, int a7, void *a8)
{
  v8 = 0x400000000;
  if (!a4)
  {
    v8 = 0;
  }

  v9 = 0x1000000;
  if (a2)
  {
    v9 = 0;
  }

  v10 = 0x10000;
  if (!a7)
  {
    v10 = 0;
  }

  return v9 & 0xFFFFFFFFFFFF00FFLL | (a3 << 25) | v8 & 0xFFFFFFFFFFFF00FFLL | (a6 << 17) | v10 & 0xFFFFFFFFFFFF00FFLL | ((a5 >> 4) << 8) | (*(a5 + 1) << 19) | (*a8 >> 4);
}

uint64_t md::PolygonLayerLayoutCharacteristics::commandBuffer(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (a2 != 2)
  {
    v4 = a2;
  }

  return *(a4 + 8 * v4);
}

void md::PolygonLayerLayoutCharacteristics::~PolygonLayerLayoutCharacteristics(md::PolygonLayerLayoutCharacteristics *this)
{
  *this = &unk_1F2A4E720;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4E720;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

uint64_t geo::Pool<md::MaterialDecalRenderable>::~Pool(uint64_t a1)
{
  v24 = 0;
  v25 = 0;
  v23 = &v24;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v23, v2);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v25;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = (a1 + 8);
  v8 = v4 == *(a1 + 16) * v5 || v6 == v7;
  if (!v8)
  {
    v9 = *(a1 + 24);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = v6[4];
        do
        {
          v12 = (v11 + 240 * v10);
          v13 = v24;
          if (!v24)
          {
            goto LABEL_21;
          }

          v14 = &v24;
          do
          {
            v15 = v13;
            v16 = v14;
            v17 = v13[4];
            if (v17 >= v12)
            {
              v14 = v13;
            }

            v13 = v13[v17 < v12];
          }

          while (v13);
          if (v14 == &v24)
          {
            goto LABEL_21;
          }

          if (v17 < v12)
          {
            v15 = v16;
          }

          if (v12 < v15[4])
          {
LABEL_21:
            (**v12)(v12);
            v5 = *(a1 + 24);
          }

          ++v10;
          v9 = v5;
        }

        while (v10 < v5);
      }

      v18 = v6[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v6[2];
          v8 = *v19 == v6;
          v6 = v19;
        }

        while (!v8);
      }

      v6 = v19;
    }

    while (v19 != v7);
    v6 = *a1;
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v20 = v6[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v6[2];
          v8 = *v21 == v6;
          v6 = v21;
        }

        while (!v8);
      }

      v6 = v21;
    }

    while (v21 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v24);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2E9CBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t geo::Pool<md::MeshRenderable>::~Pool(uint64_t a1)
{
  v20[0] = 0;
  v20[1] = 0;
  if (*(a1 + 40))
  {
    operator new();
  }

  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = (a1 + 8);
  if (*(a1 + 16) * v2)
  {
    v5 = v3 == v4;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(a1 + 24);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = v3[4];
        do
        {
          v9 = (v8 + 216 * v7);
          v10 = v20[0];
          if (!v20[0])
          {
            goto LABEL_19;
          }

          v11 = v20;
          do
          {
            v12 = v10;
            v13 = v11;
            v14 = v10[4];
            if (v14 >= v9)
            {
              v11 = v10;
            }

            v10 = v10[v14 < v9];
          }

          while (v10);
          if (v11 == v20)
          {
            goto LABEL_19;
          }

          if (v14 < v9)
          {
            v12 = v13;
          }

          if (v9 < v12[4])
          {
LABEL_19:
            (**v9)(v9);
            v2 = *(a1 + 24);
          }

          ++v7;
          v6 = v2;
        }

        while (v7 < v2);
      }

      v15 = v3[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v3[2];
          v5 = *v16 == v3;
          v3 = v16;
        }

        while (!v5);
      }

      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  if (v3 != v4)
  {
    do
    {
      free(v3[4]);
      v17 = v3[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v3[2];
          v5 = *v18 == v3;
          v3 = v18;
        }

        while (!v5);
      }

      v3 = v18;
    }

    while (v18 != v4);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v4;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v20[0]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2E9CE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::__unordered_map_hasher<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::__unordered_map_equal<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::allocator<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 60);
      if (v4 != -1)
      {
        (*(&off_1F2A0B878 + v4))(&v7, (v2 + 2));
      }

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

uint64_t geo::Pool<md::RenderBatch>::~Pool(uint64_t a1)
{
  v29 = 0;
  v30 = 0;
  v28 = &v29;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v28, v2);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v30;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = (a1 + 8);
  v8 = v4 == *(a1 + 16) * v5 || v6 == v7;
  if (!v8)
  {
    v9 = *(a1 + 24);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = v6[4];
        do
        {
          v12 = v11 + 384 * v10;
          v13 = v29;
          if (!v29)
          {
            goto LABEL_21;
          }

          v14 = &v29;
          do
          {
            v15 = v13;
            v16 = v14;
            v17 = v13[4];
            if (v17 >= v12)
            {
              v14 = v13;
            }

            v13 = v13[v17 < v12];
          }

          while (v13);
          if (v14 == &v29)
          {
            goto LABEL_21;
          }

          if (v17 < v12)
          {
            v15 = v16;
          }

          if (v12 < v15[4])
          {
LABEL_21:
            v18 = *(v12 + 320);
            if (v18)
            {
              *(v12 + 328) = v18;
              operator delete(v18);
            }

            if (*(v12 + 312) == 1)
            {
              v31 = (v12 + 288);
              std::vector<md::MeshRenderable>::__destroy_vector::operator()[abi:nn200100](&v31);
            }

            v19 = *(v12 + 280);
            *(v12 + 280) = 0;
            if (v19)
            {
              v20 = *(v19 + 72);
              if (v20)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v20);
              }

              v21 = *(v19 + 8);
              if (v21)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v21);
              }

              MEMORY[0x1B8C62190](v19, 0x1020C408635837CLL);
            }

            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v12 + 240);
            v22 = *(v12 + 224);
            if (v22 != -1)
            {
              (*(&off_1F2A0B878 + v22))(&v31, (v11 + 384 * v10));
            }

            *(v12 + 224) = -1;
            v5 = *(a1 + 24);
          }

          ++v10;
          v9 = v5;
        }

        while (v10 < v5);
      }

      v23 = v6[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v6[2];
          v8 = *v24 == v6;
          v6 = v24;
        }

        while (!v8);
      }

      v6 = v24;
      v7 = (a1 + 8);
    }

    while (v24 != (a1 + 8));
    v6 = *a1;
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v25 = v6[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v6[2];
          v8 = *v26 == v6;
          v6 = v26;
        }

        while (!v8);
      }

      v6 = v26;
    }

    while (v26 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v29);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2E9D17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a12);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v12 + 8));
  _Unwind_Resume(a1);
}

uint64_t geo::Pool<md::RenderBatch>::destroy(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    if (*(result + 16))
    {
      v4 = *(a2 + 320);
      if (v4)
      {
        *(a2 + 328) = v4;
        operator delete(v4);
      }

      if (*(a2 + 312) == 1)
      {
        v9 = (a2 + 288);
        std::vector<md::MeshRenderable>::__destroy_vector::operator()[abi:nn200100](&v9);
      }

      v5 = *(a2 + 280);
      *(a2 + 280) = 0;
      if (v5)
      {
        v6 = *(v5 + 72);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v7 = *(v5 + 8);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        MEMORY[0x1B8C62190](v5, 0x1020C408635837CLL);
      }

      result = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a2 + 240);
      v8 = *(a2 + 224);
      if (v8 != -1)
      {
        result = (*(&off_1F2A0B878 + v8))(&v10, a2);
      }

      *(a2 + 224) = -1;
      *a2 = *(v2 + 40);
      *(v2 + 40) = a2;
    }
  }

  return result;
}

void std::vector<md::MeshRenderable>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 216;
      v7 = v4 - 216;
      v8 = v4 - 216;
      do
      {
        v9 = *v8;
        v8 -= 216;
        (*v9)(v7);
        v6 -= 216;
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

void *std::__hash_table<md::RenderBatch *,std::hash<md::RenderBatch *>,std::equal_to<md::RenderBatch *>,std::allocator<md::RenderBatch *>>::__emplace_unique_key_args<md::RenderBatch *,md::RenderBatch *&>(void *result, unint64_t a2)
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

uint64_t std::__function::__value_func<void ()(md::MeshRenderable *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::RenderBatchManager::destroyRenderable(uint64_t this, md::MeshRenderable *a2)
{
  v3 = this;
  v4 = *(a2 + 8);
  if (v4 == 2)
  {
    if (!*(this + 320))
    {
      return this;
    }

    v5 = 344;
    goto LABEL_7;
  }

  if (v4 == 1 && *(this + 224))
  {
    v5 = 248;
LABEL_7:
    this = (**a2)(a2);
    *a2 = *(v3 + v5);
    *(v3 + v5) = a2;
  }

  return this;
}

uint64_t std::__function::__func<std::__bind<void (md::RenderBatchManager::*)(md::MeshRenderable *),md::RenderBatchManager*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (md::RenderBatchManager::*)(md::MeshRenderable *),md::RenderBatchManager*,std::placeholders::__ph<1> const&>>,void ()(md::MeshRenderable *)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

__n128 std::__function::__func<std::__bind<void (md::RenderBatchManager::*)(md::MeshRenderable *),md::RenderBatchManager*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (md::RenderBatchManager::*)(md::MeshRenderable *),md::RenderBatchManager*,std::placeholders::__ph<1> const&>>,void ()(md::MeshRenderable *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A0B8D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::__unordered_map_hasher<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::__unordered_map_equal<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::allocator<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>>>::find<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>(void *a1, uint64_t a2)
{
  v4 = std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>::operator()[abi:nn200100](a2);
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
    v12 = i[1];
    if (v12 == v6)
    {
      v13 = *(i + 60);
      v14 = *(a2 + 224);
      if (v13 != -1 && v14 == v13)
      {
        v18 = &v17;
        if ((off_1F2A0B8A8[v13])(&v18, i + 2, a2))
        {
          return i;
        }
      }

      else if (v14 == v13)
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

unint64_t std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>::operator()[abi:nn200100](uint64_t a1)
{
  v3 = *(a1 + 224);
  if (v3 == -1)
  {
    v5 = 299792458;
LABEL_5:
    v6 = -1;
    goto LABEL_6;
  }

  v11 = v1;
  v12 = v2;
  v5 = (off_1F2A0B890[v3])(&v10, a1);
  v6 = *(a1 + 224);
  if (v6 == -1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = 0x9DDFEA08EB382D69 * (v5 ^ __ROR8__(v6 + 16, 16));
  v8 = __ROR8__(v6 + 16, 16) ^ (v7 >> 47);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ v7)) >> 47))) ^ v6;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNKS_4hashINS_7variantIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEEEclB8nn200100ERKSC_EUlRKT_E_JRKNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = std::hash<md::BaseRenderBatchKey<ggl::VertexData>>::operator()(a2);
  v4 = (((v3 - 0x61C8864680B583EBLL) << 6) + ((v3 - 0x61C8864680B583EBLL) >> 2) + *(a2 + 80) - 0x61C8864680B583EBLL) ^ (v3 - 0x61C8864680B583EBLL);
  return (*(a2 + 96) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
}

uint64_t std::hash<md::BaseRenderBatchKey<ggl::VertexData>>::operator()(uint64_t a1)
{
  v1 = (*(a1 + 73) + ((*a1 - 0x61C8864680B583EBLL) << 6) + ((*a1 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a1 - 0x61C8864680B583EBLL);
  v2 = ((*(a1 + 74) | (v1 << 6)) + (v1 >> 2) - 0x61C8864680B583EBLL) ^ v1;
  v3 = (*(a1 + 64) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2;
  v4 = ((*(a1 + 72) | (v3 << 6)) + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3;
  v5 = ((*(a1 + 75) | (v4 << 6)) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
  v6 = ((*(a1 + 76) | (v5 << 6)) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
  v7 = (*(a1 + 77) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v7 ^= v8 - 0x61C8864680B583EBLL + (v7 << 6) + (v7 >> 2);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v7 ^= (v7 << 6) - 0x61C8864680B583EBLL + (v7 >> 2) + v9;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    return ((v7 << 6) - 0x61C8864680B583EBLL + (v7 >> 2) + v10) ^ v7;
  }

  else
  {
    return v7;
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNKS_4hashINS_7variantIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEEEclB8nn200100ERKSC_EUlRKT_E_JRKNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = std::hash<md::BaseRenderBatchKey<ggl::VertexData>>::operator()(a2);
  v4 = (((v3 - 0x61C8864680B583EBLL) << 6) + ((v3 - 0x61C8864680B583EBLL) >> 2) + *(a2 + 80) - 0x61C8864680B583EBLL) ^ (v3 - 0x61C8864680B583EBLL);
  v5 = (*(a2 + 96) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
  v6 = (*(a2 + 120) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
  v7 = (*(a2 + 104) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
  v8 = (*(a2 + 121) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
  v9 = (*(a2 + 122) + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583EBLL) ^ v8;
  if (*(a2 + 217))
  {
    v10 = *(a2 + 216) - 0x61C8864680B583EBLL;
  }

  else
  {
    v10 = 0x9E3779B97F4A7C15;
  }

  v11 = (v10 + (v9 << 6) + (v9 >> 2)) ^ v9;
  v12 = ((*(a2 + 218) | (v11 << 6)) + (v11 >> 2) - 0x61C8864680B583EBLL) ^ v11;
  return ((*(a2 + 219) | (v12 << 6)) + (v12 >> 2) - 0x61C8864680B583EBLL) ^ v12;
}

unint64_t md::RenderBatchManager::process(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>((a1 + 168), a3);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6[3];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = *(a2 + 224);
  v9 = v7[28].i32[0];
  if (v8 == -1 || v9 != v8)
  {
    if (v9 == v8)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (md::RenderBatch::remove(v7, a3))
    {
      *(a1 + 80) = 1;
    }

    goto LABEL_12;
  }

  v52 = &v51;
  if ((off_1F2A0B860[v8])(&v52, a2, v7))
  {
    goto LABEL_10;
  }

LABEL_12:
  result = std::__hash_table<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::__unordered_map_hasher<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::__unordered_map_equal<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::allocator<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>>>::find<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>((a1 + 128), a2);
  i = result;
  if (!result)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
      v14 = malloc_type_malloc(384 * *(a1 + 56), 0x10A2040A37F67C8uLL);
      v52 = v14;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1 + 32, v14);
      v13 = *(a1 + 72);
      v15 = &v14[48 * *(a1 + 56) - 48];
      if (v15 >= v14)
      {
        do
        {
          *v15 = v13;
          v13 = v15;
          v15 -= 48;
        }

        while (v15 >= v14);
        v13 = (v15 + 48);
      }

      *(a1 + 72) = v13;
    }

    *(a1 + 72) = *v13;
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](v13, a2);
    *(v13 + 232) = atomic_fetch_add(md::RenderBatch::nextId(void)::next, 1uLL) + 1;
    *(v13 + 240) = 0u;
    *(v13 + 256) = 0u;
    *(v13 + 272) = 1065353216;
    *(v13 + 280) = 0;
    *(v13 + 288) = 0;
    *(v13 + 312) = 0;
    *(v13 + 360) = 0;
    *(v13 + 368) = 0;
    *(v13 + 376) = 0;
    *(v13 + 320) = 0u;
    *(v13 + 336) = 0u;
    *(v13 + 352) = 0;
    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    if (v17 >= v16)
    {
      v19 = *(a1 + 8);
      v20 = (v17 - v19) >> 3;
      if ((v20 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = v16 - v19;
      v22 = v21 >> 2;
      if (v21 >> 2 <= (v20 + 1))
      {
        v22 = v20 + 1;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v23);
      }

      *(8 * v20) = v13;
      v18 = 8 * v20 + 8;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16) - v24;
      v26 = (8 * v20 - v25);
      memcpy(v26, v24, v25);
      v27 = *(a1 + 8);
      *(a1 + 8) = v26;
      *(a1 + 16) = v18;
      *(a1 + 24) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v17 = v13;
      v18 = (v17 + 1);
    }

    *(a1 + 16) = v18;
    result = std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>::operator()[abi:nn200100](a2);
    v28 = result;
    v29 = *(a1 + 136);
    if (v29)
    {
      v30 = vcnt_s8(v29);
      v30.i16[0] = vaddlv_u8(v30);
      v31 = v30.u32[0];
      if (v30.u32[0] > 1uLL)
      {
        v32 = result;
        if (result >= *&v29)
        {
          v32 = result % *&v29;
        }
      }

      else
      {
        v32 = (*&v29 - 1) & result;
      }

      v33 = *(*(a1 + 128) + 8 * v32);
      if (v33)
      {
        for (i = *v33; i; i = *i)
        {
          v34 = *(i + 8);
          if (v34 == v28)
          {
            v35 = *(i + 240);
            v36 = *(a2 + 224);
            if (v35 != -1 && v36 == v35)
            {
              v52 = &v51;
              result = (off_1F2A0B8A8[v35])(&v52, i + 16, a2);
              if (result)
              {
                goto LABEL_54;
              }
            }

            else if (v36 == v35)
            {
              goto LABEL_54;
            }
          }

          else
          {
            if (v31 > 1)
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

            if (v34 != v32)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

LABEL_54:
  v38 = *(i + 248);
  v39 = v38[31];
  if (!*&v39)
  {
    goto LABEL_72;
  }

  v40 = vcnt_s8(v39);
  v40.i16[0] = vaddlv_u8(v40);
  if (v40.u32[0] > 1uLL)
  {
    v41 = a3;
    if (*&v39 <= a3)
    {
      v41 = a3 % *&v39;
    }
  }

  else
  {
    v41 = (*&v39 - 1) & a3;
  }

  v42 = *(*&v38[30] + 8 * v41);
  if (!v42 || (v43 = *v42) == 0)
  {
LABEL_72:
    operator new();
  }

  while (1)
  {
    v44 = v43[1];
    if (v44 == a3)
    {
      break;
    }

    if (v40.u32[0] > 1uLL)
    {
      if (v44 >= *&v39)
      {
        v44 %= *&v39;
      }
    }

    else
    {
      v44 &= *&v39 - 1;
    }

    if (v44 != v41)
    {
      goto LABEL_72;
    }

LABEL_71:
    v43 = *v43;
    if (!v43)
    {
      goto LABEL_72;
    }
  }

  if (__PAIR64__(*(v43 + 9), *(v43 + 8)) != __PAIR64__(WORD1(a3), a3) || *(v43 + 5) != HIDWORD(a3))
  {
    goto LABEL_71;
  }

  v45 = *(a1 + 176);
  if (!*&v45)
  {
    goto LABEL_91;
  }

  v46 = vcnt_s8(v45);
  v46.i16[0] = vaddlv_u8(v46);
  if (v46.u32[0] > 1uLL)
  {
    v47 = a3;
    if (*&v45 <= a3)
    {
      v47 = a3 % *&v45;
    }
  }

  else
  {
    v47 = (*&v45 - 1) & a3;
  }

  v48 = *(*(a1 + 168) + 8 * v47);
  if (!v48 || (v49 = *v48) == 0)
  {
LABEL_91:
    operator new();
  }

  while (2)
  {
    v50 = v49[1];
    if (v50 != a3)
    {
      if (v46.u32[0] > 1uLL)
      {
        if (v50 >= *&v45)
        {
          v50 %= *&v45;
        }
      }

      else
      {
        v50 &= *&v45 - 1;
      }

      if (v50 != v47)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    if (__PAIR64__(*(v49 + 9), *(v49 + 8)) != __PAIR64__(WORD1(a3), a3) || *(v49 + 5) != HIDWORD(a3))
    {
LABEL_90:
      v49 = *v49;
      if (!v49)
      {
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  v49[3] = v38;
  return result;
}

void sub_1B2E9ECD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = v10[60];
  if (v12 != -1)
  {
    (*(&off_1F2A0B878 + v12))(&a10, (v10 + 4));
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 224) = -1;
  v3 = *(a2 + 224);
  if (v3 != -1)
  {
    v5 = a1;
    (off_1F2A0B9C8[v3])(&v5);
    *(a1 + 224) = v3;
  }

  return a1;
}

void sub_1B2E9ED80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  v14 = v12[56];
  if (v14 != -1)
  {
    (*(&off_1F2A0B878 + v14))(&a12, v12);
  }

  v12[56] = -1;
  _Unwind_Resume(exception_object);
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJS9_SA_SB_EEEEEEDcSL_DpT0_(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[5];
  v2[4] = a2[4];
  v2[5] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a2[7];
  v2[6] = a2[6];
  v2[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a2[8];
  *(v2 + 70) = *(a2 + 70);
  v2[8] = v7;
  v8 = a2[11];
  v2[10] = a2[10];
  v2[11] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v2[12] = a2[12];
  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJS9_SA_SB_EEEEEEDcSL_DpT0_(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 8);
  *v2 = *a2;
  *(v2 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 24);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 40);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 56);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 64);
  *(v2 + 70) = *(a2 + 70);
  *(v2 + 64) = v7;
  *(v2 + 80) = *(a2 + 80);
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJS9_SA_SB_EEEEEEDcSL_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  *v3 = *a2;
  *(v3 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 40);
  *(v3 + 32) = *(a2 + 32);
  *(v3 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 56);
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 64);
  *(v3 + 70) = *(a2 + 70);
  *(v3 + 64) = v8;
  v9 = *(a2 + 88);
  *(v3 + 80) = *(a2 + 80);
  *(v3 + 88) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 104);
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 104) = v10;
  v11 = *(a2 + 112);
  *(v3 + 112) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 120);
  v13 = *(a2 + 122);
  *(v3 + 124) = 0;
  *(v3 + 122) = v13;
  *(v3 + 120) = v12;
  *(v3 + 140) = 0;
  if (*(a2 + 140) == 1)
  {
    *(v3 + 124) = *(a2 + 124);
    *(v3 + 140) = 1;
  }

  v14 = *(a2 + 144);
  *(v3 + 152) = 0;
  result = v3 + 152;
  *(v3 + 144) = v14;
  *(v3 + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    result = std::construct_at[abi:nn200100]<md::RasterOverlayRenderPatch,md::RasterOverlayRenderPatch const&,md::RasterOverlayRenderPatch*>(result, a2 + 152);
    *(v3 + 208) = 1;
  }

  *(v3 + 216) = *(a2 + 216);
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul,1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<std::__convert_to_BOOL<std::not_equal_to<void>>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::MaterialRenderBatchKey,std::__variant_detail::_Trait::DynamicTypedRenderBatchKey,std::__variant_detail::_Trait::MaterialDecalRenderBatchKey> const&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::MaterialRenderBatchKey,std::__variant_detail::_Trait::DynamicTypedRenderBatchKey,std::__variant_detail::_Trait::MaterialDecalRenderBatchKey> const>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(result) = md::BaseRenderBatchKey<ggl::VertexData>::operator!=(a2, a3);
  if (*(a2 + 80) == *(a3 + 80))
  {
    return result;
  }

  else
  {
    return 1;
  }
}

uint64_t std::__function::__value_func<md::MeshRenderable * ()(md::MeshRenderable&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::RenderBatchManager::buildRenderablesForBatch(md::MeshRenderableBuilder *,md::RenderBatch *,unsigned long long)::$_0,std::allocator<md::RenderBatchManager::buildRenderablesForBatch(md::MeshRenderableBuilder *,md::RenderBatch *,unsigned long long)::$_0>,md::MeshRenderable * ()(md::MeshRenderable&)>::operator()(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v7 = *(a1 + 8);
  v8 = &v14;
  v9 = a2;
  v3 = *(a1 + 32);
  v10 = *(a1 + 24);
  v11 = v7;
  v12 = &v14;
  v13 = a2;
  v4 = *(v3 + 224);
  if (v4 == -1)
  {
    v6 = std::__throw_bad_variant_access[abi:nn200100]();
    return _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorI10overloadedIJZZN2md18RenderBatchManager24buildRenderablesForBatchEPNS9_21MeshRenderableBuilderEPNS9_11RenderBatchEyENK3__0clERNS9_14MeshRenderableEEUlRKNS9_22MaterialRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlRKNS9_27MaterialDecalRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlRKNS9_26DynamicTypedRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlT_E_EEEEJRKNS0_6__baseILNS0_6_TraitE1EJSI_SQ_SM_EEEEEEDcSU_DpT0_(v6);
  }

  else
  {
    v15 = &v7;
    (off_1F2A0B950[v4])(&v15);
    return v14;
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorI10overloadedIJZZN2md18RenderBatchManager24buildRenderablesForBatchEPNS9_21MeshRenderableBuilderEPNS9_11RenderBatchEyENK3__0clERNS9_14MeshRenderableEEUlRKNS9_22MaterialRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlRKNS9_27MaterialDecalRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlRKNS9_26DynamicTypedRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlT_E_EEEEJRKNS0_6__baseILNS0_6_TraitE1EJSI_SQ_SM_EEEEEEDcSU_DpT0_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 56);
  v31 = &unk_1F2A3CEF8;
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v32 = *(v4 + 8);
  v33 = v5;
  v34 = v6;
  v7 = *(v4 + 40);
  v35 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(v4 + 48);
  v9 = *(v4 + 64);
  v38 = *(v4 + 80);
  v37 = v9;
  v36 = v8;
  v10 = *(v4 + 96);
  v11 = *(v4 + 112);
  v12 = *(v4 + 128);
  *&v41[15] = *(v4 + 143);
  *v41 = v12;
  v40 = v11;
  v39 = v10;
  LOBYTE(v42) = 0;
  v45 = 0;
  if (*(v4 + 176) == 1)
  {
    v13 = *(v4 + 160);
    v42 = *(v4 + 152);
    v43 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v44 = *(v4 + 168);
    v45 = 1;
  }

  v46 = *(v4 + 184);
  v47 = 0;
  if (*(v4 + 193) == 1)
  {
    LOBYTE(v47) = *(v4 + 192);
    HIBYTE(v47) = 1;
  }

  v14 = *(v4 + 196);
  v49 = *(v4 + 212);
  v48 = v14;
  v31 = &unk_1F2A0B9A8;
  v51 = 0;
  v50 = 0uLL;
  LOBYTE(v32) = 2;
  v15 = *(a2 + 80);
  v16 = *(a2 + 88);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    *&v50 = v15;
    *(&v50 + 1) = v16;
  }

  else
  {
    v50 = *(a2 + 80);
  }

  v51 = *(a2 + 96);
  v41[16] = *(a2 + 72);
  v41[18] = 0;
  v17 = *(v3 + 344);
  if (!v17)
  {
    v18 = malloc_type_malloc(240 * *(v3 + 328), 0x10E20404BA776A7uLL);
    v52 = v18;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(v3 + 304, v18);
    v17 = *(v3 + 344);
    v19 = &v18[240 * *(v3 + 328) - 240];
    if (v19 >= v18)
    {
      do
      {
        v20 = v19;
        *v19 = v17;
        v19 -= 240;
        v17 = v20;
      }

      while (v19 >= v18);
      v17 = v19 + 240;
    }

    *(v3 + 344) = v17;
  }

  *(v3 + 344) = *v17;
  *v17 = &unk_1F2A3CEF8;
  v21 = v32;
  v17[3] = v33;
  *(v17 + 1) = v21;
  v22 = v35;
  v17[4] = v34;
  v17[5] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = v36;
  v24 = v38;
  *(v17 + 4) = v37;
  *(v17 + 5) = v24;
  *(v17 + 3) = v23;
  v25 = v39;
  v26 = v40;
  v27 = *v41;
  *(v17 + 143) = *&v41[15];
  *(v17 + 7) = v26;
  *(v17 + 8) = v27;
  *(v17 + 6) = v25;
  *(v17 + 152) = 0;
  *(v17 + 176) = 0;
  if (v45 == 1)
  {
    v28 = v43;
    v17[19] = v42;
    v17[20] = v28;
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    *(v17 + 168) = v44;
    *(v17 + 176) = 1;
  }

  v17[23] = v46;
  *(v17 + 96) = 0;
  if (HIBYTE(v47) == 1)
  {
    *(v17 + 192) = v47;
    *(v17 + 193) = 1;
  }

  v29 = v48;
  *(v17 + 53) = v49;
  *(v17 + 196) = v29;
  *v17 = &unk_1F2A0B9A8;
  *(v17 + 27) = v50;
  v50 = 0uLL;
  **(v2 + 48) = v17;
  v30 = *(&v50 + 1);
  v17[29] = v51;
  v31 = &unk_1F2A0B9A8;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  md::MeshRenderable::~MeshRenderable(&v31);
}

void sub_1B2E9F500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a38);
  }

  md::MeshRenderable::~MeshRenderable(&a10);
  _Unwind_Resume(a1);
}

void md::MaterialDecalRenderable::~MaterialDecalRenderable(md::MaterialDecalRenderable *this)
{
  *this = &unk_1F2A0B9A8;
  v2 = *(this + 28);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MeshRenderable::~MeshRenderable(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0B9A8;
  v2 = *(this + 28);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MeshRenderable::~MeshRenderable(this);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorI10overloadedIJZZN2md18RenderBatchManager24buildRenderablesForBatchEPNS9_21MeshRenderableBuilderEPNS9_11RenderBatchEyENK3__0clERNS9_14MeshRenderableEEUlRKNS9_22MaterialRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlRKNS9_27MaterialDecalRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlRKNS9_26DynamicTypedRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlT_E_EEEEJRKNS0_6__baseILNS0_6_TraitE1EJSI_SQ_SM_EEEEEEDcSU_DpT0_(uint64_t **a1, uint64_t a2)
{
  v5 = *a1;
  v6 = **a1;
  v7 = (*a1)[3];
  *(v7 + 8) = 1;
  if (*(a2 + 217) == 1)
  {
    v8 = *(a2 + 64);
    v9 = *(a2 + 216);
    v10 = 1;
  }

  else
  {
    v8 = *(v7 + 48);
    v9 = *(v7 + 56);
    v39[0] = *(v7 + 57);
    *(v39 + 3) = *(v7 + 60);
    v10 = *(v7 + 64);
    v38[0] = *(v7 + 65);
    *(v38 + 3) = *(v7 + 68);
  }

  v11 = v5[1];
  v12 = *(a2 + 96);
  v13 = *(a2 + 112);
  v36[0] = *(a2 + 104);
  v36[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 72);
  v15 = *(a2 + 120);
  v16 = *(a2 + 121);
  v17 = *(a2 + 75);
  v18 = *(a2 + 122);
  LOBYTE(v34) = 0;
  v35 = 0;
  if (*(a2 + 140) == 1)
  {
    v34 = *(a2 + 124);
    v35 = 1;
  }

  v19 = *(a2 + 144);
  v20 = *(a2 + 76);
  LOBYTE(v27[0]) = 0;
  v33 = 0;
  v21 = *(a2 + 208);
  if (v21 == 1)
  {
    v2 = *(a2 + 160);
    v27[0] = *(a2 + 152);
    v27[1] = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = *(a2 + 168);
    v3 = *(a2 + 184);
    v29 = *(a2 + 176);
    v30 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = *(a2 + 200);
    v31 = *(a2 + 192);
    v32 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = 1;
  }

  v22 = v8;
  v23 = v9;
  *v24 = v39[0];
  *&v24[3] = *(v39 + 3);
  v25 = v10;
  *v26 = v38[0];
  *&v26[3] = *(v38 + 3);
  md::MeshRenderableBuilder::buildRenderable(v37, v11, v7, (a2 + 80), v12, v36, v14, v15, v16, v17, v18, &v34, v19, SBYTE4(v19), SHIWORD(v19), v20, v27, &v22, *(a2 + 218), HIBYTE(*(a2 + 218)));
  if (v21)
  {
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  *v5[2] = geo::Pool<md::MaterialRenderable>::construct<md::MaterialRenderable>(v6 + 208, v37);
  md::MaterialRenderable::~MaterialRenderable(v37);
}

__n128 std::__function::__func<md::RenderBatchManager::buildRenderablesForBatch(md::MeshRenderableBuilder *,md::RenderBatch *,unsigned long long)::$_0,std::allocator<md::RenderBatchManager::buildRenderablesForBatch(md::MeshRenderableBuilder *,md::RenderBatch *,unsigned long long)::$_0>,md::MeshRenderable * ()(md::MeshRenderable&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A0B918;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::RenderBatchManager::removeEntity(int8x8_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(&a1[21], *a2);
  if (v5)
  {
    v6 = v5[3];
    if (v6)
    {
      if (md::RenderBatch::remove(v6, v4))
      {
        a1[10].i8[0] = 1;
      }
    }
  }

  v7 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(&a1[21], *a2);
  if (v7)
  {
    v8 = a1[22];
    v9 = v7[1];
    v10 = vcnt_s8(v8);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      if (v9 >= *&v8)
      {
        v9 %= *&v8;
      }
    }

    else
    {
      v9 &= *&v8 - 1;
    }

    v11 = a1[21];
    v12 = *(*&v11 + 8 * v9);
    do
    {
      v13 = v12;
      v12 = *v12;
    }

    while (v12 != v7);
    if (v13 == &a1[23])
    {
      goto LABEL_24;
    }

    v14 = v13[1];
    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v9)
    {
LABEL_24:
      if (!*v7)
      {
        goto LABEL_25;
      }

      v15 = *(*v7 + 8);
      if (v10.u32[0] > 1uLL)
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

      if (v15 != v9)
      {
LABEL_25:
        *(*&v11 + 8 * v9) = 0;
      }
    }

    v16 = *v7;
    if (*v7)
    {
      v17 = *(v16 + 8);
      if (v10.u32[0] > 1uLL)
      {
        if (v17 >= *&v8)
        {
          v17 %= *&v8;
        }
      }

      else
      {
        v17 &= *&v8 - 1;
      }

      if (v17 != v9)
      {
        *(*&a1[21] + 8 * v17) = v13;
        v16 = *v7;
      }
    }

    *v13 = v16;
    *v7 = 0;
    --*&a1[24];

    operator delete(v7);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelCreateExternalIconRequest>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::weak_interface_ptr<md::LabelExternalObjectsModerator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BA20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelExternalObjectsModerator::runIconCreateRequest(void (***a1)(__int128 *__return_ptr), uint64_t *a2)
{
  if (a1)
  {
    (**a1)(&v6);
    v3 = *a2;
    v4 = v6;
    v6 = 0uLL;
    v5 = *(v3 + 8);
    *v3 = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    if (*(&v6 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v6 + 1));
    }
  }

  *(*a2 + 57) = 1;
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *a1, void *a2)
{
  if (a1)
  {
    a1 = a2[3];
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
    }
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *>>(v3, a2);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *a1, void *a2)
{
  if (a1)
  {
    a1 = a2[4];
    if (a1)
    {
      std::__shared_weak_count::__release_weak(a1);
    }
  }

  else if (!a2)
  {
    return;
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *>>(v3, a2);
}

void std::__shared_ptr_emplace<md::LabelExternalTransitLinkData>::__on_zero_shared(mdm::zone_mallocator *a1)
{
  v1 = *(a1 + 3);
  if (v1)
  {
    *(a1 + 4) = v1;
    v2 = mdm::zone_mallocator::instance(a1);
    v3 = pthread_rwlock_rdlock((v2 + 32));
    if (v3)
    {
      geo::read_write_lock::logFailure(v3, "read lock", v4);
    }

    atomic_fetch_add((v2 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v2, v1);

    geo::read_write_lock::unlock((v2 + 32));
  }
}

void std::__shared_ptr_emplace<md::LabelExternalTransitLinkData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BA58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelExternalObjectsModerator::externalTransitLink(void *a1, uint64_t a2, unint64_t a3)
{
  std::mutex::lock((a2 + 304));
  v6 = *(a2 + 200);
  if (!*&v6)
  {
    goto LABEL_17;
  }

  v7 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = vcnt_s8(v6);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v9;
    if (v9 >= *&v6)
    {
      v11 = v9 % *&v6;
    }
  }

  else
  {
    v11 = v9 & (*&v6 - 1);
  }

  v12 = *(*(a2 + 192) + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_17:
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v14 = v13[1];
    if (v9 == v14)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v6)
      {
        v14 %= *&v6;
      }
    }

    else
    {
      v14 &= *&v6 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_17;
    }

LABEL_16:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  if (v13[2] != a3)
  {
    goto LABEL_16;
  }

  *a1 = 0;
  a1[1] = 0;
  v15 = v13[4];
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    a1[1] = v16;
    if (v16)
    {
      *a1 = v13[3];
    }
  }

LABEL_18:

  std::mutex::unlock((a2 + 304));
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *>(v3, v2);
  }
}

void std::__shared_ptr_emplace<md::LabelExternalTransitLink>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::mutex::lock(v2);
  sig = v2[1].__m_.__sig;
  if (sig)
  {
    v4 = *(a1 + 24);
    std::mutex::lock((sig + 304));
    v5 = *(sig + 200);
    if (v5)
    {
      v6 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
      v7 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v6 >> 47) ^ v6);
      v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      v9 = vcnt_s8(v5);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        v10 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
        if (v8 >= *&v5)
        {
          v10 = v8 % *&v5;
        }
      }

      else
      {
        v10 = v8 & (*&v5 - 1);
      }

      v11 = *(sig + 192);
      v12 = *(v11 + 8 * v10);
      if (v12)
      {
        v13 = *v12;
        if (*v12)
        {
          v14 = *&v5 - 1;
          do
          {
            v15 = v13[1];
            if (v15 == v8)
            {
              if (v13[2] == v4)
              {
                v16 = v13[1];
                if (v9.u32[0] > 1uLL)
                {
                  if (v16 >= *&v5)
                  {
                    v16 %= *&v5;
                  }
                }

                else
                {
                  v16 &= v14;
                }

                v17 = *(v11 + 8 * v16);
                do
                {
                  v18 = v17;
                  v17 = *v17;
                }

                while (v17 != v13);
                if (v18 == (sig + 216))
                {
                  goto LABEL_37;
                }

                v19 = v18[1];
                if (v9.u32[0] > 1uLL)
                {
                  if (v19 >= *&v5)
                  {
                    v19 %= *&v5;
                  }
                }

                else
                {
                  v19 &= v14;
                }

                if (v19 != v16)
                {
LABEL_37:
                  if (!*v13)
                  {
                    goto LABEL_38;
                  }

                  v20 = *(*v13 + 8);
                  if (v9.u32[0] > 1uLL)
                  {
                    if (v20 >= *&v5)
                    {
                      v20 %= *&v5;
                    }
                  }

                  else
                  {
                    v20 &= v14;
                  }

                  if (v20 != v16)
                  {
LABEL_38:
                    *(v11 + 8 * v16) = 0;
                  }
                }

                v21 = *v13;
                if (*v13)
                {
                  v22 = *(v21 + 8);
                  if (v9.u32[0] > 1uLL)
                  {
                    if (v22 >= *&v5)
                    {
                      v22 %= *&v5;
                    }
                  }

                  else
                  {
                    v22 &= v14;
                  }

                  if (v22 != v16)
                  {
                    *(*(sig + 192) + 8 * v22) = v18;
                    v21 = *v13;
                  }
                }

                *v18 = v21;
                *v13 = 0;
                --*(sig + 232);
                std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v13);
                break;
              }
            }

            else
            {
              if (v9.u32[0] > 1uLL)
              {
                if (v15 >= *&v5)
                {
                  v15 %= *&v5;
                }
              }

              else
              {
                v15 &= v14;
              }

              if (v15 != v10)
              {
                break;
              }
            }

            v13 = *v13;
          }

          while (v13);
        }
      }
    }

    std::mutex::unlock((sig + 304));
  }

  std::mutex::unlock(v2);
  std::mutex::~mutex((a1 + 64));
  v23 = *(a1 + 56);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  v24 = *(a1 + 40);
  if (v24)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }
}