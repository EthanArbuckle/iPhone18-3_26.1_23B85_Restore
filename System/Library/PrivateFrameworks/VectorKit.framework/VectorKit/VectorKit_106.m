ggl::zone_mallocator *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Textured::TileScalar>>::pop(void *a1)
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

  std::vector<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v9);
  v10 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v10);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator>>::push_back[abi:nn200100](v7, v8);
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::PoleTexturedBlendPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::PoleTexturedBlendPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::PoleTexturedBlendPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::PolygonSolidFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::MeshPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonSolidFill::MeshPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::PolygonSolidFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonSolidFill::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonSolidFill::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

uint64_t *___ZN2md19COverlayRenderLayer24updateKeyframeAnimationsERKNSt3__16vectorIPNS_21MapTileDataRenderableINS_15OverlayTileDataEEENS1_9allocatorIS6_EEEEPKNS_15OverlaysContextE_block_invoke(uint64_t a1, float a2)
{
  v2 = *(a1 + 68);
  v3 = v2 * a2;
  v4 = floorf(v3);
  v5 = roundf(v3);
  if (!*(a1 + 56))
  {
    v4 = v5;
  }

  v6 = v4 % v2;
  if (v6 + 1 == v2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 1;
  }

  v8 = v3 - v6;
  if (*(a1 + 70))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  result = std::__hash_table<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((*(a1 + 32) + 400), *(a1 + 64));
  *(result + 10) = v6;
  *(result + 11) = v7;
  *(result + 6) = v9;
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void *>>>::operator()[abi:nn200100](char a1, uint64_t a2)
{
  if (a1)
  {
    *(a2 + 24) = &unk_1F2A4BA00;
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__function::__func<md::COverlayRenderResources::resetPools(void)::$_0,std::allocator<md::COverlayRenderResources::resetPools(void)::$_0>,void ()(ggl::RenderItem *)>::operator()(uint64_t a1, void *a2)
{
  v2 = *a2;
  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[12] = 1;
}

void ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A194D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F6EC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
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

void ggl::ConstantDataTyped<ggl::PolygonSolidFill::SolidFill>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PolygonSolidFill::SolidFill>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2F088;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonSolidFill::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2F018;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F6F078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
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

void std::__shared_ptr_emplace<ggl::Textured::PoleTexturedBlendPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A192E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Textured::SRGBBlendPos4DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A192A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A19270;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Textured::SRGBBlendPos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A19238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DaVinci::RibbonPipelineState::~RibbonPipelineState(ggl::DaVinci::RibbonPipelineState *this)
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

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::MeshTyped<ggl::DaVinci::RibbonVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::DaVinci::RibbonVbo>::attributesReflection(void)::r = &ggl::DaVinci::ribbonVboReflection;
    }

    ggl::MeshTyped<ggl::DaVinci::RibbonVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::DaVinci::RibbonVbo>::attributesReflection(void)::r;
    unk_1EB841D08 = 1;
  }
}

void ggl::DaVinci::RibbonPipelineSetup::~RibbonPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)6>>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)6>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[2];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS9_9SliceTypeE6EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A19EA0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE6EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)6>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE6EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A19EA0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)6>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A19E80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)6>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A19E80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE3EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)3>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)3>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A33778;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)3>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A33778;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls30FinishedProcessingDepthPrePassEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52EE0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30FinishedProcessingDepthPrePassEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessingDepthPrePass>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30FinishedProcessingDepthPrePassEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52EE0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FinishedProcessingDepthPrePass,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52EC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FinishedProcessingDepthPrePass,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52EC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessingDepthPrePass>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessingDepthPrePass>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[270];
}

uint64_t std::__function::__func<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_2,std::allocator<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_2>,void ()(md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A1A1F8;
  v4 = ecs2::ExecutionTaskContext::currentEntity(a1);
  v5 = &v3;
  v8 = &v6;
  v6 = &unk_1F2A1A1F8;
  v7 = v4;
  v9 = 2;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v2, &v6);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v3);
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::PendingProcessingDepthPrePass>(ecs2::Entity,std::type_identity<md::ls::PendingProcessingDepthPrePass>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::PendingProcessingDepthPrePass>(ecs2::Entity,std::type_identity<md::ls::PendingProcessingDepthPrePass>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A1A1F8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_2,std::allocator<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_2>,void ()(md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A1B0;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls24FinishedProcessingShadowEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A531C0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls24FinishedProcessingShadowEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessingShadow>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls24FinishedProcessingShadowEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A531C0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FinishedProcessingShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A531A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FinishedProcessingShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A531A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessingShadow>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessingShadow>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[382];
}

uint64_t std::__function::__func<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_1,std::allocator<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_1>,void ()(md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A1A168;
  v4 = ecs2::ExecutionTaskContext::currentEntity(a1);
  v5 = &v3;
  v8 = &v6;
  v6 = &unk_1F2A1A168;
  v7 = v4;
  v9 = 2;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v2, &v6);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v3);
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::PendingProcessingShadow>(ecs2::Entity,std::type_identity<md::ls::PendingProcessingShadow>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::PendingProcessingShadow>(ecs2::Entity,std::type_identity<md::ls::PendingProcessingShadow>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A1A168;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_1,std::allocator<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_1>,void ()(md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A120;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls18FinishedProcessingEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4EFE8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18FinishedProcessingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessing>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18FinishedProcessingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4EFE8;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FinishedProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4EFC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FinishedProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4EFC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessing>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessing>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[491];
}

uint64_t std::__function::__func<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_0,std::allocator<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_0>,void ()(md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A1A0D8;
  v4 = ecs2::ExecutionTaskContext::currentEntity(a1);
  v5 = &v3;
  v8 = &v6;
  v6 = &unk_1F2A1A0D8;
  v7 = v4;
  v9 = 2;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v2, &v6);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v3);
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::PendingProcessing>(ecs2::Entity,std::type_identity<md::ls::PendingProcessing>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::PendingProcessing>(ecs2::Entity,std::type_identity<md::ls::PendingProcessing>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A1A0D8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_0,std::allocator<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_0>,void ()(md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A090;
  a2[1] = v2;
  return result;
}

void std::__copy_impl::operator()[abi:nn200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<md::MeshRenderable *> const>,unsigned int md::MeshRenderable::*>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<md::MeshRenderable *> const>,unsigned int md::MeshRenderable::*>::__iterator<false>,std::back_insert_iterator<std::vector<unsigned long>>>(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = a3;
  if (a3 != a5)
  {
    v10 = *(a6 + 8);
    do
    {
      v11 = *(*v7 + *a2);
      v12 = *(a6 + 16);
      if (v10 >= v12)
      {
        v13 = *a6;
        v14 = v10 - *a6;
        v15 = v14 >> 3;
        v16 = (v14 >> 3) + 1;
        if (v16 >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v17 = v12 - v13;
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
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v18);
        }

        *(8 * v15) = v11;
        v10 = (8 * v15 + 8);
        memcpy(0, v13, v14);
        v19 = *a6;
        *a6 = 0;
        *(a6 + 8) = v10;
        *(a6 + 16) = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v10++ = v11;
      }

      *(a6 + 8) = v10;
      ++v7;
    }

    while (v7 != a5);
  }

  *a1 = a2;
  a1[1] = v7;
  a1[2] = a6;
}

uint64_t ecs2::addComponent<md::ls::EnteringView>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A1A358;
  v6 = a3 | (a2 << 32);
  v7 = &v5;
  v8[3] = v8;
  v8[0] = &unk_1F2A1A358;
  v8[1] = v6;
  v9 = 0;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v8);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::EnteringView>(ecs2::Entity,md::ls::EnteringView &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::EnteringView>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
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

    *(4 * v19) = v4;
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
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
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

      goto LABEL_56;
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
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::EnteringView>(ecs2::Entity,md::ls::EnteringView &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1A358;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_1,std::allocator<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_1>,void ()(md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1A310;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_0,std::allocator<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A240;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::ita::CheckIfShouldDeleteUniqueMaterial::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0,std::allocator<md::ita::CheckIfShouldDeleteUniqueMaterial::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1A428;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t ecs2::removeComponent<md::ls::MeshRenderableID>(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = &unk_1F2A1A568;
  v5 = a2;
  v6 = &v4;
  v9 = &v7;
  v7 = &unk_1F2A1A568;
  v8 = a2;
  v10 = 2;
  ecs2::Runtime::queueCommand();
  if (v10 != -1)
  {
    (off_1F2A198D8[v10])(&v3, &v7);
  }

  v10 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v4);
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::MeshRenderableID>(ecs2::Entity,std::type_identity<md::ls::MeshRenderableID>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::MeshRenderableID>(ecs2::Entity,std::type_identity<md::ls::MeshRenderableID>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A1A568;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 std::__function::__func<md::ita::CheckIfShouldDeleteRenderable::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&>)::$_0,std::allocator<md::ita::CheckIfShouldDeleteRenderable::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1A520;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::ita::DisconnectComponents::operator()(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v414[6] = *MEMORY[0x1E69E9840];
  v393 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v388 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(a1);
  v14 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,mre::GGLResourceStore *>::service<mre::GGLResourceStore>(a1);
  v392 = v14;
  v15 = ecs2::BasicRegistry<void>::storage<md::ls::RequestReset>(*(a2 + 8));
  v17 = *(v15 + 32);
  v16 = *(v15 + 40);
  *&v411 = &unk_1F2A1A5B0;
  *(&v411 + 1) = a1;
  *(&v412 + 1) = &v411;
  v18 = ecs2::BasicRegistry<void>::storage<md::ls::RequestReset>(*(a2 + 8));
  v377 = v17;
  v378 = v16;
  v19 = v18[4];
  v20 = v18[5];
  v21 = _ZTWN4ecs27Runtime11_localStateE();
  v22 = _ZTWN4ecs27Runtime11_stackIndexE();
  if (v19 != v20)
  {
    v23 = 0;
    while (1)
    {
      v24 = *(v18[7] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8));
      *(v21 + 104 * *v22 + 24) = *v19;
      if (!*(&v412 + 1))
      {
        break;
      }

      (*(**(&v412 + 1) + 48))(*(&v412 + 1), v24 + (v23++ & 0x3F));
      if (++v19 == v20)
      {
        goto LABEL_7;
      }
    }

LABEL_309:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  LODWORD(v23) = 0;
LABEL_7:
  *(v21 + 104 * *v22 + 24) = -65536;
  v25 = v21 + 104 * *v22;
  v26 = *(v25 + 92);
  *(v25 + 92) = v26 + 1;
  *(v25 + 4 * v26 + 28) = v23;
  v27 = v21 + 104 * *v22;
  v29 = *(v27 + 92);
  v28 = (v27 + 92);
  if (v29 >= 0x10)
  {
    *v28 = 0;
  }

  v380 = a3;
  std::__function::__value_func<void ()(md::ls::RequestReset const&)>::~__value_func[abi:nn200100](&v411);
  *&v411 = &unk_1F2A1A5F8;
  *(&v411 + 1) = &v393;
  *(&v412 + 1) = &v411;
  v30 = *(a4 + 8);
  v31 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v30);
  v32 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v30);
  v383 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v30);
  v33 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueStyleEmissiveDataKeyHandle>(v30);
  v374 = a4;
  v379 = v14;
  if (v32[5] - v32[4] >= v31[5] - v31[4])
  {
    v34 = v31;
  }

  else
  {
    v34 = v32;
  }

  v35 = v34[4];
  v36 = v34[5];
  if (v35 != v36)
  {
    v37 = v31[1];
    v38 = v31[2];
    do
    {
      if (ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v37, v38, v32, *v35, v35[1]))
      {
        break;
      }

      v35 += 2;
    }

    while (v35 != v36);
  }

  if (v35 != v36)
  {
    v39 = 0;
LABEL_18:
    v40 = v35[1];
    v41 = v40 >> 6;
    v42 = v40 & 0x3F;
    v43 = *v35;
    v44 = v383[1];
    if (v41 >= (v383[2] - v44) >> 3)
    {
      goto LABEL_22;
    }

    v45 = *(v44 + 8 * v41);
    if (!v45)
    {
      goto LABEL_23;
    }

    if (*(v45 + 4 * v42) == v43)
    {
      v46 = *(v45 + 4 * v42 + 2);
      v45 = *(v383[7] + ((v46 >> 3) & 0x1FF8)) + 8 * (v46 & 0x3F);
    }

    else
    {
LABEL_22:
      v45 = 0;
    }

LABEL_23:
    v47 = v33[1];
    if (v41 < (v33[2] - v47) >> 3 && (v48 = *(v47 + 8 * v41)) != 0 && *(v48 + 4 * v42) == v43)
    {
      v49 = *(v48 + 4 * v42 + 2);
      v50 = *(v33[7] + ((v49 >> 3) & 0x1FF8)) + 16 * (v49 & 0x3F);
    }

    else
    {
      v50 = 0;
    }

    v51 = v31[4];
    v52 = *(*(v31[1] + 8 * v41) + 4 * v42 + 2);
    v53 = *(*(v32[1] + 8 * v41) + 4 * v42 + 2);
    v54 = *(v32[7] + ((v53 >> 3) & 0x1FF8));
    *(v21 + 104 * *v22 + 24) = *v35;
    *&v403 = v45;
    *&v408 = v50;
    if (!*(&v412 + 1))
    {
      goto LABEL_309;
    }

    (*(**(&v412 + 1) + 48))(*(&v412 + 1), v51 + 4 * v52, v54 + 24 * (v53 & 0x3F), &v403, &v408);
    ++v39;
    v55 = v31[1];
    v56 = v31[2];
    v57 = v35 + 2;
    while (v57 != v36)
    {
      v35 = v57;
      v58 = ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v55, v56, v32, *v57, v57[1]);
      v57 = v35 + 2;
      if (v58)
      {
        goto LABEL_18;
      }
    }

    v59 = *(v374 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>();
    *(v59 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata) = *(v59 + 4096);
    v60 = *(v374 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
    *(v60 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata) = *(v60 + 4096);
    goto LABEL_35;
  }

  v39 = 0;
LABEL_35:
  *(v21 + 104 * *v22 + 24) = -65536;
  v61 = v21 + 104 * *v22;
  v62 = *(v61 + 92);
  *(v61 + 92) = v62 + 1;
  *(v61 + 4 * v62 + 28) = v39;
  v63 = v21 + 104 * *v22;
  v65 = *(v63 + 92);
  v64 = (v63 + 92);
  if (v65 >= 0x10)
  {
    *v64 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *)>::~__value_func[abi:nn200100](&v411);
  *&v411 = &unk_1F2A1A640;
  *(&v411 + 1) = v388;
  *(&v412 + 1) = &v411;
  v66 = *(v380 + 8);
  v67 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v66);
  v384 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMaterialData>(v66);
  v375 = ecs2::BasicRegistry<void>::storage<md::ls::RampMaterialData>(v66);
  v372 = ecs2::BasicRegistry<void>::storage<md::ls::ColorDataHandle>(v66);
  v370 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialVisibilityOptionsHandle>(v66);
  v368 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialZIndexHandle>(v66);
  v68 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorDataHandle>(v66);
  v69 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueGradientMaskDataHandle>(v66);
  v70 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorCorrectionDataHandle>(v66);
  v71 = v67[4];
  v72 = v67[5];
  if (v71 != v72)
  {
    v73 = v67[1];
    do
    {
      v74 = v71[1];
      if (v74 >> 6 < (v67[2] - v73) >> 3)
      {
        v75 = *(v73 + 8 * (v74 >> 6));
        if (v75)
        {
          if (*(v75 + 4 * (v74 & 0x3F)) == *v71)
          {
            break;
          }
        }
      }

      v71 += 2;
    }

    while (v71 != v72);
  }

  if (v71 != v72)
  {
    v76 = 0;
    while (1)
    {
      v77 = v71[1];
      v78 = v77 >> 6;
      v79 = v77 & 0x3F;
      v80 = *v71;
      v81 = v384[1];
      if (v78 >= (v384[2] - v81) >> 3)
      {
        goto LABEL_49;
      }

      v82 = *(v81 + 8 * v78);
      if (!v82)
      {
        goto LABEL_50;
      }

      if (*(v82 + 4 * v79) == v80)
      {
        v83 = *(v82 + 4 * v79 + 2);
        v82 = *(v384[7] + ((v83 >> 3) & 0x1FF8)) + 32 * (v83 & 0x3F);
      }

      else
      {
LABEL_49:
        v82 = 0;
      }

LABEL_50:
      v84 = v375[1];
      if (v78 >= (v375[2] - v84) >> 3)
      {
        goto LABEL_54;
      }

      v85 = *(v84 + 8 * v78);
      if (v85)
      {
        if (*(v85 + 4 * v79) != v80)
        {
LABEL_54:
          v85 = 0;
          goto LABEL_55;
        }

        v86 = *(v85 + 4 * v79 + 2);
        v85 = *(v375[7] + ((v86 >> 3) & 0x1FF8)) + 32 * (v86 & 0x3F);
      }

LABEL_55:
      v87 = v372[1];
      if (v78 >= (v372[2] - v87) >> 3)
      {
        goto LABEL_59;
      }

      v88 = *(v87 + 8 * v78);
      if (!v88)
      {
        goto LABEL_60;
      }

      if (*(v88 + 4 * v79) == v80)
      {
        v89 = *(v88 + 4 * v79 + 2);
        v88 = *(v372[7] + ((v89 >> 3) & 0x1FF8)) + 8 * (v89 & 0x3F);
      }

      else
      {
LABEL_59:
        v88 = 0;
      }

LABEL_60:
      v90 = v370[1];
      if (v78 >= (v370[2] - v90) >> 3)
      {
        goto LABEL_64;
      }

      v91 = *(v90 + 8 * v78);
      if (v91)
      {
        if (*(v91 + 4 * v79) != v80)
        {
LABEL_64:
          v91 = 0;
          goto LABEL_65;
        }

        v92 = *(v91 + 4 * v79 + 2);
        v91 = *(v370[7] + ((v92 >> 3) & 0x1FF8)) + 16 * (v92 & 0x3F);
      }

LABEL_65:
      v93 = v368[1];
      if (v78 >= (v368[2] - v93) >> 3)
      {
        goto LABEL_69;
      }

      v94 = *(v93 + 8 * v78);
      if (!v94)
      {
        goto LABEL_70;
      }

      if (*(v94 + 4 * v79) == v80)
      {
        v95 = *(v94 + 4 * v79 + 2);
        v94 = *(v368[7] + ((v95 >> 3) & 0x1FF8)) + 24 * (v95 & 0x3F);
      }

      else
      {
LABEL_69:
        v94 = 0;
      }

LABEL_70:
      v96 = v67[4];
      v97 = *(*(v67[1] + 8 * v78) + 4 * v79 + 2);
      v98 = v68[1];
      if (v78 >= (v68[2] - v98) >> 3)
      {
        goto LABEL_74;
      }

      v99 = *(v98 + 8 * v78);
      if (v99)
      {
        if (*(v99 + 4 * v79) != v80)
        {
LABEL_74:
          v99 = 0;
          goto LABEL_75;
        }

        v100 = *(v99 + 4 * v79 + 2);
        v99 = *(v68[7] + ((v100 >> 3) & 0x1FF8)) + 8 * (v100 & 0x3F);
      }

LABEL_75:
      v101 = v69[1];
      if (v78 >= (v69[2] - v101) >> 3)
      {
        goto LABEL_79;
      }

      v102 = *(v101 + 8 * v78);
      if (!v102)
      {
        goto LABEL_80;
      }

      if (*(v102 + 4 * v79) == v80)
      {
        v103 = *(v102 + 4 * v79 + 2);
        v102 = *(v69[7] + ((v103 >> 3) & 0x1FF8)) + 8 * (v103 & 0x3F);
      }

      else
      {
LABEL_79:
        v102 = 0;
      }

LABEL_80:
      v104 = v70[1];
      if (v78 < (v70[2] - v104) >> 3 && (v105 = *(v104 + 8 * v78)) != 0 && *(v105 + 4 * v79) == v80)
      {
        v106 = *(v105 + 4 * v79 + 2);
        v107 = *(v70[7] + ((v106 >> 3) & 0x1FF8)) + 8 * (v106 & 0x3F);
      }

      else
      {
        v107 = 0;
      }

      *(v21 + 104 * *v22 + 24) = *v71;
      v402 = v91;
      *&v403 = v82;
      *&v408 = v85;
      v406[0] = v88;
      v400 = v99;
      v401 = v94;
      v398 = v107;
      v399 = v102;
      if (!*(&v412 + 1))
      {
        goto LABEL_309;
      }

      (*(**(&v412 + 1) + 48))(*(&v412 + 1), v96 + 4 * v97, &v403, &v408, v406, &v402, &v401, &v400, &v399, &v398);
      ++v76;
      v71 += 2;
      if (v71 != v72)
      {
        v108 = v67[1];
        while (1)
        {
          v109 = v71[1];
          if (v109 >> 6 < (v67[2] - v108) >> 3)
          {
            v110 = *(v108 + 8 * (v109 >> 6));
            if (v110)
            {
              if (*(v110 + 4 * (v109 & 0x3F)) == *v71)
              {
                break;
              }
            }
          }

          v71 += 2;
          if (v71 == v72)
          {
            goto LABEL_94;
          }
        }

        if (v71 != v72)
        {
          continue;
        }
      }

LABEL_94:
      v111 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>();
      *(v111 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>(void)::metadata) = *(v111 + 4096);
      v112 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>();
      *(v112 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata) = *(v112 + 4096);
      v113 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>();
      *(v113 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata) = *(v113 + 4096);
      v114 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>();
      *(v114 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::metadata) = *(v114 + 4096);
      v115 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>();
      *(v115 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>(void)::metadata) = *(v115 + 4096);
      v116 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>();
      *(v116 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>(void)::metadata) = *(v116 + 4096);
      v117 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>();
      *(v117 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>(void)::metadata) = *(v117 + 4096);
      v118 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>();
      *(v118 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>(void)::metadata) = *(v118 + 4096);
      goto LABEL_96;
    }
  }

  v76 = 0;
LABEL_96:
  *(v21 + 104 * *v22 + 24) = -65536;
  v119 = v21 + 104 * *v22;
  v120 = *(v119 + 92);
  *(v119 + 92) = v120 + 1;
  *(v119 + 4 * v120 + 28) = v76;
  v121 = v21 + 104 * *v22;
  v123 = *(v121 + 92);
  v122 = (v121 + 92);
  if (v123 >= 0x10)
  {
    *v122 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *)>::~__value_func[abi:nn200100](&v411);
  *&v411 = &unk_1F2A1A688;
  *(&v411 + 1) = v393;
  *(&v412 + 1) = &v411;
  v124 = *(a5 + 8);
  v125 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v124);
  v385 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v124);
  v381 = ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskConstantDataHandle>(v124);
  v376 = ecs2::BasicRegistry<void>::storage<md::ls::StyleConstantHandle>(v124);
  v373 = ecs2::BasicRegistry<void>::storage<md::ls::LandCoverSettingsConstantDataHandle>(v124);
  v371 = ecs2::BasicRegistry<void>::storage<md::ls::StyleGroundOcclusionConstantDataHandle>(v124);
  v369 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v124);
  v367 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v124);
  v366 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v124);
  v126 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v124);
  v127 = ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskDataKeyHandle>(v124);
  v128 = ecs2::BasicRegistry<void>::storage<md::ls::ColorCorrectionDataKeyHandle>(v124);
  v129 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsClimateTint>(v124);
  v131 = v125[4];
  v130 = v125[5];
  if (v131 != v130)
  {
    v132 = v125[1];
    do
    {
      v133 = v131[1];
      if (v133 >> 6 < (v125[2] - v132) >> 3)
      {
        v134 = *(v132 + 8 * (v133 >> 6));
        if (v134)
        {
          if (*(v134 + 4 * (v133 & 0x3F)) == *v131)
          {
            break;
          }
        }
      }

      v131 += 2;
    }

    while (v131 != v130);
  }

  if (v131 != v130)
  {
    v135 = 0;
    while (1)
    {
      v136 = v131[1];
      v137 = v136 >> 6;
      v138 = v136 & 0x3F;
      v139 = *v131;
      v140 = v385[1];
      if (v137 >= (v385[2] - v140) >> 3)
      {
        goto LABEL_110;
      }

      v141 = *(v140 + 8 * v137);
      if (!v141)
      {
        goto LABEL_111;
      }

      if (*(v141 + 4 * v138) == v139)
      {
        v142 = *(v141 + 4 * v138 + 2);
        v141 = *(v385[7] + ((v142 >> 3) & 0x1FF8)) + 16 * (v142 & 0x3F);
      }

      else
      {
LABEL_110:
        v141 = 0;
      }

LABEL_111:
      v143 = v381[1];
      if (v137 >= (v381[2] - v143) >> 3)
      {
        goto LABEL_115;
      }

      v144 = *(v143 + 8 * v137);
      if (v144)
      {
        if (*(v144 + 4 * v138) != v139)
        {
LABEL_115:
          v144 = 0;
          goto LABEL_116;
        }

        v145 = *(v144 + 4 * v138 + 2);
        v144 = *(v381[7] + ((v145 >> 3) & 0x1FF8)) + 8 * (v145 & 0x3F);
      }

LABEL_116:
      v146 = v376[1];
      if (v137 >= (v376[2] - v146) >> 3)
      {
        goto LABEL_120;
      }

      v147 = *(v146 + 8 * v137);
      if (!v147)
      {
        goto LABEL_121;
      }

      if (*(v147 + 4 * v138) == v139)
      {
        v148 = *(v147 + 4 * v138 + 2);
        v147 = *(v376[7] + ((v148 >> 3) & 0x1FF8)) + 8 * (v148 & 0x3F);
      }

      else
      {
LABEL_120:
        v147 = 0;
      }

LABEL_121:
      v149 = v373[1];
      if (v137 >= (v373[2] - v149) >> 3)
      {
        goto LABEL_125;
      }

      v150 = *(v149 + 8 * v137);
      if (v150)
      {
        if (*(v150 + 4 * v138) != v139)
        {
LABEL_125:
          v150 = 0;
          goto LABEL_126;
        }

        v151 = *(v150 + 4 * v138 + 2);
        v150 = *(v373[7] + ((v151 >> 3) & 0x1FF8)) + 8 * (v151 & 0x3F);
      }

LABEL_126:
      v152 = v371[1];
      if (v137 < (v371[2] - v152) >> 3 && (v153 = *(v152 + 8 * v137)) != 0 && *(v153 + 4 * v138) == v139)
      {
        v154 = *(v153 + 4 * v138 + 2);
        v155 = *(v371[7] + ((v154 >> 3) & 0x1FF8)) + 8 * (v154 & 0x3F);
      }

      else
      {
        v155 = 0;
      }

      v156 = v125[4];
      v157 = *(*(v125[1] + 8 * v137) + 4 * v138 + 2);
      v158 = v369[1];
      if (v137 >= (v369[2] - v158) >> 3)
      {
LABEL_135:
        v159 = 0;
        goto LABEL_136;
      }

      v159 = *(v158 + 8 * v137);
      if (v159)
      {
        if (*(v159 + 4 * v138) != v139)
        {
          goto LABEL_135;
        }

        v160 = *(v159 + 4 * v138 + 2);
        v159 = *(v369[7] + ((v160 >> 3) & 0x1FF8)) + 8 * (v160 & 0x3F);
      }

LABEL_136:
      v161 = v367[1];
      if (v137 >= (v367[2] - v161) >> 3)
      {
        goto LABEL_140;
      }

      v162 = *(v161 + 8 * v137);
      if (!v162)
      {
        goto LABEL_141;
      }

      if (*(v162 + 4 * v138) == v139)
      {
        v163 = *(v162 + 4 * v138 + 2);
        v162 = *(v367[7] + ((v163 >> 3) & 0x1FF8)) + 8 * (v163 & 0x3F);
      }

      else
      {
LABEL_140:
        v162 = 0;
      }

LABEL_141:
      v164 = v366[1];
      if (v137 >= (v366[2] - v164) >> 3)
      {
        goto LABEL_145;
      }

      v165 = *(v164 + 8 * v137);
      if (v165)
      {
        if (*(v165 + 4 * v138) != v139)
        {
LABEL_145:
          v165 = 0;
          goto LABEL_146;
        }

        v166 = *(v165 + 4 * v138 + 2);
        v165 = *(v366[7] + ((v166 >> 3) & 0x1FF8)) + 8 * (v166 & 0x3F);
      }

LABEL_146:
      v167 = v126[1];
      if (v137 >= (v126[2] - v167) >> 3)
      {
        goto LABEL_150;
      }

      v168 = *(v167 + 8 * v137);
      if (!v168)
      {
        goto LABEL_151;
      }

      if (*(v168 + 4 * v138) == v139)
      {
        v169 = *(v168 + 4 * v138 + 2);
        v168 = *(v126[7] + ((v169 >> 3) & 0x1FF8)) + 8 * (v169 & 0x3F);
      }

      else
      {
LABEL_150:
        v168 = 0;
      }

LABEL_151:
      v170 = v127[1];
      if (v137 >= (v127[2] - v170) >> 3)
      {
        goto LABEL_155;
      }

      v171 = *(v170 + 8 * v137);
      if (v171)
      {
        if (*(v171 + 4 * v138) != v139)
        {
LABEL_155:
          v171 = 0;
          goto LABEL_156;
        }

        v172 = *(v171 + 4 * v138 + 2);
        v171 = *(v127[7] + ((v172 >> 3) & 0x1FF8)) + 8 * (v172 & 0x3F);
      }

LABEL_156:
      v173 = v128[1];
      if (v137 >= (v128[2] - v173) >> 3)
      {
        goto LABEL_160;
      }

      v174 = *(v173 + 8 * v137);
      if (!v174)
      {
        goto LABEL_161;
      }

      if (*(v174 + 4 * v138) == v139)
      {
        v175 = *(v174 + 4 * v138 + 2);
        v174 = *(v128[7] + ((v175 >> 3) & 0x1FF8)) + 8 * (v175 & 0x3F);
      }

      else
      {
LABEL_160:
        v174 = 0;
      }

LABEL_161:
      v176 = v129[1];
      if (v137 < (v129[2] - v176) >> 3 && (v177 = *(v176 + 8 * v137)) != 0 && *(v177 + 4 * v138) == v139)
      {
        v178 = *(v177 + 4 * v138 + 2);
        v179 = *(v129[7] + ((v178 >> 3) & 0x1FF8)) + 8 * (v178 & 0x3F);
      }

      else
      {
        v179 = 0;
      }

      *(v21 + 104 * *v22 + 24) = *v131;
      v402 = v150;
      *&v403 = v141;
      *&v408 = v144;
      v406[0] = v147;
      v400 = v159;
      v401 = v155;
      v398 = v165;
      v399 = v162;
      v396 = v171;
      v397 = v168;
      v394 = v179;
      v395 = v174;
      if (!*(&v412 + 1))
      {
        goto LABEL_309;
      }

      (*(**(&v412 + 1) + 48))(*(&v412 + 1), v156 + 4 * v157, &v403, &v408, v406, &v402, &v401, &v400, &v399, &v398, &v397, &v396, &v395, &v394);
      ++v135;
      v131 += 2;
      if (v131 != v130)
      {
        v180 = v125[1];
        while (1)
        {
          v181 = v131[1];
          if (v181 >> 6 < (v125[2] - v180) >> 3)
          {
            v182 = *(v180 + 8 * (v181 >> 6));
            if (v182)
            {
              if (*(v182 + 4 * (v181 & 0x3F)) == *v131)
              {
                break;
              }
            }
          }

          v131 += 2;
          if (v131 == v130)
          {
            goto LABEL_175;
          }
        }

        if (v131 != v130)
        {
          continue;
        }
      }

LABEL_175:
      v183 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>();
      *(v183 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata) = *(v183 + 4096);
      v184 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>();
      *(v184 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>(void)::metadata) = *(v184 + 4096);
      v185 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>();
      *(v185 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>(void)::metadata) = *(v185 + 4096);
      v186 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>();
      *(v186 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>(void)::metadata) = *(v186 + 4096);
      v187 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>();
      *(v187 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>(void)::metadata) = *(v187 + 4096);
      v188 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>();
      *(v188 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata) = *(v188 + 4096);
      v189 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>();
      *(v189 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata) = *(v189 + 4096);
      v190 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>();
      *(v190 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata) = *(v190 + 4096);
      v191 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>();
      *(v191 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>(void)::metadata) = *(v191 + 4096);
      v192 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>();
      *(v192 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>(void)::metadata) = *(v192 + 4096);
      v193 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>();
      *(v193 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>(void)::metadata) = *(v193 + 4096);
      v194 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>();
      *(v194 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>(void)::metadata) = *(v194 + 4096);
      goto LABEL_177;
    }
  }

  v135 = 0;
