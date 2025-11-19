uint64_t *std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2 + 56;
    std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v5 = v1 + 3;
      std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::batch(std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::PolylineOverlayRibbonSection>*>(uint64_t *a1, uint64_t *a2)
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
          std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100]((a1 + v15 + 24), v14);
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
        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v18, v16);
        if (++v11 == 8)
        {
          v19 = v9 + 1 == a2;
          std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
          return v19;
        }

        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
      }

      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A11018;
  v6 = (a1 + 1400);
  std::vector<std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  md::FrameAllocator<ggl::RenderItem>::reset(a1 + 1376);
  free(*(a1 + 1376));
  v2 = *(a1 + 1352);
  if (v2)
  {
    *(a1 + 1360) = v2;
    operator delete(v2);
  }

  v6 = (a1 + 1320);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v3 = *(a1 + 1296);
  if (v3)
  {
    *(a1 + 1304) = v3;
    operator delete(v3);
  }

  for (i = 1168; i != -112; i -= 128)
  {
    ggl::RenderItem::~RenderItem((a1 + i));
  }

  return a1;
}

void md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A10FF8;
  v2 = a1[181];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A10FF8;
  v2 = a1[181];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);
}

void md::PolylineOverlayBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~PolylineOverlayBatch(void *a1)
{
  *a1 = &unk_1F2A10FD8;
  v2 = a1[189];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[187];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[185];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *a1 = &unk_1F2A10FF8;
  v5 = a1[181];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::PolylineOverlayBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~PolylineOverlayBatch(void *a1)
{
  *a1 = &unk_1F2A10FD8;
  v2 = a1[189];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[187];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[185];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *a1 = &unk_1F2A10FF8;
  v5 = a1[181];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(uint64_t a1, uint64_t a2)
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

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 8;
    std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::reset[abi:nn200100]((i - 8));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(v5, v4);
  }

  return a1;
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(v3, v2);
  }
}

