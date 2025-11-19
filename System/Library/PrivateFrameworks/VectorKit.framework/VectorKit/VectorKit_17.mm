uint64_t *std::unique_ptr<md::LabelExternalMeshModerator>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::mutex::~mutex((v2 + 64));
    v4 = (v2 + 40);
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v4);
    std::vector<md::LabelExternalMesh *,geo::allocator_adapter<md::LabelExternalMesh *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 8));
    MEMORY[0x1B8C62190](v2, 0x10A0C407F06D769);
  }

  return a1;
}

void std::vector<md::LabelExternalMesh *,geo::allocator_adapter<md::LabelExternalMesh *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalMesh *>(v2, v1);
  }
}

md::LabelExternalObjectsModerator *std::__shared_ptr_pointer<md::LabelExternalObjectsModerator *,std::shared_ptr<md::LabelExternalObjectsModerator>::__shared_ptr_default_delete<md::LabelExternalObjectsModerator,md::LabelExternalObjectsModerator>,std::allocator<md::LabelExternalObjectsModerator>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::LabelExternalObjectsModerator::~LabelExternalObjectsModerator(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::LabelExternalObjectsModerator::~LabelExternalObjectsModerator(md::LabelExternalObjectsModerator *this)
{
  v2 = *(this + 2);
  std::mutex::lock(v2);
  v2[1].__m_.__sig = 0;
  std::mutex::unlock(v2);
  std::mutex::~mutex((this + 368));
  std::mutex::~mutex((this + 304));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,mdm::zone_mallocator>>::__deallocate_node(*(this + 34));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 248));
  std::__hash_table<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,std::__unordered_map_hasher<GeoCodecsTransitLink const*,std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,std::hash<GeoCodecsTransitLink const*>,std::equal_to<GeoCodecsTransitLink const*>,true>,std::__unordered_map_equal<GeoCodecsTransitLink const*,std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,std::equal_to<GeoCodecsTransitLink const*>,std::hash<GeoCodecsTransitLink const*>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,mdm::zone_mallocator>>::__deallocate_node(*(this + 27));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 192));
  std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*(this + 21));
  std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*(this + 17));
  std::__hash_table<std::shared_ptr<md::LabelExternalIcon>,std::hash<std::shared_ptr<md::LabelExternalIcon>>,std::equal_to<std::shared_ptr<md::LabelExternalIcon>>,geo::allocator_adapter<std::shared_ptr<md::LabelExternalIcon>,mdm::zone_mallocator>>::__deallocate_node(*(this + 12));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 72));
  v5 = (this + 40);
  std::vector<std::shared_ptr<md::LabelCreateExternalIconRequest>,geo::allocator_adapter<std::shared_ptr<md::LabelCreateExternalIconRequest>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1B28E970C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::mutex::~mutex((v10 + 368));
  std::mutex::~mutex((v10 + 304));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,mdm::zone_mallocator>>::__deallocate_node(*(v10 + 272));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v10 + 248));
  std::__hash_table<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,std::__unordered_map_hasher<GeoCodecsTransitLink const*,std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,std::hash<GeoCodecsTransitLink const*>,std::equal_to<GeoCodecsTransitLink const*>,true>,std::__unordered_map_equal<GeoCodecsTransitLink const*,std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,std::equal_to<GeoCodecsTransitLink const*>,std::hash<GeoCodecsTransitLink const*>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,mdm::zone_mallocator>>::__deallocate_node(*(v10 + 216));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v10 + 192));
  std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*(v10 + 168));
  std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*(v10 + 136));
  std::__hash_table<std::shared_ptr<md::LabelExternalIcon>,std::hash<std::shared_ptr<md::LabelExternalIcon>>,std::equal_to<std::shared_ptr<md::LabelExternalIcon>>,geo::allocator_adapter<std::shared_ptr<md::LabelExternalIcon>,mdm::zone_mallocator>>::__deallocate_node(*(v10 + 96));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v10 + 72));
  a10 = (v10 + 40);
  std::vector<std::shared_ptr<md::LabelCreateExternalIconRequest>,geo::allocator_adapter<std::shared_ptr<md::LabelCreateExternalIconRequest>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v12 = *(v10 + 24);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(v10 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }

      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,std::__unordered_map_hasher<GeoCodecsTransitLink const*,std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,std::hash<GeoCodecsTransitLink const*>,std::equal_to<GeoCodecsTransitLink const*>,true>,std::__unordered_map_equal<GeoCodecsTransitLink const*,std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,std::equal_to<GeoCodecsTransitLink const*>,std::hash<GeoCodecsTransitLink const*>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }

      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*a1);
    v2 = std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(a1[1]);
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

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::__hash_table<std::shared_ptr<md::LabelExternalIcon>,std::hash<std::shared_ptr<md::LabelExternalIcon>>,std::equal_to<std::shared_ptr<md::LabelExternalIcon>>,geo::allocator_adapter<std::shared_ptr<md::LabelExternalIcon>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::vector<std::shared_ptr<md::LabelCreateExternalIconRequest>,geo::allocator_adapter<std::shared_ptr<md::LabelCreateExternalIconRequest>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelCreateExternalIconRequest>>(v5, v3);
  }
}

void md::LabelTransitSupport::~LabelTransitSupport(md::LabelTransitSupport *this)
{
  *this = &unk_1F2A1BC30;
  *(this + 1) = &unk_1F2A1BC78;
  md::LabelsState::removeObserver(*(*(this + 2) + 168), (this + 8));
  *(*(*(this + 2) + 168) + 56) = *(*(*(this + 2) + 168) + 96);
  md::LabelTransitSupport::reset(this);
  std::__hash_table<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,md::LabelTransitSupport::TransitLineColorKeyHash,std::equal_to<std::pair<unsigned long long,BOOL>>,true>,std::__unordered_map_equal<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::equal_to<std::pair<unsigned long long,BOOL>>,md::LabelTransitSupport::TransitLineColorKeyHash,true>,geo::allocator_adapter<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,mdm::zone_mallocator>>::__deallocate_node(*(this + 49));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 368));
  v2 = *(this + 44);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 42);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 38) = &unk_1F2A1BCE0;

  std::__tree<std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,std::__map_value_compare<std::shared_ptr<md::LabelExternalRoadFeature>,std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,md::LabelExternalRoadFeatureLess,true>,geo::allocator_adapter<std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,mdm::zone_mallocator>>::destroy(*(this + 35));
  v5 = (this + 240);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 216);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(this + 23));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 160));
  v5 = (this + 128);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  *(this + 11) = &unk_1F2A1BCC0;

  *(this + 8) = &unk_1F2A580E8;
  *(this + 5) = &unk_1F2A580E8;

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

{
  md::LabelTransitSupport::~LabelTransitSupport(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B28E9BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,md::LabelTransitSupport::TransitLineColorKeyHash,std::equal_to<std::pair<unsigned long long,BOOL>>,true>,std::__unordered_map_equal<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::equal_to<std::pair<unsigned long long,BOOL>>,md::LabelTransitSupport::TransitLineColorKeyHash,true>,geo::allocator_adapter<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,mdm::zone_mallocator>>::__deallocate_node(*(v10 + 392));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v10 + 368));
  v12 = *(v10 + 352);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(v10 + 336);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  *(v10 + 304) = &unk_1F2A1BCE0;

  std::__tree<std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,std::__map_value_compare<std::shared_ptr<md::LabelExternalRoadFeature>,std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,md::LabelExternalRoadFeatureLess,true>,geo::allocator_adapter<std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,mdm::zone_mallocator>>::destroy(*(v10 + 280));
  a10 = (v10 + 240);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 216);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a10);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(v10 + 184));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v10 + 160));
  a10 = (v10 + 128);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  *(v10 + 88) = &unk_1F2A1BCC0;

  *(v10 + 64) = &unk_1F2A580E8;
  *(v10 + 40) = &unk_1F2A580E8;

  v14 = *(v10 + 32);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  _Unwind_Resume(a1);
}

md::LabelsStateObserver ***md::LabelsState::removeObserver(md::LabelsStateObserver ***this, md::LabelsStateObserver *a2)
{
  v3 = *this;
  v2 = this[1];
  if (*this != v2)
  {
    while (*v3 != a2)
    {
      if (++v3 == v2)
      {
        return this;
      }
    }

    if (v3 != v2)
    {
      v4 = v3 + 1;
      if (v3 + 1 != v2)
      {
        do
        {
          if (*v4 != a2)
          {
            *v3++ = *v4;
          }

          ++v4;
        }

        while (v4 != v2);
        v2 = this[1];
      }
    }
  }

  if (v3 != v2)
  {
    this[1] = v3;
  }

  return this;
}

void md::LabelTransitSupport::reset(md::LabelTransitSupport *this)
{
  (*(*this + 8))(this, 0);
  md::LabelTransitSupport::setRoute(this, 0);
  (**this)(this, 0);

  std::__hash_table<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,md::LabelTransitSupport::TransitLineColorKeyHash,std::equal_to<std::pair<unsigned long long,BOOL>>,true>,std::__unordered_map_equal<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::equal_to<std::pair<unsigned long long,BOOL>>,md::LabelTransitSupport::TransitLineColorKeyHash,true>,geo::allocator_adapter<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,mdm::zone_mallocator>>::clear(this + 368);
}

void md::LabelTransitSupport::setRouteContext(md::LabelTransitSupport *this, VKRouteContext *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(this + 113))
  {
    v5 = *(this + 6);
    if (v5 != v3)
    {
      geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(this + 40, v3);
      if (v4 && v5)
      {
        *(this + 114) = 1;
        *(*(this + 2) + 3352) = 1;
      }

      memset(v54, 0, sizeof(v54));
      v50 = 0;
      v51 = 0;
      v52 = 0;
      md::LabelTransitSupport::setExternalTransitNodeFeatures(this, v54, &v50);
      __src = &v50;
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&__src);
      v50 = v54;
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v50);
      if (v4)
      {
        v6 = [[VKRouteContextObserverThunk alloc] initWithRouteContext:v4 transitSupport:this];
        v7 = v6;
        objc_storeStrong(this + 12, v6);

        *(this + 112) = 1;
        v8 = [(VKRouteContext *)v4 routeInfo];
        v9 = [v8 route];
        md::LabelTransitSupport::setRoute(this, v9);

        geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(*(this + 41), v4);
        v50 = 0;
        v51 = 0;
        v52 = 0;
        __src = 0;
        v48 = 0;
        v49 = 0;
        md::LabelTransitRoute::generateTransitNodeFeatures(*(this + 41));
        v10 = *(this + 2);
        if (*(*(v10 + 53) + 26) != 7)
        {
          v11 = *(this + 41);
          std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((v11 + 312));
          v12 = [*(v11 + 8) routeInfo];
          v13 = *(v11 + 32);
          v14 = v13;
          v46 = v12;
          if (v12)
          {
            v15 = [v13 legs];
            v16 = [v15 count];

            if (v16)
            {
              v17 = [v14 legs];
              v18 = [v17 objectAtIndexedSubscript:0];
              v19 = [v18 origin];
              v20 = [v46 waypointInfoForWaypoint:v19];

              if (v20)
              {
                v21 = [(VKRouteWaypointInfo *)v20 waypoint];
                v22 = [v21 isCurrentLocation];

                if ((v22 & 1) == 0)
                {
                  [(VKRouteWaypointInfo *)v20 setIsOnSelectedRoute:1];
                  md::LabelTransitRoute::buildFeatureForWaypoint(&v53, v10, v20);
                }
              }

              v24 = [v14 legs];
              v25 = [v14 legs];
              v26 = [v24 objectAtIndexedSubscript:{objc_msgSend(v25, "count") - 1}];
              v27 = [v26 destination];
              v28 = [v46 waypointInfoForWaypoint:v27];

              if (v28)
              {
                [(VKRouteWaypointInfo *)v28 setIsOnSelectedRoute:1];
                md::LabelTransitRoute::buildFeatureForWaypoint(&v53, v10, v28);
              }

              v30 = *(v11 + 312);
              v29 = *(v11 + 320);
              v31 = v29 - v30;
              v32 = (v29 - v30) >> 4;
              if (v32 >= 1)
              {
                v33 = v48;
                if (v49 - v48 >= v31)
                {
                  for (; v30 != v29; v33 += 16)
                  {
                    *v33 = *v30;
                    v36 = *(v30 + 1);
                    *(v33 + 1) = v36;
                    if (v36)
                    {
                      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
                    }

                    v30 += 16;
                  }

                  v48 = v33;
                }

                else
                {
                  v34 = v32 + ((v48 - __src) >> 4);
                  if (v34 >> 60)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  if ((v49 - __src) >> 3 > v34)
                  {
                    v34 = (v49 - __src) >> 3;
                  }

                  if ((v49 - __src) >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v35 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v35 = v34;
                  }

                  if (v35)
                  {
                    if (!(v35 >> 60))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v37 = 16 * ((v48 - __src) >> 4);
                  v38 = (v37 + v31);
                  v39 = v37;
                  do
                  {
                    *v39 = *v30;
                    v40 = *(v30 + 1);
                    *(v39 + 1) = v40;
                    if (v40)
                    {
                      atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
                    }

                    v39 += 16;
                    v30 += 16;
                  }

                  while (v39 != v38);
                  v41 = v48 - v33;
                  memcpy(v38, v33, v48 - v33);
                  v42 = &v38[v41];
                  v48 = v33;
                  v43 = __src;
                  v44 = v33 - __src;
                  v45 = (v37 - (v33 - __src));
                  memcpy(v45, __src, v44);
                  __src = v45;
                  v48 = v42;
                  v49 = 0;
                  if (v43)
                  {
                    operator delete(v43);
                  }
                }
              }
            }
          }
        }

        md::LabelTransitSupport::setExternalTransitNodeFeatures(this, &v50, &__src);
        v54[0] = &__src;
        std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](v54);
        v54[0] = &v50;
        std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](v54);
      }

      else
      {
        v23 = *(this + 12);
        if (v23)
        {
          *(this + 12) = 0;
        }

        md::LabelTransitSupport::setRoute(this, 0);
      }
    }
  }

  else
  {
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(this + 64, v3);
  }
}

void sub_1B28EA4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void ***a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  a17 = &a11;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a17);
  a11 = &a14;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a11);

  _Unwind_Resume(a1);
}

GEOComposedRoute *md::LabelTransitSupport::setRoute(md::LabelTransitSupport *this, GEOComposedRoute *a2)
{
  v7 = a2;
  v3 = *(this + 42);
  *(this + 41) = 0;
  *(this + 42) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 90);
  if ((v4 + 1) > 1)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 1;
  }

  *(this + 90) = v5;
  result = v7;
  if (v7)
  {
    operator new();
  }

  return result;
}

void sub_1B28EA6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);

  _Unwind_Resume(a1);
}

void md::LabelTransitSupport::setRouteLine(md::LabelTransitSupport *this, VKRouteLine *a2)
{
  v3 = a2;
  v4 = *(this + 43);
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  if (v5 != v3)
  {
    if (v5)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = !v6;
    v8 = *(this + 39);
    if (v8)
    {
      *(this + 39) = 0;
    }

    if (v7)
    {
      *(this + 114) = 1;
      *(*(this + 2) + 3353) = 1;
    }

    v9 = *(this + 44);
    *(this + 43) = 0;
    *(this + 44) = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    memset(v10, 0, sizeof(v10));
    md::LabelTransitSupport::setExternalTransitShieldFeatures(this, v10);
    v11 = v10;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v11);
    if (!v5 && v3 || (std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 30), std::__tree<std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,std::__map_value_compare<std::shared_ptr<md::LabelExternalRoadFeature>,std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,md::LabelExternalRoadFeatureLess,true>,geo::allocator_adapter<std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,mdm::zone_mallocator>>::destroy(*(this + 35)), *(this + 37) = 0, *(this + 34) = this + 280, *(this + 35) = 0, v3))
    {
      operator new();
    }
  }
}

void sub_1B28EA900(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v4);
  operator delete(v7);

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,md::LabelTransitSupport::TransitLineColorKeyHash,std::equal_to<std::pair<unsigned long long,BOOL>>,true>,std::__unordered_map_equal<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::equal_to<std::pair<unsigned long long,BOOL>>,md::LabelTransitSupport::TransitLineColorKeyHash,true>,geo::allocator_adapter<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,mdm::zone_mallocator>>::__deallocate_node(mdm::zone_mallocator *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = mdm::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *>>(v3, v1);
      v1 = v2;
    }

    while (v2);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,std::__map_value_compare<std::shared_ptr<md::LabelExternalRoadFeature>,std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,md::LabelExternalRoadFeatureLess,true>,geo::allocator_adapter<std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,std::__map_value_compare<std::shared_ptr<md::LabelExternalRoadFeature>,std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,md::LabelExternalRoadFeatureLess,true>,geo::allocator_adapter<std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,std::__map_value_compare<std::shared_ptr<md::LabelExternalRoadFeature>,std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,md::LabelExternalRoadFeatureLess,true>,geo::allocator_adapter<std::__value_type<std::shared_ptr<md::LabelExternalRoadFeature>,std::shared_ptr<md::LabelFeature>>,mdm::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[7];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = a1[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = mdm::zone_mallocator::instance(v3);
    v5 = pthread_rwlock_rdlock((v4 + 32));
    if (v5)
    {
      geo::read_write_lock::logFailure(v5, "read lock", v6);
    }

    atomic_fetch_add((v4 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v4, a1);

    geo::read_write_lock::unlock((v4 + 32));
  }
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(mdm::zone_mallocator *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = mdm::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<unsigned long long,void *>>(v3, v1);
      v1 = v2;
    }

    while (v2);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v3, v2);
  }

  return a1;
}

void md::StandardLabeler::~StandardLabeler(md::StandardLabeler *this)
{
  *this = &unk_1F2A1EB50;
  v2 = (this + 8);
  *(this + 1) = &unk_1F2A1ED38;
  *(this + 2) = &unk_1F2A1ED80;
  v3 = *(*(this + 3) + 168);
  *(v3 + 64) = *(v3 + 104);
  md::LabelsState::removeObserver(v3, v2);
  md::LabelPool::clear(*(this + 6));
  v4 = *(this + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 38);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *(this + 34) = &unk_1F2A567C0;

  v6 = *(this + 33);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 31);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 26);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 24);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  *(this + 20) = &unk_1F2A3D0C8;

  v10 = (this + 136);
  std::vector<std::unique_ptr<md::GenericLabelCollidableItem>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v10 = (this + 104);
  std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v10 = (this + 72);
  std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v10);
  std::unique_ptr<md::LabelPool>::~unique_ptr[abi:nn200100](this + 6);
  std::unique_ptr<md::ScreenLabelFeatureSupport>::~unique_ptr[abi:nn200100](this + 5);
  std::unique_ptr<md::LabelCustomFeatureSupport>::~unique_ptr[abi:nn200100](this + 4);
}

{
  md::StandardLabeler::~StandardLabeler(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B28EAC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *(v10 + 320);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = *(v10 + 304);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  *(v10 + 272) = &unk_1F2A567C0;

  v15 = *(v10 + 264);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = *(v10 + 248);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  v17 = *(v10 + 208);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  v18 = *(v10 + 192);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  *(v10 + 160) = &unk_1F2A3D0C8;

  a10 = (v10 + 136);
  std::vector<std::unique_ptr<md::GenericLabelCollidableItem>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 104);
  std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 72);
  std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  std::unique_ptr<md::LabelPool>::~unique_ptr[abi:nn200100](v11);
  std::unique_ptr<md::ScreenLabelFeatureSupport>::~unique_ptr[abi:nn200100]((v10 + 40));
  std::unique_ptr<md::LabelCustomFeatureSupport>::~unique_ptr[abi:nn200100]((v10 + 32));
  _Unwind_Resume(a1);
}

