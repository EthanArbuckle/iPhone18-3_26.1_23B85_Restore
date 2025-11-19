void sub_1B2C9B208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

double gm::operator*<double,3,3,1>(double *a1, uint64_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    v3 = 0;
    v4 = 0.0;
    v5 = a1;
    do
    {
      v6 = *v5;
      v5 += 3;
      v4 = v4 + *(a2 + v3) * v6;
      v3 += 8;
    }

    while (v3 != 24);
    *(&v8 + i) = v4;
    ++a1;
  }

  return v8;
}

uint64_t ggl::FragmentedPool<ggl::RenderItem>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 != *a1)
  {
    v3 = *(v2 - 8);
    v7 = v3;
    a1[1] = v2 - 8;
LABEL_5:
    std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v7);
    std::function<void ()(ggl::RenderItem *)>::operator()(a1[15], v3);
    return v3;
  }

  v4 = a1[11];
  if (v4)
  {
    v3 = (*(*v4 + 48))(v4);
    v7 = v3;
    goto LABEL_5;
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
  return ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pop(v6);
}

void *ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pop(void *a1)
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
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonFill::CompressedMeshPipelineSetup *>(v13, v12);
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
    std::__split_buffer<ggl::PolygonFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
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

void *ggl::FragmentedPool<ggl::GlowAlpha::MeshPipelineSetup>::pop(void *a1)
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
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GlowAlpha::MeshPipelineSetup *>(v13, v12);
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
    std::__split_buffer<ggl::GlowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::GlowAlpha::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
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

void *ggl::FragmentedPool<ggl::Glow::MeshPipelineSetup>::pop(void *a1)
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
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glow::MeshPipelineSetup *>(v13, v12);
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
    std::__split_buffer<ggl::Glow::MeshPipelineSetup *,geo::allocator_adapter<ggl::Glow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glow::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glow::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GlowAlpha::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GlowAlpha::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonFill::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonFill::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *>(uint64_t a1, void *a2)
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

int *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<float>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  v7 = *(a1 + 16 * a4 + 16);
  if (v7)
  {
    v9 = a1 + 16 * a4;
    if (*(v9 + 56))
    {
      v12 = *(v9 + 48);
      v13 = 8 * *(v9 + 56);
      while (1)
      {
        v14 = *(*v12 + 72);
        if (v14)
        {
          v15 = *v14 + 120 * *(v14 + a3 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v15, a2) != *(v15 + 12))
          {
            break;
          }
        }

        v12 += 8;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_3;
        }
      }

      return gss::CartoStyle<gss::PropertyID>::valueForExistingKeyAtZ<float>(v14, a2, a3);
    }

    else
    {
LABEL_3:
      v10 = *(v7 + 72);

      return gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<float>(v10, a2, a3, a5);
    }
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    return gss::defaultValueForKey<gss::PropertyID,float>(a2);
  }
}

int *gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<float>(uint64_t *a1, int a2, unsigned int a3, _BYTE *a4)
{
  if (!a1 || (a3 >= 0x17 ? (v6 = 23) : (v6 = a3), v7 = *(a1 + v6 + 16), v8 = *a1, v9 = *a1 + 120 * *(a1 + v6 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v9, a2) == *(v9 + 12)))
  {
    if (a4)
    {
      *a4 = 0;
    }

    return gss::defaultValueForKey<gss::PropertyID,float>(a2);
  }

  else
  {
    v10 = v8 + 120 * v7;
    v11 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v10 + 48), a2);
    if (v11 == *(v10 + 60))
    {
      return &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      return (*(v10 + 48) + *(v10 + 56) + 4 * v11);
    }
  }
}

void _setupRenderItems(float32x4_t *a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, float32_t a9, float a10, float a11, float32_t a12, float32_t a13, float32_t a14, float32_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v33 = 0;
  v62[4] = *MEMORY[0x1E69E9840];
  v62[0] = a7;
  v62[1] = a8;
  __asm { FMOV            V0.4S, #1.0 }

  v57 = _Q0;
  v62[2] = a16;
  v62[3] = a17;
  do
  {
    v40 = v62[v33];
    if (v40)
    {
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(v40 + 136) + 32));
      v41 = 0;
      v42 = v61;
      v61[5].f32[0] = a12;
      v42->f32[0] = a9;
      v42[4] = vsubq_f32(v57, *a1);
      do
      {
        v42[3].i32[v41] = *(a2 + v41 * 4);
        ++v41;
      }

      while (v41 != 4);
      v42[2].f32[0] = a13;
      v42[5].f32[3] = a15;
      v42[6].f32[0] = a14;
      ggl::BufferMemory::~BufferMemory(v60);
    }

    ++v33;
  }

  while (v33 != 4);
  if ((a21 & 1) == 0)
  {
    v43 = a1->f32[3] * 0.9;
    if (a7)
    {
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(a7 + 136) + 32));
      v44 = v61;
      v61[5].f32[1] = v43;
      v44[5].i32[2] = 1065353216;
      ggl::BufferMemory::~BufferMemory(v60);
    }

    if (a8)
    {
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(a8 + 136) + 32));
      v45 = v61;
      v61[5].f32[1] = v43;
      v45[5].i32[2] = 1065353216;
      ggl::BufferMemory::~BufferMemory(v60);
    }

    if (a16)
    {
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(a16 + 136) + 32));
      v46 = v61;
      v61[5].f32[1] = v43;
      v46[5].i32[2] = 1065353216;
      ggl::BufferMemory::~BufferMemory(v60);
    }

    if (a17)
    {
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(a17 + 136) + 32));
      v47 = v61;
      v61[5].f32[1] = v43;
      v47[5].i32[2] = -1082130432;
      ggl::BufferMemory::~BufferMemory(v60);
    }
  }

  if (a10 > 0.0 && a8 && a19)
  {
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(a8 + 136) + 32));
    v48 = 0;
    v49 = v61;
    v61[4] = vsubq_f32(v57, *a3);
    v50 = v49 + 3;
    v51 = a20;
    do
    {
      v50->i32[v48] = *(a4 + v48 * 4);
      ++v48;
    }

    while (v48 != 4);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v58, *(*(a8 + 136) + 32));
    *v59 = a10 + a9;
    ggl::BufferMemory::~BufferMemory(v58);
    *(a19 + 120) = 1;
    *(a19 + 32) = a8;
    ggl::BufferMemory::~BufferMemory(v60);
  }

  else
  {
    v51 = a20;
    if (a19)
    {
      *(a19 + 120) = 0;
    }
  }

  if (a11 > 0.0 && a16 && v51)
  {
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(a16 + 136) + 32));
    v52 = 0;
    v53 = v61;
    v61[4] = vsubq_f32(v57, *a5);
    v54 = v53 + 3;
    do
    {
      v54->i32[v52] = *(a6 + v52 * 4);
      ++v52;
    }

    while (v52 != 4);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v58, *(*(a16 + 136) + 32));
    *v59 = (a10 + a9) + a11;
    ggl::BufferMemory::~BufferMemory(v58);
    *(v51 + 120) = 1;
    *(v51 + 32) = a16;
    ggl::BufferMemory::~BufferMemory(v60);
  }

  else if (v51)
  {
    *(v51 + 120) = 0;
  }

  *(a18 + 32) = a7;
}

void md::RouteLineBatch::layoutTwoPasses(md::RouteLayoutContext const&,md::RouteStyleContext const&)::$_0::operator()(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v25, *(*(a2 + 136) + 32));
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v24, **(a2 + 136), 0);
  v9 = 0;
  v10 = v26;
  v11 = v26;
  v26->f32[0] = **a1 * 0.5;
  v12 = v11 + 1;
  do
  {
    v12->i32[v9] = a3->i32[v9];
    ++v9;
  }

  while (v9 != 4);
  v13 = *(*(v8 + 3120) + 48);
  v14 = 0.0;
  if (v13 != 0.0)
  {
    v15 = logf(v13 * (*(*(a1 + 16) + 128) * *(v24[5] + 64)));
    v14 = expf(floorf(v15 * 4.0) * -0.25);
  }

  v10[2].f32[0] = v14;
  ggl::BufferMemory::~BufferMemory(v24);
  ggl::BufferMemory::~BufferMemory(v25);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v25, *(*(a2 + 136) + 48));
  v16 = 0;
  v17 = v26;
  v26[5].i32[0] = *(*(a1 + 16) + 124);
  v17->f32[0] = **a1 * 0.5;
  __asm { FMOV            V1.4S, #1.0 }

  v17[4] = vsubq_f32(_Q1, *a3);
  do
  {
    v17[3].i32[v16] = *(a4 + v16 * 4);
    ++v16;
  }

  while (v16 != 4);
  v17[2].i32[0] = **(a1 + 24);
  v23 = *(a1 + 32);
  v17[6].i32[0] = *(v23 + 332);
  v17[5].i32[3] = *(v23 + 336);
  ggl::BufferMemory::~BufferMemory(v25);
}

void setupTrafficRenderItem(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, float a5, float a6, float a7, float a8)
{
  v16 = *(*(*(a4 + 32) + 136) + 32);
  ggl::BufferMemory::BufferMemory(v30);
  ggl::ResourceAccessor::accessConstantData(&v32, 0, v16, 1);
  ggl::BufferMemory::operator=(v30, &v32);
  ggl::BufferMemory::~BufferMemory(&v32);
  v17 = *a2;
  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v32, v17, v18);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = v35;
  if (v35)
  {
    *(a4 + 120) = 1;
    md::trafficWidthForSpeedAtZ(&v32, 3, *(a1 + 12));
    v20 = 0;
    v21 = v31;
    *v31 = v22 * a5;
    v21[45] = v22 * a6;
    v21[46] = a7;
    v21[44] = a8;
    do
    {
      md::trafficColorForSpeed(&v29, &v32, v20, 1, *(a1 + 12));
      v23 = &v31[4 * v20];
      v24 = v29;
      *(v23 + 1) = v29;
      *(v23 + 6) = v24;
      ++v20;
    }

    while (v20 != 5);
  }

  else
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v25 = GEOGetVectorKitRouteLog_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_1B2754000, v25, OS_LOG_TYPE_INFO, "***RouteLine failed to setupTrafficRenderItem", &v29, 2u);
    }
  }

  if (v35 == 1)
  {
    (*(*v32 + 56))(v32);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  if (v19)
  {
    v26 = *a3;
    v27 = a3[1];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v32, v26, v27);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }

    if (v35 == 1)
    {
      for (i = 0; i != 5; ++i)
      {
        md::trafficColorForSpeed(&v29, &v32, i, 1, *(a1 + 12));
        *&v31[4 * i + 24] = v29;
      }

      if (v35)
      {
        (*(*v32 + 56))(v32);
      }
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v33);
    }
  }

  ggl::BufferMemory::~BufferMemory(v30);
}

void sub_1B2C9C950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(exception_object);
}

int *md::trafficWidthForSpeedAtZ(int *result, int a2, float a3)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        return result;
      }

      v4 = *(*result + 24);
      if (a3 >= 0x17)
      {
        v18 = 23;
      }

      else
      {
        v18 = a3;
      }

      v6 = *v4;
      if (*v4)
      {
        v19 = *v6;
        v20 = *v6 == 1.0;
        if (*(v4 + 10) == 1 && v19 != 0.0 && v19 != 1.0)
        {
LABEL_37:
          v23 = *(v4 + 16);
          if (v23)
          {
            v24 = *(v23 + 72);
            if (v24)
            {
              v25 = *v24 + 120 * *(v24 + v18 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0x51u) != *(v25 + 12))
              {
                goto LABEL_109;
              }
            }

            if (*(v4 + 56))
            {
              v26 = *(v4 + 48);
              v27 = 8 * *(v4 + 56);
              while (1)
              {
                v28 = *(*v26 + 72);
                if (v28)
                {
                  v29 = *v28 + 120 * *(v28 + v18 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v29, 0x51u) != *(v29 + 12))
                  {
                    goto LABEL_109;
                  }
                }

                v26 += 8;
                v22 = 1;
                v27 -= 8;
                if (!v27)
                {
                  goto LABEL_106;
                }
              }
            }
          }

          v22 = 1;
LABEL_106:
          v69 = *(v4 + 16 * v22 + 16);
          if (!v69)
          {
            goto LABEL_161;
          }

          v70 = *(v69 + 72);
          if (!v70 || (v71 = *v70 + 120 * *(v70 + v18 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v71, 0x51u) == *(v71 + 12)))
          {
            v75 = v4 + 16 * v22;
            if (!*(v75 + 56))
            {
              goto LABEL_161;
            }

            v76 = *(v75 + 48);
            v77 = 8 * *(v75 + 56);
            while (1)
            {
              v78 = *(*v76 + 72);
              if (v78)
              {
                v79 = *v78 + 120 * *(v78 + v18 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v79, 0x51u) != *(v79 + 12))
                {
                  break;
                }
              }

              v76 += 8;
              v77 -= 8;
              if (!v77)
              {
                goto LABEL_161;
              }
            }
          }

LABEL_109:
          v57 = fminf(fmaxf(a3, 0.0), 23.0);
          if (v6)
          {
            v72 = *v6;
            v73 = *v6 == 1.0;
            if (*(v4 + 10) == 1 && v72 != 0.0 && v72 != 1.0)
            {
              goto LABEL_176;
            }
          }

          else
          {
            v73 = 0;
          }

          v61 = *(v4 + v73 + 11);
          if (v61 != 2)
          {
            v62 = v4;
            v63 = 81;
            goto LABEL_170;
          }

LABEL_176:
          v108 = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 81, 0, &v108, v57);
          v105 = v4;
          v106 = 81;
          return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v105, v106, 1, &v107, v57);
        }
      }

      else
      {
        v20 = 0;
      }

      v22 = *(v4 + v20 + 11);
      if (v22 != 2)
      {
        goto LABEL_106;
      }

      goto LABEL_37;
    }

    v4 = *(*result + 24);
    if (a3 >= 0x17)
    {
      v42 = 23;
    }

    else
    {
      v42 = a3;
    }

    v6 = *v4;
    if (*v4)
    {
      v43 = *v6;
      v44 = *v6 == 1.0;
      if (*(v4 + 10) == 1 && v43 != 0.0 && v43 != 1.0)
      {
LABEL_77:
        v47 = *(v4 + 16);
        if (v47)
        {
          v48 = *(v47 + 72);
          if (v48)
          {
            v49 = *v48 + 120 * *(v48 + v42 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v49, 0x46u) != *(v49 + 12))
            {
              goto LABEL_147;
            }
          }

          if (*(v4 + 56))
          {
            v50 = *(v4 + 48);
            v51 = 8 * *(v4 + 56);
            while (1)
            {
              v52 = *(*v50 + 72);
              if (v52)
              {
                v53 = *v52 + 120 * *(v52 + v42 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v53, 0x46u) != *(v53 + 12))
                {
                  goto LABEL_147;
                }
              }

              v50 += 8;
              v46 = 1;
              v51 -= 8;
              if (!v51)
              {
                goto LABEL_144;
              }
            }
          }
        }

        v46 = 1;
LABEL_144:
        v91 = *(v4 + 16 * v46 + 16);
        if (!v91)
        {
          goto LABEL_161;
        }

        v92 = *(v91 + 72);
        if (!v92 || (v93 = *v92 + 120 * *(v92 + v42 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v93, 0x46u) == *(v93 + 12)))
        {
          v97 = v4 + 16 * v46;
          if (!*(v97 + 56))
          {
            goto LABEL_161;
          }

          v98 = *(v97 + 48);
          v99 = 8 * *(v97 + 56);
          while (1)
          {
            v100 = *(*v98 + 72);
            if (v100)
            {
              v101 = *v100 + 120 * *(v100 + v42 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v101, 0x46u) != *(v101 + 12))
              {
                break;
              }
            }

            v98 += 8;
            v99 -= 8;
            if (!v99)
            {
              goto LABEL_161;
            }
          }
        }

LABEL_147:
        v57 = fminf(fmaxf(a3, 0.0), 23.0);
        if (v6)
        {
          v94 = *v6;
          v95 = *v6 == 1.0;
          if (*(v4 + 10) == 1 && v94 != 0.0 && v94 != 1.0)
          {
            goto LABEL_178;
          }
        }

        else
        {
          v95 = 0;
        }

        v61 = *(v4 + v95 + 11);
        if (v61 != 2)
        {
          v62 = v4;
          v63 = 70;
          goto LABEL_170;
        }

LABEL_178:
        v108 = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 70, 0, &v108, v57);
        v105 = v4;
        v106 = 70;
        return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v105, v106, 1, &v107, v57);
      }
    }

    else
    {
      v44 = 0;
    }

    v46 = *(v4 + v44 + 11);
    if (v46 != 2)
    {
      goto LABEL_144;
    }

    goto LABEL_77;
  }

  if (!a2)
  {
    v4 = *(*result + 24);
    if (a3 >= 0x17)
    {
      v30 = 23;
    }

    else
    {
      v30 = a3;
    }

    v6 = *v4;
    if (*v4)
    {
      v31 = *v6;
      v32 = *v6 == 1.0;
      if (*(v4 + 10) == 1 && v31 != 0.0 && v31 != 1.0)
      {
LABEL_57:
        v35 = *(v4 + 16);
        if (v35)
        {
          v36 = *(v35 + 72);
          if (v36)
          {
            v37 = *v36 + 120 * *(v36 + v30 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v37, 0x30u) != *(v37 + 12))
            {
              goto LABEL_128;
            }
          }

          if (*(v4 + 56))
          {
            v38 = *(v4 + 48);
            v39 = 8 * *(v4 + 56);
            while (1)
            {
              v40 = *(*v38 + 72);
              if (v40)
              {
                v41 = *v40 + 120 * *(v40 + v30 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v41, 0x30u) != *(v41 + 12))
                {
                  goto LABEL_128;
                }
              }

              v38 += 8;
              v34 = 1;
              v39 -= 8;
              if (!v39)
              {
                goto LABEL_125;
              }
            }
          }
        }

        v34 = 1;
LABEL_125:
        v80 = *(v4 + 16 * v34 + 16);
        if (!v80)
        {
          goto LABEL_161;
        }

        v81 = *(v80 + 72);
        if (!v81 || (v82 = *v81 + 120 * *(v81 + v30 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v82, 0x30u) == *(v82 + 12)))
        {
          v86 = v4 + 16 * v34;
          if (!*(v86 + 56))
          {
            goto LABEL_161;
          }

          v87 = *(v86 + 48);
          v88 = 8 * *(v86 + 56);
          while (1)
          {
            v89 = *(*v87 + 72);
            if (v89)
            {
              v90 = *v89 + 120 * *(v89 + v30 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v90, 0x30u) != *(v90 + 12))
              {
                break;
              }
            }

            v87 += 8;
            v88 -= 8;
            if (!v88)
            {
              goto LABEL_161;
            }
          }
        }

