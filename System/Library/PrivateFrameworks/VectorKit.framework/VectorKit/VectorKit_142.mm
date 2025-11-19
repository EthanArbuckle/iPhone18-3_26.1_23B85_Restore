void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char *,char *>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = a2 + 1;
  v8 = *a2;
  if (a2 + 1 == a3 && v8 == 36 || ((v8 - 46) <= 0x2E ? (v10 = ((1 << (v8 - 46)) & 0x600000000001) == 0) : (v10 = 1), !v10))
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(a1, a2, a3);
    v9 = v11;
    if (v11 == v3)
    {
      if (*v11 == 46)
      {
        operator new();
      }

      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, v3, a3);
    }

    if (v9 == v3 && v9 != a3 && v9 + 1 != a3 && *v9 == 92)
    {
      v12 = v9[1];
      if (v12 == 40)
      {
        v13 = v9 + 2;
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v14 = a1->__marked_count_;
        do
        {
          v15 = v13;
          v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v13, a3);
          v13 = v16;
        }

        while (v16 != v15);
        if (v15 == a3 || v16 + 1 == a3 || *v16 != 92 || v16[1] != 41)
        {
          std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
          goto LABEL_54;
        }

        v9 = v16 + 2;
        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v14);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v12);
        v18 = 2;
        if (!v17)
        {
          v18 = 0;
        }

        v9 += v18;
      }
    }

    if (v9 == v3)
    {
      return v3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  if (v9 == a3)
  {
    return v9;
  }

  v19 = a1->__marked_count_ + 1;
  v20 = *v9;
  if (v20 == 42)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
    return v9 + 1;
  }

  if (v9 + 1 == a3 || v20 != 92 || v9[1] != 123)
  {
    return v9;
  }

  LODWORD(__max) = 0;
  v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v9 + 2, a3, &__max);
  if (v21 == v9 + 2)
  {
    goto LABEL_55;
  }

  if (v21 == a3)
  {
    goto LABEL_54;
  }

  v22 = v21 + 1;
  v23 = *v21;
  if (v23 != 44)
  {
    if (v22 != a3 && v23 == 92 && *v22 == 125)
    {
      v3 = v21 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, __max, __max, end, marked_count + 1, v19, 1);
      return v3;
    }

    goto LABEL_54;
  }

  v34 = -1;
  v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v21 + 1, a3, &v34);
  if (v24 == a3 || (v25 = v24, v24 + 1 == a3) || *v24 != 92 || (v26 = v24[1], v27 = v26 == 125, v26 != 125))
  {
LABEL_54:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    goto LABEL_55;
  }

  v28 = v34;
  if (v34 == -1)
  {
    v29 = a1;
    v28 = -1;
    goto LABEL_52;
  }

  if (v34 >= __max)
  {
    v29 = a1;
LABEL_52:
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(v29, __max, v28, end, marked_count + 1, v19, 1);
    return &v25[2 * v27];
  }

LABEL_55:
  v31 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(v31, v32, v33);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

uint64_t std::__split_buffer<std::unique_ptr<md::StyleSettingsNode>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void md::StyleSettingsArrayNode::~StyleSettingsArrayNode(md::StyleSettingsArrayNode *this)
{
  *this = &unk_1F2A4C7F0;
  v1 = (this + 16);
  std::vector<std::unique_ptr<md::StyleSettingsNode>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4C7F0;
  v1 = (this + 16);
  std::vector<std::unique_ptr<md::StyleSettingsNode>>::__destroy_vector::operator()[abi:nn200100](&v1);
}

void std::vector<std::unique_ptr<md::StyleSettingsNode>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ggl::VenueWallShadow::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::VenueWallShadow::MeshPipelineSetup::MeshPipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::PipelineSetup(a1, a2, a3);
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    ggl::PipelineSetup::PipelineSetup(a1, a2, 0);
  }

  *a1 = &unk_1F2A4C850;
  return a1;
}

uint64_t md::ContourLinesTileResourceFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a3 + 8);
  gdc::ResourceKey::getInt32(v5, 0);
  gdc::ResourceKey::getInt32(v5, 1u);
  gdc::ResourceKey::getInt32(v5, 2u);
  [v4 size];
  v6 = GEOContourLinesTileKeyMake();

  return v6;
}

void md::ContourLinesTileResourceFetcher::~ContourLinesTileResourceFetcher(md::ContourLinesTileResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::AnimatableTexture::Variant>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::AnimatableTexture::Variant>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4CFE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::HillshadeFillMask::Fill>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::HillshadeFillMask::Fill>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4CF40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::PolygonAnimatableFill::Fill>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PolygonAnimatableFill::Fill>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4CDC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonAnimatableStroke::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonAnimatableStroke::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void std::__function::__func<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4,std::allocator<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4>,void ()(ggl::PolygonAnimatableStroke::MeshPipelineSetup *)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 56);
  v6[0] = *(v4 + 48);
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::setState(v3, v6);

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  else
  {
    ggl::PipelineSetup::setState(v3, v6);
  }
}

void sub_1B327DB18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ggl::ConstantDataTyped<ggl::PolygonAnimatableStroke::AnimatablePolygon>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PolygonAnimatableStroke::AnimatablePolygon>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4CC50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::PolygonCommonStroke::Polygon>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PolygonCommonStroke::Polygon>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4CAD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonStrokeMask::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonStrokeMask::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonStroke::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonStroke::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void std::__function::__func<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1,std::allocator<md::PolygonRenderResources::PolygonRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1>,void ()(ggl::PolygonStroke::MeshPipelineSetup *)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v4[1];
  v6[0] = *v4;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::setState(v3, v6);

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  else
  {
    ggl::PipelineSetup::setState(v3, v6);
  }
}

void std::__shared_ptr_emplace<ggl::HillshadeFillMask::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4CA58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonAnimatableFill::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4C9E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonFill::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5A448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonAnimatableStroke::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4C9B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonStrokeMask::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4C978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonStroke::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4C940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::PolygonRenderResources::renderStateForBlendingEqual(md::PolygonRenderResources *this, int a2, int a3)
{
  v3 = a3 ^ a2;
  v4 = *(this + 107);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = this + 856;
  do
  {
    v6 = v4[32];
    v7 = v6 >= v3;
    v8 = v6 < v3;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * v8];
  }

  while (v4);
  if (v5 == this + 856 || v3 < v5[32])
  {
LABEL_9:
    operator new();
  }

  return *(v5 + 5);
}

ggl::zone_mallocator *std::vector<ggl::PolygonStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStroke::MeshPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::PolygonStroke::MeshPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonStroke::MeshPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::PolygonStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStroke::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonStrokeMask::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStrokeMask::MeshPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::PolygonStrokeMask::MeshPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonStrokeMask::MeshPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::PolygonStrokeMask::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStrokeMask::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::HillshadeFillMask::CompressedMeshPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::PolygonAnimatableStroke::MeshPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonAnimatableStroke::MeshPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::MeshPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::PolygonFill::MeshPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonFill::MeshPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::PolygonFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::shrink(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    do
    {
      result = *v3;
      if (*v3)
      {
        result = (*(*result + 8))(result);
        v2 = v1[1];
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *v1;
  }

  v1[1] = v3;
  return result;
}

void md::PolygonRenderResources::worldTransformForPolygonGroup(md::PolygonRenderResources *this, VKPolygonGroup *a2, float a3)
{
  v10 = a2;
  if ([(VKPolygonalItemGroup *)v10 isFixedSize])
  {
    [(VKPolygonalItemGroup *)v10 centroid];
    v6 = v5;
    v8 = v7;
    memset(v25, 0, 28);
    v24 = 0u;
    v23 = 1065353216;
    v25[0] = 1065353216;
    v25[5] = 1065353216;
    *&v25[7] = v5;
    *&v25[8] = v7;
    v26 = 0x3F80000000000000;
    [(VKPolygonalItemGroup *)v10 tileZoom];
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    v18 = 0u;
    v22 = 1065353216;
    v17 = exp2f(v9 - a3);
    *&v19 = v17;
    *(&v20 + 1) = v17;
    gm::operator*<float,4,4,4>(v27, &v23, &v17);
    memset(v13, 0, sizeof(v13));
    v12 = 0u;
    v11 = 1065353216;
    *v13 = 1065353216;
    *&v13[20] = 1065353216;
    v14 = -v6;
    v15 = -v8;
    v16 = 0x3F80000000000000;
    gm::operator*<float,4,4,4>(this, v27, &v11);
  }

  else
  {
    *(this + 20) = 0u;
    *(this + 36) = 0u;
    *(this + 52) = 0;
    *(this + 4) = 0u;
    *this = 1065353216;
    *(this + 5) = 1065353216;
    *(this + 10) = 1065353216;
    *(this + 15) = 1065353216;
  }
}

id GEOGetVectorKitARSessionObserverLog(void)
{
  if (GEOGetVectorKitARSessionObserverLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitARSessionObserverLog(void)::onceToken, &__block_literal_global_43930);
  }

  v1 = GEOGetVectorKitARSessionObserverLog(void)::log;

  return v1;
}

void ___ZL35GEOGetVectorKitARSessionObserverLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "ARSessionObserver");
  v1 = GEOGetVectorKitARSessionObserverLog(void)::log;
  GEOGetVectorKitARSessionObserverLog(void)::log = v0;
}

void md::Logic<md::ResolvedSceneLogic,md::SceneContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

uint64_t md::Logic<md::ResolvedSceneLogic,md::SceneContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x99BED48DEFBBD82BLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7 = *(a2 + 8);
    md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>::buildRequiredTuple<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>(v13, v7);
    v8 = md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>::buildOptionalTuple<md::DrapingContext,md::FlyoverCompleteTileDataContext>(v7);
    v10[0] = v13[0];
    v10[1] = v13[1];
    v11 = v8;
    v12 = v9;
    return (*(*v6 + 160))(v6, a2, v10, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::SceneContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::SceneContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::SceneContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::SceneContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A4D1C8;
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    MEMORY[0x1B8C62190](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

void md::ResolvedSceneLogic::~ResolvedSceneLogic(md::ResolvedSceneLogic *this)
{
  md::ResolvedSceneLogic::~ResolvedSceneLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4D058;
  v2 = *(this + 23);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,gdc::DebugTreeNode>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,gdc::DebugTreeNode>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,gdc::DebugTreeNode>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,gdc::DebugTreeNode>>>::__deallocate_node(*(this + 19));
  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,gdc::DebugTreeNode>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,gdc::DebugTreeNode>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,gdc::DebugTreeNode>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,gdc::DebugTreeNode>>>::__deallocate_node(void **a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v4 = v1 + 25;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v4);
      v4 = v1 + 22;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v4);
      if (*(v1 + 175) < 0)
      {
        operator delete(v1[19]);
      }

      if (*(v1 + 151) < 0)
      {
        operator delete(v1[16]);
      }

      v3 = v1[4];
      if (v3 != v1[6])
      {
        free(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_1B327FBA4(_Unwind_Exception *a1)
{
  if (!v4)
  {
  }

  _Unwind_Resume(a1);
}

void md::TextLabelPart::populateDebugNode(md::TextLabelPart *this, gdc::DebugTreeNode *a2)
{
  v4 = *(this + 74);
  if (v4)
  {
    std::string::basic_string[abi:nn200100]<0>(&v40, "LabelText");
    v5 = gdc::DebugTreeNode::createChildNode(a2, &v40);
    if (v41 < 0)
    {
      operator delete(v40);
    }

    std::string::basic_string[abi:nn200100]<0>(&v36, "Text");
    v6 = v4[2];
    v7 = *v6;
    v8 = *(*v6 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = v7[1];
      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v7 = *v7;
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v8;
    if (v8)
    {
      memmove(&__dst, v7, v8);
    }

    __dst.__r_.__value_.__s.__data_[v8] = 0;
    gdc::DebugTreeValue::DebugTreeValue(&v40, &__dst);
    gdc::DebugTreeNode::addProperty(v5, &v36, &v40);
    if (v43 < 0)
    {
      operator delete(v42);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (v37 < 0)
    {
      operator delete(v36);
    }

    std::string::basic_string[abi:nn200100]<0>(&__dst, "Font Family Name");
    v9 = *(v4[2] + 16);
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      v35.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&v35.__r_.__value_.__l.__data_ = v10;
    }

    gdc::DebugTreeValue::DebugTreeValue(&v36, &v35);
    gdc::DebugTreeNode::addProperty(v5, &__dst, &v36);
    if (v39 < 0)
    {
      operator delete(v38);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&v35, "Font Size");
    if (v4[9] == v4[8])
    {
      v11 = (v4[2] + 16);
      v12 = 28;
    }

    else
    {
      v11 = v4 + 4;
      v12 = 32;
    }

    gdc::DebugTreeValue::DebugTreeValue(&__dst, *(*v11 + v12));
    gdc::DebugTreeNode::addProperty(v5, &v35, &__dst);
    if (v34 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v40, "TextLabelPart");
  v13 = gdc::DebugTreeNode::createChildNode(a2, &v40);
  if (v41 < 0)
  {
    operator delete(v40);
  }

  std::string::basic_string[abi:nn200100]<0>(&v40, "Font Size");
  gdc::DebugTreeValue::DebugTreeValue(v29, *(this + 187));
  gdc::DebugTreeNode::addProperty(v13, &v40, v29);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  std::string::basic_string[abi:nn200100]<0>(&v40, "Label Text Font Size");
  gdc::DebugTreeValue::DebugTreeValue(v26, *(this + 189));
  gdc::DebugTreeNode::addProperty(v13, &v40, v26);
  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  std::string::basic_string[abi:nn200100]<0>(&v40, "Halo Size");
  gdc::DebugTreeValue::DebugTreeValue(v23, *(this + 191));
  gdc::DebugTreeNode::addProperty(v13, &v40, v23);
  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  std::string::basic_string[abi:nn200100]<0>(&v40, "Stroke Width");
  gdc::DebugTreeValue::DebugTreeValue(v20, *(this + 195));
  gdc::DebugTreeNode::addProperty(v13, &v40, v20);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  std::string::basic_string[abi:nn200100]<0>(&v40, "Extrusion Depth");
  gdc::DebugTreeValue::DebugTreeValue(v17, *(this + 194));
  gdc::DebugTreeNode::addProperty(v13, &v40, v17);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  std::string::basic_string[abi:nn200100]<0>(&v40, "Resolved Extrusion Depth");
  gdc::DebugTreeValue::DebugTreeValue(v14, *(this + 231));
  gdc::DebugTreeNode::addProperty(v13, &v40, v14);
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }
}

void sub_1B3280D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::TextLabelPart::debugString@<X0>(md::TextLabelPart *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v89);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, "Text ", 5);
  v6 = *(this + 72);
  std::ostringstream::basic_ostringstream[abi:nn200100](&v103);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "", 1);
  v7 = **(v6 + 16);
  v8 = *(v7 + 23);
  if (v8 >= 0)
  {
    v9 = **(v6 + 16);
  }

  else
  {
    v9 = *v7;
  }

  if (v8 >= 0)
  {
    v10 = *(v7 + 23);
  }

  else
  {
    v10 = *(v7 + 8);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, v9, v10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, " (", 2);
  v11 = *(*(v6 + 16) + 16);
  v12 = *(v11 + 23);
  if (v12 >= 0)
  {
    v13 = *(*(v6 + 16) + 16);
  }

  else
  {
    v13 = *v11;
  }

  if (v12 >= 0)
  {
    v14 = *(v11 + 23);
  }

  else
  {
    v14 = *(v11 + 8);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, v13, v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "/", 1);
  v15 = v103;
  *(&v103 + *(v103 - 3) + 8) = *(&v103 + *(v103 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v105.__locale_ + *(v15 - 3)) = 2;
  std::ostream::operator<<();
  v16 = *(*(v6 + 16) + 16);
  if (*(v16 + 24) != 0.0)
  {
    *(&v105.__locale_ + *(v103 - 3)) = 0;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "/", 1);
    std::ostream::operator<<();
    v16 = *(*(v6 + 16) + 16);
  }

  if (*(v16 + 37) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "/up", 3);
    v16 = *(*(v6 + 16) + 16);
  }

  if (*(v16 + 38) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "/down", 5);
    v16 = *(*(v6 + 16) + 16);
  }

  if (*(v16 + 39) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "/title", 6);
    v16 = *(*(v6 + 16) + 16);
  }

  if (*(v16 + 36) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "/ri", 3);
    v16 = *(*(v6 + 16) + 16);
  }

  if (*(v16 + 40) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "/sc", 3);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, ")", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "validZooms=", 11);
  *(&v103 + *(v103 - 3) + 8) = *(&v103 + *(v103 - 3) + 8) & 0xFFFFFFB5 | 8;
  v17 = MEMORY[0x1B8C61C90](&v103, *(v6 + 8));
  *(v17 + *(*v17 - 24) + 8) = *(v17 + *(*v17 - 24) + 8) & 0xFFFFFFB5 | 2;
  if (!a2)
  {
    goto LABEL_62;
  }

  v18 = **(v6 + 16);
  v19 = *(v18 + 23);
  v86 = a3;
  if ((v19 & 0x8000000000000000) == 0)
  {
    if (!*(v18 + 23))
    {
      goto LABEL_36;
    }

LABEL_30:
    v20 = 0;
    do
    {
      v21 = **(v6 + 16);
      if (*(v21 + 23) < 0)
      {
        v21 = *v21;
      }

      v22 = *(v21 + v20);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "\n  U+0x", 7);
      v23 = v103;
      v24 = v103;
      *(&v104 + *(v103 - 3)) |= 0x4000u;
      v25 = (&v103 + *(v24 - 3));
      if (v25[1].__fmtflags_ == -1)
      {
        std::ios_base::getloc(v25);
        v26 = std::locale::use_facet(&v100, MEMORY[0x1E69E5318]);
        (v26->__vftable[2].~facet_0)(v26, 32);
        std::locale::~locale(&v100);
        v23 = v103;
      }

      v25[1].__fmtflags_ = 48;
      *(v106 + *(v23 - 3)) = 4;
      *(&v104 + *(v23 - 3)) = *(&v104 + *(v23 - 3)) & 0xFFFFFFB5 | 8;
      v27 = MEMORY[0x1B8C61CD0](&v103, v22);
      v28 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v27, " : ", 3);
      *(v28 + *(*v28 - 24) + 8) &= ~8u;
      LOBYTE(v100.__locale_) = v22;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, &v100, 1);
      ++v20;
    }

    while (v19 != v20);
    goto LABEL_36;
  }

  v19 = *(v18 + 8);
  if (v19)
  {
    goto LABEL_30;
  }

LABEL_36:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "\n", 1);
  v30 = *(v6 + 32);
  v29 = *(v6 + 40);
  if (v30 != v29)
  {
    while (1)
    {
      v31 = *v30;
      if (*v30)
      {
        if (*(v31 + 62) == 1)
        {
          break;
        }
      }

LABEL_60:
      v30 += 5;
      if (v30 == v29)
      {
        goto LABEL_61;
      }
    }

    v32 = *(v31 + 56);
    v33 = CGFontCopyFullName(*(v31 + 16));
    v34 = CGFontCopyGlyphNameForGlyph(*(*v30 + 16), v32);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "\n  ", 3);
    std::string::basic_string[abi:nn200100]<0>(&v100, -[__CFString UTF8String](v33, "UTF8String"));
    if ((v102 & 0x80u) == 0)
    {
      locale = &v100;
    }

    else
    {
      locale = v100.__locale_;
    }

    if ((v102 & 0x80u) == 0)
    {
      v36 = v102;
    }

    else
    {
      v36 = v101;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, locale, v36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, " - ", 3);
    std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v34, "UTF8String"));
    if ((v99 & 0x80u) == 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    if ((v99 & 0x80u) == 0)
    {
      v38 = v99;
    }

    else
    {
      v38 = __p[1];
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, v37, v38);
    if (v99 < 0)
    {
      operator delete(__p[0]);
    }

    if (v102 < 0)
    {
      operator delete(v100.__locale_);
      if (!v33)
      {
        goto LABEL_58;
      }
    }

    else if (!v33)
    {
LABEL_58:
      if (v34)
      {
        CFRelease(v34);
      }

      goto LABEL_60;
    }

    CFRelease(v33);
    goto LABEL_58;
  }

LABEL_61:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v103, "\n", 1);
  a3 = v86;
LABEL_62:
  if ((v111 & 0x10) != 0)
  {
    v40 = v110;
    if (v110 < v107)
    {
      v110 = v107;
      v40 = v107;
    }

    v41 = v106[3];
  }

  else
  {
    if ((v111 & 8) == 0)
    {
      v39 = 0;
      v88 = 0;
      goto LABEL_75;
    }

    v41 = v106[0];
    v40 = v106[2];
  }

  v39 = v40 - v41;
  if (v40 - v41 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_114;
  }

  if (v39 >= 0x17)
  {
    operator new();
  }

  v88 = v40 - v41;
  if (v39)
  {
    memmove(__dst, v41, v39);
  }