void md::LabelPool::clear(int64x2_t *this)
{
  v3 = this[1].i64[0];
  v4 = this[1].i64[1];
  i64 = this[1].i64;
  while (v3 != v4)
  {
    v5 = *v3;
    v3 += 2;
    *(v5 + 128) = 0;
    md::LabelMapTile::deactivateLabels(v5, 1);
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](i64);
  this[3] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  this[4] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  for (i = this[6].i64[1]; i; i = *i)
  {
    md::LabelMapTile::deactivateLabels(*(i + 16), 1);
  }

  std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::clear(this[5].i64);
  for (j = this[10].i64[0]; j; j = *j)
  {
    md::LabelMapTile::broadcastLabelDeactivate(*(j + 16));
  }

  std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::clear(&this[8].i64[1]);
  v8 = this[42].i64[0];
  v9 = &this[42].i8[8];
  if (v8 != &this[42].u64[1])
  {
    do
    {
      v10 = v8[4];
      if (atomic_fetch_add((v10 + 1384), 0xFFu) == 1)
      {
        if (*(v10 + 1352) == 1)
        {
          *(v10 + 1349) = 1;
          *(v10 + 1312) = 0;
        }

        else
        {
          md::Label::updateStateMachineForStaging(v10, 1, 37);
        }
      }

      v11 = v8[1];
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
          v12 = v8[2];
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v8 = v12;
    }

    while (v12 != v9);
  }

  std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::destroy(this[42].i64[1]);
  v14 = this[12].i64[1];
  this[43].i64[1] = 0;
  this[42].i64[0] = v9;
  this[42].i64[1] = 0;
  this[47].i8[8] = 0;
  std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,mdm::zone_mallocator>>::destroy(v14);
  this[13].i64[1] = 0;
  this[12].i64[0] = &this[12].i64[1];
  this[12].i64[1] = 0;
  v16 = this[14].i64[0];
  v17 = &this[14].i8[8];
  if (v16 != &this[14].u64[1])
  {
    do
    {
      v18 = v16[6];
      if (v18 != this[44].i64[0])
      {
        *(v18 + 1340) = 0;
        if (*(v18 + 1339))
        {
          *(v18 + 1339) = 0;
          md::Label::clearAnimation(v18);
          v18 = v16[6];
        }

        md::Label::setActive(v18, 0, v15);
      }

      v19 = v16[1];
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
          v20 = v16[2];
          v13 = *v20 == v16;
          v16 = v20;
        }

        while (!v13);
      }

      v16 = v20;
    }

    while (v20 != v17);
  }

  std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::clear(this[16].i64);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::clear(this[23].i64);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::clear(&this[26].i64[1]);
  std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::destroy(this[14].i64[1]);
  this[15].i64[1] = 0;
  this[14].i64[0] = v17;
  this[14].i64[1] = 0;
  std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::destroy(this[34].i64[1]);
  this[35].i64[1] = 0;
  this[34].i64[0] = &this[34].i64[1];
  this[34].i64[1] = 0;
  this[47].i8[6] = 0;
  if (this[36].i64[0] != this[36].i64[1])
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this[36].i64);
    ++this[46].i32[3];
  }
}

void std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

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

void std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,mdm::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[7];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,void *>>(v3, a1);
  }
}

void std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::clear(uint64_t a1)
{
  if (*(a1 + 40))
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
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

void std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[7];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,void *>>(v3, a1);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::clear(uint64_t a1)
{
  if (*(a1 + 40))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
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

void std::vector<std::unique_ptr<md::GenericLabelCollidableItem>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<md::GenericLabelCollidableItem>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t *std::unique_ptr<md::LabelPool>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 728);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 712);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::destroy(*(v2 + 680));
    std::__function::__value_func<BOOL ()(VKTrafficIncidentFeature *)>::~__value_func[abi:nn200100](v2 + 640);
    v16 = (v2 + 576);
    std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v16);
    std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::destroy(*(v2 + 552));
    std::mutex::~mutex((v2 + 480));
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::~__hash_table(v2 + 424);
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::~__hash_table(v2 + 368);
    v6 = *(v2 + 336);
    if (v6)
    {
      do
      {
        v7 = *v6;
        v8 = v6[3];
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        v9 = mdm::zone_mallocator::instance(v8);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *>>(v9, v6);
        v6 = v7;
      }

      while (v7);
    }

    v10 = *(v2 + 312);
    *(v2 + 312) = 0;
    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *>(v11, v10);
    }

    std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::~__hash_table(v2 + 256);
    std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::destroy(*(v2 + 232));
    std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,mdm::zone_mallocator>>::destroy(*(v2 + 200));
    std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::~__hash_table(v2 + 136);
    std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::~__hash_table(v2 + 80);
    if (*(v2 + 16))
    {
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((v2 + 16));
      v12 = *(v2 + 16);
      v14 = mdm::zone_mallocator::instance(v13);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelMapTile>>(v14, v12);
    }

    MEMORY[0x1B8C62190](v2, 0x10A0C405388D068);
  }

  return a1;
}

void std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::Label>>(v5, v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *>(v4, v3);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(VKTrafficIncidentFeature *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *>(v4, v3);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = *(v1 + 7);
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      if (v1[39] < 0)
      {
        v4 = *(v1 + 2);
        v5 = mdm::zone_mallocator::instance(v3);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
      }

      v6 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *>>(v6, v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *>(v4, v3);
  }

  return a1;
}

void std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t *std::unique_ptr<md::ScreenLabelFeatureSupport>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>,std::__map_value_compare<GEOComposedRoute const* {__strong},std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>,std::less<GEOComposedRoute const* {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>>>::destroy(*(v2 + 72));
    v4 = (v2 + 40);
    std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v4);
    v4 = (v2 + 8);
    std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
    MEMORY[0x1B8C62190](v2, 0x10A0C408C8C1E80);
  }

  return a1;
}

void std::__tree<std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>,std::__map_value_compare<GEOComposedRoute const* {__strong},std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>,std::less<GEOComposedRoute const* {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>,std::__map_value_compare<GEOComposedRoute const* {__strong},std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>,std::less<GEOComposedRoute const* {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>>>::destroy(*a1);
    std::__tree<std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>,std::__map_value_compare<GEOComposedRoute const* {__strong},std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>,std::less<GEOComposedRoute const* {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>((a1 + 4));

    operator delete(a1);
  }
}

uint64_t *std::unique_ptr<md::LabelCustomFeatureSupport>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::LabelsState::removeObserver(*(*(v2 + 16) + 168), (v2 + 8));
    v3 = *(v2 + 24);
    if (v3)
    {
      std::mutex::lock(*(v2 + 24));
      v3[1].__m_.__sig = 0;
      std::mutex::unlock(v3);
    }

    while (*(v2 + 96))
    {
      md::LabelCustomFeatureSupport::removeDataSourceInternal(v2, *(*(v2 + 72) + 32));
    }

    std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::__deallocate_node(*(v2 + 192));
    std::unique_ptr<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 168));
    v6 = (v2 + 136);
    std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
    std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 104));
    std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},md::LabelCustomFeatureProvider>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureDataSource}*,md::LabelCustomFeatureProvider,std::less<objc_object  {objcproto25VKCustomFeatureDataSource}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider,mdm::zone_mallocator>>::destroy(*(v2 + 80));
    v6 = (v2 + 40);
    std::vector<std::shared_ptr<md::LabelFeatureSupportCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelFeatureSupportCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
    v4 = *(v2 + 32);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    MEMORY[0x1B8C62190](v2, 0x10A1C40E757D53CLL);
  }

  return a1;
}

void sub_1B28EB7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::__deallocate_node(*(v10 + 192));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v10 + 168));
  a10 = (v10 + 136);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v10 + 104));
  std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},md::LabelCustomFeatureProvider>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureDataSource}*,md::LabelCustomFeatureProvider,std::less<objc_object  {objcproto25VKCustomFeatureDataSource}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider,mdm::zone_mallocator>>::destroy(*(v10 + 80));
  a10 = (v10 + 40);
  std::vector<std::shared_ptr<md::LabelFeatureSupportCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelFeatureSupportCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v12 = *(v10 + 32);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::__deallocate_node(mdm::zone_mallocator *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = mdm::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<md::LabelFeatureID,void *>>(v3, v1);
      v1 = v2;
    }

    while (v2);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},md::LabelCustomFeatureProvider>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureDataSource}*,md::LabelCustomFeatureProvider,std::less<objc_object  {objcproto25VKCustomFeatureDataSource}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider,mdm::zone_mallocator>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},md::LabelCustomFeatureProvider>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureDataSource}*,md::LabelCustomFeatureProvider,std::less<objc_object  {objcproto25VKCustomFeatureDataSource}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},md::LabelCustomFeatureProvider>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureDataSource}*,md::LabelCustomFeatureProvider,std::less<objc_object  {objcproto25VKCustomFeatureDataSource}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider,mdm::zone_mallocator>>::destroy(*(a1 + 1));
    md::LabelCustomFeatureProvider::~LabelCustomFeatureProvider((a1 + 40));

    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},md::LabelCustomFeatureProvider>,void *>>(v3, a1);
  }
}

void std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelMapTile *>(v2, v1);
  }
}

void std::vector<std::shared_ptr<md::LabelFeatureSupportCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelFeatureSupportCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelFeatureSupportCommand>>(v5, v3);
  }
}

void md::MapNavLabeler::~MapNavLabeler(md::MapNavLabeler *this)
{
  md::MapNavLabeler::~MapNavLabeler(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29EF778;
  *(this + 1) = &unk_1F29EF9C0;
  v2 = (this + 16);
  *(this + 2) = &unk_1F29EFAB0;
  v3 = *(*(this + 3) + 168);
  *(v3 + 32) = *(v3 + 80);
  md::LabelsState::removeObserver(v3, v2);
  v6 = (this + 768);
  std::vector<md::RouteFeatureAnchorWithPixelBounds,geo::allocator_adapter<md::RouteFeatureAnchorWithPixelBounds,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::vector<md::LabelBoundingRect,geo::allocator_adapter<md::LabelBoundingRect,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 736));
  std::unique_ptr<VKLabelNavArtworkCache>::reset[abi:nn200100](this + 91, 0);
  std::unique_ptr<md::LabelNavEtaLabeler>::reset[abi:nn200100](this + 90, 0);
  v6 = (this + 680);
  std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 648);
  std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 616);
  std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 584);
  std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 70));
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::~__hash_table(this + 512);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 42));
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::~__hash_table(this + 288);
  v4 = *(this + 15);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(this + 10) = &unk_1F2A580E8;

  std::unique_ptr<md::RouteAnnotationSupport>::reset[abi:nn200100](this + 9, 0);
  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  *(this + 4) = &unk_1F29EFBD8;
}

void std::vector<md::RouteFeatureAnchorWithPixelBounds,geo::allocator_adapter<md::RouteFeatureAnchorWithPixelBounds,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<md::RouteFeatureAnchorWithPixelBounds,geo::allocator_adapter<md::RouteFeatureAnchorWithPixelBounds,mdm::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteFeatureAnchorWithPixelBounds>(v5, v3);
  }
}

void std::vector<md::LabelBoundingRect,geo::allocator_adapter<md::LabelBoundingRect,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelBoundingRect>(v2, v1);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 56;
        std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,mdm::zone_mallocator>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,mdm::zone_mallocator>>::destroy(*(a1 + 1));
    v4 = (a1 + 40);
    std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>::__destroy_vector::operator()[abi:nn200100](&v4);

    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,void *>>(v3, a1);
  }
}

void std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a1[1]);
    std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a1[6]);

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

void std::vector<VKLabelNavRouteEta * {__strong},geo::allocator_adapter<VKLabelNavRouteEta * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v6 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKLabelNavRouteEta * {__strong}>(v7, v4);
  }
}

void std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::AvoidanceRectWithPriority>(v2, v1);
  }
}

void std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
      v6 = v3 - 3;
      v7 = v3 - 3;
      v8 = v3 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        a1 = (*v9)(v7);
        v6 -= 3;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v4 = **v5;
    }

    v1[1] = v2;
    v11 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v11, v4);
  }
}

void std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::NavLabel>>(v5, v3);
  }
}

void sub_1B28EC0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = LabelNavRouteContextObserverProxy;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<md::RouteSimplifier>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 96));
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::~__hash_table(v2 + 48);
    std::__tree<std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>,std::__map_value_compare<GEOComposedRoute const* {__strong},std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>,std::less<GEOComposedRoute const* {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>>>::destroy(*(v2 + 16));

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[7];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::__deallocate_node(id *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;

      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeature *>(v2, v1);
  }
}

void std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v6 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKTrafficFeature * {__strong}>(v7, v4);
  }
}

void md::RouteLineSupport::~RouteLineSupport(md::RouteLineSupport *this)
{
  *this = &unk_1F2A45F98;
  v4 = (this + 400);
  std::vector<geo::_retain_ptr<VKRouteLineObserverForExternalFeatures * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (this + 376);
  std::vector<geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v4);
  std::__tree<std::__value_type<GEOComposedRoute * {__strong},BOOL>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},BOOL>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},BOOL>,mdm::zone_mallocator>>::destroy(*(this + 44));
  v4 = (this + 312);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (this + 288);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(this + 35);
  *(this + 35) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x20C4093837F09);
  }

  v4 = (this + 208);
  std::vector<std::unique_ptr<md::LabelRoute>>::__destroy_vector::operator()[abi:nn200100](&v4);
  std::unique_ptr<md::LabelRoute>::reset[abi:nn200100](this + 25, 0);
  *(this + 22) = &unk_1F2A46000;

  std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::__deallocate_node(*(this + 18));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 120));
  v4 = (this + 88);
  std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__tree<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,mdm::zone_mallocator>>::destroy(*(this + 6));
  *(this + 2) = &unk_1F2A580E8;
}

{
  md::RouteLineSupport::~RouteLineSupport(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<geo::_retain_ptr<VKRouteLineObserverForExternalFeatures * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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

void std::vector<geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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

void std::__tree<std::__value_type<GEOComposedRoute * {__strong},BOOL>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},BOOL>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},BOOL>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},BOOL>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},BOOL>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},BOOL>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},BOOL>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},BOOL>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},BOOL>,mdm::zone_mallocator>>::destroy(a1[1]);

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

void std::vector<std::unique_ptr<md::LabelRoute>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<md::LabelRoute>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

md::LabelRoute *std::unique_ptr<md::LabelRoute>::reset[abi:nn200100](md::LabelRoute **a1, md::LabelRoute *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    md::LabelRoute::~LabelRoute(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::RouteWaypointLabelFeature>>(v5, v3);
  }
}

void std::__tree<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,mdm::zone_mallocator>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::RouteLineSupport::RouteWaypointData>,mdm::zone_mallocator>>::destroy(*(a1 + 1));
    v7 = (a1 + 88);
    std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
    v7 = (a1 + 56);
    std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
    v2 = *(a1 + 6);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v4 = mdm::zone_mallocator::instance(v3);
    v5 = pthread_rwlock_rdlock((v4 + 32));
    if (v5)
    {
      geo::read_write_lock::logFailure(v5, "read lock", v6);
    }

    atomic_fetch_add((v4 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v4, a1);

    geo::read_write_lock::unlock((v4 + 32));
  }
}

void std::vector<md::LabelPoint,geo::allocator_adapter<md::LabelPoint,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPoint>(v2, v1);
  }
}

void std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,mdm::zone_mallocator>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = *(v1 + 7);
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      if (v1[39] < 0)
      {
        v4 = *(v1 + 2);
        v5 = mdm::zone_mallocator::instance(v3);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
      }

      v6 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<NavRoadFeature>>,void *>>(v6, v1);
      v1 = v2;
    }

    while (v2);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::vector<md::Labeler *,geo::allocator_adapter<md::Labeler *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::Labeler *>(v2, v1);
  }
}

uint64_t *std::unique_ptr<md::Monitorable<md::ConfigValue<GEOConfigKeyString,std::string>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = md::Monitorable<md::ConfigValue<GEOConfigKeyString,std::string>>::~Monitorable(v2);
    MEMORY[0x1B8C62190](v3, 0x10B2C40F4174BB0);
  }

  return a1;
}

uint64_t md::Monitorable<md::ConfigValue<GEOConfigKeyString,std::string>>::~Monitorable(uint64_t a1)
{
  if (*(a1 + 40))
  {
    GEOConfigRemoveBlockListener();
    v2 = *(a1 + 40);
    *(a1 + 40) = 0;
  }

  atomic_store(0, *(a1 + 48));
  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:nn200100](a1 + 64);
  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1B28ECE0C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:nn200100](v1 + 64);
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(a1);
}

uint64_t md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(uint64_t a1)
{
  if (*(a1 + 24))
  {
    GEOConfigRemoveBlockListener();
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  atomic_store(0, *(a1 + 32));
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](a1 + 48);
  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void sub_1B28ECEAC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v1 + 48);
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

void gdc::Timer::~Timer(gdc::Timer *this)
{
  *this = &unk_1F2A60930;
  v1 = (this + 16);
  gdc::Timer::shutdown(this);
  std::mutex::~mutex(v1);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A60930;
  v1 = (this + 16);
  gdc::Timer::shutdown(this);
  std::mutex::~mutex(v1);
}

uint64_t *std::unique_ptr<md::OcclusionManager>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::LabelsState::removeObserver(*(*(v2 + 8) + 168), v2);
    md::OcclusionContext::~OcclusionContext((v2 + 128));
    v4 = (v2 + 96);
    std::vector<std::shared_ptr<md::OcclusionQuery>,geo::allocator_adapter<std::shared_ptr<md::OcclusionQuery>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
    std::deque<std::shared_ptr<md::OcclusionQuery>>::~deque[abi:nn200100](v2 + 48);
    v4 = (v2 + 16);
    std::vector<std::shared_ptr<md::OcclusionQuery>,geo::allocator_adapter<std::shared_ptr<md::OcclusionQuery>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
    MEMORY[0x1B8C62190](v2, 0x10B1C40C77E7A34);
  }

  return a1;
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *>(v3, v2);
  }

  return a1;
}

void md::OcclusionContext::~OcclusionContext(md::OcclusionContext *this)
{
  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 128));
  v8 = this + 96;
  std::vector<md::OcclusionQueryResource,geo::allocator_adapter<md::OcclusionQueryResource,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v2, v1);
  }
}

void std::vector<md::OcclusionQueryResource,geo::allocator_adapter<md::OcclusionQueryResource,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v3 -= 24;
        std::__destroy_at[abi:nn200100]<md::OcclusionQueryResource,0>(v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::OcclusionQueryResource>(v6, v4);
  }
}

void std::__destroy_at[abi:nn200100]<md::OcclusionQueryResource,0>(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void ggl::PipelineSetup::~PipelineSetup(std::__shared_weak_count *this)
{
  v1 = this;
  this->__vftable = &unk_1F2A5C560;
  v2 = this[11].__vftable;
  if (v2)
  {
    shared_owners = this[11].__shared_owners_;
    v4 = this[11].__vftable;
    if (shared_owners != v2)
    {
      do
      {
        this = *(shared_owners - 8);
        if (this)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](this);
        }

        shared_owners -= 16;
      }

      while (shared_owners != v2);
      v4 = v1[11].__vftable;
    }

    v1[11].__shared_owners_ = v2;
    v5 = ggl::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,ggl::zone_mallocator>>>(v5, v4);
  }

  v15.__vftable = &v1[9].__shared_weak_owners_;
  std::vector<std::shared_ptr<ggl::BufferData>,geo::allocator_adapter<std::shared_ptr<ggl::BufferData>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v15);
  v15.__vftable = &v1[8].__shared_owners_;
  std::vector<std::shared_ptr<ggl::BufferData>,geo::allocator_adapter<std::shared_ptr<ggl::BufferData>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v15);
  std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1[7]);
  shared_weak_owners = v1[5].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v1[6].__vftable = shared_weak_owners;
    v8 = ggl::zone_mallocator::instance(v6);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ShaderLibrary::ComputeShaderEntry>(v8, shared_weak_owners);
  }

  v9 = v1[4].__shared_owners_;
  if (v9)
  {
    v1[4].__shared_weak_owners_ = v9;
    v10 = ggl::zone_mallocator::instance(v6);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ShaderLibrary::ComputeShaderEntry>(v10, v9);
  }

  v11 = v1[3].__shared_owners_;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = v1[2].__shared_owners_;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = v1[1].__shared_owners_;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v1[1].__vftable;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }
}