LABEL_128:
        v57 = fminf(fmaxf(a3, 0.0), 23.0);
        if (v6)
        {
          v83 = *v6;
          v84 = *v6 == 1.0;
          if (*(v4 + 10) == 1 && v83 != 0.0 && v83 != 1.0)
          {
            goto LABEL_177;
          }
        }

        else
        {
          v84 = 0;
        }

        v61 = *(v4 + v84 + 11);
        if (v61 != 2)
        {
          v62 = v4;
          v63 = 48;
          goto LABEL_170;
        }

LABEL_177:
        v108 = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 48, 0, &v108, v57);
        v105 = v4;
        v106 = 48;
        return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v105, v106, 1, &v107, v57);
      }
    }

    else
    {
      v32 = 0;
    }

    v34 = *(v4 + v32 + 11);
    if (v34 != 2)
    {
      goto LABEL_125;
    }

    goto LABEL_57;
  }

  if (a2 != 1)
  {
    return result;
  }

  v4 = *(*result + 24);
  if (a3 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = a3;
  }

  v6 = *v4;
  if (!*v4)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v7 = *v6;
  v8 = *v6 == 1.0;
  if (*(v4 + 10) != 1 || (v7 != 0.0 ? (v9 = v7 == 1.0) : (v9 = 1), v9))
  {
LABEL_14:
    v10 = *(v4 + v8 + 11);
    if (v10 != 2)
    {
      goto LABEL_87;
    }
  }

  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = *(v11 + 72);
    if (v12)
    {
      v13 = *v12 + 120 * *(v12 + v5 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v13, 0x3Bu) != *(v13 + 12))
      {
        goto LABEL_90;
      }
    }

    if (*(v4 + 56))
    {
      v14 = *(v4 + 48);
      v15 = 8 * *(v4 + 56);
      while (1)
      {
        v16 = *(*v14 + 72);
        if (v16)
        {
          v17 = *v16 + 120 * *(v16 + v5 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v17, 0x3Bu) != *(v17 + 12))
          {
            goto LABEL_90;
          }
        }

        v14 += 8;
        v10 = 1;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_87;
        }
      }
    }
  }

  v10 = 1;
LABEL_87:
  v54 = *(v4 + 16 * v10 + 16);
  if (!v54)
  {
    goto LABEL_161;
  }

  v55 = *(v54 + 72);
  if (!v55 || (v56 = *v55 + 120 * *(v55 + v5 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v56, 0x3Bu) == *(v56 + 12)))
  {
    v64 = v4 + 16 * v10;
    if (*(v64 + 56))
    {
      v65 = *(v64 + 48);
      v66 = 8 * *(v64 + 56);
      do
      {
        v67 = *(*v65 + 72);
        if (v67)
        {
          v68 = *v67 + 120 * *(v67 + v5 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v68, 0x3Bu) != *(v68 + 12))
          {
            goto LABEL_90;
          }
        }

        v65 += 8;
        v66 -= 8;
      }

      while (v66);
    }

LABEL_161:
    v57 = fminf(fmaxf(a3, 0.0), 23.0);
    if (v6)
    {
      v102 = *v6;
      v103 = *v6 == 1.0;
      if (*(v4 + 10) == 1 && v102 != 0.0 && v102 != 1.0)
      {
        goto LABEL_173;
      }
    }

    else
    {
      v103 = 0;
    }

    v61 = *(v4 + v103 + 11);
    if (v61 != 2)
    {
      v62 = v4;
      v63 = 164;
      goto LABEL_170;
    }

LABEL_173:
    v108 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 164, 0, &v108, v57);
    v105 = v4;
    v106 = 164;
    return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v105, v106, 1, &v107, v57);
  }

LABEL_90:
  v57 = fminf(fmaxf(a3, 0.0), 23.0);
  if (v6)
  {
    v58 = *v6;
    v59 = *v6 == 1.0;
    if (*(v4 + 10) == 1 && v58 != 0.0 && v58 != 1.0)
    {
      goto LABEL_175;
    }
  }

  else
  {
    v59 = 0;
  }

  v61 = *(v4 + v59 + 11);
  if (v61 == 2)
  {
LABEL_175:
    v108 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 59, 0, &v108, v57);
    v105 = v4;
    v106 = 59;
    return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v105, v106, 1, &v107, v57);
  }

  v62 = v4;
  v63 = 59;
LABEL_170:

  return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v62, v63, v61, 0, v57);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<float>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 4 * a2, 0x100004052888210uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void md::FlyoverRenderable::~FlyoverRenderable(md::FlyoverRenderable *this)
{
  md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(this);

  JUMPOUT(0x1B8C62190);
}

void md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A37D70;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LineLabelFeature::removeTile(mdm::zone_mallocator *a1, void *a2)
{
  v3 = *(a1 + 24);
  v4 = mdm::zone_mallocator::instance(a1);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v4);
  *v5 = 10;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  v6 = a2[1];
  *(v5 + 3) = *a2;
  *(v5 + 4) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(v5 + 11) = 0;
  *(v5 + 72) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 17) = 0;
  *(v5 + 72) = 255;
  *(v5 + 37) = 0;
  *(v5 + 38) = 0;
  *(v5 + 20) = 0;
  v5[168] = 1;
  *(v5 + 22) = 0;
  *(v5 + 23) = 0;
  *(v5 + 12) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(v5 + 13) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v5[224] = 0;
  *(v5 + 57) = 0;
  *(v5 + 116) = 256;
  v5[234] = 0;
  *(v5 + 30) = 0;
  *(v5 + 31) = 0;
  v7 = v5;
  md::LabelLineStore::queueWorkUnit(v3, &v7);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v7, 0);
}

void sub_1B2C9D770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(uint64_t a1, void *a2)
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

void sub_1B2C9D948(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LineLabelFeature::publicShieldName(md::LineLabelFeature *this)
{
  if (*(this + 44) == *(this + 45))
  {
    return 0;
  }

  else
  {
    return *(this + 44);
  }
}

double md::LineLabelFeature::minLabelSpacing(md::LineLabelFeature *this, int a2, const LabelLayoutContext *a3)
{
  v3 = md::LineLabelFeature::roadMetricsForZ(this, a2, a3);
  if (!v3)
  {
    return 0.0;
  }

  LODWORD(result) = *(v3 + 18);
  return result;
}

void md::LineLabelFeature::secondaryLabelPoint(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  md::LineLabelPlacer::positionForIdentifier(&v7, a1 + 192, *a2);
  if (v7)
  {
    v6 = 0uLL;
    (*(*v7 + 64))(v7, &v6, a4);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = v6;
    *(a3 + 40) = 2139095039;
    *(a3 + 44) = 256;
    *(a3 + 46) = 1;
    *(a3 + 48) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 48) = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }
}

void sub_1B2C9DB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LineLabelFeature::labelTypeAtPosition(uint64_t a1, unsigned int *a2)
{
  md::LineLabelPlacer::positionForIdentifier(&v4, a1 + 192, *a2);
  if (v4 && (*(v4 + 9) - 1) <= 7u)
  {
    v2 = 0x605030908070402uLL >> (8 * ((*(v4 + 9) - 1) & 0x1Fu));
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v2;
}

void md::LineLabelFeature::~LineLabelFeature(md::LineLabelFeature *this)
{
  *this = &unk_1F29E68D8;
  v2 = *(this + 53);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v9 = this + 384;
  std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = this + 352;
  std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v9);
  std::__tree<std::__value_type<unsigned char,md::RoadMetricsEntry>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,md::RoadMetricsEntry>,std::less<unsigned char>,true>,geo::allocator_adapter<std::__value_type<unsigned char,md::RoadMetricsEntry>,mdm::zone_mallocator>>::destroy(*(this + 41));
  v3 = std::unique_ptr<md::LineLabelStyleEntry>::reset[abi:nn200100](this + 39, 0);
  v4 = *(this + 34);
  if (v4)
  {
    v5 = *(this + 35);
    v6 = *(this + 34);
    if (v5 != v4)
    {
      do
      {
        v5 -= 10;
        std::allocator_traits<geo::allocator_adapter<md::LineLabelStyleEntry,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::LineLabelStyleEntry,void,0>(v5);
      }

      while (v5 != v4);
      v6 = *(this + 34);
    }

    *(this + 35) = v4;
    v7 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LineLabelStyleEntry>(v7, v6);
  }

  std::__tree<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,mdm::zone_mallocator>>::destroy(*(this + 29));
  v8 = *(this + 25);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  md::LabelFeature::~LabelFeature(this);
}

void std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v3 -= 64;
        std::allocator_traits<geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,void,0>(v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>>(v6, v4);
  }
}

void std::__tree<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,mdm::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,void *>>(v3, a1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,void *>>(uint64_t a1, void *a2)
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

void std::allocator_traits<geo::allocator_adapter<md::LineLabelStyleEntry,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::LineLabelStyleEntry,void,0>(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a1[1];
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LineLabelStyleEntry>(uint64_t a1, void *a2)
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

void std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>(char *a1)
{
  if (a1[23] < 0)
  {
    v2 = *a1;
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelShieldEntry>(uint64_t a1, void *a2)
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

void std::allocator_traits<geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,void,0>(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  if (*(a1 + 23) < 0)
  {
    v4 = *a1;
    v5 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>>(uint64_t a1, void *a2)
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

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A3F0E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A3F108;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A3F0E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>::~storage(a1);
}

uint64_t md::CompositeLabelPart::publicName(md::CompositeLabelPart *this)
{
  v1 = *(this + 72);
  v2 = *(this + 73);
  while (v1 != v2)
  {
    result = (*(**v1 + 840))(*v1);
    if (result)
    {
      return result;
    }

    ++v1;
  }

  return 0;
}

uint64_t md::RingIconLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    return md::LabelIconStyleMonitor::needsCrossfade(a1 + 632, **(a1 + 32), a4);
  }

  else
  {
    return 0;
  }
}

float md::CompositeLabelPart::calloutAnchorRect(md::CompositeLabelPart *this, uint64_t a2)
{
  v20 = xmmword_1B33B0730;
  v2 = *(this + 72);
  v3 = *(this + 73);
  if (v2 == v3)
  {
    return 3.4028e38;
  }

  do
  {
    v5 = (*(**v2 + 672))(*v2, a2);
    v6 = 0;
    v17 = v5;
    v18 = v7;
    v19[0] = v8;
    v19[1] = v9;
    v10 = &v20;
    v11 = &v17;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = *v11;
      v15 = *v10;
      *(&v20 + v6 + 2) = fmaxf(*(&v20 + v6 + 2), *&v19[v6]);
      *v10 = fminf(v14, v15);
      v11 = &v18;
      v10 = &v20 + 1;
      v6 = 1;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    ++v2;
  }

  while (v2 != v3);
  return *&v20;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPart *>(uint64_t a1, uint64_t a2)
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

uint64_t md::RingIconLabelPart::pushToRenderModel(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 612) == 1)
  {
    a3 = *(a1 + 608);
  }

  (*(***(a1 + 576) + 128))(**(a1 + 576), a2, a3);
  v5 = *(**(*(a1 + 576) + 8) + 128);
  v6.n128_f32[0] = a3;

  return v5(v6);
}

void md::RingIconLabelPart::~RingIconLabelPart(md::RingIconLabelPart *this)
{
  *this = &unk_1F29E6BB8;
  if (*(this + 655) < 0)
  {
    v2 = *(this + 79);
    v3 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
  v5 = mdm::zone_mallocator::instance(v4);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, this);
}

{
  *this = &unk_1F29E6BB8;
  if (*(this + 655) < 0)
  {
    v2 = *(this + 79);
    v3 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
}

uint64_t md::AnimatedTextureLabelPart::checkResourcesReady(md::AnimatedTextureLabelPart *this, md::LabelManager *a2)
{
  if (*(this + 72))
  {
    return 37;
  }

  else
  {
    return 16;
  }
}

uint64_t md::AnimatedTextureLabelPart::pushToRenderModel(uint64_t result, gdc::Registry **a2, float a3)
{
  if (*(result + 692) == 1)
  {
    a3 = *(result + 688);
  }

  v3 = *(result + 800) * a3;
  if (v3 >= 0.0039062)
  {
    *(result + 598) = *(result + 558);
    v4 = *(result + 32);
    v5 = 0;
    if (*(v4 + 78) == 1)
    {
      v5 = *(v4 + 72);
    }

    *(result + 624) = v5;
    *(result + 594) = *(result + 556);
    *(result + 593) = 0;
    *(result + 600) = *(v4 + 77) ^ 1;
    gdc::Registry::create(*a2);
  }

  *(result + 552) = fmaxf(fminf(v3, 1.0), 0.0);
  return result;
}

uint64_t std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
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

BOOL gdc::ComponentStorageWrapper<md::IconMeshDescriptor>::remove(void *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 40 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    *v6 = *(v7 - 40);
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__value_func[abi:nn200100](v13, v7 - 32);
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::swap[abi:nn200100](v13, (v6 + 8));
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100](v13);
    v8 = a1[11];
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100](v8 - 32);
    a1[11] = v8 - 40;
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

uint64_t gdc::ComponentStorageWrapper<md::IconMeshDescriptor>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::IconMeshDescriptor>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

double std::__function::__func<md::AnimatedTextureLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0,std::allocator<md::AnimatedTextureLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0>,void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  *(a3 + 64) = (*(*v4 + 144))(v4);
  *(a3 + 48) = *(v4 + 552);
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 52) = _D0;
  if (*(v4 + 656) == 1)
  {
    v11.i32[0] = *(v4 + 640);
    v10 = *(v4 + 644);
    v11.i32[1] = *(v4 + 652);
  }

  else
  {
    v10 = 0xFF7FFFFF7F7FFFFFLL;
    v11 = 0xFF7FFFFF7F7FFFFFLL;
  }

  *&v12 = __PAIR64__(v10.u32[0], v11.u32[0]);
  *(&v12 + 1) = vrev64_s32(v10);
  *&v13 = vzip2_s32(v10, v11);
  *(&v13 + 1) = v11;
  *a3 = v12;
  *(a3 + 16) = v13;
  result = 0.0;
  *(a3 + 32) = xmmword_1B33B0720;
  return result;
}

uint64_t std::__function::__func<md::AnimatedTextureLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0,std::allocator<md::AnimatedTextureLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0>,void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E72F0;
  a2[1] = v2;
  return result;
}

BOOL gdc::ComponentStorageWrapper<md::LabelRenderDescriptorComponent>::remove(void *a1, uint64_t a2)
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