void *md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::PolylineOverlayLayer(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char *a6)
{
  v7 = a1;
  v331 = *MEMORY[0x1E69E9840];
  v294 = a6[32];
  if (v294 == 1)
  {
    v281 = a6[1];
    v6 = *(a6 + 4);
    v292 = *a6;
    v284 = *(a6 + 2);
    v288 = a6[24];
  }

  else
  {
    v292 = 0;
  }

  v8 = *(a3 + 16);
  if (v8)
  {
    v324 = 0;
    v323 = 0;
    *(&v326 + 1) = 0;
    *(&v325 + 1) = 0;
    *(&v325 + 1) = 0;
    *v327 = 1065353216;
    v10 = *(v8 + 48);
    for (i = *(v8 + 56); v10 != i; ++v10)
    {
      LODWORD(v312[0]) = ggl::CullingGrid::intersectedCellsForRibbon(*(*v10 + 88), *(*v10 + 72), 0);
      __p = v312;
      v11 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v323, v312[0], &__p);
      std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100]((v11 + 3), v10);
    }

    operator new();
  }

  *a1 = &unk_1F2A10BC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 184) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 121) = 0u;
  if (v294)
  {
    *(a1 + 153) = v281;
    *(a1 + 156) = v6;
    *(a1 + 152) = v292;
    *(a1 + 168) = v284;
    *(a1 + 176) = v288;
    *(a1 + 184) = 1;
  }

  if (*(a1 + 8))
  {
    v12 = *(a1 + 8);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v275 = v12;
      v17 = *v12;
      v17[1] = v7;
      v18 = v17[175];
      v19 = v17[176];
      v276 = v19;
      while (v18 != v19)
      {
        v282 = v18;
        v285 = v13;
        v289 = v14;
        v20 = *v18;
        v20[1] = **v18;
        v20[3] = v20[2];
        v20[5] = v20[4];
        v324 = 0;
        v323 = 0;
        *&v325 = 0;
        v314 = 0;
        __p = 0;
        v315.i64[0] = 0;
        v22 = v20[7];
        v21 = v20[8];
        if (v22 != v21)
        {
          v278 = v15;
          do
          {
            v23 = *v22;
            v312[0] = 1;
            md::Ribbons::RibbonWriter<md::Ribbons::PilledTrafficRibbonDescriptor>::eliminateDuplicates(v23, &v323, &__p, v312);
            v24 = v312[0];
            if (v312[0] >= 2uLL)
            {
              v25 = *(v23 + 128);
              if (v25 >= 1.5708)
              {
                v37 = 2 * v312[0];
                goto LABEL_57;
              }

              v26 = v323;
              v27 = 1;
              while (1)
              {
                v28 = (v323 + 8 * v27);
                v29 = *v28;
                v30 = v28[1];
                v31 = 1;
                v32 = *v323;
                v33 = v29;
                do
                {
                  v34 = vabds_f32(v33, v32);
                  if ((v31 & 1) == 0)
                  {
                    break;
                  }

                  v31 = 0;
                  v32 = *(v323 + 1);
                  v33 = v30;
                }

                while (v34 < 1.0e-10);
                if (v34 >= 1.0e-10)
                {
                  break;
                }

                if (++v27 == v312[0])
                {
                  v35 = 0.0;
                  v36 = 1.0;
                  goto LABEL_27;
                }
              }

              v38 = v29 - *v323;
              v39 = v30 - *(v323 + 1);
              v40 = 1.0 / sqrtf((v38 * v38) + (v39 * v39));
              v36 = v40 * v38;
              v35 = v40 * v39;
LABEL_27:
              v41 = v312[0] - 1;
              if ((v312[0] - 1) >= 2)
              {
                v42 = *(v23 + 121);
                v43 = *(v23 + 124);
                v44 = 2;
                v45 = 1;
                v46 = 1.0 / v25;
                while (1)
                {
                  v47 = v36;
                  v48 = v35;
                  v49 = v45++;
                  if (v45 < v24)
                  {
                    v50 = &v26[8 * v49];
                    v51 = *v50;
                    v52 = v50[1];
                    v53 = v45;
                    while (1)
                    {
                      v54 = &v26[8 * v53];
                      v55 = *v54;
                      v56 = v54[1];
                      v57 = 1;
                      v58 = v51;
                      v59 = v55;
                      do
                      {
                        v60 = vabds_f32(v59, v58);
                        if ((v57 & 1) == 0)
                        {
                          break;
                        }

                        v57 = 0;
                        v58 = v52;
                        v59 = v56;
                      }

                      while (v60 < 1.0e-10);
                      if (v60 >= 1.0e-10)
                      {
                        break;
                      }

                      if (++v53 == v24)
                      {
                        goto LABEL_38;
                      }
                    }

                    v61 = v55 - v51;
                    v62 = v56 - v52;
                    v63 = 1.0 / sqrtf((v61 * v61) + (v62 * v62));
                    v36 = v63 * v61;
                    v35 = v63 * v62;
                  }

LABEL_38:
                  v64 = atan2f(v35, v36);
                  v65 = v64 - atan2f(v48, v47);
                  v66 = v65;
                  if (v65 > 3.14159265)
                  {
                    break;
                  }

                  if (v66 < -3.14159265)
                  {
                    v67 = 6.28318531;
                    goto LABEL_42;
                  }

LABEL_43:
                  v68 = fabsf(v65);
                  v69 = v42;
                  if (v42 == 2)
                  {
                    if (1.0 / sin(v68 * -0.5 + 1.57079633) <= v43)
                    {
                      v69 = 2;
                    }

                    else
                    {
                      v69 = 1;
                    }
                  }

                  v70 = fmaxf(ceilf(v68 * v46), 1.0);
                  if (v70 < 2)
                  {
                    v71 = 2;
                  }

                  else if (v69 == 1)
                  {
                    v71 = 6;
                  }

                  else if (v69 == 2)
                  {
                    v71 = 12;
                  }

                  else
                  {
                    v71 = 2 * v70;
                  }

                  v44 += v71;
                  if (v45 == v41)
                  {
                    v37 = v44 + 2;
                    goto LABEL_57;
                  }
                }

                v67 = -6.28318531;
LABEL_42:
                v65 = v66 + v67;
                goto LABEL_43;
              }

              v37 = 4;
LABEL_57:
              if (*(v23 + 96))
              {
                v37 += 2;
              }

              if (*(v23 + 97))
              {
                v37 += 2;
              }

              if (v37 < 0x10000)
              {
                v74 = 3 * v37 + *(v23 + 24);
                v72 = *(v23 + 8) + v37;
                v73 = v74 - 6;
              }

              else
              {
                v72 = *(v23 + 8);
                v73 = *(v23 + 24);
              }

              *(v23 + 16) = v72;
              *(v23 + 32) = v73;
              *(v23 + 48) = *(v23 + 40);
            }

            v75 = *v22++;
            v20[1] = v75[2] + v20[1] - v75[1];
            v20[3] = v75[4] + v20[3] - v75[3];
            v20[5] = v75[6] + v20[5] - v75[5];
          }

          while (v22 != v21);
          v15 = v278;
          if (__p)
          {
            operator delete(__p);
          }
        }

        if (v323)
        {
          v324 = v323;
          operator delete(v323);
        }

        v13 = v285;
        v76 = *v282;
        v7 = a1;
        if (v289 >= v285)
        {
          v77 = v15;
          v78 = v289 - v15;
          v79 = (v78 >> 3) + 1;
          if (v79 >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v80 = v77;
          v81 = v285 - v77;
          v82 = (v285 - v77) >> 2;
          if (v82 > v79)
          {
            v79 = v82;
          }

          if (v81 >= 0x7FFFFFFFFFFFFFF8)
          {
            v83 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v83 = v79;
          }

          if (v83)
          {
            if (!(v83 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v84 = (8 * (v78 >> 3));
          v13 = 0;
          *v84 = v76;
          v14 = v84 + 1;
          memcpy(0, v80, v78);
          v15 = 0;
        }

        else
        {
          *v289 = v76;
          v14 = v289 + 1;
        }

        v18 = (v282 + 1);
        v16 = v14;
        v19 = v276;
      }

      v12 = v275 + 1;
    }

    while (v275 != -8);
    if (*(v7 + 136))
    {
      operator new();
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v85 = 0;
  v86 = 0;
  v87 = 0;
  v312[0] = 0;
  v88 = (v16 - v15) >> 3;
  do
  {
    if (v87 == v88 || (*(*(v15 + v87) + 8) + v86 - **(v15 + v87)) >= 0x10000)
    {
      v310[0] = "BatchType/IData";
      operator new();
    }

    if (v87 < (v16 - v15) >> 3)
    {
      v89 = *(v15 + v87);
      v86 += v89->i64[1] - v89->i64[0];
      v90 = vaddq_s64(v89[1], v89[2]);
      v85 += vsubq_s64(vdupq_laneq_s64(v90, 1), v90).u64[0];
      v312[0] = v85;
    }

    v88 = (v16 - v15) >> 3;
    ++v87;
  }

  while (v87 <= v88);
  v91 = a1;
  v92 = &off_1B33AD000;
  *a1 = &unk_1F2A10BA0;
  *(a1 + 192) = *a4;
  v93 = a4[1];
  *(a1 + 200) = v93;
  if (v93)
  {
    atomic_fetch_add_explicit((v93 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 208) = *a5;
  v94 = a5[1];
  *(a1 + 216) = v94;
  if (v94)
  {
    atomic_fetch_add_explicit((v94 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 224) = 0;
  v95 = *(a1 + 8);
  v265 = *(a1 + 16);
  if (v95 != v265)
  {
    *(&v96 + 1) = 0x3F8000003F800000;
    v97 = 1.0;
    *&v96 = 1065353216;
    v299 = v96;
    do
    {
      v98 = *(*v95 + 1400);
      v99 = *(*v95 + 1408);
      v266 = v95;
      v267 = v99;
      while (v98 != v99)
      {
        v100 = *v98;
        ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v312, **((*v98)[11] + 64), **v98, (*v98)[1], 1, a2);
        v101 = v100[2];
        v103 = v100[4];
        v102 = v100[5];
        if (v102 == v103)
        {
          v104 = v100[3];
        }

        else
        {
          if (v103 < v101)
          {
            v101 = v100[4];
          }

          if (v100[3] <= v102)
          {
            v104 = v100[5];
          }

          else
          {
            v104 = v100[3];
          }
        }

        v105 = v312[5];
        ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v310, *(v100[11] + 96), v101, v104, 1, 1, a2);
        v106 = v100[2];
        v107 = v100[4];
        v307 = 0;
        v308 = 0;
        v309 = 0;
        memset(&v306, 0, sizeof(v306));
        v108 = v100[7];
        v110 = v100[8];
        v109 = (v100 + 7);
        if (v108 != v110)
        {
          v268 = v109;
          v269 = v98;
          v111 = v311 + 2 * v107 - 2 * v101;
          v112 = v311 + 2 * v106 - 2 * v101;
          v271 = v110;
          while (1)
          {
            v113 = *v108;
            v323 = v91;
            v324 = v113;
            v325 = xmmword_1B33B0570;
            v326 = xmmword_1B33B0580;
            *v327 = xmmword_1B33B0590;
            *&v327[16] = xmmword_1B33B05A0;
            v328 = xmmword_1B33B05B0;
            v329 = xmmword_1B33B05C0;
            v322 = v105;
            if (*(v113 + 16) != *(v113 + 8))
            {
              v321 = 1;
              md::Ribbons::RibbonWriter<md::Ribbons::PilledTrafficRibbonDescriptor>::eliminateDuplicates(v113, &v307, &v306, &v321);
              v115 = v321;
              if (v321 >= 2)
              {
                break;
              }
            }

LABEL_200:
            v262 = *v108++;
            v105 += 20 * (v262[2] - v262[1]);
            v112 += 2 * (v262[4] - v262[3]);
            v111 += 2 * (v262[6] - v262[5]);
            if (v108 == v110)
            {
              begin = v306.__begin_;
              v109 = v268;
              v98 = v269;
              goto LABEL_203;
            }
          }

          v116 = v307;
          v293 = v306.__begin_;
          v330 = v105;
          v117 = *v307;
          v118 = 0.0;
          v119 = 1;
          v120 = *v307;
          do
          {
            v121 = *(v307 + 8 * v119);
            v122 = vsub_f32(v121, v120);
            v118 = sqrtf(vaddv_f32(vmul_f32(v122, v122))) + v118;
            ++v119;
            v120 = v121;
          }

          while (v321 != v119);
          v123 = v118;
          v124 = v97 / v118;
          if (v123 <= 1.0e-10)
          {
            v125 = 0.0;
          }

          else
          {
            v125 = v124;
          }

          v298 = sqrtf(((*(v307 + 2) - v117.f32[0]) * (*(v307 + 2) - v117.f32[0])) + ((*(v307 + 3) - v117.f32[1]) * (*(v307 + 3) - v117.f32[1])));
          v126 = 1;
          while (1)
          {
            v127 = 1;
            LODWORD(v128) = *v307;
            LODWORD(v129) = *(v307 + v126);
            do
            {
              v130 = vabds_f32(v129, v128);
              if ((v127 & 1) == 0)
              {
                break;
              }

              v127 = 0;
              LODWORD(v128) = HIDWORD(*v307);
              LODWORD(v129) = HIDWORD(*(v307 + v126));
            }

            while (v130 < 1.0e-10);
            if (v130 >= 1.0e-10)
            {
              break;
            }

            if (++v126 == v321)
            {
              *&v114 = 1065353216;
              goto LABEL_126;
            }
          }

          v131 = vsub_f32(*(v307 + 8 * v126), v117);
          *&v114 = vmul_n_f32(v131, v97 / sqrtf(vaddv_f32(vmul_f32(v131, v131))));
LABEL_126:
          v132 = -*(&v114 + 1);
          __p = *v306.__begin_;
          LODWORD(v314) = v117.i32[0];
          v133 = *(v307 + 1);
          v318 = 0;
          HIDWORD(v314) = v133;
          *&v316 = -*(&v114 + 1);
          HIDWORD(v316) = v114;
          v320 = 0;
          v295 = v114;
          if (*(v324 + 96) == 1)
          {
            v134 = vmul_n_f32(*&v114, *(&v329 + 2));
            v135 = vrev64_s32(v134);
            *&v315.i32[1] = vsub_f32(*&v114, v135);
            v319 = 1;
            v315.f32[0] = v132 - *v134.i32;
            v315.f32[3] = -vadd_f32(v135, *&v114).f32[0];
            v137 = &v325 + 4;
            v136 = &v325;
            v139 = &v325 + 12;
            v138 = &v325 + 8;
            if (!*(v324 + 120))
            {
              goto LABEL_130;
            }

            if (*(v324 + 120) == 1)
            {
              v136 = v327;
              v137 = &v327[4];
              v139 = &v327[12];
              v138 = &v327[8];
LABEL_130:
              v140 = *v137;
              v317.i32[0] = *v136;
              v317.i32[1] = v140;
              v141 = *v139;
              v317.i32[2] = *v138;
              v317.i32[3] = v141;
            }

            HIDWORD(v318) = 0;
            md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
            *&v114 = v295;
          }

          v319 = 0;
          *(v315.i64 + 4) = v114;
          v315.f32[0] = v132;
          v315.f32[3] = -*&v114;
          v317 = *v327;
          md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
          v143 = v115 - 1;
          if (v115 - 1 >= 2)
          {
            v144 = 1;
            v145 = v299;
            v146 = v295;
            v277 = v125;
            while (1)
            {
              __p = v293[v144];
              v147 = &v116[8 * v144];
              v148 = *v147;
              v149 = v147[1];
              if (++v144 >= v115)
              {
LABEL_141:
                v142 = v146;
                DWORD1(v142) = DWORD1(v145);
                v158 = *(&v146 + 1);
                *&v145 = v142;
                LODWORD(v142) = DWORD1(v146);
                v159 = *&v146;
              }

              else
              {
                v150 = v144;
                while (1)
                {
                  v151 = &v116[8 * v150];
                  v152 = *v151;
                  v153 = v151[1];
                  v154 = 1;
                  v155 = *v147;
                  v156 = v152;
                  do
                  {
                    v157 = vabds_f32(v156, v155);
                    if ((v154 & 1) == 0)
                    {
                      break;
                    }

                    v154 = 0;
                    v155 = v147[1];
                    v156 = v153;
                  }

                  while (v157 < 1.0e-10);
                  if (v157 >= 1.0e-10)
                  {
                    break;
                  }

                  if (++v150 == v115)
                  {
                    goto LABEL_141;
                  }
                }

                v160 = v152 - v148;
                v161 = v153 - v149;
                v162 = v97 / sqrtf((v160 * v160) + (v161 * v161));
                v159 = v162 * v160;
                *&v142 = v162 * v161;
                *&v145 = v159;
                v158 = *(&v146 + 1);
              }

              v300 = v145;
              v163 = &v116[8 * v144];
              v164 = *v163;
              v165 = v163[1];
              v166 = v159 + *&v146;
              v167 = *&v142 + v158;
              v168 = (v166 * v166) + (v167 * v167);
              if (v168 <= 0.0)
              {
                v171 = *(&v146 + 1);
                v172 = v146;
                v158 = *(&v146 + 1);
                LODWORD(v170) = v146;
              }

              else
              {
                v169 = v97 / sqrtf(v168);
                v170 = -(v167 * v169);
                v171 = v169 * v166;
                v172.f32[0] = v170;
                v172.f32[1] = v169 * v166;
              }

              v173 = v97 - (((v159 * v170) + (*&v142 * v171)) * ((v159 * v170) + (*&v142 * v171)));
              *&v314 = *v147;
              v174 = *(v147 + 1);
              *(&v318 + 1) = v298 * v125;
              v317 = *v327;
              HIDWORD(v314) = v174;
              v316 = __PAIR64__(LODWORD(v171), LODWORD(v170));
              *&v318 = v298;
              v320 = 1;
              v175 = v324;
              v176 = *(v324 + 128);
              v301 = v142;
              if (v176 < *(v92 + 862))
              {
                v279 = v165;
                v283 = v97 - (((v159 * v170) + (*&v142 * v171)) * ((v159 * v170) + (*&v142 * v171)));
                v286 = v170;
                v290 = v171;
                v303 = v172;
                v296 = v146;
                v177 = atan2f(*&v142, v159);
                v178 = v177 - atan2f(v158, *v296.i32);
                v179 = v178;
                if (v178 <= 3.14159265)
                {
                  v180 = v164;
                  if (v179 < -3.14159265)
                  {
                    v178 = v179 + 6.28318531;
                  }
                }

                else
                {
                  v178 = v179 + -6.28318531;
                  v180 = v164;
                }

                v181 = fabsf(v178);
                v182 = *(v175 + 121);
                v97 = 1.0;
                if (v182 == 2)
                {
                  v183 = sin(v181 * -0.5 + 1.57079633);
                  v180 = v164;
                  *&v183 = 1.0 / v183;
                  if (*(v175 + 124) < *&v183)
                  {
                    v182 = 1;
                  }

                  else
                  {
                    v182 = 2;
                  }
                }

                v184 = sqrtf(((v180 - v148) * (v180 - v148)) + ((v279 - v149) * (v279 - v149)));
                v185 = fmaxf(ceilf(v181 / v176), 1.0);
                _V5.S[1] = v296.i32[1];
                v170 = v286;
                v171 = v290;
                v173 = v283;
                if (v185 >= 2)
                {
                  if (v182 == 2)
                  {
                    v280 = v184;
                    _S8 = v296.i32[1];
                    __asm { FMLA            S1, S8, V5.S[1] }

                    v205 = vdup_lane_s32(v296, 0);
                    v205.f32[0] = -*&v296.i32[1];
                    v206 = vmul_n_f32(v205, 1.0 / sqrtf(_S1));
                    v207 = vdup_lane_s32(*&v300, 0);
                    v207.f32[0] = -*&v301;
                    v208 = vmul_n_f32(v207, 1.0 / sqrtf(vmul_f32(*&v300, *&v300).f32[0] + (*&v301 * *&v301)));
                    v291 = v208;
                    *v208.i32 = sqrtf(fmaxf(v283, 0.00001));
                    v209 = vdiv_f32(v303, vdup_lane_s32(v208, 0));
                    v304 = vsub_f32(v209, v303);
                    _S9 = v304.i32[1];
                    v211 = atan2f(v304.f32[1], v304.f32[0]);
                    v212 = atan2f(*&v296.i32[1], *v296.i32);
                    _V2.S[1] = v304.i32[1];
                    __asm { FMLA            S1, S9, V2.S[1] }

                    v287 = sqrtf(_S1) * sinf(v211 - v212);
                    v297 = 1.0 - v287;
                    *v315.f32 = v206;
                    *&v315.u32[2] = vneg_f32(v206);
                    md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                    if (v178 >= 0.0)
                    {
                      v317 = vextq_s8(*&v327[8], *&v327[8], 8uLL);
                      v223 = vneg_f32(v304);
                      v315.i64[0] = 0;
                      *&v315.u32[2] = vneg_f32(vmla_n_f32(v304, v206, v297));
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      *v315.f32 = v223;
                      *&v315.u32[2] = vneg_f32(v209);
                      *v317.i8 = vmul_n_f32(*&v327[8], v287);
                      v317.i64[1] = *&v327[8];
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      *v315.f32 = v223;
                      *&v315.u32[2] = vneg_f32(vmla_n_f32(v304, v291, v297));
                      *v317.i8 = vmul_n_f32(*&v327[8], v287);
                      v317.i64[1] = *&v327[8];
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      v315.i64[0] = 0;
                      v217 = &v327[20];
                      v216 = &v327[16];
                    }

                    else
                    {
                      *v315.f32 = vmla_n_f32(v304, v206, v297);
                      *&v315.u32[2] = v304;
                      v317.i64[0] = *v327;
                      v317.u64[1] = vmul_n_f32(*v327, v287);
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      *v315.f32 = v209;
                      *&v315.u32[2] = v304;
                      v317.i64[0] = *v327;
                      v317.u64[1] = vmul_n_f32(*v327, v287);
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      v315 = vmla_n_f32(v304, v291, v297);
                      v215.i64[0] = *v327;
                      v215.i64[1] = *&v327[16];
                      v317 = v215;
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      *v315.f32 = v291;
                      v216 = v327;
                      v217 = &v327[4];
                    }

                    v315.f32[2] = -v291.f32[0];
                    v315.f32[3] = -v291.f32[1];
                    v224.i32[0] = *v216;
                    v224.i32[1] = *v217;
                    v224.i64[1] = *&v327[8];
                    v317 = v224;
                    md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                    *v315.f32 = v291;
                    v315.f32[2] = -v291.f32[0];
                    v315.f32[3] = -v291.f32[1];
                    v317 = *v327;
                    v184 = v280;
LABEL_171:
                    md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                    v97 = 1.0;
                  }

                  else
                  {
                    if (v182 == 1)
                    {
                      v187 = v184;
                      _S0 = v296.i32[1];
                      __asm { FMLA            S2, S0, V5.S[1] }

                      v194 = 1.0 / sqrtf(_S2);
                      v195 = -(*&v296.i32[1] * v194);
                      v196 = v194 * *v296.i32;
                      v197 = 1.0 / sqrtf(vmul_f32(*&v300, *&v300).f32[0] + (*&v301 * *&v301));
                      v198 = -(*&v301 * v197);
                      v199 = v197 * *&v300;
                      v315.f32[0] = v195;
                      v315.f32[1] = v194 * *v296.i32;
                      v315.f32[2] = -(v194 * -*&v296.i32[1]);
                      v315.f32[3] = -(v194 * *v296.i32);
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      if (v178 >= 0.0)
                      {
                        v315.i64[0] = 0;
                        v200 = -v198;
                        v201 = -v199;
                        v315.f32[2] = -v198;
                        v315.f32[3] = -v199;
                        v317.i64[0] = *&v327[16];
                        md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                        v317.i64[0] = *v327;
                      }

                      else
                      {
                        v315 = __PAIR64__(LODWORD(v196), LODWORD(v195));
                        v317.i64[1] = *&v327[16];
                        md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                        v317.i64[1] = *&v327[8];
                        v200 = -v198;
                        v201 = -v199;
                      }

                      v315.i64[0] = __PAIR64__(LODWORD(v199), LODWORD(v198));
                      v315.i64[1] = __PAIR64__(LODWORD(v201), LODWORD(v200));
                      v184 = v187;
                      goto LABEL_171;
                    }

                    for (j = 0; j != v185; ++j)
                    {
                      v219 = __sincosf_stret(((j * (1.0 / (v185 + -1.0))) + -0.5) * v178);
                      v220 = vrev64_s32(vmul_n_f32(v303, v219.__sinval));
                      v221 = vmul_n_f32(v303, v219.__cosval);
                      v222.i32[0] = vsub_f32(v221, v220).u32[0];
                      v222.i32[1] = vadd_f32(v221, v220).i32[1];
                      v316 = v222;
                      *v315.f32 = v222;
                      *&v315.u32[2] = vneg_f32(v222);
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      v320 = 0;
                    }
                  }

                  v298 = v184 + v298;
                  v92 = &off_1B33AD000;
                  v125 = v277;
                  goto LABEL_173;
                }

                v298 = v184 + v298;
                v125 = v277;
              }

              v202 = sqrtf(fmaxf(v173, 0.1));
              v315.f32[0] = v170 / v202;
              v315.f32[1] = v171 / v202;
              v315.f32[2] = -(v170 / v202);
              v315.f32[3] = -(v171 / v202);
              md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
LABEL_173:
              v145 = v300;
              v142 = v301;
              DWORD1(v145) = v301;
              v225 = v145;
              *&v146 = v145;
              if (v144 == v143)
              {
                goto LABEL_176;
              }
            }
          }

          v225 = v295;
          v145 = v299;
LABEL_176:
          v226 = &v116[8 * v143];
          v227 = &v116[8 * v115];
          v228 = *v226;
          v229 = v226[1];
          v230 = 1;
          v231 = *(v227 - 4);
          v232 = v228;
          do
          {
            v233 = vabds_f32(v232, v231);
            if ((v230 & 1) == 0)
            {
              break;
            }

            v230 = 0;
            v231 = *(v227 - 3);
            v232 = v229;
          }

          while (v233 < 1.0e-10);
          v91 = a1;
          v299 = v145;
          if (v233 >= 1.0e-10)
          {
            v235 = v228 - *(v227 - 4);
            v236 = v229 - *(v227 - 3);
            v237 = v97 / sqrtf((v235 * v235) + (v236 * v236));
            *&v225 = v237 * v235;
            v234 = v237 * v236;
            *(&v225 + 1) = v234;
          }

          else
          {
            v234 = *(&v225 + 1);
          }

          v302 = v225;
          v305 = v234;
          v315.f32[0] = -v234;
          *(v315.i64 + 4) = __PAIR64__(LODWORD(v234), v225);
          v315.f32[3] = -*&v225;
          v320 = 0;
          __p = v293[v115 - 1];
          v314 = *(v227 - 1);
          *&v316 = -v234;
          HIDWORD(v316) = v225;
          *&v318 = v298;
          *(&v318 + 1) = v298 * v125;
          md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
          v238 = v324;
          if (*(v324 + 97) == 1)
          {
            v239.i64[0] = v302;
            v239.i64[1] = v302;
            v240 = vmulq_n_f32(v239, *(&v329 + 3));
            v241 = vdupq_lane_s64(__SPAIR64__(v302, LODWORD(v305)), 0);
            v242 = vsubq_f32(v240, v241);
            v243 = vaddq_f32(v240, v241);
            v243.i32[0] = v242.i32[0];
            v243.i32[3] = v242.i32[3];
            v319 = 1;
            v315 = v243;
            v244 = &v327[24];
            v245 = &v328;
            v246 = &v328 + 4;
            if (!*(v324 + 120))
            {
              goto LABEL_186;
            }

            if (*(v324 + 120) == 1)
            {
              v244 = v327;
              v246 = &v327[12];
              v245 = &v327[8];
LABEL_186:
              v317.i64[0] = *v244;
              v247 = *v246;
              v317.i32[2] = *v245;
              v317.i32[3] = v247;
            }

            md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
            v238 = v324;
          }

          v248 = *(v238 + 8);
          v249 = *(v238 + 16) - v248;
          v250 = v249 >> 1;
          if (v249 >= 4)
          {
            v251 = 2;
            if (v250 > 2)
            {
              v251 = v250;
            }

            v252 = v251 - 1;
            v253 = *(v238 + 8);
            v254 = v112;
            do
            {
              *v254 = v253;
              v255 = v253 + 1;
              v254[1] = v253 + 1;
              v256 = v253 + 3;
              LODWORD(v253) = v253 + 2;
              v254[2] = v253;
              v254[3] = v255;
              v254[4] = v256;
              v254[5] = v253;
              v254 += 6;
              --v252;
            }

            while (v252);
          }

          if (*(v238 + 48) != *(v238 + 40))
          {
            v257 = *(v238 + 96);
            v258 = v250 - *(v238 + 97);
            v259 = 1;
            if (v257)
            {
              v259 = 2;
            }

            if (v258 > v259)
            {
              v260 = v248 + 2 * v259;
              v261 = v111;
              do
              {
                *v261 = v260 - 2;
                v261[1] = v260;
                v261 += 2;
                ++v259;
                v260 += 2;
              }

              while (v258 > v259);
            }
          }

          v110 = v271;
          goto LABEL_200;
        }

        begin = 0;
LABEL_203:
        std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__vdeallocate(v109);
        *v109 = 0;
        *(v109 + 1) = 0;
        *(v109 + 2) = 0;
        *&v325 = 0;
        v323 = 0;
        v324 = 0;
        __p = &v323;
        std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__p);
        if (begin)
        {
          operator delete(begin);
        }

        if (v307)
        {
          v308 = v307;
          operator delete(v307);
        }

        ggl::BufferMemory::~BufferMemory(v310);
        ggl::BufferMemory::~BufferMemory(v312);
        ++v98;
        v99 = v267;
      }

      v95 = v266 + 8;
    }

    while (v266 + 8 != v265);
  }

  *v91 = &unk_1F2A10B60;
  v91[29] = 0;
  return v91;
}

void md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::layout(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2;
  v4 = *(a1 + 232);
  if (*(v4 + 304) == 1)
  {
    v5 = *(v4 + 176);
    *(a1 + 56) = v5;
    if (a2[136] == 1)
    {
      *(a1 + 88) = v5;
    }
  }

  if (a2[132] == 1)
  {
    *(a1 + 64) = *(v4 + 200);
    *(a1 + 72) = *(v4 + 208);
    *(a1 + 80) = *(v4 + 240);
    if (a2[136] == 1)
    {
      *(a1 + 96) = *(v4 + 200);
      *(a1 + 104) = *(v4 + 208);
      *(a1 + 112) = *(v4 + 240);
    }

    v6 = *(v4 + 248);
    *(a1 + 120) = v6;
    v7 = 128;
    goto LABEL_14;
  }

  v8 = a2[56];
  *(a1 + 64) = *(v4 + 184);
  *(a1 + 72) = *(v4 + 208);
  if (v8 == 1)
  {
    *(a1 + 80) = *(v4 + 232);
    if (a2[136] == 1)
    {
      *(a1 + 96) = *(v4 + 184);
      *(a1 + 104) = *(v4 + 208);
      v6 = *(v4 + 232);
LABEL_13:
      v7 = 112;
LABEL_14:
      *(a1 + v7) = v6;
    }
  }

  else
  {
    *(a1 + 80) = *(v4 + 224);
    if (a2[136] == 1)
    {
      *(a1 + 96) = *(v4 + 184);
      *(a1 + 104) = *(v4 + 208);
      v6 = *(v4 + 224);
      goto LABEL_13;
    }
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 == v9 || (*(*v9 + 1456) & 1) != 0)
  {
    goto LABEL_57;
  }

  md::LayoutContext::frameState(*a2);
  if ((*(v11 + 632) & 1) == 0)
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    goto LABEL_57;
  }

  v12 = *(*v2 + 8);
  v84 = md::LayoutContext::get<md::CameraContext>(v12);
  v81 = a1;
  if (*(v84 + 3784))
  {
    v13 = *(a1 + 144);
    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = *(gdc::Camera::cameraFrame(v84) + 16);
      do
      {
        for (i = 0; i != 4; ++i)
        {
          v18 = v14 | (4 * i);
          geo::Frustum<double>::transformed(v87, v84 + 984, v13 + 1696 + 56 * v18);
          v19 = v13 + 32 + 104 * v18;
          v20 = *(v19 + 56);
          v21 = *(v19 + 88);
          v86[1] = *(v19 + 72);
          v86[2] = v21;
          v86[0] = v20;
          v91 = 0uLL;
          v92 = v16;
          gm::Box<double,3>::operator+=(v86, &v91);
          for (j = 0; j != 12; j += 2)
          {
            v23 = 0;
            v24 = *&v87[j + 1];
            v89 = v87[j];
            v90 = v24;
            do
            {
              v25 = v86 + v23;
              if (*(&v89 + v23) >= 0.0)
              {
                v25 = &v86[1] + v23 + 8;
              }

              *(&v91 + v23) = *v25;
              v23 += 8;
            }

            while (v23 != 24);
            v26 = 0;
            v27 = 0.0;
            do
            {
              v27 = v27 + *(&v87[j] + v26) * *(&v91 + v26);
              v26 += 8;
            }

            while (v26 != 24);
            v28 = *(&v87[j + 1] + 1) + v27;
            if (v28 < 0.0)
            {
              break;
            }
          }

          v29 = 1 << (4 * i + v14);
          if (v28 < 0.0)
          {
            v29 = 0;
          }

          v15 |= v29;
        }

        ++v14;
      }

      while (v14 != 4);
      goto LABEL_43;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v87, *(a1 + 192), 0);
    v31 = v88;
    v32 = 0.0;
  }

  else
  {
    v30 = 0.0;
    if (*md::LayoutContext::get<md::ElevationContext>(v12) == 1 && *(a1 + 184) == 1)
    {
      v30 = *(gdc::Camera::cameraFrame(v84) + 16) * 0.0000000249532021 * (1 << *(a1 + 153));
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v87, *(a1 + 192), 0);
    v31 = v88;
    v32 = v30;
  }

  v15 = ggl::CullingGrid::intersectedCellsForView(v31, v32);
  ggl::BufferMemory::~BufferMemory(v87);
LABEL_43:
  v9 = *(v81 + 8);
  v10 = *(v81 + 16);
  v2 = a2;
  if (v9 != v10)
  {
    v33 = vdupq_n_s64(2uLL);
    v34 = *(v81 + 8);
    do
    {
      v35 = *v34;
      v36 = *(*v34 + 1400);
      v37 = *(*v34 + 1408);
      if (v36 == v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = 0;
        do
        {
          v39 = *v36++;
          v40 = (*(v39 + 96) & v15) != 0;
          v38 |= v40;
          *(v39 + 48) = v40;
        }

        while (v36 != v37);
      }

      v41 = v38 & 1;
      v42 = (v35 + 264);
      v43 = 10;
      v44 = xmmword_1B33B0560;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v44)).u8[0])
        {
          *(v42 - 128) = v41;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v44)).i32[1])
        {
          *v42 = v41;
        }

        v44 = vaddq_s64(v44, v33);
        v42 += 256;
        v43 -= 2;
      }

      while (v43);
      *(v35 + 1424) = v41;
      ++v34;
    }

    while (v34 != v10);
  }