void ggl::OcclusionLine::OcclusionLinePipelineSetup::~OcclusionLinePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<std::shared_ptr<ggl::BufferData>,geo::allocator_adapter<std::shared_ptr<ggl::BufferData>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
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
    v6 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v6, v4);
  }
}

void ggl::OcclusionLine::OcclusionLinePipelineState::~OcclusionLinePipelineState(ggl::OcclusionLine::OcclusionLinePipelineState *this)
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

void ggl::RenderState::~RenderState(ggl::RenderState *this)
{
  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::deque<std::shared_ptr<md::OcclusionQuery>>::~deque[abi:nn200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::shared_ptr<md::OcclusionQuery>,geo::allocator_adapter<std::shared_ptr<md::OcclusionQuery>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::OcclusionQuery>>(v5, v3);
  }
}

void geo::intern_vector<gss::ZoomStyle<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::PropertyID>,gss::zone_mallocator>>::resize(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v4 = *(a1 + 8);
    if (v4 > a2)
    {
      v5 = 24 * *(a1 + 8) - 24 * a2;
      v6 = (*a1 + 24 * a2 + 16);
      do
      {
        if (*v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*v6);
        }

        v6 += 3;
        v5 -= 24;
      }

      while (v5);
LABEL_7:
      *(a1 + 8) = a2;
      return;
    }

    if (v4 < a2)
    {
      if (*(a1 + 10) >= a2)
      {
        v10 = *a1;
      }

      else
      {
        v7 = gss::zone_mallocator::instance(a1);
        v8 = pthread_rwlock_rdlock((v7 + 32));
        if (v8)
        {
          geo::read_write_lock::logFailure(v8, "read lock", v9);
        }

        v10 = malloc_type_zone_malloc(*v7, 24 * a2, 0x102004023CB03E4uLL);
        atomic_fetch_add((v7 + 24), 1u);
        geo::read_write_lock::unlock((v7 + 32));
        v11 = *a1;
        v4 = *(a1 + 8);
        if (*a1)
        {
          if (*(a1 + 8))
          {
            v12 = *(a1 + 8);
            v13 = v10;
            do
            {
              *v13 = *v11;
              *(v13 + 8) = *(v11 + 8);
              *(v11 + 1) = 0;
              *(v11 + 2) = 0;
              v13 += 24;
              v11 += 24;
              --v12;
            }

            while (v12);
          }

          geo::intern_vector<gss::ZoomStyle<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::PropertyID>,gss::zone_mallocator>>::deallocateStorage(a1);
          *(a1 + 8) = v4;
        }

        *(a1 + 10) = a2;
        *a1 = v10;
      }

      if (v4 != a2)
      {
        v14 = &v10[24 * v4];
        v15 = 24 * a2 - 24 * v4;
        do
        {
          *v14 = 0;
          *(v14 + 1) = 0;
          *(v14 + 2) = 0;
          v14 += 24;
          v15 -= 24;
        }

        while (v15);
      }

      goto LABEL_7;
    }
  }
}

uint64_t *std::unique_ptr<md::LabelStyleCache>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 472);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 456);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = *(v2 + 440);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::__deallocate_node(*(v2 + 376));
    std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 352));
    std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear((v2 + 320));
    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::__deallocate_node(*(v2 + 264));
    std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 240));
    std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear((v2 + 208));
    std::unique_ptr<md::LabelSettingsStyleCache>::~unique_ptr[abi:nn200100]((v2 + 200));
    v6 = *(v2 + 192);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(v2 + 144);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    std::mutex::~mutex((v2 + 64));
    std::mutex::~mutex(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::reallocate(gss::zone_mallocator *a1, uint64_t a2)
{
  v4 = gss::zone_mallocator::instance(a1);
  v5 = pthread_rwlock_rdlock((v4 + 32));
  if (v5)
  {
    geo::read_write_lock::logFailure(v5, "read lock", v6);
  }

  v7 = malloc_type_zone_malloc(*v4, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((v4 + 24), 1u);
  geo::read_write_lock::unlock((v4 + 32));
  v8 = *a1;
  if (*a1)
  {
    v9 = *(a1 + 4);
    if (v9)
    {
      v10 = *(a1 + 4);
      v11 = v7;
      do
      {
        *v11++ = *v8;
        *v8 = 0;
        *(v8 + 8) = 0;
        v8 += 16;
        --v10;
      }

      while (v10);
    }

    geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1);
    *(a1 + 4) = v9;
  }

  *(a1 + 5) = a2;
  *a1 = v7;
}

void std::__shared_ptr_emplace<md::LabelStyle>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  for (i = 0; i != -32; i -= 16)
  {
    v4 = *(a1 + 456 + i);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  v5 = *(a1 + 424);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = 0;
  v7 = a1 + 408;
  do
  {
    v8 = *(v7 + v6);
    *(v7 + v6) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v6 -= 16;
  }

  while (v6 != -32);
  v14 = (a1 + 360);
  std::vector<std::pair<std::pair<md::LabelStyle::StyleQueryOptions,md::LabelStyleGroupType>,std::unique_ptr<md::LabelStyleGroupInfo>>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v9 = *(a1 + 352);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v14 = (a1 + 88);
  std::vector<md::components::Material>::__destroy_vector::operator()[abi:nn200100](&v14);
  for (j = 80; j != 48; j -= 16)
  {
    v11 = *(a1 + j);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(a1 + 32);
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }
}

void std::vector<std::pair<std::pair<md::LabelStyle::StyleQueryOptions,md::LabelStyleGroupType>,std::unique_ptr<md::LabelStyleGroupInfo>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        *(v4 - 1) = 0;
        if (v6)
        {
          std::default_delete<md::LabelStyleGroupInfo>::operator()[abi:nn200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<md::components::Material>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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

        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::unique_ptr<md::LabelSettingsStyleCache>::~unique_ptr[abi:nn200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[10];
    v2[10] = 0;
    if (v3)
    {
      MEMORY[0x1B8C62190](v3, 0x1000C40F5825EE8);
    }

    v4 = v2[9];
    v2[9] = 0;
    if (v4)
    {
      MEMORY[0x1B8C62190](v4, 0x1000C4077774924);
    }

    v5 = v2[8];
    v2[8] = 0;
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C4000313F17);
    }

    v6 = v2[7];
    v2[7] = 0;
    if (v6)
    {
      MEMORY[0x1B8C62190](v6, 0x1000C40F5825EE8);
    }

    v7 = v2[6];
    v2[6] = 0;
    if (v7)
    {
      MEMORY[0x1B8C62190](v7, 0x1000C4052888210);
    }

    v8 = v2[5];
    v2[5] = 0;
    if (v8)
    {
      MEMORY[0x1B8C62190](v8, 0x1000C4052888210);
    }

    v9 = v2[4];
    v2[4] = 0;
    if (v9)
    {
      MEMORY[0x1B8C62190](v9, 0x1000C4090D0E795);
    }

    v10 = v2[3];
    v2[3] = 0;
    if (v10)
    {
      MEMORY[0x1B8C62190](v10, 0x1000C40005DEF19);
    }

    v11 = v2[2];
    v2[2] = 0;
    if (v11)
    {
      MEMORY[0x1B8C62190](v11, 0x1000C40D77C405DLL);
    }

    v12 = v2[1];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    MEMORY[0x1B8C62190](v2, 0x1020C4080A3E082);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::LabelImageKey const> const,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,0>((v1 + 2));
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *>(v3, v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<md::LabelRenderer>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 1896);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 1880);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    std::unique_ptr<md::LabelRenderer::LabelMeshRenderStateSet>::reset[abi:nn200100]((v2 + 1840), 0);
    std::unique_ptr<md::LabelRenderer::LabelMeshRenderStateSet>::reset[abi:nn200100]((v2 + 1832), 0);
    std::unique_ptr<md::LabelRenderer::LabelMeshRenderStateSet>::reset[abi:nn200100]((v2 + 1824), 0);
    v41 = v2 + 1776;
    std::vector<ggl::Texture2DLoadItem,geo::allocator_adapter<ggl::Texture2DLoadItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v41);
    v5 = v2 + 1728;
    v6 = 1776;
    do
    {
      v6 -= 144;
      v7 = v2 + v6;
      std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + v6 + 104));
      for (i = 0; i != -48; i -= 16)
      {
        v9 = *(v5 + i);
        *(v5 + i) = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      v10 = *(v7 + 32);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      v11 = *(v7 + 16);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }

      v5 -= 144;
    }

    while (v6 != 1488);
    v12 = *(v2 + 1480);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = *(v2 + 1464);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = *(v2 + 1448);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = *(v2 + 1432);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v16 = *(v2 + 1416);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    v17 = *(v2 + 1400);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }

    v18 = *(v2 + 1384);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    ggl::Mesh::~Mesh((v2 + 1232));
    v19 = *(v2 + 1224);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    v20 = *(v2 + 1208);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    }

    v21 = *(v2 + 1192);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

    v22 = *(v2 + 1176);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    ggl::Mesh::~Mesh((v2 + 1024));
    v23 = *(v2 + 1016);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }

    v24 = *(v2 + 1000);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }

    v25 = *(v2 + 984);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    }

    v26 = *(v2 + 968);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v26);
    }

    v27 = *(v2 + 952);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }

    v28 = *(v2 + 936);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    v29 = *(v2 + 920);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    v30 = *(v2 + 904);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v30);
    }

    v31 = *(v2 + 888);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v31);
    }

    v32 = *(v2 + 872);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v32);
    }

    v33 = *(v2 + 856);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v33);
    }

    v34 = *(v2 + 840);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v2 + 816));
    v35 = *(v2 + 720);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v35);
    }

    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v2 + 696));
    v36 = *(v2 + 600);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v36);
    }

    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v2 + 576));
    v37 = *(v2 + 480);
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v37);
    }

    v38 = *(v2 + 464);
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v38);
    }

    std::unique_ptr<ggl::FragmentedPool<ggl::Icon::WaypointPipelineSetup>>::reset[abi:nn200100]((v2 + 448), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Icon::MaskedIconPipelineSetup>>::reset[abi:nn200100]((v2 + 440), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Icon::ShadowPipelineSetup>>::reset[abi:nn200100]((v2 + 432), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Icon::IconPipelineSetup>>::reset[abi:nn200100]((v2 + 424), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup>>::reset[abi:nn200100]((v2 + 416), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::GlyphWithNormalHalo::DefaultPipelineSetup>>::reset[abi:nn200100]((v2 + 408), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::GlyphWithNormalHalo::DefaultPipelineSetup>>::reset[abi:nn200100]((v2 + 400), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::SDFGlyph::SuperSamplePipelineSetup>>::reset[abi:nn200100]((v2 + 392), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::SDFGlyph::HaloPipelineSetup>>::reset[abi:nn200100]((v2 + 384), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::SDFGlyph::DefaultPipelineSetup>>::reset[abi:nn200100]((v2 + 376), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Glyph3d::RaymarchPipelineSetup>>::reset[abi:nn200100]((v2 + 368), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Glyph3d::LowPrecisionHaloPipelineSetup>>::reset[abi:nn200100]((v2 + 360), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Glyph3d::LowPrecisionPipelineSetup>>::reset[abi:nn200100]((v2 + 352), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Glyph3d::DefaultPipelineSetup>>::reset[abi:nn200100]((v2 + 344), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v2 + 336), 0);
    for (j = 224; j != 64; j -= 32)
    {
      std::vector<md::LabelRenderDescriptor *,geo::allocator_adapter<md::LabelRenderDescriptor *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + j));
    }

    md::LabelRenderModel::~LabelRenderModel((v2 + 24));
    MEMORY[0x1B8C62190](v2, 0x10F0C403376D0CFLL);
  }

  return a1;
}

void ggl::Texture2D::~Texture2D(ggl::Texture2D *this)
{
  *this = &unk_1F2A5D9F0;
  *(this + 5) = &unk_1F2A5DA10;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *this = &unk_1F2A5DA30;
  *(this + 5) = &unk_1F2A5DA50;
  v4 = *(this + 12);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  ggl::Texture::~Texture(this);
}

{
  *this = &unk_1F2A5D9F0;
  *(this + 5) = &unk_1F2A5DA10;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *this = &unk_1F2A5DA30;
  *(this + 5) = &unk_1F2A5DA50;
  v4 = *(this + 12);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  ggl::Texture::~Texture(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, v1);
  }
}

void std::vector<ggl::Texture2DLoadItem,geo::allocator_adapter<ggl::Texture2DLoadItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture2DLoadItem>(v7, v4);
  }
}

void ggl::Mesh::~Mesh(ggl::Mesh *this)
{
  *this = &unk_1F2A5D0F8;
  v2 = (this + 16);
  *(this + 2) = &unk_1F2A5D118;
  std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::destroy(*(this + 15));
  v3 = *(this + 13);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = (this + 64);
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  ggl::RenderDataHolder::~RenderDataHolder(v2);
}

{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = ggl::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<ggl::VertexData>>(v5, v3);
  }
}

void std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = ggl::zone_mallocator::instance(v2);
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

void ggl::Icon::WaypointPipelineState::~WaypointPipelineState(ggl::Icon::WaypointPipelineState *this)
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

void ggl::Icon::MaskedIconPipelineState::~MaskedIconPipelineState(ggl::Icon::MaskedIconPipelineState *this)
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

void ggl::Icon::ShadowPipelineState::~ShadowPipelineState(ggl::Icon::ShadowPipelineState *this)
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

void ggl::Icon::IconPipelineState::~IconPipelineState(ggl::Icon::IconPipelineState *this)
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

void ggl::Glyph3d::RaymarchPipelineState::~RaymarchPipelineState(ggl::Glyph3d::RaymarchPipelineState *this)
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

void ggl::Glyph3d::LowPrecisionHaloPipelineState::~LowPrecisionHaloPipelineState(ggl::Glyph3d::LowPrecisionHaloPipelineState *this)
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

void ggl::Glyph3d::LowPrecisionPipelineState::~LowPrecisionPipelineState(ggl::Glyph3d::LowPrecisionPipelineState *this)
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

void ggl::Glyph3d::DefaultPipelineState::~DefaultPipelineState(ggl::Glyph3d::DefaultPipelineState *this)
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

void ggl::SDFGlyph::SuperSamplePipelineState::~SuperSamplePipelineState(ggl::SDFGlyph::SuperSamplePipelineState *this)
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

void ggl::SDFGlyph::HaloPipelineState::~HaloPipelineState(ggl::SDFGlyph::HaloPipelineState *this)
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

void ggl::SDFGlyph::DefaultPipelineState::~DefaultPipelineState(ggl::SDFGlyph::DefaultPipelineState *this)
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

void ggl::GlyphWithNormalHalo::DefaultPipelineState::~DefaultPipelineState(ggl::GlyphWithNormalHalo::DefaultPipelineState *this)
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

void ggl::ColorGlyphWithNormalHalo::DefaultPipelineState::~DefaultPipelineState(ggl::ColorGlyphWithNormalHalo::DefaultPipelineState *this)
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

void std::vector<ggl::Icon::WaypointPipelineSetup *,geo::allocator_adapter<ggl::Icon::WaypointPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Icon::WaypointPipelineSetup *>(v2, v1);
  }
}

void std::vector<ggl::Icon::MaskedIconPipelineSetup *,geo::allocator_adapter<ggl::Icon::MaskedIconPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Icon::MaskedIconPipelineSetup *>(v2, v1);
  }
}

void std::vector<ggl::Icon::ShadowPipelineSetup *,geo::allocator_adapter<ggl::Icon::ShadowPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Icon::ShadowPipelineSetup *>(v2, v1);
  }
}

void std::vector<ggl::Icon::IconPipelineSetup *,geo::allocator_adapter<ggl::Icon::IconPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Icon::IconPipelineSetup *>(v2, v1);
  }
}

void std::vector<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup *>(v2, v1);
  }
}

void std::vector<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *>(v2, v1);
  }
}

void std::vector<ggl::SDFGlyph::SuperSamplePipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::SuperSamplePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SDFGlyph::SuperSamplePipelineSetup *>(v2, v1);
  }
}

void std::vector<ggl::SDFGlyph::HaloPipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::HaloPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SDFGlyph::HaloPipelineSetup *>(v2, v1);
  }
}

void std::vector<ggl::SDFGlyph::DefaultPipelineSetup *,geo::allocator_adapter<ggl::SDFGlyph::DefaultPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SDFGlyph::DefaultPipelineSetup *>(v2, v1);
  }
}

void std::vector<ggl::Glyph3d::RaymarchPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::RaymarchPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glyph3d::RaymarchPipelineSetup *>(v2, v1);
  }
}

void std::vector<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glyph3d::LowPrecisionHaloPipelineSetup *>(v2, v1);
  }
}

void std::vector<ggl::Glyph3d::LowPrecisionPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::LowPrecisionPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glyph3d::LowPrecisionPipelineSetup *>(v2, v1);
  }
}

void std::vector<ggl::Glyph3d::DefaultPipelineSetup *,geo::allocator_adapter<ggl::Glyph3d::DefaultPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glyph3d::DefaultPipelineSetup *>(v2, v1);
  }
}

void *ggl::FragmentedPool<ggl::RenderItem>::~FragmentedPool(void *a1)
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

  std::__function::__value_func<void ()(ggl::RenderItem *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::RenderItem * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::RenderItem *>(v2, v1);
  }
}

void md::LabelRenderModel::~LabelRenderModel(md::LabelRenderModel *this)
{
  std::vector<md::LabelExternalMesh *,geo::allocator_adapter<md::LabelExternalMesh *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalIcon *>(v4, v3);
  }

  v5 = *this;
  *this = 0;
  if (v5)
  {
    gdc::Registry::~Registry(v5);
    MEMORY[0x1B8C62190]();
  }
}

void std::vector<md::LabelRenderDescriptor *,geo::allocator_adapter<md::LabelRenderDescriptor *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelRenderDescriptor *>(v2, v1);
  }
}

uint64_t *std::unique_ptr<md::LabelCollider>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    free(*(v2 + 152));
    *(v2 + 136) = 0;
    *(v2 + 144) = 0;
    *(v2 + 152) = 0;
    free(*(v2 + 128));
    *(v2 + 112) = 0;
    *(v2 + 120) = 0;
    *(v2 + 128) = 0;
    v4 = v2 + 56;
    std::vector<md::LabelCollider::GridNode,geo::allocator_adapter<md::LabelCollider::GridNode,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
    MEMORY[0x1B8C62190](v2, 0x10A0C40E474886ALL);
  }

  return a1;
}

void std::vector<md::LabelCollider::GridNode,geo::allocator_adapter<md::LabelCollider::GridNode,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      v6 = v1[1];
      do
      {
        free(*(v3 - 1));
        *(v6 - 3) = 0;
        *(v6 - 2) = 0;
        v6 -= 3;
        *(v3 - 1) = 0;
        v3 = v6;
      }

      while (v6 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelCollider::GridNode>(v7, v4);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *> *> *>(v4, v3);
  }

  return a1;
}

uint64_t *std::unique_ptr<md::FontTrackingCache>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::~__hash_table(v2 + 64);
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::~__hash_table(v2 + 8);
    MEMORY[0x1B8C62190](v2, 0x10A0C406C380E64);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::allocator_traits<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *>,mdm::zone_mallocator>>::destroy[abi:nn200100]<std::pair<std::string const,std::unique_ptr<md::FontTrackingScaleInfo>>,void,0>((v1 + 2));
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void md::FontAtlas::~FontAtlas(md::FontAtlas *this)
{
  *this = &unk_1F2A0CCD0;
  md::FontAtlas::clear(this);
}

{
  md::FontAtlas::~FontAtlas(this);
}