uint64_t gdc::ComponentStorageWrapper<md::LabelRenderDescriptorComponent>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t md::AnimatedTextureLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  v8 = *(a2 + 896);
  *(a1 + 536) = v8;
  v9 = *(a2 + 900);
  *(a1 + 540) = v9;
  v10 = *(a1 + 528);
  v11 = v10 * v9;
  v12 = *(a1 + 532);
  v13 = -((v12 * v9) - (v10 * v8));
  v14 = v11 + (v12 * v8);
  *(a1 + 328) = v13;
  *(a1 + 332) = v14;
  v15 = fabsf(v13 + -1.0);
  *(a1 + 508) = v15 > 0.000001;
  v16 = a5->f32[0];
  *(a1 + 544) = a5->i32[0];
  v17 = a5->f32[1];
  *(a1 + 548) = v17;
  v18 = *(a1 + 728);
  v19 = *(a1 + 720);
  if (0x8E38E38E38E38E39 * ((v18 - v19) >> 4) <= *(a1 + 563))
  {
    if (v19 == v18 || (*(a1 + 785) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v19 += 144 * *(a1 + 563);
  }

  if (v19)
  {
    v20 = *(v19 + 72);
    if (v20)
    {
      *(a1 + 688) = fmaxf(fminf(*(v19 + 80) + (*(*v20 + 32 * *(v20 + 32) + 8) * (*(v19 + 84) - *(v19 + 80))), 1.0), 0.0);
      *(a1 + 692) = 1;
    }

    v21 = *(v19 + 88);
    if (v21)
    {
      v22 = (*(*v21 + 32 * *(v21 + 32) + 8) + -0.5) * *(a1 + 660);
      v23 = v14 * v22;
      if (v15 <= 0.000001)
      {
        v23 = 0.0;
        v13 = 1.0;
      }

      *(a1 + 544) = v16 + (v22 * v13);
      *(a1 + 548) = v17 + v23;
    }
  }

LABEL_12:
  md::AnimatedTextureLabelPart::generateModelMatrix(*(a1 + 672), *(a1 + 48), (a1 + 544));
  *(a1 + 424) = *(a1 + 672);
  v24 = vadd_f32(*a5, *a4);
  *(a1 + 520) = v24;
  *(a1 + 344) = v24;
  md::CollisionObject::setupShapeData(a1 + 312);
  *(a1 + 408) = *(a1 + 796);
  return 37;
}

double md::AnimatedTextureLabelPart::generateModelMatrix(_OWORD *a1, double *a2, float32x2_t *a3)
{
  memset(&v24[40], 0, 40);
  memset(&v25[8], 0, 32);
  memset(&v24[8], 0, 32);
  *v24 = 0x3FF0000000000000;
  *&v24[40] = 0x3FF0000000000000;
  *v25 = 0x3FF0000000000000;
  *&v25[40] = 0x3FF0000000000000;
  *&v16 = 0;
  if (*a3)
  {
    memset(&v24[8], 0, 32);
    memset(&v24[48], 0, 32);
    *v24 = 0x3FF0000000000000;
    *&v24[40] = 0x3FF0000000000000;
    v3 = vcvtq_f64_f32(*a3);
    *v25 = xmmword_1B33B0680;
    *&v25[16] = v3;
    *&v25[32] = xmmword_1B33B0740;
  }

  if (a2)
  {
    for (i = 0; i != 4; ++i)
    {
      v5 = 0;
      v6 = v24;
      do
      {
        v7 = 0;
        v8 = 0.0;
        v9 = a2;
        do
        {
          v10 = *v9;
          v9 += 4;
          v8 = v8 + *&v6[v7] * v10;
          v7 += 8;
        }

        while (v7 != 32);
        *(&v16 + 4 * v5++ + i) = v8;
        v6 += 32;
      }

      while (v5 != 4);
      ++a2;
    }
  }

  else
  {
    v20 = *&v24[64];
    v21 = *v25;
    v22 = *&v25[16];
    v23 = *&v25[32];
    v16 = *v24;
    v17 = *&v24[16];
    v18 = *&v24[32];
    v19 = *&v24[48];
  }

  v11 = v21;
  a1[4] = v20;
  a1[5] = v11;
  v12 = v23;
  a1[6] = v22;
  a1[7] = v12;
  v13 = v17;
  *a1 = v16;
  a1[1] = v13;
  result = *&v18;
  v15 = v19;
  a1[2] = v18;
  a1[3] = v15;
  return result;
}

void md::AnimatedTextureLabelPart::updateForDisplay(md::AnimatedTextureLabelPart *this)
{
  *(this + 165) = *(this + 166);
  md::CollisionObject::resetWithRects(this + 39, 1u);
  if (*(this + 656))
  {
    md::CollisionObject::addRect(this + 312, this + 160);
    *(this + 199) = *(this + 198);
  }

  else
  {
    v2 = std::__throw_bad_optional_access[abi:nn200100]();
    md::AnimatedTextureLabelPart::layoutForStaging(v2);
  }
}

uint64_t md::AnimatedTextureLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = (*(*a1 + 352))(a1);
  if (result == 37)
  {
    if (*(a1 + 656) == 1)
    {
      v9 = *(*(a1 + 32) + 20);
      *(a1 + 176) = v9;
      *(a1 + 112) = *a3;
      *(a1 + 116) = a3[1];
      *(a1 + 270) = fabsf(v9 + -1.0) > 0.000001;
      v10 = *(a2 + 424);
      v11 = *(v10 + 464);
      *(a1 + 296) = v11;
      v12 = *(v10 + 468);
      *(a1 + 300) = v12;
      v13 = *(a1 + 288);
      v14 = v13 * v12;
      v15 = *(a1 + 292);
      v16 = -((v15 * v12) - (v13 * v11));
      *(a1 + 88) = v16;
      *(a1 + 92) = v14 + (v15 * v11);
      *(a1 + 268) = fabsf(v16 + -1.0) > 0.000001;
      *(a1 + 304) = *a4;
      *(a1 + 308) = a4[1];
      *(a1 + 280) = *a3;
      *(a1 + 284) = a3[1];
      *(a1 + 104) = *a3;
      *(a1 + 108) = a3[1];
      md::CollisionObject::setupShapeData(a1 + 72);
      *(a1 + 168) = *(a1 + 792);
      if (*(a1 + 566) == 1)
      {
        v17 = *(a1 + 680);
        if (!v17)
        {
          operator new();
        }

        md::AnimatedTextureLabelPart::generateModelMatrix(v17, *(a1 + 40), (a1 + 304));
        *(a1 + 184) = *(a1 + 680);
      }

      return 37;
    }

    else
    {
      return 13;
    }
  }

  return result;
}

float md::AnimatedTextureLabelPart::updateWithStyle(md::AnimatedTextureLabelPart *this, md::LabelManager *a2)
{
  result = *(**(this + 4) + 172);
  *(this + 198) = result;
  return result;
}

void md::AnimatedTextureLabelPart::~AnimatedTextureLabelPart(md::AnimatedTextureLabelPart *this)
{
  *this = &unk_1F29E6F58;
  v6 = (this + 752);
  std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 720);
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v2 = *(this + 85);
  *(this + 85) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 84);
  *(this + 84) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
  v5 = mdm::zone_mallocator::instance(v4);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, this);
}

{
  *this = &unk_1F29E6F58;
  v4 = (this + 752);
  std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (this + 720);
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(this + 85);
  *(this + 85) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 84);
  *(this + 84) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAnimation>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelAnimationTrack>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAnimationItem>(uint64_t a1, void *a2)
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

void md::AnimatedTextureLabelPart::AnimatedTextureLabelPart(md::LabelPart *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  md::LabelPart::LabelPart(a1);
  *v9 = &unk_1F29E6F58;
  *(v9 + 576) = a4;
  *(v9 + 584) = a5;
  *(v9 + 592) = 1;
  *(v9 + 598) = 0;
  *(v9 + 600) = 1;
  *(v9 + 602) = 0;
  *(v9 + 624) = 0;
  *(v9 + 628) = 258;
  *(v9 + 656) = 0;
  *(v9 + 660) = 0;
  *(v9 + 692) = 0;
  *(v9 + 630) = 0;
  *(v9 + 637) = 0;
  *(v9 + 672) = 0u;
  *(v9 + 688) = 0;
  *(v9 + 696) = a2;
  *(v9 + 704) = a3;
  *(v9 + 768) = 0;
  *(v9 + 752) = 0u;
  *(v9 + 784) = 0;
  *(v9 + 786) = 0;
  *(v9 + 712) = 0u;
  *(v9 + 728) = 0u;
  *(v9 + 792) = 0;
  *(v9 + 800) = 1065353216;
  *(v9 + 596) = 7;
  *(v9 + 632) = 1;
  *(v9 + 592) = 2;
  *(v9 + 601) = 0;
  *(v9 + 608) = *(v9 + 576);
  *(v9 + 616) = *(v9 + 584);
  operator new();
}

void sub_1B2C9F8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 720);
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v13 = *(v10 + 680);
  *(v10 + 680) = 0;
  if (v13)
  {
    MEMORY[0x1B8C62190](v13, 0x1000C40AE2C30F4);
  }

  v14 = *v11;
  *v11 = 0;
  if (v14)
  {
    MEMORY[0x1B8C62190](v14, 0x1000C40AE2C30F4);
  }

  *v10 = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject((v10 + 312));
  md::CollisionObject::~CollisionObject((v10 + 72));
  _Unwind_Resume(a1);
}

void md::AnimatedTextureLabelPart::setMeshRectForStaging(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 656) == 1)
  {
    if (md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==((a1 + 640), a2))
    {
      return;
    }

    *(a1 + 640) = *a2;
    *(a1 + 644) = *(a2 + 4);
    *(a1 + 648) = *(a2 + 8);
    *(a1 + 652) = *(a2 + 12);
  }

  else
  {
    *(a1 + 640) = *a2;
    *(a1 + 656) = 1;
  }

  md::CollisionObject::resetWithRects((a1 + 72), 1u);
  if (*(a1 + 656))
  {

    md::CollisionObject::addRect(a1 + 72, (a1 + 640));
  }

  else
  {
    v4 = std::__throw_bad_optional_access[abi:nn200100]();
    std::set<std::shared_ptr<md::mun::MuninMetadata>>::insert[abi:nn200100]<std::__tree_const_iterator<std::shared_ptr<md::mun::MuninMetadata>,std::__tree_node<std::shared_ptr<md::mun::MuninMetadata>,void *> *,long>>(v4);
  }
}

void *std::set<std::shared_ptr<md::mun::MuninMetadata>>::insert[abi:nn200100]<std::__tree_const_iterator<std::shared_ptr<md::mun::MuninMetadata>,std::__tree_node<std::shared_ptr<md::mun::MuninMetadata>,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = v3[4];
      if (v5[4] < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = result + 1;
        }
      }

      else
      {
        v10 = result + 1;
        if (v4)
        {
          v10 = result + 1;
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = v4[4];
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

void md::mun::MuninMetadata::neighborsWithinRadiusInMetadatas<std::set<std::shared_ptr<md::mun::MuninMetadata>>>(void *a1, double *a2, uint64_t a3, double a4)
{
  v4 = a1 + 1;
  v5 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      md::mun::MuninMetadata::neighborsWithinRadius(v5[4], a2, a3, 0, a4);
      v9 = v5[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v4);
  }
}

void *md::mun::MuninNavigationGraph::MuninNavigationGraph(void *a1, void *a2)
{
  v3 = a1;
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  std::set<std::shared_ptr<md::mun::MuninMetadata>>::insert[abi:nn200100]<std::__tree_const_iterator<std::shared_ptr<md::mun::MuninMetadata>,std::__tree_node<std::shared_ptr<md::mun::MuninMetadata>,void *> *,long>>(a1, *a2, a2 + 1);
  *(v3 + 3) = 0u;
  v5 = v3 + 3;
  *(v3 + 5) = 0u;
  *(v3 + 14) = 1065353216;
  v48 = a2;
  v6 = *a2;
  if (*a2 == v4)
  {
    v12 = 0.0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v10 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v10 = v9[2];
          v11 = *v10 == v9;
          v9 = v10;
        }

        while (!v11);
      }

      v7 += 0x63FB9AEB1FDCD759 * ((*(v6[4] + 176) - *(v6[4] + 168)) >> 3);
      v6 = v10;
    }

    while (v10 != v4);
    v12 = v7;
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>((v3 + 3), vcvtps_u32_f32(v12));
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v13 = *a2;
  if (*a2 != v4)
  {
    v14 = 0;
    v50 = v3;
    v53 = v3 + 3;
    v46 = a2 + 1;
    while (1)
    {
      v47 = v13;
      v15 = v13[4];
      v16 = *(v15 + 168);
      v49 = *(v15 + 176);
      if (v16 == v49)
      {
        goto LABEL_51;
      }

      do
      {
        v57 = v14;
        v54 = *(v16 + 8);
        v55 = *(v16 + 24);
        md::mun::MuninMetadata::neighborsWithinRadiusInMetadatas<std::set<std::shared_ptr<md::mun::MuninMetadata>>>(v48, &v54, &v56, 25.0);
        v17 = v57;
        __p = v56;
        if (v56 == v57)
        {
          goto LABEL_50;
        }

        v18 = 0x9DDFEA08EB382D69 * ((8 * (v16 & 0x1FFFFFFF) + 8) ^ HIDWORD(v16));
        v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v18 >> 47) ^ v18);
        v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
        v21 = v56;
        do
        {
          v22 = *v21;
          if (*v21 == v16 || *v22 == *v16 || vabdd_f64(*(v22 + 72), *(v16 + 72)) > 4.0)
          {
            goto LABEL_49;
          }

          v23 = v3[4];
          if (!*&v23)
          {
            goto LABEL_35;
          }

          v24 = vcnt_s8(v23);
          v24.i16[0] = vaddlv_u8(v24);
          if (v24.u32[0] > 1uLL)
          {
            v25 = v20;
            if (v20 >= *&v23)
            {
              v25 = v20 % *&v23;
            }
          }

          else
          {
            v25 = v20 & (*&v23 - 1);
          }

          v26 = *(*v5 + 8 * v25);
          if (!v26 || (v27 = *v26) == 0)
          {
LABEL_35:
            operator new();
          }

          while (1)
          {
            v28 = v27[1];
            if (v28 == v20)
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
              goto LABEL_35;
            }

LABEL_34:
            v27 = *v27;
            if (!v27)
            {
              goto LABEL_35;
            }
          }

          if (v27[2] != v16)
          {
            goto LABEL_34;
          }

          v30 = v27[3];
          v29 = v27[4];
          v31 = (v29 - v30);
          v32 = ((v29 - v30) >> 3) + 1;
          v33 = v27[6];
          if (v33 < v32)
          {
            v52 = v27[5];
            v34 = (1 << -__clz(v33 + 1));
            if (v33 >= 0xFFFFFFFFFFFFFFFELL)
            {
              v34 = 1;
            }

            if (v34 <= v32)
            {
              v35 = v32;
            }

            else
            {
              v35 = v34;
            }

            v36 = malloc_type_malloc(8 * v35, 0x6004044C4A2DFuLL);
            v37 = v36;
            v38 = v27[3];
            v39 = v27[4];
            if (v38 != v39)
            {
              v40 = v36;
              do
              {
                v41 = *v38++;
                *v40++ = v41;
              }

              while (v38 != v39);
            }

            if (v30 != v52)
            {
              free(v27[3]);
            }

            v29 = &v31[v37];
            v27[3] = v37;
            v27[4] = &v31[v37];
            v27[6] = v35;
            v3 = v50;
          }

          *v29 = v22;
          ++v27[4];
          v5 = v53;
LABEL_49:
          ++v21;
        }

        while (v21 != v17);
LABEL_50:
        v16 += 1864;
        v14 = __p;
      }

      while (v16 != v49);
LABEL_51:
      v42 = v47;
      v43 = v47[1];
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
          v44 = v42[2];
          v11 = *v44 == v42;
          v42 = v44;
        }

        while (!v11);
      }

      v13 = v44;
      if (v44 == v46)
      {
        if (v14)
        {
          operator delete(v14);
        }

        return v3;
      }
    }
  }

  return v3;
}