LABEL_75:
  *(__dst + v39) = 0;
  v103 = *MEMORY[0x1E69E54E8];
  v42 = v103;
  v43 = *(MEMORY[0x1E69E54E8] + 24);
  *(&v103 + *(v103 - 3)) = v43;
  v104 = MEMORY[0x1E69E5548] + 16;
  if (v109 < 0)
  {
    operator delete(v108);
  }

  v104 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v105);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&v112);
  if ((v88 & 0x80u) == 0)
  {
    v44 = __dst;
  }

  else
  {
    v44 = __dst[0];
  }

  if ((v88 & 0x80u) == 0)
  {
    v45 = v88;
  }

  else
  {
    v45 = __dst[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, v44, v45);
  if (v88 < 0)
  {
    operator delete(__dst[0]);
  }

  v46 = v89;
  *(&v89 + *(v89 - 3) + 8) = *(&v89 + *(v89 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v91[0].__locale_ + *(v46 - 24)) = 1;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, "\n   font: sz=", 13);
  v47 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v47, "(resolved=", 10);
  v48 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, ")", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, " tracking=", 10);
  std::ostream::operator<<();
  *(&v91[0].__locale_ + *(v89 - 3)) = 2;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, " opacity=", 9);
  v49 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v49, "(resolved=", 10);
  v50 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, ")\n", 2);
  v51 = *(this + 826);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, "   text: clr=", 13);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, "(", 1);
  v52 = MEMORY[0x1B8C61C90](&v89, v51);
  v53 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, ",", 1);
  v54 = MEMORY[0x1B8C61C90](v53, BYTE1(v51));
  v55 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v54, ",", 1);
  v56 = MEMORY[0x1B8C61C90](v55, BYTE2(v51));
  v57 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v56, ",", 1);
  v58 = MEMORY[0x1B8C61C90](v57, HIBYTE(v51));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v58, ")", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, " src=", 5);
  v59 = *(this + 944);
  if (v59 > 6)
  {
    v60 = "";
  }

  else
  {
    v60 = off_1E7B3D228[v59];
  }

  std::string::basic_string[abi:nn200100]<0>(&v103, v60);
  if (SHIBYTE(v105.__locale_) >= 0)
  {
    v61 = &v103;
  }

  else
  {
    v61 = v103;
  }

  if (SHIBYTE(v105.__locale_) >= 0)
  {
    locale_high = HIBYTE(v105.__locale_);
  }

  else
  {
    locale_high = v104;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, v61, locale_high);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, "\n", 1);
  if (SHIBYTE(v105.__locale_) < 0)
  {
    operator delete(v103);
  }

  v63 = *(this + 830);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, "   halo: sz=", 12);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, " clr=", 5);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, "(", 1);
  v64 = MEMORY[0x1B8C61C90](&v89, v63);
  v65 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v64, ",", 1);
  v66 = MEMORY[0x1B8C61C90](v65, BYTE1(v63));
  v67 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v66, ",", 1);
  v68 = MEMORY[0x1B8C61C90](v67, BYTE2(v63));
  v69 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v68, ",", 1);
  v70 = MEMORY[0x1B8C61C90](v69, HIBYTE(v63));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v70, ")", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, "\n", 1);
  if (*(this + 199) >= 0.0)
  {
    v71 = *(this + 842);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, "   shadow: sz=", 14);
    std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, " offset=", 8);
    v72 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v72, ",", 1);
    std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, " clr=", 5);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, "(", 1);
    v73 = MEMORY[0x1B8C61C90](&v89, v71);
    v74 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v73, ",", 1);
    v75 = MEMORY[0x1B8C61C90](v74, BYTE1(v71));
    v76 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v75, ",", 1);
    v77 = MEMORY[0x1B8C61C90](v76, BYTE2(v71));
    v78 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v77, ",", 1);
    v79 = MEMORY[0x1B8C61C90](v78, HIBYTE(v71));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v79, ")", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, "\n", 1);
  }

  v80 = v89;
  *(&v89 + *(v89 - 3) + 8) = *(&v89 + *(v89 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v91[0].__locale_ + *(v80 - 24)) = 0;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v89, "   pad=", 7);
  v81 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v81, " ovlpPad=", 9);
  std::ostream::operator<<();
  if ((v96 & 0x10) != 0)
  {
    v83 = v95;
    if (v95 < v92)
    {
      v95 = v92;
      v83 = v92;
    }

    v84 = v91[4].__locale_;
  }

  else
  {
    if ((v96 & 8) == 0)
    {
      v82 = 0;
      a3[23] = 0;
      goto LABEL_111;
    }

    v84 = v91[1].__locale_;
    v83 = v91[3].__locale_;
  }

  v82 = v83 - v84;
  if ((v83 - v84) > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_114:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v82 >= 0x17)
  {
    operator new();
  }

  a3[23] = v82;
  if (v82)
  {
    memmove(a3, v84, v82);
  }

LABEL_111:
  a3[v82] = 0;
  v89 = v42;
  *(&v89 + *(v42 - 3)) = v43;
  v90 = MEMORY[0x1E69E5548] + 16;
  if (v94 < 0)
  {
    operator delete(v93);
  }

  v90 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v91);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v97);
}

void sub_1B3281C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, std::locale a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::locale a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a56 = *MEMORY[0x1E69E54E8];
  *(&a56 + *(a56 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a57 = MEMORY[0x1E69E5548] + 16;
  if (a70 < 0)
  {
    operator delete(__p);
  }

  a57 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a58);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a72);
  a14 = *MEMORY[0x1E69E54E8];
  *(&a14 + *(a14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a15 = MEMORY[0x1E69E5548] + 16;
  if (a28 < 0)
  {
    operator delete(a23);
  }

  a15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a16);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a31);
  _Unwind_Resume(a1);
}

BOOL md::TextLabelPart::isVisuallySimilar(md::TextLabelPart *this, const md::LabelPart *a2)
{
  if (*(this + 706) != *(a2 + 706))
  {
    return 0;
  }

  v3 = *(this + 157);
  if (v3 > 0.0 && (vabds_f32(v3, *(a2 + 157)) / v3) > 0.1)
  {
    return 0;
  }

  v4 = **(*(this + 72) + 16);
  v5 = **(*(a2 + 72) + 16);
  v6 = *(v4 + 23);
  if (v6 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = *(v5 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v5 + 8);
  }

  if (v7 != v8)
  {
    return 0;
  }

  if (v6 >= 0)
  {
    v10 = **(*(this + 72) + 16);
  }

  else
  {
    v10 = *v4;
  }

  if (v9 >= 0)
  {
    v11 = **(*(a2 + 72) + 16);
  }

  else
  {
    v11 = *v5;
  }

  return memcmp(v10, v11, v7) == 0;
}

void geo::small_vector_base<md::TextLabelPart::prepareRenderDescriptors(void)::DescriptorInfo>::grow(uint64_t a1, unint64_t a2)
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

  v10 = malloc_type_malloc(24 * v9, 0x1000040265A8698uLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      v14 += 24;
      v12 += 3;
    }

    while (v12 != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = &v11[v4 - v3];
  *(a1 + 24) = v9;
}

uint64_t std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
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

double md::TextLabelPart::generateModelMatrix(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double result, float a6)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = 1.1;
    if (!a3)
    {
      v6 = 1.0;
    }

    v7 = v6 * (*&result * a6);
    v8 = *(&a4 + 1) * a6;
    if (a2)
    {
      v8 = *(&a4 + 1);
      v9 = *&a4;
    }

    else
    {
      v9 = *&a4 * a6;
    }

    if (!a2)
    {
      v6 = v7;
    }

    v10 = fabsf(v6 + -1.0);
    if (LODWORD(v9) | LODWORD(v8) || v10 > 0.000001)
    {
      v57 = 0u;
      memset(v55 + 8, 0, 24);
      *&v55[0] = 0x3FF0000000000000;
      v56 = 0x3FF0000000000000;
      v58 = 0;
      v59 = 0x3FF0000000000000;
      if (v10 > 0.000001)
      {
        v18 = 0;
        v19 = v6;
        do
        {
          *(v55 + v18) = *(v55 + v18) * v19;
          v18 += 8;
        }

        while (v18 != 72);
      }

      v20 = 0;
      v21 = &v47;
      v22 = v55;
      do
      {
        v23 = 0;
        v24 = v21;
        do
        {
          *v24 = *(v22 + v23);
          v24 += 2;
          v23 += 24;
        }

        while (v23 != 72);
        ++v20;
        v21 = (v21 + 8);
        v22 = (v22 + 8);
      }

      while (v20 != 3);
      *(&v48 + 1) = 0;
      *(&v50 + 1) = 0;
      *(&v52 + 1) = 0;
      *&v53 = v9;
      *(&v53 + 1) = v8;
      v54 = xmmword_1B33B0740;
      if (a2)
      {
        for (i = 0; i != 4; ++i)
        {
          v26 = 0;
          v27 = &v47;
          do
          {
            v28 = 0;
            v29 = 0.0;
            v30 = a2;
            do
            {
              v31 = *v30;
              v30 += 4;
              v29 = v29 + *(v27 + v28) * v31;
              v28 += 8;
            }

            while (v28 != 32);
            *(&v39 + 4 * v26++ + i) = v29;
            v27 += 2;
          }

          while (v26 != 4);
          a2 += 8;
        }
      }

      else
      {
        v43 = v51;
        v44 = v52;
        v45 = v53;
        v46 = v54;
        v39 = v47;
        v40 = v48;
        v41 = v49;
        v42 = v50;
      }

      v32 = v44;
      *(a1 + 64) = v43;
      *(a1 + 80) = v32;
      v33 = v46;
      *(a1 + 96) = v45;
      *(a1 + 112) = v33;
      v34 = v40;
      *a1 = v39;
      *(a1 + 16) = v34;
      result = *&v41;
      v35 = v42;
      *(a1 + 32) = v41;
      *(a1 + 48) = v35;
    }

    else
    {
      if (a2)
      {
        v11 = *a2;
        v12 = *(a2 + 24);
        v47 = *(a2 + 8);
        v48 = v12;
        v13 = *(a2 + 40);
        v14 = *(a2 + 64);
        v39 = *(a2 + 48);
        v40 = v14;
        v15 = *(a2 + 80);
        v16 = *(a2 + 104);
        v55[0] = *(a2 + 88);
        v55[1] = v16;
        v17 = *(a2 + 120);
      }

      else
      {
        v47 = 0u;
        v48 = 0u;
        v39 = 0u;
        v40 = 0u;
        memset(v55, 0, sizeof(v55));
        v13 = 1.0;
        v15 = 1.0;
        v17 = 1.0;
        v11 = 1.0;
      }

      *a1 = v11;
      v36 = v48;
      *(a1 + 8) = v47;
      *(a1 + 24) = v36;
      *(a1 + 40) = v13;
      v37 = v40;
      *(a1 + 48) = v39;
      *(a1 + 64) = v37;
      *(a1 + 80) = v15;
      result = *v55;
      v38 = v55[1];
      *(a1 + 88) = v55[0];
      *(a1 + 104) = v38;
      *(a1 + 120) = v17;
    }
  }

  return result;
}

void md::FlyoverLayerDataSource::createLayerData(uint64_t a1@<X0>, int32x2_t **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v121 = *MEMORY[0x1E69E9840];
  md::FlyoverCommon::decodeFlyoverKey(v116, a2);
  v6 = *a3;
  v7 = a3[1];
  v88 = a3;
  v8 = v7;
  if (*a3 != v7)
  {
    v8 = *a3;
    while (*v8 != 48)
    {
      v8 += 48;
      if (v8 == v7)
      {
        v8 = a3[1];
        break;
      }
    }
  }

  v9 = a3[1];
  if (v6 != v7)
  {
    v9 = *a3;
    while (*v9 != 50)
    {
      v9 += 48;
      if (v9 == v7)
      {
        v9 = a3[1];
        break;
      }
    }
  }

  v10 = a3[1];
  if (v6 != v7)
  {
    v10 = v6;
    while (*v10 != 20)
    {
      v10 += 48;
      if (v10 == v7)
      {
        v10 = v7;
        break;
      }
    }
  }

  v11 = v7;
  if (v6 != v7)
  {
    v11 = v6;
    while (*v11 != 4)
    {
      v11 += 24;
      if (v11 == v7)
      {
        v11 = v7;
        break;
      }
    }
  }

  v12 = v7;
  if (v6 != v7)
  {
    v12 = v6;
    while (*v12 != 51)
    {
      v12 += 48;
      if (v12 == v7)
      {
        v12 = v7;
        break;
      }
    }
  }

  if (v117 == 3)
  {
    if (v11 == v7 || v9 == v7)
    {
      goto LABEL_116;
    }
  }

  else
  {
    if (v117 != 2)
    {
      if (v117 != 1 || v8 != v7)
      {
        goto LABEL_38;
      }

LABEL_116:
      *a4 = 0;
      a4[1] = 0;
      return;
    }

    if (v11 == v7)
    {
      goto LABEL_116;
    }
  }

LABEL_38:
  gdc::Tiled::tileFromLayerDataKey(&v111, a2[2]);
  memset(v110, 0, sizeof(v110));
  gdc::LayerDataSource::populateLoadMetadataListFromMap(v6, v7, v110);
  v107 = 0;
  v108 = 0;
  v109 = 0;
  memset(v106, 0, sizeof(v106));
  __p = 0;
  v105 = 0uLL;
  v102 = 0u;
  *v101 = 0u;
  v103 = 1065353216;
  v14 = v88[1];
  v91 = v9;
  if (v8 != v14)
  {
    v15 = *(v8 + 24);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = v15[14];
        v20 = v15[15];
        if (v19)
        {
          v21 = v19 - 8;
        }

        else
        {
          v21 = 0;
        }

        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
          v18 = v108;
          v17 = v109;
        }

        if (v18 >= v17)
        {
          v22 = v18 - v16;
          v23 = (v18 - v16) >> 4;
          v24 = v23 + 1;
          if ((v23 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if ((v17 - v16) >> 3 > v24)
          {
            v24 = (v17 - v16) >> 3;
          }

          if (v17 - v16 >= 0x7FFFFFFFFFFFFFF0)
          {
            v25 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v24;
          }

          if (v25)
          {
            if (!(v25 >> 60))
            {
              operator new();
            }

LABEL_169:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v26 = v23;
          v27 = (16 * v23);
          v17 = 0;
          *v27 = v21;
          v27[1] = v20;
          v18 = (16 * v23 + 16);
          v28 = &v27[-2 * v26];
          memcpy(v28, v16, v22);
          v107 = v28;
          v108 = v18;
          v109 = 0;
          if (v16)
          {
            operator delete(v16);
          }

          v16 = v28;
        }

        else
        {
          *v18 = v21;
          *(v18 + 1) = v20;
          v18 += 16;
        }

        v108 = v18;
        v15 = *v15;
      }

      while (v15);
      v14 = v88[1];
      v9 = v91;
    }

    if (v10 != v14)
    {
      v29 = *(v10 + 24);
      if (v29)
      {
        do
        {
          v30 = v29[15];
          *&v118 = v29[14];
          *(&v118 + 1) = v30;
          if (v30)
          {
            atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
          }

          std::vector<std::shared_ptr<ggl::CommonMesh::Pos4UVMesh>>::push_back[abi:nn200100](v106, &v118);
          if (*(&v118 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v118 + 1));
          }

          v29 = *v29;
        }

        while (v29);
        v14 = v88[1];
      }
    }
  }

  if (v11 == v14)
  {
    goto LABEL_165;
  }

  v31 = v11 + 12;
  v93 = a1;
  v94 = a1 + 688;
  do
  {
    v31 = *v31;
    if (!v31)
    {
      v60 = v88[1];
      if (v12 == v60)
      {
        goto LABEL_158;
      }

      v61 = *(v12 + 24);
      if (!v61)
      {
        goto LABEL_158;
      }

      while (1)
      {
        md::TrafficDynamicTileResource::QuadTileFromResourceKey(&v118, v61[3]);
        v62 = *(v61 + 7);
        v96 = *(&v62 + 1);
        if (*(&v62 + 1))
        {
          atomic_fetch_add_explicit((*(&v62 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v63 = BYTE1(v118);
        v64 = v118;
        v65 = v120;
        v98 = *(&v118 + 4);
        if (v120 == 1)
        {
          v65 = 0;
          v66 = (((v118 - 0x61C8864680B583EBLL) << 6) - 0x61C8864680B583EBLL + ((v118 - 0x61C8864680B583EBLL) >> 2) + BYTE1(v118)) ^ (v118 - 0x61C8864680B583EBLL);
          v67 = (SDWORD1(v118) - 0x61C8864680B583EBLL + (v66 << 6) + (v66 >> 2)) ^ v66;
          v68 = (SDWORD2(v118) - 0x61C8864680B583EBLL + (v67 << 6) + (v67 >> 2)) ^ v67;
        }

        else
        {
          v68 = v119;
        }

        v69 = v101[1];
        v95 = v61;
        if (!v101[1])
        {
          goto LABEL_153;
        }

        v90 = v65;
        v70 = vcnt_s8(v101[1]);
        v70.i16[0] = vaddlv_u8(v70);
        v71 = v70.u32[0];
        if (v70.u32[0] > 1uLL)
        {
          v72 = v68;
          if (v68 >= v101[1])
          {
            v72 = v68 % v101[1];
          }
        }

        else
        {
          v72 = (v101[1] - 1) & v68;
        }

        v73 = *(v101[0] + v72);
        if (!v73 || (v74 = *v73) == 0)
        {
LABEL_153:
          operator new();
        }

        v75 = v101[1] - 1;
        v76 = (BYTE1(v118) - 0x61C8864680B583EBLL + ((v118 - 0x61C8864680B583EBLL) << 6) + ((v118 - 0x61C8864680B583EBLL) >> 2)) ^ (v118 - 0x61C8864680B583EBLL);
        v77 = v68;
        v78 = (SDWORD1(v118) - 0x61C8864680B583EBLL + (v76 << 6) + (v76 >> 2)) ^ v76;
        v79 = (SDWORD2(v118) - 0x61C8864680B583EBLL + (v78 << 6) + (v78 >> 2)) ^ v78;
        while (1)
        {
          v80 = v74[1];
          if (v80 == v68)
          {
            break;
          }

          if (v71 > 1)
          {
            if (v80 >= v69)
            {
              v80 %= v69;
            }
          }

          else
          {
            v80 &= v75;
          }

          if (v80 != v72)
          {
            goto LABEL_153;
          }

LABEL_146:
          v74 = *v74;
          if (!v74)
          {
            goto LABEL_153;
          }
        }

        if (*(v74 + 40) == 1)
        {
          v86 = v79;
          v87 = v75;
          geo::QuadTile::computeHash(v74 + 16);
          v79 = v86;
          v75 = v87;
          *(v74 + 40) = 0;
          v81 = v74[4];
          v82 = v90;
          v83 = (v90 & 1) == 0;
          if (v90)
          {
            v82 = 0;
          }

          v90 = v82;
          if (!v83)
          {
            v77 = v86;
          }
        }

        else
        {
          v81 = v74[4];
        }

        if (v81 != v77 || *(v74 + 16) != v64 || *(v74 + 17) != v63 || *(v74 + 20) != v98)
        {
          goto LABEL_146;
        }

        v9 = v91;
        a1 = v93;
        if (v96)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v96);
        }

        v61 = *v61;
        if (!*v95)
        {
          v60 = v88[1];
LABEL_158:
          if (v9 != v60)
          {
            for (i = *(v9 + 24); i; i = *i)
            {
              v85 = i[15];
              *&v118 = i[14];
              *(&v118 + 1) = v85;
              if (v85)
              {
                atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
              }

              std::vector<std::shared_ptr<ggl::CommonMesh::Pos4UVMesh>>::push_back[abi:nn200100](v106, &v118);
              if (*(&v118 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v118 + 1));
              }
            }
          }

LABEL_165:
          std::atomic_load[abi:nn200100]<md::RegistryManager>(&v100, (a1 + 616));
          md::RegistryManager::vendRegistry(&v99);
        }
      }
    }

    v32 = *(v31 + 7);
    v33 = *(v31 + 15);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = v32;
    v35 = *(v32 + 160) != 1 || v112 == 0;
    v97 = v32;
    if (!v35)
    {
      os_unfair_lock_lock((a1 + 632));
      if (v94 == geo::LRUPolicy<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>,geo::QuadTileHash>::get(v94, (a1 + 648), &v111))
      {
        v36 = v112;
        if (v112)
        {
          v37 = 0;
          v36 = v112 - 1;
          v38 = vshr_n_s32(v113, 1uLL);
          v39 = 1;
        }

        else
        {
          v38 = v113;
          v37 = v114;
          v39 = v115;
        }

        BYTE1(v118) = v36;
        *(&v118 + 4) = v38;
        LOBYTE(v118) = v111;
        v119 = v37;
        LOBYTE(v120) = v39;
        geo::Cache<geo::QuadTile,geo::QuadTile,geo::QuadTileHash,geo::LRUPolicy>::insert(a1 + 640, &v111);
      }

      os_unfair_lock_unlock((a1 + 632));
    }

    v40 = *(v34 + 144);
    if (v40)
    {
      md::TrafficDynamicTileResource::QuadTileFromResourceKey(&v118, *(v31 + 3));
      v41 = BYTE1(v118);
      v42 = *(&v118 + 4);
      v43 = v118;
      v44 = v119;
      v45 = v120;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v46 = v105;
      if (v105 >= *(&v105 + 1))
      {
        v48 = __p;
        v49 = 0xAAAAAAAAAAAAAAABLL * ((v105 - __p) >> 4);
        v50 = v49 + 1;
        if (v49 + 1 > 0x555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (0x5555555555555556 * ((*(&v105 + 1) - __p) >> 4) > v50)
        {
          v50 = 0x5555555555555556 * ((*(&v105 + 1) - __p) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(&v105 + 1) - __p) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v51 = 0x555555555555555;
        }

        else
        {
          v51 = v50;
        }

        if (v51)
        {
          if (v51 <= 0x555555555555555)
          {
            operator new();
          }

          goto LABEL_169;
        }

        v52 = v105 - __p;
        v53 = 16 * ((v105 - __p) >> 4);
        *(v53 + 1) = v41;
        *(v53 + 4) = v42;
        *v53 = v43;
        *(v53 + 16) = v44;
        *(v53 + 24) = v45;
        *(v53 + 32) = v97;
        if (v48 == v46)
        {
          v55 = v52;
        }

        else
        {
          v54 = 0;
          v55 = v52;
          v56 = -16 * (v52 >> 4) + 48 * v49;
          do
          {
            v57 = &v48[v54];
            v58 = v56 + v54 * 8;
            *(v58 + 24) = 0;
            *(v58 + 4) = *(&v48[v54] + 4);
            *v58 = v48[v54];
            *(v58 + 16) = v48[v54 + 2];
            *(v58 + 24) = v48[v54 + 3];
            *(v58 + 32) = *&v48[v54 + 4];
            v57[4] = 0;
            v57[5] = 0;
            v54 += 6;
          }

          while (&v48[v54] != v46);
          do
          {
            v59 = v48[5];
            if (v59)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v59);
            }

            v48 += 6;
          }

          while (v48 != v46);
          v48 = __p;
        }

        v47 = v53 + 48;
        __p = (v53 - v55);
        v105 = (v53 + 48);
        if (v48)
        {
          operator delete(v48);
        }

        a1 = v93;
        v9 = v91;
      }

      else
      {
        *(v105 + 1) = v41;
        *(v46 + 4) = v42;
        *v46 = v43;
        *(v46 + 16) = v44;
        *(v46 + 24) = v45;
        v47 = v46 + 48;
        *(v46 + 32) = v97;
      }

      *&v105 = v47;
      if (v33)
      {
LABEL_113:
        std::__shared_weak_count::__release_shared[abi:nn200100](v33);
      }
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      if (v33)
      {
        goto LABEL_113;
      }
    }
  }

  while (v40);
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::MuninRoadNetworkData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::MuninRoadNetworkData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::MuninRoadNetworkData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::MuninRoadNetworkData>>>>::~__hash_table(v101);
  *&v118 = &__p;
  std::vector<std::pair<geo::QuadTile,std::shared_ptr<md::RasterTileResource>>>::__destroy_vector::operator()[abi:nn200100](&v118);
  *&v118 = v106;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v118);
  *&v118 = &v107;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v118);
  if (v110[0])
  {
    operator delete(v110[0]);
  }
}