void sub_1B28EF610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = v10[17];
  if (v12)
  {
    v10[18] = v12;
    operator delete(v12);
  }

  std::unique_ptr<md::FontGlyphCache>::reset[abi:nn200100]((v10 + 16), 0);
  std::vector<md::FontAtlasCell *,geo::allocator_adapter<md::FontAtlasCell *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v10 + 6));
  a10 = v10 + 2;
  std::vector<std::unique_ptr<md::FontAtlasCell []>,geo::allocator_adapter<std::unique_ptr<md::FontAtlasCell []>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  *v10 = off_1F2A40558;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, v10);
  _Unwind_Resume(a1);
}

void md::FontAtlas::clear(md::FontAtlas *this)
{
  *(this + 120) = 1;
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    do
    {
      for (i = 0; i != 1536; i += 48)
      {
        v5 = *v2;
        v6 = *v2 + i;
        v7 = *(v6 + 8);
        if (v7)
        {
          *(v7 + 96) = 0;
        }

        v10 = *(v6 + 32);
        v9 = (v6 + 32);
        v8 = v10;
        if (v10)
        {
          (*(*v8 + 16))(v8, v9);
          v11 = *(v5 + i + 40);
          *v9 = 0;
          v9[1] = 0;
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v11);
          }
        }
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 2);
    v3 = *(this + 3);
  }

  while (v3 != v2)
  {
    v13 = *--v3;
    v12 = v13;
    *v3 = 0;
    if (v13)
    {
      std::default_delete<md::FontAtlasCell []>::operator()[abi:nn200100]<md::FontAtlasCell>(v12);
    }
  }

  *(this + 3) = v2;
  *(this + 7) = *(this + 6);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  v14 = *(this + 17);
  v15 = *(this + 18) - v14;
  if (v15 >= 1)
  {
    bzero(v14, v15);
  }

  *(this + 29) = 0;
  operator new();
}

void std::vector<md::FontAtlasCell *,geo::allocator_adapter<md::FontAtlasCell *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::FontAtlasCell *>(v2, v1);
  }
}

void std::vector<std::unique_ptr<md::FontAtlasCell []>,geo::allocator_adapter<std::unique_ptr<md::FontAtlasCell []>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v6 = *--v3;
        a1 = v6;
        *v3 = 0;
        if (v6)
        {
          std::default_delete<md::FontAtlasCell []>::operator()[abi:nn200100]<md::FontAtlasCell>(a1);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::FontAtlasCell []>>(v7, v4);
  }
}

uint64_t *std::unique_ptr<md::LabelFeaturePool>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v62.__vftable = (v2 + 640);
    std::vector<std::shared_ptr<md::LabelSourceTile>,geo::allocator_adapter<std::shared_ptr<md::LabelSourceTile>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v62);
    std::mutex::~mutex((v2 + 568));
    v4 = *(v2 + 536);
    if (v4)
    {
      do
      {
        v5 = *v4;
        v6 = v4[4];
        if (v6 != v4[6])
        {
          free(v6);
        }

        v7 = mdm::zone_mallocator::instance(v6);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long long,md::LabelFeaturePool::RemovedVersionInfo>,void *>>(v7, v4);
        v4 = v5;
      }

      while (v5);
    }

    v8 = *(v2 + 512);
    *(v2 + 512) = 0;
    if (v8)
    {
      v9 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,md::LabelFeaturePool::RemovedVersionInfo>,void *> *> *>(v9, v8);
    }

    v10 = *(v2 + 480);
    if (v10)
    {
      do
      {
        v11 = *v10;
        md::LabelFeaturePoolTileInfo::~LabelFeaturePoolTileInfo((v10 + 3));
        v13 = mdm::zone_mallocator::instance(v12);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *>>(v13, v10);
        v10 = v11;
      }

      while (v11);
    }

    v14 = *(v2 + 456);
    *(v2 + 456) = 0;
    if (v14)
    {
      v15 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *> *> *>(v15, v14);
    }

    v16 = *(v2 + 424);
    while (v16)
    {
      v17 = v16;
      v16 = *v16;
      v18 = v17[2];
      if (v18)
      {
        v19 = (*v18)-- == 1;
        if (v19)
        {
          *(v18 + 8) = &unk_1F2A57AD8;
          v20 = *(v18 + 80);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }

          v62.__vftable = (v18 + 32);
          std::vector<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v62);
          v21 = *(v18 + 24);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v21);
          }

          v22 = v17[2];
          v23 = mdm::zone_mallocator::instance(v21);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v23, v22);
          v17[2] = 0;
        }
      }

      v24 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *>>(v24, v17);
    }

    v25 = std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 400));
    v26 = *(v2 + 368);
    while (v26)
    {
      v27 = v26;
      v26 = *v26;
      v28 = v27[2];
      if (v28)
      {
        v19 = (*v28)-- == 1;
        if (v19)
        {
          *(v28 + 8) = &unk_1F2A57B40;
          v29 = *(v28 + 80);
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v29);
          }

          v62.__vftable = (v28 + 32);
          std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v62);
          v30 = *(v28 + 24);
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v30);
          }

          v31 = v27[2];
          v32 = mdm::zone_mallocator::instance(v30);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v32, v31);
          v27[2] = 0;
        }
      }

      v33 = mdm::zone_mallocator::instance(v25);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(v33, v27);
    }

    v34 = std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 344));
    v35 = *(v2 + 312);
    while (v35)
    {
      v36 = v35;
      v35 = *v35;
      v37 = v36[2];
      if (v37)
      {
        v19 = (*v37)-- == 1;
        if (v19)
        {
          *(v37 + 8) = &unk_1F2A57C88;
          v38 = *(v37 + 80);
          if (v38)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v38);
          }

          v62.__vftable = (v37 + 32);
          std::vector<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,geo::allocator_adapter<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v62);
          v39 = *(v37 + 24);
          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v39);
          }

          v40 = v36[2];
          v41 = mdm::zone_mallocator::instance(v39);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>::_fast_shared_ptr_control>(v41, v40);
          v36[2] = 0;
        }
      }

      v42 = mdm::zone_mallocator::instance(v34);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *>>(v42, v36);
    }

    v43 = std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 288));
    v44 = *(v2 + 256);
    while (v44)
    {
      v45 = v44;
      v44 = *v44;
      v46 = v45[2];
      if (v46)
      {
        v19 = (*v46)-- == 1;
        if (v19)
        {
          *(v46 + 8) = &unk_1F2A57A70;
          v47 = *(v46 + 80);
          if (v47)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v47);
          }

          v62.__vftable = (v46 + 32);
          std::vector<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v62);
          v48 = *(v46 + 24);
          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v48);
          }

          v49 = v45[2];
          v50 = mdm::zone_mallocator::instance(v48);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v50, v49);
          v45[2] = 0;
        }
      }

      v51 = mdm::zone_mallocator::instance(v43);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(v51, v45);
    }

    v52 = std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 232));
    v53 = *(v2 + 200);
    while (v53)
    {
      v54 = v53;
      v53 = *v53;
      v55 = v54[2];
      if (v55)
      {
        v19 = (*v55)-- == 1;
        if (v19)
        {
          *(v55 + 8) = &unk_1F2A57A08;
          v56 = *(v55 + 80);
          if (v56)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v56);
          }

          v62.__vftable = (v55 + 32);
          std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v62);
          v57 = *(v55 + 24);
          if (v57)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v57);
          }

          v58 = v54[2];
          v59 = mdm::zone_mallocator::instance(v57);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v59, v58);
          v54[2] = 0;
        }
      }

      v60 = mdm::zone_mallocator::instance(v52);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(v60, v54);
    }

    std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 176));
    std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeaturePoolTileInfo::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeaturePoolTileInfo::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__deallocate_node(*(v2 + 144));
    std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 120));
    std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeaturePoolTileInfo::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeaturePoolTileInfo::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__deallocate_node(*(v2 + 88));
    std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 64));
    std::mutex::~mutex(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void std::vector<std::shared_ptr<md::LabelSourceTile>,geo::allocator_adapter<std::shared_ptr<md::LabelSourceTile>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
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

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelSourceTile>>(v6, v4);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(v3, v2);
  }

  return a1;
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(v3, v2);
  }

  return a1;
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *> *> *>(v3, v2);
  }

  return a1;
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeaturePoolTileInfo::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeaturePoolTileInfo::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__deallocate_node(mdm::zone_mallocator *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = *(v2 + 2);
      if (v3)
      {
        if ((*v3)-- == 1)
        {
          *(v3 + 8) = &unk_1F2A579A0;
          v5 = *(v3 + 80);
          if (v5)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v5);
          }

          v10.__vftable = (v3 + 32);
          std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v10);
          v6 = *(v3 + 24);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v6);
          }

          v7 = *(v2 + 2);
          v8 = mdm::zone_mallocator::instance(v6);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v8, v7);
          *(v2 + 2) = 0;
        }
      }

      v9 = mdm::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(v9, v2);
    }

    while (v1);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(v3, v2);
  }

  return a1;
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(v3, v2);
  }

  return a1;
}

uint64_t **std::unique_ptr<md::LabelGlyphImageLoader>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      std::mutex::lock(v2[1]);
      sig = v3[1].__m_.__sig;
      std::mutex::unlock(v3);
      if (sig)
      {
        v5 = v2[1];
        std::mutex::lock(v5);
        v5[1].__m_.__sig = 0;
        std::mutex::unlock(v5);
      }
    }

    v9.__vftable = (v2 + 4);
    std::vector<std::shared_ptr<md::FontGlyph>,geo::allocator_adapter<std::shared_ptr<md::FontGlyph>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v9);
    v6 = v2[2];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *v2;
    *v2 = 0;
    if (v7)
    {
      (*(*v7 + 16))(v7);
    }

    MEMORY[0x1B8C62190](v2, 0x1020C406EFEB2F7);
  }

  return a1;
}

void sub_1B28F00B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  a10 = v10 + 4;
  std::vector<std::shared_ptr<md::FontGlyph>,geo::allocator_adapter<std::shared_ptr<md::FontGlyph>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v12 = v10[2];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *v10;
  *v10 = 0;
  if (v13)
  {
    (*(*v13 + 16))(v13);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<md::FontGlyph>,geo::allocator_adapter<std::shared_ptr<md::FontGlyph>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
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

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::FontGlyph>>(v6, v4);
  }
}

void md::SDFGlyphRenderer::~SDFGlyphRenderer(md::SDFGlyphRenderer *this)
{
  *this = &unk_1F2A4E288;
  std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 376));
  std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 344));
  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 312));
  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 280));
  std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 248));
  std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 216));
  std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 184));
  std::__list_imp<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>>::clear(this + 20);
  std::__hash_table<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::__unordered_map_hasher<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,md::SDFGlyphRenderer::CTFontKeyHash,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,true>,std::__unordered_map_equal<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,md::SDFGlyphRenderer::CTFontKeyHash,true>,std::allocator<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>>>::~__hash_table(this + 120);
  std::mutex::~mutex((this + 40));
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  md::SDFGlyphRenderer::~SDFGlyphRenderer(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<float>(v2, v1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::__unordered_map_hasher<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,md::SDFGlyphRenderer::CTFontKeyHash,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,true>,std::__unordered_map_equal<md::SDFGlyphRenderer::CTFontKey,std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>,std::equal_to<md::SDFGlyphRenderer::CTFontKey>,md::SDFGlyphRenderer::CTFontKeyHash,true>,std::allocator<std::__hash_value_type<md::SDFGlyphRenderer::CTFontKey,std::__list_iterator<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,void *>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v2[2] = &unk_1F2A5F758;
      v4 = v2[3];
      if (v4)
      {
        CFRelease(v4);
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

void *std::__list_imp<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>>::clear(void *result)
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
        std::__list_imp<std::pair<md::SDFGlyphRenderer::CTFontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>>::__delete_node[abi:nn200100](result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t *std::unique_ptr<md::LabelTextDataLoader>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      std::mutex::lock(*v2);
      sig = v3[1].__m_.__sig;
      std::mutex::unlock(v3);
      if (sig)
      {
        v5 = *v2;
        std::mutex::lock(*v2);
        v5[1].__m_.__sig = 0;
        std::mutex::unlock(v5);
      }
    }

    v8 = (v2 + 24);
    std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v8);
    v6 = *(v2 + 8);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    MEMORY[0x1B8C62190](v2, 0x1020C400E1815B6);
  }

  return a1;
}

void sub_1B28F0468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 24);
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<std::shared_ptr<md::TextDataString>,float>>(v5, v3);
  }
}

uint64_t *std::unique_ptr<md::LabelImageLoader>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 120);
    if (v3)
    {
      std::mutex::lock(*(v2 + 120));
      sig = v3[1].__m_.__sig;
      std::mutex::unlock(v3);
      if (sig)
      {
        v5 = *(v2 + 120);
        std::mutex::lock(v5);
        v5[1].__m_.__sig = 0;
        std::mutex::unlock(v5);
      }
    }

    v6 = *(v2 + 128);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::__deallocate_node(*(v2 + 56));
    std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 32));
    std::__list_imp<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,mdm::zone_mallocator>>::clear(v2);
    MEMORY[0x1B8C62190](v2, 0x10A0C40F93A6672);
  }

  return a1;
}

void sub_1B28F05A4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::__deallocate_node(*(v1 + 56));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v1 + 32));
  std::__list_imp<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,mdm::zone_mallocator>>::clear(v1);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::LabelImageKey const> const,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,0>((v1 + 2));
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void md::LabelTextureAtlasStore::~LabelTextureAtlasStore(md::LabelTextureAtlasStore *this)
{
  *this = &unk_1F2A0F490;
  if (*(this + 56) == 1)
  {
    md::MapEngineSignals::ThreadSafeSignal<unsigned long,BOOL>::disconnect(*(this + 5), *(this + 6));
    *(this + 48) = 0;
    *(this + 56) = 0;
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 21));
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex(this + 1);
  v3 = 16;
  do
  {
    v4 = *(this + v3);
    *(this + v3) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v3 -= 8;
  }

  while (v3);
}

{
  md::LabelTextureAtlasStore::~LabelTextureAtlasStore(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B28F0724(_Unwind_Exception *a1)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 168));
  v3 = *(v1 + 136);
  if (v3)
  {
    *(v1 + 144) = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((v1 + 64));
  v4 = 16;
  while (1)
  {
    v5 = *(v1 + v4);
    *(v1 + v4) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v4 -= 8;
    if (!v4)
    {
      _Unwind_Resume(a1);
    }
  }
}

void md::MapEngineSignals::ThreadSafeSignal<unsigned long,BOOL>::disconnect(uint64_t a1, unint64_t a2)
{
  std::mutex::lock(a1);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = (a1 + 72);
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = a2;
      if (*&v4 <= a2)
      {
        v7 = a2 % *&v4;
      }
    }

    else
    {
      v7 = (*&v4 - 1) & a2;
    }

    v8 = *v5;
    v9 = *(*v5 + 8 * v7);
    if (v9)
    {
      v10 = *v9;
      if (v10)
      {
        v11 = *&v4 - 1;
        do
        {
          v12 = v10[1];
          if (v12 == a2)
          {
            if (v10[2] == a2)
            {
              v13 = v10[1];
              if (v6.u32[0] > 1uLL)
              {
                if (v13 >= *&v4)
                {
                  v13 %= *&v4;
                }
              }

              else
              {
                v13 &= v11;
              }

              v14 = *(v8 + 8 * v13);
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14 != v10);
              if (v15 == (a1 + 88))
              {
                goto LABEL_36;
              }

              v16 = v15[1];
              if (v6.u32[0] > 1uLL)
              {
                if (v16 >= *&v4)
                {
                  v16 %= *&v4;
                }
              }

              else
              {
                v16 &= v11;
              }

              if (v16 != v13)
              {
LABEL_36:
                if (!*v10)
                {
                  goto LABEL_37;
                }

                v17 = *(*v10 + 8);
                if (v6.u32[0] > 1uLL)
                {
                  if (v17 >= *&v4)
                  {
                    v17 %= *&v4;
                  }
                }

                else
                {
                  v17 &= v11;
                }

                if (v17 != v13)
                {
LABEL_37:
                  *(v8 + 8 * v13) = 0;
                }
              }

              v18 = *v10;
              if (*v10)
              {
                v19 = *(v18 + 8);
                if (v6.u32[0] > 1uLL)
                {
                  if (v19 >= *&v4)
                  {
                    v19 %= *&v4;
                  }
                }

                else
                {
                  v19 &= v11;
                }

                if (v19 != v13)
                {
                  *(*v5 + 8 * v19) = v15;
                  v18 = *v10;
                }
              }

              *v15 = v18;
              *v10 = 0;
              --*(a1 + 96);
              v20[0] = v10;
              v20[1] = a1 + 72;
              v21 = 1;
              memset(v22, 0, sizeof(v22));
              std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,void *>>>>::~unique_ptr[abi:nn200100](v20);
              break;
            }
          }

          else
          {
            if (v6.u32[0] > 1uLL)
            {
              if (v12 >= *&v4)
              {
                v12 %= *&v4;
              }
            }

            else
            {
              v12 &= v11;
            }

            if (v12 != v7)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  std::mutex::unlock(a1);
}

void ta2::TextureAtlas::~TextureAtlas(ta2::TextureAtlas *this)
{
  *this = &unk_1F2A16D28;
  for (i = *(this + 45); i != *(this + 46); i += 3)
  {
    v3 = i[1];
    v4 = v3 - *i;
    if (v3 != *i)
    {
      if (!((v4 >> 3) >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v4 >> 3);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }
  }

  (*(**(this + 51) + 64))(*(this + 51), *(this + 44));
  ta2::TextureAtlasRegionBuffer::processItems(*(this + 42));
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 14);
  v5 = *(this + 52);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v15 = (this + 384);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v15);
  v6 = *(this + 45);
  if (v6)
  {
    v7 = *(this + 46);
    v8 = *(this + 45);
    if (v7 != v6)
    {
      v9 = *(this + 46);
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v7 - 16) = v10;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = *(this + 45);
    }

    *(this + 46) = v6;
    operator delete(v8);
  }

  v12 = *(this + 43);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 40));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 35));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 32));
  v15 = (this + 224);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v15);
  std::mutex::~mutex((this + 160));
  v13 = *(this + 17);
  if (v13)
  {
    *(this + 18) = v13;
    operator delete(v13);
  }

  v15 = (this + 112);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v15);
  v14 = *(this + 11);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  ta2::TextureAtlas::~TextureAtlas(this);

  JUMPOUT(0x1B8C62190);
}

BOOL mre::GGLResourceStore::releaseBuffer(uint64_t a1, unint64_t a2)
{
  std::__shared_mutex_base::lock((a1 + 272));
  v4 = (a1 + 904);
  v5 = geo::packed_array<mre::BufferStorage,geo::handle<mre::Buffer>>::find((a1 + 904), a2);
  v6 = v5;
  v7 = *(a1 + 960);
  if (v7 != v5)
  {
    v8 = *v5;
    if (*v6)
    {
      v9 = *(a1 + 960);
      if (!*(v6 + 24))
      {
        (*(*v8 + 8))(v8);
        v9 = *(a1 + 960);
      }
    }

    else
    {
      v9 = *(a1 + 960);
    }

    if (v9 != v6)
    {
      v10 = *(*(a1 + 976) + ((v6 - *(a1 + 952)) >> 2));
      v11 = v10;
      v12 = *(a1 + 928);
      if (v10 < ((*(a1 + 936) - v12) >> 3))
      {
        v13 = *(v12 + 8 * v10);
        v14 = *(v12 + 8 * v11);
        v15 = (v14 ^ v13) >> 32;
        if (v14 && v15 == 0)
        {
          v17 = *(a1 + 912);
          v18 = *(a1 + 920);
          if (v17 >= v18)
          {
            v20 = *v4;
            v21 = v17 - *v4;
            v22 = v21 >> 3;
            v23 = (v21 >> 3) + 1;
            if (v23 >> 61)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v24 = v18 - v20;
            if (v24 >> 2 > v23)
            {
              v23 = v24 >> 2;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFF8)
            {
              v25 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v25);
            }

            *(8 * v22) = v11;
            v19 = 8 * v22 + 8;
            memcpy(0, v20, v21);
            v26 = *(a1 + 904);
            *(a1 + 904) = 0;
            *(a1 + 912) = v19;
            *(a1 + 920) = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v17 = v11;
            v19 = (v17 + 8);
          }

          *(a1 + 912) = v19;
          v27 = *(*(a1 + 928) + 8 * v11);
          v28 = *(a1 + 960);
          v29 = *(a1 + 952);
          v30 = *(*(a1 + 976) + ((v28 - v29) >> 2) - 8);
          v31 = (v29 + 32 * v27);
          *v39 = *v31;
          v32 = *v31;
          *&v39[16] = v31[1];
          v33 = *(v28 - 23);
          *v31 = *(v28 - 32);
          *(v31 + 9) = v33;
          *(v28 - 32) = v32;
          *(v28 - 23) = *&v39[9];
          *(*(a1 + 928) + 8 * v30) = v27;
          v34 = *(a1 + 976);
          v35 = *(a1 + 984);
          v36 = *(v34 + 8 * v27);
          v37 = *--v35;
          *(v34 + 8 * v27) = v37;
          *v35 = v36;
          *(a1 + 960) -= 32;
          *(a1 + 984) = v35;
          *(*(a1 + 928) + 8 * v11 + 4) = ((*(*(a1 + 928) + 8 * v11 + 4) << 32) + 0x100000000) >> 32;
          *(*(a1 + 928) + 8 * v11) = (*(a1 + 936) - *(a1 + 928)) >> 3;
        }
      }
    }
  }

  std::__shared_mutex_base::unlock((a1 + 272));
  return v7 != v6;
}

