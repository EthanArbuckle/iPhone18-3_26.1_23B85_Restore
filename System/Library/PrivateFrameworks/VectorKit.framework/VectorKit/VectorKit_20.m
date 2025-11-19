void *md::LabelRenderLayer::clearScene(md::LabelRenderLayer *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    md::LabelManager::setNeedsClearScene(v2);
  }

  std::__hash_table<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,geo::allocator_adapter<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,mdm::zone_mallocator>>::clear(this + 88);
  result = std::__list_imp<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,mdm::zone_mallocator>>::clear(this + 7);
  *(this + 156) = 0;
  *(this + 148) = 0;
  return result;
}

void *std::__list_imp<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,mdm::zone_mallocator>>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        std::__list_imp<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,mdm::zone_mallocator>>::__delete_node[abi:nn200100](result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,geo::allocator_adapter<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,mdm::zone_mallocator>>::clear(uint64_t a1)
{
  if (*(a1 + 40))
  {
    std::__hash_table<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,geo::allocator_adapter<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
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

void gss::ClientStyleState<gss::ScenePropertyID>::setTargetMapDisplayStyle(uint64_t a1, uint64_t a2)
{
  v8 = (a1 + 16);
  v9 = a2;
  v3 = pthread_rwlock_wrlock((a1 + 16));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "write lock", v4);
  }

  gss::DisplayStyle::applyDisplayStyle(&v9, a1 + 240);
  if ((*(a1 + 256) & 1) == 0 && (*(a1 + 257) & 1) == 0)
  {
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1 + 240, *(a1 + 254), 1);
  }

  v5 = COERCE_FLOAT(atomic_load((a1 + 272)));
  v6 = v5 <= 0.0;
  v7 = 1;
  if (v6)
  {
    v7 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((a1 + 240), a1 + 216) ^ 1;
  }

  atomic_store(v7, (a1 + 270));
  atomic_fetch_add((a1 + 264), 1u);
  geo::write_lock_guard::~write_lock_guard(&v8);
}

void md::StyleLogic::queueStyleTransition(md::StyleLogic *this, float a2)
{
  if (*(this + 1120))
  {
    *(this + 281) = fmaxf(*(this + 281), a2);
  }

  else
  {
    *(this + 1120) = 1;
    *(this + 281) = a2;
    v4 = 4;
    geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert(this + 141, &v4);
    v3 = **(this + 155);
    if (v3)
    {
      v5 = 12;
      md::MapEngine::setNeedsTick(v3, &v5);
    }
  }
}

void gdc::Camera::verticalFieldOfView(gdc::Camera *this, double *a2)
{
  v4 = a2[46];
  v3 = a2[47];
  if (v3 >= v4)
  {
    v10 = a2[57];
  }

  else
  {
    v5 = v3 * v4;
    v6 = v3 / v4;
    if (v5 <= 0.0)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = v6;
    }

    v8 = tan(a2[57] * 0.5);
    v9 = atan(v8 * v7);
    v10 = v9 + v9;
  }

  *this = v10;
}

float64x2_t gdc::Camera::setViewSize(float64x2_t *this, const ViewSize *a2, unsigned __int16 a3)
{
  v3.f64[0] = a2;
  this[23].f64[0] = fmax(v3.f64[0], 0.0);
  this[23].f64[1] = fmax(a3, 0.0);
  v3.f64[1] = a3;
  result = vmaxnmq_f64(vmulq_n_f64(v3, *this[28].f64), 0);
  this[24] = result;
  return result;
}

void sub_1B29139A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    JUMPOUT(0x1B29139ACLL);
  }

  JUMPOUT(0x1B2913998);
}

void md::MapEngine::updateRunLoopStatus(md::MapEngine *this)
{
  v2 = this + 40960;
  [*(this + 5207) size];
  if (v2[1041] == 1)
  {
    v5 = v2[1042] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  if ((v2[1040] & 1) == 0 && (v5 & 1) == 0)
  {
    v7 = v4 * v3;
    if ([*(v2 + 87) hasRenderTarget])
    {
      if (v7 > 0.0)
      {
LABEL_8:
        v8 = atomic_load(v2 + 1045);
        v6 = v8 ^ 1;
        goto LABEL_9;
      }

      v6 = 0;
    }

    else
    {
      v6 = 0;
      if (*(v2 + 134) == 1 && v7 > 0.0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  (*(**(this + 24) + 48))(*(this + 24), v6 & 1);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(this + 5208);

    if (WeakRetained)
    {
      v10 = objc_loadWeakRetained(this + 5208);
      v11 = [v10 wantsTimerTick];

      if (v11)
      {
        atomic_fetch_or(v2 + 163, 0x20uLL);
        LODWORD(WeakRetained) = 1;
      }

      else
      {
        LODWORD(WeakRetained) = 0;
      }
    }

    if (md::AnimationManager::wantsTimerTick(*(this + 24)))
    {
      atomic_fetch_or(v2 + 163, 0x40uLL);
    }

    if ((WeakRetained | md::AnimationManager::wantsTimerTick(*(this + 24))))
    {
      goto LABEL_19;
    }

    v12 = atomic_load(v2 + 1043);
    if (v12)
    {
      goto LABEL_19;
    }
  }

  v13 = +[VKDebugSettings sharedSettings];
  v14 = [v13 layoutContinuously];

  if (v14)
  {
LABEL_19:
    v18 = *(this + 20);
    if (!v18)
    {
      goto LABEL_38;
    }

    v19 = 1;
    v20 = 1;
  }

  else
  {
    if (*(v2 + 512))
    {
      md::MapEngine::setDisplayRate(this, *(v2 + 129), v15, v16, v17);
    }

    v18 = *(this + 20);
    if (!v18)
    {
      goto LABEL_38;
    }

    v19 = 0;
    v20 = *(v2 + 512) != 0;
  }

  if (v20 == (*(*v18 + 24))(v18))
  {
    atomic_fetch_add(v2 + 190, 1u);
    (*(**(this + 20) + 16))(*(this + 20), v19 ^ 1u);
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v21 = GEOGetVectorKitVKDefaultLog_log;
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v19)
    {
      if (v22)
      {
        v26 = 0;
        v23 = "DisplayLinkUnpause";
        v24 = &v26;
LABEL_36:
        _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_INFO, v23, v24, 2u);
      }
    }

    else if (v22)
    {
      v25 = 0;
      v23 = "DisplayLinkPause";
      v24 = &v25;
      goto LABEL_36;
    }
  }

LABEL_38:
  atomic_store(0, v2 + 1044);
}

__n128 geo::RigidTransform<double,double>::inverse(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 24; i += 8)
  {
    *(&v13 + i) = -*(a2 + i + 24);
  }

  v11 = v13;
  v12 = v14;
  v15 = *(a2 + 48);
  v10 = v15;
  v4 = gm::Quaternion<double>::operator*(&v13, a2);
  v5 = 0;
  *v16 = v4;
  v16[1] = v6;
  v16[2] = v7;
  do
  {
    *(&v17 + v5 * 8) = -*&v16[v5];
    ++v5;
  }

  while (v5 != 3);
  v8 = v18;
  *a1 = v17;
  *(a1 + 16) = v8;
  result.n128_u64[0] = v12;
  result.n128_u64[1] = v10;
  *(a1 + 24) = v11;
  *(a1 + 40) = result;
  return result;
}

double geo::RigidTransform<double,double>::toMatrix(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = v4 + v4;
  v8 = (v4 + v4) * v4;
  v9 = (v5 + v5) * v5;
  v10 = v3 + v3;
  v11 = (v3 + v3) * v4;
  v12 = (v5 + v5) * v6;
  v13 = v11 - v12;
  v14 = v5 * (v3 + v3);
  v15 = v6 * v7;
  v16 = v12 + v11;
  v17 = v6 * v7 + v14;
  v26[0] = 1.0 - (v8 + v9);
  v26[1] = v16;
  v18 = 1.0 - (v3 + v3) * v3;
  v19 = v7 * v5;
  v20 = v6 * v10;
  v26[6] = v17;
  v26[7] = v19 - v20;
  v26[2] = v14 - v15;
  v26[3] = v13;
  v26[4] = v18 - v9;
  v26[5] = v20 + v19;
  v26[8] = v18 - v8;
  v21 = v26;
  v22 = a1;
  do
  {
    v23 = 0;
    v24 = v22;
    do
    {
      *v24 = *&v21[v23];
      v24 += 4;
      v23 += 3;
    }

    while (v23 != 9);
    ++v2;
    ++v22;
    ++v21;
  }

  while (v2 != 3);
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = *a2;
  result = *(a2 + 16);
  *(a1 + 112) = result;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

void md::AnimationManager::setEnabled(md::AnimationManager *this, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 232) != a2)
  {
    *(this + 232) = a2;
    v2 = *(this + 26);
    if (a2)
    {
      for (; v2; v2 = *v2)
      {
        geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v6, (v2 + 2));
        v3 = v7;
        [v3 frequency];
        v5 = v4;

        (*(*v2[5] + 32))(v2[5], 0.0, 1.0 / v5);
        v6 = &unk_1F2A4BA00;
      }
    }

    else
    {
      for (; v2; v2 = *v2)
      {
        (*(*v2[5] + 40))(v2[5]);
      }
    }
  }
}

void sub_1B2914868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

double gm::operator*<double,4,4,1>(double *a1, uint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    v3 = 0;
    v4 = 0.0;
    v5 = a1;
    do
    {
      v6 = *v5;
      v5 += 4;
      v4 = v4 + *(a2 + v3) * v6;
      v3 += 8;
    }

    while (v3 != 32);
    *(&v8 + i) = v4;
    ++a1;
  }

  return v8;
}

void *geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::find(void *a1, unsigned __int8 a2)
{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = 0;
    v6 = v3;
    do
    {
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

      ++v5;
      v6 = v8;
    }

    while (v8 != v2);
    do
    {
      v10 = v5 >> 1;
      v11 = v3;
      if (v5 >= 2)
      {
        v12 = v5 >> 1;
        v13 = v3;
        do
        {
          v14 = v13[1];
          if (v14)
          {
            do
            {
              v11 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v11 = v13[2];
              v9 = *v11 == v13;
              v13 = v11;
            }

            while (!v9);
          }

          v13 = v11;
          v16 = v12-- <= 1;
        }

        while (!v16);
      }

      if (*(v11 + 33) <= a2)
      {
        v15 = v11[1];
        if (v15)
        {
          do
          {
            v3 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v3 = v11[2];
            v9 = *v3 == v11;
            v11 = v3;
          }

          while (!v9);
        }

        v10 = v5 + ~v10;
      }

      v5 = v10;
    }

    while (v10);
  }

  if (v2 == v3)
  {
    return v2;
  }

  v16 = *(v3 + 32) <= a2 && *(v3 + 33) > a2;
  if (!v16)
  {
    return v2;
  }

  return v3;
}

void *pitchForZ(void *a1, double a2)
{
  v3 = vcvtpd_s64_f64(a2);
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::find(a1, vcvtmd_s64_f64(a2));
  return geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::find(a1, v3);
}

void md::StyleLogic::setNewInterfaceEnabled(md::StyleLogic *this, int a2)
{
  if ((*(this + 180) == 1) != a2)
  {
    v8 = v2;
    v9 = v3;
    *(this + 180) = a2;
    gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(this + 26), 0x1008Au, a2);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(this + 28), 0x1008Au, *(this + 180));
    v6 = 4;
    geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert(this + 141, &v6);
    v5 = **(this + 155);
    if (v5)
    {
      v7 = 12;
      md::MapEngine::setNeedsTick(v5, &v7);
    }
  }
}

void md::LabelSettings::addCustomFeatureDataSource(uint64_t a1, void *a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(*(a1 + 40) + 168) addObject:v3];
  v4 = *(a1 + 24);
  v6 = v3;
  v5 = (*(**(*(v4 + 168) + 64) + 32))(*(*(v4 + 168) + 64));
  if (v5)
  {
    v7[0] = &unk_1F2A2C258;
    v7[1] = v5;
    v7[2] = v6;
    v7[3] = v7;
    md::LabelCustomFeatureSupport::queueCommand(v5, 0, v7);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7);
  }
}

void sub_1B2915030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a10);

  _Unwind_Resume(a1);
}

uint64_t md::LabelCustomFeatureSupport::queueCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*(a1 + 16) + 184))
  {
    operator new();
  }

  v3 = *(a3 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = *(*v3 + 48);

  return v4();
}

void sub_1B29152D8(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

id std::__function::__func<md::LabelCustomFeatureSupport::addDataSource(objc_object  {objcproto25VKCustomFeatureDataSource}*)::$_0,std::allocator<objc_object  {objcproto25VKCustomFeatureDataSource}*>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F2A2C258;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

uint64_t gdc::NormalizedZoomLevel::NormalizedZoomLevel(uint64_t a1, float a2, double a3, double a4)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v6 = 0.0;
  if (a4 > 0.0)
  {
    v7 = a4;
    v8 = a3;
    v6 = log2f(v7 / v8);
  }

  *a1 = fminf(fmaxf(v6 + a2, 1.0), 25.0);
  return a1;
}

float32_t gdc::Canvas::centerScreenPoint(float32x2_t *this)
{
  *&v1.f64[0] = this[1];
  v2.i32[1] = 1056964608;
  if (v1.f64[0] > 0.0 && *this > 0.0)
  {
    v1.f64[1] = *this;
    v3 = vaddq_f64(v1, v1);
    v4 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(this[8]), v3));
    v5 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(this[9]), v3)));
    v6 = vcvtq_f64_f32(v4);
    __asm { FMOV            V2.2D, #0.5 }

    v12 = vsubq_f64(_Q2, v6);
    v13 = vaddq_f64(v6, _Q2);
    *&_Q2.f64[0] = *&vaddq_f64(v12, v5);
    _Q2.f64[1] = vsubq_f64(v13, v5).f64[1];
    v2 = vcvt_f32_f64(_Q2);
  }

  return v2.f32[1];
}

void VKCameraMakeGroundPoint(const VKCameraState *a1, CGPoint a2, double a3, uint64_t a4)
{
  y = a2.y;
  x = a2.x;
  v47 = *a4;
  v48 = *(a4 + 16);
  v49 = *(a4 + 24);
  v50 = *(a4 + 40);
  v8 = *(a4 + 56);
  v51 = *(a4 + 48);
  v52 = v8;
  v9 = 0.5 * *(a4 + 64);
  v53 = *(a4 + 64);
  v10 = tan(v9);
  v54 = 0uLL;
  *&v55 = -1.0;
  v11 = gm::Quaternion<double>::operator*(&v49, &v54);
  v39 = v12;
  v40 = v11;
  v14 = v13;
  *&v54 = v10 * v8;
  *(&v54 + 1) = 0;
  *&v55 = 0.0;
  v15 = gm::Quaternion<double>::operator*(&v49, &v54);
  v37 = v16;
  v38 = v15;
  v18 = v17;
  *&v54 = 0;
  *(&v54 + 1) = v10;
  *&v55 = 0.0;
  v19.f64[0] = gm::Quaternion<double>::operator*(&v49, &v54);
  v20 = 0;
  v21 = x * 2.0 + -1.0;
  v22 = y * 2.0 + -1.0;
  v23 = *(a4 + 16);
  v25.f64[0] = v40;
  v25.f64[1] = v39;
  v26 = vaddq_f64(v25, *a4);
  v25.f64[0] = v38;
  v25.f64[1] = v37;
  v19.f64[1] = v27;
  v45 = vmlaq_n_f64(vmlaq_n_f64(v26, v25, v21), v19, v22);
  v46 = v14 + v23 + v18 * v21 + v24 * v22;
  do
  {
    *(&v54 + v20 * 8) = v45.f64[v20] - *(a4 + v20 * 8);
    ++v20;
  }

  while (v20 != 3);
  v28 = 0;
  v43 = v54;
  v44 = *&v55;
  v29 = 0.0;
  do
  {
    v29 = v29 + *(&v43 + v28) * *(&v43 + v28);
    v28 += 8;
  }

  while (v28 != 24);
  v30 = 0;
  v31 = 1.0 / sqrt(v29);
  do
  {
    *(&v43 + v30) = *(&v43 + v30) * v31;
    v30 += 8;
  }

  while (v30 != 24);
  if (v23 <= 0.0 || v44 >= 0.0)
  {
    v36 = 0;
    LOBYTE(a1->var0._translation._e[0]) = 0;
  }

  else
  {
    v32 = 0;
    v33 = 1.0 / v44;
    do
    {
      *(&v54 + v32) = *(&v43 + v32) * -v23 * v33;
      v32 += 8;
    }

    while (v32 != 24);
    v34 = 0;
    v41 = v54;
    v42 = v55;
    do
    {
      *(&v54 + v34) = *(&v41 + v34) + *(a4 + v34);
      v34 += 8;
    }

    while (v34 != 24);
    v35 = *&v55;
    *a1->var0._translation._e = v54;
    a1->var0._translation._e[2] = v35;
    v36 = 1;
  }

  LOBYTE(a1->var0._rotation._imaginary._e[0]) = v36;
}

uint64_t gdc::CameraLimits::CameraLimits(uint64_t a1, double *a2, double *a3, double *a4, long double *a5, double *a6, double *a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  *a1 = a9;
  v17 = *a6;
  *(a1 + 8) = *a6;
  v59 = cos(*a5);
  v18 = *(a8 + 16);
  v19 = 0.0;
  v20 = 0.0;
  if (v18 > 0.0)
  {
    v20 = log2(*(a8 + 8) / v18);
  }

  v21 = *a8;
  v22 = fmaxf(*a8 + v20, 1.0);
  v23 = *(a10 + 16);
  if (v23 > 0.0)
  {
    v19 = log2(*(a10 + 8) / v23);
  }

  v24 = fminf(fmaxf(*a10 + v19, 1.0), 25.0);
  v25 = *a3 * 0.5;
  v26 = v25;
  v27 = cosf(v26);
  v28 = v17;
  v29 = cosf(v28);
  v30 = exp2(v24);
  v31 = tan(*a4 * 0.5);
  v32 = v17 - v25;
  v33 = v59 * cosf(v32) / (v30 * (v27 + v27) * (v29 * v31));
  v34 = 1.0 - exp2(-v21);
  v35 = v31 + v31;
  v36 = -v22;
  if (v22 > 25.0)
  {
    v36 = -25.0;
  }

  v37 = v34 / v35;
  v38 = exp2(v36) / v35;
  v39 = *a7;
  v40 = *a7 + v25;
  if (v40 < 1.57079633)
  {
    v41 = cos(v25);
    v42 = cos(v40) * v38;
    v38 = v42 / (v41 * cos(v39));
  }

  v43 = fmin(v37, v38);
  v44 = *a11;
  if ((*(a11 + 8) & (v33 < *a11)) == 0)
  {
    v44 = v33;
  }

  if (*(a11 + 24) == 1)
  {
    v45 = fmax(v44, *(a11 + 16));
    v43 = fmin(v45, v43);
    v37 = fmin(v45, v37);
  }

  *(a1 + 48) = fmin(v43, v44);
  *(a1 + 56) = v43;
  *(a1 + 64) = v37;
  *&v46 = geo::WGS84::unitsPerMeterAtLatitude<geo::Radians,double>(*a2);
  v58 = *(a1 + 48);
  *(a1 + 32) = vdivq_f64(vmulq_n_f64(v58, v59), vdupq_lane_s64(v46, 0));
  v47.f64[0] = tan(*a4 * 0.5);
  v60 = v47.f64[0];
  __x = vmulq_n_f64(v58, vaddq_f64(v47, v47).f64[0]);
  v58.f64[0] = log2(__x.f64[1]);
  v48.f64[0] = log2(__x.f64[0]);
  v48.f64[1] = v58.f64[0];
  __asm { FMOV            V1.2S, #1.0 }

  *&v48.f64[0] = vmaxnm_f32(vneg_f32(vcvt_f32_f64(v48)), _D1);
  __asm { FMOV            V1.2S, #25.0 }

  *(a1 + 16) = vminnm_f32(*&v48.f64[0], _D1);
  v55 = log2(v37 * (v60 + v60));
  *(a1 + 24) = fminf(fmaxf(-v55, 1.0), 25.0);
  return a1;
}

long double geo::WGS84::unitsPerMeterAtLatitude<geo::Radians,double>(double a1)
{
  v2 = cos(a1 + a1) * -559.82 + 111132.92;
  v3 = v2 + cos(a1 * 4.0) * 1.175;
  v4 = v3 + cos(a1 * 6.0) * -0.0023;
  v5 = a1 * 0.5;
  v6 = tan(a1 * 0.5 + 0.78103484);
  v7 = log(v6);
  v8 = tan(v5 + 0.789761487);
  return fabs((log(v8) - v7) * 0.159154943) / v4;
}

__n128 gdc::Camera::setLimits(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 128) = *(a2 + 64);
  *(a1 + 96) = v3;
  *(a1 + 112) = v4;
  *(a1 + 80) = result;
  return result;
}

void gss::ClientStyleState<gss::PropertyID>::setTargetClientStyleAttribute(uint64_t a1, unsigned int a2, int a3)
{
  v12 = (a1 + 16);
  v6 = pthread_rwlock_wrlock((a1 + 16));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "write lock", v7);
  }

  v8 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1 + 240, a2);
  if (v8 == *(a1 + 252) || *(*(a1 + 240) + *(a1 + 248) + 2 * v8) != a3)
  {
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a1 + 240, a2) = a3;
    if ((*(a1 + 256) & 1) == 0 && (*(a1 + 257) & 1) == 0)
    {
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1 + 240, *(a1 + 254), 1);
    }

    v9 = COERCE_FLOAT(atomic_load((a1 + 272)));
    v10 = v9 <= 0.0;
    v11 = 1;
    if (v10)
    {
      v11 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((a1 + 240), a1 + 216) ^ 1;
    }

    atomic_store(v11, (a1 + 270));
    atomic_fetch_add((a1 + 264), 1u);
  }

  geo::write_lock_guard::~write_lock_guard(&v12);
}

void sub_1B29163BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::write_lock_guard::~write_lock_guard(va);
  _Unwind_Resume(a1);
}

uint64_t md::LogicManager::logic<md::StyleLogic>(int8x8_t *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v2 = vcnt_s8(v1);
    v2.i16[0] = vaddlv_u8(v2);
    if (v2.u32[0] > 1uLL)
    {
      v3 = 0x2FED70A4459DFCA1;
      if (*&v1 <= 0x2FED70A4459DFCA1uLL)
      {
        v3 = 0x2FED70A4459DFCA1uLL % *&v1;
      }
    }

    else
    {
      v3 = (*&v1 - 1) & 0x2FED70A4459DFCA1;
    }

    v4 = *(*&a1[2] + 8 * v3);
    if (v4)
    {
      v5 = *v4;
      if (v5)
      {
        while (1)
        {
          v6 = v5[1];
          if (v6 == 0x2FED70A4459DFCA1)
          {
            if (v5[2] == 0x2FED70A4459DFCA1)
            {
              return v5[5];
            }
          }

          else
          {
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
          }

          result = 0;
          v5 = *v5;
          if (!v5)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

void md::StyleLogic::setEmphasis(uint64_t a1, int a2, float a3)
{
  if (*(a1 + 164) != a2)
  {
    v7 = *(a1 + 1184);
    if (v7)
    {
      [v7 stop];
    }

    *(a1 + 164) = a2;
    gss::ClientStyleState<gss::PropertyID>::setTargetClientStyleAttribute(*(a1 + 208), 0x10045u, a2);
    gss::ClientStyleState<gss::ScenePropertyID>::setTargetClientStyleAttribute(*(a1 + 224), 0x10045u, *(a1 + 164));

    md::StyleLogic::queueStyleTransition(a1, a3);
  }
}

void gss::ClientStyleState<gss::ScenePropertyID>::setTargetClientStyleAttribute(uint64_t a1, unsigned int a2, int a3)
{
  v12 = (a1 + 16);
  v6 = pthread_rwlock_wrlock((a1 + 16));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "write lock", v7);
  }

  v8 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a1 + 240, a2);
  if (v8 == *(a1 + 252) || *(*(a1 + 240) + *(a1 + 248) + 2 * v8) != a3)
  {
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a1 + 240, a2) = a3;
    if ((*(a1 + 256) & 1) == 0 && (*(a1 + 257) & 1) == 0)
    {
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1 + 240, *(a1 + 254), 1);
    }

    v9 = COERCE_FLOAT(atomic_load((a1 + 272)));
    v10 = v9 <= 0.0;
    v11 = 1;
    if (v10)
    {
      v11 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((a1 + 240), a1 + 216) ^ 1;
    }

    atomic_store(v11, (a1 + 270));
    atomic_fetch_add((a1 + 264), 1u);
  }

  geo::write_lock_guard::~write_lock_guard(&v12);
}