LABEL_177:
  *(v21 + 104 * *v22 + 24) = -65536;
  v195 = v21 + 104 * *v22;
  v196 = *(v195 + 92);
  *(v195 + 92) = v196 + 1;
  *(v195 + 4 * v196 + 28) = v135;
  v197 = v21 + 104 * *v22;
  v199 = *(v197 + 92);
  v198 = (v197 + 92);
  if (v199 >= 0x10)
  {
    *v198 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *)>::~__value_func[abi:nn200100](&v411);
  *&v411 = &unk_1F2A1A7E0;
  *(&v411 + 1) = v379;
  *(&v412 + 1) = &v411;
  v200 = *(a6 + 8);
  v201 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v200);
  v391 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableAlbedoTexture>(v200);
  v386 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::NightTexture>>(v200);
  v202 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(v200);
  v203 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialAlbedoTexture>(v200);
  v204 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialEmissiveTexture>(v200);
  v205 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialDiffuseTexture>(v200);
  v206 = v201[4];
  v207 = v201[5];
  if (v206 != v207)
  {
    v208 = v201[1];
    do
    {
      v209 = v206[1];
      if (v209 >> 6 < (v201[2] - v208) >> 3)
      {
        v210 = *(v208 + 8 * (v209 >> 6));
        if (v210)
        {
          if (*(v210 + 4 * (v209 & 0x3F)) == *v206)
          {
            break;
          }
        }
      }

      v206 += 2;
    }

    while (v206 != v207);
  }

  if (v206 != v207)
  {
    v211 = 0;
    while (1)
    {
      v212 = v206[1];
      v213 = v212 >> 6;
      v214 = v212 & 0x3F;
      v215 = *v206;
      v216 = v391[1];
      if (v213 >= (v391[2] - v216) >> 3)
      {
        goto LABEL_191;
      }

      v217 = *(v216 + 8 * v213);
      if (!v217)
      {
        goto LABEL_192;
      }

      if (*(v217 + 4 * v214) == v215)
      {
        v218 = *(v217 + 4 * v214 + 2);
        v217 = *(v391[7] + ((v218 >> 3) & 0x1FF8)) + 32 * (v218 & 0x3F);
      }

      else
      {
LABEL_191:
        v217 = 0;
      }

LABEL_192:
      v219 = v386[1];
      if (v213 >= (v386[2] - v219) >> 3)
      {
        goto LABEL_196;
      }

      v220 = *(v219 + 8 * v213);
      if (v220)
      {
        if (*(v220 + 4 * v214) != v215)
        {
LABEL_196:
          v220 = 0;
          goto LABEL_197;
        }

        v221 = *(v220 + 4 * v214 + 2);
        v220 = *(v386[7] + ((v221 >> 3) & 0x1FF8)) + 16 * (v221 & 0x3F);
      }

LABEL_197:
      v222 = v202[1];
      if (v213 >= (v202[2] - v222) >> 3)
      {
        goto LABEL_201;
      }

      v223 = *(v222 + 8 * v213);
      if (!v223)
      {
        goto LABEL_202;
      }

      if (*(v223 + 4 * v214) == v215)
      {
        v224 = *(v223 + 4 * v214 + 2);
        v223 = *(v202[7] + ((v224 >> 3) & 0x1FF8)) + 16 * (v224 & 0x3F);
      }

      else
      {
LABEL_201:
        v223 = 0;
      }

LABEL_202:
      v225 = v203[1];
      if (v213 >= (v203[2] - v225) >> 3)
      {
        goto LABEL_206;
      }

      v226 = *(v225 + 8 * v213);
      if (v226)
      {
        if (*(v226 + 4 * v214) != v215)
        {
LABEL_206:
          v226 = 0;
          goto LABEL_207;
        }

        v227 = *(v226 + 4 * v214 + 2);
        v226 = *(v203[7] + ((v227 >> 3) & 0x1FF8)) + 32 * (v227 & 0x3F);
      }

LABEL_207:
      v228 = v204[1];
      if (v213 >= (v204[2] - v228) >> 3)
      {
        goto LABEL_211;
      }

      v229 = *(v228 + 8 * v213);
      if (!v229)
      {
        goto LABEL_212;
      }

      if (*(v229 + 4 * v214) == v215)
      {
        v230 = *(v229 + 4 * v214 + 2);
        v229 = *(v204[7] + ((v230 >> 3) & 0x1FF8)) + 16 * (v230 & 0x3F);
      }

      else
      {
LABEL_211:
        v229 = 0;
      }

LABEL_212:
      v231 = v201[4];
      v232 = *(*(v201[1] + 8 * v213) + 4 * v214 + 2);
      v233 = v205[1];
      if (v213 < (v205[2] - v233) >> 3 && (v234 = *(v233 + 8 * v213)) != 0 && *(v234 + 4 * v214) == v215)
      {
        v235 = *(v234 + 4 * v214 + 2);
        v236 = *(v205[7] + ((v235 >> 3) & 0x1FF8)) + 16 * (v235 & 0x3F);
      }

      else
      {
        v236 = 0;
      }

      *(v21 + 104 * *v22 + 24) = *v206;
      v402 = v226;
      *&v403 = v217;
      *&v408 = v220;
      v406[0] = v223;
      v400 = v236;
      v401 = v229;
      if (!*(&v412 + 1))
      {
        goto LABEL_309;
      }

      (*(**(&v412 + 1) + 48))(*(&v412 + 1), v231 + 4 * v232, &v403, &v408, v406, &v402, &v401, &v400);
      ++v211;
      v206 += 2;
      if (v206 != v207)
      {
        v237 = v201[1];
        while (1)
        {
          v238 = v206[1];
          if (v238 >> 6 < (v201[2] - v237) >> 3)
          {
            v239 = *(v237 + 8 * (v238 >> 6));
            if (v239)
            {
              if (*(v239 + 4 * (v238 & 0x3F)) == *v206)
              {
                break;
              }
            }
          }

          v206 += 2;
          if (v206 == v207)
          {
            goto LABEL_226;
          }
        }

        if (v206 != v207)
        {
          continue;
        }
      }

LABEL_226:
      v240 = *(a6 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>();
      *(v240 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>(void)::metadata) = *(v240 + 4096);
      v241 = *(a6 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>();
      *(v241 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata) = *(v241 + 4096);
      v242 = *(a6 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>();
      *(v242 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata) = *(v242 + 4096);
      v243 = *(a6 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>();
      *(v243 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>(void)::metadata) = *(v243 + 4096);
      v244 = *(a6 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>();
      *(v244 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>(void)::metadata) = *(v244 + 4096);
      v245 = *(a6 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>();
      *(v245 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>(void)::metadata) = *(v245 + 4096);
      goto LABEL_228;
    }
  }

  v211 = 0;
LABEL_228:
  *(v21 + 104 * *v22 + 24) = -65536;
  v246 = v21 + 104 * *v22;
  v247 = *(v246 + 92);
  *(v246 + 92) = v247 + 1;
  *(v246 + 4 * v247 + 28) = v211;
  v248 = v21 + 104 * *v22;
  v250 = *(v248 + 92);
  v249 = (v248 + 92);
  if (v250 >= 0x10)
  {
    *v249 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *)>::~__value_func[abi:nn200100](&v411);
  v406[0] = &unk_1F2A1A8B0;
  v406[1] = &v392;
  v407 = v406;
  v251 = *(a7 + 8);
  v252 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v251);
  v253 = ecs2::BasicRegistry<void>::storage<md::ls::TexturesToDisconnect>(v251);
  v254 = v253;
  if (*(v253 + 40) - *(v253 + 32) >= *(v252 + 40) - *(v252 + 32))
  {
    v255 = v252;
  }

  else
  {
    v255 = v253;
  }

  v256 = *(v255 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v411, *(v255 + 32), v256, v252, v253);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v403, v256, v256, v252, v254);
  v408 = v411;
  v409 = v412;
  v410 = v413;
  v257 = v403;
  v258 = v411;
  if (v411 == v403)
  {
    v259 = 0;
  }

  else
  {
    v259 = 0;
    v352 = v409;
    v353 = *(&v408 + 1);
    do
    {
      v354 = *(v352 + 32);
      v355 = v258[1];
      v356 = (v355 >> 3) & 0x1FF8;
      v357 = v355 & 0x3F;
      v358 = *(*(v352 + 8) + v356) + 4 * v357;
      v359 = *(*(*(*(&v352 + 1) + 8) + v356) + 4 * v357 + 2);
      v360 = *(*(*(&v352 + 1) + 56) + ((v359 >> 3) & 0x1FF8));
      v361 = *(v358 + 2);
      *(v21 + 104 * *v22 + 24) = *v258;
      if (!v407)
      {
        goto LABEL_309;
      }

      (*(*v407 + 48))(v407, v354 + 4 * v361, v360 + 24 * (v359 & 0x3F));
      ++v259;
      v362 = v258 + 2;
      while (1)
      {
        v258 = v362;
        *&v408 = v362;
        if (v362 == v353)
        {
          break;
        }

        v363 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v408, *v362, v362[1]);
        v362 = v258 + 2;
        if (v363)
        {
          v364 = v258;
          goto LABEL_307;
        }
      }

      v364 = v353;
LABEL_307:
      ;
    }

    while (v364 != v257);
    v365 = *(a7 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>();
    *(v365 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata) = *(v365 + 4096);
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v260 = v21 + 104 * *v22;
  v261 = *(v260 + 92);
  *(v260 + 92) = v261 + 1;
  *(v260 + 4 * v261 + 28) = v259;
  v262 = v21 + 104 * *v22;
  v264 = *(v262 + 92);
  v263 = (v262 + 92);
  if (v264 >= 0x10)
  {
    *v263 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &)>::~__value_func[abi:nn200100](v406);
  *&v411 = &unk_1F2A1A8F8;
  *(&v411 + 1) = v393;
  *(&v412 + 1) = &v411;
  v265 = *(a9 + 8);
  v266 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemPendingDeletion>(v265);
  v267 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineState>(v265);
  v268 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v265);
  v269 = v266[4];
  v270 = v266[5];
  if (v269 != v270)
  {
    v271 = v266[1];
    do
    {
      v272 = v269[1];
      if (v272 >> 6 < (v266[2] - v271) >> 3)
      {
        v273 = *(v271 + 8 * (v272 >> 6));
        if (v273)
        {
          if (*(v273 + 4 * (v272 & 0x3F)) == *v269)
          {
            break;
          }
        }
      }

      v269 += 2;
    }

    while (v269 != v270);
  }

  if (v269 == v270)
  {
    v274 = 0;
    goto LABEL_267;
  }

  v274 = 0;
  do
  {
    v275 = v269[1];
    v276 = v275 >> 6;
    v277 = v275 & 0x3F;
    v278 = *v269;
    v279 = v267[1];
    if (v276 >= (v267[2] - v279) >> 3)
    {
LABEL_249:
      v280 = 0;
      goto LABEL_250;
    }

    v280 = *(v279 + 8 * v276);
    if (v280)
    {
      if (*(v280 + 4 * v277) != v278)
      {
        goto LABEL_249;
      }

      v281 = *(v280 + 4 * v277 + 2);
      v280 = *(v267[7] + ((v281 >> 3) & 0x1FF8)) + 8 * (v281 & 0x3F);
    }

LABEL_250:
    v282 = v268[1];
    if (v276 < (v268[2] - v282) >> 3 && (v283 = *(v282 + 8 * v276)) != 0 && *(v283 + 4 * v277) == v278)
    {
      v284 = *(v283 + 4 * v277 + 2);
      v285 = *(v268[7] + ((v284 >> 3) & 0x1FF8)) + 8 * (v284 & 0x3F);
    }

    else
    {
      v285 = 0;
    }

    v286 = v266[4];
    v287 = *(*(v266[1] + 8 * v276) + 4 * v277 + 2);
    *(v21 + 104 * *v22 + 24) = *v269;
    *&v403 = v280;
    *&v408 = v285;
    if (!*(&v412 + 1))
    {
      goto LABEL_309;
    }

    (*(**(&v412 + 1) + 48))(*(&v412 + 1), v286 + 4 * v287, &v403, &v408);
    ++v274;
    v269 += 2;
    if (v269 == v270)
    {
      break;
    }

    v288 = v266[1];
    while (1)
    {
      v289 = v269[1];
      if (v289 >> 6 < (v266[2] - v288) >> 3)
      {
        v290 = *(v288 + 8 * (v289 >> 6));
        if (v290)
        {
          if (*(v290 + 4 * (v289 & 0x3F)) == *v269)
          {
            break;
          }
        }
      }

      v269 += 2;
      if (v269 == v270)
      {
        goto LABEL_264;
      }
    }
  }

  while (v269 != v270);
LABEL_264:
  v291 = *(a9 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>();
  *(v291 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>(void)::metadata) = *(v291 + 4096);
  v292 = *(a9 + 8);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
    *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
    qword_1EB83D950 = "md::ls::PipelineSetup]";
    qword_1EB83D958 = 21;
  }

  *(v292 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v292 + 4096);
LABEL_267:
  *(v21 + 104 * *v22 + 24) = -65536;
  v293 = v21 + 104 * *v22;
  v294 = *(v293 + 92);
  *(v293 + 92) = v294 + 1;
  *(v293 + 4 * v294 + 28) = v274;
  v295 = v21 + 104 * *v22;
  v297 = *(v295 + 92);
  v296 = (v295 + 92);
  if (v297 >= 0x10)
  {
    *v296 = 0;
  }

  std::__function::__value_func<void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *)>::~__value_func[abi:nn200100](&v411);
  *&v408 = &unk_1F2A1AAB8;
  *(&v408 + 1) = &v393;
  *&v409 = &v392;
  *(&v409 + 1) = &v408;
  v298 = *(a8 + 8);
  v299 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v298);
  v300 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(v298);
  v301 = v300;
  if (*(v300 + 40) - *(v300 + 32) >= *(v299 + 40) - *(v299 + 32))
  {
    v302 = v299;
  }

  else
  {
    v302 = v300;
  }

  v303 = *(v302 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v403, *(v302 + 32), v303, v299, v300);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v414, v303, v303, v299, v301);
  v304 = v403;
  v413 = v405;
  v411 = v403;
  v412 = v404;
  v305 = v414[0];
  if (v403 == v414[0])
  {
    v306 = 0;
  }

  else
  {
    v306 = 0;
    v307 = v404;
    v308 = *(&v403 + 1);
    do
    {
      v309 = *(v307 + 32);
      v310 = v304[1];
      v311 = (v310 >> 3) & 0x1FF8;
      v312 = v310 & 0x3F;
      v313 = *(*(v307 + 8) + v311) + 4 * v312;
      v314 = *(*(*(*(&v307 + 1) + 8) + v311) + 4 * v312 + 2);
      v315 = *(*(*(&v307 + 1) + 56) + ((v314 >> 3) & 0x1FF8));
      v316 = *(v313 + 2);
      *(v21 + 104 * *v22 + 24) = *v304;
      if (!*(&v409 + 1))
      {
        goto LABEL_309;
      }

      (*(**(&v409 + 1) + 48))(*(&v409 + 1), v309 + 4 * v316, v315 + 8 * (v314 & 0x3F));
      ++v306;
      v317 = v304 + 2;
      do
      {
        v304 = v317;
        *&v403 = v317;
        if (v317 == v308)
        {
          break;
        }

        v318 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v403, *v317, v317[1]);
        v317 = v304 + 2;
      }

      while (!v318);
    }

    while (v304 != v305);
    v319 = *(a8 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>();
    *(v319 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata) = *(v319 + 4096);
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v320 = v21 + 104 * *v22;
  v321 = *(v320 + 92);
  *(v320 + 92) = v321 + 1;
  *(v320 + 4 * v321 + 28) = v306;
  v322 = v21 + 104 * *v22;
  v324 = *(v322 + 92);
  v323 = (v322 + 92);
  if (v324 >= 0x10)
  {
    *v323 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &)>::~__value_func[abi:nn200100](&v408);
  *&v408 = &unk_1F2A1AB00;
  *(&v408 + 1) = &v393;
  *(&v409 + 1) = &v408;
  v325 = *(a10 + 8);
  v326 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v325);
  v327 = ecs2::BasicRegistry<void>::storage<md::ls::StyleSSAODataKeyHandle>(v325);
  v328 = v327;
  if (*(v327 + 40) - *(v327 + 32) >= *(v326 + 40) - *(v326 + 32))
  {
    v329 = v326;
  }

  else
  {
    v329 = v327;
  }

  v330 = *(v329 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v403, *(v329 + 32), v330, v326, v327);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v414, v330, v330, v326, v328);
  v331 = v403;
  v413 = v405;
  v411 = v403;
  v412 = v404;
  v332 = v414[0];
  if (v403 == v414[0])
  {
    v333 = 0;
  }

  else
  {
    v333 = 0;
    v334 = v404;
    v335 = *(&v403 + 1);
    do
    {
      v336 = *(v334 + 32);
      v337 = v331[1];
      v338 = (v337 >> 3) & 0x1FF8;
      v339 = v337 & 0x3F;
      v340 = *(*(v334 + 8) + v338) + 4 * v339;
      v341 = *(*(*(*(&v334 + 1) + 8) + v338) + 4 * v339 + 2);
      v342 = *(*(*(&v334 + 1) + 56) + ((v341 >> 3) & 0x1FF8));
      v343 = *(v340 + 2);
      *(v21 + 104 * *v22 + 24) = *v331;
      if (!*(&v409 + 1))
      {
        goto LABEL_309;
      }

      (*(**(&v409 + 1) + 48))(*(&v409 + 1), v336 + 4 * v343, v342 + 8 * (v341 & 0x3F));
      ++v333;
      v344 = v331 + 2;
      do
      {
        v331 = v344;
        *&v403 = v344;
        if (v344 == v335)
        {
          break;
        }

        v345 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v403, *v344, v344[1]);
        v344 = v331 + 2;
      }

      while (!v345);
    }

    while (v331 != v332);
    v346 = *(a10 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>();
    *(v346 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>(void)::metadata) = *(v346 + 4096);
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v347 = v21 + 104 * *v22;
  v348 = *(v347 + 92);
  *(v347 + 92) = v348 + 1;
  *(v347 + 4 * v348 + 28) = v333;
  v349 = v21 + 104 * *v22;
  v351 = *(v349 + 92);
  v350 = (v349 + 92);
  if (v351 >= 0x10)
  {
    *v350 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &)>::~__value_func[abi:nn200100](&v408);
  if (v378 != v377)
  {
    md::MaterialResourceStore::reset(v388);
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_4,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_4>,void ()(md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = **(a1 + 8);
  v4 = *a3;
  v5 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v3 + 285, *a3);
  if (v5 != v3[290])
  {
    v6 = (*(v3[292] + ((((v5 - v3[289]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v5 - v3[289]) >> 3) & 0x3F));
    v7 = v6[1];
    if (!v7 || (v8 = v7 - 1, (v6[1] = v8) == 0))
    {
      *v6 = 0;
    }
  }

  result = md::getStorage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>(v3 + 285, v4);
  if (result)
  {
    v10 = std::__hash_table<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::__unordered_map_hasher<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,md::StyleSSAOKeyHasher,std::equal_to<md::StyleSSAOKey>,true>,std::__unordered_map_equal<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::equal_to<md::StyleSSAOKey>,md::StyleSSAOKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>>>::find<md::StyleSSAOKey>(v3 + 275, result);
    if (v10)
    {
      v11 = v10[6];
    }

    else
    {
      v11 = 0;
    }

    return md::updateRetainedCounter(v3 + 231, v11);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_4,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_4>,void ()(md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1AB00;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_3,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_3>,void ()(md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  ColorRampData = md::VKMRenderResourcesStore::getColorRampData(**(a1 + 8), *a3);
  if (ColorRampData)
  {
    v6 = ColorRampData;
    if (*(ColorRampData + 80) == 1)
    {
      for (i = 0; i != 32; i += 16)
      {
        (*(***(a1 + 16) + 56))(**(a1 + 16), *(v6 + i + 16), *(v6 + i + 24));
      }

      v23 = 0u;
      v24 = 0u;
      if ((*(v6 + 80) & 1) == 0)
      {
        goto LABEL_21;
      }

      v8 = 0;
      v9 = 0;
      v10 = &v23;
      do
      {
        v11 = v8;
        v12 = v6 + 48 + 16 * v9;
        v13 = *v10;
        *v10 = 0;
        *(v10 + 1) = 0;
        v14 = *(v12 + 8);
        *v12 = v13;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v14);
        }

        v8 = 1;
        v10 = &v24;
        v9 = 1;
      }

      while ((v11 & 1) == 0);
      for (j = 24; j != -8; j -= 16)
      {
        v16 = *(&v23 + j);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v16);
        }
      }

      if (*(v6 + 80) & 1) != 0 && (md::VKMRenderResourcesStore::_disconnect<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>>(**(a1 + 8), *v6), (*(v6 + 80)))
      {
        md::VKMRenderResourcesStore::_disconnect<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>>(**(a1 + 8), *(v6 + 8));
        v17 = **(a1 + 8);
        v18 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v17 + 1638, *a3);
        if (v18 != v17[1643])
        {
          v19 = (*(v17[1645] + ((((v18 - v17[1642]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v18 - v17[1642]) >> 3) & 0x3F));
          v20 = v19[1];
          if (!v20 || (v21 = v20 - 1, (v19[1] = v21) == 0))
          {
            *v19 = 0;
          }
        }
      }

      else
      {
LABEL_21:
        v22 = std::__throw_bad_optional_access[abi:nn200100]();
        std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_3,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_3>,void ()(md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &)>::destroy_deallocate(v22);
      }
    }
  }
}

__n128 std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_3,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_3>,void ()(md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1AAB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState,md::ls::PipelineSetup *)> md::ita::disconnect_render_item_components<md::VKMRenderResourcesStore,md::ls::PipelineState,md::ls::PipelineSetup>(md::VKMRenderResourcesStore *)::{lambda(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState*,md::ls::PipelineSetup*)#1},std::allocator<std::function<void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState,md::ls::PipelineSetup *)> md::ita::disconnect_render_item_components<md::VKMRenderResourcesStore,md::ls::PipelineState,md::ls::PipelineSetup>(md::VKMRenderResourcesStore *)::{lambda(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState*,md::ls::PipelineSetup*)#1}>,void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState*,md::ls::PipelineSetup*)>::operator()(uint64_t result, uint64_t a2, unint64_t **a3, unint64_t **a4)
{
  v4 = *a4;
  v5 = *(result + 8);
  if (*a3)
  {
    result = md::VKMRenderResourcesStore::_disconnect<geo::handle<md::PipelineStateItem>>(*(result + 8), **a3);
  }

  if (v4)
  {
    result = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v5 + 35, *v4);
    if (result != v5[40])
    {
      v6 = (*(v5[42] + ((((result - v5[39]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - v5[39]) >> 3) & 0x3F));
      v7 = v6[1];
      if (!v7 || (v8 = v7 - 1, (v6[1] = v8) == 0))
      {
        *v6 = 0;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<std::function<void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState,md::ls::PipelineSetup *)> md::ita::disconnect_render_item_components<md::VKMRenderResourcesStore,md::ls::PipelineState,md::ls::PipelineSetup>(md::VKMRenderResourcesStore *)::{lambda(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState*,md::ls::PipelineSetup*)#1},std::allocator<std::function<void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState,md::ls::PipelineSetup *)> md::ita::disconnect_render_item_components<md::VKMRenderResourcesStore,md::ls::PipelineState,md::ls::PipelineSetup>(md::VKMRenderResourcesStore *)::{lambda(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState*,md::ls::PipelineSetup*)#1}>,void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState*,md::ls::PipelineSetup*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A8F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_2,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_2>,void ()(md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &)>::operator()(uint64_t result, uint64_t a2, uint64_t **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    v5 = result;
    do
    {
      v6 = *v3;
      v7 = v3[1];
      v3 += 2;
      result = (*(***(v5 + 8) + 56))(**(v5 + 8), v6, v7);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_2,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_2>,void ()(md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A8B0;
  a2[1] = v2;
  return result;
}

uint64_t mre::GGLResourceStore::disconnect(mre::GGLResourceStore *this, const TextureHandle *a2)
{
  result = ecs2::sparse_set<mre::TextureHandle,64ul>::find(this + 55, a2);
  if (result != *(this + 60))
  {
    v4 = *(*(this + 62) + ((((result - *(this + 59)) >> 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - *(this + 59)) >> 4) & 0x3F);
    --*(v4 + 8);
  }

  return result;
}

uint64_t std::__function::__func<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture *)> md::ita::disconnect_components<mre::GGLResourceStore,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture>(mre::GGLResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture*,md::ls::TextureHandleForType<Flyover::NightTexture>*,md::ls::TextureHandleForType<Flyover::DiffuseTexture>*,md::ls::UniqueMaterialAlbedoTexture*,md::ls::UniqueMaterialEmissiveTexture*,md::ls::UniqueMaterialDiffuseTexture*)#1},std::allocator<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture *)> md::ita::disconnect_components<mre::GGLResourceStore,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture>(mre::GGLResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture*,md::ls::TextureHandleForType<Flyover::NightTexture>*,md::ls::TextureHandleForType<Flyover::DiffuseTexture>*,md::ls::UniqueMaterialAlbedoTexture*,md::ls::UniqueMaterialEmissiveTexture*,md::ls::UniqueMaterialDiffuseTexture*)#1}>,void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture*,md::ls::TextureHandleForType<Flyover::NightTexture>*,md::ls::TextureHandleForType<Flyover::DiffuseTexture>*,md::ls::UniqueMaterialAlbedoTexture*,md::ls::UniqueMaterialEmissiveTexture*,md::ls::UniqueMaterialDiffuseTexture*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A7E0;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19StyleConstantHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleConstantHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A758;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1A778;
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

void ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A758;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls36StyleRouteLineMaskConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A6D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1A6F0;
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

void ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A6D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>::~storage(a1);
}

void std::__function::__func<std::function<void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint *)> md::ita::disconnect_components<md::VKMRenderResourcesStore,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint>(md::VKMRenderResourcesStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle*,md::ls::StyleRouteLineMaskConstantDataHandle*,md::ls::StyleConstantHandle*,md::ls::LandCoverSettingsConstantDataHandle*,md::ls::StyleGroundOcclusionConstantDataHandle*,md::ls::NormalsHandle*,md::ls::UVsHandle*,md::ls::ElevationHandle*,md::ls::InstanceTransformHandle*,md::ls::StyleRouteLineMaskDataKeyHandle*,md::ls::ColorCorrectionDataKeyHandle*,md::ls::NeedsClimateTint*)#1},std::allocator<std::function<void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint *)> md::ita::disconnect_components<md::VKMRenderResourcesStore,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint>(md::VKMRenderResourcesStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle*,md::ls::StyleRouteLineMaskConstantDataHandle*,md::ls::StyleConstantHandle*,md::ls::LandCoverSettingsConstantDataHandle*,md::ls::StyleGroundOcclusionConstantDataHandle*,md::ls::NormalsHandle*,md::ls::UVsHandle*,md::ls::ElevationHandle*,md::ls::InstanceTransformHandle*,md::ls::StyleRouteLineMaskDataKeyHandle*,md::ls::ColorCorrectionDataKeyHandle*,md::ls::NeedsClimateTint*)#1}>,void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle*,md::ls::StyleRouteLineMaskConstantDataHandle*,md::ls::StyleConstantHandle*,md::ls::LandCoverSettingsConstantDataHandle*,md::ls::StyleGroundOcclusionConstantDataHandle*,md::ls::NormalsHandle*,md::ls::UVsHandle*,md::ls::ElevationHandle*,md::ls::InstanceTransformHandle*,md::ls::StyleRouteLineMaskDataKeyHandle*,md::ls::ColorCorrectionDataKeyHandle*,md::ls::NeedsClimateTint*)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t **a4, unint64_t **a5, unint64_t **a6, unint64_t **a7, unint64_t **a8, unint64_t **a9, unint64_t **a10, unint64_t **a11, unint64_t **a12, unint64_t **a13, unint64_t **a14)
{
  v14 = *a3;
  v15 = *a4;
  v16 = *a5;
  v17 = *a6;
  v18 = *a7;
  v19 = *a8;
  v20 = *a9;
  v21 = *a10;
  v22 = *a11;
  v23 = *a12;
  v73 = *a13;
  v74 = *a14;
  v24 = *(a1 + 8);
  if (*a3)
  {
    if ((*(v14 + 8) & 1) == 0)
    {
      v25 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 1197, *v14);
      if (v25 != v24[1202])
      {
        v26 = (*(v24[1204] + ((((v25 - v24[1201]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v25 - v24[1201]) >> 3) & 0x3F));
        v27 = v26[1];
        if (!v27 || (v28 = v27 - 1, (v26[1] = v28) == 0))
        {
          *v26 = 0;
        }
      }
    }
  }

  if (v15)
  {
    v29 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 339, *v15);
    if (v29 != v24[344])
    {
      v30 = (*(v24[346] + ((((v29 - v24[343]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v29 - v24[343]) >> 3) & 0x3F));
      v31 = v30[1];
      if (!v31 || (v32 = v31 - 1, (v30[1] = v32) == 0))
      {
        *v30 = 0;
      }
    }
  }

  if (v16)
  {
    v33 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 123, *v16);
    if (v33 != v24[128])
    {
      v34 = (*(v24[130] + ((((v33 - v24[127]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v33 - v24[127]) >> 3) & 0x3F));
      v35 = v34[1];
      if (!v35 || (v36 = v35 - 1, (v34[1] = v36) == 0))
      {
        *v34 = 0;
      }
    }
  }

  if (v17)
  {
    v37 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 771, *v17);
    if (v37 != v24[776])
    {
      v38 = (*(v24[778] + ((((v37 - v24[775]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v37 - v24[775]) >> 3) & 0x3F));
      v39 = v38[1];
      if (!v39 || (v40 = v39 - 1, (v38[1] = v40) == 0))
      {
        *v38 = 0;
      }
    }
  }

  if (v18)
  {
    v41 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 1393, *v18);
    if (v41 != v24[1398])
    {
      v42 = (*(v24[1400] + ((((v41 - v24[1397]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v41 - v24[1397]) >> 3) & 0x3F));
      v43 = v42[1];
      if (!v43 || (v44 = v43 - 1, (v42[1] = v44) == 0))
      {
        *v42 = 0;
      }
    }
  }

  if (v19)
  {
    v45 = *v19;
    v75 = v45;
    ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::erase(v24 + 1748, &v75);
    util::id_pool<geo::handle<md::AssociationItem>>::push((v24 + 1768), v45);
  }

  if (v20)
  {
    v75 = *v20;
    v46 = v75;
    ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::erase(v24 + 1748, &v75);
    util::id_pool<geo::handle<md::AssociationItem>>::push((v24 + 1768), v46);
  }

  if (v21)
  {
    v75 = *v21;
    v47 = v75;
    ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::erase(v24 + 1748, &v75);
    util::id_pool<geo::handle<md::AssociationItem>>::push((v24 + 1768), v47);
  }

  if (v22)
  {
    v75 = *v22;
    v48 = v75;
    ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::erase(v24 + 1748, &v75);
    util::id_pool<geo::handle<md::AssociationItem>>::push((v24 + 1768), v48);
  }

  if (v23)
  {
    v49 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 393, *v23);
    if (v49 != v24[398])
    {
      v50 = (*(v24[400] + ((((v49 - v24[397]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v49 - v24[397]) >> 3) & 0x3F));
      v51 = v50[1];
      if (!v51 || (v52 = v51 - 1, (v50[1] = v52) == 0))
      {
        *v50 = 0;
      }
    }
  }

  if (v73)
  {
    v53 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 717, *v73);
    if (v53 != v24[722])
    {
      v54 = (*(v24[724] + ((((v53 - v24[721]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v53 - v24[721]) >> 3) & 0x3F));
      v55 = v54[1];
      if (!v55 || (v56 = v55 - 1, (v54[1] = v56) == 0))
      {
        *v54 = 0;
      }
    }
  }

  if (v74)
  {
    v57 = v24[1743];
    if (v57)
    {
      v58 = *v74;
      v59 = vcnt_s8(v57);
      v59.i16[0] = vaddlv_u8(v59);
      if (v59.u32[0] > 1uLL)
      {
        v60 = *v74;
        if (v58 >= *&v57)
        {
          v60 = v58 % *&v57;
        }
      }

      else
      {
        v60 = (*&v57 - 1) & v58;
      }

      v61 = v24[1742];
      v62 = *(v61 + 8 * v60);
      if (v62)
      {
        v63 = *v62;
        if (*v62)
        {
          v64 = *&v57 - 1;
          do
          {
            v65 = v63[1];
            if (v65 == v58)
            {
              if (v63[2] == v58)
              {
                v66 = v63[1];
                if (v59.u32[0] > 1uLL)
                {
                  if (v66 >= *&v57)
                  {
                    v66 %= *&v57;
                  }
                }

                else
                {
                  v66 &= v64;
                }

                v67 = *(v61 + 8 * v66);
                do
                {
                  v68 = v67;
                  v67 = *v67;
                }

                while (v67 != v63);
                if (v68 == v24 + 1744)
                {
                  goto LABEL_81;
                }

                v69 = v68[1];
                if (v59.u32[0] > 1uLL)
                {
                  if (v69 >= *&v57)
                  {
                    v69 %= *&v57;
                  }
                }

                else
                {
                  v69 &= v64;
                }

                if (v69 != v66)
                {
LABEL_81:
                  if (!*v63)
                  {
                    goto LABEL_82;
                  }

                  v70 = *(*v63 + 8);
                  if (v59.u32[0] > 1uLL)
                  {
                    if (v70 >= *&v57)
                    {
                      v70 %= *&v57;
                    }
                  }

                  else
                  {
                    v70 &= v64;
                  }

                  if (v70 != v66)
                  {
LABEL_82:
                    *(v61 + 8 * v66) = 0;
                  }
                }

                v71 = *v63;
                if (*v63)
                {
                  v72 = *(v71 + 8);
                  if (v59.u32[0] > 1uLL)
                  {
                    if (v72 >= *&v57)
                    {
                      v72 %= *&v57;
                    }
                  }

                  else
                  {
                    v72 &= v64;
                  }

                  if (v72 != v66)
                  {
                    *(v24[1742] + 8 * v72) = v68;
                    v71 = *v63;
                  }
                }

                *v68 = v71;
                *v63 = 0;
                --v24[1745];

                operator delete(v63);
                return;
              }
            }

            else
            {
              if (v59.u32[0] > 1uLL)
              {
                if (v65 >= *&v57)
                {
                  v65 %= *&v57;
                }
              }

              else
              {
                v65 &= v64;
              }

              if (v65 != v60)
              {
                return;
              }
            }

            v63 = *v63;
          }

          while (v63);
        }
      }
    }
  }
}

uint64_t std::__function::__func<std::function<void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint *)> md::ita::disconnect_components<md::VKMRenderResourcesStore,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint>(md::VKMRenderResourcesStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle*,md::ls::StyleRouteLineMaskConstantDataHandle*,md::ls::StyleConstantHandle*,md::ls::LandCoverSettingsConstantDataHandle*,md::ls::StyleGroundOcclusionConstantDataHandle*,md::ls::NormalsHandle*,md::ls::UVsHandle*,md::ls::ElevationHandle*,md::ls::InstanceTransformHandle*,md::ls::StyleRouteLineMaskDataKeyHandle*,md::ls::ColorCorrectionDataKeyHandle*,md::ls::NeedsClimateTint*)#1},std::allocator<std::function<void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint *)> md::ita::disconnect_components<md::VKMRenderResourcesStore,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint>(md::VKMRenderResourcesStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle*,md::ls::StyleRouteLineMaskConstantDataHandle*,md::ls::StyleConstantHandle*,md::ls::LandCoverSettingsConstantDataHandle*,md::ls::StyleGroundOcclusionConstantDataHandle*,md::ls::NormalsHandle*,md::ls::UVsHandle*,md::ls::ElevationHandle*,md::ls::InstanceTransformHandle*,md::ls::StyleRouteLineMaskDataKeyHandle*,md::ls::ColorCorrectionDataKeyHandle*,md::ls::NeedsClimateTint*)#1}>,void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle*,md::ls::StyleRouteLineMaskConstantDataHandle*,md::ls::StyleConstantHandle*,md::ls::LandCoverSettingsConstantDataHandle*,md::ls::StyleGroundOcclusionConstantDataHandle*,md::ls::NormalsHandle*,md::ls::UVsHandle*,md::ls::ElevationHandle*,md::ls::InstanceTransformHandle*,md::ls::StyleRouteLineMaskDataKeyHandle*,md::ls::ColorCorrectionDataKeyHandle*,md::ls::NeedsClimateTint*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A688;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26UniqueMaterialZIndexHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialZIndexHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *(v17 + 16);
        v19 = *v17;
        v20 = *(v16 + 16);
        *v17 = *v16;
        *(v17 + 16) = v20;
        *v16 = v19;
        *(v16 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41228;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41248;
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

void ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41228;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls37UniqueMaterialVisibilityOptionsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialVisibilityOptionsHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 16 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F);
        v18 = *v17;
        LOBYTE(v15) = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v15;
        *v16 = v18;
        *(v16 + 8) = BYTE8(v18);
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41700;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41720;
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

void ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41700;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>::~storage(a1);
}

uint64_t std::__function::__func<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData,md::ls::RampMaterialData,md::ls::ColorDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::UniqueMaterialZIndexHandle,md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle *)> md::ita::disconnect_components<md::MaterialResourceStore,md::ls::RenderableMaterialData,md::ls::RampMaterialData,md::ls::ColorDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::UniqueMaterialZIndexHandle,md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle>(md::MaterialResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData*,md::ls::RampMaterialData*,md::ls::ColorDataHandle*,md::ls::UniqueMaterialVisibilityOptionsHandle*,md::ls::UniqueMaterialZIndexHandle*,md::ls::UniqueColorDataHandle*,md::ls::UniqueGradientMaskDataHandle*,md::ls::UniqueColorCorrectionDataHandle*)#1},std::allocator<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData,md::ls::RampMaterialData,md::ls::ColorDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::UniqueMaterialZIndexHandle,md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle *)> md::ita::disconnect_components<md::MaterialResourceStore,md::ls::RenderableMaterialData,md::ls::RampMaterialData,md::ls::ColorDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::UniqueMaterialZIndexHandle,md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle>(md::MaterialResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData*,md::ls::RampMaterialData*,md::ls::ColorDataHandle*,md::ls::UniqueMaterialVisibilityOptionsHandle*,md::ls::UniqueMaterialZIndexHandle*,md::ls::UniqueColorDataHandle*,md::ls::UniqueGradientMaskDataHandle*,md::ls::UniqueColorCorrectionDataHandle*)#1}>,void ()(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData*,md::ls::RampMaterialData*,md::ls::ColorDataHandle*,md::ls::UniqueMaterialVisibilityOptionsHandle*,md::ls::UniqueMaterialZIndexHandle*,md::ls::UniqueColorDataHandle*,md::ls::UniqueGradientMaskDataHandle*,md::ls::UniqueColorCorrectionDataHandle*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A640;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_1,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_1>,void ()(md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *)>::operator()(uint64_t result, uint64_t a2, uint64_t a3, unint64_t **a4, unint64_t **a5)
{
  v5 = result;
  v6 = *a4;
  v7 = *a5;
  if (*a4)
  {
    v8 = **(result + 8);
    v9 = *v6;
    v10 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v8 + 609, *v6);
    if (v10 != v8[614])
    {
      v11 = (*(v8[616] + ((((v10 - v8[613]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v10 - v8[613]) >> 3) & 0x3F));
      v12 = v11[1];
      if (!v12 || (v13 = v12 - 1, (v11[1] = v13) == 0))
      {
        *v11 = 0;
      }
    }

    result = md::getStorage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>(v8 + 609, v9);
    if (result)
    {
      v14 = std::__hash_table<std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,std::__unordered_map_hasher<md::PlanarParametersCacheKey,std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,md::PlanarParametersCacheKeyHasher,std::equal_to<md::PlanarParametersCacheKey>,true>,std::__unordered_map_equal<md::PlanarParametersCacheKey,std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,std::equal_to<md::PlanarParametersCacheKey>,md::PlanarParametersCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>>>::find<md::PlanarParametersCacheKey>(v8 + 599, result);
      if (v14)
      {
        v15 = v14[4];
      }

      else
      {
        v15 = 0;
      }

      result = md::updateRetainedCounter(v8 + 555, v15);
    }
  }

  if (v7)
  {
    v16 = **(v5 + 8);
    v17 = *v7;
    md::updateRetainedCounter(v16 + 501, *v7);
    result = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(v16 + 501, v17);
    if (result)
    {
      v18 = std::__hash_table<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::__unordered_map_hasher<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,md::StyleEmissiveColorCacheKeyHasher,std::equal_to<md::StyleEmissiveColorCacheKey>,true>,std::__unordered_map_equal<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::equal_to<md::StyleEmissiveColorCacheKey>,md::StyleEmissiveColorCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>>>::find<md::StyleEmissiveColorCacheKey>(v16 + 491, result);
      if (v18)
      {
        v19 = v18[5];
      }

      else
      {
        v19 = 0;
      }

      return md::updateRetainedCounter(v16 + 447, v19);
    }
  }

  return result;
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_1,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_1>,void ()(md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A5F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_0,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_0>,void ()(md::ls::RequestReset const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v1 = *(a1 + 1);
  v2 = ecs2::ExecutionTaskContext::currentEntity(a1);
  v3 = *v1;

  return ecs2::ExecutionTaskContext::destroyEntity(v3, v2);
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_0,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_0>,void ()(md::ls::RequestReset const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A5B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_1,std::allocator<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_1>,void ()(md::ls::RenderItemPendingDeletion const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v1 = *(a1 + 1);
  v2 = ecs2::ExecutionTaskContext::currentEntity(a1);
  v3 = *v1;

  return ecs2::ExecutionTaskContext::destroyEntity(v3, v2);
}

uint64_t std::__function::__func<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_1,std::allocator<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_1>,void ()(md::ls::RenderItemPendingDeletion const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1AB90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_0,std::allocator<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_0>,void ()(md::ls::PendingDeletion const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1AB48;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_1,std::allocator<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_1>,void ()(md::ls::UniqueMaterialData &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1ACD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_0,std::allocator<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_0>,void ()(md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&)>::operator()(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a3 == 1)
  {
    v4 = *(a1 + 16);
    AssociationItemStorage = md::VKMRenderResourcesStore::getAssociationItemStorage(**(a1 + 8), *a4, 1);
    v6 = AssociationItemStorage[4];
    v7 = AssociationItemStorage[5];
    while (v6 != v7)
    {
      v8 = *v6++;
      ecs2::addComponent<md::ls::PendingDeletion>(*v4, v8);
    }

    v9 = AssociationItemStorage[1];
    for (i = AssociationItemStorage[2]; v9 != i; ++v9)
    {
      v11 = *v9 << 32;
      v15[0] = &unk_1F2A1AC88;
      v15[1] = v11;
      v15[3] = v15;
      v16[0] = &unk_1F2A1AC88;
      v16[3] = v16;
      v16[1] = v11;
      v17 = 0;
      ecs2::Runtime::queueCommand();
      if (v17 != -1)
      {
        (off_1F2A198D8[v17])(&v14, v16);
      }

      v17 = -1;
      std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v15);
    }

    md::VKMRenderResourcesStore::clearRenderItemGroup(**(a1 + 8), a4, 0);
    AssociationItemStorage[2] = AssociationItemStorage[1];
    AssociationItemStorage[5] = AssociationItemStorage[4];
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderItemPendingDeletion>(ecs2::Entity,md::ls::RenderItemPendingDeletion &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1AC88;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_0,std::allocator<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_0>,void ()(md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1AC40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _registerStateCaptureCallbacks_17940()
{
  if (_registerStateCaptureCallbacks_onceToken_17941 != -1)
  {
    dispatch_once(&_registerStateCaptureCallbacks_onceToken_17941, &__block_literal_global_4_17942);
  }
}

void ggl::StandardPostchain::CompositePipelineSetup::~CompositePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::DepthSplitPipelineSetup::~DepthSplitPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::DownsampleCoCPipelineSetup::~DownsampleCoCPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::FGBlurPipelineSetup::~FGBlurPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::BGBlurPipelineSetup::~BGBlurPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::TentBlurPipelineSetup::~TentBlurPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::DownsampleDepthPipelineSetup::~DownsampleDepthPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::SSAOBlurPipelineSetup::~SSAOBlurPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::SSAOUpsamplePipelineSetup::~SSAOUpsamplePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::TrafficBase::BaseMesh::~BaseMesh(ggl::TrafficBase::BaseMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::TrafficBase::BaseMesh::~BaseMesh(ggl::TrafficBase::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void *ggl::TrafficBase::BaseMesh::BaseMesh(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::typedReflection();
  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = a1 + 15;
  *a1 = &unk_1F2A1BBB0;
  a1[2] = &unk_1F2A1BBD0;
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

  *a1 = &unk_1F2A1BB70;
  a1[2] = &unk_1F2A1BB90;
  return a1;
}

void geo::_retain_ptr<VKRouteContextObserverThunk * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1BCC0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKRouteContextObserverThunk * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1BCC0;

  return a1;
}

void geo::_retain_ptr<VKRouteLineObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1BCE0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKRouteLineObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1BCE0;

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::LabelTransitRoute>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 336);
  std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 328);
  *(a1 + 328) = 0;
  if (v2)
  {
    std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 6));
    v4 = v2;
    std::vector<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
    MEMORY[0x1B8C62190](v2, 0x60C40DCD2FBCELL);
  }

  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 296));
  std::vector<geo::Mercator2<double>,geo::allocator_adapter<geo::Mercator2<double>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 264));
  std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*(a1 + 184));
  v4 = (a1 + 112);
  std::vector<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (a1 + 80);
  std::vector<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  *(a1 + 48) = &unk_1F2A4C308;

  *(a1 + 24) = &unk_1F2A580E8;
  v3 = *(a1 + 32);
}

void std::__shared_ptr_emplace<md::LabelTransitRoute>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1BD48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelTransitSupport::findColorForTransitLine(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  v9 = *(a2 + 40);
  v10 = v9 ^ a4;
  v11 = *(a1 + 376);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = v9 ^ a4;
      if (v10 >= *&v11)
      {
        v13 = v10 % *&v11;
      }
    }

    else
    {
      v13 = (*&v11 - 1) & v10;
    }

    v14 = *(*(a1 + 368) + 8 * v13);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (i[2] == v9 && *(i + 24) == a4)
          {
            for (j = 0; j != 4; ++j)
            {
              *(a3 + j) = *(i + j + 32);
            }

            return;
          }
        }

        else
        {
          if (v12.u32[0] > 1uLL)
          {
            if (v16 >= *&v11)
            {
              v16 %= *&v11;
            }
          }

          else
          {
            v16 &= *&v11 - 1;
          }

          if (v16 != v13)
          {
            break;
          }
        }
      }
    }
  }

  if (*(a1 + 408) >= 0x7D0uLL)
  {
    std::__hash_table<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,md::LabelTransitSupport::TransitLineColorKeyHash,std::equal_to<std::pair<unsigned long long,BOOL>>,true>,std::__unordered_map_equal<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::equal_to<std::pair<unsigned long long,BOOL>>,md::LabelTransitSupport::TransitLineColorKeyHash,true>,geo::allocator_adapter<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,mdm::zone_mallocator>>::clear(a1 + 368);
  }

  if (a4)
  {
    std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,FeatureStyleAttributes const&,0>();
  }

  md::LabelStyleCache::styleQueryForFeatureAttributes(&v80, (*(*(a1 + 16) + 336) + 184), (a2 + 24), 0);
  v18 = v80;
  v19 = *(&v80 + 1);
  if (*(&v80 + 1))
  {
    atomic_fetch_add_explicit((*(&v80 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v79 = *(&v18 + 1);
  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v80, v18, *(&v18 + 1));
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (v82 != 1)
  {
    goto LABEL_55;
  }

  v77 = *(a1 + 16);
  v20 = *(*(v77 + 424) + 29);
  v4 = *(v80 + 24);
  if (v20 >= 0x17)
  {
    v21 = 23;
  }

  else
  {
    v21 = *(*(v77 + 424) + 29);
  }

  v78 = v21;
  v22 = *(v4 + 12);
  if (v22 == 2)
  {
    v23 = *(v4 + 16);
    if (v23)
    {
      v24 = *(v23 + 72);
      if (v24)
      {
        v25 = *v24 + 120 * *(v24 + v78 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0x5Cu) != *(v25 + 12))
        {
          goto LABEL_49;
        }
      }

      if (*(v4 + 56))
      {
        v26 = *(v4 + 48);
        v27 = 8 * *(v4 + 56);
        while (1)
        {
          v76 = v27;
          v28 = v26;
          v29 = *(*v26 + 72);
          if (v29)
          {
            v30 = *v29 + 120 * *(v29 + v78 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v30, 0x5Cu) != *(v30 + 12))
            {
              goto LABEL_49;
            }
          }

          v26 = v28 + 8;
          v22 = 1;
          v27 = v76 - 8;
          if (v76 == 8)
          {
            goto LABEL_46;
          }
        }
      }
    }

    v22 = 1;
  }

LABEL_46:
  v32 = *(v4 + 16 * v22 + 16);
  if (!v32)
  {
LABEL_55:
    v36 = (*(*a1 + 16))(&v83, a1, a2);
    *a3 = v83.i32[0];
    goto LABEL_56;
  }

  v33 = *(v32 + 72);
  if (!v33 || (v34 = *v33 + 120 * *(v33 + v78 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v34, 0x5Cu) == *(v34 + 12)))
  {
    v38 = v4 + 16 * v22;
    if (*(v38 + 56))
    {
      v39 = *(v38 + 48);
      v4 = 8 * *(v38 + 56);
      while (1)
      {
        v40 = *(*v39 + 72);
        if (v40)
        {
          v41 = *v40 + 120 * *(v40 + v78 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v41, 0x5Cu) != *(v41 + 12))
          {
            goto LABEL_49;
          }
        }

        v39 += 8;
        v4 -= 8;
        if (!v4)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_49:
  v35 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(v77 + 112), *(*(v77 + 112) + 8));
  md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(&v83, v35, &v80, v20, 1u);
  v37 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v83, vdupq_n_s32(0x437F0000u))));
  *a3 = vuzp1_s8(v37, v37).u32[0];
LABEL_56:
  v42 = *(a1 + 376);
  if (!v42)
  {
    goto LABEL_77;
  }

  v43 = vcnt_s8(v42);
  v43.i16[0] = vaddlv_u8(v43);
  if (v43.u32[0] > 1uLL)
  {
    v4 = v10;
    if (v10 >= v42)
    {
      v4 = v10 % v42;
    }
  }

  else
  {
    v4 = (v42 - 1) & v10;
  }

  v44 = *(*(a1 + 368) + 8 * v4);
  if (!v44 || (v45 = *v44) == 0)
  {
LABEL_77:
    v48 = mdm::zone_mallocator::instance(v36);
    v49 = pthread_rwlock_rdlock((v48 + 32));
    if (v49)
    {
      geo::read_write_lock::logFailure(v49, "read lock", v50);
    }

    v45 = malloc_type_zone_malloc(*v48, 0x28uLL, 0x102004057DAB957uLL);
    atomic_fetch_add((v48 + 24), 1u);
    geo::read_write_lock::unlock((v48 + 32));
    *v45 = 0;
    *(v45 + 1) = v10;
    *(v45 + 2) = v9;
    v45[24] = 0;
    *(v45 + 7) = *&v84[3];
    *(v45 + 25) = *v84;
    v52 = (*(a1 + 408) + 1);
    v53 = *(a1 + 416);
    if (v42 && (v53 * v42) >= v52)
    {
LABEL_125:
      v71 = *(a1 + 368);
      v72 = *(v71 + 8 * v4);
      if (v72)
      {
        *v45 = *v72;
        v75 = v79;
      }

      else
      {
        *v45 = *(a1 + 392);
        *(a1 + 392) = v45;
        *(v71 + 8 * v4) = a1 + 392;
        v75 = v79;
        if (!*v45)
        {
LABEL_134:
          ++*(a1 + 408);
          goto LABEL_135;
        }

        v73 = *(*v45 + 8);
        if ((v42 & (v42 - 1)) != 0)
        {
          if (v73 >= v42)
          {
            v73 %= v42;
          }
        }

        else
        {
          v73 &= v42 - 1;
        }

        v72 = (*(a1 + 368) + 8 * v73);
      }

      *v72 = v45;
      goto LABEL_134;
    }

    v54 = v42 < 3 || (v42 & (v42 - 1)) != 0;
    v55 = v54 | (2 * v42);
    v56 = vcvtps_u32_f32(v52 / v53);
    if (v55 <= v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = v55;
    }

    if (v57 == 1)
    {
      v57 = 2;
    }

    else if ((v57 & (v57 - 1)) != 0)
    {
      prime = std::__next_prime(v57);
      v57 = prime;
    }

    v42 = *(a1 + 376);
    if (v57 > v42)
    {
      goto LABEL_92;
    }

    if (v57 < v42)
    {
      prime = vcvtps_u32_f32(*(a1 + 408) / *(a1 + 416));
      if (v42 < 3 || (v66 = vcnt_s8(v42), v66.i16[0] = vaddlv_u8(v66), v66.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v67 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v67;
        }
      }

      if (v57 <= prime)
      {
        v57 = prime;
      }

      if (v57 >= v42)
      {
        v42 = *(a1 + 376);
      }

      else
      {
        if (v57)
        {
LABEL_92:
          v58 = mdm::zone_mallocator::instance(prime);
          v59 = pthread_rwlock_rdlock((v58 + 32));
          if (v59)
          {
            geo::read_write_lock::logFailure(v59, "read lock", v60);
          }

          v61 = malloc_type_zone_malloc(*v58, 8 * v57, 0x2004093837F09uLL);
          atomic_fetch_add((v58 + 24), 1u);
          geo::read_write_lock::unlock((v58 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> **,0>((a1 + 368), v61);
          v62 = 0;
          *(a1 + 376) = v57;
          do
          {
            *(*(a1 + 368) + 8 * v62++) = 0;
          }

          while (v57 != v62);
          v63 = *(a1 + 392);
          if (v63)
          {
            v64 = v63[1];
            v65 = vcnt_s8(v57);
            v65.i16[0] = vaddlv_u8(v65);
            if (v65.u32[0] > 1uLL)
            {
              if (v64 >= v57)
              {
                v64 %= v57;
              }
            }

            else
            {
              v64 &= v57 - 1;
            }

            *(*(a1 + 368) + 8 * v64) = a1 + 392;
            v68 = *v63;
            if (*v63)
            {
              do
              {
                v69 = v68[1];
                if (v65.u32[0] > 1uLL)
                {
                  if (v69 >= v57)
                  {
                    v69 %= v57;
                  }
                }

                else
                {
                  v69 &= v57 - 1;
                }

                if (v69 != v64)
                {
                  v70 = *(a1 + 368);
                  if (!*(v70 + 8 * v69))
                  {
                    *(v70 + 8 * v69) = v63;
                    goto LABEL_116;
                  }

                  *v63 = *v68;
                  *v68 = **(v70 + 8 * v69);
                  **(v70 + 8 * v69) = v68;
                  v68 = v63;
                }

                v69 = v64;
LABEL_116:
                v63 = v68;
                v68 = *v68;
                v64 = v69;
              }

              while (v68);
            }
          }

          v42 = v57;
          goto LABEL_120;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> **,0>((a1 + 368), 0);
        v42 = 0;
        *(a1 + 376) = 0;
      }
    }

LABEL_120:
    if ((v42 & (v42 - 1)) != 0)
    {
      if (v10 >= v42)
      {
        v4 = v10 % v42;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v42 - 1) & v10;
    }

    goto LABEL_125;
  }

  while (1)
  {
    v46 = *(v45 + 1);
    if (v46 == v10)
    {
      break;
    }

    if (v43.u32[0] > 1uLL)
    {
      if (v46 >= v42)
      {
        v46 %= v42;
      }
    }

    else
    {
      v46 &= v42 - 1;
    }

    if (v46 != v4)
    {
      goto LABEL_77;
    }

LABEL_76:
    v45 = *v45;
    if (!v45)
    {
      goto LABEL_77;
    }
  }

  if (*(v45 + 2) != v9 || v45[24] != 0)
  {
    goto LABEL_76;
  }

  v75 = v79;
LABEL_135:
  for (k = 0; k != 4; ++k)
  {
    v45[k + 32] = *(a3 + k);
  }

  if (v82 == 1)
  {
    (*(*v80 + 56))(v80);
  }

  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v81);
  }

  if (*(&v80 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v80 + 1));
  }

  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v75);
  }
}

void sub_1B2F78304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, char a19)
{
  geo::read_write_lock::unlock((v20 + 32));
  v23 = mdm::zone_mallocator::instance(v22);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *>>(v23, v19);
  if (a19 == 1)
  {
    (*(*a15 + 56))(a15);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(a1);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *>(v3, v2);
  }
}

int8x8_t md::LabelTransitSupport::baseTransitLineColor@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>, uint8x8_t a4@<D0>)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (v6 && (md::createFeatureAttributeSet(v14, (a2 + 24)), ColorOverrideForAttributes = md::DataOverrideManager::getColorOverrideForAttributes(v6, v14, &v13), std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v14), ColorOverrideForAttributes))
  {
    v8 = vdupq_n_s32(0x437F0000u);
    v9 = v13;
  }

  else
  {
    a4.i32[0] = *(a2 + 76);
    v12 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a4))), vdupq_n_s32(0x3B808081u));
    geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(v14, &v12);
    v8 = vdupq_n_s32(0x437F0000u);
    v9 = v14[0];
  }

  v10 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v9, v8)));
  result = vuzp1_s8(v10, v10);
  *a3 = result.i32[0];
  return result;
}