void sub_1B32837AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, md::MapTileData *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, gdc::Registry *a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v70);
  }

  ggl::Loader::~Loader(&a69);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v70);
  }

  v73 = *(v71 - 240);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v73);
  }

  *(v71 - 224) = a19;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100]((v71 - 224));
  v74 = v69[34].__vftable;
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v74);
  }

  *(v71 - 224) = a12;
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100]((v71 - 224));
  *(v71 - 224) = v69 + 752;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100]((v71 - 224));
  md::MapTileData::~MapTileData(a17);

  std::__shared_weak_count::~__shared_weak_count(v69);
  operator delete(v75);

  std::unique_ptr<gdc::Registry>::~unique_ptr[abi:nn200100](&a36);
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a38);
  }

  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::MuninRoadNetworkData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::MuninRoadNetworkData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::MuninRoadNetworkData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::MuninRoadNetworkData>>>>::~__hash_table(&a39);
  a24 = &a45;
  std::vector<std::pair<geo::QuadTile,std::shared_ptr<md::RasterTileResource>>>::__destroy_vector::operator()[abi:nn200100](&a24);
  a24 = &a48;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a24);
  a24 = &a51;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a24);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::pair<geo::QuadTile,std::shared_ptr<md::RasterTileResource>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 48;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<md::FlyoverTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4D318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::FlyoverLayerDataSource::constructRequests(uint64_t a1, char **a2, char **a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      gdc::Tiled::tileFromLayerDataKey(v38, *(*v4 + 2));
      if ((*(*v4 + 12) & 0x100000000) != 0)
      {
        v6 = *(*v4 + 12);
      }

      else
      {
        v6 = 2147483646;
      }

      md::FlyoverCommon::decodeFlyoverKey(&v32, *v4);
      v7 = v35;
      if (v35 == 2)
      {
        goto LABEL_25;
      }

      (*(**(a1 + 24) + 16))(v22);
      if (BYTE4(v25) == 1)
      {
        v8 = *v4;
        v9 = **v4;
        *v46 = vrev64_s32(v34);
        *&v46[8] = v33;
        v47 = v32;
        v10 = v36;
        if ((v36 & 0x100000000) == 0)
        {
          v10 = 0;
        }

        v48 = v37;
        v49 = v10;
        gdc::ResourceKey::ResourceKey(v29, v9, 48, v46, 6, v8[14], v6);
        gdc::LayerDataRequest::request(*v4, v29, 0);
        if (v30 != v31)
        {
          free(v30);
        }
      }

      if (*(a1 + 713) == 1)
      {
        (*(**(a1 + 24) + 16))(v46);
        v11 = (*(**(a1 + 24) + 24))(*(a1 + 24), 20);
        if (v50 == 1 && (v12 & 1) != 0 && v11 <= v46[1] && HIDWORD(v11) >= v46[1])
        {
          v14 = *v4;
          v15 = **v4;
          v42 = vrev64_s32(*&v46[4]);
          v43 = v46[1];
          v44 = v46[0];
          v16 = v36;
          if ((v36 & 0x100000000) == 0)
          {
            v16 = 0;
          }

          LODWORD(v45) = 0;
          HIDWORD(v45) = v16;
          gdc::ResourceKey::ResourceKey(v29, v15, 20, &v42, 6, v14[14], v6);
          gdc::LayerDataRequest::request(*v4, v29, 0);
          if (v30 != v31)
          {
            free(v30);
          }
        }
      }

      if (v7 != 1)
      {
LABEL_25:
        v22[0] = a1;
        v22[1] = *v4;
        v17 = v4[1];
        v23 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v25 = v39;
        v24 = v38[0];
        v26 = v40;
        v27 = v41;
        v28 = v6;
        if (md::FlyoverLayerDataSource::constructRequests(std::__wrap_iter<std::shared_ptr<gdc::LayerDataRequest> *>,std::__wrap_iter<std::shared_ptr<gdc::LayerDataRequest> *>)const::$_0::operator()(v22, 4))
        {
          v18 = ((*(**(a1 + 24) + 24))(*(a1 + 24), 51) >> 32);
          if ((v19 & 1) == 0)
          {
            v18 = 7;
          }

          if (v7 == 2 && v18 >= v33)
          {
            md::FlyoverLayerDataSource::constructRequests(std::__wrap_iter<std::shared_ptr<gdc::LayerDataRequest> *>,std::__wrap_iter<std::shared_ptr<gdc::LayerDataRequest> *>)const::$_0::operator()(v22, 51);
          }

          (*(**(a1 + 24) + 16))(v46);
          if (v50 == 1)
          {
            v20 = *v4;
            v21 = **v4;
            v42 = vrev64_s32(*&v46[4]);
            v43 = v46[1];
            v44 = v46[0];
            v45 = 0;
            gdc::ResourceKey::ResourceKey(v29, v21, 50, &v42, 6, v20[14], v6);
            gdc::LayerDataRequest::request(*v4, v29, 0);
            if (v30 != v31)
            {
              free(v30);
            }
          }
        }

        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v23);
        }
      }

      v4 += 2;
    }

    while (v4 != a3);
  }
}

void sub_1B3283EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::FlyoverLayerDataSource::constructRequests(std::__wrap_iter<std::shared_ptr<gdc::LayerDataRequest> *>,std::__wrap_iter<std::shared_ptr<gdc::LayerDataRequest> *>)const::$_0::operator()(uint64_t a1, __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  (*(**(*a1 + 24) + 16))(v11);
  v4 = v13;
  if (v13 == 1)
  {
    v5 = *(a1 + 8);
    v6 = *v5;
    v14 = vrev64_s32(v12);
    v15 = v11[1];
    v16 = v11[0];
    gdc::ResourceKey::ResourceKey(&v8, v6, a2, &v14, 4, *(v5 + 112), *(a1 + 56));
    gdc::LayerDataRequest::request(*(a1 + 8), &v8, 0);
    if (v9 != v10)
    {
      free(v9);
    }
  }

  return v4;
}

void *md::FlyoverLayerDataSource::didDeactivate(md::FlyoverLayerDataSource *this)
{
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 81);

  return std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(this + 86);
}

void *md::FlyoverLayerDataSource::didActivate(md::FlyoverLayerDataSource *this)
{
  v2 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v3 = [v2 countryCode];
  *(this + 712) = [v3 isEqualToString:@"CN"];

  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 81);

  return std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(this + 86);
}

void md::FlyoverLayerDataSource::~FlyoverLayerDataSource(md::FlyoverLayerDataSource *this)
{
  *this = &unk_1F2A4D268;
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(this + 86);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 648);
  v2 = *(this + 78);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 74) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4D268;
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(this + 86);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 648);
  v2 = *(this + 78);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 74) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);
}

uint64_t md::TypeRegistry<md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>>::getOrCreate<GEOConfigKeyBOOL>(unsigned int a1, uint64_t a2, void *a3)
{
  v3 = a3;
  {
    operator new();
  }

  v4 = *(md::TypeRegistry<md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>>::_instances(void)::map + 8);
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a1;
    if (v4 <= a1)
    {
      v6 = a1 % v4;
    }
  }

  else
  {
    v6 = (v4 - 1) & a1;
  }

  v7 = *(*md::TypeRegistry<md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>>::_instances(void)::map + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == a1)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= v4)
      {
        v9 %= v4;
      }
    }

    else
    {
      v9 &= v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_19;
    }

LABEL_18:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  if (*(v8 + 4) != a1)
  {
    goto LABEL_18;
  }

  sp_mut = std::__get_sp_mut(v8 + 3);
  std::__sp_mut::lock(sp_mut);
  v12 = v8[3];
  v11 = v8[4];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
  if (v3 && !v12)
  {
    operator new();
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  return v12;
}

void sub_1B32847C8(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

uint64_t md::ConfigSettingProvider::_updateShouldUseEnhancedCamera(md::ConfigSettingProvider *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A1AA0];
  v3 = *(MEMORY[0x1E69A1AA0] + 8);
  v7 = 0;
  if (*(md::TypeRegistry<md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>>::getOrCreate<GEOConfigKeyBOOL>(v2, v3, 0) + 16) == 1)
  {
    v4 = *(this + 96);
  }

  else
  {
    v4 = 0;
  }

  *(this + 164) = v4 & 1;
  return std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v6);
}

void sub_1B3284904(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

float std::__function::__func<md::ConfigSettingProvider::ConfigSettingProvider(NSObject  {objcproto17OS_dispatch_queue}*)::$_0,std::allocator<md::ConfigSettingProvider::ConfigSettingProvider(NSObject  {objcproto17OS_dispatch_queue}*)::$_0>,void ()(double)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = sin(*(v1 + 16) * 0.0174532924);
  *(v1 + 160) = result;
  return result;
}

void std::__shared_ptr_emplace<md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4D350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::TransitNodeTextureAtlas::infoForIcon(uint64_t a1, int a2, unsigned int a3, int a4, int a5)
{
  v63[4] = *MEMORY[0x1E69E9840];
  if (a4 == 2)
  {
    v7 = 65610;
  }

  else
  {
    v7 = 65558;
  }

  if (a5 == 1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  if (a2 == 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = a2 == 1;
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    v11 = a1 + 72;
    do
    {
      v12 = *(v10 + 32);
      _CF = v12 >= v7;
      if (v12 == v7)
      {
        v14 = *(v10 + 36);
        _CF = v14 >= v9;
        if (v14 == v9)
        {
          _CF = *(v10 + 40) >= a3;
        }
      }

      v15 = !_CF;
      _ZF = v15 == 0;
      if (v15)
      {
        v17 = 8;
      }

      else
      {
        v17 = 0;
      }

      if (_ZF)
      {
        v11 = v10;
      }

      v10 = *(v10 + v17);
    }

    while (v10);
    if (a1 + 72 != v11)
    {
      v18 = *(v11 + 32);
      v19 = v7 >= v18;
      if (v7 == v18 && (v20 = *(v11 + 36), v19 = v9 >= v20, v9 == v20))
      {
        if (*(v11 + 40) <= a3)
        {
LABEL_29:
          v21 = *(v11 + 48);
          v22 = *(v11 + 56);
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          v23 = v21;
          goto LABEL_67;
        }
      }

      else if (v19)
      {
        goto LABEL_29;
      }
    }
  }

  v25 = (a1 + 96);
  for (i = *(a1 + 96); i; i = *i)
  {
    v26 = *(i + 7);
    if (v7 == v26)
    {
      v27 = *(i + 8);
      if (v9 == v27)
      {
        v28 = *(i + 36);
        if (v28 <= a3)
        {
          if (v28 >= a3)
          {
            goto LABEL_63;
          }

LABEL_44:
          ++i;
        }
      }

      else if (v9 >= v27)
      {
        if (v27 >= v9)
        {
LABEL_63:
          v23 = 0;
          *(&v21 + 1) = 0;
          goto LABEL_67;
        }

        goto LABEL_44;
      }
    }

    else if (v7 >= v26)
    {
      if (v26 >= v7)
      {
        goto LABEL_63;
      }

      goto LABEL_44;
    }
  }

  v58 = 1065353216;
  v59 = 4;
  v60 = 0;
  v61 = -1;
  v62 = 0;
  memset(v63, 0, 24);
  v29 = *(a1 + 24);
  grl::IconRequestOptions::setContentScale(&v58, v29);
  grl::IconModifiers::setMirrored(&v58, a3);
  v30 = *(a1 + 8);
  v31 = [v30 grlIconManager];
  v43[0] = 0;
  v44 = 0u;
  v56 = 0u;
  v49 = 0;
  v51 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  v43[1] = _D1;
  BYTE14(v44) = 0;
  BYTE4(v46) = 0;
  v52 = 0;
  v50 = &v51;
  v57 = 0;
  v53 = 0u;
  v54 = 0u;
  memset(v55, 0, sizeof(v55));
  grl::IconManager::imageForKeyValue(&v41, v31, v7, v9, v43, &v58, 0);
  grl::IconModifiers::~IconModifiers(v43);

  if (v41)
  {
    operator new();
  }

LABEL_60:
  while (2)
  {
    v39 = *v25;
    if (!*v25)
    {
LABEL_61:
      operator new();
    }

    while (1)
    {
      v25 = v39;
      v35 = *(v39 + 7);
      if (v7 == v35)
      {
        break;
      }

      if (v7 < v35)
      {
        goto LABEL_60;
      }

      if (v35 >= v7)
      {
        goto LABEL_64;
      }

LABEL_58:
      v39 = v25[1];
      if (!v39)
      {
        goto LABEL_61;
      }
    }

    v36 = *(v25 + 8);
    if (v9 == v36)
    {
      v37 = *(v25 + 36);
      v38 = v37 >= a3;
      if (v37 > a3)
      {
        continue;
      }
    }

    else
    {
      if (v9 < v36)
      {
        continue;
      }

      v38 = v36 >= v9;
    }

    break;
  }

  if (!v38)
  {
    goto LABEL_58;
  }

LABEL_64:
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  v43[0] = v63;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v43);
  v21 = 0u;
  v23 = 0;
LABEL_67:
  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v21 + 1));
  }

  return v23;
}

void sub_1B32852CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void **a17)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  a17 = a12;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a17);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::TransitNodeTextureAtlas::IconInfo>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void std::__shared_ptr_emplace<md::TransitNodeTextureAtlas::IconInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4D438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::TransitNodeTextureAtlas::updateTextureIfNecessary(uint64_t this)
{
  if (*(this + 48) == 1)
  {
    *(this + 48) = 0;
    operator new();
  }

  return this;
}

void sub_1B3285790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *cf)
{
  if (cf)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cf);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  _Unwind_Resume(a1);
}

uint64_t md::VenueLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