void sub_1B2916624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::write_lock_guard::~write_lock_guard(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

__n128 gdc::Camera::setCameraFrame(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = result;
  return result;
}

uint64_t gdc::Camera::setNearFar(uint64_t result, uint64_t a2, void *a3)
{
  *(result + 464) = a2;
  *(result + 472) = *a3;
  return result;
}

float gdc::Camera::setHorizontalOffset(gdc::Camera *this, double a2)
{
  result = a2;
  *(this + 122) = result;
  return result;
}

float gdc::Camera::setVerticalOffset(gdc::Camera *this, double a2)
{
  result = a2;
  *(this + 123) = result;
  return result;
}

uint64_t *std::unique_ptr<gss::StyleMatchingTree<gss::CartoStyle<gss::PropertyID>>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      v4 = *(v2 + 56);
      v5 = *(v2 + 48);
      if (v4 != v3)
      {
        do
        {
          v4 = std::unique_ptr<geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100]((v4 - 8));
        }

        while (v4 != v3);
        v5 = *(v2 + 48);
      }

      *(v2 + 56) = v3;
      operator delete(v5);
    }

    geo::intern_vector<gss::MatchingGraphEndChain,unsigned short,geo::allocator_adapter<gss::MatchingGraphEndChain,gss::zone_mallocator>>::deallocateStorage((v2 + 32));
    geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,unsigned int,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(v2 + 8);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t gss::StyleMatchingTree<gss::CartoStyle<gss::PropertyID>>::construct(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v324 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 24);
  v11 = v10 + 5;
  v12 = a2[1];
  v13 = a2[2];
  v14 = v13 + ((v10 + 5) >> 3);
  v15 = (v10 + 5) & 7;
  v16 = v13 + 1;
  if (v14 < v13 + 1)
  {
    if (*(a2 + 24))
    {
      v17 = v13 + 1;
    }

    else
    {
      v17 = a2[2];
    }

    if (v12 < v17)
    {
      goto LABEL_14;
    }

    if (*(a2 + 24))
    {
      if (v12 >= v16)
      {
        v18 = (((1 << (8 - v10)) - 1) & *(*a2 + v13)) << v10;
        goto LABEL_25;
      }

      goto LABEL_13;
    }

    if (v12 >= v16)
    {
      LOBYTE(v18) = *(*a2 + v13);
      goto LABEL_25;
    }

LABEL_13:
    a2[2] = v14;
    *(a2 + 24) = v15;
LABEL_14:
    v20 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 167;
      v322 = 2082;
      v323 = "Could not read number of bits used for end chain counts.";
      _os_log_impl(&dword_1B2754000, v20, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v21 = MEMORY[0x1B8C61C80](a5, 167);
    v22 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, " STYL Parse Error Here: ", 24);
    v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, "Could not read number of bits used for end chain counts.", 56);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, "\n", 1);
    return 0;
  }

  if (v10 <= 3)
  {
    v19 = v13 + 1;
  }

  else
  {
    v19 = v13 + 2;
  }

  if (v12 < v19)
  {
    goto LABEL_13;
  }

  v24 = *a2;
  if (*(a2 + 24))
  {
    v25 = *(v24 + v13);
    if (v16 >= v12)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(v24 + v16);
    }

    v18 = ((v26 & (0xFFFF << (8 - v10))) >> (8 - v10)) | ((((1 << (8 - v10)) + 255) & v25) << v10);
    a2[2] = v16;
  }

  else
  {
    LOBYTE(v18) = *(v24 + v13);
  }

LABEL_25:
  a2[2] = v14;
  *(a2 + 24) = v15;
  *(a3 + 95) = (v18 >> 3) + 1;
  v27 = v11 & 7;
  v28 = (v11 & 7) + 5;
  v29 = v28 >> 3;
  v30 = v14 + v29;
  v31 = v28 & 7;
  v32 = v14 + 1;
  if (v14 + v29 < v14 + 1)
  {
    if (v15)
    {
      v33 = v14 + 1;
    }

    else
    {
      v33 = v14;
    }

    if (v12 < v33)
    {
      goto LABEL_38;
    }

    if (v15)
    {
      if (v12 >= v32)
      {
        v34 = *a2;
        v35 = (((1 << (8 - v15)) - 1) & *(*a2 + v14)) << v27;
        goto LABEL_49;
      }

      goto LABEL_37;
    }

    if (v12 >= v32)
    {
      v34 = *a2;
      goto LABEL_46;
    }

LABEL_37:
    a2[2] = v30;
    *(a2 + 24) = v31;
LABEL_38:
    v37 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 169;
      v322 = 2082;
      v323 = "Could not read number of bits used for end chain lengths.";
      _os_log_impl(&dword_1B2754000, v37, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v38 = MEMORY[0x1B8C61C80](a5, 169);
    v39 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, " STYL Parse Error Here: ", 24);
    v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, "Could not read number of bits used for end chain lengths.", 57);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, "\n", 1);
    return 0;
  }

  if (v15 <= 3)
  {
    v36 = v14 + 1;
  }

  else
  {
    v36 = v14 + 2;
  }

  if (v12 < v36)
  {
    goto LABEL_37;
  }

  v34 = *a2;
  if (!v15)
  {
LABEL_46:
    LOBYTE(v35) = *(v34 + v14);
    goto LABEL_49;
  }

  v41 = 8 - v15;
  v42 = *(v34 + v14);
  if (v32 >= v12)
  {
    v43 = 0;
  }

  else
  {
    v43 = *(v34 + v32);
  }

  v35 = (v43 >> v41) | ((((1 << v41) + 255) & v42) << v27);
  a2[2] = v32;
LABEL_49:
  a2[2] = v30;
  *(a2 + 24) = v31;
  v44 = v28 & 7;
  v45 = (v28 & 7) + 5;
  v46 = v30 + (v45 >> 3);
  v47 = v45 & 7;
  v48 = v30 + 1;
  if (v46 < v30 + 1)
  {
    if (v31)
    {
      v49 = v30 + 1;
    }

    else
    {
      v49 = v30;
    }

    if (v12 < v49)
    {
      goto LABEL_62;
    }

    if (v31)
    {
      if (v12 >= v48)
      {
        v50 = (((1 << (8 - v31)) - 1) & *(v34 + v30)) << v44;
        goto LABEL_72;
      }

      goto LABEL_61;
    }

    if (v12 >= v48)
    {
      goto LABEL_69;
    }

LABEL_61:
    a2[2] = v46;
    *(a2 + 24) = v47;
LABEL_62:
    v52 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 171;
      v322 = 2082;
      v323 = "Could not read number of bits used for attribute value counts.";
      _os_log_impl(&dword_1B2754000, v52, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v53 = MEMORY[0x1B8C61C80](a5, 171);
    v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, " STYL Parse Error Here: ", 24);
    v55 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v54, "Could not read number of bits used for attribute value counts.", 62);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v55, "\n", 1);
    return 0;
  }

  if (v31 <= 3)
  {
    v51 = v30 + 1;
  }

  else
  {
    v51 = v30 + 2;
  }

  if (v12 < v51)
  {
    goto LABEL_61;
  }

  if (!v31)
  {
LABEL_69:
    LOBYTE(v50) = *(v34 + v30);
    goto LABEL_72;
  }

  v56 = 8 - v31;
  v57 = *(v34 + v30);
  if (v48 >= v12)
  {
    v58 = 0;
  }

  else
  {
    v58 = *(v34 + v48);
  }

  v50 = (v58 >> v56) | ((((1 << v56) + 255) & v57) << v44);
  a2[2] = v48;
LABEL_72:
  a2[2] = v46;
  *(a2 + 24) = v47;
  v59 = v45 & 7;
  v60 = (v45 & 7) + 5;
  v61 = v46 + (v60 >> 3);
  v62 = v60 & 7;
  v63 = v46 + 1;
  if (v61 < v46 + 1)
  {
    if (v47)
    {
      v64 = v46 + 1;
    }

    else
    {
      v64 = v46;
    }

    if (v12 < v64)
    {
      goto LABEL_85;
    }

    if (v47)
    {
      if (v12 >= v63)
      {
        LODWORD(v34) = (((1 << (8 - v47)) - 1) & *(v34 + v46)) << v59;
        goto LABEL_95;
      }

      goto LABEL_84;
    }

    if (v12 >= v63)
    {
      goto LABEL_92;
    }

LABEL_84:
    a2[2] = v61;
    *(a2 + 24) = v62;
LABEL_85:
    v66 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 173;
      v322 = 2082;
      v323 = "Could not read number of bits used for node indices.";
      _os_log_impl(&dword_1B2754000, v66, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v67 = MEMORY[0x1B8C61C80](a5, 173);
    v68 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v67, " STYL Parse Error Here: ", 24);
    v69 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v68, "Could not read number of bits used for node indices.", 52);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v69, "\n", 1);
    return 0;
  }

  if (v47 <= 3)
  {
    v65 = v46 + 1;
  }

  else
  {
    v65 = v46 + 2;
  }

  if (v12 < v65)
  {
    goto LABEL_84;
  }

  if (!v47)
  {
LABEL_92:
    LOBYTE(v34) = *(v34 + v46);
    goto LABEL_95;
  }

  v70 = 8 - v47;
  v71 = *(v34 + v46);
  if (v63 >= v12)
  {
    v72 = 0;
  }

  else
  {
    v72 = *(v34 + v63);
  }

  LODWORD(v34) = (v72 >> v70) | ((((1 << v70) + 255) & v71) << v59);
  a2[2] = v63;
LABEL_95:
  a2[2] = v61;
  *(a2 + 24) = v62;
  *(a3 + 96) = (v34 >> 3) + 1;
  v73 = v60 & 7;
  v74 = (v60 & 7) + 5;
  v75 = v61 + (v74 >> 3);
  v76 = v74 & 7;
  v77 = v61 + 1;
  if (v75 < v61 + 1)
  {
    if (v62)
    {
      v78 = v61 + 1;
    }

    else
    {
      v78 = v61;
    }

    if (v12 < v78)
    {
      goto LABEL_108;
    }

    if (v62)
    {
      if (v12 >= v77)
      {
        v79 = (((1 << (8 - v62)) - 1) & *(*a2 + v61)) << v73;
        goto LABEL_119;
      }

      goto LABEL_107;
    }

    if (v12 >= v77)
    {
      LOBYTE(v79) = *(*a2 + v61);
      goto LABEL_119;
    }

LABEL_107:
    a2[2] = v75;
    *(a2 + 24) = v76;
LABEL_108:
    v81 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 175;
      v322 = 2082;
      v323 = "Could not read number of bits used for node child counts.";
      _os_log_impl(&dword_1B2754000, v81, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v82 = MEMORY[0x1B8C61C80](a5, 175);
    v83 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v82, " STYL Parse Error Here: ", 24);
    v84 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v83, "Could not read number of bits used for node child counts.", 57);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v84, "\n", 1);
    return 0;
  }

  if (v62 <= 3)
  {
    v80 = v61 + 1;
  }

  else
  {
    v80 = v61 + 2;
  }

  if (v12 < v80)
  {
    goto LABEL_107;
  }

  v85 = *a2;
  if (v62)
  {
    v86 = 8 - v62;
    v87 = *(v85 + v61);
    if (v77 >= v12)
    {
      v88 = 0;
    }

    else
    {
      v88 = *(v85 + v77);
    }

    v79 = (v88 >> v86) | ((((1 << v86) + 255) & v87) << v73);
    a2[2] = v77;
  }

  else
  {
    LOBYTE(v79) = *(v85 + v61);
  }

LABEL_119:
  a2[2] = v75;
  *(a2 + 24) = v76;
  *(a3 + 97) = (v79 >> 3) + 1;
  v89 = v74 & 7;
  v90 = v75 + ((v89 + 5) >> 3);
  v91 = (v89 + 5) & 7;
  v92 = v75 + 1;
  v93 = a2[1];
  if (v90 < v75 + 1)
  {
    if (v76)
    {
      v94 = v75 + 1;
    }

    else
    {
      v94 = v75;
    }

    if (v93 < v94)
    {
      goto LABEL_132;
    }

    if (v76)
    {
      if (v93 >= v92)
      {
        LODWORD(v75) = (((1 << (8 - v76)) - 1) & *(*a2 + v75)) << v89;
        goto LABEL_143;
      }

      goto LABEL_131;
    }

    if (v93 >= v92)
    {
      LOBYTE(v75) = *(*a2 + v75);
      goto LABEL_143;
    }

LABEL_131:
    a2[2] = v90;
    *(a2 + 24) = v91;
LABEL_132:
    v96 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 177;
      v322 = 2082;
      v323 = "Could not read number of bits used for chunk sizes.";
      _os_log_impl(&dword_1B2754000, v96, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v97 = MEMORY[0x1B8C61C80](a5, 177);
    v98 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v97, " STYL Parse Error Here: ", 24);
    v99 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v98, "Could not read number of bits used for chunk sizes.", 51);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v99, "\n", 1);
    return 0;
  }

  if (v76 <= 3)
  {
    v95 = v75 + 1;
  }

  else
  {
    v95 = v75 + 2;
  }

  if (v93 < v95)
  {
    goto LABEL_131;
  }

  v100 = *a2;
  if (v76)
  {
    v101 = 8 - v76;
    v102 = *(v100 + v75);
    if (v92 >= v93)
    {
      v103 = 0;
    }

    else
    {
      v103 = *(v100 + v92);
    }

    LODWORD(v75) = (v103 >> v101) | ((((1 << v101) + 255) & v102) << v89);
    a2[2] = v92;
  }

  else
  {
    LOBYTE(v75) = *(v100 + v75);
  }

LABEL_143:
  v104 = v75 >> 3;
  a2[2] = v90;
  *(a2 + 24) = v91;
  geo::ibitstream::readUIntBits(v317, a2, v104 + 1);
  if ((v317[0] & 1) == 0)
  {
    v119 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 181;
      v322 = 2082;
      v323 = "Could not read end chain chunk.";
      _os_log_impl(&dword_1B2754000, v119, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v120 = MEMORY[0x1B8C61C80](a5, 181);
    v121 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v120, " STYL Parse Error Here: ", 24);
    v122 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v121, "Could not read end chain chunk.", 31);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v122, "\n", 1);
    return 0;
  }

  if (*(a2 + 24))
  {
    *(a2 + 24) = 0;
    ++a2[2];
  }

  geo::ibitstream::readUIntBits(v317, a2, *(a3 + 95));
  if ((v317[0] & 1) == 0)
  {
    v123 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 185;
      v322 = 2082;
      v323 = "Could not read number of end chains.";
      _os_log_impl(&dword_1B2754000, v123, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v124 = MEMORY[0x1B8C61C80](a5, 185);
    v125 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v124, " STYL Parse Error Here: ", 24);
    v126 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v125, "Could not read number of end chains.", 36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v126, "\n", 1);
    return 0;
  }

  v305 = v104;
  v105 = v318;
  geo::intern_vector<gss::MatchingGraphEndChain,unsigned short,geo::allocator_adapter<gss::MatchingGraphEndChain,gss::zone_mallocator>>::resize((a1 + 32), v318);
  v308 = v105;
  if (v105)
  {
    v106 = 0;
    v107 = v35 >> 3;
    v310 = v50 >> 3;
    v303 = v107;
    do
    {
      v108 = *(a1 + 32);
      geo::ibitstream::readUIntBits(v317, a2, v107 + 1);
      if ((v317[0] & 1) == 0)
      {
        v147 = GEOGetGeoCSSStyleSheetLog();
        if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
        {
          buf[0] = 136315650;
          *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
          v320 = 1024;
          v321 = 190;
          v322 = 2082;
          v323 = "Could not read end chain length.";
          _os_log_impl(&dword_1B2754000, v147, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
        v148 = MEMORY[0x1B8C61C80](a5, 190);
        v149 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v148, " STYL Parse Error Here: ", 24);
        v150 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v149, "Could not read end chain length.", 32);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v150, "\n", 1);
        return 0;
      }

      v306 = v106;
      v109 = v318;
      v313 = (v108 + 16 * v106);
      geo::intern_vector<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,unsigned short,geo::allocator_adapter<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,gss::zone_mallocator>>::resize(v313, v318);
      if (v109)
      {
        for (i = 0; i != v109; ++i)
        {
          v111 = *v313 + 24 * i;
          if ((gss::decodeAttributeEncoding(a2, v111, *(a3 + 13), *(a3 + 14), a5) & 1) == 0)
          {
            v139 = GEOGetGeoCSSStyleSheetLog();
            if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
            {
              buf[0] = 136315650;
              *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
              v320 = 1024;
              v321 = 194;
              v322 = 2082;
              v323 = "Could not decode attributes.";
              _os_log_impl(&dword_1B2754000, v139, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
            v140 = MEMORY[0x1B8C61C80](a5, 194);
            v141 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v140, " STYL Parse Error Here: ", 24);
            v142 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v141, "Could not decode attributes.", 28);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v142, "\n", 1);
            return 0;
          }

          geo::ibitstream::readUIntBits(v317, a2, v310 + 1);
          if ((v317[0] & 1) == 0)
          {
            v143 = GEOGetGeoCSSStyleSheetLog();
            if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
            {
              buf[0] = 136315650;
              *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
              v320 = 1024;
              v321 = 196;
              v322 = 2082;
              v323 = "Could not read number of values.";
              _os_log_impl(&dword_1B2754000, v143, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
            v144 = MEMORY[0x1B8C61C80](a5, 196);
            v145 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v144, " STYL Parse Error Here: ", 24);
            v146 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v145, "Could not read number of values.", 32);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v146, "\n", 1);
            return 0;
          }

          v112 = v318;
          geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::resize(v111 + 8, v318);
          if (v112)
          {
            v113 = 0;
            v114 = 4 * v112;
            do
            {
              v115 = std::map<unsigned int,unsigned char,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,unsigned char>,gss::zone_mallocator>>::at(*(a3 + 24), *v111);
              geo::ibitstream::readUIntBits(v317, a2, *v115);
              if ((v317[0] & 1) == 0)
              {
                v127 = GEOGetGeoCSSStyleSheetLog();
                if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                {
                  buf[0] = 136315650;
                  *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
                  v320 = 1024;
                  v321 = 199;
                  v322 = 2082;
                  v323 = "Could not read attribute value.";
                  _os_log_impl(&dword_1B2754000, v127, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
                }

                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
                v128 = MEMORY[0x1B8C61C80](a5, 199);
                v129 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v128, " STYL Parse Error Here: ", 24);
                v130 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v129, "Could not read attribute value.", 31);
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v130, "\n", 1);
                return 0;
              }

              *(*(v111 + 8) + v113) = v318;
              v113 += 4;
            }

            while (v114 != v113);
          }
        }
      }

      v106 = v306 + 1;
      v107 = v303;
    }

    while (v306 + 1 != v308);
  }

  if (*(a2 + 24))
  {
    *(a2 + 24) = 0;
    ++a2[2];
  }

  UIntBits = geo::ibitstream::readUIntBits(v317, a2, *(a3 + 96));
  if ((v317[0] & 1) == 0)
  {
    v131 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 209;
      v322 = 2082;
      v323 = "Could not read number of style matching graph nodes.";
      _os_log_impl(&dword_1B2754000, v131, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v132 = MEMORY[0x1B8C61C80](a5, 209);
    v133 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v132, " STYL Parse Error Here: ", 24);
    v134 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v133, "Could not read number of style matching graph nodes.", 52);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v134, "\n", 1);
    return 0;
  }

  if (v318 == -1)
  {
    v135 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 210;
      v322 = 2082;
      v323 = "Node count exceeds container limit";
      _os_log_impl(&dword_1B2754000, v135, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v136 = MEMORY[0x1B8C61C80](a5, 210);
    v137 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v136, " STYL Parse Error Here: ", 24);
    v138 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v137, "Node count exceeds container limit", 34);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v138, "\n", 1);
    return 0;
  }

  v309 = a4;
  if (*(a1 + 24))
  {
    goto LABEL_218;
  }

  v311 = *(a1 + 16);
  v314 = v318;
  if (v311 <= v318)
  {
    if (v311 >= v318)
    {
      goto LABEL_218;
    }

    if (*(a1 + 20) >= v318)
    {
      v307 = *(a1 + 8);
    }

    else
    {
      v151 = gss::zone_mallocator::instance(UIntBits);
      v152 = pthread_rwlock_rdlock((v151 + 32));
      if (v152)
      {
        geo::read_write_lock::logFailure(v152, "read lock", v153);
      }

      v307 = malloc_type_zone_malloc(*v151, 24 * v314, 0x102004012EE676EuLL);
      atomic_fetch_add((v151 + 24), 1u);
      geo::read_write_lock::unlock((v151 + 32));
      v154 = *(a1 + 8);
      v311 = *(a1 + 16);
      if (v154)
      {
        if (v311)
        {
          v155 = *(a1 + 16);
          v156 = v307;
          do
          {
            *v156 = *v154;
            *(v156 + 1) = 0;
            *(v156 + 13) = 0;
            geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage((v156 + 8));
            v157 = *(v154 + 8);
            if (*(v154 + 20) == 1)
            {
              *(v156 + 1) = v157;
              *(v156 + 4) = *(v154 + 16);
              v156[20] = 1;
            }

            else
            {
              v158 = *(v154 + 16);
              v159 = *(v156 + 9);
              v160 = *(v156 + 8);
              if (v159 - v160 < v158)
              {
                v161 = v158 + v160 > v159 && (v158 + v160) >> 16 == 0;
                if (v161 && (v156[20] & 1) == 0)
                {
                  geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::reallocate((v156 + 8), v158 + v160);
                  v160 = *(v156 + 8);
                }
              }

              if (v158)
              {
                v162 = (*(v156 + 1) + 8 * v160);
                v163 = 8 * v158;
                do
                {
                  v164 = *v157++;
                  *v162++ = v164;
                  v163 -= 8;
                }

                while (v163);
                LOWORD(v160) = *(v156 + 8);
              }

              *(v156 + 8) = v160 + v158;
            }

            v156 += 24;
            v154 += 24;
            --v155;
          }

          while (v155);
        }

        geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,unsigned int,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1 + 8);
        *(a1 + 16) = v311;
      }

      *(a1 + 20) = v314;
      *(a1 + 8) = v307;
    }

    if (v311 != v314)
    {
      v224 = &v307[24 * v311];
      do
      {
        *(v224 + 1) = 0;
        *(v224 + 2) = 0;
        *v224 = 0xFFFFFFFF7FFFFFFFLL;
        v224 += 24;
      }

      while (v224 != &v307[24 * v314]);
    }
  }

  else
  {
    v117 = 24 * v311 - 24 * v318;
    v118 = *(a1 + 8) + 24 * v318 + 8;
    do
    {
      geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage(v118);
      v118 += 24;
      v117 -= 24;
    }

    while (v117);
  }

  *(a1 + 16) = v314;
LABEL_218:
  geo::ibitstream::readUIntBits(v317, a2, *(a3 + 96));
  if ((v317[0] & 1) == 0)
  {
    v220 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 212;
      v322 = 2082;
      v323 = "Could not read number of chunks.";
      _os_log_impl(&dword_1B2754000, v220, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v221 = MEMORY[0x1B8C61C80](a5, 212);
    v222 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v221, " STYL Parse Error Here: ", 24);
    v223 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v222, "Could not read number of chunks.", 32);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v223, "\n", 1);
    return 0;
  }

  v312 = v318;
  if (*(a2 + 24))
  {
    *(a2 + 24) = 0;
    ++a2[2];
  }

  if (!v312)
  {
LABEL_327:
    *a1 = *(a1 + 8);
    return 1;
  }

  v304 = 0;
  v315 = 0;
  while (1)
  {
    geo::ibitstream::readUIntBits(v317, a2, v305 + 1);
    if ((v317[0] & 1) == 0)
    {
      v241 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 218;
        v322 = 2082;
        v323 = "Could not read chunk length.";
        _os_log_impl(&dword_1B2754000, v241, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v242 = MEMORY[0x1B8C61C80](a5, 218);
      v243 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v242, " STYL Parse Error Here: ", 24);
      v244 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v243, "Could not read chunk length.", 28);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v244, "\n", 1);
      return 0;
    }

    geo::ibitstream::readUIntBits(v317, a2, *(a3 + 96));
    if ((v317[0] & 1) == 0)
    {
      v245 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 219;
        v322 = 2082;
        v323 = "Could not read number of nodes in the chunk.";
        _os_log_impl(&dword_1B2754000, v245, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v246 = MEMORY[0x1B8C61C80](a5, 219);
      v247 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v246, " STYL Parse Error Here: ", 24);
      v248 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v247, "Could not read number of nodes in the chunk.", 44);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v248, "\n", 1);
      return 0;
    }

    if (v318)
    {
      break;
    }