void md::mun::MuninNavigationGraph::~MuninNavigationGraph(md::mun::MuninNavigationGraph *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4 != v2[5])
      {
        free(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 1));
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,anonymous namespace::PointPathTrace>> &,std::__wrap_iter<std::pair<double,anonymous namespace::PointPathTrace>*>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = result + 24 * v3;
    v5 = a2 - 24;
    v6 = *(a2 - 24);
    v7 = *v4;
    if (*v4 == v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = -127;
    }

    if (*v4 > v6)
    {
      v8 = 1;
    }

    if (*v4 < v6)
    {
      v8 = -1;
    }

    if (v8 || ((v9 = *(v4 + 8), v10 = *(a2 - 16), v9 < v10) ? (LOBYTE(v8) = -1) : (LOBYTE(v8) = 1), v10 != v9))
    {
      if (v8 == 1)
      {
        v11 = *(a2 - 16);
        v12 = *(a2 - 8);
        do
        {
          v13 = v5;
          v5 = v4;
          *v13 = v7;
          *(v13 + 8) = *(v4 + 8);
          if (!v3)
          {
            break;
          }

          v3 = (v3 - 1) >> 1;
          v4 = result + 24 * v3;
          v7 = *v4;
          if (*v4 == v6)
          {
            v14 = 0;
          }

          else
          {
            v14 = -127;
          }

          if (*v4 > v6)
          {
            v14 = 1;
          }

          if (*v4 < v6)
          {
            v14 = -1;
          }

          if (!v14)
          {
            v15 = *(v4 + 8);
            LOBYTE(v14) = v15 < v11 ? -1 : 1;
            if (v11 == v15)
            {
              break;
            }
          }
        }

        while (v14 == 1);
        *v5 = v6;
        *(v5 + 8) = v11;
        *(v5 + 16) = v12;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<md::mun::CollectionPoint const*,md::mun::CollectionPoint const*>,std::__unordered_map_hasher<md::mun::CollectionPoint const*,std::__hash_value_type<md::mun::CollectionPoint const*,md::mun::CollectionPoint const*>,std::hash<md::mun::CollectionPoint const*>,std::equal_to<md::mun::CollectionPoint const*>,true>,std::__unordered_map_equal<md::mun::CollectionPoint const*,std::__hash_value_type<md::mun::CollectionPoint const*,md::mun::CollectionPoint const*>,std::equal_to<md::mun::CollectionPoint const*>,std::hash<md::mun::CollectionPoint const*>,true>,std::allocator<std::__hash_value_type<md::mun::CollectionPoint const*,md::mun::CollectionPoint const*>>>::__emplace_unique_key_args<md::mun::CollectionPoint const*,std::piecewise_construct_t const&,std::tuple<md::mun::CollectionPoint const* const&>,std::tuple<>>(void *a1, unint64_t a2)
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

void *std::__hash_table<std::__hash_value_type<md::mun::CollectionPoint const*,double>,std::__unordered_map_hasher<md::mun::CollectionPoint const*,std::__hash_value_type<md::mun::CollectionPoint const*,double>,std::hash<md::mun::CollectionPoint const*>,std::equal_to<md::mun::CollectionPoint const*>,true>,std::__unordered_map_equal<md::mun::CollectionPoint const*,std::__hash_value_type<md::mun::CollectionPoint const*,double>,std::equal_to<md::mun::CollectionPoint const*>,std::hash<md::mun::CollectionPoint const*>,true>,std::allocator<std::__hash_value_type<md::mun::CollectionPoint const*,double>>>::__emplace_unique_key_args<md::mun::CollectionPoint const*,std::piecewise_construct_t const&,std::tuple<md::mun::CollectionPoint const* const&>,std::tuple<>>(void *a1, unint64_t a2)
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

uint64_t std::__tree<md::mun::CollectionPoint const*>::__emplace_unique_key_args<md::mun::CollectionPoint const*,md::mun::CollectionPoint const* const&>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t md::mun::MuninNavigationGraph::neighbors(int8x8_t *this, unint64_t a2)
{
  v2 = this[4];
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
    v7 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*&this[3] + 8 * v7);
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      while (1)
      {
        v10 = v9[1];
        if (v5 == v10)
        {
          if (v9[2] == a2)
          {
            return v9[3];
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

        result = 0;
        v9 = *v9;
        if (!v9)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return 0;
}

__n128 geo::RigidTransform<double,float>::inverse(uint64_t a1, uint64_t a2, double a3, __n128 a4)
{
  for (i = 0; i != 12; i += 4)
  {
    *(&v15 + i) = -*(a2 + i + 24);
  }

  v6 = 0;
  *&v7 = v15;
  DWORD2(v7) = v16;
  a4.n128_u32[0] = *(a2 + 36);
  HIDWORD(v7) = a4.n128_u32[0];
  v19 = v7;
  do
  {
    *(&v15 + v6) = *(&v19 + v6);
    ++v6;
  }

  while (v6 != 3);
  v14 = a4;
  v17 = a4.n128_f32[0];
  v8 = gm::Quaternion<double>::operator*(&v15, a2);
  v9 = 0;
  *v18 = v8;
  v18[1] = v10;
  v18[2] = v11;
  do
  {
    *(&v20 + v9 * 8) = -*&v18[v9];
    ++v9;
  }

  while (v9 != 3);
  v12 = v21;
  *a1 = v20;
  *(a1 + 16) = v12;
  *(a1 + 24) = v19;
  *(a1 + 32) = DWORD2(v19);
  result = v14;
  *(a1 + 36) = v14.n128_u32[0];
  return result;
}

long double gm::Matrix<double,3,1>::angle<int,void>(uint64_t a1, uint64_t a2)
{
  v12[0] = gm::Matrix<double,3,1>::normalized<int,void>(a1);
  v12[1] = v3;
  v12[2] = v4;
  v5 = gm::Matrix<double,3,1>::normalized<int,void>(a2);
  v6 = 0;
  *v11 = v5;
  v11[1] = v7;
  v11[2] = v8;
  v9 = 0.0;
  do
  {
    v9 = v9 + *&v11[v6] * *&v12[v6];
    ++v6;
  }

  while (v6 != 3);
  return acos(fmax(fmin(v9, 1.0), -1.0));
}

uint64_t std::__function::__value_func<void ()(ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<ggl::SpecularBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);
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

void std::vector<ggl::FoggedSpecularBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);
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

void std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::MultiRange<unsigned long>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::Fog::Skyfog>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Fog::Skyfog>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A108B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::PrefilteredLine::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PrefilteredLine::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E80F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::RenderState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A53EE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::BuildingFlatStroke::Building>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::BuildingFlatStroke::Building>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingShadow::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingShadow::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::BuildingShadow::Shadow>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::BuildingShadow::Shadow>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
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
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *>(v6, 100);
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
    return std::__split_buffer<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *>(v5, v4);
  }

  return a1;
}

void sub_1B2CA281C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void ggl::ConstantDataTyped<ggl::Building::Gradient>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Building::Gradient>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Building::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Building::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Building::Scale>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Building::Scale>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_11,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_11>,ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E7D78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::vector<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
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
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *>(v6, 100);
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
    return std::__split_buffer<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void sub_1B2CA31C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_10,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_10>,ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E7CE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::vector<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
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
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *>(v6, 100);
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
    return std::__split_buffer<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void sub_1B2CA3770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_9,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_9>,ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E7C58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void sub_1B2CA3B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void sub_1B2CA3F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void sub_1B2CA4370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void sub_1B2CA476C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuilding::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuilding::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void sub_1B2CA4B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingFacadeDepth::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFacadeDepth::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingFlat::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFlat::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::BuildingFlat::Building>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::BuildingFlat::Building>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PrefilteredLine::PrefilteredLinePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E76B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::BuildingShadow::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SpecularBuildingPointyRoof::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7610;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FoggedSpecularBuilding::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E75D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SpecularBuildingTop::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E75A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SpecularBuilding::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DiffuseBuildingPointyRoof::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E74F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FoggedDiffuseBuilding::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E74C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DiffuseBuildingTop::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DiffuseBuilding::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::BuildingPointyRoofDepth::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::BuildingTopDepth::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E73E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::BuildingFacadeDepth::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E73A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::BuildingFlat::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,std::__unordered_map_hasher<md::MapDataType,std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,gdc::IntTypeHash<md::MapDataType,unsigned short>,std::equal_to<md::MapDataType>,true>,std::__unordered_map_equal<md::MapDataType,std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,std::equal_to<md::MapDataType>,gdc::IntTypeHash<md::MapDataType,unsigned short>,true>,std::allocator<std::__hash_value_type<md::MapDataType,md::MapDataTypeState>>>::__erase_unique<md::MapDataType>(void *a1, unsigned __int16 a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 = (v5 % *&v4);
      }
    }

    else
    {
      v5 = ((*&v4 - 1) & v5);
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 = (v9 % *&v4);
      }
    }

    else
    {
      v9 = (v9 & (*&v4 - 1));
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = (*v3)[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = v11[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 = (v12 % *&v4);
        }
      }

      else
      {
        v12 = (v12 & (*&v4 - 1));
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

uint64_t std::__function::__value_func<std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::string::basic_string[abi:nn200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t *std::vector<gdc::DebugTreeValue>::push_back[abi:nn200100](uint64_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v8 = (v3 - *result) >> 6;
    v9 = v8 + 1;
    if ((v8 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - *result;
    if (v10 >> 5 > v9)
    {
      v9 = v10 >> 5;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFC0)
    {
      v11 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v22 = v2;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeValue>>(v11);
    }

    v12 = v8 << 6;
    *(&v21 + 1) = 0;
    v13 = *a2;
    *(v12 + 9) = *(a2 + 9);
    *v12 = v13;
    v14 = a2[2];
    *(v12 + 48) = *(a2 + 6);
    *(v12 + 32) = v14;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    *(v12 + 56) = *(a2 + 14);
    *&v21 = (v8 << 6) + 64;
    v15 = v2[1];
    v16 = (v8 << 6) + *v2 - v15;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::DebugTreeValue>,gdc::DebugTreeValue*>(*v2, v15, v16);
    v17 = *v2;
    *v2 = v16;
    v18 = v2[2];
    v19 = v21;
    *(v2 + 1) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v20[0] = v17;
    v20[1] = v17;
    result = std::__split_buffer<gdc::DebugTreeValue>::~__split_buffer(v20);
    v7 = v19;
  }

  else
  {
    v5 = *a2;
    *(v3 + 9) = *(a2 + 9);
    *v3 = v5;
    v6 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 32) = v6;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    *(v3 + 56) = *(a2 + 14);
    v7 = v3 + 64;
  }

  v2[1] = v7;
  return result;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::DebugTreeValue>,gdc::DebugTreeValue*>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 9) = *(v5 + 9);
      *a3 = v6;
      v7 = v5[2];
      *(a3 + 48) = *(v5 + 6);
      *(a3 + 32) = v7;
      *(v5 + 5) = 0;
      *(v5 + 6) = 0;
      *(v5 + 4) = 0;
      *(a3 + 56) = *(v5 + 14);
      v5 += 4;
      a3 += 64;
    }

    while (v5 != a2);
    do
    {
      if (*(v4 + 55) < 0)
      {
        operator delete(v4[4]);
      }

      v4 += 8;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<gdc::DebugTreeValue>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 64;
      *(a1 + 16) = v2 - 64;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(ecs2::ExecutionDebugTaskContext)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::OnLayoutEndTask>,std::allocator<ecs2::ForwardToExecute<md::ita::OnLayoutEndTask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E8508;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::LegacyLayoutTask>,std::allocator<ecs2::ForwardToExecute<md::ita::LegacyLayoutTask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E8430;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ReserveStencilRangeTask>,std::allocator<ecs2::ForwardToExecute<md::ita::ReserveStencilRangeTask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E8358;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::LegacyLayoutStartTask>,std::allocator<ecs2::ForwardToExecute<md::ita::LegacyLayoutStartTask>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = a1 + 8;
  v3 = ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::PassListProvider>((a1 + 8));
  v4 = (*(*v3 + 16))(v3);
  v5 = *ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::LayoutContextProvider>(v2);
  v6 = (*v5)();
  md::LayoutContext::frameState(v6);
  if ((*(v7 + 117) & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    (*(*v4 + 72))(v4, v6);
    objc_autoreleasePoolPop(v8);
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::LegacyLayoutStartTask>,std::allocator<ecs2::ForwardToExecute<md::ita::LegacyLayoutStartTask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E8280;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t VKAnimationCurveLinear_block_invoke(double a1)
{
  v1 = LODWORD(a1);
  if (_ZZUb_E9onceToken != -1)
  {
    dispatch_once(&_ZZUb_E9onceToken, &__block_literal_global_10);
  }

  v2 = _ZZUb_E14timingFunction;
  LODWORD(a1) = v1;

  return [v2 _solveForInput:a1];
}

void VKAnimationCurveLinear_block_invoke_2()
{
  v0 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  v1 = _ZZUb_E14timingFunction;
  _ZZUb_E14timingFunction = v0;
}

uint64_t VKAnimationCurveEaseIn_block_invoke_3(double a1)
{
  v1 = LODWORD(a1);
  if (_ZZUb1_E9onceToken != -1)
  {
    dispatch_once(&_ZZUb1_E9onceToken, &__block_literal_global_14);
  }

  v2 = _ZZUb1_E14timingFunction;
  LODWORD(a1) = v1;

  return [v2 _solveForInput:a1];
}

void VKAnimationCurveEaseIn_block_invoke_4()
{
  v0 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
  v1 = _ZZUb1_E14timingFunction;
  _ZZUb1_E14timingFunction = v0;
}

uint64_t VKAnimationCurveEaseInOut_block_invoke_7(double a1)
{
  v1 = LODWORD(a1);
  if (_ZZUb5_E9onceToken != -1)
  {
    dispatch_once(&_ZZUb5_E9onceToken, &__block_literal_global_22);
  }

  v2 = _ZZUb5_E14timingFunction;
  LODWORD(a1) = v1;

  return [v2 _solveForInput:a1];
}

void VKAnimationCurveEaseInOut_block_invoke_8()
{
  v0 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  v1 = _ZZUb5_E14timingFunction;
  _ZZUb5_E14timingFunction = v0;
}

void VKAnimationCurveElasticEaseOut_block_invoke_10(float a1)
{
  if (a1 != 0.0 && a1 != 1.0)
  {
    exp2f(a1 * -10.0);
    sinf((a1 * 20.944) + -1.5708);
  }
}

float VKAnimationCurveExponentialEaseInOut_block_invoke_12(float a1)
{
  if ((a1 + a1) >= 1.0)
  {
    v1 = expf(18.421 - (a1 * 18.421));
    v2 = 1.0;
    v3 = -0.00005;
  }

  else
  {
    v1 = expf(a1 * 18.421);
    v2 = -0.00005;
    v3 = 0.00005;
  }

  return v2 + (v1 * v3);
}

uint64_t VKAnimationCurveDefaultSpring_block_invoke_14(__n128 a1)
{
  v1 = a1.n128_u32[0];
  if (_ZZUb12_E9onceToken != -1)
  {
    dispatch_once(&_ZZUb12_E9onceToken, &__block_literal_global_36);
  }

  v2 = *(_ZZUb12_E14timingFunction + 16);
  a1.n128_u32[0] = v1;

  return v2(a1);
}

void VKAnimationCurveDefaultSpring_block_invoke_15()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __VKAnimationCurveSpring_block_invoke;
  v2[3] = &__block_descriptor_52_e8_f12__0f8l;
  v3 = xmmword_1B33B0830;
  v4 = 1058262331;
  v0 = [v2 copy];
  v1 = _ZZUb12_E14timingFunction;
  _ZZUb12_E14timingFunction = v0;
}

float __VKAnimationCurveSpring_block_invoke(float *a1, float a2)
{
  v3 = a1[8] * a2;
  v4 = expf(-(a2 * a1[9]) * a1[10]);
  v5 = a1[11];
  v6 = __sincosf_stret(v3);
  return -((((v5 * v6.__cosval) + (a1[12] * v6.__sinval)) * v4) + -1.0);
}

uint64_t VKAnimationCurveDefaultCameraSpring_block_invoke_16(__n128 a1)
{
  v1 = a1.n128_u32[0];
  if (_ZZUb14_E9onceToken[0] != -1)
  {
    dispatch_once(_ZZUb14_E9onceToken, &__block_literal_global_40);
  }

  v2 = *(_ZZUb14_E14timingFunction + 16);
  a1.n128_u32[0] = v1;

  return v2(a1);
}

void VKAnimationCurveDefaultCameraSpring_block_invoke_17()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __VKAnimationCurveSpring_block_invoke_2;
  v2[3] = &__block_descriptor_44_e8_f12__0f8l;
  v2[4] = 0x4143F58D3F800000;
  v3 = 1094972813;
  v0 = [v2 copy];
  v1 = _ZZUb14_E14timingFunction;
  _ZZUb14_E14timingFunction = v0;
}

id VKAnimationCurveForCAMediaTimingFunction(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __VKAnimationCurveForCAMediaTimingFunction_block_invoke;
  v5[3] = &unk_1E7B30690;
  v6 = v1;
  v2 = v1;
  v3 = [v5 copy];

  return v3;
}

uint64_t md::ARWalkingManeuverLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  v8 = a1 + 960;
  md::ARWalkingManeuverLabelPart::updateLocalState(a1, (a1 + 960), a2 + 432, *(a1 + 16) + 408, *(a1 + 16) + 1040, (*(a1 + 16) + 944), *(*(a1 + 32) + 72), *(*(a1 + 32) + 68));
  v9 = *(*(a1 + 32) + 68);
  *(a1 + 416) = v9;
  *(a1 + 352) = a4->i32[0];
  *(a1 + 356) = a4->i32[1];
  *(a1 + 510) = fabsf(v9 + -1.0) > 0.000001;
  v10 = *(a2 + 896);
  *(a1 + 536) = v10;
  v11 = *(a2 + 900);
  *(a1 + 540) = v11;
  v12 = *(a1 + 528);
  v13 = v12 * v11;
  v14 = *(a1 + 532);
  v15 = -((v14 * v11) - (v12 * v10));
  *(a1 + 328) = v15;
  *(a1 + 332) = v13 + (v14 * v10);
  *(a1 + 508) = fabsf(v15 + -1.0) > 0.000001;
  *(a1 + 424) = v8;

  return md::StackLabelPart::layoutForDisplay(a1, a2, a3, a4, (a1 + 1216));
}

void md::ARWalkingManeuverLabelPart::updateLocalState(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, double a7, double a8)
{
  v41 = +[VKDebugSettings sharedSettings];
  [v41 arDebugStylingBaseScalingFactor];
  v17 = v16;
  v18 = *(a1 + 1225);
  if ([v41 arForceLabelsViewOriented])
  {
    v18 = 4;
  }

  v19 = *(a1 + 16);
  v20 = v17 * a7;
  md::LabelPart::generateModelMatrixForMeshPositioningMode(&v46, v19 + 152, a3, a4, 8, 0, v18, v20, a8);
  v21 = v51;
  a2[12] = v50;
  a2[13] = v21;
  v22 = v53;
  a2[14] = v52;
  a2[15] = v22;
  v23 = v47;
  a2[8] = v46;
  a2[9] = v23;
  v24 = v49;
  a2[10] = v48;
  a2[11] = v24;
  if (*(a1 + 1224))
  {
    md::LabelPart::generateModelMatrixForMeshPositioningMode(&v46, v19 + 152, a3, a4, 8, 1, v18, v20, a8);
    v25 = v51;
    a2[4] = v50;
    a2[5] = v25;
    v26 = v53;
    a2[6] = v52;
    a2[7] = v26;
    v27 = v47;
    *a2 = v46;
    a2[1] = v27;
    v28 = v48;
    v29 = v49;
  }

  else
  {
    v30 = a2[13];
    a2[4] = a2[12];
    a2[5] = v30;
    v31 = a2[15];
    a2[6] = a2[14];
    a2[7] = v31;
    v32 = a2[9];
    *a2 = a2[8];
    a2[1] = v32;
    v28 = a2[10];
    v29 = a2[11];
  }

  a2[2] = v28;
  a2[3] = v29;
  v44 = *a4;
  v45 = *(a4 + 16);
  v46 = 0uLL;
  *&v47 = 0x3FF0000000000000;
  if (fabs(*a6) >= 0.0001)
  {
LABEL_11:
    for (i = 0; i != 24; i += 8)
    {
      *(&v46 + i) = *(&v44 + i) - *(a5 + i);
    }

    v37 = 0;
    v42 = v46;
    v43 = v47;
    v38 = 0.0;
    do
    {
      v38 = v38 + *(&v42 + v37 * 8) * a6[v37];
      ++v37;
    }

    while (v37 != 3);
    for (j = 0; j != 3; ++j)
    {
      *(&v46 + j * 8) = a6[j] * v38;
    }

    for (k = 0; k != 24; k += 8)
    {
      *(&v44 + k) = *(&v44 + k) - *(&v46 + k);
    }
  }

  else
  {
    v33 = 1;
    while (v33 != 3)
    {
      v34 = v33;
      v35 = vabdd_f64(a6[v33], *(&v46 + v33));
      ++v33;
      if (v35 >= 0.0001)
      {
        if ((v34 - 1) > 1)
        {
          break;
        }

        goto LABEL_11;
      }
    }
  }
}

double md::ARWalkingManeuverLabelPart::prepareForDisplay(md::ARWalkingManeuverLabelPart *this, md::LabelManager *a2)
{
  v3 = *(this + 72);
  v4 = *(this + 73);
  while (v3 != v4)
  {
    v6 = *v3++;
    (*(*v6 + 104))(v6, a2);
  }

  result = *(this + 119);
  *(this + 152) = result;
  return result;
}

uint64_t md::ARWalkingManeuverLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, float32x2_t *a3)
{
  v6 = 8;
  if (!*(a1 + 1224))
  {
    v6 = 0;
  }

  v7 = *(*(a1 + 576) + v6);
  v25 = 0;
  result = (*(*v7 + 80))(v7, a2, a3, &v25);
  if (result == 37)
  {
    v9 = 0;
    v10 = 0;
    v11 = v7[3];
    v12 = v11 + 72;
    v13 = v11 + 80;
    do
    {
      v14 = *(v13 + 4 * v10);
      v15 = *(v12 + 4 * v10);
      if (v9)
      {
        break;
      }

      v9 = 1;
      v10 = 1;
    }

    while (v14 >= v15);
    if (v14 >= v15)
    {
      v16 = *(*(a1 + 32) + 20);
      *(a1 + 176) = v16;
      *(a1 + 112) = a3->i32[0];
      *(a1 + 116) = a3->i32[1];
      *(a1 + 270) = fabsf(v16 + -1.0) > 0.000001;
      v17 = *(a2 + 424);
      v18 = *(v17 + 464);
      *(a1 + 296) = v18;
      v19 = *(v17 + 468);
      *(a1 + 300) = v19;
      v20 = *(a1 + 288);
      v21 = v20 * v19;
      v22 = *(a1 + 292);
      v23 = -((v22 * v19) - (v20 * v18));
      *(a1 + 88) = v23;
      *(a1 + 92) = v21 + (v22 * v18);
      *(a1 + 268) = fabsf(v23 + -1.0) > 0.000001;
      if ((*(a1 + 1224) & 1) == 0)
      {
        v24 = *(**(**(a1 + 576) + 576) + 24);
        *(a1 + 956) = (*(v24 + 84) - *(v24 + 76)) * 0.083333;
      }

      result = md::StackLabelPart::layoutForStaging(a1, a2, a3, (a1 + 952));
      if (result == 37)
      {
        if (*(a1 + 566) == 1)
        {
          md::ARWalkingManeuverLabelPart::updateLocalState(a1, (a1 + 696), *(a2 + 424), *(a1 + 16) + 616, *(a1 + 16) + 640, (*(a1 + 16) + 544), *(*(a1 + 32) + 24), *(*(a1 + 32) + 20));
          *(a1 + 184) = a1 + 696;
        }

        return 37;
      }
    }

    else
    {
      return 14;
    }
  }

  return result;
}

void md::ARWalkingManeuverLabelPart::~ARWalkingManeuverLabelPart(md::ARWalkingManeuverLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void md::MuninMapEngineConfiguration::didBecomeActive(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 41928);
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v3 + 16), 0x2FED70A4459DFCA1uLL);
  if (v4)
  {
    v5 = v4[5];
    if (v5)
    {
      md::StyleLogic::setMapMode(v5, 5, 0.0);
      v3 = *(a2 + 41928);
    }
  }

  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v3 + 16), 0x20A1ED17D78F322BuLL);
  if (v6)
  {
    v6 = v6[5];
  }

  md::LabelsLogic::setWorldType(v6, 1u);
}