void md::LabelTransitSupport::setExternalTransitNodeFeatures(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 128));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::clear(a1 + 160);
  atomic_load((*(a1 + 16) + 3426));
  v6 = *a2;
  if (*a2 != a2[1])
  {
    (*(**v6 + 16))();
    v7 = *(*v6 + 32);
    v8 = *(*v6 + 40);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      v9 = *(v7 + 33);
      if (*(v7 + 33))
      {
        v10 = *v7;
        if (*v10 == 42)
        {
          v11 = 0;
LABEL_8:
          if (LOWORD(v10[2 * v11 + 1]))
          {
            v41.__vftable = *(*v6 + 16);
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned long long,unsigned long long>((a1 + 160), v41.__vftable, &v41);
          }

          goto LABEL_14;
        }

        v11 = 0;
        v12 = v10 + 2;
        do
        {
          if (v9 - 1 == v11)
          {
            goto LABEL_14;
          }

          v13 = *v12;
          v12 += 2;
          ++v11;
        }

        while (v13 != 42);
        if (v11 < v9)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_14:
    operator new();
  }

  v14 = *(a1 + 136);
  v16 = *a3;
  v15 = *(a3 + 8);
  v17 = v15 - *a3;
  if (v17 >> 4 >= 1)
  {
    v18 = *(a1 + 144);
    if (v18 - v14 >= v17)
    {
      for (; v16 != v15; v14 += 2)
      {
        *v14 = *v16;
        v26 = v16[1];
        v14[1] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v16 += 2;
      }

      *(a1 + 136) = v14;
    }

    else
    {
      v19 = *(a1 + 128);
      v20 = (v17 >> 4) + ((v14 - v19) >> 4);
      if (v20 >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = (v14 - v19) >> 4;
      v22 = v18 - v19;
      if (v22 >> 3 > v20)
      {
        v20 = v22 >> 3;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF0)
      {
        v23 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v20;
      }

      v43 = a1 + 152;
      if (v23)
      {
        v24 = mdm::zone_mallocator::instance(v5);
        v25 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelFeature>>(v24, v23);
      }

      else
      {
        v25 = 0;
      }

      v27 = &v25[16 * v21];
      v42 = &v25[16 * v23];
      v28 = &v27[v17];
      v29 = v27;
      do
      {
        *v29 = *v16;
        v30 = v16[1];
        *(v29 + 1) = v30;
        if (v30)
        {
          atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
        }

        v29 += 16;
        v16 += 2;
      }

      while (v29 != v28);
      memcpy(&v27[v17], v14, *(a1 + 136) - v14);
      v31 = *(a1 + 128);
      v32 = &v28[*(a1 + 136) - v14];
      *(a1 + 136) = v14;
      v33 = &v27[-(v14 - v31)];
      memcpy(v33, v31, v14 - v31);
      v34 = *(a1 + 128);
      *(a1 + 128) = v33;
      *(a1 + 136) = v32;
      v35 = *(a1 + 144);
      *(a1 + 144) = v42;
      v41.__shared_weak_owners_ = v34;
      v42 = v35;
      v41.__vftable = v34;
      v41.__shared_owners_ = v34;
      std::__split_buffer<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(&v41);
      v14 = *(a1 + 136);
    }
  }

  v36 = *(a1 + 16);
  if (*(a1 + 128) != v14)
  {
    md::LabelFeatureStyler::styleExternalFeatures(*(v36 + 296), (a1 + 128));
    v36 = *(a1 + 16);
  }

  *(v36 + 3034) = 1;
  v37 = atomic_load((v36 + 3053));
  if (v37)
  {
    v38 = *(v36 + 136);
    if (v38)
    {
      v39 = *(v38 + 56);
      if (v39)
      {
        std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v39, v36, 9);
      }
    }
  }
}