LABEL_324:
    if (*(a2 + 24))
    {
      *(a2 + 24) = 0;
      ++a2[2];
    }

    if (++v304 == v312)
    {
      goto LABEL_327;
    }
  }

  v302 = v318 + v315;
  while (1)
  {
    v165 = *(a1 + 8);
    v166 = *(a2 + 24);
    v168 = a2[1];
    v167 = a2[2];
    v169 = v167 + ((v166 + 1) >> 3);
    v170 = (v166 + 1) & 7;
    v171 = v167 + 1;
    if (v169 >= v167 + 1)
    {
      if (v166 <= 7)
      {
        v174 = v167 + 1;
      }

      else
      {
        v174 = v167 + 2;
      }

      if (v168 < v174)
      {
LABEL_345:
        a2[2] = v169;
        *(a2 + 24) = v170;
LABEL_346:
        v237 = GEOGetGeoCSSStyleSheetLog();
        if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
        {
          buf[0] = 136315650;
          *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
          v320 = 1024;
          v321 = 263;
          v322 = 2082;
          v323 = "Could not read indication of node being terminal.";
          _os_log_impl(&dword_1B2754000, v237, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
        v238 = MEMORY[0x1B8C61C80](a5, 263);
        v239 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v238, " STYL Parse Error Here: ", 24);
        v240 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v239, "Could not read indication of node being terminal.", 49);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v240, "\n", 1);
        goto LABEL_392;
      }

      v175 = *a2;
      if (*(a2 + 24))
      {
        v176 = v171 >= v168 ? 0 : *(v175 + v171);
        v173 = ((v176 & (0xFFFF << (8 - v166))) >> (8 - v166)) | ((((1 << (8 - v166)) + 255) & *(v175 + v167)) << v166);
        a2[2] = v171;
      }

      else
      {
        LOBYTE(v173) = *(v175 + v167);
      }
    }

    else
    {
      if (*(a2 + 24))
      {
        v172 = v167 + 1;
      }

      else
      {
        v172 = a2[2];
      }

      if (v168 < v172)
      {
        goto LABEL_346;
      }

      if (*(a2 + 24))
      {
        if (v168 < v171)
        {
          goto LABEL_345;
        }

        v173 = (((1 << (8 - v166)) - 1) & *(*a2 + v167)) << v166;
      }

      else
      {
        if (v168 < v171)
        {
          goto LABEL_345;
        }

        LOBYTE(v173) = *(*a2 + v167);
      }
    }

    v177 = v165 + 24 * v315;
    a2[2] = v169;
    *(a2 + 24) = v170;
    if ((v173 & 0x80) == 0)
    {
      break;
    }

    geo::ibitstream::readUIntBits(v317, a2, *(a3 + 94));
    if ((v317[0] & 1) == 0)
    {
      v269 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v269, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 267;
        v322 = 2082;
        v323 = "Could not read style index.";
        _os_log_impl(&dword_1B2754000, v269, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v270 = MEMORY[0x1B8C61C80](a5, 267);
      v271 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v270, " STYL Parse Error Here: ", 24);
      v272 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v271, "Could not read style index.", 27);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v272, "\n", 1);
      goto LABEL_392;
    }

    v187 = v318;
    geo::ibitstream::readUIntBits(v317, a2, *(a3 + 95));
    if ((v317[0] & 1) == 0)
    {
      v273 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 268;
        v322 = 2082;
        v323 = "Could not end chain index.";
        _os_log_impl(&dword_1B2754000, v273, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v274 = MEMORY[0x1B8C61C80](a5, 268);
      v275 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v274, " STYL Parse Error Here: ", 24);
      v276 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v275, "Could not end chain index.", 26);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v276, "\n", 1);
      goto LABEL_392;
    }

    if (v187 >= 0xFFFF)
    {
      v277 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 270;
        v322 = 2082;
        v323 = "StyleIndex outside uint16 range";
        _os_log_impl(&dword_1B2754000, v277, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v278 = MEMORY[0x1B8C61C80](a5, 270);
      v279 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v278, " STYL Parse Error Here: ", 24);
      v280 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v279, "StyleIndex outside uint16 range", 31);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v280, "\n", 1);
      goto LABEL_392;
    }

    if (v187 >= *(v309 + 8))
    {
      v281 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v281, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 271;
        v322 = 2082;
        v323 = "StyleIndex outside styles range";
        _os_log_impl(&dword_1B2754000, v281, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v282 = MEMORY[0x1B8C61C80](a5, 271);
      v283 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v282, " STYL Parse Error Here: ", 24);
      v284 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v283, "StyleIndex outside styles range", 31);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v284, "\n", 1);
      goto LABEL_392;
    }

    v188 = v318;
    if (v318 >= 0xFFFF)
    {
      v285 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 272;
        v322 = 2082;
        v323 = "EndChainIndex outside uint16 range";
        _os_log_impl(&dword_1B2754000, v285, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v286 = MEMORY[0x1B8C61C80](a5, 272);
      v287 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v286, " STYL Parse Error Here: ", 24);
      v288 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v287, "EndChainIndex outside uint16 range", 34);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v288, "\n", 1);
      goto LABEL_392;
    }

    *v177 = 0x7FFFFFFF;
    *(v177 + 4) = v187;
    *(v177 + 6) = v188;
LABEL_322:
    if (++v315 == v302)
    {
      v315 = v302;
      goto LABEL_324;
    }
  }

  *(v177 + 4) = 0;
  v316 = 0;
  if ((gss::decodeAttributeEncoding(a2, &v316, *(a3 + 13), *(a3 + 14), a5) & 1) == 0)
  {
    v249 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 284;
      v322 = 2082;
      v323 = "Could not decode attribute.";
      _os_log_impl(&dword_1B2754000, v249, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v250 = MEMORY[0x1B8C61C80](a5, 284);
    v251 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v250, " STYL Parse Error Here: ", 24);
    v252 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v251, "Could not decode attribute.", 27);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v252, "\n", 1);
    goto LABEL_392;
  }

  v178 = v316;
  if (v316 == 0x7FFFFFFF)
  {
    v253 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 285;
      v322 = 2082;
      v323 = "attribute is using sentinel value";
      _os_log_impl(&dword_1B2754000, v253, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v254 = MEMORY[0x1B8C61C80](a5, 285);
    v255 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v254, " STYL Parse Error Here: ", 24);
    v256 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v255, "attribute is using sentinel value", 33);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v256, "\n", 1);
    goto LABEL_392;
  }

  *v177 = v316;
  v179 = *(a2 + 24);
  v181 = a2[1];
  v180 = a2[2];
  v182 = v180 + ((v179 + 1) >> 3);
  v183 = (v179 + 1) & 7;
  v184 = v180 + 1;
  if (v182 >= v180 + 1)
  {
    if (v179 <= 7)
    {
      v189 = v180 + 1;
    }

    else
    {
      v189 = v180 + 2;
    }

    if (v181 < v189)
    {
LABEL_361:
      a2[2] = v182;
      *(a2 + 24) = v183;
LABEL_362:
      v257 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 287;
        v322 = 2082;
        v323 = "Could not read indication of undefined node existing.";
        _os_log_impl(&dword_1B2754000, v257, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v258 = MEMORY[0x1B8C61C80](a5, 287);
      v259 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v258, " STYL Parse Error Here: ", 24);
      v260 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v259, "Could not read indication of undefined node existing.", 53);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v260, "\n", 1);
      goto LABEL_392;
    }

    v190 = *a2;
    if (*(a2 + 24))
    {
      if (v184 >= v181)
      {
        v191 = 0;
      }

      else
      {
        v191 = *(v190 + v184);
      }

      v186 = ((v191 & (0xFFFF << (8 - v179))) >> (8 - v179)) | ((((1 << (8 - v179)) + 255) & *(v190 + v180)) << v179);
      a2[2] = v184;
    }

    else
    {
      LOBYTE(v186) = *(v190 + v180);
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      v185 = v180 + 1;
    }

    else
    {
      v185 = a2[2];
    }

    if (v181 < v185)
    {
      goto LABEL_362;
    }

    if (*(a2 + 24))
    {
      if (v181 < v184)
      {
        goto LABEL_361;
      }

      v186 = (((1 << (8 - v179)) - 1) & *(*a2 + v180)) << v179;
    }

    else
    {
      if (v181 < v184)
      {
        goto LABEL_361;
      }

      LOBYTE(v186) = *(*a2 + v180);
    }
  }

  a2[2] = v182;
  *(a2 + 24) = v183;
  if ((v186 & 0x80) != 0)
  {
    geo::ibitstream::readUIntBits(v317, a2, *(a3 + 96));
    if ((v317[0] & 1) == 0)
    {
      v289 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 292;
        v322 = 2082;
        v323 = "Could not read undefined node index.";
        _os_log_impl(&dword_1B2754000, v289, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v290 = MEMORY[0x1B8C61C80](a5, 292);
      v291 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v290, " STYL Parse Error Here: ", 24);
      v292 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v291, "Could not read undefined node index.", 36);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v292, "\n", 1);
      goto LABEL_392;
    }

    v192 = v318;
    if (*(a1 + 16) <= v318)
    {
      v293 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 293;
        v322 = 2082;
        v323 = "Undefined node index out of bounds";
        _os_log_impl(&dword_1B2754000, v293, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v294 = MEMORY[0x1B8C61C80](a5, 293);
      v295 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v294, " STYL Parse Error Here: ", 24);
      v296 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v295, "Undefined node index out of bounds", 34);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v296, "\n", 1);
      goto LABEL_392;
    }

    v193 = *(v177 + 16);
    if (v193 != 0xFFFF && (*(v177 + 20) & 1) == 0 && v193 >= *(v177 + 18))
    {
      geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::reallocate((v177 + 8), v193 + 1);
      v193 = *(v177 + 16);
    }

    *(*(v177 + 8) + 8 * v193) = (v192 << 32) | 0xFFFF;
    ++*(v177 + 16);
    v301 = 1;
  }

  else
  {
    v301 = 0;
  }

  geo::ibitstream::readUIntBits(v317, a2, *(a3 + 97));
  if ((v317[0] & 1) == 0)
  {
    v261 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 297;
      v322 = 2082;
      v323 = "Could not read number of children.";
      _os_log_impl(&dword_1B2754000, v261, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v262 = MEMORY[0x1B8C61C80](a5, 297);
    v263 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v262, " STYL Parse Error Here: ", 24);
    v264 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v263, "Could not read number of children.", 34);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v264, "\n", 1);
    goto LABEL_392;
  }

  v194 = v318;
  v195 = *(v177 + 16);
  v196 = v195 + v318;
  if (v196 >= 0xFFFFFFFF)
  {
    v265 = GEOGetGeoCSSStyleSheetLog();
    if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
      v320 = 1024;
      v321 = 300;
      v322 = 2082;
      v323 = "SubTree nodes larger than uint16!";
      _os_log_impl(&dword_1B2754000, v265, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
    v266 = MEMORY[0x1B8C61C80](a5, 300);
    v267 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v266, " STYL Parse Error Here: ", 24);
    v268 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v267, "SubTree nodes larger than uint16!", 33);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v268, "\n", 1);
    goto LABEL_392;
  }

  if (*(v177 + 20))
  {
    goto LABEL_306;
  }

  if (!v318)
  {
LABEL_295:
    if (v195)
    {
      if (*(a1 + 72) < v195)
      {
        goto LABEL_306;
      }

      v197 = *(a1 + 56);
      if (*(a1 + 48) == v197 || (v198 = *(v197 - 8), v199 = v198[1], v198[2] - v199 < v195))
      {
        operator new();
      }

      v200 = *v198;
      v198[1] = v199 + v195;
      if (!v200)
      {
        goto LABEL_306;
      }

      v201 = (v200 + 8 * v199);
      v202 = *(v177 + 16);
      if (v202)
      {
        v203 = *(v177 + 8);
        v204 = *(v177 + 16);
        v205 = v201;
        do
        {
          v206 = *v203++;
          *v205++ = v206;
          --v204;
        }

        while (v204);
      }

      geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage(v177 + 8);
      *(v177 + 16) = v202;
      *(v177 + 18) = 0;
      *(v177 + 8) = v201;
    }

    *(v177 + 20) = 1;
LABEL_306:
    if (v194)
    {
      goto LABEL_307;
    }

    v214 = *(v177 + 8);
LABEL_318:
    v216 = *(v177 + 16);
    v217 = 126 - 2 * __clz(v216);
    if (*(v177 + 16))
    {
      v218 = v217;
    }

    else
    {
      v218 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::construct(geo::ibitstream &,gss::DecodingContext const&,geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>> const&,geo::intern_vector<gss::MatchingGraphEndChain,unsigned short,geo::allocator_adapter<gss::MatchingGraphEndChain,gss::zone_mallocator>> &,geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,unsigned int,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>> &,std::ostringstream &,geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>> &)::{lambda(gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode const&,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode const&)#1} &,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode*,false>(v214, (v214 + 8 * v216), v218, 1);
    goto LABEL_322;
  }

  if (v196 > *(v177 + 18))
  {
    geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::reallocate((v177 + 8), v195 + v318);
    v195 = *(v177 + 16);
  }

  if (v195 != v196)
  {
    bzero((*(v177 + 8) + 8 * v195), 8 * v196 - 8 * v195);
  }

  *(v177 + 16) = v196;
  if ((*(v177 + 20) & 1) == 0)
  {
    LODWORD(v195) = v196;
    goto LABEL_295;
  }

LABEL_307:
  v207 = 8 * v301;
  while (1)
  {
    v208 = std::map<unsigned int,unsigned char,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,unsigned char>,gss::zone_mallocator>>::at(*(a3 + 24), v178);
    geo::ibitstream::readUIntBits(v317, a2, *v208);
    if ((v317[0] & 1) == 0)
    {
      break;
    }

    LODWORD(v209) = v318;
    geo::ibitstream::readUIntBits(v317, a2, *(a3 + 96));
    if ((v317[0] & 1) == 0)
    {
      v229 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 309;
        v322 = 2082;
        v323 = "Could not read referenced node index.";
        _os_log_impl(&dword_1B2754000, v229, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v230 = MEMORY[0x1B8C61C80](a5, 309);
      v231 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v230, " STYL Parse Error Here: ", 24);
      v232 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v231, "Could not read referenced node index.", 37);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v232, "\n", 1);
      goto LABEL_392;
    }

    v210 = v318;
    if (*(a1 + 16) <= v318)
    {
      v233 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 310;
        v322 = 2082;
        v323 = "Referenced node index out of bounds";
        _os_log_impl(&dword_1B2754000, v233, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v234 = MEMORY[0x1B8C61C80](a5, 310);
      v235 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v234, " STYL Parse Error Here: ", 24);
      v236 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v235, "Referenced node index out of bounds", 35);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v236, "\n", 1);
      goto LABEL_392;
    }

    if (v209 >= 0xFFFF)
    {
      v209 = GEOGetGeoCSSStyleSheetLog();
      if (os_log_type_enabled(v209, OS_LOG_TYPE_DEBUG))
      {
        buf[0] = 136315650;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
        v320 = 1024;
        v321 = 312;
        v322 = 2082;
        v323 = "AttributeValue nodes larger than uint16!";
        _os_log_impl(&dword_1B2754000, v209, OS_LOG_TYPE_DEBUG, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
      v211 = MEMORY[0x1B8C61C80](a5, 312);
      v212 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v211, " STYL Parse Warning: ", 21);
      v213 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v212, "AttributeValue nodes larger than uint16!", 40);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v213, "\n", 1);
      LOWORD(v209) = -1;
    }

    v214 = *(v177 + 8);
    v215 = v214 + v207;
    *v215 = v209;
    *(v215 + 4) = v210;
    v207 += 8;
    if (!--v194)
    {
      goto LABEL_318;
    }
  }

  v225 = GEOGetGeoCSSStyleSheetLog();
  if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136315650;
    *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
    v320 = 1024;
    v321 = 308;
    v322 = 2082;
    v323 = "Could not read attribute value.";
    _os_log_impl(&dword_1B2754000, v225, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
  v226 = MEMORY[0x1B8C61C80](a5, 308);
  v227 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v226, " STYL Parse Error Here: ", 24);
  v228 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v227, "Could not read attribute value.", 31);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v228, "\n", 1);
LABEL_392:
  v297 = GEOGetGeoCSSStyleSheetLog();
  if (os_log_type_enabled(v297, OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136315650;
    *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
    v320 = 1024;
    v321 = 222;
    v322 = 2082;
    v323 = "Could not construct node.";
    _os_log_impl(&dword_1B2754000, v297, OS_LOG_TYPE_ERROR, "%s:%d STYL Parse Error Here: %{public}s", buf, 0x1Cu);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp", 87);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a5, ":", 1);
  v298 = MEMORY[0x1B8C61C80](a5, 222);
  v299 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v298, " STYL Parse Error Here: ", 24);
  v300 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v299, "Could not construct node.", 25);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v300, "\n", 1);
  return 0;
}

void sub_1B291A0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::unique_ptr<geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::reallocate(gss::zone_mallocator *a1, uint64_t a2)
{
  v4 = gss::zone_mallocator::instance(a1);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode>(v4, a2);
  v6 = v5;
  v7 = *a1;
  if (*a1)
  {
    v8 = *(a1 + 4);
    if (v8)
    {
      v9 = *(a1 + 4);
      v10 = v5;
      do
      {
        v11 = *v7++;
        *v10++ = v11;
        --v9;
      }

      while (v9);
    }

    geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage(a1);
    *(a1 + 4) = v8;
  }

  *(a1 + 5) = a2;
  *a1 = v6;
}

void geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = gss::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode>(v3, v2);
    }
  }

  *(a1 + 5) = 0;
  *a1 = 0;
}

gss::zone_mallocator *std::unique_ptr<geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100](gss::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *v2;
    v4 = gss::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode>(v4, v3);
    MEMORY[0x1B8C62190](v2, 0x1020C4024DAA5DELL);
  }

  return a1;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::construct(geo::ibitstream &,gss::DecodingContext const&,geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>> const&,geo::intern_vector<gss::MatchingGraphEndChain,unsigned short,geo::allocator_adapter<gss::MatchingGraphEndChain,gss::zone_mallocator>> &,geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,unsigned int,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>> &,std::ostringstream &,geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>> &)::{lambda(gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode const&,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode const&)#1} &,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode*>(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a1->u16[4];
      v5 = a2[-1].u16[4];
      if (v4 >= a1->u16[0])
      {
        if (v5 < v4)
        {
          v16 = a1->i64[1];
          a1->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v16;
          if (a1->u16[4] < a1->u16[0])
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = a1->i64[0];
      if (v5 >= v4)
      {
        a1->i64[0] = a1->i64[1];
        a1->i64[1] = v3;
        if (a2[-1].u16[4] >= v3)
        {
          return 1;
        }

        a1->i64[1] = a2[-1].i64[1];
        goto LABEL_13;
      }

LABEL_12:
      a1->i64[0] = a2[-1].i64[1];
LABEL_13:
      a2[-1].i64[1] = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::construct(geo::ibitstream &,gss::DecodingContext const&,geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>> const&,geo::intern_vector<gss::MatchingGraphEndChain,unsigned short,geo::allocator_adapter<gss::MatchingGraphEndChain,gss::zone_mallocator>> &,geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,unsigned int,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>> &,std::ostringstream &,geo::intern_allocator<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>> &)::{lambda(gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode const&,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode const&)#1} &,gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode*,0>(a1, &a1->u16[4], a1[1].i64, &a1[1].i64[1], &a2[-1].i64[1]);
        return 1;
      }

      goto LABEL_14;
    }

    v11 = a1->u16[4];
    v12 = a1->u16[0];
    LODWORD(v13) = a1[1].u16[0];
    if (v11 >= v12)
    {
      if (v13 < v11)
      {
        v13 = a1->i64[1];
        v20 = a1[1].i64[0];
        a1->i64[1] = v20;
        a1[1].i64[0] = v13;
        LODWORD(v13) = v13;
        if (v12 > v20)
        {
          v21 = a1->i64[0];
          a1->i64[0] = v20;
          a1->i64[1] = v21;
        }
      }

      goto LABEL_48;
    }

    v14 = a1->i64[0];
    v15 = a1->i64[0];
    if (v13 >= v11)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v14;
      if (v13 >= v15)
      {
LABEL_48:
        if (a2[-1].u16[4] < v13)
        {
          v29 = a1[1].i64[0];
          a1[1].i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v29;
          if (a1[1].u16[0] < a1->u16[4])
          {
            v31 = a1->i64[1];
            v30 = a1[1].i64[0];
            a1->i64[1] = v30;
            a1[1].i64[0] = v31;
            if (a1->u16[0] > v30)
            {
              v32 = a1->i64[0];
              a1->i64[0] = v30;
              a1->i64[1] = v32;
            }
          }
        }

        return 1;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v14;
    LODWORD(v13) = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (a2[-1].u16[4] < a1->u16[0])
    {
      v3 = a1->i64[0];
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = a1 + 1;
  v7 = a1[1].u16[0];
  v8 = a1->u16[4];
  v9 = a1->u16[0];
  if (v8 >= v9)
  {
    if (v7 < v8)
    {
      v18 = a1->i64[1];
      v17 = a1[1].i64[0];
      a1->i64[1] = v17;
      a1[1].i64[0] = v18;
      if (v9 > v17)
      {
        v19 = a1->i64[0];
        a1->i64[0] = v17;
        a1->i64[1] = v19;
      }
    }
  }

  else
  {
    v10 = a1->i64[0];
    if (v7 >= v8)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v10;
      if (v7 >= v10)
      {
        goto LABEL_34;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v10;
  }

LABEL_34:
  v22 = &a1[1].u16[4];
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    if (*v22 < v6->u16[0])
    {
      v25 = *v22;
      v26 = v23;
      while (1)
      {
        *(&a1[1].i64[1] + v26) = *(a1[1].i64 + v26);
        if (v26 == -16)
        {
          break;
        }

        v27 = *(&a1->u16[4] + v26);
        v26 -= 8;
        if (v27 <= v25)
        {
          v28 = (&a1[1].i64[1] + v26);
          goto LABEL_42;
        }
      }

      v28 = a1;
LABEL_42:
      *v28 = v25;
      if (++v24 == 8)
      {
        return v22 + 4 == a2;
      }
    }

    v6 = v22;
    v23 += 8;
    v22 += 4;
    if (v22 == a2)
    {
      return 1;
    }
  }
}

void gss::StyleSheet<gss::PropertyID>::didFinishDecodingEverything(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  atomic_store(a2, (a1 + 2787));
  std::function<void ()(BOOL)>::operator()(*(a3 + 24), a2);
  std::mutex::lock((a1 + 2888));
  atomic_store(1u, (a1 + 2786));
  std::promise<void>::set_value((a1 + 2800));
  v7 = *(a1 + 2960);
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    while (v8 != v9)
    {
      std::function<void ()(BOOL)>::operator()(*(v8 + 24), a2);
      v8 += 32;
    }

    std::unique_ptr<std::vector<std::function<void ()(BOOL)>,geo::allocator_adapter<std::function<void ()(BOOL)>,gss::zone_mallocator>>>::reset[abi:nn200100]((a1 + 2960), 0);
  }

  std::stringbuf::str[abi:nn200100](&v12, a4 + 8);
  v10 = (a1 + 2976);
  if (*(a1 + 2999) < 0)
  {
    operator delete(*v10);
  }

  *v10 = v12;
  *(a1 + 2992) = v13;
  std::mutex::unlock((a1 + 2888));
  v11 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

void std::__function::__func<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::operator()(uint64_t a1, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*a2 & 1) == 0)
  {
    if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
    }

    v3 = GEOGetVectorKitResourceLoadingLog_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v4 = *v4;
      }

      v5 = [*(a1 + 56) UTF8String];
      v6 = 136315394;
      v7 = v4;
      v8 = 2080;
      v9 = v5;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_ERROR, "Failed to decode stylesheet %s %s", &v6, 0x16u);
    }
  }
}