LABEL_57:
  if (v9 != v10)
  {
    v85 = vdupq_n_s64(2uLL);
    v82 = v10;
    while (1)
    {
      v45 = *v9;
      if (*(*v9 + 1424) == 1)
      {
        md::PolylineOverlayStyle::layout(*(v45 + 1472), v2);
        v46 = *(v45 + 1472);
        os_unfair_lock_lock((v46 + 196));
        v47 = *(v46 + 152);
        v48 = *(v46 + 156);
        os_unfair_lock_unlock((v46 + 196));
        v49 = *(v45 + 1400);
        v50 = *(v45 + 1408);
        while (v49 != v50)
        {
          v51 = *v49;
          if (*(*v49 + 48) == 1)
          {
            v52 = *(v51 + 104) >= v47 && *(v51 + 100) <= v48;
            *(v51 + 48) = v52;
          }

          ++v49;
        }

        v53 = **(v45 + 1472);
        v54 = (v45 + 264);
        v55 = 10;
        v56 = xmmword_1B33B0560;
        do
        {
          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v56)).u8[0])
          {
            *(v54 - 128) = v53;
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v56)).i32[1])
          {
            *v54 = v53;
          }

          v56 = vaddq_s64(v56, v85);
          v54 += 256;
          v55 -= 2;
        }

        while (v55);
        *(v45 + 1424) = v53;
        if (v53)
        {
          break;
        }
      }