void md::VenueLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 **a3@<X2>, void *a4@<X8>)
{
  v137 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    std::atomic_load[abi:nn200100]<md::RegistryManager>(&v121, (a1 + 784));
    if (v121)
    {
      gdc::Tiled::tileFromLayerDataKey(&v120, *(a2 + 16));
      gdc::LayerDataSource::getResourceFromMap(buf, *(a1 + 592), *a3, a3[1]);
      v107 = *buf;
      v7 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      memset(v119, 0, sizeof(v119));
      gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], v119);
      v8 = *(v107 + 144);
      v108 = (v107 + 144);
      v9 = geo::codec::VectorTile::polygonsCount(*(v8 + 96), *(v8 + 104));
      v10 = geo::codec::VectorTile::totalBuildingFootprintsCount(v8);
      v11 = geo::codec::VectorTile::coastlinesCount(*(v8 + 64), *(v8 + 72));
      __p[0] = 0;
      __p[1] = 0;
      v118 = 0;
      v115[0] = 0;
      v115[1] = 0;
      v116 = 0;
      if (v11 + v9 + v10)
      {
        _ZNSt3__115allocate_sharedB8nn200100IN2md14MeshSetStorageENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      __src[0] = 0;
      __src[1] = 0;
      *&v125 = 0;
      v12 = geo::codec::VectorTile::key(v8);
      v13 = *(v12 + 1);
      v14 = 1.0 / (1 << v13);
      v15 = (v13 >> 6);
      v16 = *(v12 + 5) & 0x3FFFFFF;
      if (geo::codec::VectorTile::venuesCount(*(v8 + 184), *(v8 + 192)))
      {
        v17 = (v16 + 1);
        v18 = v14;
        v19 = *(*v108 + 23);
        v112 = 0;
        v113 = 0;
        v114 = 0;
        if (!*(v19 + 96))
        {
          goto LABEL_33;
        }

        v20 = 0;
        v109 = v19;
LABEL_12:
        *buf = 0;
        v21 = geo::codec::multiSectionFeaturePoints(v19, v20, buf);
        v22 = *buf;
        std::vector<gm::Matrix<double,2,1>>::reserve(&v112, *buf + ((v113 - v112) >> 4));
        if (!v22)
        {
          goto LABEL_32;
        }

        v23 = 0;
        v24 = v113;
        v25 = v114;
        v26 = v112;
        while (1)
        {
          v27 = (&v21->__vftable + v23);
          v28 = (*v27 + v15) * v18;
          v29 = (v27[1] - v17) * v18 + 1.0;
          if (v24 >= v25)
          {
            v30 = (v24 - v26) >> 4;
            v31 = v30 + 1;
            if ((v30 + 1) >> 60)
            {
              v113 = v24;
              v114 = v25;
              goto LABEL_106;
            }

            if ((v25 - v26) >> 3 > v31)
            {
              v31 = (v25 - v26) >> 3;
            }

            if (v25 - v26 >= 0x7FFFFFFFFFFFFFF0)
            {
              v32 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v31;
            }

            if (v32)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v32);
            }

            v33 = (16 * v30);
            *v33 = v28;
            v33[1] = v29;
            if (v26 != v24)
            {
              v34 = v26;
              v35 = 0;
              do
              {
                v36 = *v34;
                v34 += 2;
                *v35++ = v36;
              }

              while (v34 != v24);
            }

            v25 = 0;
            v24 = v33 + 2;
            if (v26)
            {
              operator delete(v26);
            }

            v26 = 0;
          }

          else
          {
            *v24 = v28;
            v24[1] = v29;
            v24 += 2;
          }

          if (++v23 == v22)
          {
            v113 = v24;
            v114 = v25;
            v112 = v26;
            v19 = v109;
LABEL_32:
            if (++v20 >= *(v19 + 96))
            {
LABEL_33:
              v135 = 0;
              *&v111 = 0;
              v123 = 0;
              v37 = *(v19 + 128);
              if (v37)
              {
                geo::codec::vectorTileGetLocalizedLabelForNativeLabel(*v108, v37, &v135, &v123);
              }

              v38 = *(v19 + 136);
              if (v38)
              {
                geo::codec::vectorTileGetLocalizedLabelForNativeLabel(*v108, v38, &v111, &v123);
              }

              std::vector<gm::Matrix<double,2,1>>::vector[abi:nn200100](&v136, &v112);
              operator new();
            }

            goto LABEL_12;
          }
        }
      }

      v39 = geo::codec::VectorTile::venueBuildingsCount(*(v8 + 216), *(v8 + 224));
      if (!v39)
      {
        if (((*(**(a1 + 24) + 32))(*(a1 + 24), *(a1 + 592)) & 0x100000000) != 0)
        {
          operator new();
        }

        std::__throw_bad_optional_access[abi:nn200100]();
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v102 = v39;
      v40 = 0;
      v41 = (v16 + 1);
      v42 = v14;
      while (1)
      {
        v43 = *(*v108 + 27) + 152 * v40;
        v103 = v40;
        v104 = *(v43 + 144);
        v105 = *(*v108 + 23);
        v106 = *(__src[0] + 2 * v104);
        v112 = 0;
        v113 = 0;
        v114 = 0;
        if (*(v43 + 96))
        {
          v44 = 0;
          v110 = v43;
          do
          {
            *buf = 0;
            v45 = geo::codec::multiSectionFeaturePoints(v43, v44, buf);
            v46 = *buf;
            std::vector<gm::Matrix<double,2,1>>::reserve(&v112, *buf + ((v113 - v112) >> 4));
            if (v46)
            {
              v47 = 0;
              v48 = v113;
              v49 = v114;
              v26 = v112;
              do
              {
                v50 = (&v45->__vftable + v47);
                v51 = (*v50 + v15) * v42;
                v52 = (v50[1] - v41) * v42 + 1.0;
                if (v48 >= v49)
                {
                  v53 = (v48 - v26) >> 4;
                  v54 = v53 + 1;
                  if ((v53 + 1) >> 60)
                  {
                    v113 = v48;
                    v114 = v49;
LABEL_106:
                    v112 = v26;
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  if ((v49 - v26) >> 3 > v54)
                  {
                    v54 = (v49 - v26) >> 3;
                  }

                  if (v49 - v26 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v55 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v55 = v54;
                  }

                  if (v55)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v55);
                  }

                  v56 = (16 * v53);
                  *v56 = v51;
                  v56[1] = v52;
                  if (v26 != v48)
                  {
                    v57 = v26;
                    v58 = 0;
                    do
                    {
                      v59 = *v57;
                      v57 += 2;
                      *v58++ = v59;
                    }

                    while (v57 != v48);
                  }

                  v49 = 0;
                  v48 = v56 + 2;
                  if (v26)
                  {
                    operator delete(v26);
                  }

                  v26 = 0;
                }

                else
                {
                  *v48 = v51;
                  v48[1] = v52;
                  v48 += 2;
                }

                ++v47;
              }

              while (v47 != v46);
              v113 = v48;
              v114 = v49;
              v112 = v26;
              v43 = v110;
            }

            ++v44;
          }

          while (v44 < *(v43 + 96));
        }

        v60 = v105 + 144 * v104;
        if (!*(v43 + 112))
        {
          if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
          }

          v61 = GEOGetVectorKitVKDefaultLog_log;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = *(v60 + 104);
            v64 = *(v43 + 104);
            v63 = *(v43 + 112);
            v65 = geo::codec::VectorTile::key(*v108);
            v66 = *(v65 + 1);
            v67 = *(v65 + 5) & 0x3FFFFFF;
            *buf = 134219264;
            *&buf[4] = v63;
            *&buf[12] = 2048;
            *&buf[14] = v62;
            v127 = 2048;
            v128 = v64;
            v129 = 1024;
            v130 = v66 >> 6;
            v131 = 1024;
            v132 = v67;
            v133 = 1024;
            v134 = v66 & 0x3F;
            _os_log_impl(&dword_1B2754000, v61, OS_LOG_TYPE_ERROR, "Invalid venue building feature id (%llu). Venue id: %llu, building id: %llu, tile key (%u.%u.%u)", buf, 0x32u);
          }
        }

        if (*(v43 + 75) == 1)
        {
          v68 = *(v43 + 48);
        }

        else
        {
          v68 = 0;
        }

        v70 = *(v43 + 124);
        v69 = *(v43 + 128);
        geo::ConvexHull2<double>::convexHullEnclosingPoints(buf, &v112);
        v71 = (v70 + v15) * v42;
        v72 = (v69 - v41) * v42 + 1.0;
        v74 = v106[3];
        v73 = v106[4];
        if (v74 >= v73)
        {
          v82 = v106[2];
          v83 = 0xEEEEEEEEEEEEEEEFLL * ((v74 - v82) >> 3) + 1;
          if (v83 > 0x222222222222222)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v84 = 0xEEEEEEEEEEEEEEEFLL * ((v73 - v82) >> 3);
          if (2 * v84 > v83)
          {
            v83 = 2 * v84;
          }

          if (v84 >= 0x111111111111111)
          {
            v85 = 0x222222222222222;
          }

          else
          {
            v85 = v83;
          }

          if (v85)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueBuilding>>(v85);
          }

          v86 = *(v60 + 104);
          v87 = *(v43 + 120);
          v88 = 8 * ((v74 - v82) >> 3);
          v89 = *(v43 + 132);
          v90 = *(v43 + 136);
          v91 = *(v43 + 104);
          *v88 = 0;
          *(v88 + 8) = 0;
          *(v88 + 16) = 0;
          *(v88 + 24) = v91;
          *(v88 + 40) = v86;
          *(v88 + 48) = v68;
          *(v88 + 56) = v87;
          *(v88 + 64) = v71;
          *(v88 + 72) = v72;
          *(v88 + 80) = 0;
          *(v88 + 88) = 0;
          *(v88 + 96) = 0;
          if ((v88 + 80) != buf)
          {
            std::vector<gm::Matrix<double,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>((v88 + 80), *buf, *&buf[8], (*&buf[8] - *buf) >> 4);
          }

          *(v88 + 104) = v89;
          *(v88 + 112) = v90;
          v92 = v106[2];
          v93 = v106[3];
          v94 = v88 + v92 - v93;
          if (v92 != v93)
          {
            v95 = v106[2];
            v96 = v88 + v92 - v93;
            do
            {
              *v96 = 0;
              *(v96 + 8) = 0;
              *(v96 + 16) = 0;
              *v96 = *v95;
              *(v96 + 16) = *(v95 + 16);
              *v95 = 0;
              *(v95 + 8) = 0;
              *(v95 + 16) = 0;
              v97 = *(v95 + 24);
              v98 = *(v95 + 40);
              v99 = *(v95 + 72);
              *(v96 + 56) = *(v95 + 56);
              *(v96 + 40) = v98;
              *(v96 + 24) = v97;
              *(v96 + 72) = v99;
              *(v96 + 80) = 0;
              *(v96 + 88) = 0;
              *(v96 + 96) = 0;
              *(v96 + 80) = *(v95 + 80);
              *(v96 + 96) = *(v95 + 96);
              *(v95 + 80) = 0;
              *(v95 + 88) = 0;
              *(v95 + 96) = 0;
              *(v96 + 104) = *(v95 + 104);
              v95 += 120;
              v96 += 120;
            }

            while (v95 != v93);
            do
            {
              std::__destroy_at[abi:nn200100]<md::VenueBuilding,0>(v92);
              v92 += 120;
            }

            while (v92 != v93);
          }

          v80 = v88 + 120;
          v81 = v106;
          v100 = v106[2];
          v106[2] = v94;
          *(v106 + 3) = (v88 + 120);
          if (v100)
          {
            operator delete(v100);
          }
        }

        else
        {
          v75 = *(v60 + 104);
          v76 = *(v43 + 120);
          v77 = *(v43 + 132);
          v78 = *(v43 + 136);
          v79 = *(v43 + 104);
          *v74 = 0;
          *(v74 + 8) = 0;
          *(v74 + 16) = 0;
          *(v74 + 24) = v79;
          *(v74 + 40) = v75;
          *(v74 + 48) = v68;
          *(v74 + 56) = v76;
          *(v74 + 64) = v71;
          *(v74 + 72) = v72;
          *(v74 + 80) = 0;
          *(v74 + 88) = 0;
          *(v74 + 96) = 0;
          if ((v74 + 80) != buf)
          {
            std::vector<gm::Matrix<double,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>((v74 + 80), *buf, *&buf[8], (*&buf[8] - *buf) >> 4);
          }

          *(v74 + 104) = v77;
          *(v74 + 112) = v78;
          v80 = v74 + 120;
          v81 = v106;
          v106[3] = v80;
        }

        v81[3] = v80;
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        if (v112)
        {
          operator delete(v112);
        }

        v40 = v103 + 1;
        if (v103 + 1 == v102)
        {
          if (!(v102 >> 61))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v102);
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }
      }
    }

    *a4 = 0;
    a4[1] = 0;
    if (v122)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v122);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_1B3287DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void *>>>::operator()[abi:nn200100](1, v69);

  *(v71 - 232) = v70;
  if (a68)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a68);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x210]);
  std::__hash_table<std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__unordered_map_hasher<md::VenueGroupKey,std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<md::VenueGroupKey>,std::equal_to<md::VenueGroupKey>,true>,std::__unordered_map_equal<md::VenueGroupKey,std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<md::VenueGroupKey>,std::hash<md::VenueGroupKey>,true>,std::allocator<std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::~__hash_table(&a69);
  a69 = &a29;
  std::vector<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a69);

  if (__p)
  {
    a45 = __p;
    operator delete(__p);
  }

  geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(&a33);
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a48);
  }

  a33 = &a49;
  std::vector<md::VenueFloorGroup>::__destroy_vector::operator()[abi:nn200100](&a33);
  a33 = &a53;
  std::vector<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a33);
  if (a56)
  {
    operator delete(a56);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a64)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a64);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<md::VenueTileData *,std::shared_ptr<md::VenueTileData>::__shared_ptr_default_delete<md::VenueTileData,md::VenueTileData>,std::allocator<md::VenueTileData>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::VenueTileData *,std::shared_ptr<md::VenueTileData>::__shared_ptr_default_delete<md::VenueTileData,md::VenueTileData>,std::allocator<md::VenueTileData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::allocator_traits<std::allocator<md::VenueLevel>>::destroy[abi:nn200100]<md::VenueLevel,void,0>(uint64_t a1)
{
  v3 = (a1 + 144);
  std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<md::Venue>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4D5D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::allocator_traits<std::allocator<md::VenueFloorGroup>>::destroy[abi:nn200100]<md::VenueFloorGroup,void,0>(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1;
  std::vector<ggl::PolygonBase::CompressedMeshMesh>::__destroy_vector::operator()[abi:nn200100](&v4);
}

uint64_t std::__split_buffer<md::VenueFloorGroup>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    std::allocator_traits<std::allocator<md::VenueFloorGroup>>::destroy[abi:nn200100]<md::VenueFloorGroup,void,0>(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___Z16buildVenueMeshesRKN3geo8QuadTileERKNSt3__110shared_ptrINS_5codec10VectorTileEEEPN3ggl6DeviceERN2md12TriangulatorIfEERKNS4_IN3gss17StylesheetManagerINSH_10PropertyIDEEEEEfP17VKSharedResourcesRKNS4_INSD_14MeshSetStorageEEE_block_invoke(uint64_t a1, ResourceAccessor *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  md::MeshSetStorage::prepareStorage(**(a1 + 32), a2);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  while (v4 != v5)
  {
    v6 = *(v4 + 8);
    [v6 willAddDataWithAccessor:a2];

    v4 += 24;
  }

  v28 = a2;
  if (*(a1 + 64))
  {
    for (i = 0; i < *(a1 + 64); ++i)
    {
      v8 = **(a1 + 72);
      v9 = v8[12] + (i << 7);
      if (*(v9 + 96))
      {
        v10 = *(v9 + 123);
        if (v10 == 3)
        {
          v11 = v8[32] + (*(v9 + 116) << 6);
          if (v11)
          {
            goto LABEL_12;
          }
        }

        else if (v10 == 2)
        {
          v11 = v8[32] + (*(v8[34] + 56 * *(v9 + 116) + 48) << 6);
          if (v11)
          {
LABEL_12:
            v12 = *(v8[27] + 152 * *(v11 + 56) + 104);
            v13 = *(v11 + 8);
            md::createFeatureAttributeSet(&v31, (v9 + 24));
            v33 = v12;
            v34 = v13;
            v14 = v32;
            v30 = v31;
            v15 = gss::FeatureAttributeSet::hash(v31, v32);
            v16 = *(a1 + 88);
            if (v16)
            {
              v17 = ((v15 << 6) - 0x61C8864680B583EBLL + (v15 >> 2) + v13) ^ v15;
              v18 = (v12 - 0x61C8864680B583EBLL + (v17 << 6) + (v17 >> 2)) ^ v17;
              v19 = vcnt_s8(v16);
              v19.i16[0] = vaddlv_u8(v19);
              v29 = v19.u32[0];
              if (v19.u32[0] > 1uLL)
              {
                v20 = (v12 - 0x61C8864680B583EBLL + (v17 << 6) + (v17 >> 2)) ^ v17;
                if (v18 >= *&v16)
                {
                  v20 = v18 % *&v16;
                }
              }

              else
              {
                v20 = v18 & (*&v16 - 1);
              }

              v21 = *(*(a1 + 80) + 8 * v20);
              if (v21)
              {
                for (j = *v21; j; j = *j)
                {
                  v23 = j[1];
                  if (v18 == v23)
                  {
                    if (gss::FeatureAttributeSet::operator==(j[2], j[3], v30, v14) && j[6] == v12 && *(j + 14) == v13)
                    {
                      v24 = j[9];
                      [v24 addPolygon:v9 accessor:v28 triangulator:*(a1 + 120) withRounder:0];

                      break;
                    }
                  }

                  else
                  {
                    if (v29 > 1)
                    {
                      if (v23 >= *&v16)
                      {
                        v23 %= *&v16;
                      }
                    }

                    else
                    {
                      v23 &= *&v16 - 1;
                    }

                    if (v23 != v20)
                    {
                      break;
                    }
                  }
                }
              }
            }

            std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v31);
          }
        }
      }
    }
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  while (v25 != v26)
  {
    v27 = *(v25 + 8);
    [v27 didFinishAddingData];

    v25 += 24;
  }

  md::MeshSetStorage::finalize(**(a1 + 32));
}

void sub_1B32886D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::unordered_map<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::unordered_map(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; v3 = a1)
  {
    v5 = i[2];
    v6 = i[3];
    v7 = gss::FeatureAttributeSet::hash(v5, v6);
    v8 = i[6];
    v21 = *(i + 14);
    v9 = ((v7 << 6) - 0x61C8864680B583EBLL + (v7 >> 2) + v21) ^ v7;
    v10 = &v8[8 * v9 - 0xC3910C8D016B07DLL] + (v9 >> 2) - 3;
    v11 = v10 ^ v9;
    v12 = v3[1];
    if (!*&v12)
    {
      goto LABEL_20;
    }

    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.u32[0];
    if (v13.u32[0] > 1uLL)
    {
      v15 = v10 ^ v9;
      if (v11 >= *&v12)
      {
        v15 = v11 % *&v12;
      }
    }

    else
    {
      v15 = v11 & (*&v12 - 1);
    }

    v16 = *(*v3 + 8 * v15);
    if (!v16 || (v17 = *v16) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v18 = v17[1];
      if (v18 == v11)
      {
        break;
      }

      if (v14 > 1)
      {
        if (v18 >= *&v12)
        {
          v18 %= *&v12;
        }
      }

      else
      {
        v18 &= *&v12 - 1;
      }

      if (v18 != v15)
      {
        goto LABEL_20;
      }

LABEL_19:
      v17 = *v17;
      if (!v17)
      {
        goto LABEL_20;
      }
    }

    if (!gss::FeatureAttributeSet::operator==(v17[2], v17[3], v5, v6) || v17[6] != v8 || *(v17 + 14) != v21)
    {
      goto LABEL_19;
    }

    i = *i;
  }

  return v3;
}

uint64_t std::__hash_table<std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__unordered_map_hasher<md::VenueGroupKey,std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<md::VenueGroupKey>,std::equal_to<md::VenueGroupKey>,true>,std::__unordered_map_equal<md::VenueGroupKey,std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<md::VenueGroupKey>,std::hash<md::VenueGroupKey>,true>,std::allocator<std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      *(v2 + 8) = &unk_1F2A4D548;

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 16));
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void *>>>::operator()[abi:nn200100](char a1, uint64_t a2)
{
  if (a1)
  {
    *(a2 + 64) = &unk_1F2A4D548;

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a2 + 16));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void __destroy_helper_block_ea8_40c168_ZTSNSt3__16vectorIN3geo11_retain_ptrIU8__strongP12VKVenueGroupNS1_16_retain_objc_arcENS1_17_release_objc_arcENS1_10_hash_objcENS1_11_equal_objcEEENS_9allocatorISA_EEEE80c243_ZTSNSt3__113unordered_mapIN2md13VenueGroupKeyEN3geo11_retain_ptrIU8__strongP12VKVenueGroupNS3_16_retain_objc_arcENS3_17_release_objc_arcENS3_10_hash_objcENS3_11_equal_objcEEENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorINS_4pairIKS2_SC_EEEEEE(uint64_t a1)
{
  v1 = (a1 + 40);
  std::__hash_table<std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__unordered_map_hasher<md::VenueGroupKey,std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<md::VenueGroupKey>,std::equal_to<md::VenueGroupKey>,true>,std::__unordered_map_equal<md::VenueGroupKey,std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<md::VenueGroupKey>,std::hash<md::VenueGroupKey>,true>,std::allocator<std::__hash_value_type<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::~__hash_table(a1 + 80);
  v2 = v1;
  std::vector<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void *__copy_helper_block_ea8_40c168_ZTSNSt3__16vectorIN3geo11_retain_ptrIU8__strongP12VKVenueGroupNS1_16_retain_objc_arcENS1_17_release_objc_arcENS1_10_hash_objcENS1_11_equal_objcEEENS_9allocatorISA_EEEE80c243_ZTSNSt3__113unordered_mapIN2md13VenueGroupKeyEN3geo11_retain_ptrIU8__strongP12VKVenueGroupNS3_16_retain_objc_arcENS3_17_release_objc_arcENS3_10_hash_objcENS3_11_equal_objcEEENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorINS_4pairIKS2_SC_EEEEEE(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  v3 = a1 + 5;
  a1[7] = 0;
  std::vector<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__init_with_size[abi:nn200100]<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>((a1 + 5), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  return std::unordered_map<md::VenueGroupKey,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::unordered_map((v3 + 5), a2 + 80);
}

void sub_1B3288BE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t result, uint64_t (***a2)(void), void *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = a3;
    v6 = result;
    v7 = a3;
    do
    {
      *v7 = &unk_1F2A4D548;
      v7 += 3;
      a3[1] = 0;
      objc_storeStrong(a3 + 1, *(v6 + 8));
      v8 = *(v6 + 8);
      *(v6 + 8) = 0;

      v6 += 24;
      v5 += 3;
      a3 = v7;
    }

    while (v6 != a2);
    v9 = v4;
    v10 = v4;
    do
    {
      v11 = *v10;
      v10 += 3;
      result = (*v11)(v4);
      v9 += 3;
      v4 = v10;
    }

    while (v10 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void md::VenueLayerDataSource::~VenueLayerDataSource(md::VenueLayerDataSource *this)
{
  md::VenueLayerDataSource::~VenueLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4D470;
  v2 = *(this + 99);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

uint64_t md::CurvedTextLabelPart::populatePointOcclusionQuery(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 576);
  if (!v3)
  {
    return 0;
  }

  v6 = v3 + 64;
  v4 = *(v3 + 64);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v5 == v4)
  {
    return 0;
  }

  v11 = *(a1 + 16);
  v12 = (*(**(a1 + 1104) + 56))(*(a1 + 1104));
  v54 = *md::LabelPoint::mercatorPoint(v12);
  v55 = 0;
  md::Label::mercatorPointToWorldPoint(v11, &v54, *(a3 + 8));
  *&v52 = v13;
  *(&v52 + 1) = v14;
  v53 = v15;
  v50 = 0uLL;
  v51 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  std::vector<gm::Matrix<double,3,1>>::reserve(&v45, 5uLL);
  std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v45, &v52);
  if (v7 != 64)
  {
    v16 = *(a1 + 16);
    v17 = (*(**(a1 + 1120) + 56))(*(a1 + 1120));
    v54 = *md::LabelPoint::mercatorPoint(v17);
    v55 = 0;
    md::Label::mercatorPointToWorldPoint(v16, &v54, *(a3 + 8));
    *&v48 = v18;
    *(&v48 + 1) = v19;
    v49 = v20;
    std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v45, &v48);
    v21 = v7 >> 6;
    v22 = *(a1 + 1136);
    if (v21 >= 7 && v22)
    {
      v23 = *(a1 + 16);
      v24 = (*(*v22 + 56))(v22);
      v54 = *md::LabelPoint::mercatorPoint(v24);
      v55 = 0;
      md::Label::mercatorPointToWorldPoint(v23, &v54, *(a3 + 8));
      *&v50 = v25;
      *(&v50 + 1) = v26;
      v51 = v27;
      std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v45, &v50);
    }

    if (v21 >= 0xD && v22)
    {
      for (i = 0; i != 24; i += 8)
      {
        *(&v54 + i) = *(&v50 + i) + *(&v52 + i);
      }

      v29 = 0;
      v41 = v54;
      v42 = v55;
      do
      {
        *(&v54 + v29) = *(&v41 + v29) * 0.5;
        v29 += 8;
      }

      while (v29 != 24);
      v43 = v54;
      v44 = v55;
      std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v45, &v43);
      for (j = 0; j != 24; j += 8)
      {
        *(&v54 + j) = *(&v50 + j) + *(&v48 + j);
      }

      v31 = 0;
      v41 = v54;
      v42 = v55;
      do
      {
        *(&v54 + v31) = *(&v41 + v31) * 0.5;
        v31 += 8;
      }

      while (v31 != 24);
      v43 = v54;
      v44 = v55;
      std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v45, &v43);
    }
  }

  v32 = *a2;
  *v32 = 2;
  *(v32 + 237) = 1;
  v33 = *(v32 + 80);
  *(v32 + 88) = v33;
  v34 = v45;
  v35 = v46;
  v36 = v46 - v45;
  v37 = 0xAAAAAAAAAAAAAAABLL * (v46 - v45);
  if (v37 > *(v32 + 104))
  {
    geo::small_vector_base<gm::Matrix<double,3,1>>::grow(v32 + 80, 0xAAAAAAAAAAAAAAABLL * (v46 - v45));
    v33 = *(v32 + 88);
  }

  if (v34 != v35)
  {
    v38 = v34;
    do
    {
      v39 = *v38;
      *(v33 + 16) = v38[2];
      *v33 = v39;
      v33 += 24;
      v38 += 3;
    }

    while (v38 != v35);
    v33 = *(v32 + 88);
  }

  *(v32 + 88) = v33 + v36;
  geo::small_vector_base<md::OcclusionProbe>::resize(v32 + 8, v37);
  if (v34)
  {
    operator delete(v34);
  }

  return 1;
}