void sub_1B2F78A74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2F78AA4()
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v2);
  if (!v0)
  {
    JUMPOUT(0x1B2F78A9CLL);
  }

  JUMPOUT(0x1B2F78A94);
}

void sub_1B2F78B9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelTransitSupport::routeContextStateDidChange(void)::$_0,std::allocator<md::LabelTransitSupport::routeContextStateDidChange(void)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  *(v1 + 112) = 1;
  v2 = *(v1 + 16);
  *(v2 + 3038) = 1;
  *(v2 + 3040) = 1;
  LOBYTE(v1) = atomic_load((v2 + 3053));
  if (v1)
  {
    v3 = *(v2 + 136);
    if (v3)
    {
      result = *(v3 + 56);
      if (result)
      {
        return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(result, v2, 9);
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<md::LabelTransitSupport::routeContextStateDidChange(void)::$_0,std::allocator<md::LabelTransitSupport::routeContextStateDidChange(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1BD00;
  a2[1] = v2;
  return result;
}

void sub_1B2F78CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VKRouteContextObserverThunk;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

std::__shared_weak_count *std::__split_buffer<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelFeature>>(v5, v4);
  }

  return v1;
}

void std::__shared_ptr_emplace<md::TransitNodeLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1BE20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelTransitSupport::setExternalTransitShieldFeatures(void *a1, uint64_t **a2)
{
  v49[4] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 27);
  if (a1 + 27 == a2)
  {
    j = a1[28];
  }

  else
  {
    v5 = *a2;
    v4 = a2[1];
    v6 = v4 - *a2;
    v7 = a1[29];
    v8 = a1[27];
    if (v7 - v8 < v6)
    {
      v9 = v6 >> 4;
      if (v8)
      {
        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](a1 + 27);
        operator delete(*v3);
        v7 = 0;
        *v3 = 0;
        v3[1] = 0;
        v3[2] = 0;
      }

      if (!(v9 >> 60))
      {
        v10 = v7 >> 3;
        if (v7 >> 3 <= v9)
        {
          v10 = v9;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (!(v11 >> 60))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v11);
        }
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = a1[28] - v8;
    if (v13 >= v6)
    {
      j = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*a2, a2[1], v8);
      for (i = a1[28]; i != j; i -= 2)
      {
        v17 = *(i - 1);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v17);
        }
      }
    }

    else
    {
      v14 = (v5 + v13);
      std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*a2, (v5 + v13), v8);
      for (j = a1[28]; v14 != v4; j += 2)
      {
        *j = *v14;
        v15 = v14[1];
        j[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v14 += 2;
      }
    }

    a1[28] = j;
  }

  memset(v49, 0, 24);
  v48 = 0;
  v46 = v47;
  v47[0] = 0;
  if (*v3 != j)
  {
    atomic_load((a1[2] + 3426));
    v18 = a1[27];
    v44 = a1[28];
    if (v18 != v44)
    {
      v19 = a1 + 35;
      v42 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v43 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      do
      {
        v20 = *v19;
        if (!*v19)
        {
          goto LABEL_38;
        }

        v21 = *v18;
        v22 = a1 + 35;
        do
        {
          v23 = md::LabelExternalRoadFeatureLess::operator()(*(v20 + 32), v21);
          if (v23)
          {
            v24 = 8;
          }

          else
          {
            v24 = 0;
          }

          if (!v23)
          {
            v22 = v20;
          }

          v20 = *(v20 + v24);
        }

        while (v20);
        if (v22 == v19 || (v25 = md::LabelExternalRoadFeatureLess::operator()(v21, v22[4]), (v25 & 1) != 0))
        {
LABEL_38:
          operator new();
        }

        v26 = v22[6];
        v27 = v47[0];
        k = v47;
        v29 = v47;
        if (v47[0])
        {
          v30 = v47[0];
          do
          {
            v31 = v30[4];
            if (v26 >= v31)
            {
              if (v31 >= v26)
              {
                goto LABEL_58;
              }

              ++v30;
            }

            v30 = *v30;
          }

          while (v30);
          for (k = v47; ; v27 = *k)
          {
            v29 = k;
            if (!v27)
            {
              break;
            }

            while (1)
            {
              k = v27;
              v32 = v27[4];
              if (v26 < v32)
              {
                break;
              }

              if (v32 >= v26)
              {
                goto LABEL_57;
              }

              v27 = k[1];
              if (!v27)
              {
                v29 = k + 1;
                goto LABEL_54;
              }
            }
          }
        }

LABEL_54:
        v33 = mdm::zone_mallocator::instance(v25);
        v34 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<md::LabelFeature *,void *>>(v33);
        v34[4] = v26;
        *v34 = 0;
        v34[1] = 0;
        v34[2] = k;
        *v29 = v34;
        if (*v46)
        {
          v46 = *v46;
          v34 = *v29;
        }

        v25 = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v47[0], v34);
        ++v48;
LABEL_57:
        v35 = *(v26 + 192);
        v36 = mdm::zone_mallocator::instance(v25);
        v37 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v36);
        *v37 = 4;
        *(v37 + 8) = 0u;
        *(v37 + 24) = 0u;
        *(v37 + 40) = 0u;
        *(v37 + 56) = 0u;
        *(v37 + 72) = 0u;
        *(v37 + 11) = 0;
        *(v37 + 104) = 0u;
        *(v37 + 120) = 0u;
        *(v37 + 17) = 0;
        *(v37 + 72) = 255;
        *(v37 + 37) = 0;
        *(v37 + 38) = 0;
        *(v37 + 20) = 0;
        v37[168] = 1;
        *(v37 + 22) = 0;
        *(v37 + 23) = 0;
        *(v37 + 12) = v43;
        *(v37 + 13) = v42;
        v37[224] = 0;
        *(v37 + 57) = 0;
        *(v37 + 116) = 256;
        v37[234] = 0;
        *(v37 + 30) = 0;
        *(v37 + 31) = 0;
        v45 = v37;
        md::LabelLineStore::queueWorkUnit(v35, &v45);
        std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v45, 0);