LABEL_149:
      if (++v9 == v10)
      {
        return;
      }
    }

    v57 = 0;
    LOBYTE(v91) = *(v45 + 1464);
    BYTE1(v91) = v2[88];
    BYTE2(v91) = v2[135];
    BYTE3(v91) = v2[134];
    v58 = *(*(v45 + 8) + 232);
    v59 = (v45 + 136);
    while (*(*(v45 + 1472) + v57 + 120) != 1)
    {
      *v59 = 0;
LABEL_147:
      ++v57;
      v59 += 128;
      if (v57 == 10)
      {
        v10 = v82;
        goto LABEL_149;
      }
    }

    *v59 = 1;
    *(v59 - 20) = v2[57];
    if (v57 > 9u)
    {
      v62 = 0;
    }

    else
    {
      if (((1 << v57) & 0x255) != 0)
      {
        v60 = v58[17];
        v61 = v60[1];
        if (v61 == *v60)
        {
          v67 = v60[11];
          if (!v67)
          {
            goto LABEL_151;
          }

          v62 = (*(*v67 + 48))(v67, v56);
          *&v86[0] = v62;
        }

        else
        {
          v62 = *(v61 - 8);
          *&v86[0] = v62;
          v60[1] = v61 - 8;
        }

        std::vector<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v60 + 4), v86);
        *&v87[0] = v62;
        v68 = v60[15];
        if (!v68)
        {
          goto LABEL_151;
        }
      }

      else if (((1 << v57) & 0x122) != 0)
      {
        v63 = v58[16];
        v64 = v63[1];
        if (v64 == *v63)
        {
          v69 = v63[11];
          if (!v69)
          {
            goto LABEL_151;
          }

          v62 = (*(*v69 + 48))(v69, v56);
          *&v86[0] = v62;
        }

        else
        {
          v62 = *(v64 - 8);
          *&v86[0] = v62;
          v63[1] = v64 - 8;
        }

        std::vector<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v63 + 4), v86);
        *&v87[0] = v62;
        v68 = v63[15];
        if (!v68)
        {
          goto LABEL_151;
        }
      }

      else
      {
        v65 = v58[18];
        v66 = v65[1];
        if (v66 == *v65)
        {
          v70 = v65[11];
          if (!v70)
          {
            goto LABEL_151;
          }

          v62 = (*(*v70 + 48))(v70, v56);
          *&v86[0] = v62;
        }

        else
        {
          v62 = *(v66 - 8);
          *&v86[0] = v62;
          v65[1] = v66 - 8;
        }

        std::vector<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v65 + 4), v86);
        *&v87[0] = v62;
        v68 = v65[15];
        if (!v68)
        {
LABEL_151:
          v79 = std::__throw_bad_function_call[abi:nn200100]();
          md::PolylineOverlayStyle::layout(v79, v80);
          return;
        }
      }

      (*(*v68 + 48))(v68, v87);
    }

    v71 = *(*(v45 + 8) + 232);
    if (v57 <= 4u)
    {
      if (v57 > 1u)
      {
        if (v57 != 2)
        {
          if (v57 != 3)
          {
            v72 = v71[4];
            goto LABEL_118;
          }

          goto LABEL_108;
        }

LABEL_111:
        v72 = v71[2];
        goto LABEL_118;
      }

      if (!v57)
      {
        v72 = *v71;
        goto LABEL_118;
      }
    }

    else
    {
      if (v57 <= 7u)
      {
        if (v57 != 5)
        {
          if (v57 == 6)
          {
            v72 = v71[6];
LABEL_118:
            md::PolylinePipelineStateManager<md::Ribbons::PolylineOverlayRibbonDescriptor,ggl::PolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::PolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(v87, v72, &v91);
            goto LABEL_119;
          }

LABEL_108:
          md::PolylinePipelineStateManager<md::Ribbons::PolylineOverlayRibbonDescriptor,ggl::PolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::PolylineOverlayFillShader>>::pipelineStateForFunctionConstants(v87, v71[3], &v91);
          goto LABEL_119;
        }

        v73 = v71[5];
LABEL_116:
        md::PolylinePipelineStateManager<md::Ribbons::PolylineOverlayRibbonDescriptor,ggl::PolylineOverlayRibbon::AlphaPipelineState,std::shared_ptr<ggl::PolylineOverlayAlphaShader>>::pipelineStateForFunctionConstants(v87, v73, &v91);
        goto LABEL_119;
      }

      if (v57 != 8)
      {
        if (v57 != 9)
        {
          v87[0] = 0uLL;
LABEL_119:
          ggl::PipelineSetup::setState(v62, v87);
          if (*(&v87[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v87[0] + 1));
          }

          **(v62 + 168) = *(v58[32] + 16);
          if (!v62)
          {
            goto LABEL_146;
          }

          v74 = *(v45 + 1472);
          if (!v74)
          {
            goto LABEL_146;
          }

          if (v57 > 4u)
          {
            if (v57 <= 6u)
            {
              if (v57 == 5)
              {
                v75 = *(v62 + 136);
                v76 = *(v62 + 232);
                v77 = v74[9];
                v78 = v74[10];
                goto LABEL_145;
              }

              if (v57 == 6)
              {
                v75 = *(v62 + 136);
                v76 = *(v62 + 232);
                v77 = v74[11];
                v78 = v74[12];
                goto LABEL_145;
              }

              goto LABEL_146;
            }

            if (v57 == 7)
            {
              v75 = *(v62 + 136);
              v76 = *(v62 + 232);
              v77 = v74[11];
              v78 = v74[12];
              goto LABEL_145;
            }

            if (v57 == 8)
            {
              v75 = *(v62 + 136);
              v76 = *(v62 + 232);
              v77 = v74[13];
              v78 = v74[14];
              goto LABEL_145;
            }

            if (v57 != 9)
            {
              goto LABEL_146;
            }
          }

          else
          {
            if (v57 <= 1u)
            {
              v75 = *(v62 + 136);
              v76 = *(v62 + 232);
              if (v57)
              {
                v77 = v74[3];
                v78 = v74[4];
              }

              else
              {
                v77 = v74[1];
                v78 = v74[2];
              }

              goto LABEL_145;
            }

            if (v57 != 2)
            {
              if (v57 == 3)
              {
                v75 = *(v62 + 136);
                v76 = *(v62 + 232);
                v77 = v74[5];
                v78 = v74[6];
                goto LABEL_145;
              }

              if (v57 == 4)
              {
                v75 = *(v62 + 136);
                v76 = *(v62 + 232);
                v77 = v74[7];
                v78 = v74[8];
LABEL_145:
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(v75, v76, v77, v78);
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v62 + 136), *(v62 + 232), *(v45 + 1488), *(v45 + 1496));
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v62 + 136), *(v62 + 232), *(v45 + 1504), *(v45 + 1512));
              }

LABEL_146:
              *(v59 - 11) = v62;
              v2 = a2;
              goto LABEL_147;
            }
          }

          v75 = *(v62 + 136);
          v76 = *(v62 + 232);
          v77 = v74[5];
          v78 = v74[6];
          goto LABEL_145;
        }

        goto LABEL_111;
      }
    }

    v73 = v71[1];
    goto LABEL_116;
  }
}

void md::PolylineOverlayStyle::layout(uint64_t a1, uint64_t a2)
{
  *v130 = xmmword_1B33B0B40;
  *&v130[16] = xmmword_1B33B06F0;
  v131 = 256;
  __asm { FMOV            V0.2S, #-1.0 }

  v8 = -_D0;
  v133 = -_D0;
  v134 = 0;
  v9 = *(a2 + 144);
  if (!v9 || *(a2 + 136) != 1)
  {
    md::PolylineOverlayStyle::updateFromOverlay(a1, a2, v130);
    goto LABEL_40;
  }

  *a1 = 1;
  v141 = 0uLL;
  *&v130[28] = 1065353216;
  v134 = 0;
  v10 = *(a2 + 152);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v135, v9, v10);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  if ((v136 & 1) == 0)
  {
    geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&v144, &v141);
    *&v130[8] = v144;
    *&v130[4] = 0;
    v132 = *(a1 + 152);
    v49 = 0.0;
    goto LABEL_33;
  }

  v11 = md::LayoutContext::get<md::CameraContext>(*(*a2 + 8));
  v12 = fmaxf(*(v11 + 3080) + *(v11 + 3076), 1.0);
  v13 = *(*v135 + 24);
  v14 = fminf(v12, 23.0);
  v15 = *v13;
  if (!*v13 || (v16 = *v15, LODWORD(v15) = *v15 == 1.0, *(v13 + 10) != 1) || (v16 != 0.0 ? (_ZF = v16 == 1.0) : (_ZF = 1), _ZF))
  {
    v18 = *(v13 + v15 + 11);
    if (v18 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v135 + 24), 97, v18, 0, v14);
      goto LABEL_17;
    }

    v16 = 0.0;
  }

  v144.i8[0] = 1;
  LOBYTE(v140) = 1;
  v117 = v16;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 97, 0, &v144, v14);
  v119 = v118;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 97, 1, &v140, v14);
  v19 = v119 + ((v120 - v119) * v117);
LABEL_17:
  v127 = v19;
  *v130 = v19;
  if (v12 >= 0x17)
  {
    v20 = 23;
  }

  else
  {
    v20 = v12;
  }

  HIBYTE(v131) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v13, 91, v20, 2u, 0);
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v144, *(*v135 + 24), 93, 2u, v14);
  v125 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v144.f32)), vdupq_n_s32(0x37800080u));
  v141 = v125;
  v21 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v135 + 24), 319, v20, 2, 0);
  v23 = *(a2 + 192);
  v22 = *(a2 + 200);
  v25 = *(a2 + 208);
  v24 = *(a2 + 216);
  v26 = *(v11 + 5592);
  if (!v26)
  {
    v26 = v11;
  }

  v27 = *(a2 + 161);
  v28 = *(v26 + 3768);
  v29 = *(v26 + 1368);
  v30 = *(a2 + 164);
  v31 = *(a2 + 168);
  [**a2 sizeInPixels];
  v32 = (1 << v27);
  v33 = 1.0 / v32 * v31;
  v34 = 1.0 / v32 * ((1 << v27) + ~v30);
  v35 = (v25 - v33) * v32;
  v36 = (v24 - v34) * v32;
  *&v33 = (v33 - v23) * v32;
  *&v34 = (v34 - v22) * v32;
  v37 = v35 + *&v33;
  v38 = v36 + *&v34;
  v39 = v28 * v32;
  v42 = fmin(v41, v40);
  v43 = 0.0;
  v44 = 0.0;
  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*v135 + 24), 0x1D7u, 1u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(471, 2, *(*v135 + 24), 0);
    v44 = v45;
  }

  v46 = fmax(v37, v38);
  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*v135 + 24), 0x1D8u, 1u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(472, 2, *(*v135 + 24), 0);
    v43 = v47;
  }

  v48 = fmin(fmax(log2(v29 * v46 / (v39 * v42 * fmax(v44, 0.000000001))) / fmax(v43, 0.000000001), 0.0), 1.0);
  HIDWORD(v141) = vmuls_lane_f32(v48, v126, 3);
  if (*(&v141 + 3) == 0.0)
  {
    HIBYTE(v131) = 0;
  }

  geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&v144, &v141);
  *&v130[8] = v144;
  v49 = *(a2 + 72) * v127;
  *&v130[4] = v49;
  v132 = *(a1 + 152);
  if (v21 != 2)
  {
    if (v21 == 1)
    {
      v50 = 1065353216;
    }

    else
    {
      v50 = 0x3F80000000000000;
    }

    goto LABEL_34;
  }

LABEL_33:
  v50 = 0x3F0000003F000000;
LABEL_34:
  v51.f32[0] = -v49;
  v51.f32[1] = v49;
  v133 = COERCE_DOUBLE(vmul_f32(v50, v51));
  md::PolylineOverlayStyle::_updatePropertiesAndState(a1, a2, v130);
  if (v136 == 1)
  {
    (*(**v135 + 56))(*v135);
  }

  if (*&v135[24])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v135[24]);
  }

  if (*&v135[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v135[8]);
  }