void std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::operator()(uint64_t *a1, char *a2)
{
  v2 = *a2;
  v3 = a1[6];
  v4 = a1[5];
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::operator()(a1[4], &v4, v2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

void sub_1B291A804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::operator()(uint64_t a1, void *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(a1 + 16);
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
        }

        v9[0] = &unk_1F2A29BB8;
        v9[1] = v7;
        v9[2] = v8;
        v9[3] = v9;
        md::CallbackHolder<md::StyleLogic>::call(v7, v9);
        std::__function::__value_func<void ()(md::StyleLogic *)>::~__value_func[abi:nn200100](v9);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B291A8F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::StyleLogic *)>::~__value_func[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = **(*a2 + 1224);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZZZN2md10StyleLogic22setupDecodingCallbacksERKNSt3__110shared_ptrIN3gss17StylesheetManagerINS3_10PropertyIDEEEEEENK3__0clES7_bENKUlPS0_E_clESB__block_invoke;
  v6[3] = &__block_descriptor_48_ea8_32c63_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_10StyleLogicEEEEE_e5_v8__0l;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6[4] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v3, v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void VKCameraCalculateEnclosingRegion(void *a1, void *a2, double *a3, float a4, float a5, float a6, float a7)
{
  v13 = a1;
  v57 = v13;
  v14 = [v13 footprint];
  v15 = [v14 cornerGroundPoints];

  v16 = [v13 footprint];
  v17 = [v16 cornerGroundPointsCount];

  v18 = [v13 scaledViewProjectionMatrix];
  if (v13)
  {
    [v13 cameraState];
  }

  else
  {
    memset(&v60[56], 0, 80);
  }

  memset(&v60[32], 0, 24);
  std::vector<gm::Matrix<double,3,1>>::reserve(&v60[32], v17);
  v55 = a3;
  v56 = a2;
  if (v17 < 1)
  {
    v26 = 1.79769313e308;
    v29 = -1.79769313e308;
    v25 = -1.79769313e308;
    v59 = 1.79769313e308;
  }

  else
  {
    v19 = 0;
    v20 = a5 + -1.0;
    v21 = a6 + -1.0;
    v22 = a4;
    v23 = 1.0;
    v24 = v17;
    v25 = -1.79769313e308;
    v26 = 1.79769313e308;
    v27 = 1.0 - v22;
    v28 = 0.5;
    v58 = 1.0 - a7;
    v59 = 1.79769313e308;
    v29 = -1.79769313e308;
    do
    {
      v61.x = v28 + fmin(fmax(gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v18, v15 + 24 * v19), v20), v58) * v28;
      v61.y = v28 + fmin(fmin(fmax(v30, v21), v27), v23) * v28;
      VKCameraMakeGroundPoint(v60, v61, v58, &v60[56]);
      if (v60[24] == 1)
      {
        v31 = *v60;
        v32 = *&v60[40];
        if (*&v60[40] >= *&v60[48])
        {
          v34 = *&v60[32];
          v35 = *&v60[40] - *&v60[32];
          v36 = 0xAAAAAAAAAAAAAAABLL * ((*&v60[40] - *&v60[32]) >> 3);
          v37 = v36 + 1;
          if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (0x5555555555555556 * ((*&v60[48] - *&v60[32]) >> 3) > v37)
          {
            v37 = 0x5555555555555556 * ((*&v60[48] - *&v60[32]) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*&v60[48] - *&v60[32]) >> 3) >= 0x555555555555555)
          {
            v38 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v38 = v37;
          }

          if (v38)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v38);
          }

          v39 = 8 * ((*&v60[40] - *&v60[32]) >> 3);
          *v39 = *v60;
          *(v39 + 16) = *&v60[16];
          v40 = 24 * v36 - v35;
          if (v34 != v32)
          {
            v41 = v39 - v35;
            do
            {
              v42 = *v34;
              *(v41 + 16) = v34[2];
              *v41 = v42;
              v41 += 24;
              v34 += 3;
            }

            while (v34 != v32);
            v34 = *&v60[32];
          }

          v33 = v39 + 24;
          *&v60[32] = v40;
          *&v60[40] = v39 + 24;
          *&v60[48] = 0;
          if (v34)
          {
            operator delete(v34);
          }
        }

        else
        {
          **&v60[40] = *v60;
          v32[2] = *&v60[16];
          v33 = (v32 + 3);
        }

        v59 = fmin(v59, *&v31);
        v25 = fmax(v25, *&v31);
        v26 = fmin(v26, *(&v31 + 1));
        *&v60[40] = v33;
        v29 = fmax(v29, *(&v31 + 1));
        v23 = 1.0;
        v28 = 0.5;
      }

      ++v19;
    }

    while (v19 != v24);
  }

  v43 = *(MEMORY[0x1E69A1690] + 8);
  v44 = *MEMORY[0x1E69A1690] * v59;
  v45 = v43 - v29 * v43;
  v46 = *MEMORY[0x1E69A1690] * (v25 - v59);
  v47 = v43 * (v29 - v26);
  if (v55)
  {
    *v55 = v44;
    v55[1] = v45;
    v55[2] = v46;
    v55[3] = v47;
  }

  if (!a2)
  {
    v50 = *&v60[32];
    if (!*&v60[32])
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v48 = [objc_alloc(MEMORY[0x1E69A2200]) initWithMapRect:{v44, v45, v46, v47}];
  v50 = *&v60[32];
  v49 = *&v60[40];
  if (*&v60[32] != *&v60[40])
  {
    v51 = *&v60[32];
    do
    {
      v52 = objc_alloc(MEMORY[0x1E69A1E50]);
      GEOCoordinate2DForMapPoint();
      v53 = [v52 initWithCoordinate:?];
      [v48 addVertex:v53];

      v51 += 24;
    }

    while (v51 != v49);
  }

  v54 = v48;
  *v56 = v48;

  if (v50)
  {
LABEL_34:
    operator delete(v50);
  }

LABEL_35:
}

void *std::vector<gm::Matrix<double,3,1>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

double gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(double *a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1;
  do
  {
    v4 = 0;
    v5 = 0.0;
    v6 = v3;
    do
    {
      v7 = *v6;
      v6 += 4;
      v5 = v5 + *(a2 + v4) * v7;
      v4 += 8;
    }

    while (v4 != 24);
    v14.f64[v2] = a1[v2 + 12] + v5;
    ++v2;
    ++v3;
  }

  while (v2 != 4);
  __asm { FMOV            V1.2D, #1.0 }

  *&result = *&vmulq_f64(v14, vdivq_f64(_Q1, vdupq_lane_s64(v15, 0)));
  return result;
}

void checkIfDeferred(void *a1, uint64_t a2)
{
  v3 = a1;
  v18 = v3;
  if (*(v3 + 17) == 1)
  {
    v4 = v3;
    v5 = v3[85];
    v6 = v3[84];
    v7 = v5 - v6;
    if (v5 == v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = 16 * (v5 - v6) - 1;
    }

    v9 = v3[87];
    if (v8 == v3[88] + v9)
    {
      v10 = v9 >= 0x80;
      v11 = v9 - 128;
      if (!v10)
      {
        v13 = v3[86];
        v14 = v3[83];
        if (v7 < v13 - v14)
        {
          if (v13 != v5)
          {
            operator new();
          }

          operator new();
        }

        if (v13 == v14)
        {
          v15 = 1;
        }

        else
        {
          v15 = (v13 - v14) >> 2;
        }

        v20 = v4 + 83;
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v15);
      }

      v3[87] = v11;
      *&v19 = *v6;
      v3[84] = v6 + 8;
      std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(v3 + 83, &v19);
      v6 = v18[84];
      v5 = v18[85];
    }

    if (v5 == v6)
    {
      v17 = 0;
    }

    else
    {
      v16 = v18[88] + v18[87];
      v17 = *&v6[(v16 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v16 & 0x7F);
    }

    std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::__value_func[abi:nn200100](v17, a2);
    v12 = v18;
    ++v18[88];
  }

  else
  {
    std::function<void ()(VKCameraDelegateMediator *)>::operator()(a2, v3);
    v12 = v18;
  }
}

void sub_1B291B8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VKCameraPropertiesForRect(double *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  if (v8 == 0.0 || v7 == 0.0)
  {
    GEOCoordinate2DForMapPoint();
    GEOMapPointsPerMeterAtLatitude();
    GEOMapRectInset();
    v5 = v9;
    v6 = v10;
    v8 = v11;
    v7 = v12;
  }

  v14 = *(MEMORY[0x1E69A1688] + 16);
  v13 = *(MEMORY[0x1E69A1688] + 24);
  v15 = [[VKCamera alloc] initWithRunLoopController:0];
  v16 = a3;
  if (v8 == 0.0 || v7 == 0.0)
  {
    v16 = 1.0;
  }

  v30 = v15;
  [(VKCamera *)v15 setAspectRatio:v16];
  v17 = (v7 + v6) / v13;
  v18 = ((v8 + v5) / v14 - v5 / v14) * 0.5;
  v19 = (v17 - v6 / v13) * 0.5;
  v31 = v18 + v5 / v14;
  v32 = 1.0 - v17 + v19;
  [(VKCamera *)v30 tanHalfVerticalFOV];
  v21 = v20;
  [(VKCamera *)v30 tanHalfHorizFOV];
  v23 = v22;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v24 = exp(v32 * 6.28318531 + -3.14159265);
  v29 = atan(v24);
  v25 = fmod(v31 * 6.28318531, 6.28318531);
  v26 = fmod(v25 + 6.28318531, 6.28318531);
  v27.f64[0] = v29;
  v27.f64[1] = v26;
  v28 = vmlaq_f64(xmmword_1B33B0660, xmmword_1B33B0650, v27);
  *a2 = v28;
  *(a2 + 32) = fmax(v19 / v21, v18 / v23) / geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v28.f64[0]);
}

void std::function<void ()(VKCameraDelegateMediator *)>::operator()(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v4);
  }

  (*(*v3 + 48))(v3, &v5);
}

double VKPointMapToWorldZero(double *a1)
{
  v1 = *a1;
  if (*a1 <= 1.0)
  {
    if (v1 >= 0.0)
    {
      goto LABEL_6;
    }

    v2 = ceil(v1);
    v1 = v1 + 1.0;
  }

  else
  {
    v2 = floor(v1);
  }

  *a1 = v1 - v2;
LABEL_6:
  result = a1[1];
  if (result <= 1.0)
  {
    if (result >= 0.0)
    {
      return result;
    }

    v4 = ceil(result);
    result = result + 1.0;
  }

  else
  {
    v4 = floor(result);
  }

  result = result - v4;
  a1[1] = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](uint64_t a1)
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

long double geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(double a1)
{
  v2 = cos(a1 * 0.034906585) * -559.82 + 111132.92;
  v3 = v2 + cos(a1 * 0.0698131701) * 1.175;
  v4 = v3 + cos(a1 * 0.104719755) * -0.0023;
  v5 = a1 * 0.00872664626;
  v6 = tan(a1 * 0.00872664626 + 0.78103484);
  v7 = log(v6);
  v8 = tan(v5 + 0.789761487);
  return fabs((log(v8) - v7) * 0.159154943) / v4;
}

double gm::Quaternion<double>::operator*(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a2 + 24);
  do
  {
    *(&v26 + v3) = *(a3 + v3) * v4;
    v3 += 8;
  }

  while (v3 != 24);
  v5 = 0;
  v22 = v26;
  v23 = v27;
  v6 = *(a3 + 24);
  do
  {
    *(&v26 + v5) = *(a2 + v5) * v6;
    v5 += 8;
  }

  while (v5 != 24);
  v7 = 0;
  v20 = v26;
  v21 = v27;
  do
  {
    *(&v26 + v7) = *(&v20 + v7) + *(&v22 + v7);
    v7 += 8;
  }

  while (v7 != 24);
  v8 = 0;
  v24 = v26;
  v25 = v27;
  v9 = *(a2 + 8);
  v10 = *(a3 + 8);
  *&v11.f64[0] = vdupq_laneq_s64(v10, 1).u64[0];
  v11.f64[1] = *a3;
  *&v12.f64[0] = vdupq_laneq_s64(v9, 1).u64[0];
  v12.f64[1] = *a2;
  v13 = -(*a3 * v9.f64[0] - *a2 * v10.f64[0]);
  v18 = vmlaq_f64(vnegq_f64(vmulq_f64(v12, v10)), v9, v11);
  v19 = v13;
  do
  {
    *(&v26 + v8 * 8) = v18.f64[v8] + *(&v24 + v8 * 8);
    ++v8;
  }

  while (v8 != 3);
  v14 = 0;
  v15 = v27;
  v16 = 0.0;
  do
  {
    v16 = v16 + *(a3 + v14) * *(a2 + v14);
    v14 += 8;
  }

  while (v14 != 24);
  result = -(v16 - v6 * v4);
  *a1 = v26;
  *(a1 + 16) = v15;
  *(a1 + 24) = result;
  return result;
}

double gm::rotateAboutPoint<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 24; i += 8)
  {
    *(&v13 + i) = *(a1 + i) - *(a3 + i);
  }

  v11 = v13;
  v12 = v14;
  v5 = gm::Quaternion<double>::operator*(a2, &v11);
  v6 = 0;
  *v10 = v5;
  v10[1] = v7;
  v10[2] = v8;
  do
  {
    *(&v13 + v6 * 8) = *(a3 + v6 * 8) + *&v10[v6];
    ++v6;
  }

  while (v6 != 3);
  return *&v13;
}

void ggl::DisplayLink::setDisplay(id *this, CADisplay *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = [MEMORY[0x1E6979328] mainDisplay];
  }

  v4 = v3;
  if (v3 != this[11])
  {
    v9 = v3;
    objc_storeStrong(this + 11, v3);
    [this[9] invalidate];
    v5 = [MEMORY[0x1E6979330] displayLinkWithDisplay:this[11] target:this[10] selector:sel_displayLinkFired_];
    v6 = this[9];
    this[9] = v5;

    v7 = this[9];
    v8 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v7 addToRunLoop:v8 forMode:*MEMORY[0x1E695DA28]];

    v4 = v9;
  }
}

void __destroy_helper_block_ea8_40c40_ZTSNSt3__110shared_ptrINS_6atomicIbEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZZZZN2md10StyleLogic22setupDecodingCallbacksERKNS_10shared_ptrIN3gss17StylesheetManagerINS5_10PropertyIDEEEEEENK3__0clES9_bENKUlPS3_E_clESD_EUb_EUlSD_E_NS_9allocatorISF_EEFvSD_EEclEOSD_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = 4;
  geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((v2 + 1128), &v4);
  v3 = **(v2 + 1240);
  if (v3)
  {
    v5 = 12;
    md::MapEngine::setNeedsTick(v3, &v5);
  }
}

uint64_t std::default_delete<gss::StylesheetManager<gss::PropertyID>>::operator()[abi:nn200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 528);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    geo::read_write_lock::~read_write_lock((v1 + 320));
    geo::read_write_lock::~read_write_lock((v1 + 120));
    v5.__vftable = (v1 + 88);
    std::vector<std::weak_ptr<gss::FeatureQueryImpl<gss::PropertyID>>,geo::allocator_adapter<std::weak_ptr<gss::FeatureQueryImpl<gss::PropertyID>>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
    std::__hash_table<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::__unordered_map_hasher<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<gss::StyleKey>,std::equal_to<gss::StyleKey>,true>,std::__unordered_map_equal<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<gss::StyleKey>,std::hash<gss::StyleKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,gss::zone_mallocator>>::__deallocate_node(*(v1 + 56));
    std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *,gss::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v1 + 32));
    v3 = *(v1 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B291C3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](&a26);
  gdc::ReferenceCountedAccess<unsigned long>::~ReferenceCountedAccess(&a12);
  gdc::ReferenceCountedAccess<unsigned long>::~ReferenceCountedAccess((v26 - 120));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___ZZZN2md10StyleLogic22setupDecodingCallbacksERKNSt3__110shared_ptrIN3gss17StylesheetManagerINS3_10PropertyIDEEEEEENK3__1clES7_bENKUlPS0_E_clESB__block_invoke(uint64_t a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6[0] = &unk_1F2A29D08;
        v6[3] = v6;
        md::CallbackHolder<md::StyleLogic>::call(v5, v6);
        std::__function::__value_func<void ()(md::StyleLogic *)>::~__value_func[abi:nn200100](v6);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void sub_1B291C574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::StyleLogic *)>::~__value_func[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZZZZN2md10StyleLogic22setupDecodingCallbacksERKNS_10shared_ptrIN3gss17StylesheetManagerINS5_10PropertyIDEEEEEENK3__1clES9_bENKUlPS3_E_clESD_EUb_EUlSD_E_NS_9allocatorISF_EEFvSD_EEclEOSD_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = 5;
  geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((v2 + 1128), &v4);
  v3 = **(v2 + 1240);
  if (v3)
  {
    v5 = 8;
    md::MapEngine::setNeedsTick(v3, &v5);
  }
}

void ___ZZZN2md10StyleLogic22setupDecodingCallbacksERKNSt3__110shared_ptrIN3gss17StylesheetManagerINS3_10PropertyIDEEEEEENK3__0clES7_bENKUlPS0_E_clESB__block_invoke(uint64_t a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6[0] = &unk_1F2A29C30;
        v6[3] = v6;
        md::CallbackHolder<md::StyleLogic>::call(v5, v6);
        std::__function::__value_func<void ()(md::StyleLogic *)>::~__value_func[abi:nn200100](v6);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void sub_1B291C6B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::StyleLogic *)>::~__value_func[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  _Unwind_Resume(a1);
}

void *gdc::ReferenceCountedAccess<unsigned long>::reference(void *result)
{
  if (*result)
  {
    v1 = result[1];
    if (v1)
    {
      if (*(v1 + 8) == 1)
      {
        result = result[5];
        if (result)
        {
          return (*(*result + 48))();
        }
      }
    }
  }

  return result;
}

void ___ZN2md9MapEngine12setNeedsTickERKNS_15NeedsLayoutInfoE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *v5)
      {
        md::MapEngine::updateRunLoopStatus(*v5);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

id md::StandardRouteOverlayCache::polylineForRoute(md::StandardRouteOverlayCache *this, GEOComposedRoute *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 6);
  v5 = this + 56;
  if (v4 == this + 56)
  {
LABEL_19:
    v19 = 0;
    goto LABEL_22;
  }

  while (1)
  {
    v6 = *(v4 + 4);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = [v6 polylines];
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = *v22;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v21 + 1) + 8 * i);
            v12 = [v11 composedRoute];
            v13 = v12 == v3;

            if (v13)
            {
              v19 = v11;

              goto LABEL_21;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_13;
    }

    v14 = [v6 composedRoute];
    v15 = v14 == v3;

    if (v15)
    {
      break;
    }

LABEL_13:

    v16 = *(v4 + 1);
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = *(v4 + 2);
        v18 = *v17 == v4;
        v4 = v17;
      }

      while (!v18);
    }

    v4 = v17;
    if (v17 == v5)
    {
      goto LABEL_19;
    }
  }

  v6 = v6;
  v19 = v6;
LABEL_21:

LABEL_22:

  return v19;
}

void __destroy_helper_block_ea8_40c70_ZTSNSt3__110shared_ptrIN3gss17StylesheetManagerINS1_10PropertyIDEEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void *gdc::ReferenceCountedAccess<unsigned long>::ReferenceCountedAccess(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[5] = 0;
  a1[9] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v6 = a1[1];
    *a1 = v4;
    a1[1] = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  else
  {
    *a1 = v4;
    a1[1] = 0;
  }

  std::function<void ()(unsigned long &)>::operator=((a1 + 2), (a2 + 2));
  std::function<void ()(unsigned long &)>::operator=((a1 + 6), (a2 + 6));
  gdc::ReferenceCountedAccess<unsigned long>::reference(a1);
  return a1;
}

void sub_1B291CAA8(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(unsigned long &)>::~__value_func[abi:nn200100](v1 + 48);
  std::__function::__value_func<void ()(unsigned long &)>::~__value_func[abi:nn200100](v1 + 16);
  if (*v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t md::AnimationManager::wantsTimerTick(md::AnimationManager *this)
{
  v1 = atomic_load(this + 184);
  if (v1)
  {
    return 1;
  }

  std::mutex::lock((this + 40));
  v3 = 104;
  while (1)
  {
    v4 = *(this + v3 + 16);
    if (v4)
    {
      break;
    }

LABEL_7:
    v3 += 40;
    if (v3 == 184)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  while (1)
  {
    v5 = v4[3];
    v6 = [v5 running];

    if (v6)
    {
      v7 = v4[3];
      v8 = [v7 hasFrequency];

      if ((v8 & 1) == 0)
      {
        break;
      }
    }

    v4 = *v4;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  v9 = 1;
LABEL_10:
  std::mutex::unlock((this + 40));
  return v9;
}

gss::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *,gss::zone_mallocator>>>::~unique_ptr[abi:nn200100](gss::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = gss::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::__unordered_map_hasher<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<gss::StyleKey>,std::equal_to<gss::StyleKey>,true>,std::__unordered_map_equal<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<gss::StyleKey>,std::hash<gss::StyleKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,gss::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = v1[10];
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }

      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v1 + 6));
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v1 + 2));
      v5 = gss::zone_mallocator::instance(v4);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *>>(v5, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::vector<std::weak_ptr<gss::FeatureQueryImpl<gss::PropertyID>>,geo::allocator_adapter<std::weak_ptr<gss::FeatureQueryImpl<gss::PropertyID>>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
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
          std::__shared_weak_count::__release_weak(a1);
        }

        v3 = (v3 - 16);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = gss::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::weak_ptr<gss::FeatureQueryImpl<gss::PropertyID>>>(v6, v4);
  }
}

void __destroy_helper_block_ea8_32c47_ZTSNSt3__18weak_ptrIN2md17RunLoopControllerEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void __destroy_helper_block_ea8_32c63_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_10StyleLogicEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = atomic_load((a2 + 2784));
    if ((v4 & 1) == 0)
    {
      std::__assoc_sub_state::wait(*(a2 + 2808));
    }

    v5 = *(a2 + 128);
    *a1 = *(a2 + 120);
    a1[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void *md::MapDataAccess::heightAtCoordinate(unsigned __int8 *a1, uint64_t a2)
{
  if (a1[8] - 3 >= 3)
  {
    return 0;
  }

  result = std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<md::LogicBase>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<md::LogicBase>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<md::LogicBase>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<md::LogicBase>>>>::find<gdc::TypeInfo>((*(*a1 + 41928) + 16), 0x17767EADC5B287BuLL);
  if (result)
  {
    v4 = result[5];
    if (v4 && *(v4 + 56) == 1 && md::ElevationLogic::isGroundElevated(result[5]))
    {
      return md::ElevationLogic::elevationSampleAtCoordinate(v4, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<md::LogicBase>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<md::LogicBase>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<md::LogicBase>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<md::LogicBase>>>>::find<gdc::TypeInfo>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
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
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
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
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void anonymous namespace::_textureDataWithData(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, _BYTE *a6)
{
  v9 = a2;
  v18 = v9;
  if (!v9)
  {
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_16;
  }

  v10 = CGImageSourceCreateWithData(v9, 0);
  v11 = v10;
  if (v10)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
    v13 = ImageAtIndex;
    if (a6)
    {
      AlphaInfo = CGImageGetAlphaInfo(ImageAtIndex);
      *a6 = (AlphaInfo > kCGImageAlphaNoneSkipFirst) | (0x1Eu >> AlphaInfo) & 1;
    }

    if (a5)
    {
      ColorSpace = CGImageGetColorSpace(v13);
      v16 = ColorSpace;
      if (ColorSpace)
      {
        CFRetain(ColorSpace);
        v17 = 0;
LABEL_11:
        CFRelease(v11);
        if (v13)
        {
          CGImageGetWidth(v13);
          CGImageGetHeight(v13);
          operator new();
        }

        if ((v17 & 1) == 0)
        {
          CFRelease(v16);
        }

        goto LABEL_15;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = 1;
    goto LABEL_11;
  }

LABEL_15:
  *a1 = 0;
  a1[1] = 0;
LABEL_16:
}

void sub_1B291DA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void md::TextureManager::_cubeTexture(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v32 = a5;
  v33 = BYTE4(a5);
  v9 = pthread_rwlock_rdlock((a2 + 264));
  if (v9)
  {
    geo::read_write_lock::logFailure(v9, "read lock", v10);
  }

  v11 = std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>>>::find<md::TextureManager::TextureKey>((a2 + 504), &__p);
  v12 = v11;
  if (v11)
  {
    v13 = v11[7];
    *a1 = v11[6];
    a1[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }
  }

  v14 = pthread_rwlock_unlock((a2 + 264));
  if (v14)
  {
    geo::read_write_lock::logFailure(v14, "unlock", v15);
  }

  if (!v12)
  {
    v16 = 0;
    memset(v30, 0, sizeof(v30));
    for (i = 0x100000000; ; ++i)
    {
      v18 = md::TextureManager::_loadData(a2, a3, a5, i);
      textureDataWithData(&v34, v18);
      v19 = v34;
      v20 = *(&v30[v16] + 1);
      v30[v16] = v34;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v20);
        v21 = *&v30[v16];
      }

      else
      {
        v21 = v19;
      }

      v22 = v21 == 0;

      if (v22)
      {
        break;
      }

      if (++v16 == 6)
      {
        std::allocate_shared[abi:nn200100]<ggl::TextureCube,std::allocator<ggl::TextureCube>,std::array<std::shared_ptr<ggl::TextureData2DAbstract const>,6ul> &,std::shared_ptr<ggl::SamplerState> &,0>();
      }
    }

    v28 = 0;
    v29 = 0;
    geo::write_lock_guard::write_lock_guard(&v27, (a2 + 264));
    v23 = std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>>>::find<md::TextureManager::TextureKey>((a2 + 504), &__p);
    if (v23)
    {
      v24 = v23[7];
      *a1 = v23[6];
      a1[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      geo::write_lock_guard::~write_lock_guard(&v27);
    }

    else
    {
      if (v28)
      {
        std::allocate_shared[abi:nn200100]<md::SharedTextureCube,std::allocator<md::SharedTextureCube>,std::shared_ptr<ggl::TextureCube> &,md::SharedResourcesManager *&,0>();
      }

      geo::write_lock_guard::~write_lock_guard(&v27);
      *a1 = 0;
      a1[1] = 0;
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    for (j = 88; j != -8; j -= 16)
    {
      v26 = *(v30 + j);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v26);
      }
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B291DDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, pthread_rwlock_t *a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  geo::write_lock_guard::~write_lock_guard(&a12);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  v34 = 88;
  while (1)
  {
    v35 = *(&a15 + v34);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v35);
    }

    v34 -= 16;
    if (v34 == -8)
    {
      if (a32 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }
}

id md::TextureManager::_loadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  v9 = [v8 pathExtension];
  if (![(__CFString *)v9 length])
  {

    v9 = @"png";
  }

  v10 = [v8 stringByDeletingPathExtension];

  if ((a4 & 0x100000000) != 0)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", v10, a4];

    v11 = v12;
    if ((a3 & 0x100000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = v10;
  if ((a3 & 0x100000000) != 0)
  {
LABEL_10:
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@%ux", v11, a3];

    v11 = v13;
  }

LABEL_11:
  v14 = [v11 stringByAppendingPathExtension:v9];

  v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v14];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [*(a1 + 552) dataForResourceWithName:v14];
  }

  v18 = v17;

  return v18;
}

geo::write_lock_guard *geo::write_lock_guard::write_lock_guard(geo::write_lock_guard *this, pthread_rwlock_t *a2)
{
  *this = a2;
  v3 = pthread_rwlock_wrlock(a2);
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "write lock", v4);
  }

  return this;
}

void *std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>>>::find<md::TextureManager::TextureKey>(void *a1, md::TextureManager::TextureKey *this)
{
  v4 = md::TextureManager::TextureKey::hash(this);
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
      v13 = v11[1];
      if (v13 == v6)
      {
        if (std::equal_to<md::TextureManager::TextureKey>::operator()[abi:nn200100](v11 + 2, this))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v13 >= *&v5)
          {
            v13 %= *&v5;
          }
        }

        else
        {
          v13 &= *&v5 - 1;
        }

        if (v13 != v9)
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

void std::__optional_destruct_base<md::LocationUpdate,false>::reset[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {

    *(a1 + 24) = 0;
  }
}

unint64_t md::TextureManager::TextureKey::hash(md::TextureManager::TextureKey *this)
{
  v1 = this;
  v2 = *(this + 1);
  if (*(this + 23) >= 0)
  {
    v3 = *(this + 23);
  }

  else
  {
    this = *this;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](this, v3);
  if (*(v1 + 28))
  {
    v5 = *(v1 + 6) - 0x61C8864680B583EBLL;
  }

  else
  {
    v5 = 0x9E3779B97F4A7C15;
  }

  return ((v4 >> 2) + (v4 << 6) + v5) ^ v4;
}

void *std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>>>::__emplace_unique_key_args<md::TextureManager::TextureKey,std::piecewise_construct_t const&,std::tuple<md::TextureManager::TextureKey const&>,std::tuple<>>(void *a1, md::TextureManager::TextureKey *this)
{
  v4 = md::TextureManager::TextureKey::hash(this);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<md::TextureManager::TextureKey>::operator()[abi:nn200100](v11 + 2, this))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B291E880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t md::MapEngine::isAvailableHiking(md::MapEngine *this)
{
  {
    md::MapEngine::isAvailableHiking(void)::$_0::operator() const(void)::cached_result = MapsFeature_IsEnabled_HikingiOS();
  }

  return md::MapEngine::isAvailableHiking(void)::$_0::operator() const(void)::cached_result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::PropertyID>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<md::TextureManager::_cubeTexture(std::string const&,std::shared_ptr<ggl::SamplerState>,BOOL,std::optional<unsigned int>)::$_0,std::allocator<md::TextureManager::_cubeTexture(std::string const&,std::shared_ptr<ggl::SamplerState>,BOOL,std::optional<unsigned int>)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1)
{
  v1[4] = *MEMORY[0x1E69E9840];
  memset(v1, 0, 24);
  ggl::TextureCube::vendImplicitLoadItems(**(a1 + 8), v1);
}

void sub_1B291EA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<ggl::Texture2DLoadItem,geo::allocator_adapter<ggl::Texture2DLoadItem,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(double)>::operator()(uint64_t a1, double a2)
{
  v5 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v5);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return md::MapEngine::onDisplayLinkFired(v3, v4);
}

uint64_t md::MapEngine::onDisplayLinkFired(md::MapEngine *this, double a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (md::MapEngine::canRenderAsync(this))
  {
    v3 = *(this + 5919);
    v9 = 0;
    result = (*(*v3 + 16))(v3, v8);
    if (v9 != -1)
    {
      return (off_1F2A21620[v9])(&v6, v8);
    }
  }

  else
  {
    v5 = CACurrentMediaTime();
    v7[0] = &unk_1F2A21840;
    v7[3] = v7;
    md::MapEngine::onRenderTimerFired(this, v7, v5);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7);
  }

  return result;
}

void sub_1B291EB88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void ggl::TextureCube::vendImplicitLoadItems(ggl::zone_mallocator *a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  if (v2 < v3)
  {
    std::construct_at[abi:nn200100]<ggl::Texture2DLoadItem,ggl::TextureData2DAbstract const*,ggl::TextureCube *,ggl::CubeFace,gm::Box<unsigned int,2>,std::__bind<void (ggl::TextureCube::*)(ggl::Texture2DLoadItem const&),ggl::TextureCube *,std::placeholders::__ph<1> const&>,ggl::Texture2DLoadItem*>();
  }

  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 4) + 1;
  if (v4 <= 0x333333333333333)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a2) >> 4);
    if (2 * v5 > v4)
    {
      v4 = 2 * v5;
    }

    if (v5 >= 0x199999999999999)
    {
      v6 = 0x333333333333333;
    }

    else
    {
      v6 = v4;
    }

    if (v6)
    {
      v7 = ggl::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Texture2DLoadItem>(v7, v6);
    }

    std::construct_at[abi:nn200100]<ggl::Texture2DLoadItem,ggl::TextureData2DAbstract const*,ggl::TextureCube *,ggl::CubeFace,gm::Box<unsigned int,2>,std::__bind<void (ggl::TextureCube::*)(ggl::Texture2DLoadItem const&),ggl::TextureCube *,std::placeholders::__ph<1> const&>,ggl::Texture2DLoadItem*>();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t md::MapEngine::canRenderAsync(md::MapEngine *this)
{
  v2 = this + 41704;
  v3 = *(this + 5242);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    goto LABEL_5;
  }

  v6 = *v3;
  while (*v6 != 20)
  {
    v6 += 16;
    if (v6 == v5)
    {
      goto LABEL_5;
    }
  }

  if (v6 == v5)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = *(v6 + 8);