void sub_1B2CA9DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, void *a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::__function::__value_func<ggl::VSView::PipelineSetup * ()(void)>::~__value_func[abi:nn200100](v35);
  std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v33);
  std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v31);
  std::__function::__value_func<void ()(ggl::VSView::PipelineSetup *)>::~__value_func[abi:nn200100](&a27);
  std::__function::__value_func<ggl::VSView::PipelineSetup * ()(void)>::~__value_func[abi:nn200100](&a31);
  MEMORY[0x1B8C62190](v31, 0x10A0C405CD4001ALL);
  v41 = *(v39 - 152);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  v42 = *(v39 - 168);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  v43 = *(v37 + 336);
  *(v37 + 336) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  v44 = *(v37 + 328);
  *(v37 + 328) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v45 = *(v37 + 320);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }

  v46 = *(v37 + 304);
  *(v37 + 304) = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  v47 = *(v37 + 296);
  *(v37 + 296) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = *(v37 + 288);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v48);
  }

  v49 = *(v37 + 272);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v49);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::VSView::PipelineSetup>>::reset[abi:nn200100](v32 + 3, 0);
  v50 = *(v37 + 248);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v50);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::VSView::StretchAlphaPipelineSetup>>::reset[abi:nn200100](v32, 0);
  v51 = *(v37 + 224);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }

  md::FrameAllocator<ggl::RenderItem>::reset(v37 + 192);
  free(*(v37 + 192));
  v52 = *(v37 + 184);
  *(v37 + 184) = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  v53 = *(v37 + 176);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }

  a25 = (v37 + 144);
  std::vector<std::unique_ptr<ggl::RenderState>>::__destroy_vector::operator()[abi:nn200100](&a25);
  v54 = *(v37 + 136);
  *(v37 + 136) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *(v37 + 128);
  *(v37 + 128) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = *(v37 + 120);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  v57 = *(v37 + 104);
  *(v37 + 104) = 0;
  if (v57)
  {
    MEMORY[0x1B8C62190](v57, 0x1000C4049ECCB0CLL);
  }

  v58 = *(v37 + 96);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v58);
  }

  v59 = *(v37 + 80);
  *(v37 + 80) = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = *a13;
  *a13 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  MEMORY[0x1B8C62190](v37, 0x1060C40C0A63DC5);
  a25 = (a16 + 8);
  std::vector<std::unique_ptr<md::mun::PassData>>::__destroy_vector::operator()[abi:nn200100](&a25);
  std::unique_ptr<md::mun::MuninRenderResources>::reset[abi:nn200100](a16, 0);

  *v34 = a10;
  v61 = *(v34 + 8);
  if (v61)
  {
    *(v34 + 16) = v61;
    operator delete(v61);
  }

  MEMORY[0x1B8C62190](v34, 0x10A1C40F41B8293);
  a25 = a11;
  std::vector<std::unique_ptr<md::RenderLayer>>::__destroy_vector::operator()[abi:nn200100](&a25);
  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<md::RenderLayer>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void md::MuninMapEngineConfiguration::~MuninMapEngineConfiguration(md::MuninMapEngineConfiguration *this)
{
  *this = &unk_1F2A58798;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A58798;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void md::createFeatureAttributeSet(gss::FeatureAttributeSet **this, const GEOStyleAttributes *a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  __src = 0;
  v27 = 0;
  v28 = 0;
  if (v2)
  {
    for (i = 0; i < [(GEOStyleAttributes *)v2 attributesCount]; ++i)
    {
      v4 = [(GEOStyleAttributes *)v2 attributeAtIndex:i];
      v5 = [v4 key];
      v6 = [v4 value];
      v7 = v6;
      v8 = v27;
      if (v27 >= v28)
      {
        v10 = __src;
        v11 = v27 - __src;
        v12 = (v27 - __src) >> 3;
        v13 = v12 + 1;
        if ((v12 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v14 = v28 - __src;
        if ((v28 - __src) >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        v25[4] = v29;
        if (v15)
        {
          v16 = gss::zone_mallocator::instance(v6);
          v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v16, v15);
          v10 = __src;
          v11 = v27 - __src;
        }

        else
        {
          v17 = 0;
        }

        v18 = (v27 - __src) >> 3;
        v19 = &v17[8 * v12];
        v20 = &v17[8 * v15];
        *v19 = v5;
        *(v19 + 2) = v7;
        v9 = v19 + 8;
        v21 = &v19[-8 * v18];
        memcpy(v21, v10, v11);
        v22 = __src;
        v23 = v28;
        __src = v21;
        v27 = v9;
        v28 = v20;
        v25[2] = v22;
        v25[3] = v23;
        v25[0] = v22;
        v25[1] = v22;
        std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(v25);
      }

      else
      {
        *v27 = v5;
        *(v8 + 2) = v6;
        v9 = v8 + 8;
      }

      v27 = v9;
    }
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](this, &__src);
  gss::FeatureAttributeSet::sort(*this, this[1]);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__src);
}

void sub_1B2CAA964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void *md::ARMeshRenderLayer::prune(uint64_t a1)
{
  result = ggl::FragmentedPool<ggl::RenderItem>::shrink(*(a1 + 432));
  v3 = *(a1 + 72);
  v5 = *v3;
  v4 = v3[1];
  if (*v3 != v4)
  {
    do
    {
      result = *v5;
      if (*v5)
      {
        result = (*(*result + 8))(result);
        v4 = v3[1];
      }

      ++v5;
    }

    while (v5 != v4);
    v5 = *v3;
  }

  v3[1] = v5;
  v6 = *(a1 + 80);
  v8 = *v6;
  v7 = v6[1];
  if (*v6 != v7)
  {
    do
    {
      result = *v8;
      if (*v8)
      {
        result = (*(*result + 8))(result);
        v7 = v6[1];
      }

      ++v8;
    }

    while (v8 != v7);
    v8 = *v6;
  }

  v6[1] = v8;
  v9 = *(a1 + 64);
  v11 = *v9;
  v10 = v9[1];
  if (*v9 != v10)
  {
    do
    {
      result = *v11;
      if (*v11)
      {
        result = (*(*result + 8))(result);
        v10 = v9[1];
      }

      ++v11;
    }

    while (v11 != v10);
    v11 = *v9;
  }

  v9[1] = v11;
  return result;
}

void *detachEnvironmentTexture(ggl::MetalDevice *a1, gdc::Registry *a2, gdc::Registry *a3, ggl::TextureCube *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = gdc::Registry::storage<arComponents::AREnvironmentProbeTexture>(a1);
  v7 = v6[7];
  v8 = v6[8];
  if (v7 != v8)
  {
    v9 = (v6[10] + 8);
    do
    {
      v10 = *v9;
      if (*v9 && *(v10 + 3))
      {
        ggl::RenderDataHolder::resetRenderResource(v10);
      }

      v7 += 8;
      v9 += 3;
    }

    while (v7 != v8);
  }

  v11 = gdc::Registry::storage<arComponents::AREnvironmentProbeTexture>(a1);
  v12 = v11;
  if (v11[29])
  {
    v13 = v11[28];
    if (v13)
    {
      v14 = v11[31];
      v15 = v11[7];
      v16 = (v11[8] - v15) >> 3;
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, v15, v16);
        v13 = *v13;
      }

      while (v13);
    }
  }

  v12[8] = v12[7];
  v17 = v12[10];
  for (i = v12[11]; i != v17; std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(i))
  {
    i -= 24;
  }

  v12[11] = v17;
  v19 = gdc::Registry::storage<arComponents::ContextEntity>(a2);
  v20 = gdc::Registry::storage<arComponents::PipelineInstanceToUse>(a2);
  result = gdc::Registry::storage<md::pipelineECS::SupportsEnvironmentTexture>(a2);
  v22 = result;
  v58 = v19;
  v23.i64[0] = v19;
  v23.i64[1] = v20;
  v24 = result + 4;
  v59 = vaddq_s64(v23, vdupq_n_s64(0x20uLL));
  v60 = result + 4;
  v25 = v59.i64[0];
  v26 = 1;
  v27 = &v59;
  do
  {
    if (*(v59.i64[v26] + 32) - *(v59.i64[v26] + 24) < *(v25 + 32) - *(v25 + 24))
    {
      v25 = v59.i64[v26];
      v27 = (&v59 + v26 * 8);
    }

    ++v26;
  }

  while (v26 != 3);
  v28 = (v19 + 32);
  v56 = v27->i64[0];
  if (v19 + 32 == v27->i64[0])
  {
    v45 = *(v19 + 56);
    v46 = *(v19 + 64);
    while (v45 != v46)
    {
      v47 = *(v45 + 4);
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v20 + 4, v47);
      v48 = v20[8];
      if (v48 != result)
      {
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v24, v47);
        v49 = v22[8];
        if (v49 != result)
        {
          v50 = *(v45 + 4);
          v51 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v20 + 4, v50);
          if (v48 == v51)
          {
            v52 = v20[11];
          }

          else
          {
            v52 = v20[10] + v51 - v20[7];
          }

          v53 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v24, v50);
          if (v49 == v53)
          {
            v54 = v22[11];
          }

          else
          {
            v54 = (v22[10] + v53 - v22[7]);
          }

          result = (***v54)(*v54, v52, a3);
        }
      }

      v45 += 8;
    }
  }

  v55 = v20 + 4;
  if (v20 + 4 == v56)
  {
    v30 = v20[7];
    v29 = v20[8];
    if (v30 != v29)
    {
      v31 = v20[10];
      do
      {
        v32 = *(v30 + 4);
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v28, v32);
        if (*(v58 + 64) != result)
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v24, v32);
          v33 = v22[8];
          if (v33 != result)
          {
            v34 = *(v30 + 4);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v28, v34);
            v35 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v24, v34);
            if (v33 == v35)
            {
              v36 = v22[11];
            }

            else
            {
              v36 = (v22[10] + v35 - v22[7]);
            }

            result = (***v36)(*v36, v31, a3);
          }
        }

        v31 += 8;
        v30 += 8;
      }

      while (v30 != v29);
    }
  }

  if (v24 == v56)
  {
    v37 = v22[7];
    v38 = v22[8];
    if (v37 != v38)
    {
      v39 = v22[10];
      do
      {
        v40 = *(v37 + 4);
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v28, v40);
        if (*(v58 + 64) != result)
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v55, v40);
          v41 = v20[8];
          if (v41 != result)
          {
            v42 = *(v37 + 4);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v28, v42);
            v43 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v55, v42);
            if (v41 == v43)
            {
              v44 = v20[11];
            }

            else
            {
              v44 = v20[10] + v43 - v20[7];
            }

            result = (***v39)(*v39, v44, a3);
          }
        }

        ++v39;
        v37 += 8;
      }

      while (v37 != v38);
    }
  }

  return result;
}