void sub_1B3289160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::CurvedTextLabelPart::populateDebugNode(md::CurvedTextLabelPart *this, gdc::DebugTreeNode *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  md::TextLabelPart::populateDebugNode(this, a2);
  std::string::basic_string[abi:nn200100]<0>(&__src, "CurvedTextLabelPart");
  v4 = gdc::DebugTreeNode::createChildNode(a2, &__src);
  if (v38 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Positioning Mode");
  v5 = *(this + 1482);
  if (v5 > 4)
  {
    if (*(this + 1482) <= 0x64u)
    {
      if (v5 == 5)
      {
        v6 = "FeatureNormal";
        goto LABEL_26;
      }

      if (v5 == 100)
      {
        v6 = "ScreenExact";
        goto LABEL_26;
      }
    }

    else
    {
      switch(v5)
      {
        case 'e':
          v6 = "TransitLineOffset";
          goto LABEL_26;
        case 'f':
          v6 = "RouteOffset";
          goto LABEL_26;
        case 'g':
          v6 = "Polygon";
          goto LABEL_26;
      }
    }

    goto LABEL_25;
  }

  if (*(this + 1482) > 1u)
  {
    switch(v5)
    {
      case 2u:
        v6 = "Cardinal";
        goto LABEL_26;
      case 3u:
        v6 = "CardinalExact";
        goto LABEL_26;
      case 4u:
        v6 = "AutoLineOffset";
        goto LABEL_26;
    }

LABEL_25:
    v6 = "";
    goto LABEL_26;
  }

  if (*(this + 1482))
  {
    v6 = "Screen";
  }

  else
  {
    v6 = "Default";
  }

LABEL_26:
  std::string::basic_string[abi:nn200100]<0>(&v33, v6);
  gdc::DebugTreeValue::DebugTreeValue(v34, &v33);
  gdc::DebugTreeNode::addProperty(v4, &__src, v34);
  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Position");
  v7 = *(this + 1485);
  if (v7 > 0xA)
  {
    v8 = "";
  }

  else
  {
    v8 = off_1E7B3D340[v7];
  }

  std::string::basic_string[abi:nn200100]<0>(&v33, v8);
  gdc::DebugTreeValue::DebugTreeValue(v30, &v33);
  gdc::DebugTreeNode::addProperty(v4, &__src, v30);
  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Padding");
  gdc::DebugTreeValue::DebugTreeValue(v27, *(this + 298));
  gdc::DebugTreeNode::addProperty(v4, &__src, v27);
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (v38 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Road Offset");
  gdc::DebugTreeValue::DebugTreeValue(v24, *(this + 295));
  gdc::DebugTreeNode::addProperty(v4, &__src, v24);
  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v38 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Road Width");
  gdc::DebugTreeValue::DebugTreeValue(v21, *(this + 296));
  gdc::DebugTreeNode::addProperty(v4, &__src, v21);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v38 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Font Size");
  gdc::DebugTreeValue::DebugTreeValue(v18, *(this + 297));
  gdc::DebugTreeNode::addProperty(v4, &__src, v18);
  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v38 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&v33, "Label Text Direction");
  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&__src, off_1E7B3D398[*(this + 1344)]);
  v9 = v38;
  if ((v38 & 0x8000000000000000) != 0)
  {
    v9 = *(&__src + 1);
    if (*(&__src + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    p_src = __src;
  }

  else
  {
    p_src = &__src;
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v9;
  if (v9)
  {
    memmove(&__dst, p_src, v9);
  }

  __dst.__r_.__value_.__s.__data_[v9] = 0;
  gdc::DebugTreeValue::DebugTreeValue(v15, &__dst);
  gdc::DebugTreeNode::addProperty(v4, &v33, v15);
  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    v12 = __src;
    v13 = mdm::zone_mallocator::instance(v11);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v13, v12);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_1B3289654(_Unwind_Exception *exception_object)
{
  if (*(v1 - 65) < 0)
  {
    v3 = *(v1 - 88);
    v4 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::CurvedTextLabelPart::debugString@<X0>(md::CurvedTextLabelPart *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v43);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, "CurvedText", 10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, "\n  Ornt=", 8);
  v6 = *(this + 1421);
  if (v6 > 0xB)
  {
    if (*(this + 1421) <= 0xFu)
    {
      if (v6 == 12)
      {
        v7 = "Angled";
        goto LABEL_24;
      }

      if (v6 == 13)
      {
        v7 = "HorizontalOrAngled";
        goto LABEL_24;
      }
    }

    else
    {
      switch(v6)
      {
        case 0x10u:
          v7 = "Perpendicular";
          goto LABEL_24;
        case 0x20u:
          v7 = "AutoVertical";
          goto LABEL_24;
        case 0x80u:
          v7 = "Default";
          goto LABEL_24;
      }
    }
  }

  else
  {
    if (*(this + 1421) <= 1u)
    {
      if (*(this + 1421))
      {
        v7 = "Horizontal";
      }

      else
      {
        v7 = "None";
      }

      goto LABEL_24;
    }

    switch(v6)
    {
      case 2u:
        v7 = "Vertical";
        goto LABEL_24;
      case 4u:
        v7 = "AngledUp";
        goto LABEL_24;
      case 8u:
        v7 = "AngledDown";
        goto LABEL_24;
    }
  }

  v7 = "";
LABEL_24:
  std::string::basic_string[abi:nn200100]<0>(&__p, v7);
  if ((v42 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v42 & 0x80u) == 0)
  {
    v9 = v42;
  }

  else
  {
    v9 = v41;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, p_p, v9);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, "\n  PosMode=", 11);
  v10 = *(this + 1482);
  if (v10 > 4)
  {
    if (*(this + 1482) <= 0x64u)
    {
      if (v10 == 5)
      {
        v11 = "FeatureNormal";
        goto LABEL_55;
      }

      if (v10 == 100)
      {
        v11 = "ScreenExact";
        goto LABEL_55;
      }
    }

    else
    {
      switch(v10)
      {
        case 'e':
          v11 = "TransitLineOffset";
          goto LABEL_55;
        case 'f':
          v11 = "RouteOffset";
          goto LABEL_55;
        case 'g':
          v11 = "Polygon";
          goto LABEL_55;
      }
    }
  }

  else
  {
    if (*(this + 1482) <= 1u)
    {
      if (*(this + 1482))
      {
        v11 = "Screen";
      }

      else
      {
        v11 = "Default";
      }

      goto LABEL_55;
    }

    switch(v10)
    {
      case 2u:
        v11 = "Cardinal";
        goto LABEL_55;
      case 3u:
        v11 = "CardinalExact";
        goto LABEL_55;
      case 4u:
        v11 = "AutoLineOffset";
        goto LABEL_55;
    }
  }

  v11 = "";
LABEL_55:
  std::string::basic_string[abi:nn200100]<0>(&__p, v11);
  if ((v42 & 0x80u) == 0)
  {
    v12 = &__p;
  }

  else
  {
    v12 = __p;
  }

  if ((v42 & 0x80u) == 0)
  {
    v13 = v42;
  }

  else
  {
    v13 = v41;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, v12, v13);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, " MeshPosMode=", 13);
  v14 = *(this + 1423);
  if (v14 <= 3)
  {
    if (*(this + 1423) <= 1u)
    {
      if (*(this + 1423))
      {
        v15 = "ViewAligned";
      }

      else
      {
        v15 = "Screen";
      }

      goto LABEL_84;
    }

    if (v14 == 2)
    {
      v15 = "Horizontal";
      goto LABEL_84;
    }

    if (v14 == 3)
    {
      v15 = "Vertical";
      goto LABEL_84;
    }
  }

  else if (*(this + 1423) <= 5u)
  {
    if (v14 == 4)
    {
      v15 = "VerticalViewOriented";
      goto LABEL_84;
    }

    if (v14 == 5)
    {
      v15 = "VerticalViewOrientedFaceAlign";
      goto LABEL_84;
    }
  }

  else
  {
    switch(v14)
    {
      case 6u:
        v15 = "FaceAlignWithSkewThreshold";
        goto LABEL_84;
      case 7u:
        v15 = "VerticalWithSkewThreshold";
        goto LABEL_84;
      case 0x32u:
        v15 = "FaceAlignWithTangent";
        goto LABEL_84;
    }
  }

  v15 = "";
LABEL_84:
  std::string::basic_string[abi:nn200100]<0>(&__p, v15);
  if ((v42 & 0x80u) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p;
  }

  if ((v42 & 0x80u) == 0)
  {
    v17 = v42;
  }

  else
  {
    v17 = v41;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, v16, v17);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, " VPos=", 6);
  v18 = *(this + 1485);
  if (v18 > 0xA)
  {
    v19 = "";
  }

  else
  {
    v19 = off_1E7B3D340[v18];
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, v19);
  if ((v42 & 0x80u) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p;
  }

  if ((v42 & 0x80u) == 0)
  {
    v21 = v42;
  }

  else
  {
    v21 = v41;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, v20, v21);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, " HAlign=", 8);
  v22 = *(this + 136);
  v23 = (*(*v22 + 80))(v22);
  v24 = v22[45];
  if (v22[45])
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  if (v24 == 2)
  {
    v25 = 0;
  }

  if (v23)
  {
    v24 = v25;
  }

  if (v24 > 2)
  {
    v26 = "";
  }

  else
  {
    v26 = off_1E7B35C68[v24];
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, v26);
  if ((v42 & 0x80u) == 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p;
  }

  if ((v42 & 0x80u) == 0)
  {
    v28 = v42;
  }

  else
  {
    v28 = v41;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, v27, v28);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  v29 = *(this + 353);
  v30 = *(this + 352);
  v31 = v43;
  *(&v43 + *(v43 - 24) + 8) = *(&v43 + *(v43 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v45[0].__locale_ + *(v31 - 24)) = 1;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, " LineDir=", 9);
  atan2f(v29, v30);
  v32 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, "  padding:", 10);
  v33 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, " lineOffset:", 12);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, "\n  ", 3);
  md::TextLabelPart::debugString(this, a2, &__p);
  if ((v42 & 0x80u) == 0)
  {
    v34 = &__p;
  }

  else
  {
    v34 = __p;
  }

  if ((v42 & 0x80u) == 0)
  {
    v35 = v42;
  }

  else
  {
    v35 = v41;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, v34, v35);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  if ((v50 & 0x10) != 0)
  {
    v37 = v49;
    if (v49 < v46)
    {
      v49 = v46;
      v37 = v46;
    }

    locale = v45[4].__locale_;
  }

  else
  {
    if ((v50 & 8) == 0)
    {
      v36 = 0;
      a3[23] = 0;
      goto LABEL_142;
    }

    locale = v45[1].__locale_;
    v37 = v45[3].__locale_;
  }

  v36 = v37 - locale;
  if ((v37 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v36 >= 0x17)
  {
    operator new();
  }

  a3[23] = v36;
  if (v36)
  {
    memmove(a3, locale, v36);
  }

LABEL_142:
  a3[v36] = 0;
  v43 = *MEMORY[0x1E69E54E8];
  *(&v43 + *(v43 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v44 = MEMORY[0x1E69E5548] + 16;
  if (v48 < 0)
  {
    operator delete(v47);
  }

  v44 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v45);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v51);
}

void sub_1B3289ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
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

uint64_t md::CurvedTextLabelPart::findAlternatePlacement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = atomic_load((a2 + 3425));
  if (v6)
  {
    return md::CurvedTextLabelPart::tryAlternatePlacements(a1, 0, a2, a3, a4, *(a5 + 8), a6);
  }

  else
  {
    return 0;
  }
}

uint64_t md::CurvedTextLabelPart::tryAlternatePlacements(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a2;
  v61[1] = *MEMORY[0x1E69E9840];
  v58 = 0;
  v59 = 0;
  v60 = 0;
  if (a2)
  {
    if (*(a1 + 1482) == 4)
    {
      if ((*(a1 + 992) + *(a1 + 992)) <= (*(a1 + 628) / *(a3 + 176)))
      {
        v9 = 2;
      }

      else
      {
        v9 = 8;
      }
    }

    else if (*(a1 + 1420) == 9)
    {
      v9 = 8;
    }

    else
    {
      v9 = *(a1 + 1420);
    }

    v21 = *(a1 + 1477);
    v57 = v61;
    v22 = mdm::zone_mallocator::instance(a1);
    v23 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPlacement>(v22, 1);
    v53 = v23;
    v54 = v23;
    v20 = v23 + 5;
    v56 = v23 + 5;
    *v23 = v21;
    *(v23 + 1) = 0;
    *(v23 + 3) = v9;
    v55 = v23 + 5;
    v24 = v58;
    v25 = v59;
    v26 = &v54[v58 - v59];
    if (v58 == v59)
    {
      goto LABEL_35;
    }

    v27 = &v54[v58 - v59];
    do
    {
      *v27 = *v24;
      v27[2] = 0;
      *(v27 + 3) = *(v24 + 3);
      v24 = (v24 + 5);
      v27 += 5;
    }

    while (v24 != v25);
    goto LABEL_34;
  }

  if (*(a6 + 52) == 1)
  {
    v10 = 102;
  }

  else
  {
    v10 = 101;
  }

  v57 = v61;
  v11 = mdm::zone_mallocator::instance(a1);
  v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPlacement>(v11, 1);
  v53 = v12;
  v54 = v12;
  v13 = v12 + 5;
  v56 = v12 + 5;
  *v12 = v10;
  *(v12 + 1) = 0;
  *(v12 + 3) = 2;
  v55 = v12 + 5;
  v14 = v58;
  v15 = v59;
  v16 = &v54[v58 - v59];
  if (v58 != v59)
  {
    v17 = &v54[v58 - v59];
    do
    {
      *v17 = *v14;
      v17[2] = 0;
      *(v17 + 3) = *(v14 + 3);
      v14 = (v14 + 5);
      v17 += 5;
    }

    while (v14 != v15);
    v14 = v58;
    v13 = v55;
  }

  v58 = v16;
  v59 = v13;
  v18 = v60;
  v60 = v56;
  v55 = v14;
  v56 = v18;
  v53 = v14;
  v54 = v14;
  v19 = std::__split_buffer<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator> &>::~__split_buffer(&v53);
  v59 = v13;
  if (v13 < v60)
  {
    *v13 = v10;
    *(v13 + 1) = 393216;
    v20 = v13 + 5;
    goto LABEL_36;
  }

  v28 = 0xCCCCCCCCCCCCCCCDLL * (v13 - v58);
  if (v28 + 1 >= 0x3333333333333334)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v29 = 0x999999999999999ALL * (v60 - v58);
  if (v29 <= v28 + 1)
  {
    v29 = v28 + 1;
  }

  if (0xCCCCCCCCCCCCCCCDLL * (v60 - v58) >= 0x1999999999999999)
  {
    v30 = 0x3333333333333333;
  }

  else
  {
    v30 = v29;
  }

  v57 = v61;
  if (v30)
  {
    v31 = mdm::zone_mallocator::instance(v19);
    v32 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPlacement>(v31, v30);
  }

  else
  {
    v32 = 0;
  }

  v33 = &v32[5 * v28];
  v53 = v32;
  v54 = v33;
  v56 = &v32[5 * v30];
  *v33 = v10;
  *(v33 + 1) = 0;
  *(v33 + 3) = 6;
  v20 = v33 + 5;
  v55 = v33 + 5;
  v24 = v58;
  v34 = v59;
  v26 = &v54[v58 - v59];
  if (v58 != v59)
  {
    v35 = &v54[v58 - v59];
    do
    {
      *v35 = *v24;
      v35[2] = 0;
      *(v35 + 3) = *(v24 + 3);
      v24 = (v24 + 5);
      v35 += 5;
    }

    while (v24 != v34);
LABEL_34:
    v24 = v58;
    v20 = v55;
  }

LABEL_35:
  v58 = v26;
  v59 = v20;
  v36 = v60;
  v60 = v56;
  v55 = v24;
  v56 = v36;
  v53 = v24;
  v54 = v24;
  v19 = std::__split_buffer<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator> &>::~__split_buffer(&v53);
LABEL_36:
  v59 = v20;
  if (v58 != v20)
  {
    __asm { FMOV            V8.2S, #1.0 }

    v42 = mdm::zone_mallocator::instance(v19);
    v43 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v42, 0x5E8uLL);
    md::LabelPart::LabelPart(v43, a1);
    *v43 = &unk_1F2A4DDE0;
    *(v43 + 36) = 0u;
    *(v43 + 37) = 0u;
    *(v43 + 76) = *(a1 + 608);
    v44 = *(a1 + 616);
    *(v43 + 77) = v44;
    if (v44)
    {
      atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(a1 + 640);
    *(v43 + 39) = *(a1 + 624);
    *(v43 + 40) = v45;
    v46 = *(a1 + 656);
    v47 = *(a1 + 672);
    v48 = *(a1 + 688);
    *(v43 + 352) = *(a1 + 704);
    *(v43 + 42) = v47;
    *(v43 + 43) = v48;
    *(v43 + 41) = v46;
    *(v43 + 706) = *(a1 + 706);
    *(v43 + 710) = *(a1 + 710);
    *(v43 + 714) = *(a1 + 714);
    *(v43 + 718) = *(a1 + 718);
    *(v43 + 722) = *(a1 + 722);
    v43[726] = *(a1 + 726);
    *(v43 + 728) = 0u;
    *(v43 + 186) = 0;
    *(v43 + 748) = xmmword_1B33B22A0;
    *(v43 + 191) = 0;
    *(v43 + 96) = _D8;
    *(v43 + 776) = 0u;
    *(v43 + 792) = 0u;
    *(v43 + 808) = 0u;
    *(v43 + 412) = 0;
    *(v43 + 826) = xmmword_1B33B22B0;
    *(v43 + 842) = 0;
    v43[846] = 0;
    v43[876] = 0;
    *(v43 + 106) = 0;
    *(v43 + 108) = 0;
    *(v43 + 107) = 0;
    v43[872] = 0;
    v43[880] = *(a1 + 880);
    *(v43 + 221) = 0;
    *(v43 + 881) = 0;
    *(v43 + 444) = 1;
    *(v43 + 56) = 0u;
    *(v43 + 57) = 0u;
    *(v43 + 116) = 1065353216;
    v43[936] = 0;
    v43[940] = 0;
    v43[944] = 1;
    *(v43 + 120) = 0;
    *(v43 + 121) = 0;
    *(v43 + 119) = 0;
    std::allocate_shared[abi:nn200100]<md::LabelText,std::allocator<md::LabelText>,md::LabelText&,0>();
  }

  v49 = 0;
  if ((v7 & 1) == 0)
  {
    v50 = v58[4];
    *a7 = *v58;
    *(a7 + 4) = v50;
    v49 = 1;
  }

  std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v58);
  return v49 & 1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPlacement>(uint64_t a1, void *a2)
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

uint64_t md::CollisionObjectRefPlacementCandidate::collidesWithObject(md::CollisionObjectRefPlacementCandidate *this, const md::CollisionObject *a2)
{
  v2 = *(this + 1);
  if (*(v2 + 160) == 0 || (*(a2 + 200) & *(v2 + 200)) != 0)
  {
    return 0;
  }

  v4 = *(a2 + 21);
  if (*(v2 + 168))
  {
    v5 = *(this + 1);
    if (v4)
    {
      return md::CollisionObject::circlesCollideWithCircles(v5, a2);
    }

    return md::CollisionObject::circlesCollideWithRects(v5, a2);
  }

  if (v4)
  {
    v5 = a2;
    a2 = v2;
    return md::CollisionObject::circlesCollideWithRects(v5, a2);
  }

  if ((*(v2 + 196) & 1) != 0 || *(a2 + 196) == 1)
  {
    return md::CollisionObject::rectsCollideWithRectsOBB(*(this + 1), a2);
  }

  else
  {
    return md::CollisionObject::rectsCollideWithRects(*(this + 1), a2);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPlacement>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 5 * a2, 0x1000040957D8CC4uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

uint64_t std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 2) = 0;
      *(v5 + 3) = *(v2 + 3);
      v2 = (v2 + 5);
      v5 += 5;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v6 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v6;
  v7 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

uint64_t md::CurvedTextLabelPart::evaluateSnapToDefaultPlacement(uint64_t this)
{
  if (*(this + 1482) - 101 <= 1)
  {
    *(this + 1491) = 1;
  }

  return this;
}

_BYTE *md::CurvedTextLabelPart::getCreationOptions(_BYTE *result, _BYTE *a2)
{
  a2[2] = result[1480];
  a2[1] = result[1152];
  a2[3] = result[1157];
  return result;
}

BOOL md::CurvedTextLabelPart::isVisuallySimilar(md::CurvedTextLabelPart *this, const md::LabelPart *a2)
{
  result = md::TextLabelPart::isVisuallySimilar(this, a2);
  if (result)
  {
    v5 = *(this + 1485);
    return v5 == *(a2 + 1485) && (v5 != 10 || *(this + 1486) == *(a2 + 1486)) && *(this + 1152) == *(a2 + 1152) && *(this + 1157) == *(a2 + 1157);
  }

  return result;
}

uint64_t gdc::ComponentStorageWrapper<md::ShadowMeshDescriptor>::emplace(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v28 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v28);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 < v7)
    {
      *v8 = *a3;
      result = std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::__value_func[abi:nn200100]((v8 + 8), (a3 + 8));
      v19 = v8 + 40;
      a1[11] = (v8 + 40);
    }

    else
    {
      v9 = a1[10];
      v10 = 0xCCCCCCCCCCCCCCCDLL * (&v8[-v9] >> 3);
      if (v10 + 1 > 0x666666666666666)
      {
        goto LABEL_25;
      }

      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v9) >> 3);
      v12 = 2 * v11;
      if (2 * v11 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x333333333333333)
      {
        v13 = 0x666666666666666;
      }

      else
      {
        v13 = v12;
      }

      v33 = a1 + 10;
      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::ShadowMeshDescriptor>>(v13);
      }

      v30 = 0;
      v31 = 40 * v10;
      v32 = 40 * v10;
      *v31 = *a3;
      std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::__value_func[abi:nn200100](40 * v10 + 8, (a3 + 8));
      *&v32 = v32 + 40;
      v14 = a1[10];
      v15 = a1[11];
      v16 = v31 + v14 - v15;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::ShadowMeshDescriptor>,md::ShadowMeshDescriptor*>(v14, v15, v16);
      v17 = a1[10];
      a1[10] = v16;
      v18 = a1[12];
      v27 = v32;
      *(a1 + 11) = v32;
      *&v32 = v17;
      *(&v32 + 1) = v18;
      v30 = v17;
      v31 = v17;
      result = std::__split_buffer<md::ShadowMeshDescriptor>::~__split_buffer(&v30);
      v19 = v27;
    }

    a1[11] = v19;
  }

  else
  {
    v24 = (a1[10] + 40 * ((v5 - a1[7]) >> 3));
    *v24 = *a3;
    result = std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::operator=[abi:nn200100]((v24 + 8), (a3 + 8));
    if (v24 != a1[11])
    {
      v25 = a1[16];
      if (v25)
      {
        v26 = a1[31];
        do
        {
          result = std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v25[6], v26, &v28, 1);
          v25 = *v25;
        }

        while (v25);
      }

      return result;
    }
  }

  v20 = a1[22];
  if (v20)
  {
    v21 = a1[31];
    while (1)
    {
      v30 = &v28;
      v31 = 1;
      v29 = v21;
      v22 = v20[6];
      if (!v22)
      {
        break;
      }

      result = (*(*v22 + 48))(v22, &v29, &v30);
      v20 = *v20;
      if (!v20)
      {
        return result;
      }
    }

    std::__throw_bad_function_call[abi:nn200100]();
LABEL_25:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::ShadowMeshDescriptor>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::ShadowMeshDescriptor>,md::ShadowMeshDescriptor*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (a3 + 32);
    v6 = result;
    do
    {
      *(v5 - 32) = *v6;
      v7 = *(v6 + 32);
      if (v7)
      {
        if (v6 + 8 == v7)
        {
          *v5 = v5 - 3;
          (*(**(v6 + 32) + 24))(*(v6 + 32));
        }

        else
        {
          *v5 = v7;
          *(v6 + 32) = 0;
        }
      }

      else
      {
        *v5 = 0;
      }

      v6 += 40;
      v5 += 5;
    }

    while (v6 != a2);
    do
    {
      result = std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::~__value_func[abi:nn200100](v4 + 8);
      v4 += 40;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<md::ShadowMeshDescriptor>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<md::CurvedTextLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0,std::allocator<md::CurvedTextLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0>,void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (v5[70].i8[5] == 1)
  {
    *(a3 + 40) = (*(*v5 + 144))(*(a1 + 8));
  }

  *(a3 + 24) = v5[69].i32[0];
  for (i = 842; i != 846; ++i)
  {
    *(a3 + i - 810) = v5->i8[i];
  }

  std::vector<md::ShadowMeshQuad>::resize(a3, *(a2 + 40));
  *(a3 + 28) = v5[99].i32[1];
  std::vector<md::ShadowMeshQuad>::resize(a3, *(a2 + 40));
  v11 = v5[112];
  v12 = v5[113];
  if (*&v11 != *&v12)
  {
    v13 = 0;
    do
    {
      if (*(*&v11 + 1) == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = *(*&v11 + 8);
        v7.n64_u32[0] = *(*v16 + 8);
        v17 = **v16;
        v19 = v17[5];
        v18 = v17 + 5;
        v20 = v18[1].f32[0];
        v21 = &v18[-1];
        *v8.f32 = vmul_f32(vsub_f32(v19, v18[-1]), 0x3DCCCCCD3F000000);
        v22 = v5[99].f32[1];
        v8.f32[0] = fminf(v8.f32[0], v8.f32[1]) - v22;
        do
        {
          v9.i32[0] = v18->i32[v15];
          v10.i32[0] = v21->i32[v15];
          if (v14)
          {
            break;
          }

          v14 = 1;
          v15 = 1;
        }

        while (v9.f32[0] >= v10.f32[0]);
        v23 = vdupq_lane_s32(*&vcgtq_f32(v10, v9), 0);
        v24 = v8;
        v24.f32[1] = v8.f32[1] - v22;
        v25.i64[0] = vaddq_f32(*v21, v24).u64[0];
        v24.i64[1] = __PAIR64__(v8.f32[1] - v22, v8.u32[0]);
        v25.i64[1] = vsubq_f32(*v21, v24).i64[1];
        v26 = vbslq_s8(v23, *v21, v25);
        v27 = *a3 + 56 * v13;
        *v27 = v26.i64[0];
        *(v27 + 8) = 0;
        v28 = vextq_s8(v26, v26, 8uLL).u64[0];
        *(v27 + 12) = __PAIR64__(v26.u32[1], v28);
        *(v27 + 20) = 0;
        *(v27 + 24) = v28;
        *(v27 + 32) = 0;
        v32 = v28;
        v33 = *v26.i8;
        v7.n64_f32[0] = v7.n64_f32[0] / v20;
        *(v27 + 36) = __PAIR64__(HIDWORD(v28), v26.u32[0]);
        *(v27 + 44) = 0;
        md::TextLabelPart::prepareGlyphVertices(v5, v16, v27, v7);
        v29 = 0;
        v30 = v27;
        do
        {
          for (j = 0; j != 3; ++j)
          {
            *(v30 + j * 4) = *(v30 + j * 4) + v5[183].f32[j];
          }

          v29 += 12;
          v30 += 12;
        }

        while (v29 != 48);
        v7.n64_u64[0] = vmul_f32(vsub_f32(v32, v33), 0x3F0000003F000000);
        *(v27 + 48) = v7;
        ++v13;
      }

      *&v11 += 16;
    }

    while (*&v11 != *&v12);
  }
}

void std::vector<md::ShadowMeshQuad>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 56 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x492492492492492)
      {
        v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x249249249249249)
        {
          v10 = 0x492492492492492;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x492492492492492)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 56 * ((56 * v6 - 56) / 0x38) + 56);
    v11 = v4 + 56 * ((56 * v6 - 56) / 0x38) + 56;
  }

  a1[1] = v11;
}