LABEL_6:
  while (v4 != v5)
  {
    if (*v4 == 22)
    {
      if (v4 != v5)
      {
        v8 = *(v4 + 8) != 0;
        goto LABEL_12;
      }

      break;
    }

    v4 += 16;
  }

  v8 = 0;
LABEL_12:
  if (v7 - 1 <= 3 && (v7 - 3 < 2 || v8))
  {
    *(*v2 + 385) = 1;
    v9 = 2;
  }

  else
  {
    *(*v2 + 385) = 0;
    if (v8)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    if (v7 == 10)
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }

    if (((1 << v7) & 0x1E7) == 0)
    {
      v10 = v11;
    }

    if (v7 <= 0xA)
    {
      v9 = v10;
    }

    else
    {
      v9 = 3;
    }
  }

  v12 = *(this + 5252);
  if (v12 && v9 == v12[8] && (*(*v12 + 16))(v12))
  {
    v13 = *(this + 47264);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t md::MapEngine::onRenderTimerFired(uint64_t a1, uint64_t a2, double a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a1 + 41640;
  v7 = *(a1 + 170);
  if (v7 == (*(**(a1 + 160) + 24))(*(a1 + 160)))
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(**(a1 + 160) + 24))(*(a1 + 160));
  }

  *(a1 + 168) = v8;
  v9 = (*(**(a1 + 160) + 24))(*(a1 + 160));
  *(a1 + 170) = v9;
  if (*v6)
  {
    v10 = atomic_load((*(ggl::Performance::Counters::instance(v9) + 32) + 64));
    v11 = *(v6 + 528);
    if (v10 <= v11)
    {
      *(*(v6 + 64) + 392) = 0x3FF0000000000000;
      *(v6 + 560) = 0;
    }

    else
    {
      v12 = exp2f((fminf(fmaxf((v10 - v11) / *(v6 + 536), 0.0), 1.0) * 10.0) + -10.0);
      if (v12 == 1.0)
      {
        v13 = 0.05;
      }

      else
      {
        v27 = (v12 * -0.95) + 1.0;
        v28 = fmaxf(v27, 0.05);
        v29 = fminf(v27, 0.05);
        if (v12 > 1.0)
        {
          v13 = v29;
        }

        else
        {
          v13 = v28;
        }
      }

      v14 = *(v6 + 544);
      if (v14 > 0.0500000007)
      {
        v13 = v14;
      }

      v15 = v13;
      *(*(v6 + 64) + 392) = v13;
      if (vabdd_f64(*(v6 + 560), v13) > 0.200000003 || *(v6 + 552) == 1)
      {
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v16 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = gdc::ServiceLocator::resolve<md::MapEngineLogger>(**(a1 + 47336), *(*(a1 + 47336) + 8));
          v18 = (*(*v17 + 16))(v17);
          v19 = *(v6 + 528);
          *buf = 136315906;
          v44 = v18;
          v45 = 2048;
          v46 = v19;
          v47 = 2048;
          v48 = *&v10;
          v49 = 2048;
          v50 = *&v15;
          _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_INFO, "%s Exceeded Metal Buffer threshold of %llu with a count of %llu resources. Starting scaling cache down with the new cache size factor of %f", buf, 0x2Au);
        }

        *(v6 + 560) = v15;
      }
    }

    if (v10 > *(v6 + 520))
    {
      v30 = a3 - *(v6 + 568);
      v31 = *(v6 + 576);
      if (v30 <= v31)
      {
        v37 = v31 - v30;
        v38 = ((v31 - v30) * 0.1);
        if (*(v6 + 584) != v38)
        {
          if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
          }

          v39 = GEOGetVectorKitVKDefaultLog_log;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = gdc::ServiceLocator::resolve<md::MapEngineLogger>(**(a1 + 47336), *(*(a1 + 47336) + 8));
            v41 = (*(*v40 + 16))(v40);
            v42 = *(v6 + 520);
            *buf = 136316162;
            v44 = v41;
            v45 = 2048;
            v46 = v42;
            v47 = 2048;
            v48 = *&v10;
            v49 = 2048;
            v50 = *&v37;
            v51 = 2048;
            v52 = *&v30;
            _os_log_impl(&dword_1B2754000, v39, OS_LOG_TYPE_INFO, "%s Exceeded Metal Buffer threshold of %llu with a count of %llu resources. Waiting %f seconds to prune resources. (Time since last prune:%f)", buf, 0x34u);
          }

          *(v6 + 584) = v38;
        }
      }

      else
      {
        *(v6 + 576) = fmin(fmax(v31 + v31, 5.0), 900.0);
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v32 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = *(v6 + 520);
          *buf = 134219266;
          v44 = v33;
          v45 = 2048;
          v46 = v10;
          v47 = 2048;
          v48 = v30;
          v49 = 2080;
          v50 = "false";
          v51 = 2080;
          v52 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MDMapEngine.mm";
          v53 = 1024;
          v54 = 2616;
          _os_log_impl(&dword_1B2754000, v32, OS_LOG_TYPE_ERROR, "Exceeded Metal Buffer threshold of %llu with a count of %llu resources, pruning resources now (Time since last prune:%f): Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x3Au);
        }

        v34 = gdc::ServiceLocator::resolve<md::FaultNotificationService>(**(a1 + 47336), *(*(a1 + 47336) + 8));
        (**v34)(v34, 2, "");
        md::MapEngine::clearScene(a1);
        *(v6 + 568) = a3;
        *(v6 + 584) = -1;
      }
    }

    else
    {
      *(v6 + 584) = -1;
      if (*(v6 + 576) != 5.0)
      {
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v20 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = gdc::ServiceLocator::resolve<md::MapEngineLogger>(**(a1 + 47336), *(*(a1 + 47336) + 8));
          v22 = (*(*v21 + 16))(v21);
          *buf = 136315394;
          v44 = v22;
          v45 = 2048;
          v46 = v10;
          _os_log_impl(&dword_1B2754000, v20, OS_LOG_TYPE_INFO, "%s Metal Buffer threshold no longer exceeded with current count of %llu buffer resources", buf, 0x16u);
        }
      }

      *(v6 + 576) = 0x4014000000000000;
    }
  }

  md::MapEngine::updateRunLoopStatus(a1);
  v23 = *(a1 + 160);
  if (!v23 || !(*(*v23 + 24))(v23))
  {
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v24 = GEOGetVectorKitPerformanceLog_log;
    v25 = v24;
    v26 = *(v6 + 440);
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v26, "Frame", &unk_1B3514CAA, buf, 2u);
    }

    std::chrono::steady_clock::now();
    operator new();
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v35 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DisplayLinkSkip", &unk_1B3514CAA, buf, 2u);
  }

  return std::invoke[abi:nn200100]<std::function<void ()(void)> &>(*(a2 + 24));
}

ggl::zone_mallocator *std::__split_buffer<ggl::Texture2DLoadItem,geo::allocator_adapter<ggl::Texture2DLoadItem,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(v1 + 2))
  {
    *(v1 + 2) = i - 80;
    a1 = std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::~__value_func[abi:nn200100](i - 32);
  }

  v4 = *v1;
  if (*v1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture2DLoadItem>(v5, v4);
  }

  return v1;
}

os_log_t __GEOGetVectorKitPerformanceLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit", "Performance");
  GEOGetVectorKitPerformanceLog_log = result;
  return result;
}

uint64_t md::MapEngine::renderScene(md::MapEngine *this, uint64_t a2, uint64_t a3, double a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = this + 41704;
  v9 = *(this + 5242);
  v10 = *v9;
  v11 = v9[1];
  if (*v9 == v11)
  {
    goto LABEL_5;
  }

  v12 = *v9;
  while (*v12 != 20)
  {
    v12 += 16;
    if (v12 == v11)
    {
      goto LABEL_5;
    }
  }

  if (v12 == v11)
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = *(v12 + 8);
LABEL_6:
  while (v10 != v11)
  {
    if (*v10 == 22)
    {
      if (v10 != v11)
      {
        v14 = *(v10 + 8) != 0;
        goto LABEL_12;
      }

      break;
    }

    v10 += 16;
  }

  v14 = 0;
LABEL_12:
  if (v13 - 1 <= 3 && (v13 - 3 < 2 || v14))
  {
    *(*v8 + 385) = 1;
    v15 = 2;
  }

  else
  {
    *(*v8 + 385) = 0;
    if (v14)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    if (v13 == 10)
    {
      v17 = 1;
    }

    else
    {
      v17 = 3;
    }

    if (((1 << v13) & 0x1E7) == 0)
    {
      v16 = v17;
    }

    if (v13 <= 0xA)
    {
      v15 = v16;
    }

    else
    {
      v15 = 3;
    }
  }

  v18 = *(this + 5252);
  if (v18 && v15 == v18[8] && (*(*v18 + 16))(v18) && *(this + 47264) == 1)
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v25, a2);
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v24, a3);
    md::MapEngine::_renderSceneAsync(this, v25, v24, a4);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v24);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v25);
  }

  else
  {
    md::MapEngine::renderSceneSync(this, a4);
    v19 = *(a2 + 24);
    if (v19)
    {
      (*(*v19 + 48))(v19);
    }

    v20 = *(a3 + 24);
    if (!v20)
    {
      v23 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v24);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v25);
      _Unwind_Resume(v23);
    }

    v21 = *(*v20 + 48);

    return v21();
  }
}

void ggl::TextureCube::onImplicitLoadComplete(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 17))
  {
    v3 = *(a2 + 16);
    *(a1 + 193) = 0;
    v4 = a1 + 16 * v3;
    v5 = *(v4 + 104);
    *(v4 + 96) = 0;
    *(v4 + 104) = 0;
    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  else
  {
    v6 = std::__throw_bad_optional_access[abi:nn200100]();
    std::__function::__func<std::__bind<void (ggl::TextureCube::*)(ggl::Texture2DLoadItem const&),ggl::TextureCube*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (ggl::TextureCube::*)(ggl::Texture2DLoadItem const&),ggl::TextureCube*,std::placeholders::__ph<1> const&>>,void ()(ggl::Texture2DLoadItem const&)>::operator()(v6);
  }
}

uint64_t std::__function::__func<std::__bind<void (ggl::TextureCube::*)(ggl::Texture2DLoadItem const&),ggl::TextureCube*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (ggl::TextureCube::*)(ggl::Texture2DLoadItem const&),ggl::TextureCube*,std::placeholders::__ph<1> const&>>,void ()(ggl::Texture2DLoadItem const&)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

void std::vector<ggl::Texture2DLoadItem,geo::allocator_adapter<ggl::Texture2DLoadItem,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
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
        v6 = v3 - 80;
        a1 = std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::~__value_func[abi:nn200100]((v3 - 32));
        v3 = v6;
      }

      while (v6 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture2DLoadItem>(v7, v4);
  }
}

uint64_t md::MapEngine::renderSceneSync(md::MapEngine *this, double a2)
{
  v20 = *MEMORY[0x1E69E9840];
  canRender = md::MapEngine::canRender(this);
  if (canRender)
  {
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v5 = GEOGetVectorKitPerformanceLog_log;
    if (os_signpost_enabled(v5))
    {
      canRenderAsync = md::MapEngine::canRenderAsync(this);

      if (canRenderAsync)
      {
        if (GEOGetVectorKitPerformanceLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
        }

        v7 = GEOGetVectorKitPerformanceLog_log;
        if (os_signpost_enabled(v7))
        {
          *v15 = 0;
          _os_signpost_emit_with_name_impl(&dword_1B2754000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ForceSyncRender", &unk_1B3514CAA, v15, 2u);
        }
      }
    }

    else
    {
    }

    v8 = this + 45056;
    md::HomeQueueScheduler::waitForSynchronization(*(this + 5920), "BOOL md::MapEngine::renderSceneSync(double)");
    md::MapEngine::runUpdatePhase(this, a2, 0);
    v19 = 0;
    v9 = md::MapEngine::buildFrameRequest(this, 0, v18);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v18);
    v10 = **(v8 + 285);
    do
    {
      v11 = *v10;
      v10 += 5;
    }

    while (v11 != 0x8C3843AC816FCBCLL);
    v13 = *(v10 - 2);
    v12 = *(v10 - 1);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v17 = 0;
    (*(*v13 + 32))(v13, v9, v16);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v16);
  }

  return canRender;
}

uint64_t md::MapEngine::canRender(id *this)
{
  v1 = (this + 5120);
  [this[5207] size];
  if (v1[1041] == 1)
  {
    v4 = v1[1042] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  if ((v1[1040] & 1) == 0 && (v4 & 1) == 0)
  {
    v6 = v3 * v2;
    if ([*(v1 + 87) hasRenderTarget])
    {
      if (v6 <= 0.0)
      {
        v5 = 0;
        return v5 & 1;
      }

      goto LABEL_8;
    }

    v5 = 0;
    if (*(v1 + 134) == 1 && v6 > 0.0)
    {
LABEL_8:
      v7 = atomic_load(v1 + 1045);
      v5 = v7 ^ 1;
    }
  }

  return v5 & 1;
}

void md::SharedResource::addFrameRef(md::SharedResource *this, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (!v2)
  {
    return;
  }

  if (!*(this + 1) || (v4 = *this, (v5 = std::__shared_weak_count::lock(*(this + 1))) == 0))
  {
    std::__throw_bad_weak_ptr[abi:nn200100]();
  }

  v6 = v5;
  if (!a2)
  {
    goto LABEL_52;
  }

  std::__shared_mutex_base::lock_shared(v2);
  for (i = 176; i != 304; i += 8)
  {
    if (*(&v2->__mut_.__m_.__sig + i) == a2)
    {
      sig = (i - 176) >> 3;
      goto LABEL_17;
    }
  }

  std::__shared_mutex_base::unlock_shared(v2);
  std::__shared_mutex_base::lock(v2);
  sig = v2[1].__mut_.__m_.__sig;
  v2[1].__mut_.__m_.__sig = (sig + 1) & 0xF;
  *&v2[1].__mut_.__m_.__opaque[8 * sig] = a2;
  v9 = (v2 + 208 * sig + 304);
  std::__shared_mutex_base::lock_shared(v9);
  v10 = *(&v2[2].__state_ + 26 * sig);
  std::__shared_mutex_base::unlock_shared(v9);
  if (v10)
  {
    if (GEOGetVectorKitSharedResourcesLog(void)::onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitSharedResourcesLog(void)::onceToken, &__block_literal_global_38304);
    }

    v11 = GEOGetVectorKitSharedResourcesLog(void)::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v31 = 136315650;
      v32 = "wasEmpty";
      v33 = 2080;
      v34 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/SharedResourcesManager.mm";
      v35 = 1024;
      v36 = 117;
      _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_ERROR, "We may not be tracking resources correctly: Assertion with expression - %s : Failed in file - %s line - %i", &v31, 0x1Cu);
    }
  }

  std::__shared_mutex_base::lock(v9);
  for (j = *&v2[2].__gate2_.__cv_.__opaque[208 * sig + 32]; j; j = *j)
  {
    v30 = j[2];
    v29 = j[3];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add((v30 + 24), 0xFFFFFFFF);
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    else
    {
      atomic_fetch_add((v30 + 24), 0xFFFFFFFF);
    }
  }

  std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::clear(&v2[2].__gate2_.__cv_.__opaque[208 * sig + 16]);
  std::__shared_mutex_base::unlock(v9);
  std::__shared_mutex_base::unlock(v2);
  std::__shared_mutex_base::lock_shared(v2);