LABEL_40:
  if (*a1 != 1)
  {
    return;
  }

  *(a1 + 128) = 0;
  *(a1 + 120) = 0;
  v52 = *(a2 + 68) * **(*(a2 + 112) + 256);
  v53 = *(a2 + 136);
  if (v131 == 1)
  {
    if (*(a1 + 193) == 1)
    {
      v54 = *(a1 + 8);
      v55 = *(a1 + 16);
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        *v135 = xmmword_1B33B0710;
        md::PolylineOverlayStyle::setStyleConstants(v54, v130, v135, 1.0, v52);
        std::__shared_weak_count::__release_shared[abi:nn200100](v55);
      }

      else
      {
        *v135 = xmmword_1B33B0710;
        md::PolylineOverlayStyle::setStyleConstants(v54, v130, v135, 1.0, v52);
      }
    }

    v58 = *(a1 + 24);
    v59 = *(a1 + 32);
    if (v59)
    {
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *v135 = 0;
    *&v135[8] = 0;
    *&v135[12] = *&v130[20];
    md::PolylineOverlayStyle::setStyleConstants(v58, v130, v135, 1.0, v52);
    if (v59)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v59);
    }

    *(a1 + 120) = *(a1 + 193);
    *(a1 + 121) = 257;
    *(a1 + 123) = 0;
    if (*(a2 + 132) == 1 && *(a2 + 133) == 1)
    {
      *(a1 + 128) = 257;
      v60 = *(a1 + 104);
      v61 = *(a1 + 112);
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        v62 = 0.2;
        v63 = &v130[8];
LABEL_63:
        md::PolylineOverlayStyle::setStyleConstants(v60, v130, v63, v62, v52);
        std::__shared_weak_count::__release_shared[abi:nn200100](v61);
        goto LABEL_67;
      }

      v64 = 0.2;
      v65 = &v130[8];
LABEL_66:
      md::PolylineOverlayStyle::setStyleConstants(v60, v130, v65, v64, v52);
    }
  }

  else
  {
    *(a1 + 123) = 1;
    if (*(a2 + 132) == 1 && *(a2 + 133) == 1)
    {
      *(a1 + 128) = 257;
      v56 = *(a1 + 104);
      v57 = *(a1 + 112);
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        md::PolylineOverlayStyle::setStyleConstants(v56, v130, &v130[8], 0.2, v52);
        std::__shared_weak_count::__release_shared[abi:nn200100](v57);
      }

      else
      {
        md::PolylineOverlayStyle::setStyleConstants(v56, v130, &v130[8], 0.2, v52);
      }

      if (*(a1 + 193) == 1)
      {
        *(a1 + 120) = 1;
        v60 = *(a1 + 8);
        v61 = *(a1 + 16);
        if (v61)
        {
          atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
          *v135 = xmmword_1B33B0710;
          v63 = v135;
          v62 = 1.0;
          goto LABEL_63;
        }

        *v135 = xmmword_1B33B0710;
        v65 = v135;
        v64 = 1.0;
        goto LABEL_66;
      }
    }
  }

LABEL_67:
  v66 = *(a1 + 40);
  v67 = *(a1 + 48);
  if (v67)
  {
    atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
    md::PolylineOverlayStyle::setStyleConstants(v66, v130, &v130[8], 1.0, v52);
    std::__shared_weak_count::__release_shared[abi:nn200100](v67);
    if (!v53)
    {
      return;
    }
  }

  else
  {
    md::PolylineOverlayStyle::setStyleConstants(v66, v130, &v130[8], 1.0, v52);
    if (!v53)
    {
      return;
    }
  }

  *v135 = xmmword_1B33B0B40;
  *&v135[16] = xmmword_1B33B06F0;
  v136 = 256;
  v138 = *&v8;
  *a1 = 1;
  v144 = 0uLL;
  *&v135[28] = 1065353216;
  v139 = 0;
  v68 = *(a2 + 144);
  v69 = *(a2 + 152);
  if (v69)
  {
    atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v141, v68, v69);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v69);
  }

  if ((v143 & 1) == 0)
  {
    geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&v140, &v144);
    *&v135[8] = v140;
    *&v135[4] = 0;
    v137 = *(a1 + 152);
    v107 = 0.0;
LABEL_97:
    v108 = 1065353216;
    goto LABEL_98;
  }

  v70 = md::LayoutContext::get<md::CameraContext>(*(*a2 + 8));
  v71 = fmaxf(*(v70 + 3080) + *(v70 + 3076), 1.0);
  v72 = *(v141 + 24);
  v73 = fminf(v71, 23.0);
  v74 = *v72;
  if (!*v72 || (v75 = *v74, LODWORD(v74) = *v74 == 1.0, *(v72 + 10) != 1) || v75 == 0.0 || v75 == 1.0)
  {
    v76 = *(v72 + v74 + 11);
    if (v76 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v141 + 24), 404, v76, 0, v73);
      goto LABEL_82;
    }

    v75 = 0.0;
  }

  LOBYTE(v140) = 1;
  v145 = 1;
  v121 = v75;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v72, 404, 0, &v140, v73);
  v123 = v122;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v72, 404, 1, &v145, v73);
  v77 = v123 + ((v124 - v123) * v121);
LABEL_82:
  v129 = v77;
  *v135 = v77;
  if (v71 >= 0x17)
  {
    v78 = 23;
  }

  else
  {
    v78 = v71;
  }

  HIBYTE(v136) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v72, 91, v78, 2u, 0);
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v140, *(v141 + 24), 403, 2u, v73);
  v128 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v140)), vdupq_n_s32(0x37800080u));
  v144 = v128;
  v79 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v141 + 24), 408, v78, 2, 0);
  v81 = *(a2 + 192);
  v80 = *(a2 + 200);
  v83 = *(a2 + 208);
  v82 = *(a2 + 216);
  v84 = *(v70 + 5592);
  if (!v84)
  {
    v84 = v70;
  }

  v85 = *(a2 + 161);
  v86 = *(v84 + 3768);
  v87 = *(v84 + 1368);
  v88 = *(a2 + 164);
  v89 = *(a2 + 168);
  [**a2 sizeInPixels];
  v90 = (1 << v85);
  v91 = 1.0 / v90 * v89;
  v92 = 1.0 / v90 * ((1 << v85) + ~v88);
  v93 = (v83 - v91) * v90;
  v94 = (v82 - v92) * v90;
  *&v91 = (v91 - v81) * v90;
  *&v92 = (v92 - v80) * v90;
  v95 = v93 + *&v91;
  v96 = v94 + *&v92;
  v97 = v86 * v90;
  v100 = fmin(v99, v98);
  v101 = 0.0;
  v102 = 0.0;
  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(v141 + 24), 0x1D7u, 1u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(471, 2, *(v141 + 24), 0);
    v102 = v103;
  }

  v104 = fmax(v95, v96);
  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(v141 + 24), 0x1D8u, 1u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(472, 2, *(v141 + 24), 0);
    v101 = v105;
  }

  v106 = fmin(fmax(log2(v87 * v104 / (v97 * v100 * fmax(v102, 0.000000001))) / fmax(v101, 0.000000001), 0.0), 1.0);
  v144.i32[3] = vmuls_lane_f32(v106, v128, 3);
  if (v144.f32[3] == 0.0)
  {
    HIBYTE(v136) = 0;
  }

  geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&v140, &v144);
  *&v135[8] = v140;
  v107 = *(a2 + 72) * v129;
  *&v135[4] = v107;
  v137 = *(a1 + 152);
  if (v79 == 2)
  {
    v108 = 0x3F0000003F000000;
    goto LABEL_98;
  }

  if (v79 == 1)
  {
    goto LABEL_97;
  }

  v108 = 0x3F80000000000000;
LABEL_98:
  v109.f32[0] = -v107;
  v109.f32[1] = v107;
  v138 = vmul_f32(v108, v109);
  md::PolylineOverlayStyle::_updatePropertiesAndState(a1, a2, v135);
  if (v143 == 1)
  {
    (*(*v141 + 56))(v141);
  }

  if (v142)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v142);
  }

  if (*(&v141 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v141 + 1));
  }

  if (v136 == 1)
  {
    if (*(a1 + 193) == 1)
    {
      v110 = *(a1 + 56);
      v111 = *(a1 + 64);
      if (v111)
      {
        atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
        v141 = xmmword_1B33B0710;
        md::PolylineOverlayStyle::setStyleConstants(v110, v135, &v141, 1.0, v52);
        std::__shared_weak_count::__release_shared[abi:nn200100](v111);
      }

      else
      {
        v141 = xmmword_1B33B0710;
        md::PolylineOverlayStyle::setStyleConstants(v110, v135, &v141, 1.0, v52);
      }
    }

    v113 = *(a1 + 72);
    v114 = *(a1 + 80);
    if (v114)
    {
      atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v141 = 0;
      DWORD2(v141) = 0;
      HIDWORD(v141) = *&v135[20];
      md::PolylineOverlayStyle::setStyleConstants(v113, v135, &v141, 1.0, v52);
      std::__shared_weak_count::__release_shared[abi:nn200100](v114);
    }

    else
    {
      *&v141 = 0;
      DWORD2(v141) = 0;
      HIDWORD(v141) = *&v135[20];
      md::PolylineOverlayStyle::setStyleConstants(v113, v135, &v141, 1.0, v52);
    }

    v112 = 0;
    *(a1 + 124) = *(a1 + 193);
    *(a1 + 125) = 257;
  }

  else
  {
    v112 = 1;
  }

  *(a1 + 127) = v112;
  v115 = *(a1 + 88);
  v116 = *(a1 + 96);
  if (v116)
  {
    atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
    md::PolylineOverlayStyle::setStyleConstants(v115, v135, &v135[8], 1.0, v52);
    std::__shared_weak_count::__release_shared[abi:nn200100](v116);
  }

  else
  {
    md::PolylineOverlayStyle::setStyleConstants(v115, v135, &v135[8], 1.0, v52);
  }
}

void sub_1B2EF26CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, std::__shared_weak_count *a38, char a39)
{
  if (a39)
  {
    (*(*a35 + 56))(a35);
  }

  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a38);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a36);
  }

  _Unwind_Resume(exception_object);
}

unint64_t md::PolylinePipelineStateManager<md::Ribbons::PolylineOverlayRibbonDescriptor,ggl::PolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::PolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v13[0] = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  BYTE6(v14) = a3[3];
  result = ggl::packFunctionConstantKey(v13, a2);
  v6 = *(a2 + 104);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (a2 + 104);
  do
  {
    v8 = v6[4];
    v9 = v8 >= result;
    v10 = v8 < result;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 == (a2 + 104) || result < v7[4])
  {
LABEL_9:
    operator new();
  }

  v12 = v7[5];
  v11 = v7[6];
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2EF2D1C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

unint64_t md::PolylinePipelineStateManager<md::Ribbons::PolylineOverlayRibbonDescriptor,ggl::PolylineOverlayRibbon::AlphaPipelineState,std::shared_ptr<ggl::PolylineOverlayAlphaShader>>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v13[0] = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  BYTE6(v14) = a3[3];
  result = ggl::packFunctionConstantKey(v13, a2);
  v6 = *(a2 + 104);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (a2 + 104);
  do
  {
    v8 = v6[4];
    v9 = v8 >= result;
    v10 = v8 < result;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 == (a2 + 104) || result < v7[4])
  {
LABEL_9:
    operator new();
  }

  v12 = v7[5];
  v11 = v7[6];
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2EF3294(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

unint64_t md::PolylinePipelineStateManager<md::Ribbons::PolylineOverlayRibbonDescriptor,ggl::PolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::PolylineOverlayFillShader>>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v13[0] = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  BYTE6(v14) = a3[3];
  result = ggl::packFunctionConstantKey(v13, a2);
  v6 = *(a2 + 104);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (a2 + 104);
  do
  {
    v8 = v6[4];
    v9 = v8 >= result;
    v10 = v8 < result;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 == (a2 + 104) || result < v7[4])
  {
LABEL_9:
    operator new();
  }

  v12 = v7[5];
  v11 = v7[6];
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2EF380C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::PolylineOverlayRibbon::FillPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A11120;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolylineOverlayRibbon::AlphaPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A110E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolylineOverlayRibbon::AlphaFillPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A110B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

ggl::zone_mallocator *std::vector<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::FillPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::FillPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolylineOverlayRibbon::FillPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *>(uint64_t a1, void *a2)
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

void md::PolylineOverlayStyle::updateFromOverlay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 1;
  os_unfair_lock_lock((a1 + 196));
  v6 = *(a1 + 132);
  v7 = fabsf(v6);
  if (v6 <= 0.0 || v7 <= (v7 * 0.000011921) || v7 < 1.1755e-38)
  {
    v10 = -1.0;
    if (*(a2 + 20) > 1.9)
    {
      v10 = 0.0;
    }

    v6 = VKVectorOverlayAutomaticLineWidthForZoomLevel((v10 + *(a2 + 8)));
  }

  v11 = 0;
  *a3 = v6;
  do
  {
    *(a3 + v11 + 8) = *(a1 + v11 + 136);
    v11 += 4;
  }

  while (v11 != 16);
  *(a3 + 28) = *(a2 + 120) * *(a1 + 160);
  if (*(a2 + 124))
  {
    v12 = (a2 + 128);
  }

  else
  {
    v12 = (a1 + 164);
  }

  *(a3 + 52) = *v12;
  md::PolylineOverlayStyle::_updatePropertiesAndState(a1, a2, a3);

  os_unfair_lock_unlock((a1 + 196));
}