uint64_t std::__function::__func<md::CurvedTextLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0,std::allocator<md::CurvedTextLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0>,void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4D9F0;
  a2[1] = v2;
  return result;
}

uint64_t md::CurvedTextLabelPart::placeGlyphsOnRoadPath(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v12 = *(a1 + 592);
    v15 = *(v12 + 64);
    v14 = (v12 + 64);
    v13 = v15;
    v17 = v14 + 1;
    v16 = v14[1];
    if (v15 != v16)
    {
      v105 = a1 + 592;
      *(a6 + 3432) += (v16 - v13) >> 6;
      goto LABEL_6;
    }

    return 37;
  }

  v18 = *(a1 + 576);
  v19 = *(v18 + 64);
  v14 = (v18 + 64);
  v17 = v14 + 1;
  if (v19 == v14[1])
  {
    return 37;
  }

  v105 = a1 + 576;
LABEL_6:
  md::LabelPart::createHiker(&v106, a1, a2, *(a4 + 112), a5);
  v20 = *(a1 + 1424);
  v21 = v20 != 0.0;
  v22 = *a3;
  if (v22 == 103)
  {
    v21 = 1;
  }

  v23 = v106;
  v106[12] = v21;
  if (v20 != 0.0)
  {
    v24 = -(v20 * *(a6 + 176));
    goto LABEL_10;
  }

  switch(v22)
  {
    case 103:
      v33 = a3[3];
      if (v33 != 6)
      {
        v24 = 0.0;
        if (v33 != 2)
        {
          break;
        }

        goto LABEL_31;
      }

LABEL_40:
      v24 = -*(a4 + 12);
      break;
    case 4:
      v31 = a3[3];
      if (v31 != 6)
      {
        if (v31 == 8)
        {
          v32 = *(a1 + 1480);
          v24 = *(a4 + 8);
          goto LABEL_95;
        }

LABEL_31:
        v24 = *(a4 + 12);
        break;
      }

      goto LABEL_40;
    case 1:
      if (*(*(a1 + 16) + 1357) != 1)
      {
        goto LABEL_25;
      }

      v29 = *(*(*(a6 + 336) + 200) + 72);
      if (!v29)
      {
        operator new();
      }

      if (*v29 != 1)
      {
        v30 = 12;
      }

      else
      {
LABEL_25:
        v30 = 8;
      }

      v24 = *(a4 + v30);
      v74 = a3[3];
      if (v74 == 8)
      {
        v32 = *(a1 + 1480);
LABEL_95:
        if (!v32)
        {
          v24 = 0.0;
        }

        break;
      }

      if (v74 == 6)
      {
        v24 = -v24;
      }

      break;
    default:
      v34 = a3[3];
      v24 = 0.0;
      if (v34 != 8)
      {
        v35 = fminf(fmaxf((*a4 * 0.16667) + -2.1667, 0.0), 1.0);
        v36 = 14.0;
        if (v22 == 102)
        {
          v36 = 12.0;
        }

        v37 = 2.0;
        if (v22 == 102)
        {
          v37 = 4.0;
        }

        v38 = fmaxf(*(a4 + 24) + 1.0, *(a6 + 176) * (v37 + (v35 * v36))) + (*(a4 + 20) * 0.5);
        v24 = -v38;
        if (v34 != 6)
        {
          v24 = v38;
        }
      }

      break;
  }

LABEL_10:
  *(a4 + 4) = v24;
  (*(*v23 + 64))(v23);
  (*(*v23 + 88))(v23);
  if (*(v23 + 9) != 1)
  {
    v28 = 9;
LABEL_120:
    (*(*v23 + 8))(v23);
    return v28;
  }

  v104 = a2;
  v25 = *(*v105 + 64);
  if (*(*v105 + 72) != v25)
  {
    v103 = *(*v105 + 72) - v25;
    v26 = *v25;
    v27 = **v25;
    if (!v27 || *(v27 + 62) != 1)
    {
      goto LABEL_78;
    }

    CGFontGetXHeight(*(v27 + 16));
    CGFontGetAscent(*(*v26 + 16));
    CGFontGetUnitsPerEm(*(*v26 + 16));
    v112 = 0x8000007F7FFFFFLL;
    if (v103 >> 6 != -1)
    {
      if (!(((v103 >> 6) + 1) >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v103 >> 6) + 1);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v39 = v104;
    if (!md::CurvedTextLabelPart::populateQuadOffsets(a1, v104, 0, 0, &v112))
    {
      goto LABEL_78;
    }

    if (*(a5 + 424) <= 0.0)
    {
      v41 = -(*(*(a4 + 112) + 40) + exp2f(*a4) * -512.0 * *(*(a4 + 112) + 32));
      if ((*(&v112 + 1) - *&v112) > (*(a5 + 44) * v41))
      {
        goto LABEL_78;
      }
    }

    if (*(a4 + 184) == 1)
    {
      *(v23 + 11) = *(a4 + 183);
      *(v23 + 8) = 1;
      (*(*v23 + 56))(v23, *(a4 + 28));
      (*(*v23 + 88))(v23);
      if ((*(v23 + 10) & 1) != 0 || ((*(*v23 + 88))(v23), v42 = 0.0, (*(v23 + 9) & 1) == 0))
      {
LABEL_78:
        v28 = 13;
        goto LABEL_119;
      }
    }

    else
    {
      v75 = a5;
      if (v104)
      {
        v76 = 1168;
      }

      else
      {
        if (!*(a4 + 176) || !*(a4 + 181))
        {
          v77 = v112;
          v111[0] = 0;
          LODWORD(v111[1]) = 0;
          v78 = *(a1 + 1088);
          v79 = (*(*v78 + 80))(v78);
          v82 = v78[45];
          if (v78[45])
          {
            v83 = 1;
          }

          else
          {
            v83 = 2;
          }

          if (v82 == 2)
          {
            v83 = 0;
          }

          if (v79)
          {
            LOBYTE(v82) = v83;
          }

          if (!md::CurvedTextLabelPart::findLineLayoutDirection(v23, 0, v82, v111, *(&v77 + 1) - *&v77, v80, v81))
          {
            goto LABEL_78;
          }

          if (*(a1 + 565) == 1)
          {
            v109 = *(v75 + 100);
            LODWORD(v110) = *(v75 + 108);
            __p = *(v75 + 88);
            v108 = *(v75 + 96);
          }

          else
          {
            v86 = *(v75 + 72);
            v109 = *(v75 + 80);
            LODWORD(v110) = 0;
            __p = v86;
            v108 = 0;
          }

          md::CurvedTextLabelPart::initTextLayoutOptions(*(a1 + 1479), &v109, &__p, v111, (a1 + 1157), (a1 + 1152));
          (*(*v23 + 16))(v23);
        }

        v76 = 976;
      }

      *(v23 + 11) = *(a4 + 176) == 2;
      *(v23 + 8) = 1;
      v87 = *(a1 + v76 + 112);
      v88 = (*(*v87 + 80))(v87);
      v89 = v87[45];
      if (v87[45])
      {
        v90 = 1;
      }

      else
      {
        v90 = 2;
      }

      if (v89 == 2)
      {
        v90 = 0;
      }

      if (v88)
      {
        LOBYTE(v89) = v90;
      }

      if (v89 == 2)
      {
        if (*(v23 + 11))
        {
          v42 = 0.0;
        }

        else
        {
          v42 = *(&v112 + 1);
        }

        v39 = v104;
      }

      else
      {
        v39 = v104;
        if (v89)
        {
          v42 = (*(&v112 + 1) + *&v112) * 0.5;
        }

        else if (*(v23 + 11))
        {
          v42 = *(&v112 + 1);
        }

        else
        {
          v42 = 0.0;
        }
      }
    }

    if (v39)
    {
      v91 = -1;
    }

    else
    {
      v92 = *(a4 + 168);
      *(a4 + 160) = 0;
      *(a4 + 168) = 0;
      if (v92)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v92);
      }

      v91 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v93 = 0;
    for (i = 0; ; ++i)
    {
      (*(*v23 + 32))(v23, *(8 * i) - v42);
      (*(*v23 + 88))(v23);
      if (*(v23 + 10))
      {
        break;
      }

      (*(*v23 + 88))(v23);
      if ((*(v23 + 9) & 1) == 0)
      {
        break;
      }

      (*(*v23 + 88))(v23);
      v95 = v93;
      for (j = 4; j != 7; ++j)
      {
        *v95++ = *(v23 + 4 * j);
      }

      (*(*v23 + 88))(v23);
      *(4 * i) = *(v23 + 48);
      v97 = (8 * i);
      *v97 = *(v23 + 40);
      v97[1] = *(v23 + 44);
      if (i)
      {
        if (i == v91)
        {
          (*(*v23 + 24))(v111, v23);
          v98 = *v111;
          v111[1] = 0;
          v111[0] = 0;
          v99 = *(a4 + 168);
          *(a4 + 160) = v98;
          if (v99)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v99);
            if (v111[1])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v111[1]);
            }
          }
        }
      }

      else
      {
        (*(*v23 + 24))(v111, v23);
        v100 = *v111;
        v111[1] = 0;
        v111[0] = 0;
        v101 = *(a4 + 136);
        *(a4 + 128) = v100;
        if (v101)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v101);
          if (v111[1])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v111[1]);
          }

          v102 = *(a4 + 128);
        }

        else
        {
          v102 = v100;
        }

        if (!v102)
        {
          operator delete(0);
          goto LABEL_78;
        }
      }

      v93 += 3;
    }

    goto LABEL_78;
  }

  if (*(*(a1 + 16) + 1355) != 1)
  {
    if (a2)
    {
LABEL_118:
      v28 = 37;
      goto LABEL_119;
    }

LABEL_80:
    if ((*(a4 + 184) & 1) == 0 && (*(a1 + 1481) & 1) == 0)
    {
      v66 = (*(*a1 + 344))(a1, 0);
      v111[0] = 0;
      LODWORD(v111[1]) = 0;
      v67 = v106;
      (*(*v106 + 16))(v106);
      v68 = *(a1 + 1088);
      v69 = (*(*v68 + 80))(v68);
      v72 = v68[45];
      if (v68[45])
      {
        v73 = 1;
      }

      else
      {
        v73 = 2;
      }

      if (v72 == 2)
      {
        v73 = 0;
      }

      if (v69)
      {
        LOBYTE(v72) = v73;
      }

      if ((md::CurvedTextLabelPart::findLineLayoutDirection(v67, 0, v72, v111, v66, v70, v71) & 1) == 0)
      {
        v28 = 9;
        goto LABEL_119;
      }

      *(a1 + 1408) = v111[0];
      *(a1 + 1416) = v111[1];
      if (*(a1 + 565) == 1)
      {
        v109 = *(a5 + 100);
        LODWORD(v110) = *(a5 + 108);
        __p = *(a5 + 88);
        v108 = *(a5 + 96);
      }

      else
      {
        v84 = *(a5 + 72);
        v109 = *(a5 + 80);
        LODWORD(v110) = 0;
        __p = v84;
        v108 = 0;
      }

      md::CurvedTextLabelPart::updateTextLayoutOptions(*(a1 + 1479), &v109, &__p, v111, *(a4 + 181), *(a4 + 176), (a1 + 1476), (a1 + 1478));
    }

    goto LABEL_118;
  }

  v43 = *(*v105 + 64);
  v44 = (*(*v105 + 72) - v43) >> 6;
  v45 = 1.0;
  if (v44 >= 2)
  {
    v46 = 1168;
    if (!a2)
    {
      v46 = 976;
    }

    v47 = *(a1 + v46 + 181);
    v48 = (v43 + 84);
    for (k = 1; k != v44; ++k)
    {
      if (v47 != 2 || (*(**(v43 + (k << 6)) + 60) & 1) == 0 && (*(**(v43 - 64 + (k << 6)) + 60) & 1) == 0)
      {
        v50 = v43 - 44 + (k << 6);
        v111[0] = 0;
        LODWORD(v111[1]) = 0;
        v51 = *v50;
        v52 = *(v50 + 8);
        if (v51 || v52 != 0)
        {
          v54 = v43 + (k << 6);
          v109 = 0;
          v55 = *(v54 + 20);
          v56 = *(v54 + 28);
          if (v55 || v56 != 0)
          {
            v58 = 0.0;
            v59 = v48;
            v60 = 3;
            do
            {
              v61 = *(v59 - 16);
              v62 = *v59++;
              v58 = v58 + (v62 * v61);
              --v60;
            }

            while (v60);
            v45 = fminf(v45, v58);
          }
        }
      }

      v48 += 16;
    }
  }

  v63 = flt_1B33AFB70[*v17 - *v14 < 0x100uLL];
  v64 = fminf(fmaxf(v45, 0.0), 1.0);
  if (v64 >= v63)
  {
    v28 = 37;
  }

  else
  {
    v28 = 18;
  }

  if (v64 >= v63 && a2 == 0)
  {
    goto LABEL_80;
  }

LABEL_119:
  v23 = v106;
  if (v106)
  {
    goto LABEL_120;
  }

  return v28;
}

void sub_1B328D47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::__shared_weak_count *a59, uint64_t a60, std::__shared_weak_count *a61, char a62)
{
  STACK[0x268] = &unk_1F2A4C328;
  std::__tree<std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>>>::destroy(STACK[0x280]);
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (a62)
  {
    (*(*a58 + 56))(a58);
  }

  if (a61)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a61);
  }

  if (a59)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a59);
  }

  v64 = *(v62 - 168);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v64);
  }

  if (a41)
  {
    (*(*a41 + 8))(a41);
  }

  _Unwind_Resume(a1);
}

uint64_t md::CurvedTextLabelPart::initTextLayoutOptions(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, char *a6)
{
  v6 = 0;
  v7 = 0.0;
  do
  {
    v7 = v7 + (*(a4 + v6) * *(a2 + v6));
    v6 += 4;
  }

  while (v6 != 12);
  if (result && fabsf(v7) < 0.70711)
  {
    v8 = 0;
    *a5 = 2;
    v9 = 0.0;
    do
    {
      v9 = v9 + (*(a4 + v8) * *(a3 + v8));
      v8 += 4;
    }

    while (v8 != 12);
    v7 = -v9;
  }

  else
  {
    *a5 = 1;
  }

  if (v7 >= 0.0)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  *a6 = v10;
  return result;
}

uint64_t md::CurvedTextLabelPart::CurvedTextLabelPart(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, float a9, _BYTE *a10, char a11)
{
  v18 = (a1 + 1157);
  v19 = md::TextLabelPart::TextLabelPart(a1, a3, a11);
  *v19 = &unk_1F2A4D610;
  *(v19 + 976) = 0u;
  *(v19 + 992) = 0u;
  *(v19 + 1008) = 1065353216;
  *(v19 + 1072) = 0;
  v20 = (v19 + 1088);
  *(v19 + 1012) = 0u;
  *(v19 + 1028) = 0;
  *(v19 + 1088) = 0u;
  *(v19 + 1104) = 0u;
  *(v19 + 1120) = 0u;
  *(v19 + 1136) = 0u;
  *(v19 + 1151) = 0;
  *(v19 + 1155) = 2305;
  *v18 = 0;
  *(v19 + 1164) = 0u;
  *(v19 + 1180) = 0u;
  *(v19 + 1196) = 0x3F80000000000000;
  *(v19 + 1264) = 0;
  *(v19 + 1220) = 0;
  *(v19 + 1204) = 0u;
  *(v19 + 1280) = 0u;
  *(v19 + 1296) = 0u;
  *(v19 + 1312) = 0u;
  *(v19 + 1328) = 0u;
  v45 = v19 + 1280;
  *(v19 + 1343) = 0;
  *(v19 + 1347) = 2305;
  *(v19 + 1356) = 0;
  v18[48] = 0;
  *(v19 + 1360) = 1;
  *(v19 + 1364) = 10;
  *(v19 + 1366) = 16842752;
  *(v19 + 1370) = 0;
  *(v19 + 1376) = 0;
  *(v19 + 1384) = 0;
  *(v19 + 1392) = 0;
  *(v19 + 1396) = 258;
  *(v19 + 1412) = 0;
  *(v19 + 1398) = 0u;
  *(v19 + 1420) = 9;
  *(v19 + 1421) = *(a6 + 248);
  *(v19 + 1422) = *(a6 + 253);
  *(v19 + 1423) = 0;
  *(v19 + 1424) = a9;
  *(v19 + 1428) = *(a5 + 392);
  *(v19 + 1440) = 0;
  *(v19 + 1448) = 0;
  *(v19 + 1464) = 0;
  *(v19 + 1472) = 0;
  *(v19 + 1456) = 0;
  *(v19 + 1480) = a10[2];
  v18[81] = 0;
  v18[82] = 9;
  *(v19 + 1489) = 257;
  *(v19 + 1491) = 0;
  *(v19 + 1492) = a2;
  *(v19 + 1496) = *a7;
  v21 = a7[1];
  *(v19 + 1504) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 557) = 1;
  v22 = *(a6 + 264);
  if (a11 == 1)
  {
    if (!v22)
    {
      v23 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(a6);
      v22 = *v23;
      *(a6 + 264) = *v23;
    }

    v24 = (v22 + 62);
  }

  else
  {
    if (!v22)
    {
      v25 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(a6);
      v22 = *v25;
      *(a6 + 264) = *v25;
    }

    v24 = (v22 + 61);
  }

  v26 = *v24 - 2;
  if ((v26 & 0xF8) != 0)
  {
    v27 = 9;
  }

  else
  {
    v27 = 0x908090609090902uLL >> (8 * v26);
  }

  *(a1 + 1420) = v27;
  if (a2 == 2 && *(*(a4 + 232) + 31) == 1)
  {
    *(a1 + 1423) = 0;
  }

  else
  {
    v28 = *(a1 + 1422);
    *(a1 + 1423) = v28;
    if (v28)
    {
      *(a1 + 565) = 1;
    }
  }

  if (*(a1 + 565) == 1)
  {
    if (*(*(a4 + 232) + 17) == 1)
    {
      v29 = *(*(a4 + 424) + 24);
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 885) = v29 & 1;
  *(a1 + 881) = 1;
  if (*(a1 + 1480) == 1 && (v18[81] & 1) == 0)
  {
    *(a1 + 1490) = 0;
    *(a1 + 1432) = *(a5 + 96);
    *(a1 + 1016) = *(*(a4 + 424) + 1176);
  }

  (*(**a7 + 16))(&v46);
  v30 = v46;
  v46 = 0uLL;
  v31 = *(a1 + 1096);
  *(a1 + 1088) = v30;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
    if (*(&v46 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v46 + 1));
    }
  }

  v32 = *v20;
  if (a10[7] == 1)
  {
    (*(*v32 + 176))(v32, a10[6], 1.0);
    v32 = *v20;
  }

  *(a1 + 1158) = (*(*v32 + 80))(v32);
  (*(**(a1 + 1088) + 16))(&v46);
  v33 = v46;
  v46 = 0uLL;
  v34 = *(a1 + 1288);
  *(a1 + 1280) = v33;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    if (*(&v46 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v46 + 1));
    }
  }

  *(a1 + 1350) = (*(**v45 + 80))();
  *(a1 + 1152) = a10[1];
  v35 = a10[3];
  *(a1 + 1157) = v35;
  v36 = *(a6 + 248);
  if (v36 == 32 && (v37 = **(*a3 + 16), *(v37 + 128) == 2))
  {
    v38 = *(v37 + 130);
    *(a1 + 1479) = v38;
    v39 = a8;
    if (v38)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *(a1 + 1479) = 0;
    v39 = a8;
  }

  if (!v35)
  {
    v35 = v36;
  }

  if (v35 == 32)
  {
    LOBYTE(v35) = 0;
  }