LABEL_17:
  v13 = (v2 + 208 * sig + 304);
  std::__shared_mutex_base::lock_shared(v13);
  v14 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
  v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v14 >> 47) ^ v14);
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v17 = *&v2[2].__gate2_.__cv_.__opaque[208 * sig + 24];
  if (v17)
  {
    v18 = vcnt_s8(v17);
    v18.i16[0] = vaddlv_u8(v18);
    if (v18.u32[0] > 1uLL)
    {
      v19 = v16;
      if (v16 >= *&v17)
      {
        v19 = v16 % *&v17;
      }
    }

    else
    {
      v19 = v16 & (*&v17 - 1);
    }

    v20 = *(*&v2[2].__gate2_.__cv_.__opaque[208 * sig + 16] + 8 * v19);
    if (v20)
    {
      for (k = *v20; k; k = *k)
      {
        v22 = k[1];
        if (v16 == v22)
        {
          if (k[2] == v4)
          {
            std::__shared_mutex_base::unlock_shared(v13);
            goto LABEL_51;
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

  std::__shared_mutex_base::unlock_shared(v13);
  std::__shared_mutex_base::lock(v13);
  v23 = *&v2[2].__gate2_.__cv_.__opaque[208 * sig + 24];
  if (!*&v23)
  {
    goto LABEL_50;
  }

  v24 = vcnt_s8(v23);
  v24.i16[0] = vaddlv_u8(v24);
  if (v24.u32[0] > 1uLL)
  {
    v25 = v16;
    if (v16 >= *&v23)
    {
      v25 = v16 % *&v23;
    }
  }

  else
  {
    v25 = v16 & (*&v23 - 1);
  }

  v26 = *(v13[1].__mut_.__m_.__sig + 8 * v25);
  if (!v26 || (v27 = *v26) == 0)
  {
LABEL_50:
    operator new();
  }

  while (1)
  {
    v28 = v27[1];
    if (v28 == v16)
    {
      break;
    }

    if (v24.u32[0] > 1uLL)
    {
      if (v28 >= *&v23)
      {
        v28 %= *&v23;
      }
    }

    else
    {
      v28 &= *&v23 - 1;
    }

    if (v28 != v25)
    {
      goto LABEL_50;
    }

LABEL_49:
    v27 = *v27;
    if (!v27)
    {
      goto LABEL_50;
    }
  }

  if (v27[2] != v4)
  {
    goto LABEL_49;
  }

  std::__shared_mutex_base::unlock(v13);
LABEL_51:
  std::__shared_mutex_base::unlock_shared(v2);
LABEL_52:
  std::__shared_weak_count::__release_shared[abi:nn200100](v6);
}

void md::MapEngine::runUpdatePhase(md::MapEngine *this, double a2, int a3)
{
  v271 = *MEMORY[0x1E69E9840];
  v6 = (this + 41680);
  v222 = atomic_exchange(this + 5283, 0);
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v7 = GEOGetVectorKitPerformanceLog_log;
  v8 = v7;
  v9 = v6[50];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v230[0] = &v222;
    md::MapEngine::runUpdatePhase(double,BOOL)::$_2::operator()(__p, v230);
    v10 = __p[23] >= 0 ? __p : *__p;
    *buf = 136315138;
    *&buf[4] = v10;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "LayoutScene", "LayoutReasons:%s", buf, 0xCu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  v11 = (this + 47136);
  v12 = v222;
  if (*(this + 47184) == 1)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v13 = GEOGetVectorKitVKDefaultLog_log;
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

    if (v14)
    {
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v15 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = v6[74];
        stringForLayoutReasonsMask(__p, v12);
        v17 = __p[23] >= 0 ? __p : *__p;
        *buf = 134218242;
        *&buf[4] = v16;
        buf_12 = 2080;
        buf_14 = v17;
        _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_DEBUG, "FrameCount:%llu LayoutReasons:%s", buf, 0x16u);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }
  }

  else
  {
    v18 = (*(**(this + 5895) + 56))(*(this + 5895));
    v19 = md::MapEngine::logLayoutReasonsHistory(this, 0x3CuLL) | v18 ^ 1;
    if (v6[44])
    {
      v19 = 0;
    }

    v20 = v6[76];
    v21 = v6[75] + v20;
    v6[75] = v21;
    v22 = v6[74];
    v23 = this + 40 * *(this + 5893) + 42296;
    *v23 = v20;
    *(v23 + 1) = v21;
    *(v23 + 2) = v22;
    *(v23 + 3) = a2;
    *(v23 + 4) = v12;
    v24 = *v11;
    v25 = (*(this + 5893) + 1) % 0x79uLL;
    *(this + 5893) = v25;
    if (v24 == v25)
    {
      if (v25 == 120)
      {
        v26 = 0;
      }

      else
      {
        v26 = v25 + 1;
      }

      *v11 = v26;
    }

    if (v19)
    {
      (*(**(this + 5895) + 24))(*(this + 5895), 0, 1.0);
    }
  }

  ++v6[74];
  v6[76] = 0;
  v27 = objc_autoreleasePoolPush();
  atomic_store(0, v6 + 323);
  (*(**(this + 24) + 16))(*(this + 24), a2);
  md::MapEngine::updateForConfigurationAndMode(this, a2);
  ggl::StencilManager::reset(this + 47368);
  *&v236[40] = 0;
  memset(&v236[16], 0, 22);
  gdc::Camera::Camera(&v237);
  v266 = 0;
  v267 = 1;
  *v236 = *(this + 5227);
  v28 = *(this + 41800);
  *&v234[16] = *(this + 41784);
  v235 = v28;
  v29 = *(this + 41768);
  *&__p[16] = *(this + 41752);
  *v234 = v29;
  *__p = *(this + 41736);
  *&v236[8] = a2;
  *&v236[16] = **(*(*(*v6 + 24) + 16) + 136);
  v30 = atomic_load(v6[51]);
  *&v236[24] = v30;
  v31 = v6[26];
  v32 = *(v31 + 1);
  v33 = md::LayoutContext::get<md::CameraContext>(v32);
  if (v33)
  {
    v34 = v33;
    v220 = v27;
    v35 = *(v31 + 9);
    if (v35)
    {
      v36 = *v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = v33 + 3792;
    v38 = gdc::Context::get<md::StyleLogicContext>(v32);
    if (v38)
    {
      v39 = v38[25];
    }

    else
    {
      v39 = 0.0;
    }

    v40 = md::LayoutContext::cameraType(v31);
    v41 = *(v34 + 3792);
    v42 = 1760;
    v43 = 1752;
    if (v41 == 1)
    {
      v43 = 1728;
    }

    v44 = 1768;
    if (v41 == 1)
    {
      v44 = 1744;
    }

    v45 = *(v37 + v44);
    if (v41 == 1)
    {
      v42 = 1736;
    }

    v46 = *(v37 + v42);
    v230[0] = *(v37 + v43);
    v230[1] = v46;
    v230[2] = v45;
    v47 = gdc::CameraView::position((v34 + 3800));
    v48 = 0;
    v49 = *(v47 + 16);
    v228 = *v47;
    v229 = v49;
    v50 = *(v34 + 5232);
    v226 = *(v34 + 5216);
    v227 = v50;
    do
    {
      *&buf[v48 * 8] = *&v230[v48] - *(&v228 + v48 * 8);
      ++v48;
    }

    while (v48 != 3);
    v51 = 0;
    v52 = 0.0;
    if (v36)
    {
      do
      {
        v52 = v52 + *&buf[v51] * *&buf[v51];
        v51 += 8;
      }

      while (v51 != 24);
      v52 = sqrt(v52);
    }

    else
    {
      do
      {
        v52 = v52 + *&buf[v51] * *(&v226 + v51);
        v51 += 8;
      }

      while (v51 != 24);
    }

    v53 = 0.0;
    if (v52 >= *(v34 + 4768) && v52 <= *(v34 + 4776))
    {
      v54 = *(v34 + 5248) * v52;
      if (v41)
      {
        if (v40 == 2)
        {
          v55 = log2(v54);
          v56 = 0;
          v58 = 0.0;
          do
          {
            v58 = v58 + *&v230[v56] * *&v230[v56];
            ++v56;
          }

          while (v56 != 3);
          v57 = v55;
          v59 = *(v34 + 5584) + (v39 - v57);
          if (sqrt(v58) <= 0.001)
          {
            v60 = *(v34 + 5168);
            v61 = *(v34 + 5176);
            v63 = *(v34 + 5184);
          }

          else
          {
            v60 = gm::Matrix<double,3,1>::normalized<int,void>(v230);
            v63 = v62;
          }

          v217 = 0;
          v65 = v59;
          v223 = v60;
          v224 = v61;
          v66 = 0.0;
          v225 = v63;
          do
          {
            v66 = v66 + *(&v223 + v217) * *(&v226 + v217);
            v217 += 8;
          }

          while (v217 != 24);
        }

        else
        {
          v205 = 0;
          v206 = v54 * 0.0000000249532021;
          v207 = 0.0;
          do
          {
            v207 = v207 + *&v230[v205] * *&v230[v205];
            ++v205;
          }

          while (v205 != 3);
          v208 = log2(v206);
          if (sqrt(v207) <= 0.001)
          {
            v209 = *(v34 + 5168);
            v210 = *(v34 + 5176);
            v212 = *(v34 + 5184);
          }

          else
          {
            v209 = gm::Matrix<double,3,1>::normalized<int,void>(v230);
            v212 = v211;
          }

          v218 = 0;
          v65 = v39 - v208;
          v223 = v209;
          v224 = v210;
          v66 = 0.0;
          v225 = v212;
          do
          {
            v66 = v66 + *(&v223 + v218) * *(&v226 + v218);
            v218 += 8;
          }

          while (v218 != 24);
        }
      }

      else
      {
        v64 = log2(v54);
        v65 = v39 - v64;
        gm::Matrix<double,3,1>::normalized<int,void>(buf);
      }

      if ((v36 & 1) == 0)
      {
        v67 = v66 + 1.0;
        v68 = fminf(fmaxf(v67, 0.0), 1.0);
        if (v68 > 0.8)
        {
          v65 = fmaxf(log2f(fmaxf(1.0 - v68, 0.01)) + v65, 0.0);
        }
      }

      v53 = fmaxf(v65, 0.0);
    }

    v27 = v220;
  }

  else
  {
    v53 = 0.0;
  }

  *&v236[32] = v53;
  v236[37] = a3;
  v69 = v6[43];
  if (v69)
  {
    LOBYTE(v69) = *(v69 + 225);
  }

  v236[36] = v69;
  v70 = atomic_load(v6 + 10);
  *&v236[40] = v70;
  v71 = v6[24];
  v237 = *v71;
  v72 = *(v71 + 64);
  v74 = *(v71 + 16);
  v73 = *(v71 + 32);
  v240 = *(v71 + 48);
  v241 = v72;
  v238 = v74;
  v239 = v73;
  v76 = *(v71 + 96);
  v75 = *(v71 + 112);
  v77 = *(v71 + 80);
  v245 = *(v71 + 128);
  v243 = v76;
  v244 = v75;
  v242 = v77;
  v246 = *(v71 + 136);
  v247 = *(v71 + 152);
  v248 = *(v71 + 168);
  v249 = *(v71 + 184);
  v250 = *(v71 + 200);
  v251 = *(v71 + 216);
  v252 = *(v71 + 232);
  v253 = *(v71 + 248);
  v254 = *(v71 + 264);
  v255 = *(v71 + 280);
  v256 = *(v71 + 296);
  v257 = *(v71 + 312);
  v258[0] = *(v71 + 328);
  v78 = *(v71 + 352);
  *&v258[8] = *(v71 + 336);
  *&v258[24] = v78;
  v259 = *(v71 + 368);
  v260 = *(v71 + 384);
  v261 = *(v71 + 400);
  v262 = *(v71 + 416);
  v79 = *(v71 + 432);
  v264 = *(v71 + 448);
  v263 = v79;
  v80 = *(v71 + 472);
  *v265 = *(v71 + 456);
  *&v265[16] = v80;
  *&v265[32] = *(v71 + 488);
  if (a3)
  {
    v266 = 0;
  }

  else
  {
    v81 = +[VKSharedResourcesManager sharedResources];
    v266 = [v81 globalFrameStamp];
  }

  v267 = 0;
  *(v6 + 72) = 0;
  if (!v6[22])
  {
    (*(**(*(this + 13) + 8) + 24))(buf);
    v146 = *buf;
    *buf = 0;
    v147 = v6[22];
    v6[22] = v146;
    if (v147)
    {
      (*(*v147 + 8))(v147);
    }

    ggl::Loader::~Loader(buf);
  }

  v82 = v6[26];
  v83 = (v82 + 360);
  if (*(v82 + 736) == 1)
  {
    v84 = *&__p[16];
    *(v82 + 96) = *__p;
    *(v82 + 112) = v84;
    v85 = *&v234[16];
    *(v82 + 128) = *v234;
    *(v82 + 144) = v85;
    *(v82 + 204) = *&v236[28];
    v86 = *&v236[16];
    *(v82 + 176) = *v236;
    *(v82 + 192) = v86;
    *(v82 + 160) = v235;
    v87 = v237;
    v88 = v238;
    v89 = v240;
    *(v82 + 256) = v239;
    *(v82 + 272) = v89;
    *(v82 + 224) = v87;
    *(v82 + 240) = v88;
    v90 = v241;
    v91 = v242;
    v92 = v243;
    v93 = v244;
    *(v82 + 352) = v245;
    *(v82 + 320) = v92;
    *(v82 + 336) = v93;
    *(v82 + 288) = v90;
    *(v82 + 304) = v91;
    *v83 = v246;
    *(v82 + 376) = v247;
    *(v82 + 392) = v248;
    *(v82 + 408) = v249;
    *(v82 + 424) = v250;
    *(v82 + 440) = v251;
    *(v82 + 456) = v252;
    *(v82 + 472) = v253;
    *(v82 + 488) = v254;
    *(v82 + 504) = v255;
    *(v82 + 520) = v256;
    *(v82 + 536) = v257;
    *(v82 + 552) = v258[0];
    v94 = *&v258[24];
    *(v82 + 560) = *&v258[8];
    *(v82 + 576) = v94;
    v95 = v260;
    *(v82 + 592) = v259;
    *(v82 + 608) = v95;
    v96 = v262;
    *(v82 + 624) = v261;
    *(v82 + 640) = v96;
    v97 = v263;
    *(v82 + 672) = v264;
    *(v82 + 656) = v97;
    v98 = *&v265[16];
    *(v82 + 680) = *v265;
    *(v82 + 696) = v98;
    *(v82 + 712) = *&v265[32];
    v99 = v266;
    *(v82 + 728) = v267;
    *(v82 + 720) = v99;
  }

  else
  {
    v100 = *v234;
    *(v82 + 112) = *&__p[16];
    *(v82 + 128) = v100;
    *(v82 + 144) = v234[16];
    *(v82 + 96) = *__p;
    *(v82 + 152) = *&v234[24];
    *(v82 + 160) = v235;
    *(v82 + 176) = *v236;
    *(v82 + 180) = v236[4];
    v101 = *&v236[8];
    v102 = *&v236[24];
    *(v82 + 216) = *&v236[40];
    *(v82 + 200) = v102;
    *(v82 + 184) = v101;
    *(v82 + 224) = v237;
    *(v82 + 232) = *(&v237 + 1);
    v103 = v239;
    *(v82 + 240) = v238;
    *(v82 + 256) = v103;
    v104 = v241;
    *(v82 + 272) = v240;
    *(v82 + 288) = v104;
    v106 = v243;
    v105 = v244;
    v107 = v242;
    *(v82 + 352) = v245;
    *(v82 + 320) = v106;
    *(v82 + 336) = v105;
    *(v82 + 304) = v107;
    v108 = v247;
    *v83 = v246;
    *(v82 + 376) = v108;
    v109 = v248;
    v110 = v249;
    v111 = v251;
    *(v82 + 424) = v250;
    *(v82 + 440) = v111;
    *(v82 + 392) = v109;
    *(v82 + 408) = v110;
    v112 = v252;
    v113 = v253;
    v114 = v255;
    *(v82 + 488) = v254;
    *(v82 + 504) = v114;
    *(v82 + 456) = v112;
    *(v82 + 472) = v113;
    v115 = v256;
    v116 = v257;
    v117 = *v258;
    v118 = *&v258[16];
    *(v82 + 584) = *&v258[32];
    *(v82 + 552) = v117;
    *(v82 + 568) = v118;
    *(v82 + 520) = v115;
    *(v82 + 536) = v116;
    v119 = v260;
    *(v82 + 592) = v259;
    *(v82 + 608) = v119;
    v120 = v262;
    *(v82 + 624) = v261;
    *(v82 + 640) = v120;
    *(v82 + 656) = v263;
    *(v82 + 672) = v264;
    *(v82 + 680) = *v265;
    v121 = *&v265[24];
    *(v82 + 688) = *&v265[8];
    *(v82 + 704) = v121;
    v122 = v266;
    *(v82 + 728) = v267;
    *(v82 + 720) = v122;
    *(v82 + 736) = 1;
  }

  if (*(this + 47496) == 1)
  {
    v124 = *(v6[31] + 168);
    v123 = gdc::ServiceLocator::resolve<md::VKMRenderResourcesStore>(**(this + 5917), *(*(this + 5917) + 8));
  }

  else
  {
    v123 = gdc::ServiceLocator::resolve<md::VKMRenderResourcesStore>(**(this + 5917), *(*(this + 5917) + 8));
    v124 = 1;
  }

  *(v123 + 13977) = v124;
  *this = *(this + 1);
  *(this + 1) = a2;
  v125 = v6[24];
  *(this + 3) = *gdc::Camera::pitch(v125);
  *(this + 4) = *gdc::Camera::heading(v125);
  WeakRetained = objc_loadWeakRetained(this + 5208);
  LOBYTE(v125) = WeakRetained == 0;

  if ((v125 & 1) == 0)
  {
    v128 = objc_loadWeakRetained(this + 5208);
    [v128 willLayoutWithTimestamp:v6[26] withContext:a2];

    v129 = v6[26];
    gdc::Camera::Camera(__p, v6[24]);
    *&v127 = md::LayoutContext::updateCameraState(v129, __p);
  }

  v130 = v6[29];
  if (v130)
  {
    [v130 insertDeferredDelegateFence];
  }

  v131 = v6[31];
  if (*(v131 + 146) != 1)
  {
    goto LABEL_102;
  }

  if (v6[37])
  {
    md::LogicManager::setVariableFrequency(v6[31], 1);
    --v6[37];
    goto LABEL_93;
  }

  if ((v222 & 0x18000) != 0)
  {
    v213 = GEOGetVectorKitVLRLog();
    if (os_log_type_enabled(v213, OS_LOG_TYPE_DEBUG))
    {
      *__p = 0;
      _os_log_impl(&dword_1B2754000, v213, OS_LOG_TYPE_DEBUG, "[VLR] Needs Layout cause VLR Hi Signal", __p, 2u);
    }

    if (!v6[37])
    {
      v6[37] = 4;
    }

    v6[36] = *(this + 22);
    v135 = v6[31];
    v134 = 1;
    goto LABEL_92;
  }

  if ((v222 & 0x1800) != 0)
  {
    v180 = GEOGetVectorKitVLRLog();
    if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
    {
      *__p = 0;
      _os_log_impl(&dword_1B2754000, v180, OS_LOG_TYPE_DEBUG, "[VLR] Needs Layout cause reset mask", __p, 2u);
    }

    __p[0] = 3;
    md::MapEngine::setNeedsTick(this, __p);
    v137 = v6[36] * 1.15;
    goto LABEL_91;
  }

  v132 = v6[33];
  if (*(v132 + 89) != 1 || !*(v132 + 88))
  {
    v136 = GEOGetVectorKitVLRLog();
    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
    {
      *__p = 0;
      _os_log_impl(&dword_1B2754000, v136, OS_LOG_TYPE_DEBUG, "[VLR] Needs Layout cause gdc::SceneStatus::Pending", __p, 2u);
    }

    __p[0] = 3;
    md::MapEngine::setNeedsTick(this, __p);
    v137 = fminf(fmaxf(v6[36] * 1.15, 0.0), 128.0);
LABEL_91:
    v6[36] = v137;
    v138 = md::MapEngine::calculateAdjustedRate(this, v137);
    v135 = v6[31];
    v134 = v138;
    goto LABEL_92;
  }

  v133 = fminf(fmaxf(v6[36] * 0.2, 0.0), 128.0);
  v6[36] = v133;
  v134 = md::MapEngine::calculateAdjustedRate(this, v133);
  v135 = v131;
LABEL_92:
  md::LogicManager::setVariableFrequency(v135, v134);
LABEL_93:
  v139 = v6[36];
  if (v139 >= 0x80)
  {
    v139 = 128;
  }

  v6[36] = v139;
  v140 = v6[33];
  if (*(v140 + 89) == 1 && *(v140 + 88))
  {
    v141 = 0;
  }

  else
  {
    v142 = GEOGetVectorKitVLRLog();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
    {
      *__p = 0;
      _os_log_impl(&dword_1B2754000, v142, OS_LOG_TYPE_DEBUG, "[VLR] Needs Layout cause gdc::SceneStatus::Pending", __p, 2u);
    }

    v141 = 1;
  }

  md::MapEngine::setNeedsLayoutContinuously(this, v141, 0);
LABEL_102:
  v143 = v6[32];
  v144 = *v143;
  v145 = v143[1];
  while (v144 != v145)
  {
    if (*v144 == 20)
    {
      if (v144 != v145)
      {
        v148 = *(v144 + 8) == 5;
        goto LABEL_112;
      }

      break;
    }

    v144 += 16;
  }

  v148 = 0;
LABEL_112:
  v149 = v222;
  v150 = v6[31];
  v151 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v150 + 16), 0x2FED70A4459DFCA1uLL);
  if (v151)
  {
    v153 = v151[5];
  }

  else
  {
    v153 = 0;
  }

  v154 = gdc::DisplayZoomLevel::centerZoomLevel(v6[24], v152);
  if (!v153 || !v148 || !*(this + 17) || (*(v6[43] + 48) & 0xFE) != 0xA)
  {
    v6[54] = 0;
    goto LABEL_123;
  }

  if (*(v153 + 162) != 2)
  {
    goto LABEL_123;
  }

  v155 = v6[33];
  if ((*(v155 + 89) & 1) == 0)
  {
    v157 = [*(v153 + 1160) navCameraModeStyleAttribute] != 1;
    goto LABEL_180;
  }

  v156 = *(v155 + 88) == 0;
  v157 = [*(v153 + 1160) navCameraModeStyleAttribute] != 1;
  if (v157 || v156)
  {
LABEL_180:
    md::MapEngine::updateLogicsFrequency(this, kVariableLogicFrequency, *(v6[26] + 8), 0, 0, 0);
    v6[54] = 0;
    if (v157 && *(this + 47409) == 1 && [*(v153 + 1160) navCameraModeStyleAttribute] == 2)
    {
      v183 = [MEMORY[0x1E696AD88] defaultCenter];
      [v183 postNotificationName:@"FrequencyResetRequired" object:0 userInfo:0];
    }

    goto LABEL_184;
  }

  md::MapEngine::updateLogicsFrequency(this, 1, *(v6[26] + 8), 0, 0, 0);
  ggl::DisplayLink::setFrameRate(*(this + 17), 1, v158, v159, v160);
  v6[54] = 1;
LABEL_184:
  *(this + 47409) = 0;
  v150 = v6[31];
LABEL_123:
  if (*(v150 + 146) != 1)
  {
LABEL_129:
    if ((*(this + 168) & 1) == 0 && *(this + 169) != 1)
    {
      goto LABEL_133;
    }

    goto LABEL_131;
  }

  if (*(v150 + 184) != 1)
  {
    goto LABEL_128;
  }

  v161 = *(v150 + 176);
  if (v161)
  {
    *(v150 + 176) = v161 - 1;
    v162 = 1;
LABEL_127:
    *(v150 + 184) = v162;
    goto LABEL_128;
  }

  if (*(v150 + 160) != 1)
  {
LABEL_178:
    v162 = 0;
    goto LABEL_127;
  }

  v181 = GEOGetVectorKitVLRLog();
  if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
  {
    if ((*(v150 + 160) & 1) == 0)
    {
      goto LABEL_236;
    }

    v182 = *(v150 + 152);
    *__p = 134217984;
    *&__p[4] = v182;
    _os_log_impl(&dword_1B2754000, v181, OS_LOG_TYPE_DEBUG, "[VLR] Apply _uponResetFrequency as logic frequency: %zu", __p, 0xCu);
  }

  if ((*(v150 + 160) & 1) == 0)
  {
LABEL_236:
    v219 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v219);
  }

  *(v150 + 168) = *(v150 + 152);
  *(v150 + 160) = 0;
  if (*(v150 + 184))
  {
    goto LABEL_178;
  }

LABEL_128:
  if ((*(v150 + 192) & v149) == 0)
  {
    goto LABEL_129;
  }

LABEL_131:
  v163 = v6[31];
  if (*(v163 + 200) >= 2uLL)
  {
    *(v163 + 200) = 1;
  }

LABEL_133:
  if (*(this + 169) == 1)
  {
    *(this + 169) = 0;
  }

  v164 = v6[31];
  if (*(v164 + 146) == 1)
  {
    v165 = *(v164 + 200);
    v166 = v165 % *(v164 + 168);
    v168 = v165 == 1 || v166 == 0;
  }

  else
  {
    v168 = 1;
  }

  v221 = *(this + 1) - *this;
  *(this + 2) = v221;
  v169 = v6[24];
  v170 = gdc::Camera::pitch(v169);
  v171 = *v170;
  *(this + 5) = *v170;
  v172 = gdc::Camera::heading(v169);
  v173 = *v172;
  *(this + 6) = *v172;
  v174.f64[0] = v171;
  v174.f64[1] = v173;
  *(this + 56) = vdivq_f64(vmulq_f64(vsubq_f64(v174, *(this + 24)), vdupq_n_s64(0x404CA5DC1A63C1F8uLL)), vdupq_lane_s64(*&v221, 0));
  v175 = v6[32];
  __p[0] = 7;
  if (v148)
  {
    md::MapEngineSettings::set(v175, __p, 0);
  }

  else
  {
    md::MapEngineSettings::set(v175, __p, v6[44] == 0);
  }

  if (v154 < 2.0 || v168)
  {
    v176 = 0;
LABEL_148:
    ++v6[76];
    *(this + 46) = v154;
    v177 = 1;
    goto LABEL_149;
  }

  v179 = 0.001;
  if (v148)
  {
    v179 = 0.1;
  }

  if (vabds_f32(*(this + 46), v154) >= v179)
  {
    v176 = 0;
    v6[37] = 3;
    goto LABEL_148;
  }

  if (v148)
  {
    if (v154 < 13.0)
    {
LABEL_158:
      v177 = 0;
      v176 = 0;
LABEL_149:
      if (*(this + 48096) == v148)
      {
        if (!v148)
        {
          goto LABEL_203;
        }

        if (v177)
        {
          v178 = *(this + 12025) + 1;
LABEL_162:
          *(this + 12025) = v178;
          if (v176)
          {
            ++*(this + 18);
          }

          LOBYTE(v177) = 1;
          goto LABEL_203;
        }
      }

      else
      {
        *(this + 48096) = v148;
        if (!v148)
        {
          goto LABEL_203;
        }

        *(this + 48100) = 0;
        *(this + 18) = 0;
        if (v177)
        {
          v178 = 1;
          goto LABEL_162;
        }
      }

LABEL_202:
      LOBYTE(v177) = 0;
      ++*(this + 12026);
      goto LABEL_203;
    }

    if (fabs(*(this + 8)) >= *(this + 5984))
    {
      v214 = GEOGetVectorKitVLRLog();
      if (os_log_type_enabled(v214, OS_LOG_TYPE_DEBUG))
      {
        v216 = *(this + 7);
        v215 = *(this + 8);
        *__p = 134218240;
        *&__p[4] = v215;
        *&__p[12] = 2048;
        *&__p[14] = v216;
        _os_log_impl(&dword_1B2754000, v214, OS_LOG_TYPE_DEBUG, "[VLR] Camera heading rate trigger (heading:%f pitch:%f)", __p, 0x16u);
      }
    }

    else
    {
      v184 = *(this + 7);
      v185 = *(this + 5964);
      if (v184 < v185)
      {
        goto LABEL_158;
      }

      v186 = v27;
      v187 = (v184 - v185) / (*(this + 5974) - v185);
      v188 = v187;
      v189 = 1;
      v190 = (*(this + 11908) + fmin(fmax(v187, 0.0), 1.0) * (1 - *(this + 11908)));
      v191 = v190;
      v192 = 0x8000000000000000 >> __clz(v190);
      if (v190)
      {
        v193 = v192;
      }

      else
      {
        v193 = 0;
      }

      v194 = v6[31];
      if (*(v194 + 146) == 1)
      {
        v195 = *(v194 + 200);
        v189 = (v195 & (v192 - 1)) == 0 || v195 == 1;
      }

      v197 = GEOGetVectorKitVLRLog();
      if (os_log_type_enabled(v197, OS_LOG_TYPE_DEBUG))
      {
        v199 = *(this + 7);
        v198 = *(this + 8);
        *__p = 134219264;
        *&__p[4] = v198;
        *&__p[12] = 2048;
        *&__p[14] = v199;
        *&__p[22] = 2048;
        *&__p[24] = v188;
        *v234 = 2048;
        *&v234[2] = v191;
        *&v234[10] = 2048;
        *&v234[12] = v193;
        *&v234[20] = 1024;
        *&v234[22] = v189;
        _os_log_impl(&dword_1B2754000, v197, OS_LOG_TYPE_DEBUG, "[VLR] Camera pitch rate trigger (h:%f p:%f t:%f rf:%zu f:%zu %d)", __p, 0x3Au);
      }

      v27 = v186;
      if (!v189)
      {
        if (*(this + 48096) != v148)
        {
          *(this + 48096) = v148;
          *(this + 48100) = 0;
          *(this + 18) = 0;
        }

        goto LABEL_202;
      }
    }

    v176 = 1;
    goto LABEL_148;
  }

  LOBYTE(v177) = 0;
  if (*(this + 48096))
  {
    *(this + 48096) = 0;
  }

LABEL_203:
  *(this + 47409) = v177;
  v200 = v6[26];
  *__p = &unk_1F2A26640;
  __p[8] = v177;
  *&__p[24] = __p;
  if (*(v200 + 736) == 1)
  {
    std::__function::__func<md::MapEngine::runUpdatePhase(double,BOOL)::$_0,std::allocator<md::MapEngine::runUpdatePhase(double,BOOL)::$_0>,void ()(md::FrameState &)>::operator()(__p, v200 + 96);
  }

  std::__function::__value_func<void ()(md::FrameState &)>::~__value_func[abi:nn200100](__p);
  v201 = *(*(this + 11) + 8);
  v231[0] = &unk_1F2A26688;
  v231[1] = this;
  LOBYTE(v232[0]) = v177;
  v232[1] = v231;
  memset(v232 + 1, 0, 7);
  geo::TaskQueue::barrierSync(v201, v231);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v231);
  if (md::DaVinciTransitionManager::doesNeedEngineUpdate(v6[48]))
  {
    __p[0] = 13;
    md::MapEngine::setNeedsTick(this, __p);
  }

  (*(**v6 + 24))(*v6, v6[26]);
  v202 = v6[29];
  if (v202)
  {
    [v202 eraseDeferredDelegateFence];
  }

  objc_autoreleasePoolPop(v27);
  md::LayoutContext::transferFrameState(v6[26], v6[27]);
  v203 = objc_autoreleasePoolPush();
  v204 = v6[29];
  if (v204)
  {
    [v204 processDeferredDelegates];
  }

  objc_autoreleasePoolPop(v203);
}