void md::PolylineOverlayStyle::setStyleConstants(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float32_t a5)
{
  ggl::BufferMemory::BufferMemory(v12);
  ggl::ResourceAccessor::accessConstantData(v14, 0, a1, 1);
  ggl::BufferMemory::operator=(v12, v14);
  ggl::BufferMemory::~BufferMemory(v14);
  v10 = 0;
  v11 = v13;
  v13[2] = 0;
  do
  {
    v11->i32[v10] = *(a3 + v10 * 4);
    ++v10;
  }

  while (v10 != 4);
  v11[3].f32[0] = *(a2 + 4) * 0.5;
  v11[3].f32[1] = a5;
  v11[4].f32[0] = *(a2 + 28) * a4;
  v11[5].i32[0] = *(a2 + 36);
  v11[5].i32[1] = *(a2 + 40);
  v11[7].i32[0] = *(a2 + 52);
  v11[6] = vneg_f32(vrev64_s32(*(a2 + 44)));
  ggl::BufferMemory::~BufferMemory(v12);
}

uint64_t md::PolylineOverlayStyle::_updatePropertiesAndState(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  if (v3 >= 1.0 && *(a3 + 52) == 0)
  {
    if (*(result + 176) == *(result + 168))
    {
      v5 = *(result + 148) < 1.0;
    }

    else
    {
      v5 = *(result + 192);
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = 0;
  *(a3 + 32) = v5 & 1;
  *(a3 + 36) = *(result + 152);
  *(a3 + 4) = *(a2 + 72) * *a3;
  if (*(a3 + 33) == 1 && v3 > 0.0)
  {
    v6 = *(a3 + 20) > 0.0 || *(result + 176) != *(result + 168);
  }

  *result = v6;
  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A111B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A11198;
  v6 = (a1 + 1400);
  std::vector<std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  md::FrameAllocator<ggl::RenderItem>::reset(a1 + 1376);
  free(*(a1 + 1376));
  v2 = *(a1 + 1352);
  if (v2)
  {
    *(a1 + 1360) = v2;
    operator delete(v2);
  }

  v6 = (a1 + 1320);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v3 = *(a1 + 1296);
  if (v3)
  {
    *(a1 + 1304) = v3;
    operator delete(v3);
  }

  for (i = 1168; i != -112; i -= 128)
  {
    ggl::RenderItem::~RenderItem((a1 + i));
  }

  return a1;
}

void md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A11178;
  v2 = a1[181];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A11178;
  v2 = a1[181];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);
}

void md::PolylineOverlayBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~PolylineOverlayBatch(void *a1)
{
  *a1 = &unk_1F2A11158;
  v2 = a1[189];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[187];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[185];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *a1 = &unk_1F2A11178;
  v5 = a1[181];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::PolylineOverlayBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~PolylineOverlayBatch(void *a1)
{
  *a1 = &unk_1F2A11158;
  v2 = a1[189];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[187];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[185];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *a1 = &unk_1F2A11178;
  v5 = a1[181];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);
}

void ggl::ConstantDataTyped<ggl::GradientPolylineOverlayRibbon::GradientInfo>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::GradientPolylineOverlayRibbon::GradientInfo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A11298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

unint64_t md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v13[0] = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  BYTE6(v14) = a3[3];
  result = ggl::packFunctionConstantKey(v13, a2);
  v6 = *(a2 + 104);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (a2 + 104);
  do
  {
    v8 = v6[4];
    v9 = v8 >= result;
    v10 = v8 < result;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 == (a2 + 104) || result < v7[4])
  {
LABEL_9:
    operator new();
  }

  v12 = v7[5];
  v11 = v7[6];
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2EF4CF0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

unint64_t md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaShader>>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v13[0] = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  BYTE6(v14) = a3[3];
  result = ggl::packFunctionConstantKey(v13, a2);
  v6 = *(a2 + 104);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (a2 + 104);
  do
  {
    v8 = v6[4];
    v9 = v8 >= result;
    v10 = v8 < result;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 == (a2 + 104) || result < v7[4])
  {
LABEL_9:
    operator new();
  }

  v12 = v7[5];
  v11 = v7[6];
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2EF5290(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

unint64_t md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v13[0] = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  BYTE6(v14) = a3[3];
  result = ggl::packFunctionConstantKey(v13, a2);
  v6 = *(a2 + 104);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (a2 + 104);
  do
  {
    v8 = v6[4];
    v9 = v8 >= result;
    v10 = v8 < result;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 == (a2 + 104) || result < v7[4])
  {
LABEL_9:
    operator new();
  }

  v12 = v7[5];
  v11 = v7[6];
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2EF5830(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::GradientPolylineOverlayRibbon::FillPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A11260;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::GradientPolylineOverlayRibbon::AlphaPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A11228;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A111F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

ggl::zone_mallocator *std::vector<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *>(uint64_t a1, void *a2)
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

void ggl::ConstantDataTyped<ggl::PolylineOverlayRibbon::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PolylineOverlayRibbon::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A10C20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolylineOverlayStyle::GradientColorStop>>(unint64_t a1)
{
  if (a1 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void md::PolylineOverlayStyle::setFillColor(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 49);
  for (i = 0; i != 4; ++i)
  {
    a1[i + 34] = *(a2 + i * 4);
  }

  os_unfair_lock_unlock(a1 + 49);
}

ggl::zone_mallocator *md::PolylineOverlaySharedResources::resetPools(ggl::zone_mallocator *this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = *(v2 + 4);
  v4 = *(v2 + 5);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3++;
      v26 = v5;
      this = std::vector<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v2, &v26);
    }

    while (v3 != v4);
    v3 = *(v2 + 4);
    v4 = *(v2 + 5);
  }

  if (v3 != v4)
  {
    *(v2 + 5) = v3;
  }

  v6 = *(v1 + 17);
  v7 = *(v6 + 4);
  v8 = *(v6 + 5);
  if (v7 != v8)
  {
    do
    {
      v9 = *v7++;
      v26 = v9;
      this = std::vector<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v6, &v26);
    }

    while (v7 != v8);
    v7 = *(v6 + 4);
    v8 = *(v6 + 5);
  }

  if (v7 != v8)
  {
    *(v6 + 5) = v7;
  }

  v10 = *(v1 + 18);
  v11 = *(v10 + 4);
  v12 = *(v10 + 5);
  if (v11 != v12)
  {
    do
    {
      v13 = *v11++;
      v26 = v13;
      this = std::vector<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v10, &v26);
    }

    while (v11 != v12);
    v11 = *(v10 + 4);
    v12 = *(v10 + 5);
  }

  if (v11 != v12)
  {
    *(v10 + 5) = v11;
  }

  v14 = *(v1 + 19);
  v15 = *(v14 + 4);
  v16 = *(v14 + 5);
  if (v15 != v16)
  {
    do
    {
      v17 = *v15++;
      v26 = v17;
      this = std::vector<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v14, &v26);
    }

    while (v15 != v16);
    v15 = *(v14 + 4);
    v16 = *(v14 + 5);
  }

  if (v15 != v16)
  {
    *(v14 + 5) = v15;
  }

  v18 = *(v1 + 20);
  v19 = *(v18 + 4);
  v20 = *(v18 + 5);
  if (v19 != v20)
  {
    do
    {
      v21 = *v19++;
      v26 = v21;
      this = std::vector<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v18, &v26);
    }

    while (v19 != v20);
    v19 = *(v18 + 4);
    v20 = *(v18 + 5);
  }

  if (v19 != v20)
  {
    *(v18 + 5) = v19;
  }

  v22 = *(v1 + 21);
  v23 = *(v22 + 4);
  v24 = *(v22 + 5);
  if (v23 != v24)
  {
    do
    {
      v25 = *v23++;
      v26 = v25;
      this = std::vector<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v22, &v26);
    }

    while (v23 != v24);
    v23 = *(v22 + 4);
    v24 = *(v22 + 5);
  }

  if (v23 != v24)
  {
    *(v22 + 5) = v23;
  }

  return this;
}

void md::RasterResourceDataRequester::resolveTile(md::RasterResourceDataRequester *this@<X0>, const geo::QuadTile *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 10);
  os_unfair_lock_lock((v5 + 784));
  v6 = *(a2 + 1);
  *(a3 + 1) = v6;
  *(a3 + 4) = *(a2 + 4);
  *a3 = *a2;
  *(a3 + 16) = *(a2 + 2);
  *(a3 + 24) = *(a2 + 24);
  if (v6)
  {
    do
    {
      if (v5 + 840 == geo::LRUPolicy<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>,geo::QuadTileHash>::get(v5 + 840, (v5 + 800), a3))
      {
        break;
      }

      if (!*(a3 + 1))
      {
        break;
      }

      v7 = *(a3 + 1) - 1;
      *(a3 + 1) = v7;
      *(a3 + 4) = vshr_n_s32(*(a3 + 4), 1uLL);
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }

    while (v7);
  }

  os_unfair_lock_unlock((v5 + 784));
}

void md::RasterResourceDataRequester::~RasterResourceDataRequester(md::RasterResourceDataRequester *this)
{
  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelManagerCommand>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::LabelManagerCommand>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A11358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::activeTileGroupDidChange(void)::$_0,std::allocator<md::LabelManager::activeTileGroupDidChange(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A11390;
  a2[1] = v2;
  return result;
}

uint64_t md::LabelManager::localeChanged(std::mutex *this)
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2A11420;
  v2[1] = this;
  v2[3] = v2;
  md::LabelManager::queueCommand(this, 2, 1, v2);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
}

void sub_1B2EF7BB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelManager::localeChanged(void)::$_0,std::allocator<md::LabelManager::localeChanged(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A11420;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::LabelManager::focusedVenueDidChange(BOOL)::$_0,std::allocator<md::LabelManager::focusedVenueDidChange(BOOL)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  *(v1 + 3376) = *(result + 16);
  *(v1 + 3047) = 1;
  v2 = *(v1 + 168);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    result = (*(*v5 + 24))(v5);
  }

  return result;
}

__n128 std::__function::__func<md::LabelManager::focusedVenueDidChange(BOOL)::$_0,std::allocator<md::LabelManager::focusedVenueDidChange(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11468;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<md::LabelManager::venueBuildingFloorDidChange(void)::$_0,std::allocator<md::LabelManager::venueBuildingFloorDidChange(void)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  *(v1 + 3034) = 1;
  *(v1 + 3047) = 1;
  v2 = *(v1 + 168);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    result = (*(*v5 + 24))(v5);
  }

  return result;
}

uint64_t std::__function::__func<md::LabelManager::venueBuildingFloorDidChange(void)::$_0,std::allocator<md::LabelManager::venueBuildingFloorDidChange(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A114B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::LabelManager::venueFloorSwitcherActiveDidChange(BOOL)::$_0,std::allocator<md::LabelManager::venueFloorSwitcherActiveDidChange(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != *(result + 3377))
  {
    *(result + 3377) = v3;
    return md::LabelManager::queueRestyle(result, 1);
  }

  return result;
}