uint64_t geo::packed_array<mre::BufferStorage,geo::handle<mre::Buffer>>::find(void *a1, unint64_t a2)
{
  v2 = a1[3];
  if (a2 < ((a1[4] - v2) >> 3) && ((v3 = *(v2 + 8 * a2)) != 0 ? (v4 = (v3 ^ a2) >> 32 == 0) : (v4 = 0), v4))
  {
    return 32 * *(v2 + 8 * a2) + a1[6];
  }

  else
  {
    return a1[7];
  }
}

void ta2::TextureAtlasRegionBuffer::processItems(std::mutex *this)
{
  std::mutex::lock(this);
  sig = this[1].__m_.__sig;
  v3 = *this[1].__m_.__opaque;
  while (sig != v3)
  {
    v4 = *sig;
    sig += 2;
    (*(*v4 + 24))(v4);
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&this[1].__m_.__sig);

  std::mutex::unlock(this);
}

void std::__shared_ptr_emplace<ta2::TextureAtlasRegionBuffer>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 88);
  if (*(a1 + 88))
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 88));
    operator delete(*v2);
  }

  std::mutex::~mutex((a1 + 24));
}

void std::__tree<gdc::LayerDataWithWorld>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<gdc::LayerDataWithWorld>::destroy(*a1);
    std::__tree<gdc::LayerDataWithWorld>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    operator delete(a1);
  }
}

md::LabelsStateObserver **std::unique_ptr<md::LabelWorldTraits>::~unique_ptr[abi:nn200100](md::LabelsStateObserver **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::LabelsState::removeObserver(*(*(v2 + 1) + 168), v2);
    MEMORY[0x1B8C62190](v2, 0x10A1C40D2816C57);
  }

  return a1;
}

mdm::zone_mallocator **std::unique_ptr<md::LabelsState>::~unique_ptr[abi:nn200100](mdm::zone_mallocator **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 15);
    *(v2 + 15) = 0;
    if (v3)
    {
      MEMORY[0x1B8C62190](v3, 0x81C40B8603338);
    }

    v4 = *(v2 + 14);
    *(v2 + 14) = 0;
    if (v4)
    {
      MEMORY[0x1B8C62190](v4, 0x81C40B8603338);
    }

    v5 = *(v2 + 13);
    *(v2 + 13) = 0;
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x81C40B8603338);
    }

    v6 = *(v2 + 12);
    *(v2 + 12) = 0;
    if (v6)
    {
      MEMORY[0x1B8C62190](v6, 0x81C40B8603338);
    }

    v7 = *(v2 + 11);
    *(v2 + 11) = 0;
    if (v7)
    {
      MEMORY[0x1B8C62190](v7, 0x81C40B8603338);
    }

    v8 = *(v2 + 10);
    *(v2 + 10) = 0;
    if (v8)
    {
      MEMORY[0x1B8C62190](v8, 0x1081C40FC6463CFLL);
    }

    std::vector<md::LabelsStateObserver *,geo::allocator_adapter<md::LabelsStateObserver *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
    MEMORY[0x1B8C62190](v2, 0xA0C40BB0E9C0BLL);
  }

  return a1;
}

void std::vector<md::LabelsStateObserver *,geo::allocator_adapter<md::LabelsStateObserver *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelsStateObserver *>(v2, v1);
  }
}

void *md::MapNavLabeler::setRouteOverlayCache(void *this, const RouteOverlayCache *a2)
{
  if (this[13] != a2)
  {
    this[13] = a2;
    *(this[90] + 104) = a2;
    *(this[8] + 424) = a2;
  }

  return this;
}

void *non-virtual thunk tomd::MapNavLabeler::setRouteOverlayCache(void *this, const RouteOverlayCache *a2)
{
  if (this[12] != a2)
  {
    this[12] = a2;
    *(this[89] + 104) = a2;
    *(this[7] + 424) = a2;
  }

  return this;
}

uint64_t md::World::updateForConfiguration(md::World *a1, uint64_t a2)
{
  v54[2] = *MEMORY[0x1E69E9840];
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((a2 + 16), 0x20A1ED17D78F322BuLL);
  if (v4)
  {
    v5 = v4[5];
  }

  else
  {
    v5 = 0;
  }

  for (i = 0; i != 15; ++i)
  {
    v7 = *(a1 + 4);
    v8 = *(a1 + 5);
    if (v7 != v8)
    {
      while (*v7 != word_1B33B2EB0[i])
      {
        v7 += 8;
        if (v7 == v8)
        {
          goto LABEL_12;
        }
      }

      if (v7 != v8)
      {
        v9 = *(v7 + 1);
        if (v9)
        {
          v10 = *(v5 + 216);
          v53[0] = &unk_1F29F02D0;
          v53[1] = v5;
          LOBYTE(v54[0]) = v10;
          v54[1] = v53;
          memset(v54 + 1, 0, 7);
          std::function<std::shared_ptr<md::LabelManager> ()(void)>::operator=(v9 + 784, v53);
          std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](v53);
        }
      }
    }

LABEL_12:
    ;
  }

  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  if (v11 != v12)
  {
    v13 = *(a1 + 4);
    while (*v13 != 16)
    {
      v13 += 16;
      if (v13 == v12)
      {
        goto LABEL_21;
      }
    }

    if (v13 != v12)
    {
      v14 = *(v13 + 8);
      if (v14)
      {
        v15 = *(v5 + 216);
        v51[0] = &unk_1F29F02D0;
        v51[1] = v5;
        LOBYTE(v52[0]) = v15;
        v52[1] = v51;
        memset(v52 + 1, 0, 7);
        std::function<std::shared_ptr<md::LabelManager> ()(void)>::operator=(v14 + 816, v51);
        std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](v51);
        v11 = *(a1 + 4);
        v12 = *(a1 + 5);
      }
    }
  }

LABEL_21:
  if (v11 != v12)
  {
    v16 = v11;
    while (*v16 != 11)
    {
      v16 += 16;
      if (v16 == v12)
      {
        goto LABEL_29;
      }
    }

    if (v16 != v12)
    {
      v17 = *(v16 + 8);
      if (v17)
      {
        v18 = *(v5 + 216);
        v49[0] = &unk_1F29F02D0;
        v49[1] = v5;
        LOBYTE(v50[0]) = v18;
        v50[1] = v49;
        memset(v50 + 1, 0, 7);
        std::function<std::shared_ptr<md::LabelManager> ()(void)>::operator=(v17 + 856, v49);
        std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](v49);
        v11 = *(a1 + 4);
        v12 = *(a1 + 5);
      }
    }
  }

LABEL_29:
  if (v11 != v12)
  {
    v19 = v11;
    while (*v19 != 12)
    {
      v19 += 16;
      if (v19 == v12)
      {
        goto LABEL_37;
      }
    }

    if (v19 != v12)
    {
      v20 = *(v19 + 8);
      if (v20)
      {
        v21 = *(v5 + 216);
        v47[0] = &unk_1F29F02D0;
        v47[1] = v5;
        LOBYTE(v48[0]) = v21;
        v48[1] = v47;
        memset(v48 + 1, 0, 7);
        std::function<std::shared_ptr<md::LabelManager> ()(void)>::operator=(v20 + 856, v47);
        std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](v47);
        v11 = *(a1 + 4);
        v12 = *(a1 + 5);
      }
    }
  }

LABEL_37:
  if (v11 != v12)
  {
    v22 = v11;
    while (*v22 != 71)
    {
      v22 += 16;
      if (v22 == v12)
      {
        goto LABEL_45;
      }
    }

    if (v22 != v12)
    {
      v23 = *(v22 + 8);
      if (v23)
      {
        v24 = *(v5 + 216);
        v45[0] = &unk_1F29F02D0;
        v45[1] = v5;
        LOBYTE(v46[0]) = v24;
        v46[1] = v45;
        memset(v46 + 1, 0, 7);
        std::function<std::shared_ptr<md::LabelManager> ()(void)>::operator=(v23 + 856, v45);
        std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](v45);
        v11 = *(a1 + 4);
        v12 = *(a1 + 5);
      }
    }
  }

LABEL_45:
  if (v11 != v12)
  {
    v25 = v11;
    while (*v25 != 72)
    {
      v25 += 16;
      if (v25 == v12)
      {
        goto LABEL_53;
      }
    }

    if (v25 != v12)
    {
      v26 = *(v25 + 8);
      if (v26)
      {
        v27 = *(v5 + 216);
        v43[0] = &unk_1F29F02D0;
        v43[1] = v5;
        LOBYTE(v44[0]) = v27;
        v44[1] = v43;
        memset(v44 + 1, 0, 7);
        std::function<std::shared_ptr<md::LabelManager> ()(void)>::operator=(v26 + 856, v43);
        std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](v43);
        v11 = *(a1 + 4);
        v12 = *(a1 + 5);
      }
    }
  }

LABEL_53:
  if (v11 != v12)
  {
    v28 = v11;
    while (*v28 != 81)
    {
      v28 += 16;
      if (v28 == v12)
      {
        goto LABEL_61;
      }
    }

    if (v28 != v12)
    {
      v29 = *(v28 + 8);
      if (v29)
      {
        v30 = *(v5 + 216);
        v41[0] = &unk_1F29F02D0;
        v41[1] = v5;
        LOBYTE(v42[0]) = v30;
        v42[1] = v41;
        memset(v42 + 1, 0, 7);
        std::function<std::shared_ptr<md::LabelManager> ()(void)>::operator=(v29 + 856, v41);
        std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](v41);
        v11 = *(a1 + 4);
        v12 = *(a1 + 5);
      }
    }
  }

LABEL_61:
  if (v11 == v12)
  {
    goto LABEL_71;
  }

  v31 = v11;
  while (*v31 != 37)
  {
    v31 += 16;
    if (v31 == v12)
    {
      goto LABEL_71;
    }
  }

  if (v31 != v12)
  {
    v32 = *(v31 + 8);
    if (v32)
    {
      v39[0] = &unk_1F29F02D0;
      v39[1] = v5;
      LOBYTE(v40[0]) = 1;
      v40[1] = v39;
      memset(v40 + 1, 0, 7);
      std::function<std::shared_ptr<md::LabelManager> ()(void)>::operator=(v32 + 624, v39);
      std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](v39);
      v11 = *(a1 + 4);
      v12 = *(a1 + 5);
    }
  }

LABEL_71:
  while (v11 != v12)
  {
    if (*v11 == 38)
    {
      if (v11 != v12)
      {
        v36 = *(v11 + 8);
        if (v36)
        {
          v37[0] = &unk_1F29F02D0;
          v37[1] = v5;
          LOBYTE(v38[0]) = 1;
          v38[1] = v37;
          memset(v38 + 1, 0, 7);
          std::function<std::shared_ptr<md::LabelManager> ()(void)>::operator=(v36 + 624, v37);
          std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](v37);
        }
      }

      break;
    }

    v11 += 16;
  }

  v33 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((a2 + 16), 0x2B7C4502BD3C99C6uLL);
  if (v33)
  {
    v34 = v33[5];
  }

  else
  {
    v34 = 0;
  }

  *(*(a1 + 34) + 336) = v34;
  return md::World::updateTileSize(a1);
}

void sub_1B28F1730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<std::shared_ptr<md::LabelManager> ()(void)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](v7);
  return a1;
}

__n128 std::__function::__func<md::LabelsLogic::labelManagerSource(gdc::WorldType)::$_0,std::allocator<md::LabelsLogic::labelManagerSource(gdc::WorldType)::$_0>,std::shared_ptr<md::LabelManager> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F02D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::World::updateTileSize(md::World *this)
{
  v2 = 0;
  *(this + 39) = 0;
  v3 = *(*(this + 3) + 56);
  v4 = 1;
  do
  {
    v5 = v4;
    result = gdc::ResourceManager::tileSize(v3, md::World::updateTileSize(void)::resourceTypes[v2]);
    if ((result & 0x100000000) != 0 && *(this + 39) < result)
    {
      *(this + 39) = result;
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  if (!*(this + 39))
  {
    *(this + 39) = 256;
  }

  return result;
}

void *md::TiledGEOResourceFetcher::tileSize(md::TiledGEOResourceFetcher *this)
{
  result = *(this + 96);
  if (result)
  {
    if ([result scale] == 2)
    {
      if (*(this + 2) > 1.0)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 1;
    }

    v4 = [*(this + 96) size];
    v5 = 0x20001000080uLL >> (16 * v4);
    if (v4 >= 3)
    {
      LOWORD(v5) = 0;
    }

    return (((v5 & 0x380) / v3) | 0x100000000);
  }

  return result;
}

uint64_t gdc::ResourceManager::tileSize(gdc::ResourceManager *this, int a2)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v2 == v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    while (*v2 != a2)
    {
      v2 += 8;
      if (v2 == v3)
      {
        goto LABEL_8;
      }
    }

    if (v2 != v3)
    {
      v7 = (*(**(v2 + 1) + 72))(*(v2 + 1));
      v5 = v7 & 0xFF00000000;
      v6 = v7 & 0xFFFFFF00;
      v4 = v7;
      return v5 | v4 | v6;
    }

LABEL_8:
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  return v5 | v4 | v6;
}

uint64_t md::CartographicMapEngineConfiguration::resolveMode(md::CartographicMapEngineConfiguration *this, md::MapEngine *a2)
{
  v3 = *(a2 + 5242);
  v4 = *v3;
  v5 = v3[1];
  if (v4 == v5)
  {
    goto LABEL_5;
  }

  v6 = v4;
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
  }

  else
  {
    v7 = *(v6 + 8);
    if ((v7 - 1) < 4)
    {
      return (0x9080703u >> (8 * (v7 - 1)));
    }
  }

  if (v4 == v5)
  {
    goto LABEL_10;
  }

  v8 = v4;
  while (*v8 != 21)
  {
    v8 += 16;
    if (v8 == v5)
    {
      goto LABEL_10;
    }
  }

  if (v8 == v5)
  {
LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  v9 = *(v8 + 8) == 0;
LABEL_11:
  while (v4 != v5)
  {
    if (*v4 == 22)
    {
      if (v4 != v5)
      {
        v11 = *(v4 + 8) == 0;
        goto LABEL_20;
      }

      break;
    }

    v4 += 16;
  }

  v11 = 1;
LABEL_20:
  if (!v9 || !v11)
  {
    v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(a2 + 5241) + 16), 0x17767EADC5B287BuLL)[5];
    v14 = *(v13 + 20);
    if (*(v14 + 41) & 1) == 0 && (*(v14 + 42))
    {
      LOBYTE(v10) = 0;
      return v10;
    }

    this = md::ElevationLogic::isGroundElevated(v13);
    if (this)
    {
      switch(v7)
      {
        case 8:
          LOBYTE(v10) = 12;
          return v10;
        case 0:
          LOBYTE(v10) = 10;
          return v10;
        case 5:
          LOBYTE(v10) = 11;
          return v10;
      }
    }
  }

  return md::MapEngineConfiguration::resolveMode(this, a2);
}

uint64_t md::MapEngineConfiguration::resolveMode(md::MapEngineConfiguration *this, md::MapEngine *a2)
{
  v2 = *(a2 + 5242);
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 == v4)
  {
    return 1;
  }

  v5 = *v2;
  while (*v5 != 20)
  {
    v5 += 16;
    if (v5 == v4)
    {
      return 1;
    }
  }

  if (v5 == v4)
  {
    return 1;
  }

  else
  {
    v6 = *(v5 + 2);
    v7 = 1;
    if (v6 > 5)
    {
      if (v6 <= 7)
      {
        if (v6 == 7)
        {
          v7 = 4;
        }

        else
        {
          v7 = 1;
        }

        if (v6 == 6)
        {
          return 2;
        }
      }

      else
      {
        switch(v6)
        {
          case 8:
            return 6;
          case 9:
            while (*v3 != 26)
            {
              v3 += 16;
              if (v3 == v4)
              {
                goto LABEL_44;
              }
            }

            if (v3 == v4)
            {
LABEL_44:
              LOBYTE(v12) = 0;
              return (v12 + 13);
            }

            v12 = v3[8];
            if (v12 >= 4)
            {
              return 17;
            }

            return (v12 + 13);
          case 10:
            return 17;
        }
      }
    }

    else
    {
      if (v6 == 5)
      {
        v8 = 5;
      }

      else
      {
        v8 = 1;
      }

      if (v6 == 4)
      {
        v9 = 9;
      }

      else
      {
        v9 = v8;
      }

      if (v6 == 3)
      {
        v10 = 8;
      }

      else
      {
        v10 = v9;
      }

      if (v6 == 2)
      {
        v7 = 7;
      }

      else
      {
        v7 = 1;
      }

      if (v6 == 1)
      {
        v7 = 3;
      }

      if (v6 > 2)
      {
        return v10;
      }
    }
  }

  return v7;
}

uint64_t md::CartographicMapEngineConfiguration::shouldRebuildCurrentMode(md::CartographicMapEngineConfiguration *this, md::MapEngine *a2)
{
  v4 = +[VKDebugSettings sharedSettings];
  v5 = [v4 daVinciCameraControllerForceMercatorZoom];

  v6 = +[VKDebugSettings sharedSettings];
  v7 = [v6 daVinciCameraController];

  v8 = *(a2 + 5917);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (v9 == v10)
  {
    goto LABEL_4;
  }

  while (*v9 != 0x3815A15069F224CDLL)
  {
    v9 += 5;
    if (v9 == v10)
    {
      goto LABEL_4;
    }
  }

  if (v9 == v10)
  {
LABEL_4:
    v11 = 0;
  }

  else
  {
    v11 = v9[3];
    v14 = v9[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }
  }

  if (*(this + 35) == v5 && *(this + 36) == v7)
  {
    v15 = *(v11 + 40);
    v12 = *v15;
    *v15 = 0;
  }

  else
  {
    v12 = 1;
  }

  *(this + 35) = v5;
  *(this + 36) = v7;
  return v12 & 1;
}