uint64_t gdc::Registry::storage<arComponents::AREnvironmentProbeTexture>(uint64_t a1)
{
  v3 = 0xB98AEFC198486853;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xB98AEFC198486853);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::ContextEntity>(uint64_t a1)
{
  v3 = 0x1D46EE08B2FE26F2;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1D46EE08B2FE26F2uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::PipelineInstanceToUse>(uint64_t a1)
{
  v3 = 0x9E3ED38A72A73EF5;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x9E3ED38A72A73EF5);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::pipelineECS::SupportsEnvironmentTexture>(uint64_t a1)
{
  v3 = 0x3B6041BC66626A0FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x3B6041BC66626A0FuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::SupportsEnvironmentTexture>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::pipelineECS::SupportsEnvironmentTexture>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::SupportsEnvironmentTexture>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::ContextEntity>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::ContextEntity>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::ContextEntity>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::AREnvironmentProbeTexture>::remove(void *a1, uint64_t a2)
{
  v15 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    objc_storeStrong(v6, *(v7 - 24));
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(v6 + 16);
    *(v6 + 8) = v9;
    *(v6 + 16) = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11] - 24;
    std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(v11);
    a1[11] = v11;
    v12 = a1[28];
    if (v12)
    {
      v13 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v12[6], v13, &v15, 1);
        v12 = *v12;
      }

      while (v12);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::AREnvironmentProbeTexture>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::AREnvironmentProbeTexture>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

void md::ARMeshRenderLayer::layout(ggl::zone_mallocator **this, const md::LayoutContext *a2)
{
  v562 = *MEMORY[0x1E69E9840];
  v3 = ggl::FragmentedPool<ggl::RenderItem>::pushAll(this[54]);
  v547 = this;
  v4 = this[9];
  v5 = *(v4 + 4);
  v6 = *(v4 + 5);
  if (v5 != v6)
  {
    v7 = *(v4 + 1);
    do
    {
      v8 = *v5;
      v9 = *(v4 + 2);
      if (v7 >= v9)
      {
        v10 = (v7 - *v4) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v11 = v9 - *v4;
        v12 = v11 >> 2;
        if (v11 >> 2 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        v561 = v4 + 24;
        if (v13)
        {
          v14 = ggl::zone_mallocator::instance(v3);
          v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARMeshPipelineSetup *>(v14, v13);
        }

        else
        {
          v15 = 0;
        }

        v17 = &v15[8 * v13];
        v16 = &v15[8 * v10];
        *v16 = v8;
        v7 = v16 + 8;
        v18 = *(v4 + 1) - *v4;
        v19 = &v16[-v18];
        memcpy(&v16[-v18], *v4, v18);
        v20 = *v4;
        *v4 = v19;
        v559.i64[0] = v20;
        v559.i64[1] = v20;
        *(v4 + 1) = v7;
        v560.i64[0] = v20;
        v21 = *(v4 + 2);
        *(v4 + 2) = v17;
        v560.i64[1] = v21;
        v3 = std::__split_buffer<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v559);
      }

      else
      {
        *v7++ = v8;
      }

      *(v4 + 1) = v7;
      ++v5;
    }

    while (v5 != v6);
    v5 = *(v4 + 4);
    v6 = *(v4 + 5);
  }

  if (v5 != v6)
  {
    *(v4 + 5) = v5;
  }

  v22 = *(v547 + 10);
  v23 = *(v22 + 32);
  v24 = *(v22 + 40);
  if (v23 != v24)
  {
    v25 = *(v22 + 8);
    do
    {
      v26 = *v23;
      v27 = *(v22 + 16);
      if (v25 >= v27)
      {
        v28 = (v25 - *v22) >> 3;
        if ((v28 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v29 = v27 - *v22;
        v30 = v29 >> 2;
        if (v29 >> 2 <= (v28 + 1))
        {
          v30 = v28 + 1;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        v561 = v22 + 24;
        if (v31)
        {
          v32 = ggl::zone_mallocator::instance(v3);
          v33 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(v32, v31);
        }

        else
        {
          v33 = 0;
        }

        v35 = &v33[8 * v31];
        v34 = &v33[8 * v28];
        *v34 = v26;
        v25 = v34 + 8;
        v36 = *(v22 + 8) - *v22;
        v37 = &v34[-v36];
        memcpy(&v34[-v36], *v22, v36);
        v38 = *v22;
        *v22 = v37;
        v559.i64[0] = v38;
        v559.i64[1] = v38;
        *(v22 + 8) = v25;
        v560.i64[0] = v38;
        v39 = *(v22 + 16);
        *(v22 + 16) = v35;
        v560.i64[1] = v39;
        v3 = std::__split_buffer<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v559);
      }

      else
      {
        *v25++ = v26;
      }

      *(v22 + 8) = v25;
      ++v23;
    }

    while (v23 != v24);
    v23 = *(v22 + 32);
    v24 = *(v22 + 40);
  }

  if (v23 != v24)
  {
    *(v22 + 40) = v23;
  }

  v40 = *(v547 + 8);
  v41 = *(v40 + 32);
  v42 = *(v40 + 40);
  if (v41 != v42)
  {
    v43 = *(v40 + 8);
    do
    {
      v44 = *v41;
      v45 = *(v40 + 16);
      if (v43 >= v45)
      {
        v46 = (v43 - *v40) >> 3;
        if ((v46 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v47 = v45 - *v40;
        v48 = v47 >> 2;
        if (v47 >> 2 <= (v46 + 1))
        {
          v48 = v46 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF8)
        {
          v49 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        v561 = v40 + 24;
        if (v49)
        {
          v50 = ggl::zone_mallocator::instance(v3);
          v51 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARShadowPipelineSetup *>(v50, v49);
        }

        else
        {
          v51 = 0;
        }

        v53 = &v51[8 * v49];
        v52 = &v51[8 * v46];
        *v52 = v44;
        v43 = v52 + 8;
        v54 = *(v40 + 8) - *v40;
        v55 = &v52[-v54];
        memcpy(&v52[-v54], *v40, v54);
        v56 = *v40;
        *v40 = v55;
        v559.i64[0] = v56;
        v559.i64[1] = v56;
        *(v40 + 8) = v43;
        v560.i64[0] = v56;
        v57 = *(v40 + 16);
        *(v40 + 16) = v53;
        v560.i64[1] = v57;
        v3 = std::__split_buffer<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v559);
      }

      else
      {
        *v43++ = v44;
      }

      *(v40 + 8) = v43;
      ++v41;
    }

    while (v41 != v42);
    v41 = *(v40 + 32);
    v42 = *(v40 + 40);
  }

  if (v41 != v42)
  {
    *(v40 + 40) = v41;
  }

  md::FrameGraph::renderQueueForPass(*(*(*(v547 + 5) + 24) + 8), 0);
  v548 = v552;
  v549 = v552;
  v550 = v552;
  v551 = 4;
  v58 = gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(*(v547 + 55));
  v59 = *(v58 + 56);
  for (i = *(v58 + 64); v59 != i; ++v59)
  {
    v559.i64[0] = *v59;
    geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v548, &v559);
  }

  v61 = *(v547 + 55);
  v62 = v548;
  v63 = v549;
  if (v548 != v549)
  {
    do
    {
      v64 = *v62++;
      gdc::Registry::destroy(v61, v64);
    }

    while (v62 != v63);
    v61 = *(v547 + 55);
  }

  v65 = gdc::Registry::storage<arComponents::WorldTransform>(v61);
  v66 = gdc::Registry::storage<arComponents::MeshComponent>(v61);
  v67 = gdc::Registry::storage<arComponents::Boundary>(v61);
  v517 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v61);
  v68 = gdc::Registry::storage<arComponents::StandardPipeline>(v61);
  v69.i64[0] = v65;
  v69.i64[1] = v66;
  v70.i64[0] = v67;
  v70.i64[1] = v517;
  v71 = vdupq_n_s64(0x20uLL);
  v505 = v68;
  v559 = vaddq_s64(v69, v71);
  v560 = vaddq_s64(v70, v71);
  v513 = (v68 + 32);
  v561 = v68 + 32;
  v72 = v559.i64[0];
  v73 = 1;
  v74 = &v559;
  do
  {
    if (*(v559.i64[v73] + 32) - *(v559.i64[v73] + 24) < *(v72 + 32) - *(v72 + 24))
    {
      v72 = v559.i64[v73];
      v74 = (&v559 + v73 * 8);
    }

    ++v73;
  }

  while (v73 != 5);
  v75 = (v65 + 32);
  v502 = v74->i64[0];
  v527 = v65;
  if (v65 + 32 == v74->i64[0])
  {
    v346 = *(v65 + 56);
    v347 = *(v65 + 64);
    while (v346 != v347)
    {
      v348 = *(v346 + 4);
      if (v66[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v66 + 4, v348) && v67[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v67 + 4, v348) && v517[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v517 + 4, v348) && *(v505 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v513, v348))
      {
        v349 = HIDWORD(*v346);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v66 + 4, HIDWORD(*v346));
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v67 + 4, v349);
        md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
      }

      v346 += 8;
    }
  }

  v537 = v66 + 4;
  if (v66 + 4 == v502)
  {
    v77 = v66[7];
    v76 = v66[8];
    if (v77 != v76)
    {
      v78 = v66[10];
      do
      {
        v79 = *(v77 + 4);
        if (*(v65 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v75, v79) && v67[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v67 + 4, v79) && v517[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v517 + 4, v79) && *(v505 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v513, v79))
        {
          v80 = HIDWORD(*v77);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v75, HIDWORD(*v77));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v67 + 4, v80);
          md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
        }

        v78 += 16;
        v77 += 8;
      }

      while (v77 != v76);
    }
  }

  v509 = v67 + 4;
  if (v67 + 4 == v502)
  {
    v81 = v67[7];
    v82 = v67[8];
    if (v81 != v82)
    {
      v83 = v67[10];
      do
      {
        v84 = *(v81 + 4);
        if (*(v527 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v75, v84) && v66[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v537, v84) && v517[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v517 + 4, v84) && *(v505 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v513, v84))
        {
          v85 = HIDWORD(*v81);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v75, HIDWORD(*v81));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v537, v85);
          md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
        }

        v83 += 24;
        v81 += 8;
      }

      while (v81 != v82);
    }
  }

  if (v517 + 4 == v502)
  {
    v350 = v517[7];
    v351 = v517[8];
    while (v350 != v351)
    {
      v352 = *(v350 + 4);
      if (*(v527 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v75, v352) && v66[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v537, v352) && v67[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v509, v352) && *(v505 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v513, v352))
      {
        v353 = HIDWORD(*v350);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v75, HIDWORD(*v350));
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v537, v353);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v509, v353);
        md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
      }

      v350 += 8;
    }
  }

  if (v513 == v502)
  {
    v354 = *(v505 + 56);
    v355 = *(v505 + 64);
    while (v354 != v355)
    {
      v356 = *(v354 + 4);
      if (*(v527 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v75, v356) && v66[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v537, v356) && v67[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v509, v356) && v517[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v517 + 4, v356))
      {
        v357 = HIDWORD(*v354);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v75, HIDWORD(*v354));
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v537, v357);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v509, v357);
        md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
      }

      v354 += 8;
    }
  }

  v86 = *(v547 + 55);
  v538 = gdc::Registry::storage<arComponents::WorldTransform>(v86);
  v87 = gdc::Registry::storage<arComponents::MeshDataComponent>(v86);
  v88 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v86);
  v89 = gdc::Registry::storage<arComponents::StandardPipeline>(v86);
  v90.i64[0] = v538;
  v90.i64[1] = v87;
  v91.i64[0] = v88;
  v91.i64[1] = v89;
  v92 = vdupq_n_s64(0x20uLL);
  v559 = vaddq_s64(v90, v92);
  v560 = vaddq_s64(v91, v92);
  v93 = v559.i64[0];
  v94 = 1;
  v95 = &v559;
  do
  {
    if (*(v559.i64[v94] + 32) - *(v559.i64[v94] + 24) < *(v93 + 32) - *(v93 + 24))
    {
      v93 = v559.i64[v94];
      v95 = (&v559 + v94 * 8);
    }

    ++v94;
  }

  while (v94 != 4);
  v96 = v95->i64[0];
  v97 = (v538 + 32);
  if (v538 + 32 == v95->i64[0])
  {
    v358 = *(v538 + 56);
    v359 = *(v538 + 64);
    while (v358 != v359)
    {
      v360 = *(v358 + 4);
      Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v87 + 4, v360);
      v362 = v87[8];
      if (v362 != Index && v88[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v88 + 4, v360) && v89[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v89 + 4, v360))
      {
        v363 = *v358;
        v364 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v87 + 4, HIDWORD(*v358));
        if (v362 == v364)
        {
          v365 = v87[11];
        }

        else
        {
          v365 = (v87[10] + v364 - v87[7]);
        }

        md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v547, v363, *v365);
      }

      v358 += 8;
    }
  }

  v518 = v96;
  v528 = v87 + 4;
  if (v87 + 4 == v96)
  {
    v98 = v87[7];
    v99 = v87[8];
    if (v98 != v99)
    {
      v100 = v87[10];
      do
      {
        v101 = *(v98 + 4);
        if (*(v538 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v97, v101) && v88[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v88 + 4, v101) && v89[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v89 + 4, v101))
        {
          v102 = *v98;
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v97, HIDWORD(*v98));
          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v547, v102, *v100);
        }

        ++v100;
        v98 += 8;
      }

      while (v98 != v99);
    }
  }

  if (v88 + 4 == v518)
  {
    v367 = v88[7];
    v366 = v88[8];
    while (v367 != v366)
    {
      v368 = *(v367 + 4);
      if (*(v538 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v97, v368))
      {
        v369 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v528, v368);
        v370 = v87[8];
        if (v370 != v369 && v89[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v89 + 4, v368))
        {
          v371 = *v367;
          v372 = HIDWORD(*v367);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v97, HIDWORD(*v367));
          v373 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v528, v372);
          if (v370 == v373)
          {
            v374 = v87[11];
          }

          else
          {
            v374 = (v87[10] + v373 - v87[7]);
          }

          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v547, v371, *v374);
        }
      }

      v367 += 8;
    }
  }

  if (v89 + 4 == v518)
  {
    v375 = v89[7];
    v376 = v89[8];
    while (v375 != v376)
    {
      v377 = *(v375 + 4);
      if (*(v538 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v97, v377))
      {
        v378 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v528, v377);
        v379 = v87[8];
        if (v379 != v378 && v88[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v88 + 4, v377))
        {
          v380 = *v375;
          v381 = HIDWORD(*v375);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v97, HIDWORD(*v375));
          v382 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v528, v381);
          if (v379 == v382)
          {
            v383 = v87[11];
          }

          else
          {
            v383 = (v87[10] + v382 - v87[7]);
          }

          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v547, v380, *v383);
        }
      }

      v375 += 8;
    }
  }

  v103 = *(v547 + 55);
  v104 = gdc::Registry::storage<arComponents::WorldTransform>(v103);
  v105 = gdc::Registry::storage<arComponents::MeshComponent>(v103);
  v106 = gdc::Registry::storage<arComponents::Boundary>(v103);
  v519 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v103);
  v107 = gdc::Registry::storage<arComponents::OcclusionPipeline>(v103);
  v108.i64[0] = v104;
  v108.i64[1] = v105;
  v109.i64[0] = v106;
  v109.i64[1] = v519;
  v110 = vdupq_n_s64(0x20uLL);
  v506 = v107;
  v559 = vaddq_s64(v108, v110);
  v560 = vaddq_s64(v109, v110);
  v514 = (v107 + 32);
  v561 = v107 + 32;
  v111 = v559.i64[0];
  v112 = 1;
  v113 = &v559;
  do
  {
    if (*(v559.i64[v112] + 32) - *(v559.i64[v112] + 24) < *(v111 + 32) - *(v111 + 24))
    {
      v111 = v559.i64[v112];
      v113 = (&v559 + v112 * 8);
    }

    ++v112;
  }

  while (v112 != 5);
  v114 = (v104 + 32);
  v503 = v113->i64[0];
  v529 = v104;
  if (v104 + 32 == v113->i64[0])
  {
    v384 = *(v104 + 56);
    v385 = *(v104 + 64);
    while (v384 != v385)
    {
      v386 = *(v384 + 4);
      if (v105[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v105 + 4, v386) && v106[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v106 + 4, v386) && v519[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v519 + 4, v386) && *(v506 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v514, v386))
      {
        v387 = HIDWORD(*v384);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v105 + 4, HIDWORD(*v384));
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v106 + 4, v387);
        md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
      }

      v384 += 8;
    }
  }

  v539 = v105 + 4;
  if (v105 + 4 == v503)
  {
    v116 = v105[7];
    v115 = v105[8];
    if (v116 != v115)
    {
      v117 = v105[10];
      do
      {
        v118 = *(v116 + 4);
        if (*(v104 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v114, v118) && v106[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v106 + 4, v118) && v519[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v519 + 4, v118) && *(v506 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v514, v118))
        {
          v119 = HIDWORD(*v116);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v114, HIDWORD(*v116));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v106 + 4, v119);
          md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
        }

        v117 += 16;
        v116 += 8;
      }

      while (v116 != v115);
    }
  }

  v510 = v106 + 4;
  if (v106 + 4 == v503)
  {
    v120 = v106[7];
    v121 = v106[8];
    if (v120 != v121)
    {
      v122 = v106[10];
      do
      {
        v123 = *(v120 + 4);
        if (*(v529 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v114, v123) && v105[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v539, v123) && v519[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v519 + 4, v123) && *(v506 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v514, v123))
        {
          v124 = HIDWORD(*v120);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v114, HIDWORD(*v120));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v539, v124);
          md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
        }

        v122 += 24;
        v120 += 8;
      }

      while (v120 != v121);
    }
  }

  if (v519 + 4 == v503)
  {
    v388 = v519[7];
    v389 = v519[8];
    while (v388 != v389)
    {
      v390 = *(v388 + 4);
      if (*(v529 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v114, v390) && v105[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v539, v390) && v106[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v510, v390) && *(v506 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v514, v390))
      {
        v391 = HIDWORD(*v388);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v114, HIDWORD(*v388));
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v539, v391);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v510, v391);
        md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
      }

      v388 += 8;
    }
  }

  if (v514 == v503)
  {
    v392 = *(v506 + 56);
    v393 = *(v506 + 64);
    while (v392 != v393)
    {
      v394 = *(v392 + 4);
      if (*(v529 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v114, v394) && v105[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v539, v394) && v106[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v510, v394) && v519[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v519 + 4, v394))
      {
        v395 = HIDWORD(*v392);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v114, HIDWORD(*v392));
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v539, v395);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v510, v395);
        md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
      }

      v392 += 8;
    }
  }

  v125 = *(v547 + 55);
  v540 = gdc::Registry::storage<arComponents::WorldTransform>(v125);
  v126 = gdc::Registry::storage<arComponents::MeshDataComponent>(v125);
  v127 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v125);
  v128 = gdc::Registry::storage<arComponents::OcclusionPipeline>(v125);
  v129.i64[0] = v540;
  v129.i64[1] = v126;
  v130.i64[0] = v127;
  v130.i64[1] = v128;
  v131 = vdupq_n_s64(0x20uLL);
  v559 = vaddq_s64(v129, v131);
  v560 = vaddq_s64(v130, v131);
  v132 = v559.i64[0];
  v133 = 1;
  v134 = &v559;
  do
  {
    if (*(v559.i64[v133] + 32) - *(v559.i64[v133] + 24) < *(v132 + 32) - *(v132 + 24))
    {
      v132 = v559.i64[v133];
      v134 = (&v559 + v133 * 8);
    }

    ++v133;
  }

  while (v133 != 4);
  v135 = v134->i64[0];
  v136 = (v540 + 32);
  if (v540 + 32 == v134->i64[0])
  {
    v396 = *(v540 + 56);
    v397 = *(v540 + 64);
    while (v396 != v397)
    {
      v398 = *(v396 + 4);
      v399 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v126 + 4, v398);
      v400 = v126[8];
      if (v400 != v399 && v127[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v127 + 4, v398) && v128[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v128 + 4, v398))
      {
        v401 = *v396;
        v402 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v126 + 4, HIDWORD(*v396));
        if (v400 == v402)
        {
          v403 = v126[11];
        }

        else
        {
          v403 = (v126[10] + v402 - v126[7]);
        }

        md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v547, v401, *v403);
      }

      v396 += 8;
    }
  }

  v520 = v135;
  v530 = v126 + 4;
  if (v126 + 4 == v135)
  {
    v137 = v126[7];
    v138 = v126[8];
    if (v137 != v138)
    {
      v139 = v126[10];
      do
      {
        v140 = *(v137 + 4);
        if (*(v540 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v136, v140) && v127[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v127 + 4, v140) && v128[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v128 + 4, v140))
        {
          v141 = *v137;
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v136, HIDWORD(*v137));
          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v547, v141, *v139);
        }

        ++v139;
        v137 += 8;
      }

      while (v137 != v138);
    }
  }

  if (v127 + 4 == v520)
  {
    v405 = v127[7];
    v404 = v127[8];
    while (v405 != v404)
    {
      v406 = *(v405 + 4);
      if (*(v540 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v136, v406))
      {
        v407 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v530, v406);
        v408 = v126[8];
        if (v408 != v407 && v128[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v128 + 4, v406))
        {
          v409 = *v405;
          v410 = HIDWORD(*v405);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v136, HIDWORD(*v405));
          v411 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v530, v410);
          if (v408 == v411)
          {
            v412 = v126[11];
          }

          else
          {
            v412 = (v126[10] + v411 - v126[7]);
          }

          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v547, v409, *v412);
        }
      }

      v405 += 8;
    }
  }

  if (v128 + 4 == v520)
  {
    v413 = v128[7];
    v414 = v128[8];
    while (v413 != v414)
    {
      v415 = *(v413 + 4);
      if (*(v540 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v136, v415))
      {
        v416 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v530, v415);
        v417 = v126[8];
        if (v417 != v416 && v127[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v127 + 4, v415))
        {
          v418 = *v413;
          v419 = HIDWORD(*v413);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v136, HIDWORD(*v413));
          v420 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v530, v419);
          if (v417 == v420)
          {
            v421 = v126[11];
          }

          else
          {
            v421 = (v126[10] + v420 - v126[7]);
          }

          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v547, v418, *v421);
        }
      }

      v413 += 8;
    }
  }

  v142 = *(v547 + 55);
  v143 = gdc::Registry::storage<arComponents::WorldTransform>(v142);
  v144 = gdc::Registry::storage<arComponents::MeshComponent>(v142);
  v145 = gdc::Registry::storage<arComponents::Boundary>(v142);
  v521 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v142);
  v146 = gdc::Registry::storage<arComponents::ShadowPipeline>(v142);
  v147.i64[0] = v143;
  v147.i64[1] = v144;
  v148.i64[0] = v145;
  v148.i64[1] = v521;
  v149 = vdupq_n_s64(0x20uLL);
  v507 = v146;
  v559 = vaddq_s64(v147, v149);
  v560 = vaddq_s64(v148, v149);
  v515 = (v146 + 32);
  v561 = v146 + 32;
  v150 = v559.i64[0];
  v151 = 1;
  v152 = &v559;
  do
  {
    if (*(v559.i64[v151] + 32) - *(v559.i64[v151] + 24) < *(v150 + 32) - *(v150 + 24))
    {
      v150 = v559.i64[v151];
      v152 = (&v559 + v151 * 8);
    }

    ++v151;
  }

  while (v151 != 5);
  v153 = (v143 + 32);
  v504 = v152->i64[0];
  v531 = v143;
  if (v143 + 32 == v152->i64[0])
  {
    v422 = *(v143 + 56);
    v423 = *(v143 + 64);
    while (v422 != v423)
    {
      v424 = *(v422 + 4);
      if (v144[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v144 + 4, v424) && v145[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v145 + 4, v424) && v521[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v521 + 4, v424) && *(v507 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v515, v424))
      {
        v425 = HIDWORD(*v422);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v144 + 4, HIDWORD(*v422));
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v145 + 4, v425);
        md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
      }

      v422 += 8;
    }
  }

  v541 = v144 + 4;
  if (v144 + 4 == v504)
  {
    v155 = v144[7];
    v154 = v144[8];
    if (v155 != v154)
    {
      v156 = v144[10];
      do
      {
        v157 = *(v155 + 4);
        if (*(v143 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v153, v157) && v145[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v145 + 4, v157) && v521[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v521 + 4, v157) && *(v507 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v515, v157))
        {
          v158 = HIDWORD(*v155);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v153, HIDWORD(*v155));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v145 + 4, v158);
          md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
        }

        v156 += 16;
        v155 += 8;
      }

      while (v155 != v154);
    }
  }

  v511 = v145 + 4;
  if (v145 + 4 == v504)
  {
    v159 = v145[7];
    v160 = v145[8];
    if (v159 != v160)
    {
      v161 = v145[10];
      do
      {
        v162 = *(v159 + 4);
        if (*(v531 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v153, v162) && v144[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v541, v162) && v521[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v521 + 4, v162) && *(v507 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v515, v162))
        {
          v163 = HIDWORD(*v159);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v153, HIDWORD(*v159));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v541, v163);
          md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
        }

        v161 += 24;
        v159 += 8;
      }

      while (v159 != v160);
    }
  }

  if (v521 + 4 == v504)
  {
    v426 = v521[7];
    v427 = v521[8];
    while (v426 != v427)
    {
      v428 = *(v426 + 4);
      if (*(v531 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v153, v428) && v144[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v541, v428) && v145[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v511, v428) && *(v507 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v515, v428))
      {
        v429 = HIDWORD(*v426);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v153, HIDWORD(*v426));
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v541, v429);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v511, v429);
        md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
      }

      v426 += 8;
    }
  }

  if (v515 == v504)
  {
    v430 = *(v507 + 56);
    v431 = *(v507 + 64);
    while (v430 != v431)
    {
      v432 = *(v430 + 4);
      if (*(v531 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v153, v432) && v144[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v541, v432) && v145[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v511, v432) && v521[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v521 + 4, v432))
      {
        v433 = HIDWORD(*v430);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v153, HIDWORD(*v430));
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v541, v433);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v511, v433);
        md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()();
      }

      v430 += 8;
    }
  }

  v164 = *(v547 + 55);
  v542 = gdc::Registry::storage<arComponents::WorldTransform>(v164);
  v165 = gdc::Registry::storage<arComponents::MeshDataComponent>(v164);
  v166 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v164);
  v167 = gdc::Registry::storage<arComponents::ShadowPipeline>(v164);
  v168.i64[0] = v542;
  v168.i64[1] = v165;
  v169.i64[0] = v166;
  v169.i64[1] = v167;
  v170 = vdupq_n_s64(0x20uLL);
  v559 = vaddq_s64(v168, v170);
  v560 = vaddq_s64(v169, v170);
  v171 = v559.i64[0];
  v172 = 1;
  v173 = &v559;
  do
  {
    if (*(v559.i64[v172] + 32) - *(v559.i64[v172] + 24) < *(v171 + 32) - *(v171 + 24))
    {
      v171 = v559.i64[v172];
      v173 = (&v559 + v172 * 8);
    }

    ++v172;
  }

  while (v172 != 4);
  v174 = v173->i64[0];
  v175 = (v542 + 32);
  if (v542 + 32 == v173->i64[0])
  {
    v434 = *(v542 + 56);
    v435 = *(v542 + 64);
    while (v434 != v435)
    {
      v436 = *(v434 + 4);
      v437 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v165 + 4, v436);
      v438 = v165[8];
      if (v438 != v437 && v166[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v166 + 4, v436) && v167[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v167 + 4, v436))
      {
        v439 = *v434;
        v440 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v165 + 4, HIDWORD(*v434));
        if (v438 == v440)
        {
          v441 = v165[11];
        }

        else
        {
          v441 = (v165[10] + v440 - v165[7]);
        }

        md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v547, v439, *v441);
      }

      v434 += 8;
    }
  }

  v522 = v174;
  v532 = v165 + 4;
  if (v165 + 4 == v174)
  {
    v176 = v165[7];
    v177 = v165[8];
    if (v176 != v177)
    {
      v178 = v165[10];
      do
      {
        v179 = *(v176 + 4);
        if (*(v542 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v175, v179) && v166[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v166 + 4, v179) && v167[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v167 + 4, v179))
        {
          v180 = *v176;
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v175, HIDWORD(*v176));
          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v547, v180, *v178);
        }

        ++v178;
        v176 += 8;
      }

      while (v176 != v177);
    }
  }

  if (v166 + 4 == v522)
  {
    v443 = v166[7];
    v442 = v166[8];
    while (v443 != v442)
    {
      v444 = *(v443 + 4);
      if (*(v542 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v175, v444))
      {
        v445 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v532, v444);
        v446 = v165[8];
        if (v446 != v445 && v167[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v167 + 4, v444))
        {
          v447 = *v443;
          v448 = HIDWORD(*v443);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v175, HIDWORD(*v443));
          v449 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v532, v448);
          if (v446 == v449)
          {
            v450 = v165[11];
          }

          else
          {
            v450 = (v165[10] + v449 - v165[7]);
          }

          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v547, v447, *v450);
        }
      }

      v443 += 8;
    }
  }

  if (v167 + 4 == v522)
  {
    v451 = v167[7];
    v452 = v167[8];
    while (v451 != v452)
    {
      v453 = *(v451 + 4);
      if (*(v542 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v175, v453))
      {
        v454 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v532, v453);
        v455 = v165[8];
        if (v455 != v454 && v166[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v166 + 4, v453))
        {
          v456 = *v451;
          v457 = HIDWORD(*v451);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v175, HIDWORD(*v451));
          v458 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v532, v457);
          if (v455 == v458)
          {
            v459 = v165[11];
          }

          else
          {
            v459 = (v165[10] + v458 - v165[7]);
          }

          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v547, v456, *v459);
        }
      }

      v451 += 8;
    }
  }

  v181 = gdc::Registry::storage<arComponents::PipelineIdentifier>(*(v547 + 55));
  v182 = v181[7];
  v183 = v181[8];
  v184 = v547;
  if (v182 != v183)
  {
    v185 = v181[10];
    do
    {
      v559.i64[0] = *v182;
      v186 = *(v184 + 360);
      if (v186)
      {
        v187 = *v185;
        v188 = vcnt_s8(v186);
        v188.i16[0] = vaddlv_u8(v188);
        if (v188.u32[0] > 1uLL)
        {
          v189 = *v185;
          v190 = v547;
          if (v187 >= *&v186)
          {
            v189 = v187 % *&v186;
          }
        }

        else
        {
          v189 = (*&v186 - 1) & v187;
          v190 = v547;
        }

        v191 = *(v190 + 44);
        v192 = *(v191 + 8 * v189);
        if (v192)
        {
          v193 = *v192;
          if (*v192)
          {
            v194 = *&v186 - 1;
            do
            {
              v195 = v193[1];
              if (v195 == v187)
              {
                if (v193[2] == v187)
                {
                  if (v188.u32[0] > 1uLL)
                  {
                    v196 = *v185;
                    if (v187 >= *&v186)
                    {
                      v196 = v187 % *&v186;
                    }
                  }

                  else
                  {
                    v196 = v194 & v187;
                  }

                  v197 = *(v191 + 8 * v196);
                  if (!v197 || (v198 = *v197) == 0)
                  {
LABEL_215:
                    operator new();
                  }

                  while (1)
                  {
                    v199 = v198[1];
                    if (v199 == v187)
                    {
                      if (v198[2] == v187)
                      {
                        (**v198[5])(v198[5], *(v547 + 55), &v559);
                        goto LABEL_216;
                      }
                    }

                    else
                    {
                      if (v188.u32[0] > 1uLL)
                      {
                        if (v199 >= *&v186)
                        {
                          v199 %= *&v186;
                        }
                      }

                      else
                      {
                        v199 &= v194;
                      }

                      if (v199 != v196)
                      {
                        goto LABEL_215;
                      }
                    }

                    v198 = *v198;
                    if (!v198)
                    {
                      goto LABEL_215;
                    }
                  }
                }
              }

              else
              {
                if (v188.u32[0] > 1uLL)
                {
                  if (v195 >= *&v186)
                  {
                    v195 %= *&v186;
                  }
                }

                else
                {
                  v195 &= v194;
                }

                if (v195 != v189)
                {
                  break;
                }
              }

              v193 = *v193;
            }

            while (v193);
          }
        }
      }

LABEL_216:
      v185 += 3;
      ++v182;
      v184 = v547;
    }

    while (v182 != v183);
  }

  v200 = *(v184 + 55);
  v201 = gdc::Registry::storage<arComponents::ContextEntity>(v200);
  v202 = gdc::Registry::storage<arComponents::PipelineInstanceToUse>(v200);
  v203 = gdc::Registry::storage<md::pipelineECS::HasUVMapping>(v200);
  v204.i64[0] = v201;
  v204.i64[1] = v202;
  v205 = v203 + 4;
  v559 = vaddq_s64(v204, vdupq_n_s64(0x20uLL));
  v560.i64[0] = (v203 + 4);
  v206 = v559.i64[0];
  v207 = 1;
  v208 = &v559;
  while (1)
  {
    if (*(v559.i64[v207] + 32) - *(v559.i64[v207] + 24) < *(v206 + 32) - *(v206 + 24))
    {
      v206 = v559.i64[v207];
      v208 = (&v559 + v207 * 8);
    }

    if (++v207 == 3)
    {
      v543 = v201;
      v209 = (v201 + 32);
      v533 = v208->i64[0];
      if (v201 + 32 == v208->i64[0])
      {
        v460 = *(v201 + 56);
        v461 = *(v201 + 64);
        while (v460 != v461)
        {
          v462 = *(v460 + 4);
          v463 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v202 + 4, v462);
          v464 = v202[8];
          if (v464 != v463)
          {
            v465 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v205, v462);
            v466 = v203[8];
            if (v466 != v465)
            {
              v467 = *(v460 + 4);
              v468 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v202 + 4, v467);
              if (v464 == v468)
              {
                v469 = v202[11];
              }

              else
              {
                v469 = v202[10] + v468 - v202[7];
              }

              v470 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v205, v467);
              if (v466 == v470)
              {
                v471 = v203[11];
              }

              else
              {
                v471 = (v203[10] + v470 - v203[7]);
              }

              (*(**v471 + 8))(*v471, v469);
            }
          }

          v460 += 8;
        }
      }

      v523 = v202 + 4;
      if (v202 + 4 == v533)
      {
        v211 = v202[7];
        v210 = v202[8];
        if (v211 != v210)
        {
          v212 = v202[10];
          do
          {
            v213 = *(v211 + 4);
            if (*(v543 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v209, v213))
            {
              v214 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v205, v213);
              v215 = v203[8];
              if (v215 != v214)
              {
                v216 = *(v211 + 4);
                geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v209, v216);
                v217 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v205, v216);
                if (v215 == v217)
                {
                  v218 = v203[11];
                }

                else
                {
                  v218 = (v203[10] + v217 - v203[7]);
                }

                (*(**v218 + 8))(*v218, v212);
              }
            }

            v212 += 8;
            v211 += 8;
          }

          while (v211 != v210);
        }
      }

      if (v205 == v533)
      {
        v219 = v203[7];
        v220 = v203[8];
        if (v219 != v220)
        {
          v221 = v203[10];
          do
          {
            v222 = *(v219 + 4);
            if (*(v543 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v209, v222))
            {
              v223 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v523, v222);
              v224 = v202[8];
              if (v224 != v223)
              {
                v225 = *(v219 + 4);
                geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v209, v225);
                v226 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v523, v225);
                if (v224 == v226)
                {
                  v227 = v202[11];
                }

                else
                {
                  v227 = v202[10] + v226 - v202[7];
                }

                (*(**v221 + 8))(*v221, v227);
              }
            }

            ++v221;
            v219 += 8;
          }

          while (v219 != v220);
        }
      }

      v228 = *(v547 + 55);
      v229 = gdc::Registry::storage<arComponents::ContextEntity>(v228);
      v230 = gdc::Registry::storage<arComponents::PipelineInstanceToUse>(v228);
      v231 = gdc::Registry::storage<md::pipelineECS::HasUVScale>(v228);
      v232.i64[0] = v229;
      v232.i64[1] = v230;
      v233 = v231 + 4;
      v559 = vaddq_s64(v232, vdupq_n_s64(0x20uLL));
      v560.i64[0] = (v231 + 4);
      v234 = v559.i64[0];
      v235 = 1;
      v236 = &v559;
      while (1)
      {
        if (*(v559.i64[v235] + 32) - *(v559.i64[v235] + 24) < *(v234 + 32) - *(v234 + 24))
        {
          v234 = v559.i64[v235];
          v236 = (&v559 + v235 * 8);
        }

        if (++v235 == 3)
        {
          v544 = v229;
          v237 = (v229 + 32);
          v534 = v236->i64[0];
          if (v229 + 32 == v236->i64[0])
          {
            v472 = *(v229 + 56);
            v473 = *(v229 + 64);
            while (v472 != v473)
            {
              v474 = *(v472 + 4);
              v475 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v230 + 4, v474);
              v476 = v230[8];
              if (v476 != v475)
              {
                v477 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v233, v474);
                v478 = v231[8];
                if (v478 != v477)
                {
                  v479 = *(v472 + 4);
                  v480 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v230 + 4, v479);
                  if (v476 == v480)
                  {
                    v481 = v230[11];
                  }

                  else
                  {
                    v481 = v230[10] + v480 - v230[7];
                  }

                  v482 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v233, v479);
                  if (v478 == v482)
                  {
                    v483 = v231[11];
                  }

                  else
                  {
                    v483 = (v231[10] + v482 - v231[7]);
                  }

                  (*(**v483 + 8))(*v483, v481);
                }
              }

              v472 += 8;
            }
          }

          v524 = v230 + 4;
          if (v230 + 4 == v534)
          {
            v239 = v230[7];
            v238 = v230[8];
            if (v239 != v238)
            {
              v240 = v230[10];
              do
              {
                v241 = *(v239 + 4);
                if (*(v544 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v237, v241))
                {
                  v242 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v233, v241);
                  v243 = v231[8];
                  if (v243 != v242)
                  {
                    v244 = *(v239 + 4);
                    geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v237, v244);
                    v245 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v233, v244);
                    if (v243 == v245)
                    {
                      v246 = v231[11];
                    }

                    else
                    {
                      v246 = (v231[10] + v245 - v231[7]);
                    }

                    (*(**v246 + 8))(*v246, v240);
                  }
                }

                v240 += 8;
                v239 += 8;
              }

              while (v239 != v238);
            }
          }

          if (v233 == v534)
          {
            v247 = v231[7];
            v248 = v231[8];
            if (v247 != v248)
            {
              v249 = v231[10];
              do
              {
                v250 = *(v247 + 4);
                if (*(v544 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v237, v250))
                {
                  v251 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v524, v250);
                  v252 = v230[8];
                  if (v252 != v251)
                  {
                    v253 = *(v247 + 4);
                    geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v237, v253);
                    v254 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v524, v253);
                    if (v252 == v254)
                    {
                      v255 = v230[11];
                    }

                    else
                    {
                      v255 = v230[10] + v254 - v230[7];
                    }

                    (*(**v249 + 8))(*v249, v255);
                  }
                }

                ++v249;
                v247 += 8;
              }

              while (v247 != v248);
            }
          }

          v256 = *(v547 + 55);
          v545 = gdc::Registry::storage<arComponents::ContextEntity>(v256);
          v257 = gdc::Registry::storage<arComponents::PipelineInstanceToUse>(v256);
          HasARLighting = gdc::Registry::storage<md::pipelineECS::HasARLightingSetup>(v256);
          v259.i64[0] = v545;
          v259.i64[1] = v257;
          v260 = HasARLighting + 4;
          v559 = vaddq_s64(v259, vdupq_n_s64(0x20uLL));
          v560.i64[0] = (HasARLighting + 4);
          v261 = v559.i64[0];
          v262 = 1;
          v263 = &v559;
          while (1)
          {
            if (*(v559.i64[v262] + 32) - *(v559.i64[v262] + 24) < *(v261 + 32) - *(v261 + 24))
            {
              v261 = v559.i64[v262];
              v263 = (&v559 + v262 * 8);
            }

            if (++v262 == 3)
            {
              v264 = (v545 + 32);
              v525 = v263->i64[0];
              if (v545 + 32 == v263->i64[0])
              {
                v484 = *(v545 + 56);
                v485 = *(v545 + 64);
                while (v484 != v485)
                {
                  v486 = *(v484 + 4);
                  v487 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v257 + 4, v486);
                  v488 = v257[8];
                  if (v488 != v487)
                  {
                    v489 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v260, v486);
                    v490 = HasARLighting[8];
                    if (v490 != v489)
                    {
                      v491 = *(v484 + 4);
                      v492 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v257 + 4, v491);
                      if (v488 == v492)
                      {
                        v493 = v257[11];
                      }

                      else
                      {
                        v493 = v257[10] + v492 - v257[7];
                      }

                      v494 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v260, v491);
                      if (v490 == v494)
                      {
                        v495 = HasARLighting[11];
                      }

                      else
                      {
                        v495 = (HasARLighting[10] + v494 - HasARLighting[7]);
                      }

                      v496 = +[VKDebugSettings sharedSettings];
                      v497 = *v495;
                      [v496 arDebugStylingPOIEnvMapIntensity];
                      v499 = v498;
                      [v496 arDebugStylingPOILightIntensity];
                      (*(*v497 + 8))(v497, v493, v499, v500);
                    }
                  }

                  v484 += 8;
                }
              }

              v535 = v257 + 4;
              if (v257 + 4 == v525)
              {
                v266 = v257[7];
                v265 = v257[8];
                if (v266 != v265)
                {
                  v267 = v257[10];
                  do
                  {
                    v268 = *(v266 + 4);
                    if (*(v545 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v264, v268))
                    {
                      v269 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v260, v268);
                      v270 = HasARLighting[8];
                      if (v270 != v269)
                      {
                        v271 = *(v266 + 4);
                        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v264, v271);
                        v272 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v260, v271);
                        if (v270 == v272)
                        {
                          v273 = HasARLighting[11];
                        }

                        else
                        {
                          v273 = (HasARLighting[10] + v272 - HasARLighting[7]);
                        }

                        v274 = +[VKDebugSettings sharedSettings];
                        v275 = *v273;
                        [v274 arDebugStylingPOIEnvMapIntensity];
                        v277 = v276;
                        [v274 arDebugStylingPOILightIntensity];
                        (*(*v275 + 8))(v275, v267, v277, v278);
                      }
                    }

                    v267 += 8;
                    v266 += 8;
                  }

                  while (v266 != v265);
                }
              }

              if (v260 == v525)
              {
                v279 = HasARLighting[7];
                v280 = HasARLighting[8];
                if (v279 != v280)
                {
                  v281 = HasARLighting[10];
                  do
                  {
                    v282 = *(v279 + 4);
                    if (*(v545 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v264, v282))
                    {
                      v283 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v535, v282);
                      v284 = v257[8];
                      if (v284 != v283)
                      {
                        v285 = *(v279 + 4);
                        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v264, v285);
                        v286 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v535, v285);
                        if (v284 == v286)
                        {
                          v287 = v257[11];
                        }

                        else
                        {
                          v287 = v257[10] + v286 - v257[7];
                        }

                        v288 = +[VKDebugSettings sharedSettings];
                        v289 = *v281;
                        [v288 arDebugStylingPOIEnvMapIntensity];
                        v291 = v290;
                        [v288 arDebugStylingPOILightIntensity];
                        (*(*v289 + 8))(v289, v287, v291, v292);
                      }
                    }

                    ++v281;
                    v279 += 8;
                  }

                  while (v279 != v280);
                }
              }

              v293 = *(v547 + 55);
              v294 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
              v295 = *(v294 + 888);
              v553[4] = *(v294 + 872);
              v553[5] = v295;
              v296 = *(v294 + 920);
              v553[6] = *(v294 + 904);
              v553[7] = v296;
              v297 = *(v294 + 824);
              v553[0] = *(v294 + 808);
              v553[1] = v297;
              v298 = *(v294 + 856);
              v553[2] = *(v294 + 840);
              v553[3] = v298;
              v299 = gdc::Registry::storage<arComponents::WorldTransform>(v293);
              v300 = gdc::Registry::storage<arComponents::ViewConstantDataComponent>(v293);
              v301 = v299 + 4;
              v302 = v300 + 4;
              v304 = v300[7];
              v303 = v300[8];
              v508 = v299;
              v512 = v300;
              v305 = v299[8];
              v526 = v299[7];
              if (v303 - v304 >= (v305 - v526))
              {
                v306 = v299 + 4;
              }

              else
              {
                v306 = v300 + 4;
              }

              v516 = v306;
              if (v301 == v306 && v526 != v305)
              {
                v307 = v299[10];
                v308 = v299[7];
                v546 = v300[10];
                v536 = v300[11];
                do
                {
                  if (v303 != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v302, *(v308 + 4)))
                  {
                    v309 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v302, *(v308 + 4));
                    if (v303 == v309)
                    {
                      v310 = v536;
                    }

                    else
                    {
                      v310 = (v546 + 8 * (v309 - v304));
                    }

                    geo::Transform<double>::toMatrix(v554, v307);
                    v311 = 0;
                    v312 = v553;
                    do
                    {
                      v313 = 0;
                      v314 = v554;
                      do
                      {
                        v315 = 0;
                        v316 = 0.0;
                        v317 = v312;
                        do
                        {
                          v318 = *v317;
                          v317 += 4;
                          v316 = v316 + *&v314[v315++] * v318;
                        }

                        while (v315 != 4);
                        *&v559.i64[4 * v313++ + v311] = v316;
                        v314 += 4;
                      }

                      while (v313 != 4);
                      ++v311;
                      v312 = (v312 + 8);
                    }

                    while (v311 != 4);
                    v319 = 0;
                    v320 = &v559;
                    do
                    {
                      v322 = *v320;
                      v321 = v320[1];
                      v320 += 2;
                      *(&v555 + v319) = vcvt_hight_f32_f64(vcvt_f32_f64(v322), v321);
                      v319 += 16;
                    }

                    while (v319 != 64);
                    v323 = v556;
                    *v310 = v555;
                    v310[1] = v323;
                    v324 = v558;
                    v310[2] = v557;
                    v310[3] = v324;
                  }

                  v307 += 10;
                  v308 += 8;
                }

                while (v308 != v305);
              }

              if (v302 == v516)
              {
                v325 = v512[7];
                v326 = v512[8];
                if (v325 != v326)
                {
                  v327 = v512[10];
                  v328 = v299[10];
                  v329 = v508[11];
                  do
                  {
                    if (v305 != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v301, *(v325 + 4)))
                    {
                      v330 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v301, *(v325 + 4));
                      if (v305 == v330)
                      {
                        v331 = v329;
                      }

                      else
                      {
                        v331 = (v328 + 80 * ((v330 - v526) >> 3));
                      }

                      geo::Transform<double>::toMatrix(v554, v331);
                      v332 = 0;
                      v333 = v553;
                      do
                      {
                        v334 = 0;
                        v335 = v554;
                        do
                        {
                          v336 = 0;
                          v337 = 0.0;
                          v338 = v333;
                          do
                          {
                            v339 = *v338;
                            v338 += 4;
                            v337 = v337 + *&v335[v336++] * v339;
                          }

                          while (v336 != 4);
                          *&v559.i64[4 * v334++ + v332] = v337;
                          v335 += 4;
                        }

                        while (v334 != 4);
                        ++v332;
                        v333 = (v333 + 8);
                      }

                      while (v332 != 4);
                      v340 = 0;
                      v341 = &v559;
                      do
                      {
                        v343 = *v341;
                        v342 = v341[1];
                        v341 += 2;
                        *(&v555 + v340) = vcvt_hight_f32_f64(vcvt_f32_f64(v343), v342);
                        v340 += 16;
                      }

                      while (v340 != 64);
                      v344 = v556;
                      *v327 = v555;
                      v327[1] = v344;
                      v345 = v558;
                      v327[2] = v557;
                      v327[3] = v345;
                    }

                    v327 += 4;
                    v325 += 8;
                  }

                  while (v325 != v326);
                }
              }

              md::GeometryLogic::createUnitTransformConstantData(&v559);
            }
          }
        }
      }
    }
  }
}