LABEL_58:
        md::LabelLineStore::addExternalRoadFeature(*(v26 + 192), v18);
        v18 += 2;
      }

      while (v18 != v44);
    }

    md::LabelFeatureStyler::styleExternalFeatures(*(a1[2] + 296), v49);
  }

  v38 = a1[2];
  *(v38 + 3034) = 1;
  v39 = atomic_load((v38 + 3053));
  if (v39)
  {
    v40 = *(v38 + 136);
    if (v40)
    {
      v41 = *(v40 + 56);
      if (v41)
      {
        std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v41, v38, 9);
      }
    }
  }

  std::__tree<md::LabelFeature *,std::less<md::LabelFeature *>,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::destroy(v47[0]);
  v45 = v49;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v45);
}

void sub_1B2F796E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27, void *a28)
{
  std::__tree<md::LabelFeature *,std::less<md::LabelFeature *>,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::destroy(a28);
  a27 = (v28 - 128);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a27);
  _Unwind_Resume(a1);
}

void sub_1B2F797FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelTransitSupport::updateRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelTransitSupport::updateRouteLine(VKRouteLine *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[43];
  if (v2)
  {
    memset(v3, 0, sizeof(v3));
    md::LabelTransitRouteLine::generateTransitShieldFeatures(v2, v1[2], v3);
    md::LabelTransitSupport::setExternalTransitShieldFeatures(v1, v3);
    v4 = v3;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v4);
  }
}

void sub_1B2F7987C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelTransitSupport::updateRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelTransitSupport::updateRouteLine(VKRouteLine *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1BDD8;
  a2[1] = v2;
  return result;
}

void sub_1B2F7998C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKRouteLineObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelTransitRouteLine>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 48) = &unk_1F2A45FC0;

  *(a1 + 24) = &unk_1F2A4C308;
  v2 = *(a1 + 32);
}

void std::__shared_ptr_emplace<md::LabelTransitRouteLine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1BDA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__tree<md::LabelFeature *,std::less<md::LabelFeature *>,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<md::LabelFeature *,std::less<md::LabelFeature *>,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::destroy(*a1);
    v2 = std::__tree<md::LabelFeature *,std::less<md::LabelFeature *>,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::destroy(a1[1]);
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<md::LabelFeature *,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x28uLL, 0x1020040FAE78CE4uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

BOOL md::LabelExternalRoadFeatureLess::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v5 = a1[23];
  v4 = a1[24];
  v6 = (v4 - v5) >> 4;
  v7 = a2[23];
  v8 = a2[24] - v7;
  if (v6 == v8 >> 4)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if (v6 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = (v4 - v5) >> 4;
    }

    while (1)
    {
      v10 = *v5;
      v11 = *(*v5 + 48);
      v12 = *v7;
      v13 = *(*v7 + 48);
      v14 = v11 >= v13;
      if (v11 != v13)
      {
        break;
      }

      v15 = *(v10 + 31);
      if (v15 >= 0)
      {
        v16 = *(v10 + 31);
      }

      else
      {
        v16 = *(v10 + 16);
      }

      v17 = *(v12 + 31);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v12 + 16);
      }

      if (v16 != v17)
      {
        return (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v10 + 8), (v12 + 8)) & 0x80u) != 0;
      }

      v19 = v15 >= 0 ? (v10 + 8) : *(v10 + 8);
      v20 = v18 >= 0 ? (v12 + 8) : *(v12 + 8);
      if (memcmp(v19, v20, v16))
      {
        return (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v10 + 8), (v12 + 8)) & 0x80u) != 0;
      }

      if (*(v10 + 56) != *(v12 + 56))
      {
        if (*(v10 + 56) >= *(v12 + 56))
        {
          return 0;
        }

        v22 = 0;
        do
        {
          v23 = v22;
          if (v22 == 3)
          {
            break;
          }

          v24 = *(v10 + 57 + v22);
          v25 = *(v12 + 57 + v22++);
        }

        while (v24 < v25);
        return v23 > 2;
      }

      v7 += 2;
      v5 += 2;
      if (!--v9)
      {
        return 0;
      }
    }
  }

  else
  {
    v14 = v6 >= v8 >> 4;
  }

  return !v14;
}

void std::__shared_ptr_emplace<md::UniLineLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A46090;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninMapEngineMode::applyRenderLayerSettings(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 41936);
  v4 = *v3;
  v5 = v3[1];
  while (v4 != v5)
  {
    if (*v4 == 9)
    {
      if (v4 != v5)
      {
        if (*(v4 + 8))
        {
          std::__hash_table<std::__hash_value_type<unsigned char,md::DataRequirement>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,md::DataRequirement>>>::__erase_unique<unsigned char>(a3, 3u);
        }
      }

      return;
    }

    v4 += 16;
  }
}

void md::MuninMapEngineMode::~MuninMapEngineMode(md::MuninMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

md::MuninMapEngineMode *md::MuninMapEngineMode::MuninMapEngineMode(md::MuninMapEngineMode *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = md::MapEngineMode::MapEngineMode(this, 17);
  *v2 = &unk_1F2A1BE58;
  *(v2 + 49) = 1;
  *(v2 + 52) = 21;
  *(v2 + 224) = 259;
  *(v2 + 56) = 0x3FF4F1A6C638D03FLL;
  LODWORD(v9) = 67305985;
  md::MapEngineMode::addRequiredRenderLayers(v2, &v9, 4);
  gdc::LogicExecutionGraphBuilder::addLogic<md::CameraLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::ElevationLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GeometryLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GridLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LabelsLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::MapZoomLevelStyleLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LayerDataLogic>(this + 29);
  v8[0] = 0x669A8EDAC04FCBF1;
  v8[1] = "md::MuninSceneLogic]";
  v8[2] = 19;
  *&v5 = 0xC83717EF586624DCLL;
  *(&v5 + 1) = "md::MuninSceneContext]";
  v6 = 21;
  v7 = 1;
  v11[1] = unk_1E7B37F58;
  v11[2] = xmmword_1E7B37F68;
  v11[3] = unk_1E7B37F78;
  *(&v9 + 1) = v11;
  v10 = 3;
  *&v9 = &unk_1F2A4B5F0;
  v12 = 25;
  v11[0] = xmmword_1E7B37F48;
  v4[1] = &v5;
  v4[2] = 0;
  v4[0] = &unk_1F2A4C258;
  gdc::LogicExecutionGraphBuilder::addLogic(this + 29, v8, &v5, 0, &v9, v4);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SettingsLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SharedResourcesLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::StyleLogic>(this + 29);
  LODWORD(v9) = 36;
  md::MapEngineMode::addRequiredMapDataTypes(this, &v9, 1);
  v9 = xmmword_1B33B1530;
  md::MapEngineMode::addOptionalMapDataTypes(this, &v9, 4);
  return this;
}

void sub_1B2F7A64C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B2F7B38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  v37 = *(v35 - 232);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_64c39_ZTSN3geo12Coordinate3DINS_7RadiansEdEE88c44_ZTSN3geo4UnitINS_20MeterUnitDescriptionEdEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  return result;
}