__n128 std::__function::__func<md::LabelManager::venueFloorSwitcherActiveDidChange(BOOL)::$_0,std::allocator<md::LabelManager::venueFloorSwitcherActiveDidChange(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A114F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t md::LabelManager::setContentScale(uint64_t this, float a2)
{
  v2[4] = *MEMORY[0x1E69E9840];
  if (*(this + 3584) != a2)
  {
    *(this + 3584) = a2;
    v2[0] = &unk_1F2A11540;
    v2[1] = this;
    v2[2] = LODWORD(a2);
    v2[3] = v2;
    md::LabelManager::queueCommand(this, 3, 1, v2);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
  }

  return this;
}

void sub_1B2EF8010(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelManager::setContentScale(float)::$_0,std::allocator<md::LabelManager::setContentScale(float)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (*(v1 + 176) != v2)
  {
    *(v1 + 176) = v2;
    *(v1 + 3042) = 1;
    *(v1 + 3332) = v2 * 4.0;
    v3 = *(v1 + 312);
    if (*(v3 + 120) != v2)
    {
      *(v3 + 120) = v2;
      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::clear(v3 + 64);
      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::clear(v3 + 8);
    }

    v4 = *(v1 + 280);
    v5[0] = &unk_1F2A0CAB0;
    v5[1] = v4;
    v5[3] = v5;
    md::LabelGlyphImageLoader::queueCommand(v4, v5);
  }

  if (md::LabelStyleCache::setContentScale(*(v1 + 336), v2))
  {

    md::LabelManager::clearScene(v1, 3);
  }
}

void sub_1B2EF815C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setContentScale(float)::$_0,std::allocator<md::LabelManager::setContentScale(float)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11540;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t md::LabelManager::setMapType(uint64_t result, unsigned int a2)
{
  v2[4] = *MEMORY[0x1E69E9840];
  if (*(result + 3588) != a2)
  {
    *(result + 3588) = a2;
    v2[0] = &unk_1F2A11618;
    v2[1] = result;
    v2[2] = a2;
    v2[3] = v2;
    md::LabelManager::queueCommand(result, 6, 0, v2);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
  }

  return result;
}

void sub_1B2EF83C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelManager::setMapType(VKMapType)::$_0,std::allocator<md::LabelManager::setMapType(VKMapType)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (*(v1 + 196) != v2)
  {
    *(v1 + 196) = v2;
    *(*(*(v1 + 336) + 136) + 128) = (v2 - 1) < 4;
    v4 = *(v1 + 232);
    if ((*(v4 + 16) & 0xFE) == 4)
    {
      v5 = *(v4 + 31);
      v6 = v2 - 3;
      v7 = (v2 - 3) < 2;
      if (v5 != v7)
      {
        v8 = v6 > 1;
        *(v4 + 31) = v7;
        if (v6 < 2)
        {
          v9 = -4;
        }

        else
        {
          v9 = 4;
        }

        *(v4 + 35) = v9;
        *(v4 + 29) = v7;
        *(v4 + 30) = v7;
        *(v4 + 28) = v8;
        *(v4 + 19) = v8;
        v10 = *(*(v4 + 8) + 168);
        v11 = *v10;
        v12 = v10[1];
        if (*v10 != v12)
        {
          do
          {
            v13 = *v11++;
            (*(*v13 + 40))(v13);
          }

          while (v11 != v12);
          v7 = *(*(v1 + 232) + 31);
        }

        if (v5 != v7 && *(v1 + 3440))
        {
          v14 = *(v1 + 3448);
          v23 = *(v1 + 3440);
          v24 = v14;
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::LabelManager::releaseAdoptedSelectedLabelMarker(v1, 0);
          md::LabelManager::adoptSelectedLabelMarker(v1, &v23);
          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v24);
          }
        }
      }
    }

    if (*(a1 + 16) == 8)
    {
      v15 = *(*(v1 + 232) + 19);
    }

    else
    {
      v15 = 0;
    }

    atomic_store(v15 & 1, (v1 + 3425));
    v16 = atomic_load((v1 + 3425));
    if (v16)
    {
      v17 = 1;
    }

    else if (*(v1 + 196) == 5)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2 * (*(v1 + 3016) == 1);
    }

    v18 = atomic_load((v1 + 3428));
    if (v18 != v17)
    {
      atomic_store(v17, (v1 + 3428));
    }

    *(v1 + 3033) = (*(a1 + 16) & 0xFFFFFFFD) == 1;
    v19 = *(v1 + 168);
    v20 = *v19;
    v21 = v19[1];
    while (v20 != v21)
    {
      v22 = *v20++;
      (*(*v22 + 32))(v22);
    }
  }
}

void sub_1B2EF85EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::LabelManager::setMapType(VKMapType)::$_0,std::allocator<md::LabelManager::setMapType(VKMapType)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11618;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<md::LabelManager::setMapsUsage(VKMapsUsage)::$_0,std::allocator<md::LabelManager::setMapsUsage(VKMapsUsage)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (*(v1 + 200) != v2)
  {
    *(v1 + 200) = v2;
  }

  return result;
}

uint64_t std::__function::__func<md::LabelManager::setLabelMode(md::LabelMode)::$_0,std::allocator<md::LabelManager::setLabelMode(md::LabelMode)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (*(v1 + 192) != v2)
  {
    *(v1 + 192) = v2;
    v3 = v2 == 2;
    v4 = 3;
    v6[0] = &unk_1F2A11780;
    v6[1] = v1;
    if (!v3)
    {
      v4 = 0;
    }

    LOBYTE(v7[0]) = v4;
    v7[1] = v6;
    memset(v7 + 1, 0, 7);
    md::LabelManager::queueCommand(v1, 9, 0, v6);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v6);
    (*(**(*(v1 + 168) + 32) + 176))(*(*(v1 + 168) + 32), *(v1 + 192));
  }

  return md::LabelManager::updateLabelCameraMode(v1);
}

void sub_1B2EF884C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t md::LabelManager::updateLabelCameraMode(uint64_t this)
{
  v1 = this;
  if (*(this + 192) == 2)
  {
    this = (***(*(this + 168) + 32))(*(*(this + 168) + 32));
    v2 = 2 * (this == 0);
    if (this == 1)
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 3019) = v2;
  return this;
}

void std::__function::__func<md::LabelManager::setMapMode(gss::MapMode)::$_0,std::allocator<md::LabelManager::setMapMode(gss::MapMode)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 336);
  v4 = *(a1 + 16);
  std::mutex::lock(v3);
  if (*(v3 + 160) == v4)
  {

    std::mutex::unlock(v3);
  }

  else
  {
    *(v3 + 160) = v4;
    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::clear(v3 + 240);
    std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear((v3 + 208));
    *(v3 + 308) = 0;
    *(v3 + 300) = 0;
    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::clear(v3 + 352);
    std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear((v3 + 320));
    *(v3 + 420) = 0;
    *(v3 + 412) = 0;
    std::mutex::unlock(v3);
    v5 = *(a1 + 16) == 3 && *(v2 + 3018) != 1;
    *(v2 + 3402) = v5;
    md::LabelManager::resolveLabelScaleFactor(v2);

    md::LabelManager::queueRestyle(v2, 0);
  }
}

__n128 std::__function::__func<md::LabelManager::setMapMode(gss::MapMode)::$_0,std::allocator<md::LabelManager::setMapMode(gss::MapMode)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11780;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

__n128 std::__function::__func<md::LabelManager::setLabelMode(md::LabelMode)::$_0,std::allocator<md::LabelManager::setLabelMode(md::LabelMode)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A116A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<md::LabelManager::setNavMode(md::LabelNavMode)::$_0,std::allocator<md::LabelManager::setNavMode(md::LabelNavMode)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((***(*(v1 + 168) + 32))(*(*(v1 + 168) + 32)) != *(a1 + 16))
  {
    (*(**(*(v1 + 168) + 32) + 184))(*(*(v1 + 168) + 32));
    if ((*(**(*(v1 + 168) + 32) + 8))(*(*(v1 + 168) + 32)))
    {
      md::LabelManager::queueRestyle(v1, 1);
    }
  }

  return md::LabelManager::updateLabelCameraMode(v1);
}

__n128 std::__function::__func<md::LabelManager::setNavMode(md::LabelNavMode)::$_0,std::allocator<md::LabelManager::setNavMode(md::LabelNavMode)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A116F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

std::mutex *md::LabelManager::setInOverviewMode(std::mutex *this, int a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  if (this[56].__m_.__opaque[22] != a2)
  {
    this[56].__m_.__opaque[22] = a2;
    v2[0] = &unk_1F2A11738;
    v2[1] = this;
    LOBYTE(v3[0]) = a2;
    v3[1] = v2;
    memset(v3 + 1, 0, 7);
    md::LabelManager::queueCommand(this, 72, 1, v2);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
  }

  return this;
}

void sub_1B2EF8D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelManager::setInOverviewMode(BOOL)::$_0,std::allocator<md::LabelManager::setInOverviewMode(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (*(**(*(v2 + 168) + 32) + 88))(*(*(v2 + 168) + 32));
  if (*(a1 + 16) != result)
  {
    v4 = *(**(*(v2 + 168) + 32) + 192);

    return v4();
  }

  return result;
}

__n128 std::__function::__func<md::LabelManager::setInOverviewMode(BOOL)::$_0,std::allocator<md::LabelManager::setInOverviewMode(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11738;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void std::__function::__func<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1 + 2;
  v1 = a1[2];
  v3 = a1[1];
  v4 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(v3 + 443) = v1;
  v5 = *(v3 + 444);
  *(v3 + 444) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  if (!*v2 || md::LabelMarker::isAssociatedWithLabelManager(*v2, v3))
  {

    md::LabelManager::setSelectedLabelMarker(v3, v2);
  }
}

void std::__function::__func<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A11A50;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11A50;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11A50;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  v3 = *(v2 - 8);
  if (!v1 || (result = md::LabelMarker::isAssociatedWithLabelManager(v1, *(v2 - 8)), result))
  {
    v5 = *(**(v3 + 240) + 216);

    return v5();
  }

  return result;
}

void std::__function::__func<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A11AE0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11AE0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11AE0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__function::__func<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0,std::allocator<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0,std::allocator<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A11C48;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0,std::allocator<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11C48;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0,std::allocator<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11C48;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

__n128 std::__function::__func<md::LabelManager::setSupportedEVConnectorTypes(unsigned long long)::$_0,std::allocator<md::LabelManager::setSupportedEVConnectorTypes(unsigned long long)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11E88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

_BYTE *std::__function::__func<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0,std::allocator<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  result = *(v1 + 8);
  v4 = *(v1 + 488);
  if (result[143] != v4)
  {
    result[143] = v4;
    result = (*(*result + 552))(result, v2);
  }

  *(v2 + 3038) = 1;
  *(v2 + 3040) = 1;
  v5 = atomic_load((v2 + 3053));
  if (v5)
  {
    v6 = *(v2 + 136);
    if (v6)
    {
      result = *(v6 + 56);
      if (result)
      {

        return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(result, v2, 9);
      }
    }
  }

  return result;
}

void std::__function::__func<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0,std::allocator<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0,std::allocator<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0,std::allocator<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A11F18;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0,std::allocator<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11F18;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0,std::allocator<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11F18;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void geo::_retain_ptr<NSArray<VKLabelExclusionRegion *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D0C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSArray<VKLabelExclusionRegion *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D0C8;

  return a1;
}

void *std::__function::__func<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0,std::allocator<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A11F60;
  a2[1] = v2;
  return geo::_retain_ptr<NSArray<VKLabelExclusionRegion *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0,std::allocator<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A11F60;
  *(a1 + 16) = &unk_1F2A3D0C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0,std::allocator<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A11F60;
  *(a1 + 16) = &unk_1F2A3D0C8;

  return a1;
}