void sub_1B2CB15C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27)
{
  operator delete(v27);
  if (a25 != a27)
  {
    free(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(uint64_t a1)
{
  v3 = 0x191A1E6102D25134;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x191A1E6102D25134uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

ggl::zone_mallocator *md::ARMeshRenderLayer::layoutRenderables(md::LayoutContext const&,ggl::CommandBuffer *,md::PassList &)::$_0::operator()(uint64_t **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v8 = HIDWORD(a2);
  v10 = a1[1];
  v11 = **a1;
  v12 = gdc::Registry::storage<arComponents::CommandBufferLocation>(v10[55]);
  v13 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v12 + 4, v8);
  if (v12[8] != v13)
  {
    v14 = v12[10];
    v15 = v12[11];
    v16 = (v14 + ((v13 - v12[7]) >> 2));
    if (v16 != v15 && v14 != 0)
    {
      v18 = md::FrameGraph::renderQueueForPass(a1[2][1], *v16);
      if (!v18 || (v11 = *(*(v18 + 16) + 8 * v16[1])) == 0)
      {
        v11 = **a1;
      }
    }
  }

  v19 = (*(*(**(a3 + 208) + 96) + 48) - *(*(**(a3 + 208) + 96) + 40)) >> 1;
  v20 = ggl::FragmentedPool<ggl::RenderItem>::pop(v10[54]);
  v20[6] = *a4;
  v21 = *a5;
  v22 = **(a3 + 208);
  v20[3] = v10 + 17;
  v20[4] = v21;
  v23 = *(*(a3 + 32) + 16);
  v20[8] = v22;
  v20[9] = 0;
  v20[10] = v19;
  v20[11] = 0;
  v20[12] = 1;
  v20[13] = v23;
  v25 = v20;
  return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v11 + 72), &v25);
}

uint64_t gdc::Registry::storage<arComponents::CommandBufferLocation>(uint64_t a1)
{
  v3 = 0x4F42F084E69A322;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x4F42F084E69A322uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::CommandBufferLocation>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 2;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *(v6 + v7) = *(a1[11] - 2);
    a1[11] -= 2;
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::CommandBufferLocation>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::CommandBufferLocation>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::MeshRenderableComponent>(uint64_t a1)
{
  v3 = 0x675E87F739E21A6;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x675E87F739E21A6uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::RenderOrder>(uint64_t a1)
{
  v3 = 0x72E34259225F8C3ELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x72E34259225F8C3EuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::RenderOrder>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    *v6 = *(v7 - 8);
    a1[11] = v7 - 8;
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::RenderOrder>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::RenderOrder>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 216 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    md::MeshRenderable::operator=(v6, a1[11] - 216);
    md::MeshRenderable::~MeshRenderable((a1[11] - 216));
    a1[11] = v7;
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

uint64_t md::MeshRenderable::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 40);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 48) = v8;
  for (i = 76; i != 88; i += 4)
  {
    *(a1 + i) = *(a2 + i);
  }

  do
  {
    *(a1 + i) = *(a2 + i);
    i += 4;
  }

  while (i != 100);
  v10 = (a1 + 100);
  v11 = (a2 + 100);
  v12 = *(a1 + 124);
  if (v12 == *(a2 + 124))
  {
    if (*(a1 + 124))
    {
      for (j = 0; j != 12; j += 4)
      {
        *(v10 + j) = *(v11 + j);
      }

      for (k = 0; k != 12; k += 4)
      {
        *(a1 + 112 + k) = *(a2 + 112 + k);
      }
    }
  }

  else
  {
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v16 = *v11;
      *(a1 + 116) = *(a2 + 116);
      *v10 = v16;
      v15 = 1;
    }

    *(a1 + 124) = v15;
  }

  v17 = (a1 + 128);
  v18 = (a2 + 128);
  v19 = *(a1 + 140);
  if (v19 == *(a2 + 140))
  {
    if (*(a1 + 140))
    {
      for (m = 0; m != 12; m += 4)
      {
        *(v17 + m) = *(v18 + m);
      }
    }
  }

  else
  {
    if (v19)
    {
      v21 = 0;
    }

    else
    {
      v22 = *v18;
      *(a1 + 136) = *(a2 + 136);
      *v17 = v22;
      v21 = 1;
    }

    *(a1 + 140) = v21;
  }

  v23 = *(a2 + 144);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 144) = v23;
  if (*(a1 + 176) == *(a2 + 176))
  {
    if (*(a1 + 176))
    {
      v25 = *(a2 + 152);
      v24 = *(a2 + 160);
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v26 = *(a1 + 160);
      *(a1 + 152) = v25;
      *(a1 + 160) = v24;
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v26);
      }

      *(a1 + 168) = *(a2 + 168);
    }
  }

  else if (*(a1 + 176))
  {
    v27 = *(a1 + 160);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }

    *(a1 + 176) = 0;
  }

  else
  {
    v28 = *(a2 + 160);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = v28;
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = 1;
  }

  v29 = *(a2 + 184);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 184) = v29;
  if (*(a1 + 193) == *(a2 + 193))
  {
    if (*(a1 + 193))
    {
      *(a1 + 192) = *(a2 + 192);
    }
  }

  else if (*(a1 + 193))
  {
    *(a1 + 193) = 0;
  }

  else
  {
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 193) = 1;
  }

  v30 = *(a2 + 196);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 196) = v30;
  return a1;
}

void gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<arComponents::MeshRenderableComponent>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<arComponents::MeshRenderableComponent>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        md::MeshRenderable::~MeshRenderable((v4 - 216));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<arComponents::MeshRenderableComponent>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t gdc::Registry::storage<md::pipelineECS::HasUVScale>(uint64_t a1)
{
  v3 = 0xB41DC12BDB54AE20;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xB41DC12BDB54AE20);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::AlbedoTextureUVScale>(uint64_t a1)
{
  v3 = 0xC0EA819B6DB55095;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xC0EA819B6DB55095);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVScale>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 8);
    v7 -= 8;
    *v6 = v8;
    v6[1] = *(v7 + 4);
    a1[11] = v7;
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

void gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVScale>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVScale>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::HasUVScale>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::pipelineECS::HasUVScale>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::HasUVScale>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<md::pipelineECS::HasUVMapping>(uint64_t a1)
{
  v3 = 0x643B34C49CDDA18CLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x643B34C49CDDA18CuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::AlbedoTextureUVMapping>(uint64_t a1)
{
  v3 = 0xDC92CCE45D2E7F01;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xDC92CCE45D2E7F01);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVMapping>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 2 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 4);
    v7 -= 4;
    *v6 = v8;
    v6[1] = v7[1];
    v6[2] = v7[2];
    v6[3] = v7[3];
    a1[11] = v7;
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

void gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVMapping>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVMapping>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::HasUVMapping>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::pipelineECS::HasUVMapping>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::HasUVMapping>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<md::pipelineECS::HasAlbedo>(uint64_t a1)
{
  v3 = 0xC7C4F4CB9AB24850;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xC7C4F4CB9AB24850);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::AlbedoTextureComponent>(uint64_t a1)
{
  v3 = 0x6CFD195DCBD616C9;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x6CFD195DCBD616C9uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::AlbedoTextureComponent>::remove(void *a1, uint64_t a2)
{
  v15 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 48 * ((v3 - a1[7]) >> 3));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 40);
    *v6 = *(v7 - 48);
    v9 = *(v7 - 32);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[2];
    v6[1] = v8;
    v6[2] = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=((v6 + 3), *(v7 - 16));
    v11 = a1[11] - 48;
    std::__destroy_at[abi:nn200100]<arComponents::AlbedoTextureComponent,0>(v11);
    a1[11] = v11;
    v12 = a1[28];
    if (v12)
    {
      v13 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v12[6], v13, &v15, 1);
        v12 = *v12;
      }

      while (v12);
    }
  }

  return v5 != v4;
}

void std::__destroy_at[abi:nn200100]<arComponents::AlbedoTextureComponent,0>(uint64_t a1)
{
  *(a1 + 24) = &unk_1F2A43EB8;

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A43EB8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A43EB8;

  return a1;
}

void gdc::ComponentStorageWrapper<arComponents::AlbedoTextureComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<arComponents::AlbedoTextureComponent>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<arComponents::AlbedoTextureComponent>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::__destroy_at[abi:nn200100]<arComponents::AlbedoTextureComponent,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}