__n128 __copy_helper_block_ea8_56c39_ZTSN3geo12Coordinate3DINS_7RadiansEdEE(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[1] = a2[3].n128_u64[1];
  result = a2[4];
  a1[4] = result;
  return result;
}

void sub_1B2F7C058(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::GlobeStars::StarVertex>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::GlobeStars::StarVertex>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::GlobeStars::StarVertex>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::GlobeStars::StarVertex>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::GlobeStars::StarVertex>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::GlobeStars::StarVertex>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1C020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::GlobeStars::StarsMesh::~StarsMesh(ggl::GlobeStars::StarsMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::GlobeStars::StarsMesh::~StarsMesh(ggl::GlobeStars::StarsMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::GlobeStars::StarVertex>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::GlobeStars::StarVertex>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::GlobeStars::StarsPipelineSetup::~StarsPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1DBB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1DBD0;
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

void ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1DBB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1DAE0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1DB00;
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

void ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1DAE0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1DA10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1DA30;
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

void ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1DA10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::erq::EncodeRenderQueue>,std::allocator<ecs2::ForwardToExecute<md::erq::EncodeRenderQueue>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1C098;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::FlyoverMetaLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  gdc::LayerDataSource::getResourceFromMap(__p, 49, *a3, a3[1]);
  v4 = __p[0];
  v3 = __p[1];
  if (__p[1])
  {
    atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  if (v4)
  {
    if (v4[18])
    {
      operator new();
    }
  }

  operator new();
}

void sub_1B2F7D094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v13);
  operator delete(v15);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::FlyoverMetaTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1C210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::FlyoverMetaLayerDataSource::constructRequests(uint64_t a1, char **a2, char **a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      v6 = **v4;
      v7 = *(*v4 + 2);
      v13[0] = gdc::ResourceKey::getInt32(v7, 0);
      v13[1] = gdc::ResourceKey::getInt32(v7, 1u);
      v13[2] = gdc::ResourceKey::getInt32(v7, 2u);
      v13[3] = gdc::ResourceKey::getInt32(v7, 3u);
      v13[4] = gdc::ResourceKey::getInt32(v7, 4u);
      if ((*(v5 + 12) & 0x100000000) != 0)
      {
        v8 = *(v5 + 12);
      }

      else
      {
        v8 = 2147483646;
      }

      gdc::ResourceKey::ResourceKey(&v10, v6, 49, v13, 5, *(v5 + 14), v8);
      v9 = *v4;
      v4 += 2;
      gdc::LayerDataRequest::request(v9, &v10, 0);
      if (v11 != v12)
      {
        free(v11);
      }
    }

    while (v4 != a3);
  }
}

void md::FlyoverMetaLayerDataSource::~FlyoverMetaLayerDataSource(md::FlyoverMetaLayerDataSource *this)
{
  *this = &unk_1F2A1C170;
  *(this + 74) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1C170;
  *(this + 74) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);
}

void md::Logic<md::SkyLogic,md::SkyLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

double md::SkyLogic::defaultDayFillColor(md::SkyLogic *this)
{
  {
    v3 = this;
    this = v3;
    if (v2)
    {
      geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::SkyLogic::defaultDayFillColor(void)::skyDayDefaultFillColor, &md::kSkyDayDefaultFillColor);
      this = v3;
    }
  }

  result = *&md::SkyLogic::defaultDayFillColor(void)::skyDayDefaultFillColor;
  *this = md::SkyLogic::defaultDayFillColor(void)::skyDayDefaultFillColor;
  return result;
}

double md::SkyLogic::defaultDayHorizonColor(md::SkyLogic *this)
{
  {
    v3 = this;
    this = v3;
    if (v2)
    {
      geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::SkyLogic::defaultDayHorizonColor(void)::skyDayDefaultHorizonColor, &md::kSkyDayDefaultHorizonColor);
      this = v3;
    }
  }

  result = *&md::SkyLogic::defaultDayHorizonColor(void)::skyDayDefaultHorizonColor;
  *this = md::SkyLogic::defaultDayHorizonColor(void)::skyDayDefaultHorizonColor;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN2md8SkyLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextENS2_17StyleLogicContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15SkyLogicContextEE3__0NS_9allocatorISK_EEFvNS2_17StyleManagerEventEEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1C3B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::Logic<md::SkyLogic,md::SkyLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x7C7EC6C7C111B0D0 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext>(*(a2 + 8));
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

uint64_t gdc::ObjectHolder<md::SkyLogicContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::SkyLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A1C400;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1000C40AACD1071);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::SkyLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A1C400;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AACD1071);
  }

  return a1;
}

void md::SkyLogic::~SkyLogic(md::SkyLogic *this)
{
  md::SkyLogic::~SkyLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1C248;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void geo::_retain_ptr<NSObject  {objcproto17OS_dispatch_queue}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1C428;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSObject  {objcproto17OS_dispatch_queue}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1C428;

  return a1;
}

void geo::_retain_ptr<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1C970;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1C970;

  return a1;
}

void geo::_retain_ptr<NSObject  {objcproto20OS_dispatch_workloop}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto20OS_dispatch_workloop}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1C448;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSObject  {objcproto20OS_dispatch_workloop}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto20OS_dispatch_workloop}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1C448;

  return a1;
}

void std::__shared_ptr_emplace<md::TaskContext>::__on_zero_shared(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 134217984;
    v4 = a1 + 24;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "Destroy TaskContext:%p", &v3, 0xCu);
  }

  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 168), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 160), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 152), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 144), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 136), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 128), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 120), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 112), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 104), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 96), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 88), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 80), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 72), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 64), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 56), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 48), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 40), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 32), 0);
}

void std::__shared_ptr_emplace<md::TaskContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A21808;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TaskContext::flushTileDecodeQueues(md::TaskContext *this)
{
  v12[4] = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "flushTileDecodeQueues Start", v8, 2u);
  }

  v3 = *(this + 3);
  v12[0] = &unk_1F2A1C468;
  v12[3] = v12;
  geo::TaskQueue::barrierSync(v3, v12);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v12);
  v4 = *(this + 14);
  v11[0] = &unk_1F2A1C4B0;
  v11[3] = v11;
  geo::TaskQueue::barrierSync(v4, v11);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v11);
  v5 = *(this + 5);
  v10[0] = &unk_1F2A1C4F8;
  v10[3] = v10;
  geo::TaskQueue::barrierSync(v5, v10);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v10);
  v6 = *(this + 16);
  v9[0] = &unk_1F2A1C540;
  v9[3] = v9;
  geo::TaskQueue::barrierSync(v6, v9);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v9);
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v7 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "flushTileDecodeQueues Finish", v8, 2u);
  }
}

void sub_1B2F7DECC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

float altitude::util::computeLocalClipPlanes(uint64_t a1, uint64_t a2, double a3)
{
  v48[24] = *MEMORY[0x1E69E9840];
  gm::Box<double,3>::operator*(v47, a1, a3);
  gm::Box<double,3>::corners(v47, v48);
  for (i = 0; i != 3; ++i)
  {
    v5 = *&v48[i + 21];
    v43[i] = v5;
  }

  for (j = 0; j != 3; ++j)
  {
    v7 = *&v48[j + 15];
    v42[j] = v7;
  }

  for (k = 0; k != 3; ++k)
  {
    v9 = *&v48[k + 3];
    v41[k] = v9;
  }

  gm::Plane3<float>::Plane3(&v44, v43, v42, v41);
  v10 = 0;
  *a2 = v44;
  *(a2 + 8) = v45;
  *(a2 + 12) = v46;
  do
  {
    v11 = *&v48[v10 + 15];
    v43[v10++] = v11;
  }

  while (v10 != 3);
  for (m = 0; m != 3; ++m)
  {
    v13 = *&v48[m + 12];
    v42[m] = v13;
  }

  for (n = 0; n != 3; ++n)
  {
    v15 = *&v48[n];
    v41[n] = v15;
  }

  gm::Plane3<float>::Plane3(&v44, v43, v42, v41);
  v16 = 0;
  *(a2 + 16) = v44;
  *(a2 + 24) = v45;
  *(a2 + 28) = v46;
  do
  {
    v17 = *&v48[v16 + 12];
    v43[v16++] = v17;
  }

  while (v16 != 3);
  for (ii = 0; ii != 3; ++ii)
  {
    v19 = *&v48[ii + 18];
    v42[ii] = v19;
  }

  for (jj = 0; jj != 3; ++jj)
  {
    v21 = *&v48[jj + 6];
    v41[jj] = v21;
  }

  gm::Plane3<float>::Plane3(&v44, v43, v42, v41);
  v22 = 0;
  *(a2 + 32) = v44;
  *(a2 + 40) = v45;
  *(a2 + 44) = v46;
  do
  {
    v23 = *&v48[v22 + 18];
    v43[v22++] = v23;
  }

  while (v22 != 3);
  for (kk = 0; kk != 3; ++kk)
  {
    v25 = *&v48[kk + 21];
    v42[kk] = v25;
  }

  for (mm = 0; mm != 3; ++mm)
  {
    v27 = *&v48[mm + 9];
    v41[mm] = v27;
  }

  gm::Plane3<float>::Plane3(&v44, v43, v42, v41);
  v28 = 0;
  *(a2 + 48) = v44;
  *(a2 + 56) = v45;
  *(a2 + 60) = v46;
  do
  {
    v29 = *&v48[v28 + 9];
    v43[v28++] = v29;
  }

  while (v28 != 3);
  for (nn = 0; nn != 3; ++nn)
  {
    v31 = *&v48[nn + 3];
    v42[nn] = v31;
  }

  for (i1 = 0; i1 != 3; ++i1)
  {
    v33 = *&v48[i1];
    v41[i1] = v33;
  }

  gm::Plane3<float>::Plane3(&v44, v43, v42, v41);
  v34 = 0;
  *(a2 + 64) = v44;
  *(a2 + 72) = v45;
  *(a2 + 76) = v46;
  do
  {
    v35 = *&v48[v34 + 21];
    v43[v34++] = v35;
  }

  while (v34 != 3);
  for (i2 = 0; i2 != 3; ++i2)
  {
    v37 = *&v48[i2 + 18];
    v42[i2] = v37;
  }

  for (i3 = 0; i3 != 3; ++i3)
  {
    v39 = *&v48[i3 + 12];
    v41[i3] = v39;
  }

  gm::Plane3<float>::Plane3(&v44, v43, v42, v41);
  *(a2 + 80) = v44;
  *(a2 + 88) = v45;
  result = v46;
  *(a2 + 92) = v46;
  return result;
}

void md::MuninRoadNetworkData::~MuninRoadNetworkData(md::MuninRoadNetworkData *this)
{
  md::MuninRoadNetworkData::~MuninRoadNetworkData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1C588;
  *(this + 80) = &unk_1F2A1C5C8;
  v2 = *(this + 104);
  if (v2)
  {
    *(this + 105) = v2;
    operator delete(v2);
  }

  v3 = *(this + 101);
  if (v3)
  {
    *(this + 102) = v3;
    operator delete(v3);
  }

  v4 = *(this + 98);
  if (v4)
  {
    *(this + 99) = v4;
    operator delete(v4);
  }

  v5 = *(this + 95);
  if (v5)
  {
    *(this + 96) = v5;
    operator delete(v5);
  }

  v6 = *(this + 94);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  std::unique_ptr<geo::Pool<md::MuninRoadEdge>>::reset[abi:nn200100]((this + 736), 0);
  std::unique_ptr<geo::Pool<md::MuninJunction>>::reset[abi:nn200100](this + 91, 0);

  md::MapTileData::~MapTileData(this);
}

mdm::zone_mallocator *std::unique_ptr<geo::Pool<md::MuninRoadEdge>>::reset[abi:nn200100](mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v26 = 0;
    v27 = 0;
    v25 = &v26;
    v4 = (v2 + 40);
    v3 = *(v2 + 40);
    if (v3)
    {
      do
      {
        result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v25, v3);
        v3 = **v4;
        *v4 = v3;
      }

      while (v3);
      v5 = v27;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v2 + 24);
    v7 = *v2;
    v8 = (v2 + 8);
    v9 = v5 == *(v2 + 16) * v6 || v7 == v8;
    if (!v9)
    {
      v10 = *(v2 + 24);
      do
      {
        if (v10)
        {
          v11 = 0;
          v12 = v7[4];
          do
          {
            v13 = v12 + 120 * v11;
            v14 = v26;
            if (!v26)
            {
              goto LABEL_23;
            }

            v15 = &v26;
            do
            {
              v16 = v14;
              v17 = v15;
              v18 = v14[4];
              if (v18 >= v13)
              {
                v15 = v14;
              }

              v14 = v14[v18 < v13];
            }

            while (v14);
            if (v15 == &v26)
            {
              goto LABEL_23;
            }

            if (v18 < v13)
            {
              v16 = v17;
            }

            if (v13 < v16[4])
            {
LABEL_23:
              if (*(v13 + 39) < 0)
              {
                v19 = *(v13 + 16);
                v20 = mdm::zone_mallocator::instance(result);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v20, v19);
                v6 = *(v2 + 24);
              }
            }

            ++v11;
            v10 = v6;
          }

          while (v11 < v6);
        }

        v21 = v7[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v7[2];
            v9 = *v22 == v7;
            v7 = v22;
          }

          while (!v9);
        }

        v7 = v22;
      }

      while (v22 != v8);
      v7 = *v2;
    }

    if (v7 != v8)
    {
      do
      {
        free(v7[4]);
        v23 = v7[1];
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
            v24 = v7[2];
            v9 = *v24 == v7;
            v7 = v24;
          }

          while (!v9);
        }

        v7 = v24;
      }

      while (v24 != v8);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 8));
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = v8;
    *(v2 + 40) = 0;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v26);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 8));

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B2F7E8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<geo::Pool<md::MuninJunction>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v24 = 0;
    v25 = 0;
    v23 = &v24;
    v4 = (v2 + 40);
    v3 = *(v2 + 40);
    if (v3)
    {
      do
      {
        std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v23, v3);
        v3 = **v4;
        *v4 = v3;
      }

      while (v3);
      v5 = v25;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v2 + 24);
    v7 = *v2;
    v8 = (v2 + 8);
    v9 = v5 == *(v2 + 16) * v6 || v7 == v8;
    if (!v9)
    {
      v10 = *(v2 + 24);
      do
      {
        if (v10)
        {
          v11 = 0;
          v12 = v7[4];
          do
          {
            v13 = (v12 + 72 * v11);
            v14 = v24;
            if (!v24)
            {
              goto LABEL_23;
            }

            v15 = &v24;
            do
            {
              v16 = v14;
              v17 = v15;
              v18 = v14[4];
              if (v18 >= v13)
              {
                v15 = v14;
              }

              v14 = v14[v18 < v13];
            }

            while (v14);
            if (v15 == &v24)
            {
              goto LABEL_23;
            }

            if (v18 < v13)
            {
              v16 = v17;
            }

            if (v13 < v16[4])
            {
LABEL_23:
              (**v13)(v13);
              v6 = *(v2 + 24);
            }

            ++v11;
            v10 = v6;
          }

          while (v11 < v6);
        }

        v19 = v7[1];
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
            v20 = v7[2];
            v9 = *v20 == v7;
            v7 = v20;
          }

          while (!v9);
        }

        v7 = v20;
      }

      while (v20 != v8);
      v7 = *v2;
    }

    if (v7 != v8)
    {
      do
      {
        free(v7[4]);
        v21 = v7[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v7[2];
            v9 = *v22 == v7;
            v7 = v22;
          }

          while (!v9);
        }

        v7 = v22;
      }

      while (v22 != v8);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 8));
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = v8;
    *(v2 + 40) = 0;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v24);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 8));

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B2F7EAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