LABEL_43:
  *(a1 + 1476) = v35;
  v40 = *(a6 + 251);
  if (v40 != 1 && v40 != 4)
  {
    if (a10[5] == 1)
    {
      v40 = a10[4];
    }

    else if (*(a4 + 3685))
    {
      v40 = 4;
    }

    else
    {
      v40 = 1;
    }
  }

  *(a1 + 1477) = v40;
  if (*(v39 + 3) == 9)
  {
    *(a1 + 1482) = v40;
    if (v40 == 4)
    {
      if ((*(a6 + 152) + *(a6 + 152)) <= (*(md::LabelStyle::textStyleGroup(a6, *(a1 + 880)) + 100) / *(a4 + 176)))
      {
        LOWORD(v41) = 2;
      }

      else
      {
        LOWORD(v41) = 8;
      }
    }

    else
    {
      v41 = *(a1 + 1420);
      if (v41 == 9)
      {
        LOWORD(v41) = 8;
      }
    }

    *(v18 + 164) = v41;
  }

  else
  {
    *(v18 + 164) = *(v39 + 3);
    *(a1 + 1482) = *v39;
  }

  *(a1 + 1489) = (*(a1 + 1420) & 0xFE) == 8;
  *(a1 + 1364) = 0;
  *(a1 + 1360) = *(a1 + 557);
  return a1;
}

void sub_1B328DCCC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 188);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 167);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 165);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v1 + 163);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(v1 + 161);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(v1 + 143);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(v1 + 141);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(v1 + 139);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(v1 + 137);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  md::TextLabelPart::~TextLabelPart(v1);
  _Unwind_Resume(a1);
}

void md::HorizontalTextLabelPart::populateDebugNode(md::HorizontalTextLabelPart *this, gdc::DebugTreeNode *a2)
{
  md::TextLabelPart::populateDebugNode(this, a2);
  std::string::basic_string[abi:nn200100]<0>(&v15, "HorizontalTextLabelPart");
  v4 = gdc::DebugTreeNode::createChildNode(a2, &v15);
  if (v16 < 0)
  {
    operator delete(v15);
  }

  std::string::basic_string[abi:nn200100]<0>(&v15, "Text Alpha");
  gdc::DebugTreeValue::DebugTreeValue(v12, *(this + 138));
  gdc::DebugTreeNode::addProperty(v4, &v15, v12);
  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  std::string::basic_string[abi:nn200100]<0>(&v15, "Use Logogram Wrapping");
  gdc::DebugTreeValue::DebugTreeValue(v9, *(this + 1248));
  gdc::DebugTreeNode::addProperty(v4, &v15, v9);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  std::string::basic_string[abi:nn200100]<0>(&v15, "Line Wrap Length");
  if (*(this + 1248))
  {
    v5 = 8;
  }

  else
  {
    v5 = 18;
  }

  if (*(this + 313) != 1)
  {
    v5 = *(this + 313);
  }

  gdc::DebugTreeValue::DebugTreeValue(v6, v5);
  gdc::DebugTreeNode::addProperty(v4, &v15, v6);
  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }
}

uint64_t md::HorizontalTextLabelPart::debugString@<X0>(md::HorizontalTextLabelPart *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v22);
  v6 = v22;
  *(&v22 + *(v22 - 24) + 8) = *(&v22 + *(v22 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v24[0].__locale_ + *(v6 - 24)) = 1;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, "HorizontalText\n", 15);
  if (*(this + 264) != 0.0 || *(this + 265) != 0.0)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, " LayoutMargin: top=", 19);
    v7 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, " bottom=", 8);
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "\n", 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, " line wrap=", 11);
  v9 = *(this + 313);
  if (*(this + 1248))
  {
    v10 = 8;
  }

  else
  {
    v10 = 18;
  }

  if (v9 == 1)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  MEMORY[0x1B8C61C80](&v22, v11);
  if (*(this + 313) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, "[Default]", 9);
  }

  if (*(this + 1248))
  {
    v12 = "(logograms)";
  }

  else
  {
    v12 = "(chars)";
  }

  if (*(this + 1248))
  {
    v13 = 11;
  }

  else
  {
    v13 = 7;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, v12, v13);
  if (*(this + 314))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, " truncateLength=", 16);
    MEMORY[0x1B8C61C80](&v22, *(this + 314));
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, "  ", 2);
  md::TextLabelPart::debugString(this, a2, __p);
  if ((v21 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v15 = v21;
  }

  else
  {
    v15 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, v14, v15);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v29 & 0x10) != 0)
  {
    v17 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v17 = v25;
    }

    locale = v24[4].__locale_;
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v16 = 0;
      a3[23] = 0;
      goto LABEL_41;
    }

    locale = v24[1].__locale_;
    v17 = v24[3].__locale_;
  }

  v16 = v17 - locale;
  if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  a3[23] = v16;
  if (v16)
  {
    memmove(a3, locale, v16);
  }

LABEL_41:
  a3[v16] = 0;
  v22 = *MEMORY[0x1E69E54E8];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v23 = MEMORY[0x1E69E5548] + 16;
  if (v27 < 0)
  {
    operator delete(v26);
  }

  v23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v30);
}

void sub_1B328E2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
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

double md::HorizontalTextLabelPart::populateHoverBounds(_BYTE *a1, uint64_t a2)
{
  if ((a1[565] & 1) == 0)
  {
    v7.n128_u32[0] = (*(*a1 + 264))(a1);
    *(v7.n128_u64 + 4) = __PAIR64__(v4, v3);
    v7.n128_u32[3] = v5;
    v8 = 0;
    *&result = geo::small_vector_base<std::pair<gm::Box<float,2>,float>>::push_back(a2, &v7).n128_u64[0];
  }

  return result;
}

BOOL md::HorizontalTextLabelPart::isVisuallySimilar(md::HorizontalTextLabelPart *this, const md::LabelPart *a2)
{
  result = md::TextLabelPart::isVisuallySimilar(this, a2);
  if (result)
  {
    return *(this + 313) == *(a2 + 313) && *(this + 314) == *(a2 + 314);
  }

  return result;
}

uint64_t std::__function::__func<md::HorizontalTextLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0,std::allocator<md::HorizontalTextLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0>,void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4E1B8;
  a2[1] = v2;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::HorizontalTextLabelPart::LineInfo>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 32 * a2, 0x100004024AC2F66uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::vector<md::FontGlyphInfo,geo::allocator_adapter<md::FontGlyphInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v6 = v3 - 5;
        CGFontRelease(*(v3 - 4));
        v3 = v6;
      }

      while (v6 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::FontGlyphInfo>(v7, v4);
  }
}

uint64_t *std::unique_ptr<md::TextDataStringInfo>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::vector<md::TextDataStringInfo::TextFragment,geo::allocator_adapter<md::TextDataStringInfo::TextFragment,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 96));
    if (*(v2 + 87) < 0)
    {
      v4 = *(v2 + 64);
      v5 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char16_t>(v5, v4);
    }

    if (*(v2 + 55) < 0)
    {
      v6 = *(v2 + 32);
      v7 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
    }

    if (*(v2 + 23) < 0)
    {
      v8 = *v2;
      v9 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v9, v8);
    }

    MEMORY[0x1B8C62190](v2, 0x1032C40DDA1824BLL);
  }

  return a1;
}

void md::BuildingTileData::~BuildingTileData(md::BuildingTileData *this)
{
  md::BuildingTileData::~BuildingTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4E230;
  *(this + 80) = &unk_1F2A4E270;
  md::LandmarkTileData::~LandmarkTileData((this + 944));
  v2 = *(this + 115);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 113);
  *(this + 113) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = (this + 880);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (this + 728);
  std::vector<std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  md::MapTileData::~MapTileData(this);
}

uint64_t md::SDFGlyphRenderer::ctFontCacheStatistics(md::SDFGlyphRenderer *this)
{
  std::mutex::lock((this + 40));
  *(this + 105) = *(this + 18);
  v2 = *(this + 51);
  std::mutex::unlock((this + 40));
  return v2;
}

void std::__list_imp<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>>::__delete_node[abi:nn200100](void *__p)
{
  __p[6] = &unk_1F2A5F810;
  v2 = __p[7];
  if (v2)
  {
    CFRelease(v2);
  }

  __p[2] = &unk_1F2A5F758;
  v3 = __p[3];
  if (v3)
  {
    CFRelease(v3);
  }

  operator delete(__p);
}

void md::SDFGlyphRenderer::renderGlyphImage(md::SDFGlyphRenderer *this, md::AtlasFontGlyph *a2)
{
  v3 = this;
  if (*(a2 + 61) == 1)
  {
    std::mutex::lock((this + 40));
    md::SDFGlyphRenderer::renderGlyph(&v109, v3, *(a2 + 2), 1, *(a2 + 28), *(v3 + 27), *(v3 + 27), *(v3 + 8), *(a2 + 12), *(v3 + 8), 1u, v3 + 184);
    v4 = vrev64_s32(v109);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(v3 + 27);
    *(a2 + 8) = vcvt_f32_f64(vsubq_f64(v110, vdupq_lane_s64(COERCE__INT64(v4), 0)));
    *(a2 + 26) = 1.0 / v111;
    operator new();
  }

  v5 = atomic_load(this + 26);
  v6 = *(a2 + 12);
  v7 = *(this + 27);
  v8 = *(this + 8);
  std::mutex::lock((this + 40));
  md::SDFGlyphRenderer::renderGlyph(&v109, v3, *(a2 + 2), 0, *(a2 + 28), *(v3 + 27), *(v3 + 27), *(v3 + 8), *(a2 + 12), *(v3 + 8), 1u, v3 + 216);
  md::SDFGlyphRenderer::renderGlyph(&v105, v3, *(a2 + 2), 0, *(a2 + 28), v7 * v5, v7 * v5, v8 * v5, v6 * v5, v8 * v5, v5, v3 + 248);
  if ((v108 + -1.0) == 0.0)
  {
    atomic_fetch_add(v3 + 54, 1uLL);
  }

  v9 = v105;
  v10 = v106;
  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::resize((v3 + 280), v105 * v106);
  v99 = a2;
  bzero(*(v3 + 35), (*(v3 + 36) - *(v3 + 35)) >> 2);
  v11 = *(v3 + 31);
  if (v11)
  {
    if (v10)
    {
      if (v9)
      {
        v12 = *(v3 + 35);
        if (v12)
        {
          v13 = 4 * v10;
          v14 = 4 * v10 * v9;
          v15 = *(v3 + 1);
          v16 = *(v3 + 2) - v15;
          if (v14 <= v16)
          {
            if (v14 < v16)
            {
              *(v3 + 2) = v15 + v14;
            }
          }

          else
          {
            std::vector<unsigned char>::__append(v3 + 1, v14 - v16);
            v15 = *(v3 + 1);
          }

          v17 = hypot(v10, v9);
          v18 = 0;
          v19 = v17;
          v20 = v15 + 2;
          v21 = v12;
          do
          {
            v22 = v21;
            v23 = v20;
            v24 = v10;
            do
            {
              *v22++ = v19;
              *(v23 - 2) = 0;
              v23 += 4;
              --v24;
            }

            while (v24);
            ++v18;
            v20 += v13;
            v21 = (v21 + v13);
          }

          while (v18 != v9);
          if (v9 - 1 >= 2)
          {
            v25 = 1;
            do
            {
              if (v10 - 1 <= 1)
              {
                v26 = v25 + 1;
              }

              else
              {
                v26 = v25 + 1;
                v27 = &v11[v25 * v10 + 2];
                v28 = (v15 + v13 * v25 + 6);
                v29 = 1;
                do
                {
                  v30 = v11[v25 * v10 + v29];
                  if (((*(v27 + v29 - 3) ^ v30) & 0x80) != 0 || ((*(v27 + v29 - 1) ^ v30) & 0x80) != 0 || ((v11[(v25 - 1) * v10 + v29] ^ v30) & 0x80) != 0 || ((v11[(v25 + 1) * v10 + v29] ^ v30) & 0x80) != 0)
                  {
                    v12[v25 * v10 + v29] = 0.0;
                    *(v28 - 1) = v29;
                    *v28 = v25;
                  }

                  ++v29;
                  v28 += 2;
                }

                while (2 - v10 + v29 != 1);
              }

              v25 = v26;
            }

            while (v26 != v9 - 1);
          }

          v100 = v15;
          v97 = v12;
          v98 = v9;
          v95 = v11;
          v96 = v3;
          v31 = v9 - 2;
          if (v9 - 2 >= 2)
          {
            v103 = v12 + 1;
            v32 = 1;
            v33 = v15;
            do
            {
              if (v10 - 2 >= 2)
              {
                v34 = v103;
                v35 = v33;
                v36 = 1;
                do
                {
                  v37 = v34[v10];
                  if ((*(v34 - 1) + 1.4142) < v37)
                  {
                    v38 = *v35;
                    v35[v13 / 4 + 1] = v38;
                    v37 = md::SignedDistanceFieldGenerator::_hypot(v36 - v38, v32 - (v38 >> 16));
                    v34[v10] = v37;
                  }

                  if ((*v34 + 1.0) < v37)
                  {
                    v39 = v35[1];
                    v35[v13 / 4 + 1] = v39;
                    v37 = md::SignedDistanceFieldGenerator::_hypot(v36 - v39, v32 - (v39 >> 16));
                    v34[v10] = v37;
                  }

                  if ((v34[1] + 1.4142) < v37)
                  {
                    v40 = v35[2];
                    v35[v13 / 4 + 1] = v40;
                    v37 = md::SignedDistanceFieldGenerator::_hypot(v36 - v40, v32 - (v40 >> 16));
                    v34[v10] = v37;
                  }

                  if ((v34[v13 / 4 - 1] + 1.0) < v37)
                  {
                    v41 = v35[v10];
                    v35[v13 / 4 + 1] = v41;
                    v34[v10] = md::SignedDistanceFieldGenerator::_hypot(v36 - v41, v32 - (v41 >> 16));
                  }

                  ++v36;
                  ++v35;
                  ++v34;
                }

                while (3 - v10 + v36 != 1);
              }

              ++v32;
              v33 = (v33 + v13);
              v103 = (v103 + v13);
            }

            while (v32 != v31);
          }

          if (v98 > 2)
          {
            v42 = (4 * v98 - 4) * v10 - 8;
            v43 = (v100 + v42);
            v44 = (v97 + v42);
            v45 = 4 * v98 * v10 - 4;
            v46 = (v97 + v45);
            v47 = (v100 + v45);
            do
            {
              v48 = v47;
              v101 = v46;
              v102 = v44;
              v104 = v43;
              v49 = v10 - 2;
              if (v10 >= 3)
              {
                do
                {
                  v50 = *v44;
                  if ((v44[1] + 1.0) < *v44)
                  {
                    v51 = v43[1];
                    *v43 = v51;
                    v50 = md::SignedDistanceFieldGenerator::_hypot(v49 - v51, v31 - (v51 >> 16));
                    *v44 = v50;
                  }

                  if ((*(v46 - 2) + 1.4142) < v50)
                  {
                    v52 = *(v48 - 2);
                    *v43 = v52;
                    v50 = md::SignedDistanceFieldGenerator::_hypot(v49 - v52, v31 - (v52 >> 16));
                    *v44 = v50;
                  }

                  if ((*(v46 - 1) + 1.0) < v50)
                  {
                    v53 = *(v48 - 1);
                    *v43 = v53;
                    v50 = md::SignedDistanceFieldGenerator::_hypot(v49 - v53, v31 - (v53 >> 16));
                    *v44 = v50;
                  }

                  if ((*v46 + 1.4142) < v50)
                  {
                    v54 = *v48;
                    *v43 = v54;
                    *v44 = md::SignedDistanceFieldGenerator::_hypot(v49 - v54, v31 - (v54 >> 16));
                  }

                  --v49;
                  --v43;
                  --v44;
                  --v46;
                  --v48;
                }

                while (v49 + 1 > 1);
              }

              v43 = &v104[-v10];
              v44 = &v102[-v10];
              v46 = &v101[-v10];
              v47 -= v10;
            }

            while (v31-- > 1);
          }

          v56 = 0;
          v3 = v96;
          v57 = v97;
          v9 = v98;
          v58 = v95;
          do
          {
            v59 = v58;
            v60 = v57;
            v61 = v10;
            do
            {
              v62 = *v59++;
              if ((v62 & 0x80000000) == 0)
              {
                *v60 = -*v60;
              }

              ++v60;
              --v61;
            }

            while (v61);
            ++v56;
            v57 = (v57 + v13);
            v58 += v10;
          }

          while (v56 != v98);
        }
      }
    }
  }

  bzero(*(v3 + 39), (*(v3 + 40) - *(v3 + 39)) >> 2);
  v63 = 0;
  v64 = v9 / v5;
  if ((v9 / v5) * v5 == v9)
  {
    v65 = v9;
    v66 = v10 / v5;
    LODWORD(v67) = 0;
    if ((v10 / v5) * v5 == v10)
    {
      v68 = *(v3 + 35);
      std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::resize((v3 + 312), v64 * v66);
      bzero(*(v3 + 39), *(v3 + 40) - *(v3 + 39));
      if (v65)
      {
        v69 = 0;
        v70 = 0;
        if (v5 <= 1)
        {
          v71 = 1;
        }

        else
        {
          v71 = v5;
        }

        v72 = 4 * v10;
        do
        {
          if (v10)
          {
            v73 = 0;
            v74 = 0;
            v75 = *(v3 + 39) + 4 * v69 / v5 * v66;
            do
            {
              v76 = 0;
              v77 = v68 + v72 * v70 + 4 * v74;
              v78 = 0.0;
              do
              {
                v79 = v77;
                v80 = v71;
                do
                {
                  v81 = *v79++;
                  v78 = v81 + v78;
                  --v80;
                }

                while (v80);
                ++v76;
                v77 += v72;
              }

              while (v76 != v71);
              *(v75 + 4 * (v73 / v5)) = v78 * (1.0 / (v5 * v5));
              v74 += v5;
              v73 = v74;
            }

            while (v74 < v10);
          }

          v70 += v5;
          v69 = v70;
        }

        while (v70 < v65);
      }

      v63 = v64;
      v67 = v10 / v5;
    }
  }

  else
  {
    LODWORD(v67) = 0;
  }

  v82 = *(v3 + 27);
  v83 = (v63 * v67);
  v84 = *(v3 + 43);
  v85 = *(v3 + 44);
  if (v83 <= v85 - v84)
  {
    v86 = v99;
    if (v83 < v85 - v84)
    {
      v85 = &v84[v83];
      *(v3 + 44) = &v84[v83];
    }
  }

  else
  {
    std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__append(v3 + 344, v83 - (v85 - v84));
    v86 = v99;
    v84 = *(v3 + 43);
    v85 = *(v3 + 44);
  }

  bzero(v84, v85 - v84);
  v88 = *(v3 + 43);
  if (v88 && v63)
  {
    v89 = 0;
    v90 = *(v3 + 39);
    do
    {
      v91 = v90;
      v92 = v88;
      v93 = v67;
      if (v67)
      {
        do
        {
          v94 = *v91++;
          *v92++ = (((fmaxf(-(v82 * v5), fminf(v94, (v82 * v5))) * 127.5) * (1.0 / (v82 * v5))) + 127.5);
          --v93;
        }

        while (v93);
      }

      ++v89;
      v88 += v67;
      v90 += v67;
    }

    while (v89 != v63);
  }

  v86[9].i32[0] = v67;
  v86[9].i32[1] = v63;
  LODWORD(v87) = *(v3 + 27);
  v86[8] = vcvt_f32_f64(vsubq_f64(vdivq_f64(v107, vdupq_lane_s64(COERCE__INT64(v5), 0)), vdupq_lane_s64(COERCE__INT64(v87), 0)));
  v86[13].f32[0] = 1.0 / v111;
  operator new();
}