uint64_t md::ElevationLogic::isGroundElevated(md::ElevationLogic *this)
{
  v1 = *(*(this + 35) + 41936);
  v2 = *v1;
  v3 = v1[1];
  if (v2 != v3)
  {
    v4 = v2;
    while (*v4 != 20)
    {
      v4 += 16;
      if (v4 == v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 != v3)
    {
      v5 = (*(v4 + 8) - 2) < 3;
      goto LABEL_9;
    }
  }

LABEL_8:
  v5 = 0;
LABEL_9:
  while (v2 != v3)
  {
    if (*v2 == 29)
    {
      if (v2 != v3 && *(v2 + 8) != 0 && v5)
      {
        v6 = 1;
        return v6 & 1;
      }

      break;
    }

    v2 += 16;
  }

  v6 = *(*(this + 20) + 80);
  return v6 & 1;
}

void md::CartographicGlobeMapEngineConfiguration::createMode(int a1@<W1>, void *a2@<X8>)
{
  switch(a1)
  {
    case 0:
      operator new();
    case 1:
      operator new();
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
      operator new();
    case 6:
      operator new();
    case 7:
      operator new();
    case 8:
      operator new();
    case 9:
      operator new();
    case 10:
      operator new();
    case 11:
      operator new();
    case 12:
      operator new();
    case 17:
      operator new();
    default:
      *a2 = 0;
      return;
  }
}

uint64_t md::StandardMapEngineMode::StandardMapEngineMode(uint64_t a1, char a2, int a3, char a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = md::CartographicMapEngineMode::CartographicMapEngineMode(a1, a2);
  *v7 = &unk_1F2A0E0A8;
  *(v7 + 648) = a4;
  *(v7 + 616) = 100;
  *(v7 + 49) = 1;
  *(v7 + 52) = 21;
  LOWORD(v22) = 2560;
  v23 = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((v7 + 464), &v22);
  LOWORD(v22) = 5386;
  v23 = 0x3FD657184AE74487;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 464), &v22);
  LOWORD(v22) = 2560;
  v23 = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 512), &v22);
  LOWORD(v22) = 5386;
  v23 = 0x3FE0C152382D7365;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 512), &v22);
  LOWORD(v22) = 768;
  v23 = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 488), &v22);
  LOWORD(v22) = 3843;
  v23 = 0x3FE38C35418A5BF6;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 488), &v22);
  LOWORD(v22) = 4111;
  v23 = 0x3FF0C152382D7365;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 488), &v22);
  LOWORD(v22) = 4624;
  v23 = 0x3FF38C35418A5BF6;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 488), &v22);
  LOWORD(v22) = 5650;
  v23 = 0x3FF4F1A6C638D03FLL;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 488), &v22);
  if (a3)
  {
    v8 = +[VKDebugSettings sharedSettings];
    if ([v8 daVinciCameraController])
    {
      v9 = +[VKDebugSettings sharedSettings];
      v10 = [v9 daVinciCameraControllerForceMercatorZoom];

      if (v10)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {

      v11 = 2;
    }

    *(a1 + 224) = v11;
    *(a1 + 225) = 4;
    md::MapEngineMode::addTileSelectionTileSetType(a1);
  }

  else
  {
    *(a1 + 224) = 0;
  }

  v22 = 0x201F15100C330200;
  LOWORD(v23) = 6172;
  md::MapEngineMode::addRequiredRenderLayers(a1, &v22, 10);
  if (a3)
  {
    LOBYTE(v22) = 1;
  }

  else
  {
    LOBYTE(v22) = 3;
  }

  md::MapEngineMode::addRequiredRenderLayers(a1, &v22, 1);
  LODWORD(v22) = 739183895;
  WORD2(v22) = 4648;
  md::MapEngineMode::addOptionalRenderLayers(a1, &v22, 6);
  v22 = 0x19110E1B2A291E1ALL;
  md::MapEngineMode::addAllowedRenderLayers(a1, &v22, 8);
  v22 = 0x2B7C4502BD3C99C6;
  v23 = "md::ResolvedSceneLogic]";
  v24 = 22;
  gdc::LogicExecutionGraphBuilder::addFlowAfter((a1 + 232), &v22, 0);
  v22 = 0x17767EADC5B287BLL;
  v23 = "md::ElevationLogic]";
  v24 = 18;
  gdc::LogicExecutionGraphBuilder::addFlowAfter((a1 + 232), &v22, 1);
  gdc::LogicExecutionGraphBuilder::addLogic<md::mun::MuninLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::VenueLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::AnchorLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::AssetLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::AssetInjectionLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::CameraLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::ElevationLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::GeometryLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::GridLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::HikingLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::IdentifiedResourceLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LabelsLogic>((a1 + 232));
  v21[0] = 0x7B0BD282CA8076EELL;
  v21[1] = "md::HillshadeLogic]";
  v21[2] = 18;
  *&v18 = 0xE719E07499A88BEBLL;
  *(&v18 + 1) = "md::HillshadeContext]";
  v19 = 20;
  v20 = 1;
  v25 = xmmword_1E7B357F0;
  v23 = &v25;
  v24 = 2;
  v22 = &unk_1F2A4B5D0;
  v26 = unk_1E7B35800;
  v27 = xmmword_1E7B35810;
  v17[1] = &v18;
  v17[2] = 0;
  v17[0] = &unk_1F2A4C258;
  gdc::LogicExecutionGraphBuilder::addLogic((a1 + 232), v21, &v18, 0, &v22, v17);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LightingLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LoadingStatusLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::MapZoomLevelStyleLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::MaterialLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::MeshRenderableLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::NavigationLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::RouteLineLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::PuckLocationAnimationTracingLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::OverlaysLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::DrapingLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::RegistryLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingRegistryLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::PolygonLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::RouteOverlayLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LayerDataLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileSelectionLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingSceneLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::ResolvedSceneLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::SceneQueryLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::SettingsLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::SharedResourcesLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::SkyLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::StyleLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::PuckLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::NonTiledAssetLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LocalNorthLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::StandardLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::DebugDrawLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::BVHDebugLogic>((a1 + 232));
  if (*(a1 + 648) == 1)
  {
    gdc::LogicExecutionGraphBuilder::addLogic<md::CollectMapDataLogic<(md::MapDataType)54>>((a1 + 232));
    gdc::LogicExecutionGraphBuilder::addLogic<md::CollectMapDataLogic<(md::MapDataType)62>>((a1 + 232));
    gdc::LogicExecutionGraphBuilder::addLogic<md::CollectRenderablesLogic<(md::MapDataType)54,md::DaVinciGroundRenderable>>((a1 + 232));
    gdc::LogicExecutionGraphBuilder::addLogic<md::CollectRenderablesLogic<(md::MapDataType)62,md::DaVinciGroundRenderable>>((a1 + 232));
  }

  LOWORD(v22) = 1;
  WORD1(v22) = a3;
  if (a3)
  {
    v12 = 1;
  }

  else
  {
    v12 = 3;
  }

  WORD2(v22) = 2;
  if (a3)
  {
    v13 = 7;
  }

  else
  {
    v13 = 2;
  }

  HIWORD(v22) = a3;
  if (a3)
  {
    v14 = 1;
  }

  else
  {
    v14 = 4;
  }

  LOWORD(v23) = 4;
  WORD1(v23) = a3;
  WORD2(v23) = 67;
  HIWORD(v23) = a3;
  md::MapEngineMode::addRequiredMapDataTypes(a1, &v22, 4);
  LOWORD(v22) = 18;
  WORD1(v22) = a3;
  WORD2(v22) = 19;
  HIWORD(v22) = a3;
  LOWORD(v23) = 28;
  WORD1(v23) = a3;
  WORD2(v23) = 27;
  HIWORD(v23) = a3;
  LOWORD(v24) = 15;
  WORD1(v24) = a3;
  WORD2(v24) = 41;
  HIWORD(v24) = a3;
  LOWORD(v25) = 42;
  WORD1(v25) = a3;
  WORD2(v25) = 55;
  WORD3(v25) = a3;
  WORD4(v25) = 56;
  WORD5(v25) = a3;
  WORD6(v25) = 62;
  HIWORD(v25) = a3;
  md::MapEngineMode::addOptionalMapDataTypes(a1, &v22, 10);
  LOWORD(v22) = 6;
  if (a3)
  {
    v15 = 6;
  }

  else
  {
    v15 = 3;
  }

  WORD1(v22) = v15;
  WORD2(v22) = 26;
  HIWORD(v22) = a3;
  LOWORD(v23) = 66;
  WORD1(v23) = a3;
  WORD2(v23) = 73;
  HIWORD(v23) = a3;
  LOWORD(v24) = 14;
  WORD1(v24) = a3;
  WORD2(v24) = 54;
  HIWORD(v24) = a3;
  LOWORD(v25) = 11;
  WORD1(v25) = v13;
  WORD2(v25) = 12;
  WORD3(v25) = v13;
  WORD4(v25) = 71;
  WORD5(v25) = v13;
  WORD6(v25) = 72;
  HIWORD(v25) = v13;
  LOWORD(v26) = 40;
  WORD1(v26) = a3;
  WORD2(v26) = 35;
  WORD3(v26) = v12;
  WORD4(v26) = 51;
  WORD5(v26) = v14;
  WORD6(v26) = 20;
  HIWORD(v26) = a3;
  LOWORD(v27) = 24;
  WORD1(v27) = a3;
  WORD2(v27) = 64;
  WORD3(v27) = a3;
  WORD4(v27) = 65;
  WORD5(v27) = a3;
  WORD6(v27) = 69;
  HIWORD(v27) = a3;
  v28 = 68;
  v29 = a3;
  v30 = 70;
  v31 = a3;
  v32 = 74;
  v33 = a3;
  md::MapEngineMode::addAllowedMapDataTypes(a1, &v22, 21);
  LOWORD(v18) = 1;
  v22 = &v18;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 1u) + 18) = 1;
  LOWORD(v18) = 8;
  v22 = &v18;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 8u) + 18) = 0;
  LOWORD(v18) = 4;
  v22 = &v18;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 4u) + 18) = 1;
  LOWORD(v18) = 3;
  v22 = &v18;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 3u) + 18) = 1;
  LOWORD(v18) = 7;
  v22 = &v18;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 7u) + 18) = 1;
  LOWORD(v18) = 6;
  v22 = &v18;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 6u) + 18) = 1;
  LOWORD(v18) = 5;
  v22 = &v18;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 5u) + 18) = 1;
  LOWORD(v18) = 2;
  v22 = &v18;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 2u) + 18) = 1;
  LOWORD(v18) = 0;
  v22 = &v18;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 0) + 18) = 1;
  return a1;
}

uint64_t md::MapEngineMode::MapEngineMode(uint64_t a1, char a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2A588D0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = a2;
  *(a1 + 49) = 1;
  *(a1 + 52) = 21;
  *(a1 + 56) = 0x3FE0C152382D7365;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 128) = 0u;
  *(a1 + 120) = a1 + 128;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 176) = 1065353216;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 216) = 1065353216;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 1065353216;
  *(a1 + 304) = 0u;
  *(a1 + 296) = a1 + 304;
  *(a1 + 328) = 0u;
  *(a1 + 320) = a1 + 328;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = 1065353216;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 1065353216;
  *(a1 + 456) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 464) = a1 + 472;
  *(a1 + 496) = 0u;
  *(a1 + 488) = a1 + 496;
  *(a1 + 512) = a1 + 520;
  *(a1 + 536) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 608) = 0;
  v3 = (a1 + 344);
  *(a1 + 368) = 0u;
  v4 = (a1 + 368);
  *(a1 + 520) = 0u;
  v8[0] = &unk_1F29E81F0;
  v8[3] = v8;
  v10 = v9;
  std::__function::__func<md::MapEngineMode::MapEngineMode(md::MapEngineModeType)::$_0,std::allocator<md::MapEngineMode::MapEngineMode(md::MapEngineModeType)::$_0>,std::string ()(gdc::TypeInfo)>::__clone(v8, v9);
  if (v3 != v9)
  {
    v5 = v10;
    v6 = *v4;
    if (v10 == v9)
    {
      if (v6 == v3)
      {
        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = 0;
        (*(**v4 + 24))(*v4, v9);
        (*(**v4 + 32))();
        *v4 = 0;
        v10 = v9;
        (*(v11[0] + 24))(v11, v3);
        (*(v11[0] + 32))(v11);
      }

      else
      {
        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = *v4;
      }

      *v4 = v3;
    }

    else if (v6 == v3)
    {
      (*(*v6 + 24))(*v4, v9);
      (*(**v4 + 32))();
      *v4 = v10;
      v10 = v9;
    }

    else
    {
      v10 = *v4;
      *v4 = v5;
    }
  }

  std::__function::__value_func<std::string ()(gdc::TypeInfo)>::~__value_func[abi:nn200100](v9);
  std::__function::__value_func<std::string ()(gdc::TypeInfo)>::~__value_func[abi:nn200100](v8);
  return a1;
}

uint64_t md::CartographicMapEngineMode::CartographicMapEngineMode(uint64_t a1, char a2)
{
  v3 = md::MapEngineMode::MapEngineMode(a1, a2);
  *v3 = &unk_1F2A0BB38;
  *(v3 + 616) = 0;
  *(v3 + 624) = 0;
  *(v3 + 628) = 0;
  *(v3 + 644) = 0;
  *(v3 + 225) = 0;
  v4 = [MEMORY[0x1E69A2398] sharedPlatform];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    gdc::LogicExecutionGraphBuilder::addLogic<md::DisplayLinkVerificationLogic>((a1 + 232));
  }

  return a1;
}

uint64_t std::__function::__value_func<std::string ()(gdc::TypeInfo)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__tree<std::__value_type<gm::Range<unsigned char>,geo::Unit<geo::RadianUnitDescription,double>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,geo::Unit<geo::RadianUnitDescription,double>>,geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,geo::Unit<geo::RadianUnitDescription,double>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>(uint64_t a1, unsigned __int8 a2)
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
      v4 = *(v2 + 33);
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
      return 0;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(void *result, unsigned __int8 *a2)
{
  if (!result[2])
  {
    return std::__tree<std::__value_type<gm::Range<unsigned char>,geo::Unit<geo::RadianUnitDescription,double>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,geo::Unit<geo::RadianUnitDescription,double>>,geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,geo::Unit<geo::RadianUnitDescription,double>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>(result, a2[1]);
  }

  v2 = result + 1;
  if (*result == result + 1)
  {
    v8 = *result;
  }

  else
  {
    v3 = 0;
    v4 = *result;
    do
    {
      v5 = v4[1];
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
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      ++v3;
      v4 = v6;
    }

    while (v6 != v2);
    v8 = *result;
    do
    {
      v9 = v3 >> 1;
      v10 = v8;
      if (v3 >= 2)
      {
        v11 = v3 >> 1;
        v12 = v8;
        do
        {
          v13 = v12[1];
          if (v13)
          {
            do
            {
              v10 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v10 = v12[2];
              v7 = *v10 == v12;
              v12 = v10;
            }

            while (!v7);
          }

          v12 = v10;
        }

        while (v11-- > 1);
      }

      if (*(v10 + 33) < a2[1])
      {
        v15 = v10[1];
        if (v15)
        {
          do
          {
            v8 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v7 = *v8 == v10;
            v10 = v8;
          }

          while (!v7);
        }

        v9 = v3 + ~v9;
      }

      v3 = v9;
    }

    while (v9);
  }

  if (v2 == v8 || *(v8 + 32) >= a2[1])
  {
    if (*result == v8)
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,geo::Unit<geo::RadianUnitDescription,double>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,geo::Unit<geo::RadianUnitDescription,double>>,geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,geo::Unit<geo::RadianUnitDescription,double>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>(result, a2[1]);
    }

    v16 = *v8;
    if (*v8)
    {
      do
      {
        v17 = v16;
        v16 = *(v16 + 8);
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = v8[2];
        v7 = *v17 == v8;
        v8 = v17;
      }

      while (v7);
    }

    if (*a2 >= *(v17 + 33))
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,geo::Unit<geo::RadianUnitDescription,double>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,geo::Unit<geo::RadianUnitDescription,double>>,geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,geo::Unit<geo::RadianUnitDescription,double>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>(result, a2[1]);
    }
  }

  return result;
}