void *std::vector<md::MuninJunction *>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  v3 = v2 - *a2;
  if (v2 != *a2)
  {
    if (!((v3 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v3 >> 3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::__unordered_map_hasher<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::hash<std::bitset<4ul>>,std::equal_to<std::bitset<4ul>>,true>,std::__unordered_map_equal<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::equal_to<std::bitset<4ul>>,std::hash<std::bitset<4ul>>,true>,std::allocator<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>>>::__emplace_unique_key_args<std::bitset<4ul>,std::piecewise_construct_t const&,std::tuple<std::bitset<4ul> const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v2 >= *&v3)
    {
      v7 = v2 % *&v3;
    }
  }

  else
  {
    v7 = (*&v3 - 1) & v2;
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
    if (v10 == v2)
    {
      break;
    }

    if (v6 > 1)
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if ((std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,4ul>,true,true>(v9 + 2, 0, (v9 + 2), 4u, a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1B2F7EFB0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t geo::Pool<md::MuninJunction>::construct<std::shared_ptr<geo::codec::VectorTile> const&,GeoCodecsConnectivityJunction *&>(uint64_t a1, geo::codec::VectorTile **a2, uint64_t *a3)
{
  v6 = *(a1 + 40);
  if (!v6)
  {
    geo::Pool<md::MuninJunction>::allocateSlab(a1);
    v6 = *(a1 + 40);
  }

  *(a1 + 40) = *v6;
  v7 = *a3;
  *v6 = &unk_1F2A46FB8;
  *(v6 + 8) = v7;
  geo::codec::VectorTile::key(*a2);
  GEOTileKeyMake();
  GEOMapRectForGEOTileKey();
  v25 = v9;
  v26 = v8;
  v23 = v11;
  v24 = v10;
  v12.f32[0] = md::VectorTileUtils::tileCoordinateForJunction(*(*a2 + 4), *(*a2 + 90), *(v7 + 4));
  v13 = *(MEMORY[0x1E69A1688] + 16);
  v14.f64[0] = v24;
  v14.f64[1] = v23;
  v15.f64[0] = v26;
  v15.f64[1] = v25;
  v16 = v15;
  v17 = vdivq_f64(vaddq_f64(v14, v15), v13);
  v15.f64[0] = 1.0 - v17.f64[1];
  v18 = vdivq_f64(v16, v13);
  v19 = vsubq_f64(v17, v18);
  v12.i32[1] = v20;
  v18.f64[1] = v15.f64[0];
  *(v6 + 16) = vmlaq_f64(v18, vcvtq_f64_f32(v12), v19);
  *(v6 + 32) = md::VectorTileUtils::tileCoordinateForJunction(*(*a2 + 4), *(*a2 + 90), *(v7 + 4));
  *(v6 + 36) = v21;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 40) = 0;
  *(v6 + 62) = 0;
  return v6;
}

void *std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,std::allocator<std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>>>::__emplace_unique_key_args<GeoCodecsConnectivityJunction *,std::piecewise_construct_t const&,std::tuple<GeoCodecsConnectivityJunction * const&>,std::tuple<>>(void *a1, unint64_t a2)
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

void *std::__function::__func<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1,std::allocator<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1>,void ()(GeoCodecsRoadFeature const*)>::operator()(uint64_t a1, std::__shared_weak_count **a2)
{
  v158 = *a2;
  v3 = v158;
  v4 = *(a1 + 32);
  result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(*(a1 + 8), v158);
  if (result)
  {
    return result;
  }

  v157 = 0;
  v6 = geo::codec::multiSectionFeaturePoints(v158, 0, &v157);
  v155 = 0;
  v156 = 0;
  v7 = geo::codec::VectorTile::key(**(a1 + 16));
  v8 = *(v7 + 10);
  v9 = *(v7 + 8);
  *&v150[0] = *v7;
  WORD4(v150[0]) = v9;
  BYTE10(v150[0]) = v8;
  v155 = GEOTileKeyMake();
  v156 = v10;
  GEOMapRectForGEOTileKey();
  v11 = &v6[v157];
  v12 = *(MEMORY[0x1E69A1688] + 16);
  v14.f64[1] = v13;
  v16.f64[1] = v15;
  v17 = vdivq_f64(vaddq_f64(v14, v16), v12);
  v18 = 1.0 - v17.f64[1];
  v19 = vdivq_f64(v16, v12);
  v20 = *v6;
  v21 = vsubq_f64(v17, v19);
  v19.f64[1] = v18;
  v154 = vmlaq_f64(v19, vcvtq_f64_f32(*v6), v21);
  v22 = &v11[-1];
  v153 = vmlaq_f64(v19, vcvtq_f64_f32(v11[-1]), v21);
  if (v20.f32[0] >= 0.001)
  {
    if (v20.f32[0] <= 0.999)
    {
      v23 = 0;
    }

    else
    {
      v23 = 2;
    }
  }

  else
  {
    v23 = 1;
  }

  if (v20.f32[1] >= 0.001)
  {
    if (v20.f32[1] > 0.999)
    {
      v23 |= 4uLL;
    }
  }

  else
  {
    v23 |= 8uLL;
  }

  v152 = v23;
  v149 = v3;
  if (*v22 >= 0.001)
  {
    if (*v22 <= 0.999)
    {
      v24 = 0;
    }

    else
    {
      v24 = 2;
    }
  }

  else
  {
    v24 = 1;
  }

  v25 = v11[-1].f32[1];
  if (v25 >= 0.001)
  {
    if (v25 > 0.999)
    {
      v24 |= 4uLL;
    }
  }

  else
  {
    v24 |= 8uLL;
  }

  v151 = v24;
  if (v23)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  if (v24)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  v28 = *(a1 + 24);
  LODWORD(v150[0]) = v26;
  v29 = *v28;
  geo::Pool<md::MuninJunction>::construct<geo::Mercator2<double> const&,gm::Matrix<float,2,1> const&,md::JunctionType &>(*(*v28 + 728), &v154, v6, v150);
  v31 = v29[102];
  v32 = v29[103];
  if (v31 >= v32)
  {
    v35 = v29[101];
    v36 = (v31 - v35) >> 3;
    if ((v36 + 1) >> 61)
    {
      goto LABEL_127;
    }

    v33 = v30;
    v37 = v32 - v35;
    v38 = v37 >> 2;
    if (v37 >> 2 <= (v36 + 1))
    {
      v38 = v36 + 1;
    }

    if (v37 >= 0x7FFFFFFFFFFFFFF8)
    {
      v39 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v38;
    }

    if (v39)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v39);
    }

    *(8 * v36) = v33;
    v34 = 8 * v36 + 8;
    v40 = v29[101];
    v41 = v29[102] - v40;
    v42 = (8 * v36 - v41);
    memcpy(v42, v40, v41);
    v43 = v29[101];
    v29[101] = v42;
    v29[102] = v34;
    v29[103] = 0;
    if (v43)
    {
      operator delete(v43);
    }
  }

  else
  {
    v33 = v30;
    *v31 = v30;
    v34 = (v31 + 1);
  }

  v29[102] = v34;
  v44 = *(a1 + 24);
  LODWORD(v150[0]) = v27;
  v45 = *v44;
  geo::Pool<md::MuninJunction>::construct<geo::Mercator2<double> const&,gm::Matrix<float,2,1> const&,md::JunctionType &>(*(*v44 + 728), &v153, v22, v150);
  v47 = v46;
  v48 = v45[102];
  v49 = v45[103];
  if (v48 < v49)
  {
    *v48 = v46;
    v50 = (v48 + 1);
    goto LABEL_50;
  }

  v51 = v45[101];
  v52 = (v48 - v51) >> 3;
  if ((v52 + 1) >> 61)
  {
LABEL_127:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v53 = v49 - v51;
  v54 = v53 >> 2;
  if (v53 >> 2 <= (v52 + 1))
  {
    v54 = v52 + 1;
  }

  if (v53 >= 0x7FFFFFFFFFFFFFF8)
  {
    v55 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v55 = v54;
  }

  if (v55)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v55);
  }

  *(8 * v52) = v47;
  v50 = 8 * v52 + 8;
  v56 = v45[101];
  v57 = v45[102] - v56;
  v58 = (8 * v52 - v57);
  memcpy(v58, v56, v57);
  v59 = v45[101];
  v45[101] = v58;
  v45[102] = v50;
  v45[103] = 0;
  if (v59)
  {
    operator delete(v59);
  }

LABEL_50:
  v45[102] = v50;
  if ((v152 & 0xF) != 0)
  {
    v60 = v4[105];
    v61 = v4[106];
    if (v60 >= v61)
    {
      v63 = v4[104];
      v64 = (v60 - v63) >> 3;
      if ((v64 + 1) >> 61)
      {
        goto LABEL_126;
      }

      v65 = v61 - v63;
      v66 = v65 >> 2;
      if (v65 >> 2 <= (v64 + 1))
      {
        v66 = v64 + 1;
      }

      if (v65 >= 0x7FFFFFFFFFFFFFF8)
      {
        v67 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v67 = v66;
      }

      if (v67)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v67);
      }

      *(8 * v64) = v33;
      v62 = 8 * v64 + 8;
      v68 = v4[104];
      v69 = v4[105] - v68;
      v70 = (8 * v64 - v69);
      memcpy(v70, v68, v69);
      v71 = v4[104];
      v4[104] = v70;
      v4[105] = v62;
      v4[106] = 0;
      if (v71)
      {
        operator delete(v71);
      }
    }

    else
    {
      *v60 = v33;
      v62 = (v60 + 1);
    }

    v4[105] = v62;
    *&v150[0] = &v152;
    v72 = std::__hash_table<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::__unordered_map_hasher<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::hash<std::bitset<4ul>>,std::equal_to<std::bitset<4ul>>,true>,std::__unordered_map_equal<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::equal_to<std::bitset<4ul>>,std::hash<std::bitset<4ul>>,true>,std::allocator<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>>>::__emplace_unique_key_args<std::bitset<4ul>,std::piecewise_construct_t const&,std::tuple<std::bitset<4ul> const&>,std::tuple<>>(v4 + 107, &v152);
    v73 = v72;
    v75 = v72[4];
    v74 = v72[5];
    if (v75 >= v74)
    {
      v77 = v72[3];
      v78 = (v75 - v77) >> 3;
      if ((v78 + 1) >> 61)
      {
        goto LABEL_126;
      }

      v79 = v74 - v77;
      v80 = v79 >> 2;
      if (v79 >> 2 <= (v78 + 1))
      {
        v80 = v78 + 1;
      }

      if (v79 >= 0x7FFFFFFFFFFFFFF8)
      {
        v81 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v81 = v80;
      }

      if (v81)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v81);
      }

      *(8 * v78) = v33;
      v76 = 8 * v78 + 8;
      v82 = v73[3];
      v83 = v73[4] - v82;
      v84 = (8 * v78 - v83);
      memcpy(v84, v82, v83);
      v85 = v73[3];
      v73[3] = v84;
      v73[4] = v76;
      v73[5] = 0;
      if (v85)
      {
        operator delete(v85);
      }
    }

    else
    {
      *v75 = v33;
      v76 = (v75 + 1);
    }

    v73[4] = v76;
  }

  if (v24)
  {
    v86 = v4[105];
    v87 = v4[106];
    if (v86 >= v87)
    {
      v89 = v4[104];
      v90 = (v86 - v89) >> 3;
      if ((v90 + 1) >> 61)
      {
        goto LABEL_126;
      }

      v91 = v87 - v89;
      v92 = v91 >> 2;
      if (v91 >> 2 <= (v90 + 1))
      {
        v92 = v90 + 1;
      }

      if (v91 >= 0x7FFFFFFFFFFFFFF8)
      {
        v93 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v93 = v92;
      }

      if (v93)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v93);
      }

      *(8 * v90) = v47;
      v88 = 8 * v90 + 8;
      v94 = v4[104];
      v95 = v4[105] - v94;
      v96 = (8 * v90 - v95);
      memcpy(v96, v94, v95);
      v97 = v4[104];
      v4[104] = v96;
      v4[105] = v88;
      v4[106] = 0;
      if (v97)
      {
        operator delete(v97);
      }
    }

    else
    {
      *v86 = v47;
      v88 = (v86 + 1);
    }

    v4[105] = v88;
    *&v150[0] = &v151;
    v98 = std::__hash_table<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::__unordered_map_hasher<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::hash<std::bitset<4ul>>,std::equal_to<std::bitset<4ul>>,true>,std::__unordered_map_equal<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::equal_to<std::bitset<4ul>>,std::hash<std::bitset<4ul>>,true>,std::allocator<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>>>::__emplace_unique_key_args<std::bitset<4ul>,std::piecewise_construct_t const&,std::tuple<std::bitset<4ul> const&>,std::tuple<>>(v4 + 107, &v151);
    v99 = v98;
    v101 = v98[4];
    v100 = v98[5];
    if (v101 < v100)
    {
      *v101 = v47;
      v102 = (v101 + 1);
LABEL_101:
      v99[4] = v102;
      goto LABEL_102;
    }

    v103 = v98[3];
    v104 = (v101 - v103) >> 3;
    if (!((v104 + 1) >> 61))
    {
      v105 = v100 - v103;
      v106 = v105 >> 2;
      if (v105 >> 2 <= (v104 + 1))
      {
        v106 = v104 + 1;
      }

      if (v105 >= 0x7FFFFFFFFFFFFFF8)
      {
        v107 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v107 = v106;
      }

      if (v107)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v107);
      }

      *(8 * v104) = v47;
      v102 = 8 * v104 + 8;
      v108 = v99[3];
      v109 = v99[4] - v108;
      v110 = (8 * v104 - v109);
      memcpy(v110, v108, v109);
      v111 = v99[3];
      v99[3] = v110;
      v99[4] = v102;
      v99[5] = 0;
      if (v111)
      {
        operator delete(v111);
      }

      goto LABEL_101;
    }

LABEL_126:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_102:
  v112 = *(a1 + 16);
  v159 = 0;
  v113 = geo::codec::multiSectionFeaturePoints(v149, 0, &v159);
  v114 = geo::codec::VectorTile::key(*v112);
  v115 = *(v114 + 10);
  v116 = *(v114 + 8);
  *&v150[0] = *v114;
  WORD4(v150[0]) = v116;
  BYTE10(v150[0]) = v115;
  *&v150[0] = GEOTileKeyMake();
  *(&v150[0] + 1) = v117;
  GEOMapRectForGEOTileKey();
  v122 = v159;
  if (v159)
  {
    v124 = *(MEMORY[0x1E69A1688] + 16);
    v123 = *(MEMORY[0x1E69A1688] + 24);
    v125 = (v121 + v119) / v123;
    v127.f64[0] = v118 / v124;
    v126.f64[0] = (v120 + v118) / v124;
    v126.f64[1] = v125;
    v127.f64[1] = v119 / v123;
    v128 = vsubq_f64(v126, v127);
    v129 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v130 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    do
    {
      v131 = v113->__vftable;
      v113 = (v113 + 8);
      v127.f64[1] = 1.0 - v125;
      v132 = vmlaq_f64(v127, vcvtq_f64_f32(v131), v128);
      v130 = vminnmq_f64(v132, v130);
      v129 = vmaxnmq_f64(v129, v132);
      v122 = (v122 - 1);
    }

    while (v122);
  }

  else
  {
    v129 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v130 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  v150[0] = v130;
  v150[1] = v129;
  v133 = v4[92];
  v134 = *(v133 + 40);
  if (!v134)
  {
    geo::Pool<md::MuninRoadEdge>::allocateSlab(v4[92]);
    v134 = *(v133 + 40);
  }

  *(v133 + 40) = *v134;
  v159 = 0;
  geo::codec::multiSectionFeaturePoints(v149, 0, &v159);
  if (v159)
  {
    v135 = v159 - 1;
  }

  else
  {
    v135 = 0;
  }

  md::MuninRoadEdge::MuninRoadEdge(v134, v149, v150, 0, v135, v33, v47);
  v136 = v4[96];
  v137 = v4[97];
  if (v136 >= v137)
  {
    v139 = v4[95];
    v140 = (v136 - v139) >> 3;
    if ((v140 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v141 = v137 - v139;
    v142 = v141 >> 2;
    if (v141 >> 2 <= (v140 + 1))
    {
      v142 = v140 + 1;
    }

    if (v141 >= 0x7FFFFFFFFFFFFFF8)
    {
      v143 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v143 = v142;
    }

    if (v143)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v143);
    }

    *(8 * v140) = v134;
    v138 = 8 * v140 + 8;
    v144 = v4[95];
    v145 = v4[96] - v144;
    v146 = (8 * v140 - v145);
    memcpy(v146, v144, v145);
    v147 = v4[95];
    v4[95] = v146;
    v4[96] = v138;
    v4[97] = 0;
    if (v147)
    {
      operator delete(v147);
    }
  }

  else
  {
    *v136 = v134;
    v138 = (v136 + 1);
  }

  v4[96] = v138;
  v148 = *(a1 + 8);
  v159 = &v158;
  result = std::__hash_table<std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::__unordered_map_hasher<GeoCodecsRoadFeature const*,std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::hash<GeoCodecsRoadFeature const*>,std::equal_to<GeoCodecsRoadFeature const*>,true>,std::__unordered_map_equal<GeoCodecsRoadFeature const*,std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::equal_to<GeoCodecsRoadFeature const*>,std::hash<GeoCodecsRoadFeature const*>,true>,std::allocator<std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>>>::__emplace_unique_key_args<GeoCodecsRoadFeature const*,std::piecewise_construct_t const&,std::tuple<GeoCodecsRoadFeature const* const&>,std::tuple<>>(v148, v149);
  result[3] = v134;
  return result;
}

__n128 geo::Pool<md::MuninJunction>::construct<geo::Mercator2<double> const&,gm::Matrix<float,2,1> const&,md::JunctionType &>(uint64_t a1, __n128 *a2, unint64_t *a3, unsigned __int32 *a4)
{
  v8 = *(a1 + 40);
  if (!v8)
  {
    geo::Pool<md::MuninJunction>::allocateSlab(a1);
    v8 = *(a1 + 40);
  }

  *(a1 + 40) = v8->n128_u64[0];
  v9 = *a4;
  v8->n128_u64[0] = &unk_1F2A46FB8;
  v8->n128_u64[1] = 0;
  result = *a2;
  v8[1] = *a2;
  v11 = *a3;
  v8[3].n128_u64[0] = 0;
  v8[3].n128_u64[1] = 0;
  v8[2].n128_u64[0] = v11;
  v8[2].n128_u64[1] = 0;
  v8[4].n128_u32[0] = v9;
  v8[4].n128_u16[2] = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::__unordered_map_hasher<GeoCodecsRoadFeature const*,std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::hash<GeoCodecsRoadFeature const*>,std::equal_to<GeoCodecsRoadFeature const*>,true>,std::__unordered_map_equal<GeoCodecsRoadFeature const*,std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::equal_to<GeoCodecsRoadFeature const*>,std::hash<GeoCodecsRoadFeature const*>,true>,std::allocator<std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>>>::__emplace_unique_key_args<GeoCodecsRoadFeature const*,std::piecewise_construct_t const&,std::tuple<GeoCodecsRoadFeature const* const&>,std::tuple<>>(void *a1, unint64_t a2)
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

uint64_t geo::Pool<md::MuninRoadEdge>::allocateSlab(uint64_t a1)
{
  v2 = malloc_type_malloc(120 * *(a1 + 24), 0x10720407B5CA0FCuLL);
  result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v2);
  v4 = *(a1 + 40);
  v5 = &v2[120 * *(a1 + 24) - 120];
  if (v5 >= v2)
  {
    do
    {
      v6 = v5;
      *v5 = v4;
      v5 -= 120;
      v4 = v6;
    }

    while (v5 >= v2);
    v4 = v5 + 120;
  }

  *(a1 + 40) = v4;
  return result;
}

uint64_t geo::Pool<md::MuninJunction>::allocateSlab(uint64_t a1)
{
  v2 = malloc_type_malloc(72 * *(a1 + 24), 0x10A2040BA2E7380uLL);
  result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v2);
  v4 = *(a1 + 40);
  v5 = &v2[72 * *(a1 + 24) - 72];
  if (v5 >= v2)
  {
    do
    {
      v6 = v5;
      *v5 = v4;
      v5 -= 72;
      v4 = v6;
    }

    while (v5 >= v2);
    v4 = v5 + 72;
  }

  *(a1 + 40) = v4;
  return result;
}

__n128 std::__function::__func<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1,std::allocator<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1>,void ()(GeoCodecsRoadFeature const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1C628;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0,std::allocator<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0>,void ()(GeoCodecsRoadEdge *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 40);
  if (*(*a2 + 40) != *(*a2 + 48) && ((*&v142[0] = 0, v5 = geo::codec::multiSectionFeaturePoints(*v3, 0, v142), v6 = *&v142[0] - 1, v8 = *(v3 + 8), v7 = *(v3 + 16), v8) ? (v9 = v8 == v6) : (v9 = 1), !v9 ? (v10 = v7 == 0) : (v10 = 1), !v10 ? (v11 = v7 == v6) : (v11 = 1), v11))
  {
    if (v6 < v8)
    {
      v8 = *&v142[0] - 1;
    }

    v12 = (&v5->__vftable + v8);
    if (v6 >= v7)
    {
      v6 = *(v3 + 16);
    }

    v13 = (&v5->__vftable + v6);
    if (*v12 >= 0.001)
    {
      if (*v12 <= 0.999)
      {
        v14 = 0;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 1;
    }

    v16 = v12[1];
    if (v16 >= 0.001)
    {
      if (v16 > 0.999)
      {
        v14 |= 4uLL;
      }
    }

    else
    {
      v14 |= 8uLL;
    }

    if (*v13 >= 0.001)
    {
      if (*v13 <= 0.999)
      {
        v17 = 0;
      }

      else
      {
        v17 = 2;
      }
    }

    else
    {
      v17 = 1;
    }

    v18 = v13[1];
    if (v18 >= 0.001)
    {
      if (v18 > 0.999)
      {
        v17 |= 4uLL;
      }
    }

    else
    {
      v17 |= 8uLL;
    }

    v15 = v17 | v14;
  }

  else
  {
    v15 = 0;
  }

  v147 = v15;
  v19 = *v3;
  v146 = v19;
  v20 = **(a1 + 8);
  result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(*(a1 + 16), v19);
  if (!result)
  {
    v22 = *(v3 + 48);
    v23 = MEMORY[0x1E69A1688];
    v141 = v20;
    if (v22)
    {
      v24 = *(a1 + 24);
      v143.f64[0] = *(v3 + 48);
      v25 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(*v24, v22);
      if (v25)
      {
        v26 = v25[3];
        if (!v26)
        {
          goto LABEL_55;
        }

LABEL_103:
        v140 = v26;
        v100 = *(a1 + 48);
        v143.f64[0] = 0.0;
        v101 = geo::codec::multiSectionFeaturePoints(v19, 0, &v143);
        v102 = v23;
        v104 = *(v3 + 8);
        v103 = *(v3 + 16);
        if (v104 <= v103)
        {
          v105 = *(v3 + 16);
        }

        else
        {
          v105 = *(v3 + 8);
        }

        v106 = *&v143.f64[0] - 1;
        if (*&v143.f64[0] - 1 >= v105)
        {
          v107 = v105;
        }

        else
        {
          v107 = *&v143.f64[0] - 1;
        }

        v108 = geo::codec::VectorTile::key(*v100);
        v109 = *(v108 + 10);
        v110 = *(v108 + 8);
        *&v142[0] = *v108;
        WORD4(v142[0]) = v110;
        BYTE10(v142[0]) = v109;
        *&v142[0] = GEOTileKeyMake();
        *(&v142[0] + 1) = v111;
        GEOMapRectForGEOTileKey();
        if (v103 >= v104)
        {
          v116 = v104;
        }

        else
        {
          v116 = v103;
        }

        if (v106 < v116)
        {
          v116 = v106;
        }

        v114.f64[1] = v115;
        v117 = v102[1];
        v112.f64[1] = v113;
        v118 = vdivq_f64(vaddq_f64(v114, v112), v117);
        v119 = 1.0 - v118.f64[1];
        v121 = vdivq_f64(v112, v117);
        v120 = vsubq_f64(v118, v121);
        v121.f64[1] = v119;
        v122 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v123 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        do
        {
          v124 = vmlaq_f64(v121, vcvtq_f64_f32(*(&v101->__vftable + v116)), v120);
          v122 = vminnmq_f64(v124, v122);
          v123 = vmaxnmq_f64(v123, v124);
          ++v116;
        }

        while (v116 <= v107);
        v142[0] = v122;
        v142[1] = v123;
        v125 = v4[92];
        v126 = *(v125 + 40);
        if (!v126)
        {
          geo::Pool<md::MuninRoadEdge>::allocateSlab(v4[92]);
          v126 = *(v125 + 40);
        }

        *(v125 + 40) = *v126;
        md::MuninRoadEdge::MuninRoadEdge(v126, *v3, v142, *(v3 + 8), *(v3 + 16), v141, v140);
        v127 = v4[96];
        v128 = v4[97];
        if (v127 >= v128)
        {
          v130 = v4[95];
          v131 = (v127 - v130) >> 3;
          if ((v131 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v132 = v128 - v130;
          v133 = v132 >> 2;
          if (v132 >> 2 <= (v131 + 1))
          {
            v133 = v131 + 1;
          }

          if (v132 >= 0x7FFFFFFFFFFFFFF8)
          {
            v134 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v134 = v133;
          }

          if (v134)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v134);
          }

          *(8 * v131) = v126;
          v129 = 8 * v131 + 8;
          v135 = v4[95];
          v136 = v4[96] - v135;
          v137 = (8 * v131 - v136);
          memcpy(v137, v135, v136);
          v138 = v4[95];
          v4[95] = v137;
          v4[96] = v129;
          v4[97] = 0;
          if (v138)
          {
            operator delete(v138);
          }
        }

        else
        {
          *v127 = v126;
          v129 = (v127 + 1);
        }

        v4[96] = v129;
        v139 = *(a1 + 16);
        *&v143.f64[0] = &v146;
        result = std::__hash_table<std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::__unordered_map_hasher<GeoCodecsRoadFeature const*,std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::hash<GeoCodecsRoadFeature const*>,std::equal_to<GeoCodecsRoadFeature const*>,true>,std::__unordered_map_equal<GeoCodecsRoadFeature const*,std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::equal_to<GeoCodecsRoadFeature const*>,std::hash<GeoCodecsRoadFeature const*>,true>,std::allocator<std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>>>::__emplace_unique_key_args<GeoCodecsRoadFeature const*,std::piecewise_construct_t const&,std::tuple<GeoCodecsRoadFeature const* const&>,std::tuple<>>(v139, v146);
        result[3] = v126;
        return result;
      }

      v27 = *(v24 + 8);
      v28 = geo::Pool<md::MuninJunction>::construct<std::shared_ptr<geo::codec::VectorTile> const&,GeoCodecsConnectivityJunction *&>(v27[91], *(v24 + 16), &v143);
      v26 = v28;
      v29 = v27[99];
      v30 = v27[100];
      if (v29 >= v30)
      {
        v32 = v27[98];
        v33 = (v29 - v32) >> 3;
        if ((v33 + 1) >> 61)
        {
          goto LABEL_133;
        }

        v34 = v30 - v32;
        v35 = v34 >> 2;
        if (v34 >> 2 <= (v33 + 1))
        {
          v35 = v33 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        if (v36)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v36);
        }

        *(8 * v33) = v26;
        v31 = 8 * v33 + 8;
        v37 = v27[98];
        v38 = v27[99] - v37;
        v39 = (8 * v33 - v38);
        memcpy(v39, v37, v38);
        v40 = v27[98];
        v27[98] = v39;
        v27[99] = v31;
        v27[100] = 0;
        if (v40)
        {
          operator delete(v40);
        }
      }

      else
      {
        *v29 = v28;
        v31 = (v29 + 1);
      }

      v27[99] = v31;
      v41 = *v24;
      *&v142[0] = &v143;
      std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,std::allocator<std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>>>::__emplace_unique_key_args<GeoCodecsConnectivityJunction *,std::piecewise_construct_t const&,std::tuple<GeoCodecsConnectivityJunction * const&>,std::tuple<>>(v41, *&v143.f64[0])[3] = v26;
      v19 = *v3;
      v23 = MEMORY[0x1E69A1688];
      if (v26)
      {
        goto LABEL_103;
      }
    }

LABEL_55:
    v145 = 0;
    v42 = geo::codec::multiSectionFeaturePoints(v19, 0, &v145);
    v142[0] = 0uLL;
    v43 = *v3;
    v44 = *(*v3 + 8);
    if (v44)
    {
      v44 = std::__shared_weak_count::lock(v44);
      v45 = v44;
      if (v44)
      {
        v44 = v43->__vftable;
      }
    }

    else
    {
      v45 = 0;
    }

    v46 = geo::codec::VectorTile::key(v44);
    v47 = *(v46 + 10);
    v48 = *(v46 + 8);
    v143.f64[0] = *v46;
    LOWORD(v143.f64[1]) = v48;
    BYTE2(v143.f64[1]) = v47;
    *&v142[0] = GEOTileKeyMake();
    *(&v142[0] + 1) = v49;
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    GEOMapRectForGEOTileKey();
    v144 = *(&v42->__vftable + *(v3 + 16));
    v50 = v23[1];
    v52.f64[1] = v51;
    v54.f64[1] = v53;
    v55 = vdivq_f64(vaddq_f64(v52, v54), v50);
    v52.f64[0] = 1.0 - v55.f64[1];
    v56 = vdivq_f64(v54, v50);
    v57 = vsubq_f64(v55, v56);
    v56.f64[1] = v52.f64[0];
    v143 = vmlaq_f64(v56, vcvtq_f64_f32(v144), v57);
    v58 = *(a1 + 32);
    if (v15)
    {
      v59 = 2;
    }

    else
    {
      v59 = 1;
    }

    LODWORD(v148) = v59;
    v60 = *v58;
    geo::Pool<md::MuninJunction>::construct<geo::Mercator2<double> const&,gm::Matrix<float,2,1> const&,md::JunctionType &>(*(*v58 + 728), &v143, &v144, &v148);
    v26 = v61;
    v62 = v60[102];
    v63 = v60[103];
    if (v62 < v63)
    {
      *v62 = v61;
      v64 = (v62 + 1);
      goto LABEL_76;
    }

    v65 = v60[101];
    v66 = (v62 - v65) >> 3;
    if (!((v66 + 1) >> 61))
    {
      v67 = v63 - v65;
      v68 = v67 >> 2;
      if (v67 >> 2 <= (v66 + 1))
      {
        v68 = v66 + 1;
      }

      if (v67 >= 0x7FFFFFFFFFFFFFF8)
      {
        v69 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v69 = v68;
      }

      if (v69)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v69);
      }

      *(8 * v66) = v26;
      v64 = 8 * v66 + 8;
      v70 = v60[101];
      v71 = v60[102] - v70;
      v72 = (8 * v66 - v71);
      memcpy(v72, v70, v71);
      v73 = v60[101];
      v60[101] = v72;
      v60[102] = v64;
      v60[103] = 0;
      if (v73)
      {
        operator delete(v73);
      }

LABEL_76:
      v60[102] = v64;
      if (!v15)
      {
LABEL_102:
        v19 = *v3;
        goto LABEL_103;
      }

      v74 = v4[105];
      v75 = v4[106];
      if (v74 >= v75)
      {
        v77 = v4[104];
        v78 = (v74 - v77) >> 3;
        if ((v78 + 1) >> 61)
        {
          goto LABEL_134;
        }

        v79 = v75 - v77;
        v80 = v79 >> 2;
        if (v79 >> 2 <= (v78 + 1))
        {
          v80 = v78 + 1;
        }

        if (v79 >= 0x7FFFFFFFFFFFFFF8)
        {
          v81 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v81 = v80;
        }

        if (v81)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v81);
        }

        *(8 * v78) = v26;
        v76 = 8 * v78 + 8;
        v82 = v4[104];
        v83 = v4[105] - v82;
        v84 = (8 * v78 - v83);
        memcpy(v84, v82, v83);
        v85 = v4[104];
        v4[104] = v84;
        v4[105] = v76;
        v4[106] = 0;
        if (v85)
        {
          operator delete(v85);
        }
      }

      else
      {
        *v74 = v26;
        v76 = (v74 + 1);
      }

      v4[105] = v76;
      v148 = &v147;
      v86 = std::__hash_table<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::__unordered_map_hasher<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::hash<std::bitset<4ul>>,std::equal_to<std::bitset<4ul>>,true>,std::__unordered_map_equal<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::equal_to<std::bitset<4ul>>,std::hash<std::bitset<4ul>>,true>,std::allocator<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>>>::__emplace_unique_key_args<std::bitset<4ul>,std::piecewise_construct_t const&,std::tuple<std::bitset<4ul> const&>,std::tuple<>>(v4 + 107, &v147);
      v87 = v86;
      v89 = v86[4];
      v88 = v86[5];
      if (v89 < v88)
      {
        *v89 = v26;
        v90 = (v89 + 1);
LABEL_101:
        v87[4] = v90;
        goto LABEL_102;
      }

      v91 = v86[3];
      v92 = (v89 - v91) >> 3;
      if (!((v92 + 1) >> 61))
      {
        v93 = v88 - v91;
        v94 = v93 >> 2;
        if (v93 >> 2 <= (v92 + 1))
        {
          v94 = v92 + 1;
        }

        if (v93 >= 0x7FFFFFFFFFFFFFF8)
        {
          v95 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v95 = v94;
        }

        if (v95)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v95);
        }

        *(8 * v92) = v26;
        v90 = 8 * v92 + 8;
        v96 = v87[3];
        v97 = v87[4] - v96;
        v98 = (8 * v92 - v97);
        memcpy(v98, v96, v97);
        v99 = v87[3];
        v87[3] = v98;
        v87[4] = v90;
        v87[5] = 0;
        if (v99)
        {
          operator delete(v99);
        }

        goto LABEL_101;
      }