void md::TextureManager::cubeTexture(md::SharedResource **a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = fminf(fmaxf(a5, 1.0), 3.0);
  if (a5 != 0.0)
  {
    a5 = v10;
  }

  LODWORD(v5) = vcvtps_s32_f32(a5);
  if (v5 < 2)
  {
LABEL_13:
    v14 = a4[1];
    v18[0] = *a4;
    v18[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    md::TextureManager::_cubeTexture(a1, a2, a3, v18, 0);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = *a1;
    if (!*a1 || (md::SharedResource::addFrameRef(*a1, 0), !*(v15 + 4)))
    {
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v16 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        if (*(a3 + 23) >= 0)
        {
          v17 = a3;
        }

        else
        {
          v17 = *a3;
        }

        *buf = 136315138;
        v21 = v17;
        _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_ERROR, "Missing cube texture: '%s'", buf, 0xCu);
      }
    }
  }

  else
  {
    while (1)
    {
      v11 = a4[1];
      v19[0] = *a4;
      v19[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::TextureManager::_cubeTexture(a1, a2, a3, v19, v5 + 0x100000000);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }

      v12 = *a1;
      if (*a1)
      {
        md::SharedResource::addFrameRef(*a1, 0);
        if (*(v12 + 4))
        {
          break;
        }
      }

      v13 = a1[1];
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      if ((--v5 & 0xFFFFFFFE) == 0)
      {
        goto LABEL_13;
      }
    }
  }
}

uint64_t gdc::Timer::isStarted(gdc::Timer *this)
{
  std::mutex::lock((this + 16));
  v2 = *(this + 96);
  std::mutex::unlock((this + 16));
  return v2;
}

void md::DaVinciGroundRenderLayer::createMeshLayoutContext(md::DaVinciGroundRenderLayer *this, const md::LayoutContext *a2, md::LayoutContext *a3)
{
  v95 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 1);
  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v5, 0x41E8D6E445F4145uLL);
  if (v6 && (v7 = v6[5], *(v7 + 8) == 0x41E8D6E445F4145))
  {
    v8 = *(v7 + 32);
  }

  else
  {
    v8 = 0;
  }

  v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v5, 0x8BD499FBD96FBB9ELL);
  if (v9 && (v10 = v9[5], *(v10 + 8) == 0x8BD499FBD96FBB9ELL))
  {
    v80 = *(v10 + 32);
  }

  else
  {
    v80 = 0;
  }

  v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v5, 0x1AF456233693CD46uLL);
  if (v11 && (v12 = v11[5], *(v12 + 8) == 0x1AF456233693CD46))
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  v14 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v5, 0x7C7EC6C7C111B0D0uLL);
  if (v14 && (v15 = v14[5], *(v15 + 8) == 0x7C7EC6C7C111B0D0))
  {
    v16 = *(v15 + 32);
  }

  else
  {
    v16 = 0;
  }

  v17 = md::LayoutContext::get<md::SettingsContext>(v5);
  v18 = *(v8 + 112);
  v19 = *(v8 + 176);
  v93 = *(v8 + 160);
  v94 = v19;
  [*(*(a2 + 5) + 104) contentScale];
  v21 = v20;
  v83 = +[VKDebugSettings sharedSettings];
  v78 = [v83 daVinciWireframeEnabled];
  v79 = [v83 daVinciRenderLineGeometry];
  v22 = *(v8 + 259);
  if (v22 == 1 && [v83 daVinciSSAOOcclusionOnly])
  {
    v23 = [v83 daVinciAdvancedLightingEnabled];
  }

  else
  {
    v23 = 0;
  }

  if ([v83 daVinciEnablePBR])
  {
    v24 = [v83 daVinciAdvancedLightingEnabled];
  }

  else
  {
    v24 = 0;
  }

  if ([v83 daVinciGlobeLighting])
  {
    v76 = [v83 daVinciAdvancedLightingEnabled];
  }

  else
  {
    v76 = 0;
  }

  if (*(v17 + 92) == 1)
  {
    v75 = [v83 daVinciAdvancedLightingEnabled];
  }

  else
  {
    v75 = 0;
  }

  if (*(v17 + 93) == 1)
  {
    v74 = [v83 daVinciAdvancedLightingEnabled];
  }

  else
  {
    v74 = 0;
  }

  if ([v83 daVinciLightingDebugShowOverexposure])
  {
    v73 = [v83 daVinciAdvancedLightingEnabled];
  }

  else
  {
    v73 = 0;
  }

  if ([v83 daVinciLightingDebugShowNormals])
  {
    v72 = [v83 daVinciAdvancedLightingEnabled];
  }

  else
  {
    v72 = 0;
  }

  v71 = [v83 daVinciRenderingDebugShowUVs];
  isSplinedEnabled = md::CameraContext::isSplinedEnabled(v13, v25);
  v27 = *(v13 + 3076);
  v28 = *(v13 + 3080);
  v29 = *(v8 + 224);
  if ([v83 daVinciAdvancedLightingEnabled])
  {
    v69 = *(v8 + 257);
  }

  else
  {
    v69 = 0;
  }

  v30 = *(v8 + 228);
  v70 = *(v8 + 258);
  if (*(v8 + 256) == 1)
  {
    v67 = [v83 enableDOF] | v22;
  }

  else
  {
    LOBYTE(v67) = 0;
  }

  v66 = *(v17 + 94) == 1 && *(a2 + 3704) == 1;
  v68 = v24;
  v65 = *(v17 + 6);
  v31 = *(v13 + 3032);
  v32 = isSplinedEnabled;
  v33 = a3;
  if ([v83 drawDaVinciHUD])
  {
    v91 = 0u;
    memset(v92, 0, 31);
    v89 = 0u;
    v90 = 0u;
    v88 = 0u;
    v63 = 1;
  }

  else
  {
    v63 = 0;
  }

  v64 = *(v80 + 8);
  v82 = a2;
  v34 = *(*(a2 + 409) + 32);
  v35 = v21;
  if ([v83 lightingEnableAmbient] && *(v8 + 152) == 1)
  {
    v36 = *(v82 + 409);
    v37 = *(v82 + 275);
    v84 = *(v82 + 274);
    v85 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    md::TextureManager::cubeTexture(&v87, v36, v8 + 128, &v84, v35);
    if (v85)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v85);
    }

    v38 = v87;
    if (v87)
    {
      md::LayoutContext::frameState(v33);
      md::SharedResource::addFrameRef(v38, *(v39 + 624));
      v34 = *(v38 + 4);
    }

    if (*(&v87 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v87 + 1));
    }

    v40 = v76;
    v32 = isSplinedEnabled;
  }

  else
  {
    v40 = v76;
  }

  v62 = v31;
  v77 = v30;
  if ((v32 & v40) == 1)
  {
    v41 = *(v8 + 208);
    v93 = *(v8 + 192);
    v94 = v41;
  }

  v42 = v16[1];
  v86 = *v16;
  v87 = v42;
  v43 = gdc::CameraView::position(v13);
  v44 = 0;
  v45 = 0.0;
  do
  {
    v45 = v45 + *(v43 + v44) * *(v43 + v44);
    v44 += 8;
  }

  while (v44 != 24);
  [v83 daVinciHorizonGlowSharpness];
  v47 = v46;
  [v83 daVinciHorizonGlowStrength];
  v49 = v48;
  v50 = v18;
  v51 = __sincosf_stret(v50);
  *(this + 1) = 0;
  *(this + 5) = fmaxf(v28 + v27, 1.0);
  *(this + 6) = v35;
  *this = v22;
  *(this + 8) = v23;
  *(this + 7) = LODWORD(v51.__cosval);
  *(this + 8) = LODWORD(v51.__sinval);
  v52 = v94;
  *(this + 6) = v93;
  *(this + 7) = v52;
  v53 = *(v8 + 208);
  *(this + 8) = *(v8 + 192);
  *(this + 9) = v53;
  *(this + 36) = vrev64_s32(*(v80 + 12));
  *(this + 1) = v78;
  *(this + 192) = 0;
  v54 = v91;
  *(this + 225) = v90;
  *(this + 241) = v54;
  *(this + 257) = v92[0];
  *(this + 17) = *(v92 + 15);
  v55 = v89;
  *(this + 193) = v88;
  *(this + 209) = v55;
  *(this + 288) = v63;
  *(this + 37) = v34;
  *(this + 2) = v68;
  *(this + 3) = v79;
  *(this + 4) = v40;
  *(this + 5) = v32;
  *(this + 6) = v69 & 1;
  *(this + 7) = v70;
  *(this + 11) = v64;
  *(this + 12) = v29;
  v56 = v86;
  *(this + 10) = v87;
  *(this + 11) = v56;
  v57 = v62;
  v58 = v57 < 1.0;
  v59 = v57 < 1.0;
  v60 = 1.0 - v57;
  if (!v58)
  {
    v60 = 0.0;
  }

  v61 = 6356752.31 / sqrt(v45);
  *(this + 13) = v61;
  *(this + 14) = v47;
  *(this + 15) = v49;
  *(this + 10) = v75;
  *(this + 11) = v74;
  *(this + 12) = v73;
  *(this + 13) = v72;
  *(this + 14) = v71;
  *(this + 9) = (v23 | v75 | v74 | v73 | v72 | v71) & 1;
  *(this + 8) = v77;
  *(this + 16) = v59;
  *(this + 18) = v60;
  *(this + 17) = v67;
  *(this + 18) = v66;
  *(this + 76) = v65;
  *(this + 304) = *(v82 + 3704);
}

void sub_1B292283C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a30);
  }

  _Unwind_Resume(a1);
}

uint64_t md::MapEngine::logLayoutReasonsHistory(md::MapEngine *this, unint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = this + 45056;
  v3 = *(this + 5893);
  v4 = *(this + 5894);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v6 < 0 != v5)
  {
    v7 = v6 + 121;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 < a2 || v7 == 0;
  v9 = !v8;
  if (!v8)
  {
    v11 = v3 - 1;
    v8 = v3 == 0;
    v12 = 120;
    if (!v8)
    {
      v12 = v11;
    }

    v13 = (this + 40 * v12 + 42296);
    v14 = *(this + 5 * v12 + 5289);
    if (v14)
    {
      v15 = ((v13[1] * 100.0) / v14);
    }

    else
    {
      v15 = 0.0;
    }

    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v16 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = gdc::ServiceLocator::resolve<md::MapEngineLogger>(**(v2 + 285), *(*(v2 + 285) + 8));
      v18 = (*(*v17 + 16))(v17);
      v19 = v13[2];
      stringForLayoutReasonsMask(__p, v13[4]);
      if (v23 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      v21 = *v13;
      *buf = 136316418;
      v25 = v18;
      v26 = 2048;
      v27 = v19;
      v28 = 2080;
      v29 = v20;
      v30 = 2048;
      v31 = v7;
      v32 = 2048;
      v33 = v21;
      v34 = 2048;
      v35 = v15;
      _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_INFO, "%s FrameCount:%llu Last:[LayoutReasons:%s Layouts:%lu Heavy:%lu] TotalHeavy:%.2f%%", buf, 0x3Eu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(v2 + 262) = *(v2 + 261);
  }

  return v9;
}

void md::LayoutContext::frameState(md::LayoutContext *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(this + 736) & 1) == 0)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v2 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = "_frameState.has_value()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MDLayoutContext.mm";
      v9 = 1024;
      v10 = 92;
      _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_ERROR, "Requesting frameState on context in undefined state: Assertion with expression - %s : Failed in file - %s line - %i", &v5, 0x1Cu);
    }

    if ((*(this + 736) & 1) == 0)
    {
      v3 = std::__throw_bad_optional_access[abi:nn200100]();
      [(VKCameraDelegateMediator *)v3 processDeferredDelegates];
    }
  }
}

void md::AnimationManager::onTimerFired(md::AnimationManager *this, double a2)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::mutex::lock((this + 40));
  for (i = 104; i != 184; i += 40)
  {
    for (j = *(this + i + 16); j; j = *j)
    {
      v6 = j[3];
      if ([v6 running])
      {
        v7 = j[3];
        v8 = [v7 hasFrequency];

        if ((v8 & 1) == 0)
        {
          std::vector<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::push_back[abi:nn200100](&v14, (j + 2));
        }
      }

      else
      {
      }
    }
  }

  std::mutex::unlock((this + 40));
  v9 = v14;
  v10 = v15;
  while (v9 != v10)
  {
    v11 = *(v9 + 8);
    v12 = [v11 running];

    if (v12)
    {
      v13 = *(v9 + 8);
      [v13 onTimerFired:a2];
    }

    v9 += 24;
  }

  atomic_store(0, this + 184);
  v17 = &v14;
  std::vector<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v17);
}

void sub_1B2922EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a12);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
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

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::vector<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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

long double gdc::GlobeTileSelector::calculateLodConstant(gdc::GlobeTileSelector *this, const gdc::Camera *a2, double a3, int a4)
{
  v5 = a2;
  v9 = *(this + 46);
  v8 = *(this + 47);
  v10 = v8 * v9;
  if (v8 >= v9)
  {
    v14 = *(this + 57);
  }

  else
  {
    if (v10 <= 0.0)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = v8 / v9;
    }

    v12 = tan(*(this + 57) * 0.5);
    v13 = atan(v12 * v11);
    v14 = v13 + v13;
  }

  v15 = 1.0;
  if (a4)
  {
    v16 = cos(*(this + 1));
    v15 = 1.0 / v16 * (1.0 / v16);
  }

  v17 = tan(v14 * 0.5);
  return v17 * v5 * (v17 * v5) * (v9 * 4.0 * v15) / (a3 * a3 * v8 * v10);
}

void md::StandardMapEngineMode::~StandardMapEngineMode(md::StandardMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

void md::MapEngineMode::~MapEngineMode(md::MapEngineMode *this)
{
  *this = &unk_1F2A588D0;
  if (*(this + 608) == 1)
  {
    std::__function::__value_func<std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::~__value_func[abi:nn200100](this + 576);
  }

  if (*(this + 568) == 1)
  {
    std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](this + 536);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 65));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 62));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 59));
  std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::vector<gdc::FlowExecutionNode>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::vector<gdc::FlowExecutionNode>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::vector<gdc::FlowExecutionNode>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::vector<gdc::FlowExecutionNode>>>>::~__hash_table(this + 416);
  std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::vector<gdc::FlowExecutionNode>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::vector<gdc::FlowExecutionNode>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::vector<gdc::FlowExecutionNode>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::vector<gdc::FlowExecutionNode>>>>::~__hash_table(this + 376);
  std::__function::__value_func<std::string ()(gdc::TypeInfo)>::~__value_func[abi:nn200100](this + 344);
  std::__tree<std::__value_type<gdc::ContextTypeWrapper,std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>>,std::__map_value_compare<gdc::ContextTypeWrapper,std::__value_type<gdc::ContextTypeWrapper,std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>>,gdc::ContextTypeWrapperCompare,true>,std::allocator<std::__value_type<gdc::ContextTypeWrapper,std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>>>>::destroy(*(this + 41));
  std::__tree<std::__value_type<gdc::ContextTypeWrapper,std::vector<gdc::LogicExecutionNode>>,std::__map_value_compare<gdc::ContextTypeWrapper,std::__value_type<gdc::ContextTypeWrapper,std::vector<gdc::LogicExecutionNode>>,gdc::ContextTypeWrapperCompare,true>,std::allocator<std::__value_type<gdc::ContextTypeWrapper,std::vector<gdc::LogicExecutionNode>>>>::destroy(*(this + 38));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 256);
  std::__tree<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,std::__map_value_compare<gdc::LogicExecutionNode,std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,gdc::LogicExecutionNodeCompare,true>,std::allocator<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>>>::destroy(*(this + 30));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 184);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 144);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 16));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 80);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 8);
}