uint64_t md::MapEngineMode::addTileSelectionTileSetType(uint64_t a1)
{
  v3 = *(a1 + 128);
  result = a1 + 128;
  v2 = v3;
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 26);
      if (v5 < 9)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 == 8)
    {
      return result;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,md::DataRequirement>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,md::DataRequirement>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(void *a1, unsigned __int8 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 16) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t **md::MapEngineMode::addRequiredRenderLayers(uint64_t **result, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2++;
      v7 = v6;
      v8 = &v7;
      result = std::__hash_table<std::__hash_value_type<unsigned char,md::DataRequirement>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,md::DataRequirement>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v5 + 18, v6);
      *(result + 17) = 0;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t **md::MapEngineMode::addOptionalRenderLayers(uint64_t **result, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2++;
      v7 = v6;
      v8 = &v7;
      result = std::__hash_table<std::__hash_value_type<unsigned char,md::DataRequirement>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,md::DataRequirement>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v5 + 18, v6);
      *(result + 17) = 1;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t **md::MapEngineMode::addAllowedRenderLayers(uint64_t **result, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2++;
      v7 = v6;
      v8 = &v7;
      result = std::__hash_table<std::__hash_value_type<unsigned char,md::DataRequirement>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,md::DataRequirement>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v5 + 18, v6);
      *(result + 17) = 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void gdc::LogicExecutionGraphBuilder::addFlowAfter(int8x8_t *a1, unint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a1[24];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*&a1[23] + 8 * v7);
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

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  v12 = v9[6];
  v11 = v9[7];
  if (v12 >= v11)
  {
    v14 = v9[5];
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 4;
    v17 = v16 + 1;
    if ((v16 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v18 = v11 - v14;
    if (v18 >> 3 > v17)
    {
      v17 = v18 >> 3;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF0)
    {
      v19 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mre::TextureHandle>>(v19);
    }

    v20 = v16;
    v21 = 16 * v16;
    *v21 = a3;
    *(v21 + 8) = 1;
    v13 = 16 * v16 + 16;
    v22 = (v21 - 16 * v20);
    memcpy(v22, v14, v15);
    v23 = v9[5];
    v9[5] = v22;
    v9[6] = v13;
    v9[7] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v12 = a3;
    *(v12 + 8) = 1;
    v13 = v12 + 16;
  }

  v9[6] = v13;
}

void sub_1B28F3F6C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::mun::MuninLogic>(void *a1)
{
  v8[0] = 0xEA624BC935BAF297;
  v8[1] = "md::mun::MuninLogic]";
  v8[2] = 19;
  *&v5 = 0x8EA84A1BD3791AFALL;
  *(&v5 + 1) = "md::mun::MuninContext]";
  v6 = 21;
  v7 = 1;
  v3[1] = unk_1E7B332D0;
  v3[2] = xmmword_1E7B332E0;
  v3[3] = unk_1E7B332F0;
  v2[1] = v3;
  v2[2] = 3;
  v1[2] = 0;
  v2[0] = &unk_1F2A4B5F0;
  v4 = 20;
  v3[0] = xmmword_1E7B332C0;
  v1[0] = &unk_1F2A4C258;
  v1[1] = v2;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v8, &v5, 1, v2, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic(void *a1, unint64_t *a2, __int128 *a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = a1[4];
  if (v12)
  {
    v13 = *a2;
    v14 = vcnt_s8(v12);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = *a2;
      if (v13 >= *&v12)
      {
        v15 = v13 % *&v12;
      }
    }

    else
    {
      v15 = (*&v12 - 1) & v13;
    }

    v16 = *(a1[3] + 8 * v15);
    if (v16)
    {
      for (i = *v16; i; i = *i)
      {
        v18 = i[1];
        if (v13 == v18)
        {
          if (i[2] == v13)
          {
            return;
          }
        }

        else
        {
          if (v14.u32[0] > 1uLL)
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
            break;
          }
        }
      }
    }
  }

  v78 = *a2;
  v79 = a2[2];
  v19 = a1[17];
  if (v19)
  {
    *v74 = *a2;
    *&v74[16] = a2[2];
    (*(*v19 + 48))(&__p);
    *v74 = v78;
    *&v74[16] = v79;
    v74[24] = a4;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    if (v73 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v73 = 0;
    LOBYTE(__p) = 0;
    *v74 = *a2;
    *&v74[16] = a2[2];
    v74[24] = a4;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
  }

  *v65 = *v74;
  *&v65[9] = *&v74[9];
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  for (j = a1[1]; j; j = *j)
  {
    v21 = j[4];
    v22 = *(j + 56);
    v23 = v74[24] < v22;
    if (*v74 != v21)
    {
      v23 = *v65 < v21;
    }

    if (!v23)
    {
      v24 = v22 < v74[24];
      if (*v65 == v21)
      {
        v25 = v24;
      }

      else
      {
        v25 = v21 < *v65;
      }

      if (!v25)
      {
        goto LABEL_32;
      }

      ++j;
    }
  }

  v78 = 0uLL;
  v79 = 0;
  std::__tree<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,std::__map_value_compare<gdc::LogicExecutionNode,std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,gdc::LogicExecutionNodeCompare,true>,std::allocator<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>>>::__emplace_unique_key_args<gdc::LogicExecutionNode,gdc::LogicExecutionNode&,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>(a1, *v74, v74[24]);
  *&v64 = &v78;
  std::vector<gdc::LogicExecutionNode>::__destroy_vector::operator()[abi:nn200100](&v64);
LABEL_32:
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  std::__hash_table<gdc::TypeInfo,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,std::allocator<gdc::TypeInfo>>::__emplace_unique_key_args<gdc::TypeInfo,gdc::TypeInfo const&>(a1 + 3, *a2);
  if (*(a3 + 24) == 1)
  {
    v26 = *a3;
    v63 = *(a3 + 8);
    v27 = a1[17];
    if (v27)
    {
      v78 = *a3;
      v79 = *(a3 + 2);
      (*(*v27 + 48))(&v61);
    }

    else
    {
      v62 = 0;
      LOBYTE(v61) = 0;
    }

    v64 = v63;
    v28 = a1[9];
    if (!v28)
    {
LABEL_44:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v29 = v28;
        v30 = v28[4];
        if (v26 >= v30)
        {
          break;
        }

        v28 = *v29;
        if (!*v29)
        {
          goto LABEL_44;
        }
      }

      if (v30 >= v26)
      {
        break;
      }

      v28 = v29[1];
      if (!v28)
      {
        goto LABEL_44;
      }
    }

    v32 = v29[8];
    v31 = v29[9];
    if (v32 >= v31)
    {
      v35 = v29[7];
      v36 = 0xCCCCCCCCCCCCCCCDLL * ((v32 - v35) >> 4);
      if (v36 + 1 > 0x333333333333333)
      {
        goto LABEL_93;
      }

      v37 = 0xCCCCCCCCCCCCCCCDLL * ((v31 - v35) >> 4);
      v38 = 2 * v37;
      if (2 * v37 <= v36 + 1)
      {
        v38 = v36 + 1;
      }

      if (v37 >= 0x199999999999999)
      {
        v39 = 0x333333333333333;
      }

      else
      {
        v39 = v38;
      }

      v81 = v29 + 7;
      v60 = a5;
      if (v39)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LogicExecutionNode>>(v39);
      }

      v40 = 80 * v36;
      *v40 = *v74;
      v41 = *&v74[9];
      *(80 * v36 + 0x20) = 0;
      *(v40 + 9) = v41;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      if (*(&v75 + 1) != v75)
      {
        std::vector<gdc::FlowExecutionNode>::__vallocate[abi:nn200100](80 * v36 + 32, (*(&v75 + 1) - v75) >> 4);
      }

      *(80 * v36 + 0x38) = 0;
      *(80 * v36 + 0x40) = 0;
      *(80 * v36 + 0x48) = 0;
      if (v77 != *(&v76 + 1))
      {
        std::vector<gdc::FlowExecutionNode>::__vallocate[abi:nn200100](v40 + 56, (v77 - *(&v76 + 1)) >> 4);
      }

      v34 = v40 + 80;
      v42 = v29[7];
      v43 = v29[8];
      v44 = v40 + v42 - v43;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LogicExecutionNode>,gdc::LogicExecutionNode*>(v42, v43, v44);
      v45 = v29[7];
      v29[7] = v44;
      v29[8] = v40 + 80;
      v46 = v29[9];
      v29[9] = 0;
      v79 = v45;
      v80 = v46;
      *&v78 = v45;
      *(&v78 + 1) = v45;
      std::__split_buffer<gdc::LogicExecutionNode>::~__split_buffer(&v78);
      a5 = v60;
    }

    else
    {
      *v32 = *v74;
      v33 = *&v74[9];
      *(v32 + 32) = 0;
      *(v32 + 9) = v33;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      if (*(&v75 + 1) != v75)
      {
        std::vector<gdc::FlowExecutionNode>::__vallocate[abi:nn200100](v32 + 32, (*(&v75 + 1) - v75) >> 4);
      }

      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      *(v32 + 72) = 0;
      if (v77 != *(&v76 + 1))
      {
        std::vector<gdc::FlowExecutionNode>::__vallocate[abi:nn200100](v32 + 56, (v77 - *(&v76 + 1)) >> 4);
      }

      v34 = v32 + 80;
    }

    v29[8] = v34;
    if (v62 < 0)
    {
      operator delete(v61);
    }

    if (*(a3 + 24))
    {
      v47 = a1[12];
      if (v47)
      {
        v48 = *a3;
        v49 = a1 + 12;
        do
        {
          v50 = v47[4];
          v51 = v50 >= v48;
          v52 = v50 < v48;
          if (v51)
          {
            v49 = v47;
          }

          v47 = v47[v52];
        }

        while (v47);
        if (v49 != a1 + 12 && v48 >= v49[4])
        {
          v54 = v49[7];
          v53 = v49[8];
          while (v54 != v53)
          {
            gdc::LogicExecutionGraphBuilder::tryAddEdge(a1, v54, v74, *(v54 + 80));
            v54 += 88;
          }

          v55 = v49[1];
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
            v57 = v49;
            do
            {
              v56 = v57[2];
              v58 = *v56 == v57;
              v57 = v56;
            }

            while (!v58);
          }

          if (a1[11] == v49)
          {
            a1[11] = v56;
          }

          v59 = a1[12];
          --a1[13];
          std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v59, v49);
          *&v78 = v49 + 7;
          std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>::__destroy_vector::operator()[abi:nn200100](&v78);
          operator delete(v49);
        }
      }

      goto LABEL_87;
    }

    std::__throw_bad_optional_access[abi:nn200100]();
LABEL_93:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_87:
  gdc::LogicExecutionGraphBuilder::processDependentTypes(a1, v74, *(a5 + 8), *(a5 + 16), 0);
  gdc::LogicExecutionGraphBuilder::processDependentTypes(a1, v74, *(a6 + 8), *(a6 + 16), 1);
  if (*(&v76 + 1))
  {
    operator delete(*(&v76 + 1));
  }

  if (v75)
  {
    *(&v75 + 1) = v75;
    operator delete(v75);
  }
}

void std::__function::__func<md::MapEngineMode::MapEngineMode(md::MapEngineModeType)::$_0,std::allocator<md::MapEngineMode::MapEngineMode(md::MapEngineModeType)::$_0>,std::string ()(gdc::TypeInfo)>::operator()(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = *(a1 + 8);
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    memmove(a2, v4, v3);
  }

  a2[v3] = 0;
}

uint64_t *std::__tree<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,std::__map_value_compare<gdc::LogicExecutionNode,std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,gdc::LogicExecutionNodeCompare,true>,std::allocator<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>>>::__emplace_unique_key_args<gdc::LogicExecutionNode,gdc::LogicExecutionNode&,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  result = std::__tree<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,std::__map_value_compare<gdc::LogicExecutionNode,std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,gdc::LogicExecutionNodeCompare,true>,std::allocator<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>>>::__find_equal<gdc::LogicExecutionNode>(a1, &v4, a2, a3);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void *std::__hash_table<gdc::TypeInfo,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,std::allocator<gdc::TypeInfo>>::__emplace_unique_key_args<gdc::TypeInfo,gdc::TypeInfo const&>(void *result, unint64_t a2)
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

uint64_t *std::__tree<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,std::__map_value_compare<gdc::LogicExecutionNode,std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,gdc::LogicExecutionNodeCompare,true>,std::allocator<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>>>::__find_equal<gdc::LogicExecutionNode>(uint64_t a1, void *a2, unint64_t a3, unsigned __int8 a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        v9 = *(v7 + 56);
        v10 = v9 > a4;
        if (v8 != a3)
        {
          v10 = v8 > a3;
        }

        if (!v10)
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_13;
        }
      }

      v11 = v9 < a4;
      v12 = v8 == a3;
      v13 = v8 < a3;
      if (v12)
      {
        v13 = v11;
      }

      if (!v13)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_13:
  *a2 = v7;
  return result;
}