void md::SDFGlyphRenderer::renderGlyph(uint64_t a1, uint64_t a2, CGFontRef font, int a4, CGGlyph a5, unsigned int a6, unsigned int a7, unsigned int a8, float a9, unsigned int a10, unsigned int a11, uint64_t a12)
{
  v95 = *MEMORY[0x1E69E9840];
  glyphs = a5;
  *a1 = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  UnitsPerEm = CGFontGetUnitsPerEm(font);
  CGFontGetGlyphBBoxes(font, &glyphs, 1uLL, &bboxes);
  v20 = (a9 / UnitsPerEm);
  v21 = vmulq_n_f64(bboxes.origin, v20);
  v22 = vmulq_n_f64(bboxes.size, v20);
  bboxes.origin = v21;
  bboxes.size = v22;
  y = v21.y;
  height = v22.height;
  v96 = CGRectIntegral(*&v21.x);
  v26 = a8 / a11 * a11;
  v27 = a10 / a11 * a11;
  v28 = (2 * a6);
  v29 = (v96.size.width + v28);
  v30 = (2 * a7);
  bboxes.size.width = v96.size.width;
  bboxes.size.height = v96.size.height;
  v31 = (v96.size.height + v30);
  v32 = v29 - v26;
  if (v29 > v26 || v31 > v27)
  {
    v34 = v31 - v27;
    if (v32 <= (v31 - v27))
    {
      width = v96.size.height;
    }

    else
    {
      v34 = v32;
      width = v96.size.width;
    }

    v36 = width - v34;
    v37 = width;
    v39 = v36 / v37;
    v38 = (v36 / v37);
    v96.origin.x = floor(v96.origin.x * v38);
    v96.origin.y = floor(v96.origin.y * v38);
    bboxes.size.width = floor(v96.size.width * v38);
    bboxes.size.height = floor(v96.size.height * v38);
    a9 = v39 * a9;
    v29 = (bboxes.size.width + v28);
    v31 = (bboxes.size.height + v30);
  }

  else
  {
    v39 = 1.0;
  }

  v40 = v96.origin.x % a11;
  v41 = a11 - v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41;
  v43 = v96.origin.y % a11;
  v44 = a11 - v43;
  if (v43 <= 0)
  {
    v44 = 0;
  }

  bboxes.origin.x = v96.origin.x + v42;
  bboxes.origin.y = v96.origin.y + v44;
  v45 = v40 + v29;
  if (v26 >= v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = a8 / a11 * a11;
  }

  if (v27 >= v43 + v31)
  {
    v47 = v43 + v31;
  }

  else
  {
    v47 = a10 / a11 * a11;
  }

  v48 = v47 % a11;
  if (v46 % a11)
  {
    v49 = a11 - v46 % a11;
  }

  else
  {
    v49 = 0;
  }

  if (v48)
  {
    v50 = a11 - v48;
  }

  else
  {
    v50 = 0;
  }

  v89 = &unk_1F2A5F758;
  if (font)
  {
    CFRetain(font);
  }

  graphicsFont = font;
  cf = font;
  v91 = a9;
  v51 = std::__hash_table<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::__unordered_map_hasher<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,md::SDFGlyphRenderer::CTFontKeyHash,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,true>,std::__unordered_map_equal<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,md::SDFGlyphRenderer::CTFontKeyHash,true>,std::allocator<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>>>::find<md::SDFGlyphRenderer::CTFontKey>((a2 + 120), &v89);
  if (!v51)
  {
    goto LABEL_36;
  }

  v52 = *(a2 + 168);
  v53 = *(v51 + 6);
  if (v52 != v53)
  {
    v54 = v53[1];
    if (v54 != v52)
    {
      v55 = *v53;
      *(v55 + 8) = v54;
      *v54 = v55;
      v56 = *v52;
      *(v56 + 8) = v53;
      *v53 = v56;
      *v52 = v53;
      v53[1] = v52;
      v52 = *(a2 + 168);
    }
  }

  if ((a2 + 160) == v52)
  {
LABEL_36:
    ++*(a2 + 416);
    v58 = CTFontCreateWithGraphicsFont(font, a9, 0, 0);
    v59 = v58;
    v86 = &unk_1F2A5F810;
    fonta = v58;
    v88[0] = &unk_1F2A5F810;
    if (v58)
    {
      CFRetain(v58);
      v88[1] = v59;
      v92 = &unk_1F2A5F810;
      CFRetain(v59);
    }

    else
    {
      v88[1] = 0;
      v92 = &unk_1F2A5F810;
    }

    v93 = v59;
    v60 = std::__hash_table<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::__unordered_map_hasher<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,md::SDFGlyphRenderer::CTFontKeyHash,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,true>,std::__unordered_map_equal<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,md::SDFGlyphRenderer::CTFontKeyHash,true>,std::allocator<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>>>::find<md::SDFGlyphRenderer::CTFontKey>((a2 + 120), &v89);
    v61 = v60;
    if (v60)
    {
      v62 = *(v60 + 6);
      v64 = *v62;
      v63 = v62[1];
      *(v64 + 8) = v63;
      *v63 = v64;
      --*(a2 + 176);
      std::__list_imp<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>>::__delete_node[abi:nn200100](v62);
      std::__hash_table<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::__unordered_map_hasher<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,md::SDFGlyphRenderer::CTFontKeyHash,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,true>,std::__unordered_map_equal<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,md::SDFGlyphRenderer::CTFontKeyHash,true>,std::allocator<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>>>::erase((a2 + 120), v61);
    }

    operator new();
  }

  ++*(a2 + 412);
  v86 = &unk_1F2A5F810;
  v57 = v52[7];
  if (v57)
  {
    CFRetain(v52[7]);
  }

  fonta = v57;
  v89 = &unk_1F2A5F758;
  if (cf)
  {
    CFRelease(cf);
  }

  v65 = v49 + v46;
  v66 = v50 + v47;
  v89 = &unk_1F29E1230;
  cf = 0;
  v92 = &unk_1F29E1260;
  v93 = 0;
  if (a4)
  {
    CTFontGetOpticalBoundsForGlyphs(fonta, &glyphs, &boundingRects, 1, 0);
    bboxes.origin = vaddq_f64(bboxes.origin, *&boundingRects.a);
    v67 = (4 * v66 * v65);
    v68 = *a12;
    v69 = *(a12 + 8);
    v70 = &v69[-*a12];
    if (v67 <= v70)
    {
      if (v67 < v70)
      {
        v69 = &v68[v67];
        *(a12 + 8) = &v68[v67];
      }
    }

    else
    {
      std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__append(a12, v67 - v70);
      v68 = *a12;
      v69 = *(a12 + 8);
    }

    if (v69 - v68 >= 1)
    {
      bzero(v68, v69 - v68);
    }

    v77 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
    v88[0] = &unk_1F29E1230;
    v88[1] = v77;
    if (cf)
    {
      CFRelease(cf);
      v77 = v88[1];
    }

    cf = v77;
    v76 = COERCE_DOUBLE(CGBitmapContextCreate(*a12, v65, v66, 8uLL, (4 * v65), v77, 1u));
    v88[0] = &unk_1F29E1260;
    v88[1] = *&v76;
    if (v93)
    {
      CFRelease(v93);
      v76 = *&v88[1];
    }
  }

  else
  {
    v71 = (v66 * v65);
    v72 = *a12;
    v73 = *(a12 + 8);
    v74 = &v73[-*a12];
    if (v71 <= v74)
    {
      if (v71 < v74)
      {
        v73 = &v72[v71];
        *(a12 + 8) = &v72[v71];
      }
    }

    else
    {
      std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__append(a12, v71 - v74);
      v72 = *a12;
      v73 = *(a12 + 8);
    }

    if (v73 - v72 >= 1)
    {
      bzero(v72, v73 - v72);
    }

    b = COERCE_DOUBLE(CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]));
    *&boundingRects.a = &unk_1F29E1230;
    boundingRects.b = b;
    if (cf)
    {
      CFRelease(cf);
      b = boundingRects.b;
    }

    cf = *&b;
    v76 = COERCE_DOUBLE(CGBitmapContextCreate(*a12, v65, v66, 8uLL, v65, *&b, 0));
    *&boundingRects.a = &unk_1F29E1260;
    boundingRects.b = v76;
    if (v93)
    {
      CFRelease(v93);
      v76 = boundingRects.b;
    }
  }

  v93 = *&v76;
  CGContextSaveGState(*&v76);
  boundingRects.b = 0.0;
  boundingRects.c = 0.0;
  boundingRects.a = 1.0;
  *&boundingRects.d = xmmword_1B33ADD90;
  boundingRects.ty = v66;
  CGContextConcatCTM(v93, &boundingRects);
  CGContextSetFont(v93, graphicsFont);
  CGContextSetFontSize(v93, a9);
  if ((a4 & 1) == 0)
  {
    *v88 = xmmword_1B33B2590;
    v78 = CGColorCreate(cf, v88);
    *&boundingRects.a = &unk_1F29E1130;
    *&boundingRects.b = v78;
    CGContextSetFillColorWithColor(v93, v78);
    CGContextSetTextDrawingMode(v93, kCGTextFill);
    *&boundingRects.a = &unk_1F29E1130;
    if (*&boundingRects.b)
    {
      CFRelease(*&boundingRects.b);
    }
  }

  boundingRects.a = a6 - bboxes.origin.x;
  boundingRects.b = a7 - bboxes.origin.y;
  CTFontDrawGlyphs(fonta, &glyphs, &boundingRects, 1uLL, v93);
  if ((a4 & 1) == 0)
  {
    v79 = *a12;
    v80 = *(a12 + 8);
    if (*a12 != v80)
    {
      do
      {
        *v79 = md::SDFGlyphRenderer::_coverageMaskDeGammaTable[*v79];
        ++v79;
      }

      while (v79 != v80);
    }
  }

  *a1 = v66;
  *(a1 + 4) = v65;
  *(a1 + 40) = a6;
  *(a1 + 44) = a7;
  size = bboxes.size;
  *(a1 + 8) = bboxes.origin;
  *(a1 + 24) = size;
  *(a1 + 48) = v39;
  v92 = &unk_1F29E1260;
  if (v93)
  {
    CFRelease(v93);
  }

  v89 = &unk_1F29E1230;
  if (cf)
  {
    CFRelease(cf);
  }

  v86 = &unk_1F2A5F810;
  if (fonta)
  {
    CFRelease(fonta);
  }
}

void sub_1B32905CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CFTypeRef a25, uint64_t a26, uint64_t a27, CFTypeRef a28, uint64_t a29, uint64_t a30, CFTypeRef a31, uint64_t a32, uint64_t a33, uint64_t a34, CFTypeRef cf)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,void *>>>::operator()[abi:nn200100](1, v35);
  if (cf)
  {
    CFRelease(cf);
  }

  if (a28)
  {
    CFRelease(a28);
  }

  if (a25)
  {
    CFRelease(a25);
  }

  if (a31)
  {
    CFRelease(a31);
  }

  _Unwind_Resume(a1);
}

float *std::__hash_table<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::__unordered_map_hasher<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,md::SDFGlyphRenderer::CTFontKeyHash,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,true>,std::__unordered_map_equal<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,md::SDFGlyphRenderer::CTFontKeyHash,true>,std::allocator<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>>>::find<md::SDFGlyphRenderer::CTFontKey>(void *a1, uint64_t a2)
{
  v4 = CFHash(*(a2 + 8));
  v5 = *(a2 + 24);
  v6 = LODWORD(v5) - 0x61C8864680B583EBLL;
  if (v5 == 0.0)
  {
    v6 = 0x9E3779B97F4A7C15;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = ((v4 >> 2) + (v4 << 6) + v6) ^ v4;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = ((v4 >> 2) + (v4 << 6) + v6) ^ v4;
    if (v8 >= *&v7)
    {
      v11 = v8 % *&v7;
    }
  }

  else
  {
    v11 = v8 & (*&v7 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = *(i + 1);
    if (v14 == v8)
    {
      if (i[10] == *(a2 + 24) && CFEqual(*(i + 3), *(a2 + 8)))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::__hash_table<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::__unordered_map_hasher<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,md::SDFGlyphRenderer::CTFontKeyHash,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,true>,std::__unordered_map_equal<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,md::SDFGlyphRenderer::CTFontKeyHash,true>,std::allocator<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>>>::erase(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
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

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != a2);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
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

  if (v7 != v3)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v8 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
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

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
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

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *a2;
    }
  }

  *v6 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,void *>>>::operator()[abi:nn200100](1, a2);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    __p[2] = &unk_1F2A5F758;
    v3 = __p[3];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void md::TrafficIncidentLabelFeature::restyleFeature(md::TrafficIncidentLabelFeature *this, md::LabelManager *a2)
{
  md::TrafficIncidentLabelFeature::updateStyleAttributes(this, *(*(a2 + 21) + 48), 1);
  v4 = *(a2 + 37);

  md::LabelFeatureStyler::restyleFeature(v4, this);
}

uint64_t md::TrafficIncidentLabelFeature::debugString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v42);
  LODWORD(v39.__r_.__value_.__l.__data_) = *a3;
  *(v39.__r_.__value_.__r.__words + 4) = -1;
  HIDWORD(v39.__r_.__value_.__r.__words[1]) = -1;
  v39.__r_.__value_.__r.__words[2] = 0;
  md::LabelFeature::debugString(a1, a2, &v39, a4, __p);
  if (v41 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v41 >= 0)
  {
    v11 = HIBYTE(v41);
  }

  else
  {
    v11 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v42, v10, v11);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v42, "  TrafficIncident:\n", 19);
  v12 = v42;
  *(&v42 + *(v42 - 24) + 8) = *(&v42 + *(v42 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v44[0].__locale_ + *(v12 - 24)) = 1;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v42, " DataElevation=", 15);
  v13 = std::ostream::operator<<();
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, " minZoom=", 9);
  v15 = MEMORY[0x1B8C61C80](v14, *(a1 + 328));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, "\n", 1);
  v16 = *(a1 + 80);
  if (v16 && *(v16 + 125) == 1 && *(v16 + 136) != 255)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v42, " [style(icon)]", 14);
    v17 = *(a1 + 80);
    v18 = *(v17 + 296);
    if (!v18)
    {
      v19 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a1 + 80), 0);
      v18 = *v19;
      *(v17 + 296) = *v19;
    }

    v20 = *(v18 + 88);
    if (v20 > 0xB)
    {
      v21 = "";
    }

    else
    {
      v21 = off_1E7B3DE78[v20];
    }

    std::string::basic_string[abi:nn200100]<0>(&v39, v21);
    v22 = std::string::insert(&v39, 0, " style:", 7uLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v41 = v22->__r_.__value_.__r.__words[2];
    *__p = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (v41 >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    if (v41 >= 0)
    {
      v25 = HIBYTE(v41);
    }

    else
    {
      v25 = __p[1];
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v42, v24, v25);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v26 = *(a1 + 80);
    v27 = *(v26 + 296);
    if (!v27)
    {
      v28 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v26, 0);
      v27 = *v28;
      *(v26 + 296) = *v28;
    }

    v29 = *(v27 + 92) + 1;
    if (v29 > 0xAu)
    {
      v30 = "";
    }

    else
    {
      v30 = off_1E7B3DF38[v29];
    }

    std::string::basic_string[abi:nn200100]<0>(&v39, v30);
    v31 = std::string::insert(&v39, 0, " size:", 6uLL);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v41 = v31->__r_.__value_.__r.__words[2];
    *__p = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    if (v41 >= 0)
    {
      v33 = __p;
    }

    else
    {
      v33 = __p[0];
    }

    if (v41 >= 0)
    {
      v34 = HIBYTE(v41);
    }

    else
    {
      v34 = __p[1];
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v42, v33, v34);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v42, "\n", 1);
  }

  if ((v49 & 0x10) != 0)
  {
    v36 = v48;
    if (v48 < v45)
    {
      v48 = v45;
      v36 = v45;
    }

    locale = v44[4].__locale_;
  }

  else
  {
    if ((v49 & 8) == 0)
    {
      v35 = 0;
      a5[23] = 0;
      goto LABEL_56;
    }

    locale = v44[1].__locale_;
    v36 = v44[3].__locale_;
  }

  v35 = v36 - locale;
  if ((v36 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v35 >= 0x17)
  {
    operator new();
  }

  a5[23] = v35;
  if (v35)
  {
    memmove(a5, locale, v35);
  }

LABEL_56:
  a5[v35] = 0;
  v42 = *MEMORY[0x1E69E54E8];
  *(&v42 + *(v42 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v43 = MEMORY[0x1E69E5548] + 16;
  if (v47 < 0)
  {
    operator delete(v46);
  }

  v43 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v44);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v50);
}

void sub_1B3290FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  a22 = *MEMORY[0x1E69E54E8];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a23 = MEMORY[0x1E69E5548] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a39);
  _Unwind_Resume(a1);
}

_BYTE *md::TrafficIncidentLabelFeature::newRootPart(uint64_t a1, uint64_t a2, uint64_t a3, md::LabelStyle *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((*(a3 + 1358) & 1) == 0)
  {
    v10 = atomic_load((a3 + 1328));
    if ((v10 & 1) == 0 || (*(a3 + 1333) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    v23 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    __p = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    LOBYTE(v22) = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = a1 + 336;
    md::PointLabelFeatureBase::newBalloonWithDotPart(&v18);
  }

  v8 = *(a4 + 37);
  if (!v8)
  {
    v9 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a4, 0);
    v8 = *v9;
    *(a4 + 37) = *v9;
  }

  if (*(v8 + 88) == 10)
  {
    goto LABEL_8;
  }

LABEL_9:
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v17[3] = 0;
  md::LabelStyle::pointIcon(&v18, a4, a2, a3, a1 + 336, 0, 0, 0, 65280, 0, v15);
  v11 = std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v17);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (v18)
  {
    v12 = mdm::zone_mallocator::instance(v11);
    v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v12, 0x340uLL);
    md::IconLabelPart::IconLabelPart(v13, &v18, 1, a4);
    *v13 = &unk_1F2A59C70;
    v13[557] = 1;
    v13[712] = 1;
  }

  else
  {
    v13 = 0;
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (v13)
  {
    (*(*v13 + 176))(v13, 1);
  }

  return v13;
}

void sub_1B3291368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, mdm::zone_mallocator *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v39 + 128);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a28 == 1)
  {
    if (a25)
    {
      operator delete(a25);
    }
  }

  _Unwind_Resume(a1);
}

void ggl::BuildingFlat::CompressedMeshPipelineSetup::~CompressedMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::SolidRibbon::PipelineSetup::~PipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::SolidRibbon::PipelineSetup::PipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::PipelineSetup(a1, a2, a3);
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    ggl::PipelineSetup::PipelineSetup(a1, a2, 0);
  }

  *a1 = &unk_1F2A4E5E8;
  return a1;
}

uint64_t md::Venue::buildingInProximityToWorldPoint(uint64_t a1, uint64_t a2, float64x2_t *a3, double a4)
{
  if (a1 == a2)
  {
    return a2;
  }

  v5 = a1;
  v6 = a1 + 120;
  if (a1 + 120 != a2)
  {
    v8 = geo::ConvexHull2<double>::distanceSquaredTo(*(a1 + 80), *(a1 + 88), a3, a4);
    v9 = v8;
    do
    {
      v8 = geo::ConvexHull2<double>::distanceSquaredTo(*(v6 + 80), *(v6 + 88), a3, v8);
      v10 = v8 < v9;
      v9 = fmin(v8, v9);
      if (v10)
      {
        v5 = v6;
      }

      v6 += 120;
    }

    while (v6 != a2);
  }

  return v5;
}

double *md::mun::lookAtOrientationWithPitch(double *a1, uint64_t a2, uint64_t a3, float64_t a4, int64x2_t a5)
{
  for (i = 0; i != 24; i += 8)
  {
    *&v27[i] = *(a3 + i) - *(a2 + i);
  }

  v7 = gm::Matrix<double,3,1>::normalized<int,void>(v27);
  v8 = 0;
  *v33 = v7;
  v33[1] = v9;
  v33[2] = v10;
  do
  {
    *&v27[v8 * 8] = -*&v33[v8];
    ++v8;
  }

  while (v8 != 3);
  v23 = *&v27[8];
  v24 = *v27;
  *&v11.f64[0] = vdupq_laneq_s64(*&v27[8], 1).u64[0];
  v11.f64[1] = *v27;
  *&v12.f64[0] = vdupq_laneq_s64(a5, 1).u64[0];
  v12.f64[1] = a4;
  v13 = vmlaq_f64(vnegq_f64(vmulq_f64(v12, *&v27[8])), a5, v11);
  v11.f64[0] = -(*v27 * *a5.i64 - *&v27[8] * a4);
  *v27 = v13;
  *&v27[16] = v11.f64[0];
  *v27 = gm::Matrix<double,3,1>::normalized<int,void>(v27);
  *&v27[8] = v14;
  _V5.D[1] = v23.f64[1];
  *&v27[16] = v16;
  v28 = -(vmuld_lane_f64(v14, v23, 1) - v16 * v23.f64[0]);
  __asm { FMLA            D4, D0, V5.D[1] }

  v29 = _D4;
  v30 = -(*v27 * v23.f64[0] - v14 * v24);
  v31 = v24;
  v32 = v23;
  return gm::quaternionFromRotationMatrix<double>(a1, v27);
}

BOOL md::mun::isPhotoVisible(uint64_t a1, uint64_t a2, double a3, __n128 a4)
{
  geo::RigidTransform<double,float>::inverse(v30, a2, a3, a4);
  v6 = 0;
  v34 = *v30;
  v35 = *&v30[16];
  do
  {
    *&v36[v6] = *&v30[4 * v6 + 24];
    ++v6;
  }

  while (v6 != 3);
  *&v36[3] = v31;
  geo::Frustum<double>::transformed(v30, a1, &v34);
  v7 = 0;
  v8 = v30;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v10 = *&v8[8 * i];
      *(&v38 + i) = v10;
    }

    v11 = &v33[v7];
    v12 = *&v30[32 * v7 + 24];
    *v11 = v38;
    *(v11 + 2) = v39;
    *(v11 + 3) = v12;
    ++v7;
    v8 += 32;
  }

  while (v7 != 6);
  v13 = 0;
  v14 = &v32;
  do
  {
    for (j = 0; j != 3; ++j)
    {
      v16 = *&v14[j];
      *(&v38 + j) = v16;
    }

    v17 = &v33[6] + 12 * v13;
    *v17 = v38;
    *(v17 + 2) = v39;
    ++v13;
    v14 += 3;
  }

  while (v13 != 8);
  v18 = 0;
  v19 = a2 + 140;
  v20 = 1;
  do
  {
    v21 = 0;
    v22 = (&unk_1B3418010 + 16 * v18);
    v23 = *v22;
    v24 = v22[1];
    v25 = &v33[6] + 12 * v23;
    do
    {
      *(&v38 + v21) = *(&v33[6] + 12 * v24 + v21) - *&v25[v21];
      v21 += 4;
    }

    while (v21 != 12);
    v26 = 0;
    *v30 = *v25;
    *&v30[8] = *(v25 + 2);
    *&v30[12] = v38;
    *&v30[20] = v39;
    v27 = v19 + 12 * v23;
    v28 = v19 + 12 * v24;
    do
    {
      *(&v42 + v26) = *(v28 + v26) - *(v27 + v26);
      v26 += 4;
    }

    while (v26 != 12);
    v38 = *v27;
    v39 = *(v27 + 8);
    v40 = v42;
    v41 = v43;
    LODWORD(v42) = 0;
    v37 = 0;
    if (geo::Intersect::internal::intersection<float,std::array<gm::Plane3<float>,6ul>>(v33, &v38, &v42, &v37))
    {
      break;
    }

    if (geo::Intersect::internal::intersection<float,std::array<gm::Plane3<float>,6ul>>(a2 + 44, v30, &v42, &v37))
    {
      break;
    }

    v20 = v18++ < 0xB;
  }

  while (v18 != 12);
  return v20;
}

uint64_t geo::Intersect::internal::intersection<float,std::array<gm::Plane3<float>,6ul>>(uint64_t a1, uint64_t a2, float *a3, float *a4)
{
  v4 = 0;
  *a3 = 0.0;
  *a4 = 1.0;
  v5 = 1.0;
  for (i = a1; ; i += 16)
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      v8 = v8 + (*(a2 + 12 + v7) * *(i + v7));
      v7 += 4;
    }

    while (v7 != 12);
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (*(a2 + v9) * *(i + v9));
      v9 += 4;
    }

    while (v9 != 12);
    v11 = v10 + *(a1 + v4 + 12);
    v12 = v8 <= 0.0;
    if (v8 == 0.0)
    {
      if (v11 < 0.0)
      {
        return 0;
      }
    }

    else
    {
      v13 = -v11 / v8;
      if (v12)
      {
        v5 = fminf(v13, v5);
        *a4 = v5;
      }

      else
      {
        *a3 = fmaxf(*a3, v13);
        v5 = *a4;
      }
    }

    if (*a3 > v5)
    {
      break;
    }

    v4 += 16;
    if (v4 == 96)
    {
      return 1;
    }
  }

  return 0;
}