{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

void *md::ita::PushLegacyRibbons::operator()(uint64_t **a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
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
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v2;
  }

  v7 = a1[2];
  if (!v7)
  {
    v8 = **a1;
    v9 = *v8;
    v10 = *(v8 + 8);
    if (v9 == v10)
    {
      goto LABEL_14;
    }

    while (*v9 != 0xD369A4D92C8FFE6CLL)
    {
      v9 += 5;
      if (v9 == v10)
      {
        goto LABEL_14;
      }
    }

    if (v9 == v10)
    {
LABEL_14:
      v7 = 0;
    }

    else
    {
      v7 = v9[3];
      v11 = v9[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }
    }

    a1[2] = v7;
  }

  v12 = (*(*v7 + 16))(v7);
  v13 = a1[3];
  if (!v13)
  {
    v14 = **a1;
    v15 = *v14;
    v16 = *(v14 + 8);
    if (v15 == v16)
    {
      goto LABEL_23;
    }

    while (*v15 != 0x22D45F5AAD4BF408)
    {
      v15 += 5;
      if (v15 == v16)
      {
        goto LABEL_23;
      }
    }

    if (v15 == v16)
    {
LABEL_23:
      v13 = 0;
    }

    else
    {
      v13 = v15[3];
      v17 = v15[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }
    }

    a1[3] = v13;
  }

  v18 = (**v13)(v13);
  v31 = v18;
  v19 = (*(*v2 + 112))(v2, 9, 0);
  v30 = (*(*v2 + 32))(v2, v19, 0, 0);
  v20 = *(v18 + 1);
  v21 = md::LayoutContext::get<md::ElevationContext>(v20);
  if (v21 && *(v21 + 4) <= 0.01)
  {
    v22 = *(v21 + 3);
  }

  else
  {
    v22 = 0;
  }

  v29 = v22 & 1;
  result = md::LayoutContext::get<md::LightingLogicContext>(v20);
  if (result)
  {
    for (i = *(v12 + 40); i != *(v12 + 48); ++i)
    {
      v25 = *i;
      if (*i)
      {
        if (*(v25 + 33) == 1)
        {
          v26 = *(v25 + 34);
          if (v26 != 10 && v26 != 53)
          {
            v28[39] = *i;
            md::DaVinciGroundRenderLayer::createMeshLayoutContext(v28, v25, v18);
            md::DaVinciGroundRenderResources::resetPools((v25 + 568));
            std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((v25 + 528));
            std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((v25 + 448));
            std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((v25 + 408));
            std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((v25 + 488));
            std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((v25 + 368));
            md::ElevatedPolygonRenderResources::resetPools(*(v25 + 3568));
            v27 = *(v25 + 3568);
            std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v27 + 856));
            *(v27 + 848) = v27 + 856;
            *(v27 + 856) = 0u;
            operator new();
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::vector<gdc::FlowExecutionNode>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::vector<gdc::FlowExecutionNode>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::vector<gdc::FlowExecutionNode>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::vector<gdc::FlowExecutionNode>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        v2[6] = v4;
        operator delete(v4);
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

void std::__tree<std::__value_type<gdc::ContextTypeWrapper,std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>>,std::__map_value_compare<gdc::ContextTypeWrapper,std::__value_type<gdc::ContextTypeWrapper,std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>>,gdc::ContextTypeWrapperCompare,true>,std::allocator<std::__value_type<gdc::ContextTypeWrapper,std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<gdc::ContextTypeWrapper,std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>>,std::__map_value_compare<gdc::ContextTypeWrapper,std::__value_type<gdc::ContextTypeWrapper,std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>>,gdc::ContextTypeWrapperCompare,true>,std::allocator<std::__value_type<gdc::ContextTypeWrapper,std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>>>>::destroy(*a1);
    std::__tree<std::__value_type<gdc::ContextTypeWrapper,std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>>,std::__map_value_compare<gdc::ContextTypeWrapper,std::__value_type<gdc::ContextTypeWrapper,std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>>,gdc::ContextTypeWrapperCompare,true>,std::allocator<std::__value_type<gdc::ContextTypeWrapper,std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 56);
    std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>::__destroy_vector::operator()[abi:nn200100](&v2);

    operator delete(a1);
  }
}

void md::DaVinciGroundRenderResources::resetPools(md::DaVinciGroundRenderResources *this)
{
  v2 = *(this + 153);
  v3 = *(v2 + 4);
  v4 = *(v2 + 5);
  if (v3 != v4)
  {
    do
    {
      v78 = *v3++;
      v101 = v78;
      std::vector<ggl::DaVinci::GroundPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::GroundPipelineSetup * const&>(v2, &v101);
    }

    while (v3 != v4);
    v3 = *(v2 + 4);
    v4 = *(v2 + 5);
  }

  if (v3 != v4)
  {
    *(v2 + 5) = v3;
  }

  v5 = *(this + 197);
  v6 = *(v5 + 4);
  v7 = *(v5 + 5);
  if (v6 != v7)
  {
    do
    {
      v79 = *v6++;
      v101 = v79;
      std::vector<ggl::DaVinci::LinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::LinearDepthPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::LinearDepthPipelineSetup * const&>(v5, &v101);
    }

    while (v6 != v7);
    v6 = *(v5 + 4);
    v7 = *(v5 + 5);
  }

  if (v6 != v7)
  {
    *(v5 + 5) = v6;
  }

  v8 = *(this + 198);
  v9 = *(v8 + 4);
  v10 = *(v8 + 5);
  if (v9 != v10)
  {
    do
    {
      v80 = *v9++;
      v101 = v80;
      std::vector<ggl::DaVinci::PackedLinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::PackedLinearDepthPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::PackedLinearDepthPipelineSetup * const&>(v8, &v101);
    }

    while (v9 != v10);
    v9 = *(v8 + 4);
    v10 = *(v8 + 5);
  }

  if (v9 != v10)
  {
    *(v8 + 5) = v9;
  }

  v11 = *(this + 157);
  v12 = *(v11 + 4);
  v13 = *(v11 + 5);
  if (v12 != v13)
  {
    do
    {
      v81 = *v12++;
      v101 = v81;
      std::vector<ggl::DaVinci::GroundShadowMapPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundShadowMapPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::GroundShadowMapPipelineSetup * const&>(v11, &v101);
    }

    while (v12 != v13);
    v12 = *(v11 + 4);
    v13 = *(v11 + 5);
  }

  if (v12 != v13)
  {
    *(v11 + 5) = v12;
  }

  v14 = *(this + 158);
  v15 = *(v14 + 4);
  v16 = *(v14 + 5);
  if (v15 != v16)
  {
    do
    {
      v82 = *v15++;
      v101 = v82;
      std::vector<ggl::DaVinci::RibbonPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::RibbonPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::RibbonPipelineSetup * const&>(v14, &v101);
    }

    while (v15 != v16);
    v15 = *(v14 + 4);
    v16 = *(v14 + 5);
  }

  if (v15 != v16)
  {
    *(v14 + 5) = v15;
  }

  v17 = *(this + 159);
  v18 = *(v17 + 4);
  v19 = *(v17 + 5);
  if (v18 != v19)
  {
    do
    {
      v83 = *v18++;
      v101 = v83;
      std::vector<ggl::DaVinci::DecalPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::DecalPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::DecalPipelineSetup * const&>(v17, &v101);
    }

    while (v18 != v19);
    v18 = *(v17 + 4);
    v19 = *(v17 + 5);
  }

  if (v18 != v19)
  {
    *(v17 + 5) = v18;
  }

  v20 = *(this + 156);
  v21 = *(v20 + 4);
  v22 = *(v20 + 5);
  if (v21 != v22)
  {
    do
    {
      v84 = *v21++;
      v101 = v84;
      std::vector<ggl::DaVinci::GroundDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundDepthPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::GroundDepthPipelineSetup * const&>(v20, &v101);
    }

    while (v21 != v22);
    v21 = *(v20 + 4);
    v22 = *(v20 + 5);
  }

  if (v21 != v22)
  {
    *(v20 + 5) = v21;
  }

  v23 = *(this + 160);
  v24 = *(v23 + 4);
  v25 = *(v23 + 5);
  if (v24 != v25)
  {
    do
    {
      v85 = *v24++;
      v101 = v85;
      std::vector<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::Style> * const&>(v23, &v101);
    }

    while (v24 != v25);
    v24 = *(v23 + 4);
    v25 = *(v23 + 5);
  }

  if (v24 != v25)
  {
    *(v23 + 5) = v24;
  }

  v26 = *(this + 161);
  v27 = *(v26 + 4);
  v28 = *(v26 + 5);
  if (v27 != v28)
  {
    do
    {
      v86 = *v27++;
      v101 = v86;
      std::vector<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> * const&>(v26, &v101);
    }

    while (v27 != v28);
    v27 = *(v26 + 4);
    v28 = *(v26 + 5);
  }

  if (v27 != v28)
  {
    *(v26 + 5) = v27;
  }

  v29 = *(this + 162);
  v30 = *(v29 + 4);
  v31 = *(v29 + 5);
  if (v30 != v31)
  {
    do
    {
      v87 = *v30++;
      v101 = v87;
      std::vector<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> * const&>(v29, &v101);
    }

    while (v30 != v31);
    v30 = *(v29 + 4);
    v31 = *(v29 + 5);
  }

  if (v30 != v31)
  {
    *(v29 + 5) = v30;
  }

  v32 = *(this + 163);
  v33 = *(v32 + 4);
  v34 = *(v32 + 5);
  if (v33 != v34)
  {
    do
    {
      v88 = *v33++;
      v101 = v88;
      std::vector<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> * const&>(v32, &v101);
    }

    while (v33 != v34);
    v33 = *(v32 + 4);
    v34 = *(v32 + 5);
  }

  if (v33 != v34)
  {
    *(v32 + 5) = v33;
  }

  v35 = *(this + 186);
  v36 = *(v35 + 4);
  v37 = *(v35 + 5);
  if (v36 != v37)
  {
    do
    {
      v89 = *v36++;
      v101 = v89;
      std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> * const&>(v35, &v101);
    }

    while (v36 != v37);
    v36 = *(v35 + 4);
    v37 = *(v35 + 5);
  }

  if (v36 != v37)
  {
    *(v35 + 5) = v36;
  }

  v38 = *(this + 187);
  v39 = *(v38 + 4);
  v40 = *(v38 + 5);
  if (v39 != v40)
  {
    do
    {
      v90 = *v39++;
      v101 = v90;
      std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> * const&>(v38, &v101);
    }

    while (v39 != v40);
    v39 = *(v38 + 4);
    v40 = *(v38 + 5);
  }

  if (v39 != v40)
  {
    *(v38 + 5) = v39;
  }

  v41 = *(this + 188);
  v42 = *(v41 + 4);
  v43 = *(v41 + 5);
  if (v42 != v43)
  {
    do
    {
      v91 = *v42++;
      v101 = v91;
      std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> * const&>(v41, &v101);
    }

    while (v42 != v43);
    v42 = *(v41 + 4);
    v43 = *(v41 + 5);
  }

  if (v42 != v43)
  {
    *(v41 + 5) = v42;
  }

  v44 = *(this + 189);
  v45 = *(v44 + 4);
  v46 = *(v44 + 5);
  if (v45 != v46)
  {
    do
    {
      v92 = *v45++;
      v101 = v92;
      std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> * const&>(v44, &v101);
    }

    while (v45 != v46);
    v45 = *(v44 + 4);
    v46 = *(v44 + 5);
  }

  if (v45 != v46)
  {
    *(v44 + 5) = v45;
  }

  v47 = *(this + 192);
  v48 = *(v47 + 4);
  v49 = *(v47 + 5);
  if (v48 != v49)
  {
    do
    {
      v93 = *v48++;
      v101 = v93;
      std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> * const&>(v47, &v101);
    }

    while (v48 != v49);
    v48 = *(v47 + 4);
    v49 = *(v47 + 5);
  }

  if (v48 != v49)
  {
    *(v47 + 5) = v48;
  }

  v50 = *(this + 194);
  v51 = *(v50 + 4);
  v52 = *(v50 + 5);
  if (v51 != v52)
  {
    do
    {
      v94 = *v51++;
      v101 = v94;
      std::vector<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * const&>(v50, &v101);
    }

    while (v51 != v52);
    v51 = *(v50 + 4);
    v52 = *(v50 + 5);
  }

  if (v51 != v52)
  {
    *(v50 + 5) = v51;
  }

  v53 = *(this + 191);
  v54 = *(v53 + 4);
  v55 = *(v53 + 5);
  if (v54 != v55)
  {
    do
    {
      v95 = *v54++;
      v101 = v95;
      std::vector<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> * const&>(v53, &v101);
    }

    while (v54 != v55);
    v54 = *(v53 + 4);
    v55 = *(v53 + 5);
  }

  if (v54 != v55)
  {
    *(v53 + 5) = v54;
  }

  v56 = *(this + 193);
  v57 = *(v56 + 4);
  v58 = *(v56 + 5);
  if (v57 != v58)
  {
    do
    {
      v96 = *v57++;
      v101 = v96;
      std::vector<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> * const&>(v56, &v101);
    }

    while (v57 != v58);
    v57 = *(v56 + 4);
    v58 = *(v56 + 5);
  }

  if (v57 != v58)
  {
    *(v56 + 5) = v57;
  }

  v59 = *(this + 155);
  v60 = *(v59 + 4);
  v61 = *(v59 + 5);
  if (v60 != v61)
  {
    do
    {
      v97 = *v60++;
      v101 = v97;
      std::vector<ggl::DaVinci::GroundNonCompressedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundNonCompressedPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::GroundNonCompressedPipelineSetup * const&>(v59, &v101);
    }

    while (v60 != v61);
    v60 = *(v59 + 4);
    v61 = *(v59 + 5);
  }

  if (v60 != v61)
  {
    *(v59 + 5) = v60;
  }

  v62 = *(this + 190);
  v63 = *(v62 + 4);
  v64 = *(v62 + 5);
  if (v63 != v64)
  {
    do
    {
      v98 = *v63++;
      v101 = v98;
      std::vector<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> * const&>(v62, &v101);
    }

    while (v63 != v64);
    v63 = *(v62 + 4);
    v64 = *(v62 + 5);
  }

  if (v63 != v64)
  {
    *(v62 + 5) = v63;
  }

  v65 = *(this + 195);
  v66 = *(v65 + 4);
  v67 = *(v65 + 5);
  if (v66 != v67)
  {
    do
    {
      v99 = *v66++;
      v101 = v99;
      std::vector<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> * const&>(v65, &v101);
    }

    while (v66 != v67);
    v66 = *(v65 + 4);
    v67 = *(v65 + 5);
  }

  if (v66 != v67)
  {
    *(v65 + 5) = v66;
  }

  v68 = *(this + 196);
  v69 = *(v68 + 4);
  v70 = *(v68 + 5);
  if (v69 != v70)
  {
    do
    {
      v100 = *v69++;
      v101 = v100;
      std::vector<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::Tile::Clipping> * const&>(v68, &v101);
    }

    while (v69 != v70);
    v69 = *(v68 + 4);
    v70 = *(v68 + 5);
  }

  if (v69 != v70)
  {
    *(v68 + 5) = v69;
  }

  ggl::Batcher::reset((this + 2600));
  v71 = *(this + 335);
  if (v71)
  {
    do
    {
      if (v71[1])
      {
        v72 = 0;
        v73 = v71 + 2;
        v74 = v71 + 2;
        v75 = (v71 + 2);
        do
        {
          v76 = *v75;
          v75 += 15;
          (*v76)(v74);
          ++v72;
          v73 += 15;
          v74 = v75;
        }

        while (v72 < v71[1]);
      }

      v71[1] = 0;
      v71 = *v71;
    }

    while (v71);
    v77 = *(this + 335);
  }

  else
  {
    v77 = 0;
  }

  *(this + 336) = v77;
}

void std::__tree<std::__value_type<gdc::ContextTypeWrapper,std::vector<gdc::LogicExecutionNode>>,std::__map_value_compare<gdc::ContextTypeWrapper,std::__value_type<gdc::ContextTypeWrapper,std::vector<gdc::LogicExecutionNode>>,gdc::ContextTypeWrapperCompare,true>,std::allocator<std::__value_type<gdc::ContextTypeWrapper,std::vector<gdc::LogicExecutionNode>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<gdc::ContextTypeWrapper,std::vector<gdc::LogicExecutionNode>>,std::__map_value_compare<gdc::ContextTypeWrapper,std::__value_type<gdc::ContextTypeWrapper,std::vector<gdc::LogicExecutionNode>>,gdc::ContextTypeWrapperCompare,true>,std::allocator<std::__value_type<gdc::ContextTypeWrapper,std::vector<gdc::LogicExecutionNode>>>>::destroy(*a1);
    std::__tree<std::__value_type<gdc::ContextTypeWrapper,std::vector<gdc::LogicExecutionNode>>,std::__map_value_compare<gdc::ContextTypeWrapper,std::__value_type<gdc::ContextTypeWrapper,std::vector<gdc::LogicExecutionNode>>,gdc::ContextTypeWrapperCompare,true>,std::allocator<std::__value_type<gdc::ContextTypeWrapper,std::vector<gdc::LogicExecutionNode>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 56);
    std::vector<gdc::LogicExecutionNode>::__destroy_vector::operator()[abi:nn200100](&v2);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,std::__map_value_compare<gdc::LogicExecutionNode,std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,gdc::LogicExecutionNodeCompare,true>,std::allocator<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,std::__map_value_compare<gdc::LogicExecutionNode,std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,gdc::LogicExecutionNodeCompare,true>,std::allocator<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>>>::destroy(*a1);
    std::__tree<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,std::__map_value_compare<gdc::LogicExecutionNode,std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,gdc::LogicExecutionNodeCompare,true>,std::allocator<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>>>::destroy(*(a1 + 1));
    v4 = (a1 + 112);
    std::vector<gdc::LogicExecutionNode>::__destroy_vector::operator()[abi:nn200100](&v4);
    v2 = *(a1 + 11);
    if (v2)
    {
      *(a1 + 12) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      *(a1 + 9) = v3;
      operator delete(v3);
    }

    operator delete(a1);
  }
}

uint64_t *md::RenderItemPool::reset(uint64_t *this)
{
  v1 = this;
  v2 = *this;
  if (*this)
  {
    do
    {
      if (v2[1])
      {
        v3 = 0;
        v4 = v2 + 2;
        this = v2 + 2;
        v5 = v2 + 2;
        do
        {
          v6 = *v5;
          v5 += 15;
          (*v6)(this);
          ++v3;
          v4 += 15;
          this = v5;
        }

        while (v3 < v2[1]);
      }

      v2[1] = 0;
      v2 = *v2;
    }

    while (v2);
    v7 = *v1;
  }

  else
  {
    v7 = 0;
  }

  v1[1] = v7;
  return this;
}

ggl::zone_mallocator *md::ElevatedPolygonRenderResources::resetPools(ggl::zone_mallocator *this)
{
  v1 = this;
  v2 = *this;
  v3 = *(*this + 32);
  v4 = *(*this + 40);
  if (v3 != v4)
  {
    do
    {
      v20 = *v3++;
      v24 = v20;
      this = std::vector<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::ElevatedStrokeColorPipelineSetup * const&>(v2, &v24);
    }

    while (v3 != v4);
    v3 = *(v2 + 4);
    v4 = *(v2 + 5);
  }

  if (v3 != v4)
  {
    *(v2 + 5) = v3;
  }

  v5 = *(v1 + 1);
  v6 = *(v5 + 4);
  v7 = *(v5 + 5);
  if (v6 != v7)
  {
    do
    {
      v21 = *v6++;
      v24 = v21;
      this = std::vector<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup * const&>(v5, &v24);
    }

    while (v6 != v7);
    v6 = *(v5 + 4);
    v7 = *(v5 + 5);
  }

  if (v6 != v7)
  {
    *(v5 + 5) = v6;
  }

  v8 = *(v1 + 2);
  v9 = *(v8 + 4);
  v10 = *(v8 + 5);
  if (v9 != v10)
  {
    do
    {
      v22 = *v9++;
      v24 = v22;
      this = std::vector<ggl::DaVinci::ElevatedFillColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::ElevatedFillColorPipelineSetup * const&>(v8, &v24);
    }

    while (v9 != v10);
    v9 = *(v8 + 4);
    v10 = *(v8 + 5);
  }

  if (v9 != v10)
  {
    *(v8 + 5) = v9;
  }

  v11 = *(v1 + 3);
  v12 = *(v11 + 4);
  v13 = *(v11 + 5);
  if (v12 != v13)
  {
    do
    {
      v23 = *v12++;
      v24 = v23;
      this = std::vector<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup * const&>(v11, &v24);
    }

    while (v12 != v13);
    v12 = *(v11 + 4);
    v13 = *(v11 + 5);
  }

  if (v12 != v13)
  {
    *(v11 + 5) = v12;
  }

  v14 = *(v1 + 99);
  if (v14)
  {
    do
    {
      if (v14[1])
      {
        v15 = 0;
        v16 = v14 + 2;
        this = (v14 + 2);
        v17 = (v14 + 2);
        do
        {
          v18 = *v17;
          v17 = (v17 + 120);
          (*v18)(this);
          ++v15;
          v16 += 15;
          this = v17;
        }

        while (v15 < v14[1]);
      }

      v14[1] = 0;
      v14 = *v14;
    }

    while (v14);
    v19 = *(v1 + 99);
  }

  else
  {
    v19 = 0;
  }

  *(v1 + 100) = v19;
  return this;
}

void md::CartographicMapEngineConfiguration::didBecomeInactive(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 41928);
  v3 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v2 + 16), 0x20A1ED17D78F322BuLL);
  if (v3)
  {
    v4 = v3[5];
  }

  else
  {
    v4 = 0;
  }

  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v2 + 16), 0xBEC1A12372CEEC00);
  if (v5)
  {
    v6 = v5[5];
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = 0;
  if (v4)
  {
LABEL_6:
    v7 = *(*(*(v4 + 160) + 168) + 32);
    (*(*v7 + 128))(v7, 0);
  }

LABEL_7:
  if (v6)
  {
    v8 = md::LabelExternalPointFeature::incident(*(v6 + 304));
    [v8 setRouteOverlayCache:0];
  }
}

uint64_t md::PassList::rootRenderQueue(md::PassList *this)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v17[0] = &unk_1F2A36FC0;
  v17[1] = this;
  v17[3] = v17;
  md::FrameGraph::visitPasses(v2, v17);
  std::__function::__value_func<void ()(md::FrameGraphPass const&,md::RenderQueueBase &,ggl::RenderTarget *)>::~__value_func[abi:nn200100](v17);
  v3 = *(this + 2);
  v4 = +[VKDebugSettings sharedSettings];
  *(v3 + 280) = [v4 debugCaptureNextGPUFrame];

  v5 = +[VKDebugSettings sharedSettings];
  v6 = [v5 debugGPUFrameCaptureURL];
  if (v6)
  {
    v7 = +[VKDebugSettings sharedSettings];
    v8 = [v7 debugGPUFrameCaptureURL];
    v9 = v8;
    v10 = [v8 UTF8String];
  }

  else
  {
    v10 = "";
  }

  v11 = *(this + 2);
  v12 = strlen(v10);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v12;
  if (v12)
  {
    memmove(&__p, v10, v12);
  }

  __p.__r_.__value_.__s.__data_[v13] = 0;
  std::string::operator=(v11 + 12, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = +[VKDebugSettings sharedSettings];
  [v14 setDebugCaptureNextGPUFrame:0];

  return *(this + 2);
}

uint64_t std::__function::__value_func<void ()(md::FrameGraphPass const&,md::RenderQueueBase &,ggl::RenderTarget *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t **md::FrameGraph::visitPasses(uint64_t **result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    v5 = result;
    do
    {
      v6 = *v2;
      v7 = *(*v2 + 8);
      v8 = v5[15];
      if (v7 >= v5[16] - v8)
      {
        goto LABEL_12;
      }

      v9 = v8[v7];
      if (!v9)
      {
        goto LABEL_12;
      }

      if (*(v6 + 48) == 1)
      {
        v12 = *(a2 + 24);
        v11 = 0;
      }

      else
      {
        if (*(v6 + 48))
        {
          goto LABEL_12;
        }

        v10 = v5[18];
        if (v7 >= v5[19] - v10)
        {
          goto LABEL_12;
        }

        v11 = v10[v7];
        if (!v11)
        {
          goto LABEL_12;
        }

        v12 = *(a2 + 24);
      }

      result = std::function<void ()(md::FrameGraphPass const&,md::RenderQueueBase &,ggl::RenderTarget *)>::operator()(v12, v6, v9, v11);
LABEL_12:
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t gdc::tf::Executor::consumeGraph(void *a1, uint64_t **a2)
{
  memset(v42, 0, sizeof(v42));
  v43 = 1065353216;
  v2 = *a2;
  v3 = a2[1];
  v38 = a2;
  v39 = v2;
  if (v2 != v3)
  {
    while (1)
    {
      v6 = *v2;
      v8 = *(*v2 + 96);
      v7 = *(*v2 + 104);
      v40 = v8;
      v41 = v2;
      if (v7 == *(v6 + 112) && (std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(v42, v8) & 1) != 0)
      {
        break;
      }

LABEL_49:
      v39 = ++v2;
      if (v2 == v3)
      {
        return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v42);
      }
    }

    v9 = *v2;
    *v31 = 0u;
    *v32 = 0u;
    v33 = 1065353216;
    v34 = a2;
    __p = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = *a2;
    v11 = a2[1];
    if (*a2 == v11)
    {
      v16 = *(*v10 + 128);
      if (v16 != *(*v10 + 136))
      {
        while (1)
        {
LABEL_18:
          if (v10 != v11)
          {
            while (*(*v10 + 96) != v8)
            {
              if (++v10 == v11)
              {
                v10 = v11;
                break;
              }
            }
          }

          if (v16 == *(*v10 + 136))
          {
            break;
          }

          *&v29 = v8;
          *(&v29 + 1) = v16;
          std::deque<geo::graph::views::TopologicalSortViewBase<geo::IntrusiveNodeGraph<gdc::tf::TaskData> const>::StackItem,std::allocator<geo::graph::views::TopologicalSortViewBase<geo::IntrusiveNodeGraph<gdc::tf::TaskData> const>::StackItem>>::emplace_front<geo::graph::views::TopologicalSortViewBase<geo::IntrusiveNodeGraph<gdc::tf::TaskData> const>::StackItem>(&__p, &v29);
          v16 += 8;
          v10 = *v34;
          v11 = v34[1];
        }

        v44 = v8;
        *&v29 = &v44;
        *(std::__hash_table<std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v31, v8) + 24) = 1;
        geo::graph::views::TopologicalSortViewBase<geo::IntrusiveNodeGraph<gdc::tf::TaskData> const>::advance(v31);
        *&v29 = v31;
        while (*(&v37 + 1))
        {
          v17 = *(**(*(*(&__p + 1) + ((v37 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v37 + 8) + 96);
          *(&v29 + 1) = v17;
          v19 = *v34;
          v18 = v34[1];
          if (*v34 != v18)
          {
            while (*(*v19 + 96) != v17)
            {
              if (++v19 == v18)
              {
                v19 = v34[1];
                break;
              }
            }
          }

          v30 = v19;
          if (std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(v42, v17))
          {
            gdc::tf::Executor::invokeNode(a1, *v19);
          }

          geo::graph::views::TopologicalSortViewBase<geo::IntrusiveNodeGraph<gdc::tf::TaskData> const>::advance(v31);
        }

LABEL_31:
        v20 = *(&__p + 1);
        v21 = v36;
        *(&v37 + 1) = 0;
        v22 = (v36 - *(&__p + 1)) >> 3;
        if (v22 >= 3)
        {
          do
          {
            operator delete(*v20);
            v21 = v36;
            v20 = (*(&__p + 1) + 8);
            *(&__p + 1) = v20;
            v22 = (v36 - v20) >> 3;
          }

          while (v22 > 2);
        }

        if (v22 == 1)
        {
          v23 = 128;
        }

        else
        {
          if (v22 != 2)
          {
            goto LABEL_38;
          }

          v23 = 256;
        }

        *&v37 = v23;
LABEL_38:
        if (v20 != v21)
        {
          do
          {
            v24 = *v20++;
            operator delete(v24);
          }

          while (v20 != v21);
          if (v36 != *(&__p + 1))
          {
            *&v36 = v36 + ((*(&__p + 1) - v36 + 7) & 0xFFFFFFFFFFFFFFF8);
          }
        }

        if (__p)
        {
          operator delete(__p);
        }

        v25 = v32[0];
        if (v32[0])
        {
          do
          {
            v26 = *v25;
            operator delete(v25);
            v25 = v26;
          }

          while (v26);
        }

        v27 = v31[0];
        v31[0] = 0;
        if (v27)
        {
          operator delete(v27);
        }

        gdc::tf::Executor::invokeNode(a1, v9);
        goto LABEL_49;
      }
    }

    else
    {
      v12 = *a2;
      while (1)
      {
        v13 = *v12;
        if (*(*v12 + 96) == v8)
        {
          break;
        }

        if (++v12 == v11)
        {
          v13 = *v11;
          break;
        }
      }

      if (*(v13 + 128) != *(v13 + 136))
      {
        v14 = *a2;
        while (1)
        {
          v15 = *v14;
          if (*(*v14 + 96) == v8)
          {
            break;
          }

          if (++v14 == v11)
          {
            v15 = *v11;
            break;
          }
        }

        v16 = *(v15 + 128);
        goto LABEL_18;
      }
    }

    *&v29 = v31;
    goto LABEL_31;
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v42);
}

void geo::graph::views::TopologicalSortViewBase<geo::IntrusiveNodeGraph<gdc::tf::TaskData> const>::advance(int64x2_t *a1)
{
  if (a1[5].i64[1])
  {
    while (1)
    {
      v2 = a1[3].i64[1];
      v3 = *(*(*(v2 + ((a1[5].i64[0] >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * a1[5].i64[0] + 1] + 96);
      v4 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a1, v3);
      if (v4)
      {
        if (*(v4 + 24) == 1)
        {
          break;
        }
      }

      v5 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a1, v3);
      if (v5 && *(v5 + 24) == 2)
      {
        v6 = vaddq_s64(a1[5], xmmword_1B33B14D0);
        a1[5] = v6;
        if (v6.i64[0] >= 0x200uLL)
        {
          operator delete(*v2);
          a1[3].i64[1] += 8;
          a1[5].i64[0] -= 256;
        }
      }

      else
      {
        v15 = v3;
        *&v14 = &v15;
        *(std::__hash_table<std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a1, v3) + 24) = 1;
        v7 = a1[2].i64[1];
        v9 = *v7;
        v8 = v7[1];
        v10 = *v7;
        if (*v7 != v8)
        {
          v10 = *v7;
          while (*(*v10 + 96) != v3)
          {
            v10 += 8;
            if (v10 == v8)
            {
              v10 = v7[1];
              break;
            }
          }
        }

        for (i = *(*v10 + 128); ; i += 8)
        {
          v12 = v9;
          if (v9 != v8)
          {
            v12 = v9;
            while (*(*v12 + 96) != v3)
            {
              v12 += 8;
              if (v12 == v8)
              {
                v12 = v8;
                break;
              }
            }
          }

          if (i == *(*v12 + 136))
          {
            break;
          }

          v13 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a1, *(*i + 96));
          if (!v13 || !*(v13 + 24))
          {
            *&v14 = v3;
            *(&v14 + 1) = i;
            std::deque<geo::graph::views::TopologicalSortViewBase<geo::IntrusiveNodeGraph<gdc::tf::TaskData> const>::StackItem,std::allocator<geo::graph::views::TopologicalSortViewBase<geo::IntrusiveNodeGraph<gdc::tf::TaskData> const>::StackItem>>::emplace_front<geo::graph::views::TopologicalSortViewBase<geo::IntrusiveNodeGraph<gdc::tf::TaskData> const>::StackItem>(a1[3].i64, &v14);
            v7 = a1[2].i64[1];
            v9 = *v7;
          }

          v8 = v7[1];
        }
      }

      if (!a1[5].i64[1])
      {
        return;
      }
    }

    v15 = v3;
    *&v14 = &v15;
    *(std::__hash_table<std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,geo::graph::views::VisitationState>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a1, v3) + 24) = 2;
  }
}