void *std::vector<mre::TextureHandle>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  v3 = v2 - *a2;
  if (v2 != *a2)
  {
    if (!((v3 >> 4) >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mre::TextureHandle>>(v3 >> 4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::vector<gdc::LogicExecutionNode>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 10;
        std::__destroy_at[abi:nn200100]<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LogicExecutionNode>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void gdc::LogicExecutionGraphBuilder::processDependentTypes(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (a4)
  {
    v5 = a5;
    v6 = a3;
    v8 = &a3[3 * a4];
    v9 = (a1 + 72);
    v41 = (a1 + 96);
    v39 = v8;
    do
    {
      v10 = *v6;
      v45 = *(v6 + 1);
      v11 = *v9;
      if (!*v9)
      {
        goto LABEL_13;
      }

      v12 = v9;
      do
      {
        v13 = v11[4];
        v14 = v13 >= v10;
        v15 = v13 < v10;
        if (v14)
        {
          v12 = v11;
        }

        v11 = v11[v15];
      }

      while (v11);
      if (v12 == v9 || v10 < v12[4] || (v16 = v12[7], v16 == v12[8]))
      {
LABEL_13:
        v17 = *(a1 + 136);
        if (v17)
        {
          v46 = v10;
          v47 = *(v6 + 1);
          (*(*v17 + 48))(&__p);
        }

        else
        {
          v44 = 0;
          LOBYTE(__p) = 0;
        }

        v18 = v41;
LABEL_17:
        v19 = *v18;
        if (!*v18)
        {
LABEL_21:
          operator new();
        }

        while (1)
        {
          v18 = v19;
          v20 = v19[4];
          if (v10 < v20)
          {
            goto LABEL_17;
          }

          if (v20 >= v10)
          {
            break;
          }

          v19 = v18[1];
          if (!v19)
          {
            goto LABEL_21;
          }
        }

        v22 = v18[8];
        v21 = v18[9];
        if (v22 >= v21)
        {
          v25 = v18[7];
          v26 = 0x2E8BA2E8BA2E8BA3 * ((v22 - v25) >> 3);
          v27 = v26 + 1;
          if ((v26 + 1) > 0x2E8BA2E8BA2E8BALL)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v28 = v9;
          v29 = 0x2E8BA2E8BA2E8BA3 * ((v21 - v25) >> 3);
          if (2 * v29 > v27)
          {
            v27 = 2 * v29;
          }

          if (v29 >= 0x1745D1745D1745DLL)
          {
            v30 = 0x2E8BA2E8BA2E8BALL;
          }

          else
          {
            v30 = v27;
          }

          if (v30)
          {
            if (v30 <= 0x2E8BA2E8BA2E8BALL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v31 = 88 * v26;
          *v31 = *a2;
          *(v31 + 9) = *(a2 + 9);
          std::vector<gdc::FlowExecutionNode>::vector[abi:nn200100]((v31 + 32), (a2 + 32));
          std::vector<gdc::FlowExecutionNode>::vector[abi:nn200100]((v31 + 56), (a2 + 56));
          *(v31 + 80) = v5;
          v33 = v18[7];
          v32 = v18[8];
          v34 = (v31 + v33 - v32);
          if (v33 != v32)
          {
            v35 = v18[7];
            v36 = (v31 + v33 - v32);
            do
            {
              v37 = *v35;
              *(v36 + 9) = *(v35 + 9);
              *v36 = v37;
              *(v36 + 5) = 0;
              *(v36 + 6) = 0;
              *(v36 + 4) = 0;
              *(v36 + 2) = v35[2];
              *(v36 + 6) = *(v35 + 6);
              *(v35 + 4) = 0;
              *(v35 + 5) = 0;
              *(v35 + 6) = 0;
              *(v36 + 7) = 0;
              *(v36 + 8) = 0;
              *(v36 + 9) = 0;
              *(v36 + 56) = *(v35 + 56);
              *(v36 + 9) = *(v35 + 9);
              *(v35 + 7) = 0;
              *(v35 + 8) = 0;
              *(v35 + 9) = 0;
              v36[80] = *(v35 + 80);
              v35 = (v35 + 88);
              v36 += 88;
            }

            while (v35 != v32);
            do
            {
              std::__destroy_at[abi:nn200100]<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>,0>(v33);
              v33 += 88;
            }

            while (v33 != v32);
          }

          v38 = v18[7];
          v24 = v31 + 88;
          v18[7] = v34;
          v18[8] = v24;
          v18[9] = 0;
          if (v38)
          {
            operator delete(v38);
          }

          v5 = a5;
          v8 = v39;
          v9 = v28;
        }

        else
        {
          v23 = *a2;
          *(v22 + 9) = *(a2 + 9);
          *v22 = v23;
          std::vector<gdc::FlowExecutionNode>::vector[abi:nn200100]((v22 + 32), (a2 + 32));
          std::vector<gdc::FlowExecutionNode>::vector[abi:nn200100]((v22 + 56), (a2 + 56));
          *(v22 + 80) = v5;
          v24 = v22 + 88;
        }

        v18[8] = v24;
        if (v44 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        gdc::LogicExecutionGraphBuilder::tryAddEdge(a1, a2, v16, v5);
      }

      v6 += 3;
    }

    while (v6 != v8);
  }
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LogicExecutionNode>,gdc::LogicExecutionNode*>(void *a1, void *a2, uint64_t a3)
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
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      *(a3 + 32) = 0;
      *(a3 + 32) = *(v5 + 2);
      *(a3 + 48) = v5[6];
      v5[4] = 0;
      v5[5] = 0;
      v5[6] = 0;
      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
      *(a3 + 72) = 0;
      *(a3 + 56) = *(v5 + 7);
      *(a3 + 72) = v5[9];
      v5[7] = 0;
      v5[8] = 0;
      v5[9] = 0;
      v5 += 10;
      a3 += 80;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>,0>(v4);
      v4 += 10;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<gdc::LogicExecutionNode>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::__destroy_at[abi:nn200100]<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>,0>((i - 80));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::VenueLogic>(void *a1)
{
  v8[0] = 0xEC9B77B4222D22FFLL;
  v8[1] = "md::VenueLogic]";
  v8[2] = 14;
  *&v5 = 0x4927EB92E562CC46;
  *(&v5 + 1) = "md::VenueLogicContext]";
  v6 = 21;
  v7 = 1;
  v3[1] = unk_1E7B35740;
  v3[2] = xmmword_1E7B35750;
  v3[3] = unk_1E7B35760;
  v2[1] = v3;
  v2[2] = 3;
  v1[2] = 0;
  v2[0] = &unk_1F2A4B5F0;
  v4 = 16;
  v3[0] = xmmword_1E7B35730;
  v1[0] = &unk_1F2A4C258;
  v1[1] = v2;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v8, &v5, 1, v2, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::AnchorLogic>(void *a1)
{
  v9[0] = 0x79FE0BD9535D5C4DLL;
  v9[1] = "md::AnchorLogic]";
  v9[2] = 15;
  *&v6 = 0x63B6FE00C0848868;
  *(&v6 + 1) = "md::AnchorContext]";
  v7 = 17;
  v8 = 1;
  v5[0] = xmmword_1E7B33308;
  v4[1] = v5;
  v4[2] = 2;
  v4[0] = &unk_1F2A4B5D0;
  v5[1] = unk_1E7B33318;
  v5[2] = xmmword_1E7B33328;
  v1[1] = &v2;
  v1[2] = 1;
  v1[0] = &unk_1F2A4C218;
  v2 = xmmword_1E7B3D138;
  v3 = 21;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v9, &v6, 0, v4, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::AssetLogic>(void *a1)
{
  v8[0] = 0x85B8F2BE93EDF996;
  v8[1] = "md::AssetLogic]";
  v8[2] = 14;
  *&v5 = 0x88B81689974D86F3;
  *(&v5 + 1) = "md::AssetContext]";
  v6 = 16;
  v7 = 1;
  v2[1] = &v3;
  v2[2] = 1;
  v1[2] = 0;
  v2[0] = &unk_1F2A4C218;
  v3 = xmmword_1E7B334B8;
  v4 = 29;
  v1[0] = &unk_1F2A4C258;
  v1[1] = v2;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v8, &v5, 0, v2, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::AssetInjectionLogic>(void *a1)
{
  v8[0] = 0x582FBDD84553E215;
  v8[1] = "md::AssetInjectionLogic]";
  v8[2] = 23;
  *&v5 = 0xD77FB76AFC10A710;
  *(&v5 + 1) = "md::AssetInjectionContext]";
  v6 = 25;
  v7 = 1;
  v2[1] = &v3;
  v2[2] = 1;
  v1[2] = 0;
  v2[0] = &unk_1F2A4C218;
  v3 = xmmword_1E7B3C808;
  v4 = 16;
  v1[0] = &unk_1F2A4C258;
  v1[1] = v2;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v8, &v5, 0, v2, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::CameraLogic>(void *a1)
{
  v8[0] = 0x8E629317B3523E63;
  v8[1] = "md::CameraLogic]";
  v8[2] = 15;
  *&v5 = 0x1AF456233693CD46;
  *(&v5 + 1) = "md::CameraContext]";
  v6 = 17;
  v7 = 1;
  v2[1] = &v3;
  v2[2] = 1;
  v1[2] = 0;
  v2[0] = &unk_1F2A4C218;
  v3 = xmmword_1E7B33338;
  v4 = 20;
  v1[0] = &unk_1F2A4C258;
  v1[1] = v2;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v8, &v5, 0, v2, v1);
}

void gdc::LogicExecutionGraphBuilder::tryAddEdge(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 != 1 && (a4 || *(a3 + 24)))
  {
    *(a1 + 224) = 1;
  }

  else
  {
    *v17 = *a2;
    *&v17[9] = *(a2 + 9);
    std::vector<gdc::FlowExecutionNode>::vector[abi:nn200100](v18, (a2 + 32));
    std::vector<gdc::FlowExecutionNode>::vector[abi:nn200100](v19, (a2 + 56));
    *v14 = *a3;
    *&v14[9] = *(a3 + 9);
    std::vector<gdc::FlowExecutionNode>::vector[abi:nn200100](v15, (a3 + 32));
    std::vector<gdc::FlowExecutionNode>::vector[abi:nn200100](__p, (a3 + 56));
    v7 = *std::__tree<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,std::__map_value_compare<gdc::LogicExecutionNode,std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,gdc::LogicExecutionNodeCompare,true>,std::allocator<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>>>::__find_equal<gdc::LogicExecutionNode>(a1, v20, *v17, v17[24]);
    if (!v7)
    {
      operator new();
    }

    geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>::insert((v7 + 112), v14);
    for (i = *(a1 + 8); i; i = *i)
    {
      v9 = i[4];
      v10 = *(i + 56);
      v11 = v14[24] < v10;
      if (*v14 != v9)
      {
        v11 = *v14 < v9;
      }

      if (!v11)
      {
        v12 = v10 < v14[24];
        if (*v14 == v9)
        {
          v13 = v12;
        }

        else
        {
          v13 = v9 < *v14;
        }

        if (!v13)
        {
          goto LABEL_18;
        }

        ++i;
      }
    }

    memset(v20, 0, sizeof(v20));
    std::__tree<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,std::__map_value_compare<gdc::LogicExecutionNode,std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>,gdc::LogicExecutionNodeCompare,true>,std::allocator<std::__value_type<gdc::LogicExecutionNode,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>>>::__emplace_unique_key_args<gdc::LogicExecutionNode,gdc::LogicExecutionNode&,geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>>(a1, *v14, v14[24]);
    v21 = v20;
    std::vector<gdc::LogicExecutionNode>::__destroy_vector::operator()[abi:nn200100](&v21);
LABEL_18:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v15[0])
    {
      v15[1] = v15[0];
      operator delete(v15[0]);
    }

    if (v19[0])
    {
      v19[1] = v19[0];
      operator delete(v19[0]);
    }

    if (v18[0])
    {
      v18[1] = v18[0];
      operator delete(v18[0]);
    }
  }
}

void geo::linear_set<gdc::LogicExecutionNode,gdc::LogicExecutionNodeCompare,std::allocator<gdc::LogicExecutionNode>,std::vector<gdc::LogicExecutionNode>>::insert(uint64_t *a1, unint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
LABEL_12:
    v19 = a1[2];
    if (v4 < v19)
    {
      goto LABEL_13;
    }

    v45 = v4 - v5;
    v9 = a1[1];
    goto LABEL_47;
  }

  v6 = *a2;
  v7 = *(a2 + 24);
  v8 = *a1 - v4 + 80;
  v9 = *a1;
  while (1)
  {
    v10 = *v9;
    v11 = *(v9 + 24);
    v12 = v7 < v11;
    if (v6 != *v9)
    {
      v12 = v6 < *v9;
    }

    if (v12)
    {
      break;
    }

    v13 = v7 >= v11;
    v14 = v11 >= v7;
    v15 = v10 >= v6;
    v16 = v6 == v10;
    v17 = v6 >= v10;
    if (v16)
    {
      v18 = v14;
    }

    else
    {
      v13 = v17;
      v18 = v15;
    }

    if (v13 && v18)
    {
      break;
    }

    v9 += 80;
    v8 += 80;
    if (v9 == v4)
    {
      goto LABEL_12;
    }
  }

  if (v4 == v9 || ((v21 = *(v9 + 24), v22 = *(a2 + 24), v23 = v21 >= v22, v24 = v22 >= v21, *v9 != *a2) ? (v25 = *v9 >= *a2) : (v25 = v23), *v9 != *a2 ? (v26 = *a2 >= *v9) : (v26 = v24), !v25 || !v26))
  {
    v19 = a1[2];
    if (v4 < v19)
    {
      if (v4 != v9)
      {
        v27 = (v4 - 80);
        v28 = a1[1];
        if (v4 >= 0x50)
        {
          v29 = *v27;
          *(v4 + 9) = *(v4 - 71);
          *v4 = v29;
          *(v4 + 40) = 0;
          *(v4 + 48) = 0;
          *(v4 + 32) = 0;
          *(v4 + 32) = *(v4 - 48);
          *(v4 + 48) = *(v4 - 32);
          *(v4 - 48) = 0;
          *(v4 - 40) = 0;
          *(v4 - 32) = 0;
          *(v4 + 56) = 0;
          *(v4 + 64) = 0;
          *(v4 + 72) = 0;
          *(v4 + 56) = *(v4 - 24);
          *(v4 + 72) = *(v4 - 8);
          *(v4 - 24) = 0;
          *(v4 - 16) = 0;
          *(v4 - 8) = 0;
          v28 = v4 + 80;
        }

        a1[1] = v28;
        if (v27 != v9)
        {
          v30 = 0;
          do
          {
            v31 = v4 + v30;
            v32 = *(v4 + v30 - 160);
            v34 = (v4 + v30 - 48);
            v33 = *v34;
            *(v34 - 23) = *(v4 + v30 - 151);
            *(v34 - 2) = v32;
            if (v33)
            {
              *(v31 - 40) = v33;
              operator delete(v33);
              *v34 = 0;
              *(v4 + v30 - 40) = 0;
              *(v4 + v30 - 32) = 0;
            }

            v35 = (v31 - 128);
            *v34 = *(v31 - 128);
            *(v31 - 32) = *(v31 - 112);
            *v35 = 0;
            v35[1] = 0;
            v35[2] = 0;
            v37 = (v31 - 24);
            v36 = *(v31 - 24);
            if (v36)
            {
              *(v4 + v30 - 16) = v36;
              operator delete(v36);
              *v37 = 0;
              *(v31 - 16) = 0;
              *(v31 - 8) = 0;
            }

            v38 = (v31 - 104);
            *v37 = *(v31 - 104);
            *(v4 + v30 - 8) = *(v4 + v30 - 88);
            *v38 = 0;
            v38[1] = 0;
            v38[2] = 0;
            v30 -= 80;
            v8 += 80;
          }

          while (v8);
          v28 = a1[1];
        }

        v39 = v28 <= a2 || v9 > a2;
        v40 = 80;
        if (v39)
        {
          v40 = 0;
        }

        v41 = (a2 + v40);
        v42 = *(a2 + v40);
        *(v9 + 9) = *(a2 + v40 + 9);
        *v9 = v42;
        if (v9 != a2 + v40)
        {
          std::vector<gdc::FlowExecutionNode>::__assign_with_size[abi:nn200100]<gdc::FlowExecutionNode*,gdc::FlowExecutionNode*>((v9 + 32), v41[4], v41[5], (v41[5] - v41[4]) >> 4);
          v43 = v41[7];
          v44 = v41[8];

          std::vector<gdc::FlowExecutionNode>::__assign_with_size[abi:nn200100]<gdc::FlowExecutionNode*,gdc::FlowExecutionNode*>((v9 + 56), v43, v44, (v44 - v43) >> 4);
        }

        return;
      }

LABEL_13:
      v20 = *a2;
      *(v4 + 9) = *(a2 + 9);
      *v4 = v20;
      std::vector<gdc::FlowExecutionNode>::vector[abi:nn200100]((v4 + 32), (a2 + 32));
      std::vector<gdc::FlowExecutionNode>::vector[abi:nn200100]((v4 + 56), (a2 + 56));
      a1[1] = v4 + 80;
      return;
    }

    v45 = v9 - v5;
LABEL_47:
    v46 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 4) + 1;
    if (v46 > 0x333333333333333)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v47 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - v5) >> 4);
    if (2 * v47 > v46)
    {
      v46 = 2 * v47;
    }

    if (v47 >= 0x199999999999999)
    {
      v48 = 0x333333333333333;
    }

    else
    {
      v48 = v46;
    }

    v61 = a1;
    if (v48)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LogicExecutionNode>>(v48);
    }

    v49 = 16 * (v45 >> 4);
    v58 = 0;
    v59 = v49;
    v60 = v49;
    if (!(0xCCCCCCCCCCCCCCCDLL * (v45 >> 4)))
    {
      if (v45 < 1)
      {
        if (v9 == v5)
        {
          v51 = 1;
        }

        else
        {
          v51 = 0x999999999999999ALL * (v45 >> 4);
        }

        v62 = a1;
        std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LogicExecutionNode>>(v51);
      }

      v50 = v49 - 80 * ((1 - 0x3333333333333333 * (v45 >> 4)) >> 1);
      v49 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<gdc::LogicExecutionNode *,gdc::LogicExecutionNode *,gdc::LogicExecutionNode *>(0, v49, v50);
      v59 = v50;
      *&v60 = v49;
    }

    v52 = *a2;
    *(v49 + 9) = *(a2 + 9);
    *v49 = v52;
    std::vector<gdc::FlowExecutionNode>::vector[abi:nn200100]((v49 + 32), (a2 + 32));
    std::vector<gdc::FlowExecutionNode>::vector[abi:nn200100]((v49 + 56), (a2 + 56));
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LogicExecutionNode>,gdc::LogicExecutionNode*>(v9, a1[1], v60 + 80);
    v53 = *a1;
    v54 = v60 + 80 + a1[1] - v9;
    a1[1] = v9;
    v55 = v53 + v59 - v9;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LogicExecutionNode>,gdc::LogicExecutionNode*>(v53, v9, v55);
    v56 = *a1;
    *a1 = v55;
    a1[1] = v54;
    v57 = a1[2];
    a1[2] = *(&v60 + 1);
    *&v60 = v56;
    *(&v60 + 1) = v57;
    v58 = v56;
    v59 = v56;
    std::__split_buffer<gdc::LogicExecutionNode>::~__split_buffer(&v58);
  }
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (v18 && (v18[3] & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (v23[3] & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  v7[1] = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = v7[2];
  v24[2] = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  v7[2] = v24;
  v23 = v7;
LABEL_68:
  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

void std::vector<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 11;
        std::__destroy_at[abi:nn200100]<std::pair<gdc::LogicExecutionNode,gdc::LogicExecutionGraphRequirement>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::ElevationLogic>(void *a1)
{
  v10[0] = 0x17767EADC5B287BLL;
  v10[1] = "md::ElevationLogic]";
  v10[2] = 18;
  *&v7 = 0x8BD499FBD96FBB9ELL;
  *(&v7 + 1) = "md::ElevationContext]";
  v8 = 20;
  v9 = 1;
  v5[1] = unk_1E7B33360;
  v5[2] = xmmword_1E7B33370;
  v5[3] = unk_1E7B33380;
  v4[1] = v5;
  v4[2] = 3;
  v4[0] = &unk_1F2A4B5F0;
  v6 = 19;
  v5[0] = xmmword_1E7B33350;
  v1[1] = &v2;
  v1[2] = 1;
  v1[0] = &unk_1F2A4C218;
  v2 = xmmword_1E7B3BDB0;
  v3 = 25;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v10, &v7, 0, v4, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::GeometryLogic>(void *a1)
{
  v6[0] = 0x701C95861FC50076;
  v6[1] = "md::GeometryLogic]";
  v6[2] = 17;
  *&v3 = 0x3070CB6B3C7F21D3;
  *(&v3 + 1) = "md::GeometryContext]";
  v4 = 19;
  v5 = 1;
  v2[1] = &v3;
  v2[2] = 0;
  v1[2] = 0;
  v2[0] = &unk_1F2A4C258;
  v1[0] = &unk_1F2A4C258;
  v1[1] = v2;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v6, &v3, 0, v2, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::GridLogic>(void *a1)
{
  v10[0] = 0x4AC7AB7561675F6;
  v10[1] = "md::GridLogic]";
  v10[2] = 13;
  *&v7 = 0x336A901A15BB7353;
  *(&v7 + 1) = "md::GridContext]";
  v8 = 15;
  v9 = 1;
  v4[1] = &v5;
  v4[2] = 1;
  v4[0] = &unk_1F2A4C218;
  v5 = xmmword_1E7B33410;
  v6 = 21;
  v1[1] = &v2;
  v1[2] = 1;
  v1[0] = &unk_1F2A4C218;
  v2 = xmmword_1E7B33950;
  v3 = 24;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v10, &v7, 0, v4, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::HikingLogic>(void *a1)
{
  v8[0] = 0xC74495586E0C32F6;
  v8[1] = "md::HikingLogic]";
  v8[2] = 15;
  *&v5 = 0x92F3DC114CADB853;
  *(&v5 + 1) = "md::HikingContext]";
  v6 = 17;
  v7 = 1;
  v3[5] = *&off_1E7B357C8;
  v3[6] = xmmword_1E7B357D8;
  v3[0] = xmmword_1E7B35778;
  v3[1] = unk_1E7B35788;
  v3[2] = xmmword_1E7B35798;
  v2[1] = v3;
  v2[2] = 5;
  v1[2] = 0;
  v2[0] = &unk_1F2A4B650;
  v4 = 21;
  v3[3] = unk_1E7B357A8;
  v3[4] = xmmword_1E7B357B8;
  v1[0] = &unk_1F2A4C258;
  v1[1] = v2;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v8, &v5, 0, v2, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::IdentifiedResourceLogic>(void *a1)
{
  v9[0] = 0x8B855FB229857EA1;
  v9[1] = "md::IdentifiedResourceLogic]";
  v9[2] = 27;
  *&v6 = 0x12B1E486D3040E2CLL;
  *(&v6 + 1) = "md::IdentifiedResourceContext]";
  v7 = 29;
  v8 = 1;
  v5[2] = xmmword_1E7B333B8;
  v5[3] = unk_1E7B333C8;
  v5[4] = xmmword_1E7B333D8;
  v5[5] = *&off_1E7B333E8;
  v5[0] = xmmword_1E7B33398;
  v4[1] = v5;
  v4[2] = 4;
  v4[0] = &unk_1F2A4B610;
  v5[1] = unk_1E7B333A8;
  v1[1] = &v2;
  v1[2] = 1;
  v1[0] = &unk_1F2A4C218;
  v2 = xmmword_1E7B333F8;
  v3 = 25;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v9, &v6, 0, v4, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::LabelsLogic>(void *a1)
{
  v10[0] = 0x20A1ED17D78F322BLL;
  v10[1] = "md::LabelsLogic]";
  v10[2] = 15;
  *&v7 = 0xA588623CD4116DAELL;
  *(&v7 + 1) = "md::LabelsContext]";
  v8 = 17;
  v9 = 1;
  v4[1] = &v5;
  v4[2] = 1;
  v4[0] = &unk_1F2A4C218;
  v5 = xmmword_1E7B33410;
  v6 = 21;
  v1[1] = &v2;
  v1[2] = 1;
  v1[0] = &unk_1F2A4C218;
  v2 = xmmword_1E7B33428;
  v3 = 25;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v10, &v7, 0, v4, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::LightingLogic>(void *a1)
{
  v8[0] = 0x91E65CD7F1A7A7FALL;
  v8[1] = "md::LightingLogic]";
  v8[2] = 17;
  *&v5 = 0x41E8D6E445F4145;
  *(&v5 + 1) = "md::LightingLogicContext]";
  v6 = 24;
  v7 = 1;
  v3[5] = *&off_1E7B33490;
  v3[6] = xmmword_1E7B334A0;
  v3[0] = xmmword_1E7B33440;
  v3[1] = unk_1E7B33450;
  v3[2] = xmmword_1E7B33460;
  v2[1] = v3;
  v2[2] = 5;
  v1[2] = 0;
  v2[0] = &unk_1F2A4B650;
  v4 = 19;
  v3[3] = unk_1E7B33470;
  v3[4] = xmmword_1E7B33480;
  v1[0] = &unk_1F2A4C258;
  v1[1] = v2;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v8, &v5, 0, v2, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::LoadingStatusLogic>(void *a1)
{
  v10[0] = 0x653D1F33EF15EF04;
  v10[1] = "md::LoadingStatusLogic]";
  v10[2] = 22;
  *&v7 = 0x90B6813830DCB581;
  *(&v7 + 1) = "md::LoadingStatusContext]";
  v8 = 24;
  v9 = 1;
  v4[1] = &v5;
  v4[2] = 1;
  v4[0] = &unk_1F2A4C218;
  v5 = xmmword_1E7B3C808;
  v6 = 16;
  v1[1] = &v2;
  v1[2] = 1;
  v1[0] = &unk_1F2A4C218;
  v2 = xmmword_1E7B334B8;
  v3 = 29;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v10, &v7, 0, v4, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::MapZoomLevelStyleLogic>(void *a1)
{
  v7[0] = 0xBDB8C71631E0AA6CLL;
  v7[1] = "md::MapZoomLevelStyleLogic]";
  v7[2] = 26;
  *&v4 = 0xF0AA2DB42EB710AFLL;
  *(&v4 + 1) = "md::MapZoomLevelStyleLogicContext]";
  v5 = 33;
  v6 = 1;
  v3[0] = xmmword_1E7B334D0;
  v2[1] = v3;
  v2[2] = 2;
  v1[2] = 0;
  v2[0] = &unk_1F2A4B5D0;
  v3[1] = unk_1E7B334E0;
  v3[2] = xmmword_1E7B334F0;
  v1[0] = &unk_1F2A4C258;
  v1[1] = v2;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v7, &v4, 0, v2, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::MaterialLogic>(void *a1)
{
  v8[0] = 0xA1851987210F8D55;
  v8[1] = "md::MaterialLogic]";
  v8[2] = 17;
  *&v5 = 0xD2404CDD1F9A6950;
  *(&v5 + 1) = "md::MaterialContext]";
  v6 = 19;
  v7 = 1;
  v3[5] = *&off_1E7B33550;
  v3[6] = xmmword_1E7B33560;
  v3[0] = xmmword_1E7B33500;
  v3[1] = unk_1E7B33510;
  v3[2] = xmmword_1E7B33520;
  v2[1] = v3;
  v2[2] = 5;
  v1[2] = 0;
  v2[0] = &unk_1F2A4B650;
  v4 = 21;
  v3[3] = unk_1E7B33530;
  v3[4] = xmmword_1E7B33540;
  v1[0] = &unk_1F2A4C258;
  v1[1] = v2;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v8, &v5, 0, v2, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::MeshRenderableLogic>(void *a1)
{
  v8[0] = 0x88BE5DF80D25DA79;
  v8[1] = "md::MeshRenderableLogic]";
  v8[2] = 23;
  *&v5 = 0xF014CCE28176CA44;
  *(&v5 + 1) = "md::MeshRenderableContext]";
  v6 = 25;
  v7 = 1;
  v3[10] = xmmword_1E7B33618;
  v3[11] = *&off_1E7B33628;
  v3[12] = xmmword_1E7B33638;
  v3[6] = xmmword_1E7B335D8;
  v3[7] = unk_1E7B335E8;
  v3[8] = xmmword_1E7B335F8;
  v3[9] = unk_1E7B33608;
  v3[2] = xmmword_1E7B33598;
  v3[3] = unk_1E7B335A8;
  v3[4] = xmmword_1E7B335B8;
  v3[5] = *&off_1E7B335C8;
  v3[0] = xmmword_1E7B33578;
  v3[1] = unk_1E7B33588;
  v2[1] = v3;
  v2[2] = 9;
  v1[2] = 0;
  v2[0] = &unk_1F2A4B630;
  v4 = 15;
  v1[0] = &unk_1F2A4C258;
  v1[1] = v2;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v8, &v5, 0, v2, v1);
}

void *std::vector<gdc::FlowExecutionNode>::__assign_with_size[abi:nn200100]<gdc::FlowExecutionNode*,gdc::FlowExecutionNode*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<gdc::FlowExecutionNode>::__vallocate[abi:nn200100](v6, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v16 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v16 - 7);
    }

    v15 = &v8[v16];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12 - 7);
      v11 = v6[1];
    }

    v14 = a3 - v13;
    if (a3 != v13)
    {
      result = memmove(v11, v13, v14 - 7);
    }

    v15 = &v11[v14];
  }

  v6[1] = v15;
  return result;
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::NavigationLogic>(void *a1)
{
  v10[0] = 0xBEC1A12372CEEC00;
  v10[1] = "md::NavigationLogic]";
  v10[2] = 19;
  *&v7 = 0x1B8B241A8D896A1DLL;
  *(&v7 + 1) = "md::NavigationContext]";
  v8 = 21;
  v9 = 1;
  v5[1] = unk_1E7B33660;
  v5[2] = xmmword_1E7B33670;
  v5[3] = unk_1E7B33680;
  v4[1] = v5;
  v4[2] = 3;
  v4[0] = &unk_1F2A4B5F0;
  v6 = 17;
  v5[0] = xmmword_1E7B33650;
  v1[1] = &v2;
  v1[2] = 1;
  v1[0] = &unk_1F2A4C218;
  v2 = xmmword_1E7B33698;
  v3 = 23;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v10, &v7, 0, v4, v1);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::RouteLineLogic>(void *a1)
{
  v8[0] = 0x7173CF8D2BE8FE53;
  v8[1] = "md::RouteLineLogic]";
  v8[2] = 18;
  *&v5 = 0x8E4587A431F9C696;
  *(&v5 + 1) = "md::RouteLineContext]";
  v6 = 20;
  v7 = 1;
  v3[1] = v4;
  v3[2] = 4;
  v3[0] = &unk_1F2A4B610;
  v4[2] = xmmword_1E7B336D0;
  v4[3] = unk_1E7B336E0;
  v4[4] = xmmword_1E7B336F0;
  v4[5] = *&off_1E7B33700;
  v4[0] = xmmword_1E7B336B0;
  v4[1] = unk_1E7B336C0;
  v2[0] = xmmword_1E7B33710;
  v2[1] = unk_1E7B33720;
  v1[1] = v2;
  v1[2] = 2;
  v1[0] = &unk_1F2A4B5D0;
  v2[2] = xmmword_1E7B33730;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v8, &v5, 0, v3, v1);
}