LABEL_134:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

LABEL_133:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void sub_1B2F80CBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0,std::allocator<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0>,void ()(GeoCodecsRoadEdge *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1C5E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *md::MuninRoadNetworkData::junctionsOnTileEdge(int8x8_t *a1, unint64_t *a2)
{
  v2 = a1[108];
  if (!*&v2)
  {
    return &md::MuninRoadNetworkData::junctionsOnTileEdge(std::bitset<4ul> const&)const::kSentinel;
  }

  v4 = *a2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*&a1[107] + 8 * v7);
  if (!v8)
  {
    return &md::MuninRoadNetworkData::junctionsOnTileEdge(std::bitset<4ul> const&)const::kSentinel;
  }

  v9 = *v8;
  if (!*v8)
  {
    return &md::MuninRoadNetworkData::junctionsOnTileEdge(std::bitset<4ul> const&)const::kSentinel;
  }

  do
  {
    v10 = v9[1];
    if (v4 == v10)
    {
      if (std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,4ul>,true,true>(v9 + 2, 0, (v9 + 2), 4u, a2))
      {
        break;
      }
    }

    else
    {
      if (v6 > 1)
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
        return &md::MuninRoadNetworkData::junctionsOnTileEdge(std::bitset<4ul> const&)const::kSentinel;
      }
    }

    v9 = *v9;
  }

  while (v9);
  if (v9)
  {
    return v9 + 3;
  }

  else
  {
    return &md::MuninRoadNetworkData::junctionsOnTileEdge(std::bitset<4ul> const&)const::kSentinel;
  }
}

__n128 std::__function::__func<md::ita::PrepareRenderableData::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle &,md::ls::BaseMapTileHandle const&>,ecs2::Query<md::ls::TileMatrix const&,md::ls::WillEnterView const&,md::ls::TileRenderableDataHandle &>)::$_0,std::allocator<md::ita::PrepareRenderableData::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle &,md::ls::BaseMapTileHandle const&>,ecs2::Query<md::ls::TileMatrix const&,md::ls::WillEnterView const&,md::ls::TileRenderableDataHandle &>)::$_0>,void ()(md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle &,md::ls::BaseMapTileHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1C670;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup::~CompressedMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F81E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  std::mutex::unlock((v18 + 1776));
  _Unwind_Resume(a1);
}

VKImage *VKCreateRoadSignImageWithSignType(uint64_t a1, double *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a2;
  if (v8 <= 0x10 && ((0x10001u >> v8) & 1) != 0 || (v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0])) == 0)
  {
LABEL_40:
    v14 = 0;
    goto LABEL_41;
  }

  v10 = a2[1];
  v11 = a2[2];
  v12 = CGBitmapContextCreate(0, v10, v11, 8uLL, 0, v9, 0x2002u);
  v13 = v12;
  if (!v12)
  {
    v14 = 0;
    CGColorSpaceRelease(v9);
    goto LABEL_41;
  }

  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = v10;
  v45.size.height = v11;
  CGContextClearRect(v12, v45);
  if (*a3 == 1)
  {
    v39 = CGColorCreate(v9, (a3 + 8));
  }

  else
  {
    v39 = 0;
  }

  if (*(a3 + 3) == 1)
  {
    v15 = CGColorCreate(v9, (a3 + 104));
  }

  else
  {
    v15 = 0;
  }

  if (*(a3 + 4) == 1)
  {
    v16 = CGColorCreate(v9, (a3 + 136));
  }

  else
  {
    v16 = 0;
  }

  if (*(a3 + 5) != 1 || (color = CGColorCreate(v9, (a3 + 168))) == 0)
  {
    v21 = 0;
    color = 0;
    if (!v15)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  CGContextSaveGState(v13);
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = vrndaq_f64(vmulq_n_f64(*(a1 + 56), v18 * v17));
  height = v19.height;
  CGContextSetShadowWithColor(v13, v19, round(v17 * *(a1 + 72) * v18), color);
  generateRoadSignPath(v13, a1, a2);
  CGContextFillPath(v13);
  CGContextRestoreGState(v13);
  v21 = 1;
  if (v15)
  {
LABEL_20:
    CGContextSaveGState(v13);
    v22 = round(*(a1 + 8) * *(a1 + 80) * *(a1 + 16));
    CGContextSetLineWidth(v13, v22 + v22);
    CGContextSetStrokeColorWithColor(v13, v15);
    generateRoadSignPath(v13, a1, a2);
    CGContextStrokePath(v13);
    CGContextRestoreGState(v13);
  }

LABEL_21:
  if (v39)
  {
    CGContextSaveGState(v13);
    CGContextSetFillColorWithColor(v13, v39);
    v23 = v21 ^ 1;
    if (v15)
    {
      v23 = 0;
    }

    if ((v23 & 1) == 0)
    {
      CGContextSetBlendMode(v13, kCGBlendModeCopy);
    }

    generateRoadSignPath(v13, a1, a2);
    CGContextFillPath(v13);
    CGContextRestoreGState(v13);
  }

  if (*(a3 + 1) == 1)
  {
    CGContextSaveGState(v13);
    generateRoadSignPath(v13, a1, a2);
    PathBoundingBox = CGContextGetPathBoundingBox(v13);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    v27 = PathBoundingBox.size.height;
    MidX = CGRectGetMidX(PathBoundingBox);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = v27;
    MidY = CGRectGetMidY(v47);
    CGContextClip(v13);
    if (*(a3 + 1))
    {
      v30 = (a3 + 40);
    }

    else
    {
      v30 = 0;
    }

    v31 = CGGradientCreateWithColorComponents(v9, v30, 0, 2uLL);
    v43.y = v27 * 0.5 + MidY;
    v44.y = MidY - v27 * 0.5;
    v43.x = MidX;
    v44.x = MidX;
    CGContextDrawLinearGradient(v13, v31, v43, v44, 0);
    CFRelease(v31);
    CGContextRestoreGState(v13);
  }

  if (v16)
  {
    CGContextSaveGState(v13);
    CGContextSetBlendMode(v13, kCGBlendModeNormal);
    v32 = round(*(a1 + 8) * *(a1 + 88) * *(a1 + 16));
    CGContextSetLineWidth(v13, v32 + v32);
    CGContextSetStrokeColorWithColor(v13, v16);
    CGContextResetClip(v13);
    generateRoadSignPath(v13, a1, a2);
    CGContextClip(v13);
    generateRoadSignPath(v13, a1, a2);
    CGContextStrokePath(v13);
    CGContextResetClip(v13);
    CGContextRestoreGState(v13);
  }

  Image = CGBitmapContextCreateImage(v13);
  CGColorSpaceRelease(v9);
  CGContextRelease(v13);
  CGColorRelease(v39);
  CGColorRelease(v15);
  CGColorRelease(color);
  CGColorRelease(v16);
  if (!Image)
  {
    goto LABEL_40;
  }

  v34 = [VKImage alloc];
  v35 = *(a1 + 16);
  v36 = a4[1];
  v40 = *a4;
  v41 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = [(VKImage *)v34 initWithCGImage:Image scale:&v40 resourceStore:v35, color];
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  CGImageRelease(Image);
  [(VKImage *)v14 size];
LABEL_41:

  return v14;
}

void sub_1B2F8247C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  _Unwind_Resume(exception_object);
}

id md::LabelIcon::image(md::LabelIcon *this)
{
  v2 = atomic_load(this + 143);
  if (v2)
  {
    v3 = *(this + 2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

CGColorSpaceRef ___ZL11_colorSpacev_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  _colorSpace(void)::colorspace = result;
  return result;
}

uint64_t md::RegistryLogic::debugConsoleString@<X0>(void *a1@<X0>, md::LayoutContext *a2@<X1>, _BYTE *a3@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v27);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "\n=== RegistryLogic ===\n", 23);
  v5 = a1[15];
  if (v5[48] != v5[49])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "Active:", 7);
    v6 = MEMORY[0x1B8C61CB0](&v27, (*(a1[15] + 392) - *(a1[15] + 384)) >> 3);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, "\n", 1);
    _ZN2md15DebugOutputUtil14printContainerINSt3__16vectorIPN3gdc8RegistryENS2_9allocatorIS6_EEEEZNKS_13RegistryLogic18debugConsoleStringERKNS_13LayoutContextERKNS_17LogicDependenciesIJNS4_8TypeListIJNS_12SceneContextEEEENSF_IJEEEEE20ResolvedDependenciesERNS_15RegistryContextEE3__0EEvRNS2_19basic_ostringstreamIcNS2_11char_traitsIcEENS7_IcEEEERKT_T0_jj(&v27, *(a1[15] + 384), *(a1[15] + 392));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "\n", 1);
    v5 = a1[15];
  }

  if (v5[60] != v5[61])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "Cached:", 7);
    v7 = MEMORY[0x1B8C61CB0](&v27, (*(a1[15] + 488) - *(a1[15] + 480)) >> 3);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "\n", 1);
    _ZN2md15DebugOutputUtil14printContainerINSt3__16vectorIPN3gdc8RegistryENS2_9allocatorIS6_EEEEZNKS_13RegistryLogic18debugConsoleStringERKNS_13LayoutContextERKNS_17LogicDependenciesIJNS4_8TypeListIJNS_12SceneContextEEEENSF_IJEEEEE20ResolvedDependenciesERNS_15RegistryContextEE3__0EEvRNS2_19basic_ostringstreamIcNS2_11char_traitsIcEENS7_IcEEEERKT_T0_jj(&v27, *(a1[15] + 480), *(a1[15] + 488));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "\n", 1);
  }

  if (a1[19])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "Recently Destroyed(<=30s):", 26);
    v8 = MEMORY[0x1B8C61CB0](&v27, a1[19]);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "{\n", 2);
    v9 = a1[17];
    if (v9 != (a1 + 18))
    {
      do
      {
        md::LayoutContext::frameState(a2);
        v11 = *(v10 + 88);
        v12 = v9[4];
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "  ", 2);
        v13 = MEMORY[0x1B8C61C80](&v27, (v11 - v12));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, ":", 1);
        v15 = *(v9 + 5);
        v14 = *(v9 + 6);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "[", 1);
        v16 = &v27 + *(v27 - 24);
        if ((v16[32] & 5) != 0)
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v57 = -1;
        }

        else
        {
          (*(**(v16 + 5) + 32))(&v49);
        }

        if (v15 != v14)
        {
          while (1)
          {
            v15 += 8;
            v17 = &v27 + *(v27 - 24);
            if ((v17[32] & 5) != 0)
            {
              memset(v47, 0, sizeof(v47));
              v48 = -1;
            }

            else
            {
              (*(**(v17 + 5) + 32))(v47);
            }

            MEMORY[0x1B8C61CF0](&v27, *(v15 - 8));
            v18 = &v27 + *(v27 - 24);
            if ((v18[32] & 5) != 0)
            {
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v46 = -1;
            }

            else
            {
              (*(**(v18 + 5) + 32))(&v38);
            }

            if (v15 == v14)
            {
              break;
            }

            if (v46 > v48)
            {
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, ",", 1);
              if (v46 - v57 >= 41)
              {
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "\n", 1);
                v37 = 3;
                LODWORD(__p) = 2105376;
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, &__p, 3);
                if (v37 < 0)
                {
                  operator delete(__p);
                }

                v55 = v44;
                v56 = v45;
                v57 = v46;
                v51 = v40;
                v52 = v41;
                v53 = v42;
                v54 = v43;
                v49 = v38;
                v50 = v39;
              }
            }
          }
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "]", 1);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "\n", 1);
        v19 = *(v9 + 1);
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
            v20 = *(v9 + 2);
            v21 = *v20 == v9;
            v9 = v20;
          }

          while (!v21);
        }

        v9 = v20;
      }

      while (v20 != (a1 + 18));
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "}\n", 2);
  }

  if ((v34 & 0x10) != 0)
  {
    v23 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v23 = v30;
    }

    locale = v29[4].__locale_;
  }

  else
  {
    if ((v34 & 8) == 0)
    {
      v22 = 0;
      a3[23] = 0;
      goto LABEL_43;
    }

    locale = v29[1].__locale_;
    v23 = v29[3].__locale_;
  }

  v22 = v23 - locale;
  if ((v23 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v22 >= 0x17)
  {
    operator new();
  }

  a3[23] = v22;
  if (v22)
  {
    memmove(a3, locale, v22);
  }

LABEL_43:
  a3[v22] = 0;
  v27 = *MEMORY[0x1E69E54E8];
  *(&v27 + *(v27 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v28 = MEMORY[0x1E69E5548] + 16;
  if (v32 < 0)
  {
    operator delete(v31);
  }

  v28 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v29);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v35);
}

void *_ZN2md15DebugOutputUtil14printContainerINSt3__16vectorIPN3gdc8RegistryENS2_9allocatorIS6_EEEEZNKS_13RegistryLogic18debugConsoleStringERKNS_13LayoutContextERKNS_17LogicDependenciesIJNS4_8TypeListIJNS_12SceneContextEEEENSF_IJEEEEE20ResolvedDependenciesERNS_15RegistryContextEE3__0EEvRNS2_19basic_ostringstreamIcNS2_11char_traitsIcEENS7_IcEEEERKT_T0_jj(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "[", 1);
  v7 = v6 + *(*v6 - 24);
  if ((v7[32] & 5) != 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v33 = -1;
  }

  else
  {
    (*(**(v7 + 5) + 32))(&v25);
  }

  if (a2 != a3)
  {
    for (i = a2 + 8; ; i += 8)
    {
      v9 = a1 + *(*a1 - 24);
      if ((v9[32] & 5) != 0)
      {
        memset(v23, 0, sizeof(v23));
        v24 = -1;
      }

      else
      {
        (*(**(v9 + 5) + 32))(v23);
      }

      MEMORY[0x1B8C61CD0](a1, *(*(i - 8) + 40));
      v10 = a1 + *(*a1 - 24);
      if ((v10[32] & 5) != 0)
      {
        v21 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
        v22 = -1;
      }

      else
      {
        (*(**(v10 + 5) + 32))(&v14);
      }

      if (i == a3)
      {
        break;
      }

      if (v22 > v24)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
        if (v22 - v33 >= 41)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "\n", 1);
          v13 = 2;
          strcpy(__p, "  ");
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, __p, 2);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }

          v31 = v20;
          v32 = v21;
          v33 = v22;
          v27 = v16;
          v28 = v17;
          v29 = v18;
          v30 = v19;
          v25 = v14;
          v26 = v15;
        }
      }
    }
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "]", 1);
}

void sub_1B2F83544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<double,std::vector<unsigned long long>>,std::__map_value_compare<double,std::__value_type<double,std::vector<unsigned long long>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::vector<unsigned long long>>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double &&>,std::tuple<>>(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 4);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v2;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<unsigned long long>::emplace_back<unsigned short &>(uint64_t a1, unsigned __int16 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}