void std::__function::__func<md::LabelManager::setScreenLabelFeatures(NSArray<VKScreenLabelFeature *> *)::$_0,std::allocator<md::LabelManager::setScreenLabelFeatures(NSArray<VKScreenLabelFeature *> *)::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<md::LabelManager::setScreenLabelFeatures(NSArray<VKScreenLabelFeature *> *)::$_0,std::allocator<md::LabelManager::setScreenLabelFeatures(NSArray<VKScreenLabelFeature *> *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

id std::__function::__func<md::LabelManager::setRouteContext(VKRouteContext *)::$_1,std::allocator<md::LabelManager::setRouteContext(VKRouteContext *)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12038;
  v3 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v3;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<md::LabelManager::setRouteContext(VKRouteContext *)::$_1,std::allocator<md::LabelManager::setRouteContext(VKRouteContext *)::$_1>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

id std::__function::__func<md::LabelManager::setRouteContext(VKRouteContext *)::$_0,std::allocator<md::LabelManager::setRouteContext(VKRouteContext *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11FF0;
  v3 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v3;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<md::LabelManager::setRouteContext(VKRouteContext *)::$_0,std::allocator<md::LabelManager::setRouteContext(VKRouteContext *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A45FC0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

uint64_t geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A45FC0;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

uint64_t std::__function::__func<md::LabelManager::setRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelManager::setRouteLine(VKRouteLine *)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = atomic_load((v1 + 3425));
  if (v2)
  {
    return (***(*(v1 + 168) + 56))(*(*(v1 + 168) + 56), *(result + 24));
  }

  return result;
}

void std::__function::__func<md::LabelManager::setRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelManager::setRouteLine(VKRouteLine *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A45FC0;

  operator delete(a1);
}

void *std::__function::__func<md::LabelManager::setRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelManager::setRouteLine(VKRouteLine *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A12080;
  a2[1] = v2;
  return geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelManager::setRouteLine(VKRouteLine *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12080;
  *(a1 + 16) = &unk_1F2A45FC0;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelManager::setRouteLine(VKRouteLine *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12080;
  *(a1 + 16) = &unk_1F2A45FC0;

  return a1;
}

__n128 std::__function::__func<md::LabelManager::setIsNavCameraDetached(BOOL)::$_0,std::allocator<md::LabelManager::setIsNavCameraDetached(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12110;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void std::__function::__func<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0,std::allocator<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0,std::allocator<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A12158;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0,std::allocator<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A12158;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0,std::allocator<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A12158;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void *std::__function::__func<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0,std::allocator<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A121A0;
  a2[1] = v2;
  return geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0,std::allocator<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A121A0;
  *(a1 + 16) = &unk_1F2A3ED40;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0,std::allocator<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A121A0;
  *(a1 + 16) = &unk_1F2A3ED40;

  return a1;
}

void std::__function::__func<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A436C8;

  operator delete(a1);
}

void *std::__function::__func<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A121E8;
  a2[1] = v2;
  return geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A121E8;
  *(a1 + 16) = &unk_1F2A436C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A121E8;
  *(a1 + 16) = &unk_1F2A436C8;

  return a1;
}

void *std::__function::__func<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0,std::allocator<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F2A12230;
  *(a2 + 8) = v4;
  result = geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((a2 + 16), a1 + 16);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

void std::__function::__func<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0,std::allocator<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12230;
  *(a1 + 16) = &unk_1F2A436C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0,std::allocator<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12230;
  *(a1 + 16) = &unk_1F2A436C8;

  return a1;
}

void *std::__function::__func<md::LabelManager::setCurrentLocationText(NSString *)::$_0,std::allocator<md::LabelManager::setCurrentLocationText(NSString *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A122C0;
  a2[1] = v2;
  return geo::_retain_ptr<NSString * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setCurrentLocationText(NSString *)::$_0,std::allocator<md::LabelManager::setCurrentLocationText(NSString *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A122C0;
  *(a1 + 16) = &unk_1F2A3D108;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setCurrentLocationText(NSString *)::$_0,std::allocator<md::LabelManager::setCurrentLocationText(NSString *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A122C0;
  *(a1 + 16) = &unk_1F2A3D108;

  return a1;
}

void *std::__function::__func<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0,std::allocator<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A12308;
  a2[1] = v2;
  return geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0,std::allocator<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12308;
  *(a1 + 16) = &unk_1F2A4BA98;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0,std::allocator<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12308;
  *(a1 + 16) = &unk_1F2A4BA98;

  return a1;
}

void geo::_retain_ptr<VKClientLocalizedStrings * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D128;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKClientLocalizedStrings * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D128;

  return a1;
}

void *std::__function::__func<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0,std::allocator<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A12398;
  a2[1] = v2;
  return geo::_retain_ptr<VKClientLocalizedStrings * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0,std::allocator<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12398;
  *(a1 + 16) = &unk_1F2A3D128;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0,std::allocator<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12398;
  *(a1 + 16) = &unk_1F2A3D128;

  return a1;
}

void md::typeToIntMap(md *this)
{
  v1[130] = *MEMORY[0x1E69E9840];
  {
    {
      v1[0] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>();
      v1[1] = -4294967285;
      v1[2] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>();
      v1[3] = 0xFFFFFFFF00000004;
      v1[4] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::View>>();
      v1[5] = 0xFFFFFFFF00000001;
      v1[6] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>();
      v1[7] = 0x12FFFFFFFFLL;
      v1[8] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>();
      v1[9] = 0x13FFFFFFFFLL;
      v1[10] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Transform>>();
      v1[11] = 0xFFFFFFFF00000002;
      v1[12] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>();
      v1[13] = 0xFFFFFFFF00000003;
      v1[14] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>();
      v1[15] = 0x500000005;
      v1[16] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>();
      v1[17] = -4294967290;
      v1[18] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Style>>();
      v1[19] = 0x700000007;
      v1[20] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>();
      v1[21] = 0xFFFFFFFF00000008;
      v1[22] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>();
      v1[23] = -4294967287;
      v1[24] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>();
      v1[25] = -4294967286;
      v1[26] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>();
      v1[27] = 0xC0000000CLL;
      v1[28] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>();
      v1[29] = 0xD0000000DLL;
      v1[30] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>();
      v1[31] = -4294967282;
      v1[32] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>();
      v1[33] = 0xFFFFFFFF0000000FLL;
      v1[34] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>();
      v1[35] = 0xFFFFFFFF00000010;
      v1[36] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Clipping>>();
      v1[37] = -4294967279;
      v1[38] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle>>();
      v1[39] = -4294967278;
      v1[40] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinciTraffic::Style>>();
      v1[41] = -4294967277;
      v1[42] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ClippedStroke>>();
      v1[43] = -4294967276;
      v1[44] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>();
      v1[45] = 0xFFFFFFFFLL;
      v1[46] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>();
      v1[47] = 0x1AFFFFFFFFLL;
      v1[48] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>();
      v1[49] = 0x1FFFFFFFFLL;
      v1[50] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>();
      v1[51] = 0x2FFFFFFFFLL;
      v1[52] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>();
      v1[53] = 0x3FFFFFFFFLL;
      v1[54] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>();
      v1[55] = 0x4FFFFFFFFLL;
      v1[56] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>();
      v1[57] = 0x6FFFFFFFFLL;
      v1[58] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>();
      v1[59] = 0x8FFFFFFFFLL;
      v1[60] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>();
      v1[61] = 0x9FFFFFFFFLL;
      v1[62] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>();
      v1[63] = 0xBFFFFFFFFLL;
      v1[64] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>();
      v1[65] = 0xDFFFFFFFFLL;
      v1[66] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>();
      v1[67] = 0x10FFFFFFFFLL;
      v1[68] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>();
      v1[69] = 0x12FFFFFFFFLL;
      v1[70] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>();
      v1[71] = 0x13FFFFFFFFLL;
      v1[72] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>();
      v1[73] = 0x14FFFFFFFFLL;
      v1[74] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>();
      v1[75] = 0x15FFFFFFFFLL;
      v1[76] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>();
      v1[77] = 0x16FFFFFFFFLL;
      v1[78] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedFillStyle>>();
      v1[79] = 0x19FFFFFFFFLL;
      v1[80] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>();
      v1[81] = 0xEFFFFFFFFLL;
      v1[82] = gdc::typeIndex<DaVinci::AmbientTexture>();
      v1[83] = 0;
      v1[84] = gdc::typeIndex<DaVinci::ShadowTexture>();
      v1[85] = 0x1FFFFFFFFLL;
      v1[86] = gdc::typeIndex<DaVinci::TexTexture>();
      v1[87] = 0x2FFFFFFFFLL;
      v1[88] = gdc::typeIndex<DaVinci::OcclusionTexture>();
      v1[89] = 0x3FFFFFFFFLL;
      v1[90] = gdc::typeIndex<DaVinci::RouteMaskTexture>();
      v1[91] = 0x4FFFFFFFFLL;
      v1[92] = gdc::typeIndex<DaVinci::EmissiveTexture>();
      v1[93] = 0x5FFFFFFFFLL;
      v1[94] = gdc::typeIndex<DaVinci::OverlayTexture>();
      v1[95] = 0x6FFFFFFFFLL;
      v1[96] = gdc::typeIndex<DaVinci::StyleIndexTexture>();
      v1[97] = 0x7FFFFFFFFLL;
      v1[98] = gdc::typeIndex<DaVinci::StyleTexture>();
      v1[99] = 0x8FFFFFFFFLL;
      v1[100] = gdc::typeIndex<DaVinci::AridityTexture>();
      v1[101] = 0x9FFFFFFFFLL;
      v1[102] = gdc::typeIndex<DaVinci::TemperatureTexture>();
      v1[103] = 0xAFFFFFFFFLL;
      v1[104] = gdc::typeIndex<DaVinci::Gradient1Texture>();
      v1[105] = 0xBFFFFFFFFLL;
      v1[106] = gdc::typeIndex<DaVinci::Gradient2Texture>();
      v1[107] = 0xCFFFFFFFFLL;
      v1[108] = gdc::typeIndex<DaVinci::DiffuseTexture>();
      v1[109] = 0xDFFFFFFFFLL;
      v1[110] = gdc::typeIndex<DaVinci::AlphaTexture>();
      v1[111] = 0xEFFFFFFFFLL;
      v1[112] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>();
      v1[113] = 0xFFFFFFFF00000002;
      v1[114] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>();
      v1[115] = -4294967290;
      v1[116] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>();
      v1[117] = 0xFFFFFFFF00000003;
      v1[118] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>();
      v1[119] = -4294967291;
      v1[120] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>();
      v1[121] = 1;
      v1[122] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>();
      v1[123] = 0x100000004;
      v1[124] = gdc::typeIndex<Flyover::AtmosphereTexture>();
      v1[125] = 0xFFFFFFFF00000000;
      v1[126] = gdc::typeIndex<Flyover::DiffuseTexture>();
      v1[127] = 0x1FFFFFFFFLL;
      v1[128] = gdc::typeIndex<Flyover::NightTexture>();
      v1[129] = 0x2FFFFFFFFLL;
      std::unordered_map<unsigned long,std::pair<int,int>>::unordered_map(&md::typeToIntMap(void)::typeToIntMap, v1, 65);
    }
  }
}

uint64_t std::unordered_map<unsigned long,std::pair<int,int>>::unordered_map(uint64_t result, unint64_t *a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[2 * a3]; i += 2)
    {
      v4 = *i;
      v5 = *(result + 8);
      if (!*&v5)
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (v4 >= *&v5)
        {
          v7 = v4 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & v4;
      }

      v8 = *(*result + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_19:
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
          goto LABEL_19;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (v9[2] != v4)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void *ggl::PipelineSetup::setResetFlag(void *result, unint64_t a2, char a3, int a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = result[4];
    }

    else
    {
      if (a3 != 2)
      {
        return result;
      }

      v4 = result[10];
    }
  }

  else
  {
    v4 = result[7];
  }

  v5 = a2 >> 6;
  v6 = 1 << a2;
  if (a4)
  {
    v7 = *(v4 + 8 * v5) | v6;
  }

  else
  {
    v7 = *(v4 + 8 * v5) & ~v6;
  }

  *(v4 + 8 * v5) = v7;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13PipelineSetupEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
    *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
    qword_1EB83D950 = "md::ls::PipelineSetup]";
    qword_1EB83D958 = 21;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
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
        v12 = v5[31];
        v11 = v5[32];
        if (v12 != v11)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v12 + 24), v2);
            v12 += 32;
          }

          while (v12 != v11);
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
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
    *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
    qword_1EB83D950 = "md::ls::PipelineSetup]";
    qword_1EB83D958 = 21;
  }

  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1AA30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1AA50;
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

void ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1AA30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14DataIDSetToUseEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::DataIDSetToUse>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DataIDSetToUse>();
    *algn_1EB83D888 = 0xB3837544666C5A60;
    qword_1EB83D890 = "md::ls::DataIDSetToUse]";
    qword_1EB83D898 = 22;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A17700;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A17720;
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

void ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A17700;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28NeedsFunctionConstantsUpdateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsFunctionConstantsUpdate,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A199A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsFunctionConstantsUpdate,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A199A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(a2);
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
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
    v58 = a2;
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
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon8MaterialEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A152E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A15308;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A152E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A152A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(a2);
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
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
    v58 = a2;
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
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::localId;
    *algn_1EB829278 = 0x5E5AF20C38ADA136;
    qword_1EB829280 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>]";
    qword_1EB829288 = 88;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon6SharedEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon6SharedEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15258;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15218;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A15238;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15218;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A151D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(a2);
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
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
    v58 = a2;
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
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon9TexcoordsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15148;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A15168;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15148;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A15100;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(a2);
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
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
    v58 = a2;
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
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon4ClipEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15078;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A15098;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15078;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A15030;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(a2);
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
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
    v58 = a2;
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
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon11S2TransformEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14FA8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14FC8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14FA8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14F60;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(a2);
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
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
    v58 = a2;
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
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon9TransformEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14ED8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14EF8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14ED8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14E90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci17LandCoverSettingsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14E08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14E28;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14E08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile4ViewEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14D38;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14D58;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14D38;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile9TransformEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14C68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14C88;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14C68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile17PositionScaleInfoEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14B98;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14BB8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14B98;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile11LinearDepthEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14AC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14AE8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14AC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile8ClippingEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A149F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14A18;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A149F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_8Lighting23StylizedShadingSettingsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14928;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14948;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14928;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_8Lighting26LightSpecularConfigurationEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14858;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14878;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14858;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_8Lighting24LightConfigurationVertexEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14788;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A147A8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14788;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci20LightingDebugOptionsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A146B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A146D8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A146B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci21StyleTransitionToFlatEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A145E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14608;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A145E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci14StyleSunMatrixEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14518;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14538;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14518;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci9StyleSSAOEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14448;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14468;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14448;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci11StyleShadowEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14378;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14398;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14378;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci18StyleRouteLineMaskEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A142A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A142C8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}