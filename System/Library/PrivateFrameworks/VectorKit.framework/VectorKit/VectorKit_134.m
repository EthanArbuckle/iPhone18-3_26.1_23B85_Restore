void std::__function::__func<extractCustomImageData(VKRouteWaypointInfo *)::$_0,std::allocator<extractCustomImageData(VKRouteWaypointInfo *)::$_0>,CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<extractCustomImageData(VKRouteWaypointInfo *)::$_0,std::allocator<extractCustomImageData(VKRouteWaypointInfo *)::$_0>,CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
}

id std::__function::__func<extractCustomImageData(VKRouteWaypointInfo *)::$_0,std::allocator<extractCustomImageData(VKRouteWaypointInfo *)::$_0>,CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A403C8;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void std::__function::__func<extractCustomImageData(VKRouteWaypointInfo *)::$_0,std::allocator<extractCustomImageData(VKRouteWaypointInfo *)::$_0>,CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

void md::WaypointStore::~WaypointStore(md::WaypointStore *this)
{
  md::WaypointStore::~WaypointStore(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A401E8;
  v2 = (this + 152);
  v7 = this + 248;
  std::vector<md::WaypointStoreWaypointData,geo::allocator_adapter<md::WaypointStoreWaypointData,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
  std::vector<md::WaypointStoreNode *,geo::allocator_adapter<md::WaypointStoreNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 216));
  std::vector<md::WaypointStoreNode *,geo::allocator_adapter<md::WaypointStoreNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 184));
  std::vector<md::WaypointStoreNode *,geo::allocator_adapter<md::WaypointStoreNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  if (*(this + 15))
  {
    v3 = std::vector<std::unique_ptr<md::WaypointStoreClusterNode>,geo::allocator_adapter<std::unique_ptr<md::WaypointStoreClusterNode>,mdm::zone_mallocator>>::clear[abi:nn200100](this + 15);
    v4 = *(this + 15);
    v5 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::WaypointStoreClusterNode>>(v5, v4);
  }

  v7 = this + 88;
  std::vector<md::WaypointStoreWaypointData,geo::allocator_adapter<md::WaypointStoreWaypointData,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
  std::__tree<std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,std::__map_value_compare<GEOComposedWaypoint * {__strong},std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,std::less<GEOComposedWaypoint * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,mdm::zone_mallocator>>::destroy(*(this + 8));

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void std::vector<md::WaypointStoreWaypointData,geo::allocator_adapter<md::WaypointStoreWaypointData,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v3 -= 32;
        std::allocator_traits<geo::allocator_adapter<md::WaypointStoreWaypointData,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::WaypointStoreWaypointData,void,0>(v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::WaypointStoreWaypointData>(v6, v4);
  }
}

void std::vector<md::WaypointStoreNode *,geo::allocator_adapter<md::WaypointStoreNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::WaypointStoreNode *>(v2, v1);
  }
}

void std::__tree<std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,std::__map_value_compare<GEOComposedWaypoint * {__strong},std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,std::less<GEOComposedWaypoint * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,std::__map_value_compare<GEOComposedWaypoint * {__strong},std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,std::less<GEOComposedWaypoint * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,std::__map_value_compare<GEOComposedWaypoint * {__strong},std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,std::less<GEOComposedWaypoint * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,mdm::zone_mallocator>>::destroy(a1[1]);

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

void *std::vector<std::unique_ptr<md::WaypointStoreClusterNode>,geo::allocator_adapter<std::unique_ptr<md::WaypointStoreClusterNode>,mdm::zone_mallocator>>::clear[abi:nn200100](void *result)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::WaypointStoreClusterNode>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::WaypointStoreNode *>(uint64_t a1, void *a2)
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

void std::allocator_traits<geo::allocator_adapter<md::WaypointStoreWaypointData,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::WaypointStoreWaypointData,void,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::WaypointStoreWaypointData>(uint64_t a1, void *a2)
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

void md::WaypointStore::updateWaypointsForSelection(md::WaypointStore *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 48) == 1)
  {
    v1 = *(this + 49);
  }

  else
  {
    v1 = 0;
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v2 = [*(this + 3) waypoints];
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5++) setIsOnSelectedRoute:v1 & 1];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void std::vector<md::WaypointStoreWaypointData,geo::allocator_adapter<md::WaypointStoreWaypointData,mdm::zone_mallocator>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  v6 = v5 >> 5;
  if (a2 <= v5 >> 5)
  {
    if (a2 < v6)
    {
      v26 = v3 + 32 * a2;
      while (v4 != v26)
      {
        v4 -= 32;
        std::allocator_traits<geo::allocator_adapter<md::WaypointStoreWaypointData,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::WaypointStoreWaypointData,void,0>(v4);
      }

      a1[1] = v26;
    }
  }

  else
  {
    v7 = a2 - v6;
    v8 = a1[2];
    if (v7 <= (v8 - v4) >> 5)
    {
      bzero(a1[1], 32 * v7);
      a1[1] = v4 + 32 * v7;
    }

    else
    {
      if (a2 >> 59)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v9 = v8 - v3;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a2)
      {
        v10 = a2;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      v30 = a1 + 3;
      v12 = mdm::zone_mallocator::instance(a1);
      v13 = pthread_rwlock_rdlock((v12 + 32));
      if (v13)
      {
        geo::read_write_lock::logFailure(v13, "read lock", v14);
      }

      v15 = malloc_type_zone_malloc(*v12, 32 * v11, 0xA004030951706uLL);
      atomic_fetch_add((v12 + 24), 1u);
      geo::read_write_lock::unlock((v12 + 32));
      v27 = v15;
      v28 = &v15[v5];
      *(&v29 + 1) = &v15[32 * v11];
      bzero(&v15[v5], 32 * v7);
      *&v29 = &v15[32 * v7 + v5];
      v16 = *a1;
      v17 = a1[1];
      v18 = &v28[*a1 - v17];
      if (*a1 != v17)
      {
        v19 = *a1;
        v20 = &v28[*a1 - v17];
        do
        {
          v21 = *v19;
          *v19 = 0;
          *(v19 + 8) = 0;
          *v20 = v21;
          v22 = *(v19 + 16);
          *(v19 + 16) = 0;
          *(v20 + 2) = v22;
          v23 = *(v19 + 24);
          *(v19 + 24) = 0;
          *(v20 + 3) = v23;
          v19 += 32;
          v20 += 32;
        }

        while (v19 != v17);
        do
        {
          std::allocator_traits<geo::allocator_adapter<md::WaypointStoreWaypointData,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::WaypointStoreWaypointData,void,0>(v16);
          v16 += 32;
        }

        while (v16 != v17);
      }

      v24 = *a1;
      *a1 = v18;
      v25 = a1[2];
      *(a1 + 1) = v29;
      *&v29 = v24;
      *(&v29 + 1) = v25;
      v27 = v24;
      v28 = v24;
      std::__split_buffer<md::WaypointStoreWaypointData,geo::allocator_adapter<md::WaypointStoreWaypointData,mdm::zone_mallocator> &>::~__split_buffer(&v27);
    }
  }
}

uint64_t *std::__tree<std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,std::__map_value_compare<GEOComposedWaypoint * {__strong},std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,std::less<GEOComposedWaypoint * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedWaypoint * {__strong},geo::PolylineCoordinate>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedWaypoint * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedWaypoint * {__strong}&&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t **a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
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
        return v7;
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
    v7 = a1 + 1;
LABEL_9:
    v9 = mdm::zone_mallocator::instance(a1);
    v10 = pthread_rwlock_rdlock((v9 + 32));
    if (v10)
    {
      geo::read_write_lock::logFailure(v10, "read lock", v11);
    }

    v12 = malloc_type_zone_malloc(*v9, 0x30uLL, 0x10E00400C95DC9AuLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v13 = **a3;
    **a3 = 0;
    v12[4] = v13;
    v12[5] = 0xBF80000000000000;
    *v12 = 0;
    v12[1] = 0;
    v12[2] = v7;
    *v6 = v12;
    v14 = **a1;
    v15 = v12;
    if (v14)
    {
      *a1 = v14;
      v15 = *v6;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v15);
    a1[3] = (a1[3] + 1);
  }

  return v12;
}

void md::WaypointStore::buildFeatureForWaypoint(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  _ZNSt3__115allocate_sharedB8nn200100IN2md25LabelExternalPointFeatureENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B31DB670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v22 = *(v19 + 8);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  _Unwind_Resume(a1);
}

uint64_t md::WaypointStoreFeatureNode::WaypointStoreFeatureNode(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = v7;
  v9 = *(*a4 + 192);
  if (*(*a4 + 200) == v9)
  {
    md::LabelPoint::NullPoint(v7);
    v9 = &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
  }

  *a1 = &unk_1F2A40360;
  *(a1 + 8) = 0x437C000000000000;
  v10 = *v9;
  *(a1 + 32) = *(v9 + 2);
  *(a1 + 16) = v10;
  *(a1 + 40) = *(v9 + 24);
  v11 = *(v9 + 10);
  *(a1 + 59) = *(v9 + 43);
  *(a1 + 56) = v11;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x7FFFFFFF;
  *(a1 + 108) = a3;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *a1 = &unk_1F2A40210;
  v12 = v8;
  *(a1 + 128) = v12;
  v14 = *a4;
  v13 = a4[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 96);
  *(a1 + 88) = v14;
  *(a1 + 96) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = *a4;
  *(a1 + 104) = *(*a4 + 84);
  v17 = *(v16 + 32);
  if (v17)
  {
    v18 = *(v17 + 33);
    if (*(v17 + 33))
    {
      v19 = *v17;
      if (**v17 == 6)
      {
        v20 = 0;
LABEL_11:
        LOWORD(v22) = v19[2 * v20 + 1];
        v21 = v22 & 0xFF00;
        v22 = v22;
        LODWORD(v18) = 1;
LABEL_19:
        v25 = v21 | v22;
        if (*(a1 + 116) == v18)
        {
          if (*(a1 + 116))
          {
            *(a1 + 112) = v25;
            v17 = *(v16 + 32);
            if (!v17)
            {
              goto LABEL_36;
            }
          }
        }

        else if (*(a1 + 116))
        {
          *(a1 + 116) = 0;
        }

        else
        {
          *(a1 + 112) = v25;
          *(a1 + 116) = 1;
        }

        v26 = *(v17 + 33);
        if (!*(v17 + 33))
        {
          LODWORD(v17) = 0;
LABEL_37:
          v28 = 0;
LABEL_38:
          v31 = v28 | v17;
          if (*(a1 + 124) == v26)
          {
            if (*(a1 + 124))
            {
              *(a1 + 120) = v31;
            }
          }

          else if (*(a1 + 124))
          {
            *(a1 + 124) = 0;
          }

          else
          {
            *(a1 + 120) = v31;
            *(a1 + 124) = 1;
          }

          goto LABEL_44;
        }

        v17 = *v17;
        if (*v17 == 4)
        {
          v27 = 0;
LABEL_28:
          LOWORD(v17) = v17[2 * v27 + 1];
          v28 = v17 & 0xFF00;
          LODWORD(v17) = v17;
          LODWORD(v26) = 1;
          goto LABEL_38;
        }

        v27 = 0;
        v29 = v17 + 2;
        while (v26 - 1 != v27)
        {
          v30 = *v29;
          v29 += 2;
          ++v27;
          if (v30 == 4)
          {
            if (v27 < v26)
            {
              goto LABEL_28;
            }

            break;
          }
        }

        LODWORD(v17) = 0;
LABEL_36:
        LODWORD(v26) = 0;
        goto LABEL_37;
      }

      v20 = 0;
      v23 = v19 + 2;
      while (v18 - 1 != v20)
      {
        v24 = *v23;
        v23 += 2;
        ++v20;
        if (v24 == 6)
        {
          if (v20 < v18)
          {
            goto LABEL_11;
          }

          break;
        }
      }

      v22 = 0;
      LODWORD(v18) = 0;
    }

    else
    {
      v22 = 0;
    }

    v21 = 0;
    goto LABEL_19;
  }

LABEL_44:

  return a1;
}

void std::vector<md::WaypointStoreNode *,geo::allocator_adapter<md::WaypointStoreNode *,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *a1, void *a2)
{
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *a1;
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

    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(a1);
      v12 = pthread_rwlock_rdlock((v11 + 32));
      if (v12)
      {
        geo::read_write_lock::logFailure(v12, "read lock", v13);
      }

      v14 = malloc_type_zone_malloc(*v11, 8 * v10, 0x2004093837F09uLL);
      atomic_fetch_add((v11 + 24), 1u);
      geo::read_write_lock::unlock((v11 + 32));
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[8 * v7];
    v16 = &v14[8 * v10];
    *v15 = *a2;
    v6 = v15 + 8;
    v17 = *(a1 + 1) - *a1;
    v18 = &v15[-v17];
    v19 = memcpy(&v15[-v17], *a1, v17);
    v20 = *a1;
    *a1 = v18;
    *(a1 + 1) = v6;
    *(a1 + 2) = v16;
    if (v20)
    {
      v21 = mdm::zone_mallocator::instance(v19);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::WaypointStoreNode *>(v21, v20);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 1) = v6;
}

void md::WaypointStore::styleAttributesForWaypoint(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v109[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v7 = [(VKRouteWaypointInfo *)v6 styleAttributes];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 data];
    v10 = [v8 data];
    v11 = [v8 countAttrs];
    v7 = std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<GeoCodecsFeatureStylePair const*,GeoCodecsFeatureStylePair const*>(&v106, 0, v9, (v10 + 8 * v11), (v10 + 8 * v11 - v9) >> 3);
  }

  v12 = 65538;
  if (*(a2 + 48) == 1)
  {
    v12 = (*(a2 + 49) << 32) | 0x10002;
  }

  v13 = v107;
  if (v107 >= v108)
  {
    v15 = (v107 - v106) >> 3;
    if ((v15 + 1) >> 61)
    {
      goto LABEL_99;
    }

    v16 = (v108 - v106) >> 2;
    if (v16 <= v15 + 1)
    {
      v16 = v15 + 1;
    }

    if (v108 - v106 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    v105 = v109;
    if (v17)
    {
      v18 = mdm::zone_mallocator::instance(v7);
      v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v18, v17);
    }

    else
    {
      v19 = 0;
    }

    v20 = &v19[8 * v15];
    v21 = &v19[8 * v17];
    *v20 = 0x300000005;
    v14 = (v20 + 8);
    v22 = &v20[-(v107 - v106)];
    memcpy(v22, v106, v107 - v106);
    v23 = v106;
    v24 = v108;
    v106 = v22;
    v107 = v14;
    v108 = v21;
    v103 = v23;
    v104 = v24;
    v101 = v23;
    v102 = v23;
    v7 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v101);
  }

  else
  {
    *v107 = 0x300000005;
    v14 = (v13 + 1);
  }

  v107 = v14;
  if ((a4 - 1) >= 3)
  {
    v25 = 0x400010023;
  }

  else
  {
    v25 = ((a4 - 1) << 32) + 0x500010023;
  }

  if (v14 >= v108)
  {
    v27 = (v14 - v106) >> 3;
    if ((v27 + 1) >> 61)
    {
      goto LABEL_99;
    }

    v28 = (v108 - v106) >> 2;
    if (v28 <= v27 + 1)
    {
      v28 = v27 + 1;
    }

    if (v108 - v106 >= 0x7FFFFFFFFFFFFFF8)
    {
      v29 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v28;
    }

    v105 = v109;
    if (v29)
    {
      v30 = mdm::zone_mallocator::instance(v7);
      v31 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v30, v29);
    }

    else
    {
      v31 = 0;
    }

    v32 = &v31[8 * v27];
    v33 = &v31[8 * v29];
    *v32 = v25;
    v26 = v32 + 1;
    v34 = v32 - (v107 - v106);
    memcpy(v34, v106, v107 - v106);
    v35 = v106;
    v36 = v108;
    v106 = v34;
    v107 = v26;
    v108 = v33;
    v103 = v35;
    v104 = v36;
    v101 = v35;
    v102 = v35;
    v7 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v101);
  }

  else
  {
    *v14 = v25;
    v26 = v14 + 1;
  }

  v107 = v26;
  if (v26 >= v108)
  {
    v38 = (v26 - v106) >> 3;
    if ((v38 + 1) >> 61)
    {
      goto LABEL_99;
    }

    v39 = (v108 - v106) >> 2;
    if (v39 <= v38 + 1)
    {
      v39 = v38 + 1;
    }

    if (v108 - v106 >= 0x7FFFFFFFFFFFFFF8)
    {
      v40 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v40 = v39;
    }

    v105 = v109;
    if (v40)
    {
      v41 = mdm::zone_mallocator::instance(v7);
      v42 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v41, v40);
    }

    else
    {
      v42 = 0;
    }

    v43 = &v42[8 * v38];
    v44 = &v42[8 * v40];
    *v43 = v12;
    v37 = (v43 + 1);
    v45 = v43 - (v107 - v106);
    memcpy(v45, v106, v107 - v106);
    v46 = v106;
    v47 = v108;
    v106 = v45;
    v107 = v37;
    v108 = v44;
    v103 = v46;
    v104 = v47;
    v101 = v46;
    v102 = v46;
    v7 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v101);
  }

  else
  {
    *v26 = v12;
    v37 = (v26 + 1);
  }

  v107 = v37;
  if (v37 >= v108)
  {
    v49 = (v37 - v106) >> 3;
    if ((v49 + 1) >> 61)
    {
      goto LABEL_99;
    }

    v50 = (v108 - v106) >> 2;
    if (v50 <= v49 + 1)
    {
      v50 = v49 + 1;
    }

    if (v108 - v106 >= 0x7FFFFFFFFFFFFFF8)
    {
      v51 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v51 = v50;
    }

    v105 = v109;
    if (v51)
    {
      v52 = mdm::zone_mallocator::instance(v7);
      v53 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v52, v51);
    }

    else
    {
      v53 = 0;
    }

    v54 = &v53[8 * v49];
    v55 = &v53[8 * v51];
    *v54 = 0x100010024;
    v48 = (v54 + 8);
    v56 = &v54[-(v107 - v106)];
    memcpy(v56, v106, v107 - v106);
    v57 = v106;
    v58 = v108;
    v106 = v56;
    v107 = v48;
    v108 = v55;
    v103 = v57;
    v104 = v58;
    v101 = v57;
    v102 = v57;
    v7 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v101);
  }

  else
  {
    *v37 = 0x100010024;
    v48 = v37 + 1;
  }

  v107 = v48;
  if (v48 >= v108)
  {
    v60 = (v48 - v106) >> 3;
    if ((v60 + 1) >> 61)
    {
      goto LABEL_99;
    }

    v61 = (v108 - v106) >> 2;
    if (v61 <= v60 + 1)
    {
      v61 = v60 + 1;
    }

    if (v108 - v106 >= 0x7FFFFFFFFFFFFFF8)
    {
      v62 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v62 = v61;
    }

    v105 = v109;
    if (v62)
    {
      v63 = mdm::zone_mallocator::instance(v7);
      v64 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v63, v62);
    }

    else
    {
      v64 = 0;
    }

    v65 = &v64[8 * v60];
    v66 = &v64[8 * v62];
    *v65 = 0x20001001FLL;
    v59 = (v65 + 8);
    v67 = &v65[-(v107 - v106)];
    memcpy(v67, v106, v107 - v106);
    v68 = v106;
    v69 = v108;
    v106 = v67;
    v107 = v59;
    v108 = v66;
    v103 = v68;
    v104 = v69;
    v101 = v68;
    v102 = v68;
    std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v101);
  }

  else
  {
    *v48 = 0x20001001FLL;
    v59 = v48 + 1;
  }

  v107 = v59;
  v70 = toRouteSignificance(v6);
  v71 = v70;
  v72 = v107;
  if (v107 >= v108)
  {
    v74 = (v107 - v106) >> 3;
    if ((v74 + 1) >> 61)
    {
      goto LABEL_99;
    }

    v75 = (v108 - v106) >> 2;
    if (v75 <= v74 + 1)
    {
      v75 = v74 + 1;
    }

    if (v108 - v106 >= 0x7FFFFFFFFFFFFFF8)
    {
      v76 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v76 = v75;
    }

    v105 = v109;
    if (v76)
    {
      v77 = mdm::zone_mallocator::instance(v70);
      v78 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v77, v76);
    }

    else
    {
      v78 = 0;
    }

    v79 = &v78[8 * v74];
    v80 = &v78[8 * v76];
    *v79 = (v71 << 32) | 0x2CLL;
    v73 = v79 + 1;
    v81 = v79 - (v107 - v106);
    memcpy(v81, v106, v107 - v106);
    v82 = v106;
    v83 = v108;
    v106 = v81;
    v107 = v73;
    v108 = v80;
    v103 = v82;
    v104 = v83;
    v101 = v82;
    v102 = v82;
    std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v101);
  }

  else
  {
    *v107 = (v70 << 32) | 0x2CLL;
    v73 = v72 + 1;
  }

  v107 = v73;
  if ([(VKRouteWaypointInfo *)v6 type]!= 4)
  {
    goto LABEL_98;
  }

  v84 = [(VKRouteWaypointInfo *)v6 waypoint];
  v85 = [v84 anchorPointType];
  v86 = v85;
  v87 = v107;
  if (v107 < v108)
  {
    v88 = 65670;
    if (v85 == 4)
    {
      v88 = 0x100010086;
    }

    *v107 = v88;
    v89 = v87 + 1;
LABEL_97:
    v107 = v89;

LABEL_98:
    _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v90 = (v107 - v106) >> 3;
  if (!((v90 + 1) >> 61))
  {
    v91 = (v108 - v106) >> 2;
    if (v91 <= v90 + 1)
    {
      v91 = v90 + 1;
    }

    if (v108 - v106 >= 0x7FFFFFFFFFFFFFF8)
    {
      v92 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v92 = v91;
    }

    v105 = v109;
    if (v92)
    {
      v93 = mdm::zone_mallocator::instance(v85);
      v94 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v93, v92);
    }

    else
    {
      v94 = 0;
    }

    v95 = &v94[8 * v90];
    v96 = &v94[8 * v92];
    v97 = 65670;
    if (v86 == 4)
    {
      v97 = 0x100010086;
    }

    *v95 = v97;
    v89 = v95 + 1;
    v98 = v95 - (v107 - v106);
    memcpy(v98, v106, v107 - v106);
    v99 = v106;
    v100 = v108;
    v106 = v98;
    v107 = v89;
    v108 = v96;
    v103 = v99;
    v104 = v100;
    v101 = v99;
    v102 = v99;
    std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v101);
    goto LABEL_97;
  }

LABEL_99:
  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B31DC1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t toRouteSignificance(VKRouteWaypointInfo *a1)
{
  v1 = a1;
  if ([(VKRouteWaypointInfo *)v1 isAtEnd])
  {
    v2 = 4;
  }

  else if ([(VKRouteWaypointInfo *)v1 isAtStart])
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

uint64_t md::WaypointStoreFeatureNode::nodeTypeMask(md::WaypointStoreFeatureNode *this)
{
  if (*(this + 80) == 2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

mdm::zone_mallocator *md::WaypointStoreFeatureNode::populateNodes(uint64_t a1, mdm::zone_mallocator *a2, int a3, int a4)
{
  result = (*(*a1 + 32))(a1);
  if ((result & a3) != 0 && (result & a4) == 0)
  {
    v10 = a1;
    return std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v10);
  }

  return result;
}

void md::WaypointStoreFeatureNode::~WaypointStoreFeatureNode(id *this)
{
  *this = &unk_1F2A402F0;
  v2 = this[12];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  JUMPOUT(0x1B8C62190);
}

{

  *this = &unk_1F2A402F0;
  v2 = this[12];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void md::WaypointStore::updateExternalFeatureText(md::WaypointStore *this, md::LabelExternalPointFeature *a2, VKRouteWaypointInfo *a3)
{
  v14 = a2;
  v5 = *(this + 6);
  for (i = *(this + 7); i != v5; std::allocator_traits<std::allocator<md::LabelExternalTextElement>>::destroy[abi:nn200100]<md::LabelExternalTextElement,void,0>(i))
  {
    i -= 104;
  }

  *(this + 7) = v5;
  v6 = [(md::LabelExternalPointFeature *)v14 name];

  if (v6)
  {
    v7 = [(md::LabelExternalPointFeature *)v14 name];
    md::LabelExternalFeature::addTextForZoom(this, 0, 0, [v7 UTF8String], 0);
  }

  v8 = [(md::LabelExternalPointFeature *)v14 annotationText];

  if (v8)
  {
    v9 = [(md::LabelExternalPointFeature *)v14 annotationText];
    md::LabelExternalFeature::addTextForZoom(this, 0, 2, [v9 UTF8String], 0);
  }

  if ([(md::LabelExternalPointFeature *)v14 type]== 2)
  {
    v10 = [(md::LabelExternalPointFeature *)v14 annotationText];

    if (!v10)
    {
      v11 = v14;
      v12 = [(md::LabelExternalPointFeature *)v11 chargeTimeText];

      if (v12)
      {
        v13 = [(md::LabelExternalPointFeature *)v11 chargeTimeText];
        md::LabelExternalFeature::addTextForZoom(this, 0, 2, [v13 UTF8String], 0);
      }
    }
  }
}

mdm::zone_mallocator *std::__split_buffer<md::WaypointStoreWaypointData,geo::allocator_adapter<md::WaypointStoreWaypointData,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 32;
    std::allocator_traits<geo::allocator_adapter<md::WaypointStoreWaypointData,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::WaypointStoreWaypointData,void,0>(i - 32);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::WaypointStoreWaypointData>(v5, v4);
  }

  return a1;
}

void sub_1B31DC97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  v13 = *v11;
  if (*v11)
  {
    v9[19] = v13;
    operator delete(v13);
  }

  *v9 = v10;
  v14 = v9[12];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  MEMORY[0x1B8C62190](v9, 0x10B1C40763AE39BLL);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::WaypointStoreClusterNode>>(uint64_t a1, uint64_t a2)
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

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::WaypointStoreClusterNode>,geo::allocator_adapter<std::unique_ptr<md::WaypointStoreClusterNode>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  while (v2 != v3)
  {
    v4 = *--v2;
    a1 = v4;
    *(v1 + 2) = v2;
    *v2 = 0;
    if (v4)
    {
      a1 = (*(*a1 + 8))(a1);
      v2 = *(v1 + 2);
    }
  }

  v5 = *v1;
  if (*v1)
  {
    v6 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::WaypointStoreClusterNode>>(v6, v5);
  }

  return v1;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,SortFeatureNodes(std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v75 = *v9;
        if (*(*v8 + 104) < *(*v9 + 104))
        {
          *v9 = *v8;
          *v8 = v75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = v9 + 2;
      v85 = v9[2];
      v86 = *v9;
      v87 = *(v83 + 26);
      v88 = *(*v9 + 104);
      v89 = *(v85 + 104);
      if (v87 >= v88)
      {
        if (v89 >= v87)
        {
          goto LABEL_175;
        }

        *v82 = v85;
        *v84 = v83;
        v90 = v9;
        v91 = (v9 + 1);
        result = v83;
        if (v89 < v88)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v90 = v9;
        v91 = (v9 + 2);
        result = *v9;
        if (v89 >= v87)
        {
          *v9 = v83;
          v9[1] = v86;
          v90 = v9 + 1;
          v91 = (v9 + 2);
          result = v86;
          if (v89 >= v88)
          {
LABEL_175:
            v83 = v85;
            goto LABEL_176;
          }
        }

LABEL_167:
        *v90 = v85;
        *v91 = v86;
        v83 = result;
      }

LABEL_176:
      if (*(*v8 + 104) < *(v83 + 26))
      {
        *v84 = *v8;
        *v8 = v83;
        v139 = *v84;
        v140 = *v82;
        v141 = *(v139 + 104);
        if (v141 < *(v140 + 104))
        {
          v9[1] = v139;
          v9[2] = v140;
          v142 = *v9;
          if (v141 < *(*v9 + 104))
          {
            *v9 = v139;
            v9[1] = v142;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SortFeatureNodes(std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v92 = v9 + 1;
      v94 = v9 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 8;
          v96 = v9;
          do
          {
            v98 = *v96;
            v97 = v96[1];
            v96 = v92;
            v99 = *(v97 + 104);
            if (v99 < *(v98 + 104))
            {
              v100 = v95;
              while (1)
              {
                *(v9 + v100) = v98;
                v101 = v100 - 8;
                if (v100 == 8)
                {
                  break;
                }

                v98 = *(v9 + v100 - 16);
                v100 -= 8;
                if (v99 >= *(v98 + 104))
                {
                  v102 = (v9 + v101);
                  goto LABEL_128;
                }
              }

              v102 = v9;
LABEL_128:
              *v102 = v97;
            }

            v92 = v96 + 1;
            v95 += 8;
          }

          while (v96 + 1 != a2);
        }
      }

      else if (!v94)
      {
        do
        {
          v136 = *v7;
          v135 = v7[1];
          v7 = v92;
          v137 = *(v135 + 104);
          if (v137 < *(v136 + 104))
          {
            v138 = v7;
            do
            {
              *v138 = v136;
              v136 = *(v138 - 2);
              --v138;
            }

            while (v137 < *(v136 + 104));
            *v138 = v135;
          }

          v92 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v103 = (v10 - 2) >> 1;
        v104 = v103;
        do
        {
          v105 = v104;
          if (v103 >= v104)
          {
            v106 = (2 * v104) | 1;
            v107 = &v9[v106];
            v108 = *v107;
            if (2 * v105 + 2 < v10 && *(v108 + 104) < *(v107[1] + 104))
            {
              v108 = v107[1];
              ++v107;
              v106 = 2 * v105 + 2;
            }

            result = &v9[v105];
            v109 = *result;
            v110 = *(*result + 104);
            if (*(v108 + 104) >= v110)
            {
              do
              {
                v111 = v107;
                *result = v108;
                if (v103 < v106)
                {
                  break;
                }

                v112 = (2 * v106) | 1;
                v107 = &v9[v112];
                v113 = 2 * v106 + 2;
                v108 = *v107;
                if (v113 < v10 && *(v108 + 104) < *(v107[1] + 104))
                {
                  v108 = v107[1];
                  ++v107;
                  v112 = v113;
                }

                result = v111;
                v106 = v112;
              }

              while (*(v108 + 104) >= v110);
              *v111 = v109;
            }
          }

          v104 = v105 - 1;
        }

        while (v105);
        do
        {
          v114 = 0;
          v115 = *v9;
          v116 = v9;
          do
          {
            v117 = &v116[v114];
            v118 = v117 + 1;
            v119 = v117[1];
            v120 = (2 * v114) | 1;
            v114 = 2 * v114 + 2;
            if (v114 >= v10)
            {
              v114 = v120;
            }

            else
            {
              v123 = v117[2];
              v121 = v117 + 2;
              v122 = v123;
              result = *(v119 + 104);
              if (result >= *(v123 + 104))
              {
                v114 = v120;
              }

              else
              {
                v119 = v122;
                v118 = v121;
              }
            }

            *v116 = v119;
            v116 = v118;
          }

          while (v114 <= ((v10 - 2) >> 1));
          if (v118 == --a2)
          {
            *v118 = v115;
          }

          else
          {
            *v118 = *a2;
            *a2 = v115;
            v124 = (v118 - v9 + 8) >> 3;
            v125 = v124 < 2;
            v126 = v124 - 2;
            if (!v125)
            {
              v127 = v126 >> 1;
              v128 = &v9[v127];
              v129 = *v128;
              v130 = *v118;
              v131 = *(*v118 + 104);
              if (*(*v128 + 104) < v131)
              {
                do
                {
                  v132 = v128;
                  *v118 = v129;
                  if (!v127)
                  {
                    break;
                  }

                  v127 = (v127 - 1) >> 1;
                  v128 = &v9[v127];
                  v129 = *v128;
                  v118 = v132;
                }

                while (*(*v128 + 104) < v131);
                *v132 = v130;
              }
            }
          }

          v125 = v10-- <= 2;
        }

        while (!v125);
      }

      return result;
    }

    v11 = &v9[v10 >> 1];
    v12 = v11;
    v13 = *v8;
    v14 = *(*v8 + 104);
    if (v10 >= 0x81)
    {
      v15 = *v11;
      v16 = *v9;
      v17 = *(*v11 + 104);
      v18 = *(*v9 + 104);
      if (v17 >= v18)
      {
        if (v14 < v17)
        {
          *v11 = v13;
          *v8 = v15;
          v23 = *v9;
          if (*(*v11 + 104) < *(*v9 + 104))
          {
            *v9 = *v11;
            *v11 = v23;
          }
        }
      }

      else
      {
        if (v14 < v17)
        {
          *v9 = v13;
          goto LABEL_27;
        }

        *v9 = v15;
        *v11 = v16;
        if (*(*v8 + 104) < v18)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v16;
        }
      }

      v25 = v11 - 1;
      v26 = *(v11 - 1);
      v27 = v9[1];
      v28 = *(v26 + 104);
      v29 = *(v27 + 104);
      v30 = *(a2 - 2);
      v31 = *(v30 + 104);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v9[1];
          if (*(*v25 + 104) < *(v32 + 104))
          {
            v9[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v9[1] = v30;
          goto LABEL_39;
        }

        v9[1] = v26;
        *v25 = v27;
        v33 = *(a2 - 2);
        if (*(v33 + 104) < v29)
        {
          *v25 = v33;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v36 = v11[1];
      v34 = v11 + 1;
      v35 = v36;
      v37 = v9[2];
      v38 = *(v36 + 104);
      v39 = *(v37 + 104);
      v40 = *(a2 - 3);
      v41 = *(v40 + 104);
      if (v38 >= v39)
      {
        if (v41 < v38)
        {
          *v34 = v40;
          *(a2 - 3) = v35;
          v42 = v9[2];
          if (*(*v34 + 104) < *(v42 + 104))
          {
            v9[2] = *v34;
            *v34 = v42;
          }
        }
      }

      else
      {
        if (v41 < v38)
        {
          v9[2] = v40;
          goto LABEL_48;
        }

        v9[2] = v35;
        *v34 = v37;
        v43 = *(a2 - 3);
        if (*(v43 + 104) < v39)
        {
          *v34 = v43;
LABEL_48:
          *(a2 - 3) = v37;
        }
      }

      v44 = *v12;
      v45 = *v25;
      v46 = *(*v12 + 104);
      v47 = *(*v25 + 104);
      v48 = *v34;
      v49 = *(*v34 + 104);
      if (v46 >= v47)
      {
        if (v49 >= v46)
        {
          goto LABEL_56;
        }

        *v12 = v48;
        *v34 = v44;
        v34 = v12;
        v44 = v45;
        if (v49 >= v47)
        {
          v44 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v46)
      {
        *v25 = v44;
        *v12 = v45;
        v25 = v12;
        v44 = v48;
        if (v49 >= v47)
        {
          v44 = v45;
LABEL_56:
          v50 = *v9;
          *v9 = v44;
          *v12 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v34 = v45;
      goto LABEL_56;
    }

    v19 = *v9;
    v20 = *v12;
    v21 = *(*v9 + 104);
    v22 = *(*v12 + 104);
    if (v21 >= v22)
    {
      if (v14 < v21)
      {
        *v9 = v13;
        *v8 = v19;
        v24 = *v12;
        if (*(*v9 + 104) < *(*v12 + 104))
        {
          *v12 = *v9;
          *v9 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v14 < v21)
    {
      *v12 = v13;
LABEL_36:
      *v8 = v20;
      goto LABEL_57;
    }

    *v12 = v19;
    *v9 = v20;
    if (*(*v8 + 104) < v22)
    {
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v51 = *v9;
    if (a4)
    {
      v52 = *(v51 + 104);
LABEL_60:
      v53 = v9;
      do
      {
        v54 = v53;
        v56 = v53[1];
        ++v53;
        v55 = v56;
      }

      while (*(v56 + 104) < v52);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 104) >= v52);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 104) >= v52);
      }

      if (v53 < v57)
      {
        v60 = *v57;
        v61 = v53;
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v54 = v61;
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 104) < v52);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 104) >= v52);
        }

        while (v61 < v62);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51;
      if (v53 < v57)
      {
        goto LABEL_79;
      }

      v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SortFeatureNodes(std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **>(v9, v54);
      v9 = v54 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SortFeatureNodes(std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **>(v54 + 1, a2);
      if (result)
      {
        a2 = v54;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,SortFeatureNodes(std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,false>(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 1;
      }
    }

    else
    {
      v52 = *(v51 + 104);
      if (*(*(v9 - 1) + 104) < v52)
      {
        goto LABEL_60;
      }

      if (v52 >= *(*v8 + 104))
      {
        v67 = v9 + 1;
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          ++v67;
        }

        while (v52 >= *(*v9 + 104));
      }

      else
      {
        do
        {
          v66 = v9[1];
          ++v9;
        }

        while (v52 >= *(v66 + 104));
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v52 < *(v69 + 104));
      }

      if (v9 < v68)
      {
        v70 = *v9;
        v71 = *v68;
        do
        {
          *v9 = v71;
          *v68 = v70;
          do
          {
            v72 = v9[1];
            ++v9;
            v70 = v72;
          }

          while (v52 >= *(v72 + 104));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v52 < *(v73 + 104));
        }

        while (v9 < v68);
      }

      v74 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v51;
    }
  }

  v76 = *v9;
  v77 = v9[1];
  v78 = *(v77 + 104);
  v79 = *(*v9 + 104);
  v80 = *v8;
  v81 = *(*v8 + 104);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v9[1] = v80;
      *v8 = v77;
      v134 = *v9;
      v133 = v9[1];
      if (*(v133 + 104) < *(*v9 + 104))
      {
        *v9 = v133;
        v9[1] = v134;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v9 = v77;
      v9[1] = v76;
      if (*(*v8 + 104) >= v79)
      {
        return result;
      }

      v9[1] = *v8;
    }

    else
    {
      *v9 = v80;
    }

    *v8 = v76;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SortFeatureNodes(std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 104);
  v8 = *(*result + 104);
  v9 = *a3;
  v10 = *(*a3 + 104);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 104) < *(*result + 104))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 104) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 104) < *(v5 + 104))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 104) < *(*a2 + 104))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 104) < *(*result + 104))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 104) < *(*a4 + 104))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 104) < *(*a3 + 104))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 104) < *(*a2 + 104))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 104) < *(*result + 104))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SortFeatureNodes(std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 104);
      v8 = *(*a1 + 104);
      v9 = *(a2 - 1);
      v10 = *(v9 + 104);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 104) < *(*a1 + 104))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 104) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SortFeatureNodes(std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 104);
    v26 = *(*a1 + 104);
    v27 = *(v23 + 104);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 104) < *(v21 + 104))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 104);
          if (v45 < *(v44 + 104))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 104))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 104) < *(*a1 + 104))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 104);
  v16 = *(*a1 + 104);
  v17 = *(v11 + 104);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 104);
    if (v38 < *(v37 + 104))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 104))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

uint64_t md::WaypointStoreClusterNode::setupClusterNode(md::WaypointStoreClusterNode *this, char a2, float a3)
{
  *(this + 80) = 1;
  *(this + 188) = a2;
  *(this + 3) = a3;
  md::WaypointStoreClusterNode::updateDescendantNode(this, *(this + 16));
  v4 = *(this + 17);

  return md::WaypointStoreClusterNode::updateDescendantNode(this, v4);
}

uint64_t md::WaypointStoreClusterNode::updateDescendantNode(md::WaypointStoreClusterNode *this, md::WaypointStoreNode *a2)
{
  *(a2 + 2) = *(this + 3);
  *(a2 + 9) = this;
  if (*(a2 + 80) == 1)
  {
    if (((*(*a2 + 32))(a2) & 1) == 0)
    {
      *(this + 46) += *(a2 + 46);
    }
  }

  else if (!*(a2 + 80))
  {
    if ((*(*a2 + 32))(a2))
    {
      ++*(this + 46);
      if (*(this + 188))
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      *(a2 + 80) = v4;
    }

    else
    {
      *(a2 + 80) = 2;
      md::WaypointStoreClusterNode::updateDescendantNode(this, *(a2 + 16));
      md::WaypointStoreClusterNode::updateDescendantNode(this, *(a2 + 17));
    }
  }

  if (*(a2 + 116) == 1 && (*(this + 116) & 1) == 0)
  {
    v5 = *(a2 + 28);
    *(this + 116) = *(a2 + 116);
    *(this + 28) = v5;
  }

  if (*(a2 + 124) == 1 && (*(this + 124) & 1) == 0)
  {
    v6 = *(a2 + 30);
    *(this + 124) = *(a2 + 124);
    *(this + 30) = v6;
  }

  result = (*(*a2 + 32))(a2);
  if (result)
  {
    v10 = *(this + 21);
    if (!v10 || *(v10 + 104) > *(a2 + 26))
    {
      *(this + 21) = a2;
    }
  }

  else
  {
    v8 = *(a2 + 21);
    v9 = *(this + 21);
    if (!v9 || v8 && *(v9 + 104) > *(v8 + 104))
    {
      *(this + 21) = v8;
    }
  }

  return result;
}

uint64_t md::WaypointStoreClusterNode::nodeTypeMask(md::WaypointStoreClusterNode *this)
{
  if (*(this + 80) == 2)
  {
    return 20;
  }

  if (*(this + 188))
  {
    return 12;
  }

  return 4;
}

uint64_t md::WaypointStoreClusterNode::populateNodes(void **a1, mdm::zone_mallocator *a2, uint64_t a3, uint64_t a4)
{
  v8 = ((*a1)[4])(a1);
  if ((v8 & a3) != 0 && (v8 & a4) == 0)
  {
    v12 = a1;
    std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v12);
  }

  (*(*a1[16] + 24))(a1[16], a2, a3, a4);
  v10 = *(*a1[17] + 24);

  return v10();
}

uint64_t md::WaypointStoreClusterNode::populateChildNodes(uint64_t a1)
{
  (*(**(a1 + 128) + 24))(*(a1 + 128));
  v2 = *(**(a1 + 136) + 24);

  return v2();
}

void md::WaypointStoreClusterNode::~WaypointStoreClusterNode(md::WaypointStoreClusterNode *this)
{
  *this = &unk_1F2A40280;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  *this = &unk_1F2A402F0;
  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A40280;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  *this = &unk_1F2A402F0;
  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t std::__function::__func<md::WaypointStore::generateClusters(float)::$_0,std::allocator<md::WaypointStore::generateClusters(float)::$_0>,md::ClusterNode * ()(std::pair<md::ClusterNode *,md::ClusterNode *> &,double)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A40410;
  a2[1] = v2;
  return result;
}

void non-virtual thunk toggl::DaVinci::RibbonMesh::~RibbonMesh(ggl::DaVinci::RibbonMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::DaVinci::RibbonMesh::~RibbonMesh(ggl::DaVinci::RibbonMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::RibbonVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::RibbonVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void md::PolygonSectionRound::~PolygonSectionRound(md::PolygonSectionRound *this)
{
  *this = &unk_1F2A40518;
  v3 = (this + 168);
  std::vector<std::vector<geo::handle<md::CommandBufferResource>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  md::PolygonSection::~PolygonSection(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A40518;
  v3 = (this + 168);
  std::vector<std::vector<geo::handle<md::CommandBufferResource>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  md::PolygonSection::~PolygonSection(this);
}

uint64_t md::PolygonSectionRound::PolygonSectionRound(uint64_t a1, std::__shared_weak_count *a2, unint64_t a3, float *a4)
{
  v163 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0u;
  v140 = (a1 + 8);
  *(a1 + 136) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = &unk_1F2A40518;
  *(a1 + 144) = 0u;
  v149 = (a1 + 144);
  v7 = (a1 + 168);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  v8 = geo::codec::multiSectionFeaturePoints(a2, a3, (a1 + 192));
  v9 = *(a1 + 192);
  v148 = v7;
  if (v9)
  {
    v10 = v8;
    v11 = 0;
    v144 = v9 - 1;
    v141 = *(a1 + 192);
    do
    {
      v151 = v11 + 1;
      if (v11 + 1 == v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11 + 1;
      }

      v13 = (&v10->__vftable + v11);
      v14 = *v13;
      if (*v13 == 1.0 || v14 == 0.0 || (v15 = v13[1], v15 == 1.0) || v15 == 0.0)
      {
        v24 = *(a1 + 152);
        v23 = *(a1 + 160);
        if (v24 >= v23)
        {
          v26 = (v24 - *v149) >> 3;
          if ((v26 + 1) >> 61)
          {
            goto LABEL_173;
          }

          v27 = v23 - *v149;
          v28 = v27 >> 2;
          if (v27 >> 2 <= (v26 + 1))
          {
            v28 = v26 + 1;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v28;
          }

          v157 = v149;
          if (v29)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v29);
          }

          __p.__begin_ = 0;
          __p.__end_ = (8 * v26);
          v156 = 0;
          *__p.__end_ = *v13;
          __p.__end_cap_.__value_ = (8 * v26 + 8);
          std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(v149, &__p);
          v25 = *(a1 + 152);
          if (__p.__begin_)
          {
            operator delete(__p.__begin_);
          }
        }

        else
        {
          *v24 = *v13;
          v25 = v24 + 1;
        }

        *(a1 + 152) = v25;
        LODWORD(v153) = ((v25 - *(a1 + 144)) >> 3) - 1;
        v31 = *(a1 + 176);
        v30 = *(a1 + 184);
        if (v31 >= v30)
        {
          v33 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *v7) >> 3);
          v34 = v33 + 1;
          if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_174;
          }

          v35 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v7) >> 3);
          if (2 * v35 > v34)
          {
            v34 = 2 * v35;
          }

          if (v35 >= 0x555555555555555)
          {
            v36 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v36 = v34;
          }

          v157 = v7;
          if (v36)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(v36);
          }

          __p.__begin_ = 0;
          __p.__end_ = (24 * v33);
          __p.__end_cap_.__value_ = (24 * v33);
          v156 = 0;
          std::vector<unsigned int>::vector[abi:nn200100]((24 * v33), &v153, 1uLL);
          v32 = __p.__end_cap_.__value_ + 6;
          v37 = *(a1 + 168);
          v38 = *(a1 + 176) - v37;
          v39 = __p.__end_ - v38;
          memcpy(__p.__end_ - v38, v37, v38);
          v40 = *(a1 + 168);
          *(a1 + 168) = v39;
          *(a1 + 176) = v32;
          v41 = *(a1 + 184);
          *(a1 + 184) = v156;
          __p.__end_cap_.__value_ = v40;
          v156 = v41;
          __p.__begin_ = v40;
          __p.__end_ = v40;
          std::__split_buffer<arComponents::CustomBoxCreateDesc>::~__split_buffer(&__p);
        }

        else
        {
          std::vector<unsigned int>::vector[abi:nn200100](*(a1 + 176), &v153, 1uLL);
          v32 = (v31 + 24);
          *(a1 + 176) = v31 + 24;
        }

        *(a1 + 176) = v32;
      }

      else
      {
        *__x = *(&v10->__vftable + (v144 + v11) % v9);
        v161 = __PAIR64__(LODWORD(v15), LODWORD(v14));
        v162 = *(&v10->__vftable + v12);
        md::PolygonRound::smoothTwoSegments(&v153, a4, __x);
        if (v153 != v154)
        {
          v17 = *(a1 + 152);
          v16 = *(a1 + 160);
          if (v17 >= v16)
          {
            v19 = (v17 - *v149) >> 3;
            if ((v19 + 1) >> 61)
            {
LABEL_173:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v20 = v16 - *v149;
            v21 = v20 >> 2;
            if (v20 >> 2 <= (v19 + 1))
            {
              v21 = v19 + 1;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFF8)
            {
              v22 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v21;
            }

            v157 = v149;
            if (v22)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v22);
            }

            __p.__begin_ = 0;
            __p.__end_ = (8 * v19);
            v156 = 0;
            *__p.__end_ = *v153;
            __p.__end_cap_.__value_ = (8 * v19 + 8);
            std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(v149, &__p);
            v18 = *(a1 + 152);
            if (__p.__begin_)
            {
              operator delete(__p.__begin_);
            }
          }

          else
          {
            *v17 = *v153;
            v18 = v17 + 1;
          }

          *(a1 + 152) = v18;
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
        }

        v43 = *(a1 + 176);
        v42 = *(a1 + 184);
        v7 = v148;
        if (v43 >= v42)
        {
          v45 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *v148) >> 3);
          v46 = v45 + 1;
          if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_174:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v47 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *v148) >> 3);
          if (2 * v47 > v46)
          {
            v46 = 2 * v47;
          }

          if (v47 >= 0x555555555555555)
          {
            v48 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v48 = v46;
          }

          v157 = v148;
          if (v48)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(v48);
          }

          v49 = 24 * v45;
          __p.__begin_ = 0;
          __p.__end_ = v49;
          __p.__end_cap_.__value_ = (24 * v45);
          v156 = 0;
          *v49 = 0;
          *(v49 + 8) = 0;
          *(v49 + 16) = 0;
          v44 = __p.__end_cap_.__value_ + 6;
          v50 = *(a1 + 168);
          v51 = *(a1 + 176) - v50;
          v52 = __p.__end_ - v51;
          memcpy(__p.__end_ - v51, v50, v51);
          v53 = *(a1 + 168);
          *(a1 + 168) = v52;
          *(a1 + 176) = v44;
          v54 = *(a1 + 184);
          *(a1 + 184) = v156;
          __p.__end_cap_.__value_ = v53;
          v156 = v54;
          __p.__begin_ = v53;
          __p.__end_ = v53;
          std::__split_buffer<arComponents::CustomBoxCreateDesc>::~__split_buffer(&__p);
          v9 = v141;
        }

        else
        {
          *v43 = 0;
          v43[1] = 0;
          v43[2] = 0;
          v44 = (v43 + 3);
          *(a1 + 176) = v43 + 3;
        }

        *(a1 + 176) = v44;
        if (v153)
        {
          v154 = v153;
          operator delete(v153);
        }
      }

      v11 = v151;
    }

    while (v151 != v9);
  }

  *(a1 + 104) = a2[1].__shared_weak_owners_;
  v55 = *(a1 + 144);
  v56 = *(a1 + 152);
  *(a1 + 8) = v55;
  v57 = (v56 - v55) >> 3;
  *(a1 + 88) = v57;
  std::vector<gm::Matrix<float,2,1>>::resize((a1 + 16), v57);
  std::vector<gm::Matrix<float,2,1>>::resize((a1 + 40), *(a1 + 88));
  std::vector<BOOL>::resize(a1 + 64, *(a1 + 88), 0);
  v58 = *(a1 + 88);
  *(a1 + 96) = v58;
  LODWORD(__p.__begin_) = 0;
  std::vector<unsigned int>::resize((a1 + 112), v58, &__p);
  v159 = 0;
  StrokeSpecifications = geo::codec::polygonFeatureGetStrokeSpecifications(a2, &v159);
  if (!v159)
  {
    goto LABEL_115;
  }

  v60 = StrokeSpecifications;
  memset(&__p, 0, sizeof(__p));
  v61 = *(a1 + 192);
  __x[0] = 0;
  std::vector<unsigned int>::resize(&__p, v61, __x);
  v161 = 0;
  v162 = 0;
  *__x = &v161;
  v158 = 0;
  v153 = &v158;
  *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(__x, 0) + 8) = 0;
  v62 = v159;
  if (v159)
  {
    v63 = 0;
    do
    {
      v64 = (v60 + 16 * v63);
      shared_owners_high = HIDWORD(v64->__shared_owners_);
      v66 = &v64->__shared_owners_ + 4;
      v65 = shared_owners_high;
      v68 = v161;
      if (!v161)
      {
        goto LABEL_75;
      }

      v69 = &v161;
      do
      {
        v70 = v68;
        v71 = v69;
        v72 = *(v68 + 7);
        if (v72 >= v65)
        {
          v69 = v68;
        }

        v68 = v68[v72 < v65];
      }

      while (v68);
      if (v69 == &v161)
      {
        goto LABEL_75;
      }

      if (v72 < v65)
      {
        v70 = v71;
      }

      if (v65 < *(v70 + 7))
      {
LABEL_75:
        v73 = v162;
        v153 = v66;
        *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(__x, v65) + 8) = v73;
        v62 = v159;
      }

      ++v63;
    }

    while (v63 < v62);
    v158 = 0;
    if (v62)
    {
      v74 = 0;
      v75 = 0;
      v76 = 1;
      begin = __p.__begin_;
      do
      {
        v78 = (v60 + 16 * v74);
        if (HIDWORD(v78->__vftable) == a3)
        {
          shared_owners = v78->__shared_owners_;
          if (v76)
          {
            v76 = 0;
            v158 = HIDWORD(v78->__shared_owners_);
            v75 = shared_owners;
          }

          else if (v75 >= shared_owners)
          {
            v76 = 1;
          }

          else
          {
            v80 = v75;
            do
            {
              v153 = &v158;
              begin[v80++] = *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(__x, v158) + 8);
            }

            while (v80 < LODWORD(v78->__shared_owners_));
            v76 = 1;
            v62 = v159;
          }
        }

        ++v74;
      }

      while (v74 < v62);
      v81 = *(a1 + 192);
      if (!(v76 & 1 | (v81 <= v75)))
      {
        v82 = v75;
        v83 = v75 + 1;
        do
        {
          v153 = &v158;
          begin[v82] = *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(__x, v158) + 8);
          v82 = v83;
          v81 = *(a1 + 192);
        }

        while (v81 > v83++);
      }

      if (!v81)
      {
        goto LABEL_113;
      }

      goto LABEL_95;
    }
  }

  else
  {
    v158 = 0;
  }

  v81 = *(a1 + 192);
  begin = __p.__begin_;
  if (v81)
  {
LABEL_95:
    v85 = 0;
    v86 = *(a1 + 168);
    do
    {
      if (*(v86 + 24 * v85 + 8) != *(v86 + 24 * v85))
      {
        v87 = 0;
        v88 = *(a1 + 120);
        do
        {
          v89 = *(a1 + 128);
          if (v88 >= v89)
          {
            v90 = *(a1 + 112);
            v91 = v88 - v90;
            v92 = (v88 - v90) >> 2;
            v93 = v92 + 1;
            if ((v92 + 1) >> 62)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v94 = v89 - v90;
            if (v94 >> 1 > v93)
            {
              v93 = v94 >> 1;
            }

            if (v94 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v95 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v95 = v93;
            }

            if (v95)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v95);
            }

            v96 = (v88 - v90) >> 2;
            v97 = (4 * v92);
            v98 = (4 * v92 - 4 * v96);
            *v97 = begin[v85];
            v88 = (v97 + 1);
            memcpy(v98, v90, v91);
            v99 = *(a1 + 112);
            *(a1 + 112) = v98;
            *(a1 + 120) = v88;
            *(a1 + 128) = 0;
            if (v99)
            {
              operator delete(v99);
            }
          }

          else
          {
            *v88 = begin[v85];
            v88 += 4;
          }

          *(a1 + 120) = v88;
          ++v87;
          v86 = *(a1 + 168);
        }

        while (v87 < (*(v86 + 24 * v85 + 8) - *(v86 + 24 * v85)) >> 2);
        v81 = *(a1 + 192);
      }

      ++v85;
    }

    while (v85 < v81);
  }

LABEL_113:
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v161);
  if (begin)
  {
    operator delete(begin);
  }

LABEL_115:
  __p.__begin_ = 0;
  CharacteristicPointsForSection = geo::codec::polygonFeatureGetCharacteristicPointsForSection(a2, a3, &__p);
  v102 = *(a1 + 192);
  if (CharacteristicPointsForSection)
  {
    if (!v102)
    {
      return a1;
    }

    LODWORD(v103) = 0;
    v104 = 0;
    v105 = 0;
    v106 = *v148;
    do
    {
      if (v104 >= __p.__begin_)
      {
LABEL_122:
        v109 = 0;
      }

      else
      {
        v107 = CharacteristicPointsForSection + 100 * v104;
        v108 = v104;
        while (v105 != *(v107 + 3))
        {
          v108 = (v108 + 1);
          v107 += 100;
          if (__p.__begin_ == v108)
          {
            goto LABEL_122;
          }
        }

        v109 = v107[28];
        v104 = v108;
      }

      v110 = *(v106 + 24 * v105 + 8) - *(v106 + 24 * v105);
      if (v110)
      {
        v111 = v110 >> 2;
        v112 = *(a1 + 64);
        v103 = v103;
        if (v111 <= 1)
        {
          v111 = 1;
        }

        do
        {
          v113 = v103 >> 6;
          v114 = 1 << v103;
          if (v109)
          {
            *(v112 + 8 * v113) |= v114;
          }

          else
          {
            *(v112 + 8 * v113) &= ~v114;
            ++*(a1 + 96);
          }

          ++v103;
          --v111;
        }

        while (v111);
        v102 = *(a1 + 192);
      }

      ++v105;
    }

    while (v105 < v102);
  }

  if (!v102)
  {
    return a1;
  }

  v115 = 0;
  v116 = 0;
  v145 = *(a1 + 88);
  v147 = *(a1 + 96);
  do
  {
    v117 = v115;
    if (v147 != v145)
    {
      v119 = *(a1 + 88);
      v120 = (v119 + v115 - 1) % v119;
      v121 = *(a1 + 64);
      v122 = *(v121 + ((v115 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v123 = *(v121 + ((v120 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v120);
      if ((v122 & (1 << v115)) != 0 || !v123)
      {
        v118 = 0;
        if ((v122 & (1 << v115)) == 0 || v123)
        {
          goto LABEL_146;
        }

        GhostPoint = geo::codec::multiSectionFeatureGetGhostPoint(a2, a3, v116);
        if (!GhostPoint)
        {
          goto LABEL_136;
        }

        v125 = *(*v140 + 8 * v115);
        v4 = vsub_f32(GhostPoint->__vftable, v125);
        v124 = (*v140 + 8 * v120);
      }

      else
      {
        v124 = geo::codec::multiSectionFeatureGetGhostPoint(a2, a3, v116);
        if (!v124)
        {
          goto LABEL_136;
        }

        v125 = *(*v140 + 8 * v115);
        v4 = vsub_f32(*(*v140 + 8 * ((v115 + 1) % v119)), v125);
      }

      v5 = vsub_f32(v125, v124->__vftable);
      v118 = 1;
      goto LABEL_146;
    }

LABEL_136:
    v118 = 0;
LABEL_146:
    if (*(*v148 + 24 * v116 + 8) == *(*v148 + 24 * v116))
    {
      goto LABEL_170;
    }

    v127 = 0;
    v128 = 8 * v115;
    v129 = 4;
    do
    {
      if ((v118 & 1) == 0)
      {
        v130 = *(a1 + 88);
        v131 = *(a1 + 8);
        v132 = *(v131 + v128 + 8 * v127);
        v4 = vsub_f32(*(v131 + 8 * ((v117 + v127 + 1) % v130)), v132);
        v5 = vsub_f32(v132, *(v131 + 8 * ((v117 + v127 + v130 - 1) % v130)));
      }

      v133 = vmul_f32(v4, v4);
      *v133.i32 = sqrtf(vaddv_f32(v133));
      v152 = *v133.i32;
      if (*v133.i32 <= 0.00000011921)
      {
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v134 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p.__begin_) = 0;
          _os_log_impl(&dword_1B2754000, v134, OS_LOG_TYPE_ERROR, "Zero Length edge on polygon boundary", &__p, 2u);
        }
      }

      else
      {
        *(*(a1 + 16) + v128 + 8 * v127) = vdiv_f32(v4, vdup_lane_s32(v133, 0));
      }

      *&v101 = vmul_f32(v5, v5);
      *&v101 = sqrtf(vaddv_f32(*&v101));
      v150 = v101;
      if (*&v101 > 0.00000011921)
      {
        v135 = vdiv_f32(v5, vdup_lane_s32(*&v101, 0));
        *(*(a1 + 40) + v128 + 8 * v127) = v135;
        if (v152 > 0.00000011921)
        {
          goto LABEL_160;
        }

LABEL_159:
        *(*(a1 + 16) + v128 + 8 * v127) = v135;
        goto LABEL_160;
      }

      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v138 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__begin_) = 0;
        _os_log_impl(&dword_1B2754000, v138, OS_LOG_TYPE_ERROR, "Zero Length edge on polygon boundary", &__p, 2u);
      }

      v135 = 0x3F80000000000000;
      if (v152 <= 0.00000011921)
      {
        goto LABEL_159;
      }

LABEL_160:
      *(&v101 + 1) = *(&v150 + 1);
      if (*&v150 <= 0.00000011921)
      {
        v136 = (*(a1 + 16) + v128 + v129);
        v137 = (*(a1 + 40) + v128 + v129);
        *(v137 - 1) = *(v136 - 1);
        *v137 = *v136;
      }

      v118 = 0;
      ++v127;
      v129 += 8;
    }

    while (v127 < (*(*v148 + 24 * v116 + 8) - *(*v148 + 24 * v116)) >> 2);
    v115 = v117 + v127;
LABEL_170:
    ++v116;
  }

  while (v116 < *(a1 + 192));
  return a1;
}

void sub_1B31DEE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v26 - 144));
  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 152) = a16;
  std::vector<std::vector<geo::handle<md::CommandBufferResource>>>::__destroy_vector::operator()[abi:nn200100]((v26 - 152));
  v28 = *a17;
  if (*a17)
  {
    *(v25 + 19) = v28;
    operator delete(v28);
  }

  md::PolygonSection::~PolygonSection(v25);
  _Unwind_Resume(a1);
}

void md::NotificationObserver::~NotificationObserver(md::NotificationObserver *this)
{
  *this = off_1F2A40558;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A40558;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, this);
}

void notificationHandler(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  if (a2 && [*MEMORY[0x1E695D8F0] isEqualToString:{a3, a4, a5}])
  {
    v6 = *(*a2 + 16);

    v6(a2);
  }
}

void md::Logic<md::ARRenderEntityGenerationLogic,md::ARRenderEntityGenerationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

uint64_t md::ARRenderEntityGenerationLogic::runBeforeLayout(uint64_t *a1)
{
  v1 = a1;
  v1282 = *MEMORY[0x1E69E9840];
  result = a1[15];
  if (result && v1[16])
  {
    v3 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(result);
    v1223 = v1;
    if (*(v3 + 88) != *(v3 + 80))
    {
      v4 = v1[15];
      v1273 = v1[16];
      v1274 = v4;
      v1275 = &unk_1F2A40750;
      v1276 = &v1273;
      v1278 = &v1275;
      v5 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v4);
      v1265 = gdc::Registry::storage<arComponents::StandardPipeline>(v4);
      v6 = gdc::Registry::storage<arComponents::WorldTransform>(v4);
      v7 = gdc::Registry::storage<arComponents::MeshComponent>(v4);
      v8 = gdc::Registry::storage<arComponents::Boundary>(v4);
      v9 = gdc::Registry::storage<arComponents::AlbedoTextureComponent>(v4);
      v10 = gdc::Registry::storage<arComponents::AlbedoTextureUVMapping>(v4);
      v11 = gdc::Registry::storage<arComponents::AlbedoTextureUVScale>(v4);
      v1179 = gdc::Registry::storage<arComponents::StyleColor>(v4);
      v12 = gdc::Registry::storage<arComponents::VisibilityAlpha>(v4);
      v13.i64[0] = v5;
      v13.i64[1] = v1265;
      v1239 = v7;
      v1247 = v6;
      v14.i64[0] = v6;
      v14.i64[1] = v7;
      v1218 = v8;
      v15.i64[0] = v8;
      v1191 = v10;
      v1197 = v9;
      v15.i64[1] = v9;
      v16.i64[0] = v10;
      v1172 = v11;
      v16.i64[1] = v11;
      v17.i64[0] = v1179;
      v17.i64[1] = v12;
      v1144 = v12;
      v18 = vdupq_n_s64(0x20uLL);
      v1279 = vaddq_s64(v13, v18);
      *v1280 = vaddq_s64(v14, v18);
      *&v1280[16] = vaddq_s64(v15, v18);
      *v1281 = vaddq_s64(v16, v18);
      *&v1281[16] = vaddq_s64(v17, v18);
      v19 = v1279.i64[0];
      v20 = 1;
      v21 = &v1279;
      do
      {
        if (*(v1279.i64[v20] + 32) - *(v1279.i64[v20] + 24) < *(v19 + 32) - *(v19 + 24))
        {
          v19 = v1279.i64[v20];
          v21 = (&v1279 + v20 * 8);
        }

        ++v20;
      }

      while (v20 != 10);
      v22 = v21->i64[0];
      v1138 = v21->i64[0];
      if (v5 + 4 == v21->i64[0])
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 20);
        *v1280 = &v1274;
        v23 = v5[7];
        v24 = v5[8];
        while (v23 != v24)
        {
          v25 = *(v23 + 4);
          if (v1265[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1265 + 4, v25))
          {
            Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1247 + 4, v25);
            v27 = v1247[8];
            if (v27 != Index)
            {
              v28 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1239 + 4, v25);
              v29 = v1239[8];
              if (v29 != v28)
              {
                v30 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1218 + 4, v25);
                v31 = v1218[8];
                if (v31 != v30)
                {
                  v32 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1197 + 4, v25);
                  v33 = v1197[8];
                  if (v33 != v32)
                  {
                    v34 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1191 + 4, v25);
                    v1254 = v1191[8];
                    if (v1254 != v34)
                    {
                      v35 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1172 + 4, v25);
                      v1224 = v1172[8];
                      if (v1224 != v35)
                      {
                        v36 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1179 + 4, v25);
                        v37 = v1179[8];
                        if (v37 != v36 && v1144[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1144 + 4, v25))
                        {
                          v1124 = v1144[8];
                          v1092 = v37;
                          v1110 = *v23;
                          v38 = HIDWORD(*v23);
                          v39 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1247 + 4, HIDWORD(*v23));
                          if (v27 == v39)
                          {
                            v40 = v1247[11];
                          }

                          else
                          {
                            v40 = v1247[10] + 80 * ((v39 - v1247[7]) >> 3);
                          }

                          v1161 = v40;
                          v41 = v1224;
                          v42 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1239 + 4, v38);
                          if (v29 == v42)
                          {
                            v43 = v1239[11];
                          }

                          else
                          {
                            v43 = v1239[10] + 2 * (v42 - v1239[7]);
                          }

                          v1225 = v43;
                          v44 = v38;
                          v45 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1218 + 4, v38);
                          if (v31 == v45)
                          {
                            v46 = v1218[11];
                          }

                          else
                          {
                            v46 = v1218[10] + 24 * ((v45 - v1218[7]) >> 3);
                          }

                          v1074 = v46;
                          v47 = v1254;
                          v48 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1197 + 4, v44);
                          if (v33 == v48)
                          {
                            v49 = v1197[11];
                          }

                          else
                          {
                            v49 = v1197[10] + 48 * ((v48 - v1197[7]) >> 3);
                          }

                          v1255 = v49;
                          v50 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1191 + 4, v44);
                          if (v47 == v50)
                          {
                            v51 = v1191[11];
                          }

                          else
                          {
                            v51 = (v1191[10] + 2 * (v50 - v1191[7]));
                          }

                          v52 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1172 + 4, v44);
                          if (v41 == v52)
                          {
                            v53 = v1172[11];
                          }

                          else
                          {
                            v53 = (v1172[10] + v52 - v1172[7]);
                          }

                          v54 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1179 + 4, v44);
                          if (v1092 == v54)
                          {
                            v55 = v1179[11];
                          }

                          else
                          {
                            v55 = (v1179[10] + 2 * (v54 - v1179[7]));
                          }

                          v56 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1144 + 4, v44);
                          if (v1124 == v56)
                          {
                            v57 = v1144[11];
                          }

                          else
                          {
                            v57 = (v1144[10] + ((v56 - v1144[7]) >> 1));
                          }

                          md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1110, v1161, *v1225, *(v1225 + 8), v1074, v1255, v51, v53, v55, v57);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v23 += 8;
        }

        v22 = v1138;
      }

      v1256 = v1265 + 4;
      if (v1265 + 4 == v22)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 20);
        *v1280 = &v1274;
        v58 = v1265[7];
        v59 = v1265[8];
        while (v58 != v59)
        {
          v60 = *(v58 + 4);
          if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, v60))
          {
            v61 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1247 + 4, v60);
            v62 = v1247[8];
            if (v62 != v61)
            {
              v63 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1239 + 4, v60);
              v64 = v1239[8];
              if (v64 != v63)
              {
                v65 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1218 + 4, v60);
                v66 = v1218[8];
                if (v66 != v65 && v1197[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1197 + 4, v60))
                {
                  v67 = v1197[8];
                  v68 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1191 + 4, v60);
                  v1226 = v1191[8];
                  if (v1226 != v68)
                  {
                    v69 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1172 + 4, v60);
                    v1204 = v1172[8];
                    if (v1204 != v69)
                    {
                      v70 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1179 + 4, v60);
                      v1162 = v1179[8];
                      if (v1162 != v70 && v1144[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1144 + 4, v60))
                      {
                        v1125 = v1144[8];
                        v1111 = *v58;
                        v71 = HIDWORD(*v58);
                        v72 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1247 + 4, HIDWORD(*v58));
                        if (v62 == v72)
                        {
                          v73 = v1247[11];
                        }

                        else
                        {
                          v73 = v1247[10] + 80 * ((v72 - v1247[7]) >> 3);
                        }

                        v1093 = v73;
                        v74 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1239 + 4, v71);
                        if (v64 == v74)
                        {
                          v75 = v1239[11];
                        }

                        else
                        {
                          v75 = v1239[10] + 2 * (v74 - v1239[7]);
                        }

                        v76 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1218 + 4, v71);
                        if (v66 == v76)
                        {
                          v77 = v1218[11];
                        }

                        else
                        {
                          v77 = v1218[10] + 24 * ((v76 - v1218[7]) >> 3);
                        }

                        v1075 = v77;
                        v78 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1197 + 4, v71);
                        if (v67 == v78)
                        {
                          v79 = v1197[11];
                        }

                        else
                        {
                          v79 = v1197[10] + 48 * ((v78 - v1197[7]) >> 3);
                        }

                        v80 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1191 + 4, v71);
                        if (v1226 == v80)
                        {
                          v81 = v1191[11];
                        }

                        else
                        {
                          v81 = v1191[10] + 2 * (v80 - v1191[7]);
                        }

                        v1227 = v81;
                        v82 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1172 + 4, v71);
                        if (v1204 == v82)
                        {
                          v83 = v1172[11];
                        }

                        else
                        {
                          v83 = (v1172[10] + v82 - v1172[7]);
                        }

                        v84 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1179 + 4, v71);
                        if (v1162 == v84)
                        {
                          v85 = v1179[11];
                        }

                        else
                        {
                          v85 = (v1179[10] + 2 * (v84 - v1179[7]));
                        }

                        v86 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1144 + 4, v71);
                        if (v1125 == v86)
                        {
                          v87 = v1144[11];
                        }

                        else
                        {
                          v87 = (v1144[10] + ((v86 - v1144[7]) >> 1));
                        }

                        md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1111, v1093, *v75, *(v75 + 8), v1075, v79, v1227, v83, v85, v87);
                      }
                    }
                  }
                }
              }
            }
          }

          v58 += 8;
        }

        v22 = v1138;
      }

      v1228 = v1247 + 4;
      if (v1247 + 4 == v22)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 20);
        *v1280 = &v1274;
        v88 = v1247[7];
        v89 = v1247[8];
        if (v88 != v89)
        {
          v90 = v1247[10];
          do
          {
            v91 = *(v88 + 4);
            if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, v91) && v1265[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1256, v91))
            {
              v92 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1239 + 4, v91);
              v93 = v1239[8];
              if (v93 != v92)
              {
                v94 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1218 + 4, v91);
                v95 = v1218[8];
                if (v95 != v94)
                {
                  v96 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1197 + 4, v91);
                  v97 = v1197[8];
                  if (v97 != v96)
                  {
                    v98 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1191 + 4, v91);
                    v1205 = v1191[8];
                    if (v1205 != v98)
                    {
                      v99 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1172 + 4, v91);
                      v1163 = v1172[8];
                      if (v1163 != v99)
                      {
                        v100 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1179 + 4, v91);
                        v1112 = v1179[8];
                        if (v1112 != v100 && v1144[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1144 + 4, v91))
                        {
                          v1059 = v1144[8];
                          v1076 = *v88;
                          v1126 = HIDWORD(*v88);
                          v101 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1239 + 4, HIDWORD(*v88));
                          if (v93 == v101)
                          {
                            v102 = v1239[11];
                          }

                          else
                          {
                            v102 = v1239[10] + 2 * (v101 - v1239[7]);
                          }

                          v103 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1218 + 4, v1126);
                          if (v95 == v103)
                          {
                            v104 = v1218[11];
                          }

                          else
                          {
                            v104 = v1218[10] + 24 * ((v103 - v1218[7]) >> 3);
                          }

                          v1094 = v104;
                          v105 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1197 + 4, v1126);
                          if (v97 == v105)
                          {
                            v106 = v1197[11];
                          }

                          else
                          {
                            v106 = v1197[10] + 48 * ((v105 - v1197[7]) >> 3);
                          }

                          v107 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1191 + 4, v1126);
                          if (v1205 == v107)
                          {
                            v108 = v1191[11];
                          }

                          else
                          {
                            v108 = v1191[10] + 2 * (v107 - v1191[7]);
                          }

                          v1206 = v108;
                          v109 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1172 + 4, v1126);
                          if (v1163 == v109)
                          {
                            v110 = v1172[11];
                          }

                          else
                          {
                            v110 = (v1172[10] + v109 - v1172[7]);
                          }

                          v111 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1179 + 4, v1126);
                          if (v1112 == v111)
                          {
                            v112 = v1179[11];
                          }

                          else
                          {
                            v112 = (v1179[10] + 2 * (v111 - v1179[7]));
                          }

                          v113 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1144 + 4, v1126);
                          if (v1059 == v113)
                          {
                            v114 = v1144[11];
                          }

                          else
                          {
                            v114 = (v1144[10] + ((v113 - v1144[7]) >> 1));
                          }

                          md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1076, v90, *v102, *(v102 + 8), v1094, v106, v1206, v110, v112, v114);
                        }
                      }
                    }
                  }
                }
              }
            }

            v90 += 5;
            v88 += 8;
          }

          while (v88 != v89);
        }

        v22 = v1138;
      }

      v1207 = v1239 + 4;
      if (v1239 + 4 == v22)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 20);
        *v1280 = &v1274;
        v116 = v1239[7];
        v115 = v1239[8];
        if (v116 != v115)
        {
          v117 = (v1239[10] + 8);
          do
          {
            v118 = *(v116 + 4);
            if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, v118) && v1265[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1256, v118))
            {
              v119 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1228, v118);
              v120 = v1247[8];
              if (v120 != v119)
              {
                v121 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1218 + 4, v118);
                v122 = v1218[8];
                if (v122 != v121)
                {
                  v123 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1197 + 4, v118);
                  v124 = v1197[8];
                  if (v124 != v123)
                  {
                    v125 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1191 + 4, v118);
                    v1164 = v1191[8];
                    if (v1164 != v125)
                    {
                      v126 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1172 + 4, v118);
                      v1127 = v1172[8];
                      if (v1127 != v126)
                      {
                        v127 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1179 + 4, v118);
                        v1113 = v1179[8];
                        if (v1113 != v127 && v1144[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1144 + 4, v118))
                        {
                          v1060 = v1144[8];
                          v1095 = *v116;
                          v128 = HIDWORD(*v116);
                          v129 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1228, HIDWORD(*v116));
                          if (v120 == v129)
                          {
                            v130 = v1247[11];
                          }

                          else
                          {
                            v130 = v1247[10] + 80 * ((v129 - v1247[7]) >> 3);
                          }

                          v1077 = v130;
                          v131 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1218 + 4, v128);
                          if (v122 == v131)
                          {
                            v132 = v1218[11];
                          }

                          else
                          {
                            v132 = v1218[10] + 24 * ((v131 - v1218[7]) >> 3);
                          }

                          v1045 = v132;
                          v133 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1197 + 4, v128);
                          if (v124 == v133)
                          {
                            v134 = v1197[11];
                          }

                          else
                          {
                            v134 = v1197[10] + 48 * ((v133 - v1197[7]) >> 3);
                          }

                          v135 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1191 + 4, v128);
                          if (v1164 == v135)
                          {
                            v136 = v1191[11];
                          }

                          else
                          {
                            v136 = v1191[10] + 2 * (v135 - v1191[7]);
                          }

                          v1165 = v136;
                          v137 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1172 + 4, v128);
                          if (v1127 == v137)
                          {
                            v138 = v1172[11];
                          }

                          else
                          {
                            v138 = (v1172[10] + v137 - v1172[7]);
                          }

                          v139 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1179 + 4, v128);
                          if (v1113 == v139)
                          {
                            v140 = v1179[11];
                          }

                          else
                          {
                            v140 = (v1179[10] + 2 * (v139 - v1179[7]));
                          }

                          v141 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1144 + 4, v128);
                          if (v1060 == v141)
                          {
                            v142 = v1144[11];
                          }

                          else
                          {
                            v142 = (v1144[10] + ((v141 - v1144[7]) >> 1));
                          }

                          md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1095, v1077, *(v117 - 1), *v117, v1045, v134, v1165, v138, v140, v142);
                        }
                      }
                    }
                  }
                }
              }
            }

            v116 += 8;
            v117 += 2;
          }

          while (v116 != v115);
        }

        v22 = v1138;
      }

      v1166 = v1218 + 4;
      if (v1218 + 4 == v22)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 20);
        *v1280 = &v1274;
        v143 = v1218[7];
        v144 = v1218[8];
        if (v143 != v144)
        {
          v145 = v1218[10];
          do
          {
            v146 = *(v143 + 4);
            if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, v146) && v1265[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1256, v146))
            {
              v147 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1228, v146);
              v148 = v1247[8];
              if (v148 != v147)
              {
                v149 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1207, v146);
                v150 = v1239[8];
                if (v150 != v149)
                {
                  v151 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1197 + 4, v146);
                  v152 = v1197[8];
                  if (v152 != v151)
                  {
                    v153 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1191 + 4, v146);
                    v1128 = v1191[8];
                    if (v1128 != v153)
                    {
                      v154 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1172 + 4, v146);
                      v1114 = v1172[8];
                      if (v1114 != v154)
                      {
                        v155 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1179 + 4, v146);
                        v1096 = v1179[8];
                        if (v1096 != v155)
                        {
                          v156 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1144 + 4, v146);
                          v157 = v1144[8];
                          if (v157 != v156)
                          {
                            v1061 = *v143;
                            v1078 = HIDWORD(*v143);
                            v158 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1228, v1078);
                            if (v148 == v158)
                            {
                              v159 = v1247[11];
                            }

                            else
                            {
                              v159 = v1247[10] + 80 * ((v158 - v1247[7]) >> 3);
                            }

                            v1046 = v159;
                            v160 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1207, v1078);
                            if (v150 == v160)
                            {
                              v161 = v1239[11];
                            }

                            else
                            {
                              v161 = v1239[10] + 2 * (v160 - v1239[7]);
                            }

                            v162 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1197 + 4, v1078);
                            if (v152 == v162)
                            {
                              v163 = v1197[11];
                            }

                            else
                            {
                              v163 = v1197[10] + 48 * ((v162 - v1197[7]) >> 3);
                            }

                            v1039 = v163;
                            v164 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1191 + 4, v1078);
                            if (v1128 == v164)
                            {
                              v165 = v1191[11];
                            }

                            else
                            {
                              v165 = v1191[10] + 2 * (v164 - v1191[7]);
                            }

                            v1129 = v165;
                            v166 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1172 + 4, v1078);
                            if (v1114 == v166)
                            {
                              v167 = v1172[11];
                            }

                            else
                            {
                              v167 = (v1172[10] + v166 - v1172[7]);
                            }

                            v168 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1179 + 4, v1078);
                            if (v1096 == v168)
                            {
                              v169 = v1179[11];
                            }

                            else
                            {
                              v169 = (v1179[10] + 2 * (v168 - v1179[7]));
                            }

                            v170 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1144 + 4, v1078);
                            if (v157 == v170)
                            {
                              v171 = v1144[11];
                            }

                            else
                            {
                              v171 = (v1144[10] + ((v170 - v1144[7]) >> 1));
                            }

                            md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1061, v1046, *v161, *(v161 + 8), v145, v1039, v1129, v167, v169, v171);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v145 = (v145 + 24);
            v143 += 8;
          }

          while (v143 != v144);
        }

        v22 = v1138;
      }

      v1130 = v1197 + 4;
      if (v1197 + 4 == v22)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 20);
        *v1280 = &v1274;
        v172 = v1197[7];
        v173 = v1197[8];
        if (v172 != v173)
        {
          v174 = v1197[10];
          do
          {
            v175 = *(v172 + 4);
            if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, v175) && v1265[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1256, v175))
            {
              v176 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1228, v175);
              v177 = v1247[8];
              if (v177 != v176)
              {
                v178 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1207, v175);
                v179 = v1239[8];
                if (v179 != v178)
                {
                  v180 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1166, v175);
                  v181 = v1218[8];
                  if (v181 != v180)
                  {
                    v182 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1191 + 4, v175);
                    v1115 = v1191[8];
                    if (v1115 != v182)
                    {
                      v183 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1172 + 4, v175);
                      v1097 = v1172[8];
                      if (v1097 != v183)
                      {
                        v184 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1179 + 4, v175);
                        v1079 = v1179[8];
                        if (v1079 != v184)
                        {
                          v185 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1144 + 4, v175);
                          v186 = v1144[8];
                          if (v186 != v185)
                          {
                            v1047 = *v172;
                            v1062 = HIDWORD(*v172);
                            v187 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1228, v1062);
                            if (v177 == v187)
                            {
                              v188 = v1247[11];
                            }

                            else
                            {
                              v188 = v1247[10] + 80 * ((v187 - v1247[7]) >> 3);
                            }

                            v1040 = v188;
                            v189 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1207, v1062);
                            if (v179 == v189)
                            {
                              v190 = v1239[11];
                            }

                            else
                            {
                              v190 = v1239[10] + 2 * (v189 - v1239[7]);
                            }

                            v1031 = v190;
                            v191 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1166, v1062);
                            if (v181 == v191)
                            {
                              v192 = v1218[11];
                            }

                            else
                            {
                              v192 = v1218[10] + 24 * ((v191 - v1218[7]) >> 3);
                            }

                            v1035 = v192;
                            v193 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1191 + 4, v1062);
                            if (v1115 == v193)
                            {
                              v194 = v1191[11];
                            }

                            else
                            {
                              v194 = (v1191[10] + 2 * (v193 - v1191[7]));
                            }

                            v195 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1172 + 4, v1062);
                            if (v1097 == v195)
                            {
                              v196 = v1172[11];
                            }

                            else
                            {
                              v196 = (v1172[10] + v195 - v1172[7]);
                            }

                            v197 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1179 + 4, v1062);
                            if (v1079 == v197)
                            {
                              v198 = v1179[11];
                            }

                            else
                            {
                              v198 = (v1179[10] + 2 * (v197 - v1179[7]));
                            }

                            v199 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1144 + 4, v1062);
                            if (v186 == v199)
                            {
                              v200 = v1144[11];
                            }

                            else
                            {
                              v200 = (v1144[10] + ((v199 - v1144[7]) >> 1));
                            }

                            md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1047, v1040, *v1031, *(v1031 + 8), v1035, v174, v194, v196, v198, v200);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v174 += 48;
            v172 += 8;
          }

          while (v172 != v173);
        }

        v22 = v1138;
      }

      v1116 = v1191 + 4;
      if (v1191 + 4 == v22)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 20);
        *v1280 = &v1274;
        v202 = v1191[7];
        v201 = v1191[8];
        if (v202 != v201)
        {
          v203 = v1191[10];
          do
          {
            v204 = *(v202 + 4);
            if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, v204) && v1265[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1256, v204))
            {
              v205 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1228, v204);
              v206 = v1247[8];
              if (v206 != v205)
              {
                v207 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1207, v204);
                v208 = v1239[8];
                if (v208 != v207)
                {
                  v209 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1166, v204);
                  v210 = v1218[8];
                  if (v210 != v209)
                  {
                    v211 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1130, v204);
                    v1098 = v1197[8];
                    if (v1098 != v211)
                    {
                      v212 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1172 + 4, v204);
                      v1080 = v1172[8];
                      if (v1080 != v212)
                      {
                        v213 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1179 + 4, v204);
                        v1063 = v1179[8];
                        if (v1063 != v213)
                        {
                          v214 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1144 + 4, v204);
                          v215 = v1144[8];
                          if (v215 != v214)
                          {
                            v1041 = *v202;
                            v1048 = HIDWORD(*v202);
                            v216 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1228, v1048);
                            if (v206 == v216)
                            {
                              v217 = v1247[11];
                            }

                            else
                            {
                              v217 = v1247[10] + 80 * ((v216 - v1247[7]) >> 3);
                            }

                            v1036 = v217;
                            v218 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1207, v1048);
                            if (v208 == v218)
                            {
                              v219 = v1239[11];
                            }

                            else
                            {
                              v219 = v1239[10] + 2 * (v218 - v1239[7]);
                            }

                            v220 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1166, v1048);
                            if (v210 == v220)
                            {
                              v221 = v1218[11];
                            }

                            else
                            {
                              v221 = v1218[10] + 24 * ((v220 - v1218[7]) >> 3);
                            }

                            v1032 = v221;
                            v222 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1130, v1048);
                            if (v1098 == v222)
                            {
                              v223 = v1197[11];
                            }

                            else
                            {
                              v223 = v1197[10] + 48 * ((v222 - v1197[7]) >> 3);
                            }

                            v1099 = v223;
                            v224 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1172 + 4, v1048);
                            if (v1080 == v224)
                            {
                              v225 = v1172[11];
                            }

                            else
                            {
                              v225 = (v1172[10] + v224 - v1172[7]);
                            }

                            v226 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1179 + 4, v1048);
                            if (v1063 == v226)
                            {
                              v227 = v1179[11];
                            }

                            else
                            {
                              v227 = (v1179[10] + 2 * (v226 - v1179[7]));
                            }

                            v228 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1144 + 4, v1048);
                            if (v215 == v228)
                            {
                              v229 = v1144[11];
                            }

                            else
                            {
                              v229 = (v1144[10] + ((v228 - v1144[7]) >> 1));
                            }

                            md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1041, v1036, *v219, *(v219 + 8), v1032, v1099, v203, v225, v227, v229);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            ++v203;
            v202 += 8;
          }

          while (v202 != v201);
        }

        v22 = v1138;
      }

      v1100 = v1172 + 4;
      if (v1172 + 4 == v22)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 20);
        *v1280 = &v1274;
        v231 = v1172[7];
        v230 = v1172[8];
        if (v231 != v230)
        {
          v232 = v1172[10];
          do
          {
            v233 = *(v231 + 4);
            if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, v233) && v1265[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1256, v233))
            {
              v234 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1228, v233);
              v235 = v1247[8];
              if (v235 != v234)
              {
                v236 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1207, v233);
                v237 = v1239[8];
                if (v237 != v236)
                {
                  v238 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1166, v233);
                  v239 = v1218[8];
                  if (v239 != v238)
                  {
                    v240 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1130, v233);
                    v1081 = v1197[8];
                    if (v1081 != v240)
                    {
                      v241 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1116, v233);
                      v1064 = v1191[8];
                      if (v1064 != v241)
                      {
                        v242 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1179 + 4, v233);
                        v1049 = v1179[8];
                        if (v1049 != v242 && v1144[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1144 + 4, v233))
                        {
                          v1037 = v1144[8];
                          v1042 = *v231;
                          v243 = HIDWORD(*v231);
                          v244 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1228, HIDWORD(*v231));
                          if (v235 == v244)
                          {
                            v245 = v1247[11];
                          }

                          else
                          {
                            v245 = (v1247[10] + 80 * ((v244 - v1247[7]) >> 3));
                          }

                          v246 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1207, v243);
                          if (v237 == v246)
                          {
                            v247 = v1239[11];
                          }

                          else
                          {
                            v247 = v1239[10] + 2 * (v246 - v1239[7]);
                          }

                          v248 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1166, v243);
                          if (v239 == v248)
                          {
                            v249 = v1218[11];
                          }

                          else
                          {
                            v249 = v1218[10] + 24 * ((v248 - v1218[7]) >> 3);
                          }

                          v1033 = v249;
                          v250 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1130, v243);
                          if (v1081 == v250)
                          {
                            v251 = v1197[11];
                          }

                          else
                          {
                            v251 = v1197[10] + 48 * ((v250 - v1197[7]) >> 3);
                          }

                          v1082 = v251;
                          v252 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1116, v243);
                          if (v1064 == v252)
                          {
                            v253 = v1191[11];
                          }

                          else
                          {
                            v253 = v1191[10] + 2 * (v252 - v1191[7]);
                          }

                          v1065 = v253;
                          v254 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1179 + 4, v243);
                          if (v1049 == v254)
                          {
                            v255 = v1179[11];
                          }

                          else
                          {
                            v255 = (v1179[10] + 2 * (v254 - v1179[7]));
                          }

                          v256 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1144 + 4, v243);
                          if (v1037 == v256)
                          {
                            v257 = v1144[11];
                          }

                          else
                          {
                            v257 = (v1144[10] + ((v256 - v1144[7]) >> 1));
                          }

                          md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1042, v245, *v247, *(v247 + 8), v1033, v1082, v1065, v232, v255, v257);
                        }
                      }
                    }
                  }
                }
              }
            }

            ++v232;
            v231 += 8;
          }

          while (v231 != v230);
        }

        v22 = v1138;
      }

      v1083 = v1179 + 4;
      if (v1179 + 4 == v22)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 20);
        *v1280 = &v1274;
        v259 = v1179[7];
        v258 = v1179[8];
        if (v259 != v258)
        {
          v260 = v1179[10];
          do
          {
            v261 = *(v259 + 4);
            if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, v261) && v1265[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1256, v261))
            {
              v262 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1228, v261);
              v263 = v1247[8];
              if (v263 != v262)
              {
                v264 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1207, v261);
                v265 = v1239[8];
                if (v265 != v264)
                {
                  v266 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1166, v261);
                  v267 = v1218[8];
                  if (v267 != v266)
                  {
                    v268 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1130, v261);
                    v269 = v1197[8];
                    if (v269 != v268)
                    {
                      v270 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1116, v261);
                      v1066 = v1191[8];
                      if (v1066 != v270)
                      {
                        v271 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1100, v261);
                        v1050 = v1172[8];
                        if (v1050 != v271 && v1144[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1144 + 4, v261))
                        {
                          v1034 = v1144[8];
                          v1038 = *v259;
                          v272 = HIDWORD(*v259);
                          v273 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1228, HIDWORD(*v259));
                          if (v263 == v273)
                          {
                            v274 = v1247[11];
                          }

                          else
                          {
                            v274 = v1247[10] + 80 * ((v273 - v1247[7]) >> 3);
                          }

                          v1030 = v274;
                          v275 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1207, v272);
                          if (v265 == v275)
                          {
                            v276 = v1239[11];
                          }

                          else
                          {
                            v276 = v1239[10] + 2 * (v275 - v1239[7]);
                          }

                          v1029 = v276;
                          v277 = v1050;
                          v278 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1166, v272);
                          if (v267 == v278)
                          {
                            v279 = v1218[11];
                          }

                          else
                          {
                            v279 = v1218[10] + 24 * ((v278 - v1218[7]) >> 3);
                          }

                          v1051 = v279;
                          v280 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1130, v272);
                          if (v269 == v280)
                          {
                            v281 = v1197[11];
                          }

                          else
                          {
                            v281 = v1197[10] + 48 * ((v280 - v1197[7]) >> 3);
                          }

                          v282 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1116, v272);
                          if (v1066 == v282)
                          {
                            v283 = v1191[11];
                          }

                          else
                          {
                            v283 = (v1191[10] + 2 * (v282 - v1191[7]));
                          }

                          v284 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1100, v272);
                          if (v277 == v284)
                          {
                            v285 = v1172[11];
                          }

                          else
                          {
                            v285 = (v1172[10] + v284 - v1172[7]);
                          }

                          v286 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1144 + 4, v272);
                          if (v1034 == v286)
                          {
                            v287 = v1144[11];
                          }

                          else
                          {
                            v287 = (v1144[10] + ((v286 - v1144[7]) >> 1));
                          }

                          md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1038, v1030, *v1029, *(v1029 + 8), v1051, v281, v283, v285, v260, v287);
                        }
                      }
                    }
                  }
                }
              }
            }

            ++v260;
            v259 += 8;
          }

          while (v259 != v258);
        }

        v22 = v1138;
      }

      if (v1144 + 4 == v22)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 20);
        *v1280 = &v1274;
        v289 = v1144[7];
        v288 = v1144[8];
        if (v289 != v288)
        {
          v290 = v1144[10];
          do
          {
            v291 = *(v289 + 4);
            if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, v291) && v1265[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1256, v291))
            {
              v292 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1228, v291);
              v293 = v1247[8];
              if (v293 != v292)
              {
                v294 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1207, v291);
                v295 = v1239[8];
                if (v295 != v294)
                {
                  v296 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1166, v291);
                  v297 = v1218[8];
                  if (v297 != v296)
                  {
                    v298 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1130, v291);
                    v299 = v1197[8];
                    if (v299 != v298)
                    {
                      v300 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1116, v291);
                      v1151 = v1191[8];
                      if (v1151 != v300)
                      {
                        v301 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1100, v291);
                        v1145 = v1172[8];
                        if (v1145 != v301 && v1179[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1083, v291))
                        {
                          v1067 = v1179[8];
                          v1139 = *v289;
                          v302 = HIDWORD(*v289);
                          v303 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1228, HIDWORD(*v289));
                          if (v293 == v303)
                          {
                            v304 = v1247[11];
                          }

                          else
                          {
                            v304 = v1247[10] + 80 * ((v303 - v1247[7]) >> 3);
                          }

                          v1052 = v304;
                          v305 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1207, v302);
                          if (v295 == v305)
                          {
                            v306 = v1239[11];
                          }

                          else
                          {
                            v306 = v1239[10] + 2 * (v305 - v1239[7]);
                          }

                          v307 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1166, v302);
                          if (v297 == v307)
                          {
                            v308 = v1218[11];
                          }

                          else
                          {
                            v308 = (v1218[10] + 24 * ((v307 - v1218[7]) >> 3));
                          }

                          v309 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1130, v302);
                          if (v299 == v309)
                          {
                            v310 = v1197[11];
                          }

                          else
                          {
                            v310 = v1197[10] + 48 * ((v309 - v1197[7]) >> 3);
                          }

                          v311 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1116, v302);
                          if (v1151 == v311)
                          {
                            v312 = v1191[11];
                          }

                          else
                          {
                            v312 = v1191[10] + 2 * (v311 - v1191[7]);
                          }

                          v1152 = v312;
                          v313 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1100, v302);
                          if (v1145 == v313)
                          {
                            v314 = v1172[11];
                          }

                          else
                          {
                            v314 = (v1172[10] + v313 - v1172[7]);
                          }

                          v315 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1083, v302);
                          if (v1067 == v315)
                          {
                            v316 = v1179[11];
                          }

                          else
                          {
                            v316 = (v1179[10] + 2 * (v315 - v1179[7]));
                          }

                          md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1139, v1052, *v306, *(v306 + 8), v308, v310, v1152, v314, v316, v290);
                        }
                      }
                    }
                  }
                }
              }
            }

            ++v290;
            v289 += 8;
          }

          while (v289 != v288);
        }
      }

      std::__function::__value_func<gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha)>::~__value_func[abi:nn200100](&v1275);
      v317 = v1223[15];
      v1273 = v1223[16];
      v1274 = v317;
      v1275 = &unk_1F2A408B8;
      v1276 = &v1273;
      v1278 = &v1275;
      v318 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v317);
      v1266 = gdc::Registry::storage<arComponents::OcclusionPipeline>(v317);
      v319 = gdc::Registry::storage<arComponents::WorldTransform>(v317);
      v320 = gdc::Registry::storage<arComponents::MeshComponent>(v317);
      v321 = gdc::Registry::storage<arComponents::Boundary>(v317);
      v322 = gdc::Registry::storage<arComponents::VisibilityAlpha>(v317);
      v323.i64[0] = v318;
      v323.i64[1] = v1266;
      v324.i64[0] = v319;
      v324.i64[1] = v320;
      v325.i64[0] = v321;
      v1219 = v322;
      v325.i64[1] = v322;
      v326 = vdupq_n_s64(0x20uLL);
      v1279 = vaddq_s64(v323, v326);
      *v1280 = vaddq_s64(v324, v326);
      *&v1280[16] = vaddq_s64(v325, v326);
      v327 = v1279.i64[0];
      v328 = 1;
      v329 = &v1279;
      do
      {
        if (*(v1279.i64[v328] + 32) - *(v1279.i64[v328] + 24) < *(v327 + 32) - *(v327 + 24))
        {
          v327 = v1279.i64[v328];
          v329 = (&v1279 + v328 * 8);
        }

        ++v328;
      }

      while (v328 != 6);
      v330 = v329->i64[0];
      v331 = (v318 + 32);
      v1240 = v320;
      v1248 = v321;
      v1208 = v318;
      v1180 = v329->i64[0];
      if (v318 + 32 == v329->i64[0])
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 26);
        *v1280 = &v1274;
        v333 = *(v318 + 56);
        v332 = *(v318 + 64);
        while (v333 != v332)
        {
          v334 = *(v333 + 4);
          if (v1266[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1266 + 4, v334))
          {
            v335 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v319 + 4, v334);
            v336 = v319[8];
            if (v336 != v335)
            {
              v337 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v320 + 4, v334);
              v338 = v320[8];
              if (v338 != v337)
              {
                v339 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1248 + 4, v334);
                v340 = v1248[8];
                if (v340 != v339)
                {
                  v341 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1219 + 4, v334);
                  v342 = v1219[8];
                  v318 = v1208;
                  if (v342 != v341)
                  {
                    v1257 = *v333;
                    v343 = HIDWORD(*v333);
                    v344 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v319 + 4, HIDWORD(*v333));
                    if (v336 == v344)
                    {
                      v345 = v319[11];
                    }

                    else
                    {
                      v345 = v319[10] + 80 * ((v344 - v319[7]) >> 3);
                    }

                    v1229 = v345;
                    v346 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1240 + 4, v343);
                    if (v338 == v346)
                    {
                      v347 = v1240[11];
                    }

                    else
                    {
                      v347 = v1240[10] + 2 * (v346 - v1240[7]);
                    }

                    v348 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1248 + 4, v343);
                    if (v340 == v348)
                    {
                      v349 = v1248[11];
                    }

                    else
                    {
                      v349 = (v1248[10] + 24 * ((v348 - v1248[7]) >> 3));
                    }

                    v350 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1219 + 4, v343);
                    if (v342 == v350)
                    {
                      v351 = v1219[11];
                    }

                    else
                    {
                      v351 = (v1219[10] + ((v350 - v1219[7]) >> 1));
                    }

                    v320 = v1240;
                    md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::OcclusionPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1257, v1229, *v347, *(v347 + 8), v349, v351);
                  }
                }
              }
            }
          }

          v333 += 8;
        }

        v321 = v1248;
        v330 = v1180;
      }

      v1258 = v1266 + 4;
      if (v1266 + 4 == v330)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 26);
        *v1280 = &v1274;
        v353 = v1266[7];
        v352 = v1266[8];
        while (v353 != v352)
        {
          v354 = *(v353 + 4);
          if (*(v318 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v331, v354))
          {
            v355 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v319 + 4, v354);
            v356 = v319[8];
            if (v356 != v355)
            {
              v357 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v320 + 4, v354);
              v358 = v320[8];
              if (v358 != v357)
              {
                v359 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1248 + 4, v354);
                v360 = v1248[8];
                if (v360 != v359)
                {
                  v361 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1219 + 4, v354);
                  v362 = v1219[8];
                  v318 = v1208;
                  if (v362 != v361)
                  {
                    v1230 = *v353;
                    v363 = HIDWORD(*v353);
                    v364 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v319 + 4, HIDWORD(*v353));
                    if (v356 == v364)
                    {
                      v365 = v319[11];
                    }

                    else
                    {
                      v365 = v319[10] + 80 * ((v364 - v319[7]) >> 3);
                    }

                    v1198 = v365;
                    v366 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1240 + 4, v363);
                    if (v358 == v366)
                    {
                      v367 = v1240[11];
                    }

                    else
                    {
                      v367 = v1240[10] + 2 * (v366 - v1240[7]);
                    }

                    v368 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1248 + 4, v363);
                    if (v360 == v368)
                    {
                      v369 = v1248[11];
                    }

                    else
                    {
                      v369 = (v1248[10] + 24 * ((v368 - v1248[7]) >> 3));
                    }

                    v370 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1219 + 4, v363);
                    if (v362 == v370)
                    {
                      v371 = v1219[11];
                    }

                    else
                    {
                      v371 = (v1219[10] + ((v370 - v1219[7]) >> 1));
                    }

                    v320 = v1240;
                    md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::OcclusionPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1230, v1198, *v367, *(v367 + 8), v369, v371);
                  }
                }
              }
            }
          }

          v353 += 8;
        }

        v321 = v1248;
        v330 = v1180;
      }

      v1231 = v319 + 4;
      if (v319 + 4 == v330)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 26);
        *v1280 = &v1274;
        v372 = v319[7];
        v373 = v319[8];
        if (v372 != v373)
        {
          v374 = v319[10];
          v1146 = v319;
          do
          {
            v375 = *(v372 + 4);
            if (*(v318 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v331, v375) && v1266[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1258, v375))
            {
              v376 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1240 + 4, v375);
              v377 = v1240[8];
              if (v377 != v376)
              {
                v378 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1248 + 4, v375);
                v379 = v1248[8];
                if (v379 != v378)
                {
                  v380 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1219 + 4, v375);
                  v381 = v1219[8];
                  v318 = v1208;
                  if (v381 != v380)
                  {
                    v1199 = *v372;
                    v382 = HIDWORD(*v372);
                    v383 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1240 + 4, HIDWORD(*v372));
                    if (v377 == v383)
                    {
                      v384 = v1240[11];
                    }

                    else
                    {
                      v384 = v1240[10] + 2 * (v383 - v1240[7]);
                    }

                    v1173 = v384;
                    v385 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1248 + 4, v382);
                    v319 = v1146;
                    if (v379 == v385)
                    {
                      v386 = v1248[11];
                    }

                    else
                    {
                      v386 = (v1248[10] + 24 * ((v385 - v1248[7]) >> 3));
                    }

                    v387 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1219 + 4, v382);
                    if (v381 == v387)
                    {
                      v388 = v1219[11];
                    }

                    else
                    {
                      v388 = (v1219[10] + ((v387 - v1219[7]) >> 1));
                    }

                    md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::OcclusionPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1199, v374, *v1173, *(v1173 + 8), v386, v388);
                  }
                }
              }
            }

            v374 += 5;
            v372 += 8;
          }

          while (v372 != v373);
        }

        v320 = v1240;
        v321 = v1248;
        v330 = v1180;
      }

      v1200 = v320 + 4;
      if (v320 + 4 == v330)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 26);
        *v1280 = &v1274;
        v389 = v320[7];
        v390 = v320[8];
        if (v389 != v390)
        {
          v391 = (v1240[10] + 8);
          do
          {
            v392 = *(v389 + 4);
            if (*(v318 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v331, v392) && v1266[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1258, v392))
            {
              v393 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1231, v392);
              v394 = v319[8];
              if (v394 != v393)
              {
                v395 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1248 + 4, v392);
                v396 = v1248[8];
                if (v396 != v395)
                {
                  v397 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1219 + 4, v392);
                  v398 = v1219[8];
                  v318 = v1208;
                  if (v398 != v397)
                  {
                    v1174 = *v389;
                    v399 = HIDWORD(*v389);
                    v400 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1231, HIDWORD(*v389));
                    if (v394 == v400)
                    {
                      v401 = v319[11];
                    }

                    else
                    {
                      v401 = v319[10] + 80 * ((v400 - v319[7]) >> 3);
                    }

                    v1167 = v401;
                    v402 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1248 + 4, v399);
                    if (v396 == v402)
                    {
                      v403 = v1248[11];
                    }

                    else
                    {
                      v403 = (v1248[10] + 24 * ((v402 - v1248[7]) >> 3));
                    }

                    v404 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1219 + 4, v399);
                    if (v398 == v404)
                    {
                      v405 = v1219[11];
                    }

                    else
                    {
                      v405 = (v1219[10] + ((v404 - v1219[7]) >> 1));
                    }

                    md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::OcclusionPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1174, v1167, *(v391 - 1), *v391, v403, v405);
                  }
                }
              }
            }

            v389 += 8;
            v391 += 2;
          }

          while (v389 != v390);
        }

        v321 = v1248;
        v330 = v1180;
      }

      v1175 = (v321 + 32);
      if ((v321 + 32) == v330)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 26);
        *v1280 = &v1274;
        v406 = *(v321 + 56);
        v407 = *(v321 + 64);
        if (v406 != v407)
        {
          v408 = v1248[10];
          do
          {
            v409 = *(v406 + 4);
            if (*(v318 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v331, v409) && v1266[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1258, v409))
            {
              v410 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1231, v409);
              v411 = v319[8];
              if (v411 != v410)
              {
                v412 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1200, v409);
                v413 = v1240[8];
                if (v413 != v412)
                {
                  v414 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1219 + 4, v409);
                  v415 = v1219[8];
                  v318 = v1208;
                  if (v415 != v414)
                  {
                    v1168 = *v406;
                    v416 = HIDWORD(*v406);
                    v417 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1231, HIDWORD(*v406));
                    if (v411 == v417)
                    {
                      v418 = v319[11];
                    }

                    else
                    {
                      v418 = v319[10] + 80 * ((v417 - v319[7]) >> 3);
                    }

                    v1153 = v418;
                    v419 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1200, v416);
                    if (v413 == v419)
                    {
                      v420 = v1240[11];
                    }

                    else
                    {
                      v420 = v1240[10] + 2 * (v419 - v1240[7]);
                    }

                    v421 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1219 + 4, v416);
                    if (v415 == v421)
                    {
                      v422 = v1219[11];
                    }

                    else
                    {
                      v422 = (v1219[10] + ((v421 - v1219[7]) >> 1));
                    }

                    md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::OcclusionPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1168, v1153, *v420, *(v420 + 8), v408, v422);
                  }
                }
              }
            }

            v408 = (v408 + 24);
            v406 += 8;
          }

          while (v406 != v407);
        }

        v330 = v1180;
      }

      if (v1219 + 4 == v330)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 26);
        *v1280 = &v1274;
        v423 = v1219[7];
        v424 = v1219[8];
        if (v423 != v424)
        {
          v425 = v1219[10];
          do
          {
            v426 = *(v423 + 4);
            if (*(v318 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v331, v426) && v1266[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1258, v426))
            {
              v427 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1231, v426);
              v428 = v319[8];
              if (v428 != v427)
              {
                v429 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1200, v426);
                v430 = v1240[8];
                if (v430 != v429)
                {
                  v431 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1175, v426);
                  v432 = v1248[8];
                  if (v432 != v431)
                  {
                    v1220 = *v423;
                    v433 = HIDWORD(*v423);
                    v434 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1231, HIDWORD(*v423));
                    if (v428 == v434)
                    {
                      v435 = v319[11];
                    }

                    else
                    {
                      v435 = v319[10] + 80 * ((v434 - v319[7]) >> 3);
                    }

                    v1209 = v435;
                    v436 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1200, v433);
                    if (v430 == v436)
                    {
                      v437 = v1240[11];
                    }

                    else
                    {
                      v437 = v1240[10] + 2 * (v436 - v1240[7]);
                    }

                    v438 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1175, v433);
                    if (v432 == v438)
                    {
                      v439 = v1248[11];
                    }

                    else
                    {
                      v439 = (v1248[10] + 24 * ((v438 - v1248[7]) >> 3));
                    }

                    md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::OcclusionPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1220, v1209, *v437, *(v437 + 8), v439, v425);
                  }
                }
              }
            }

            ++v425;
            v423 += 8;
          }

          while (v423 != v424);
        }
      }

      std::__function::__value_func<gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha)>::~__value_func[abi:nn200100](&v1275);
      v440 = v1223;
      v441 = v1223[15];
      v1273 = v1223[16];
      v1274 = v441;
      v1275 = &unk_1F2A40930;
      v1276 = &v1273;
      v1278 = &v1275;
      v442 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v441);
      v443 = gdc::Registry::storage<arComponents::ShadowPipeline>(v441);
      v444 = gdc::Registry::storage<arComponents::WorldTransform>(v441);
      v445 = gdc::Registry::storage<arComponents::MeshComponent>(v441);
      v446 = gdc::Registry::storage<arComponents::Boundary>(v441);
      v447 = gdc::Registry::storage<arComponents::StyleColor>(v441);
      v448 = gdc::Registry::storage<arComponents::VisibilityAlpha>(v441);
      v449.i64[0] = v442;
      v449.i64[1] = v443;
      v1267 = v444;
      v450.i64[0] = v444;
      v1249 = v445;
      v450.i64[1] = v445;
      v451.i64[0] = v446;
      v451.i64[1] = v447;
      v452 = vdupq_n_s64(0x20uLL);
      v1279 = vaddq_s64(v449, v452);
      *v1280 = vaddq_s64(v450, v452);
      *&v1280[16] = vaddq_s64(v451, v452);
      v1201 = v448;
      v1210 = (v448 + 32);
      *v1281 = v448 + 32;
      v453 = v1279.i64[0];
      v454 = 1;
      v455 = &v1279;
      do
      {
        if (*(v1279.i64[v454] + 32) - *(v1279.i64[v454] + 24) < *(v453 + 32) - *(v453 + 24))
        {
          v453 = v1279.i64[v454];
          v455 = (&v1279 + v454 * 8);
        }

        ++v454;
      }

      while (v454 != 7);
      v456 = v455->i64[0];
      v1241 = v446;
      v1221 = v447;
      v1169 = v455->i64[0];
      if (v442 + 4 == v455->i64[0])
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 23);
        *v1280 = &v1274;
        v457 = v442[7];
        v458 = v442[8];
        while (v457 != v458)
        {
          v459 = *(v457 + 4);
          if (v443[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v443 + 4, v459))
          {
            v460 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1267 + 4, v459);
            v461 = v1267[8];
            if (v461 != v460)
            {
              v462 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1249 + 4, v459);
              v463 = v1249[8];
              if (v463 != v462)
              {
                v464 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1241 + 4, v459);
                v465 = v1241[8];
                if (v465 != v464)
                {
                  v466 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1221 + 4, v459);
                  v467 = v1221[8];
                  if (v467 != v466 && v1201[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1210, v459))
                  {
                    v1232 = v467;
                    v1259 = v1201[8];
                    v1192 = *v457;
                    v468 = HIDWORD(*v457);
                    v469 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1267 + 4, HIDWORD(*v457));
                    if (v461 == v469)
                    {
                      v470 = v1267[11];
                    }

                    else
                    {
                      v470 = v1267[10] + 80 * ((v469 - v1267[7]) >> 3);
                    }

                    v1181 = v470;
                    v471 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1249 + 4, v468);
                    if (v463 == v471)
                    {
                      v472 = v1249[11];
                    }

                    else
                    {
                      v472 = v1249[10] + 2 * (v471 - v1249[7]);
                    }

                    v473 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1241 + 4, v468);
                    if (v465 == v473)
                    {
                      v474 = v1241[11];
                    }

                    else
                    {
                      v474 = (v1241[10] + 24 * ((v473 - v1241[7]) >> 3));
                    }

                    v475 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1221 + 4, v468);
                    if (v1232 == v475)
                    {
                      v476 = v1221[11];
                    }

                    else
                    {
                      v476 = (v1221[10] + 2 * (v475 - v1221[7]));
                    }

                    v477 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1210, v468);
                    if (v1259 == v477)
                    {
                      v478 = v1201[11];
                    }

                    else
                    {
                      v478 = (v1201[10] + ((v477 - v1201[7]) >> 1));
                    }

                    md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::ShadowPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1192, v1181, *v472, *(v472 + 8), v474, v476, v478);
                  }
                }
              }
            }
          }

          v457 += 8;
        }

        v446 = v1241;
        v447 = v1221;
        v440 = v1223;
        v456 = v1169;
      }

      v1260 = v443 + 4;
      if (v443 + 4 == v456)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 23);
        *v1280 = &v1274;
        v480 = v443[7];
        v479 = v443[8];
        while (v480 != v479)
        {
          v481 = *(v480 + 4);
          if (v442[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v442 + 4, v481))
          {
            v482 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1267 + 4, v481);
            v483 = v1267[8];
            if (v483 != v482)
            {
              v484 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1249 + 4, v481);
              v485 = v1249[8];
              if (v485 != v484)
              {
                v486 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1241 + 4, v481);
                v487 = v1241[8];
                if (v487 != v486)
                {
                  v488 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1221 + 4, v481);
                  v489 = v1221[8];
                  if (v489 != v488 && v1201[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1210, v481))
                  {
                    v1182 = v1201[8];
                    v1193 = *v480;
                    v490 = HIDWORD(*v480);
                    v491 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1267 + 4, HIDWORD(*v480));
                    if (v483 == v491)
                    {
                      v492 = v1267[11];
                    }

                    else
                    {
                      v492 = v1267[10] + 80 * ((v491 - v1267[7]) >> 3);
                    }

                    v1233 = v492;
                    v493 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1249 + 4, v490);
                    if (v485 == v493)
                    {
                      v494 = v1249[11];
                    }

                    else
                    {
                      v494 = v1249[10] + 2 * (v493 - v1249[7]);
                    }

                    v495 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1241 + 4, v490);
                    if (v487 == v495)
                    {
                      v496 = v1241[11];
                    }

                    else
                    {
                      v496 = (v1241[10] + 24 * ((v495 - v1241[7]) >> 3));
                    }

                    v497 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1221 + 4, v490);
                    if (v489 == v497)
                    {
                      v498 = v1221[11];
                    }

                    else
                    {
                      v498 = (v1221[10] + 2 * (v497 - v1221[7]));
                    }

                    v499 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1210, v490);
                    if (v1182 == v499)
                    {
                      v500 = v1201[11];
                    }

                    else
                    {
                      v500 = (v1201[10] + ((v499 - v1201[7]) >> 1));
                    }

                    md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::ShadowPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1193, v1233, *v494, *(v494 + 8), v496, v498, v500);
                  }
                }
              }
            }
          }

          v480 += 8;
        }

        v446 = v1241;
        v447 = v1221;
        v440 = v1223;
        v456 = v1169;
      }

      v1234 = v1267 + 4;
      if (v1267 + 4 == v456)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 23);
        *v1280 = &v1274;
        v501 = v1267[7];
        v502 = v1267[8];
        if (v501 != v502)
        {
          v503 = v1267[10];
          do
          {
            v504 = *(v501 + 4);
            if (v442[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v442 + 4, v504) && v443[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1260, v504))
            {
              v505 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1249 + 4, v504);
              v506 = v1249[8];
              if (v506 != v505)
              {
                v507 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1241 + 4, v504);
                v508 = v1241[8];
                if (v508 != v507)
                {
                  v509 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1221 + 4, v504);
                  v510 = v1221[8];
                  if (v510 != v509 && v1201[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1210, v504))
                  {
                    v1154 = v1201[8];
                    v1183 = *v501;
                    v1194 = HIDWORD(*v501);
                    v511 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1249 + 4, v1194);
                    if (v506 == v511)
                    {
                      v512 = v1249[11];
                    }

                    else
                    {
                      v512 = v1249[10] + 2 * (v511 - v1249[7]);
                    }

                    v513 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1241 + 4, v1194);
                    if (v508 == v513)
                    {
                      v514 = v1241[11];
                    }

                    else
                    {
                      v514 = (v1241[10] + 24 * ((v513 - v1241[7]) >> 3));
                    }

                    v515 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1221 + 4, v1194);
                    if (v510 == v515)
                    {
                      v516 = v1221[11];
                    }

                    else
                    {
                      v516 = (v1221[10] + 2 * (v515 - v1221[7]));
                    }

                    v517 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1210, v1194);
                    if (v1154 == v517)
                    {
                      v518 = v1201[11];
                    }

                    else
                    {
                      v518 = (v1201[10] + ((v517 - v1201[7]) >> 1));
                    }

                    md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::ShadowPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1183, v503, *v512, *(v512 + 8), v514, v516, v518);
                  }
                }
              }
            }

            v503 += 5;
            v501 += 8;
          }

          while (v501 != v502);
        }

        v447 = v1221;
        v440 = v1223;
        v446 = v1241;
        v456 = v1169;
      }

      v1195 = v1249 + 4;
      if (v1249 + 4 == v456)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 23);
        *v1280 = &v1274;
        v519 = v1249[7];
        v520 = v1249[8];
        if (v519 != v520)
        {
          v521 = (v1249[10] + 8);
          do
          {
            v522 = *(v519 + 4);
            if (v442[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v442 + 4, v522) && v443[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1260, v522))
            {
              v523 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1234, v522);
              v524 = v1267[8];
              if (v524 != v523)
              {
                v525 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1241 + 4, v522);
                v526 = v1241[8];
                if (v526 != v525)
                {
                  v527 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1221 + 4, v522);
                  v528 = v1221[8];
                  if (v528 != v527 && v1201[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1210, v522))
                  {
                    v1147 = v1201[8];
                    v1184 = *v519;
                    v529 = HIDWORD(*v519);
                    v530 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1234, HIDWORD(*v519));
                    if (v524 == v530)
                    {
                      v531 = v1267[11];
                    }

                    else
                    {
                      v531 = v1267[10] + 80 * ((v530 - v1267[7]) >> 3);
                    }

                    v1155 = v531;
                    v532 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1241 + 4, v529);
                    if (v526 == v532)
                    {
                      v533 = v1241[11];
                    }

                    else
                    {
                      v533 = (v1241[10] + 24 * ((v532 - v1241[7]) >> 3));
                    }

                    v534 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1221 + 4, v529);
                    if (v528 == v534)
                    {
                      v535 = v1221[11];
                    }

                    else
                    {
                      v535 = (v1221[10] + 2 * (v534 - v1221[7]));
                    }

                    v536 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1210, v529);
                    if (v1147 == v536)
                    {
                      v537 = v1201[11];
                    }

                    else
                    {
                      v537 = (v1201[10] + ((v536 - v1201[7]) >> 1));
                    }

                    md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::ShadowPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1184, v1155, *(v521 - 1), *v521, v533, v535, v537);
                  }
                }
              }
            }

            v519 += 8;
            v521 += 2;
          }

          while (v519 != v520);
        }

        v447 = v1221;
        v440 = v1223;
        v446 = v1241;
        v456 = v1169;
      }

      v1185 = (v446 + 32);
      if ((v446 + 32) == v456)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 23);
        *v1280 = &v1274;
        v538 = *(v446 + 56);
        v539 = *(v446 + 64);
        if (v538 != v539)
        {
          v540 = v1241[10];
          do
          {
            v541 = *(v538 + 4);
            if (v442[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v442 + 4, v541) && v443[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1260, v541))
            {
              v542 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1234, v541);
              v543 = v1267[8];
              if (v543 != v542)
              {
                v544 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1195, v541);
                v545 = v1249[8];
                if (v545 != v544)
                {
                  v546 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1221 + 4, v541);
                  v547 = v1221[8];
                  if (v547 != v546 && v1201[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1210, v541))
                  {
                    v1140 = v1201[8];
                    v1156 = *v538;
                    v548 = HIDWORD(*v538);
                    v549 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1234, HIDWORD(*v538));
                    if (v543 == v549)
                    {
                      v550 = v1267[11];
                    }

                    else
                    {
                      v550 = v1267[10] + 80 * ((v549 - v1267[7]) >> 3);
                    }

                    v1148 = v550;
                    v551 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1195, v548);
                    if (v545 == v551)
                    {
                      v552 = v1249[11];
                    }

                    else
                    {
                      v552 = v1249[10] + 2 * (v551 - v1249[7]);
                    }

                    v553 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1221 + 4, v548);
                    if (v547 == v553)
                    {
                      v554 = v1221[11];
                    }

                    else
                    {
                      v554 = (v1221[10] + 2 * (v553 - v1221[7]));
                    }

                    v555 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1210, v548);
                    if (v1140 == v555)
                    {
                      v556 = v1201[11];
                    }

                    else
                    {
                      v556 = (v1201[10] + ((v555 - v1201[7]) >> 1));
                    }

                    md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::ShadowPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1156, v1148, *v552, *(v552 + 8), v540, v554, v556);
                  }
                }
              }
            }

            v540 = (v540 + 24);
            v538 += 8;
          }

          while (v538 != v539);
        }

        v447 = v1221;
        v440 = v1223;
        v456 = v1169;
      }

      v1157 = (v447 + 32);
      if ((v447 + 32) == v456)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 23);
        *v1280 = &v1274;
        v557 = *(v447 + 56);
        v558 = *(v447 + 64);
        if (v557 != v558)
        {
          v559 = v1221[10];
          do
          {
            v560 = *(v557 + 4);
            if (v442[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v442 + 4, v560) && v443[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1260, v560))
            {
              v561 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1234, v560);
              v562 = v1267[8];
              if (v562 != v561)
              {
                v563 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1195, v560);
                v564 = v1249[8];
                if (v564 != v563)
                {
                  v565 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1185, v560);
                  v566 = v1241[8];
                  if (v566 != v565 && v1201[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1210, v560))
                  {
                    v1141 = v1201[8];
                    v1149 = *v557;
                    v567 = HIDWORD(*v557);
                    v568 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1234, HIDWORD(*v557));
                    if (v562 == v568)
                    {
                      v569 = v1267[11];
                    }

                    else
                    {
                      v569 = (v1267[10] + 80 * ((v568 - v1267[7]) >> 3));
                    }

                    v570 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1195, v567);
                    if (v564 == v570)
                    {
                      v571 = v1249[11];
                    }

                    else
                    {
                      v571 = v1249[10] + 2 * (v570 - v1249[7]);
                    }

                    v572 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1185, v567);
                    if (v566 == v572)
                    {
                      v573 = v1241[11];
                    }

                    else
                    {
                      v573 = (v1241[10] + 24 * ((v572 - v1241[7]) >> 3));
                    }

                    v574 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1210, v567);
                    if (v1141 == v574)
                    {
                      v575 = v1201[11];
                    }

                    else
                    {
                      v575 = (v1201[10] + ((v574 - v1201[7]) >> 1));
                    }

                    md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::ShadowPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1149, v569, *v571, *(v571 + 8), v573, v559, v575);
                  }
                }
              }
            }

            ++v559;
            v557 += 8;
          }

          while (v557 != v558);
        }

        v440 = v1223;
        v456 = v1169;
      }

      if (v1210 == v456)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 23);
        *v1280 = &v1274;
        v576 = v1201[7];
        v577 = v1201[8];
        if (v576 != v577)
        {
          v578 = v1201[10];
          do
          {
            v579 = *(v576 + 4);
            if (v442[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v442 + 4, v579) && v443[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1260, v579))
            {
              v580 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1234, v579);
              v581 = v1267[8];
              if (v581 != v580)
              {
                v582 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1195, v579);
                v583 = v1249[8];
                if (v583 != v582)
                {
                  v584 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1185, v579);
                  v585 = v1241[8];
                  if (v585 != v584 && v1221[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1157, v579))
                  {
                    v1202 = v1221[8];
                    v1211 = *v576;
                    v586 = HIDWORD(*v576);
                    v587 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1234, HIDWORD(*v576));
                    if (v581 == v587)
                    {
                      v588 = v1267[11];
                    }

                    else
                    {
                      v588 = (v1267[10] + 80 * ((v587 - v1267[7]) >> 3));
                    }

                    v589 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1195, v586);
                    if (v583 == v589)
                    {
                      v590 = v1249[11];
                    }

                    else
                    {
                      v590 = v1249[10] + 2 * (v589 - v1249[7]);
                    }

                    v591 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1185, v586);
                    if (v585 == v591)
                    {
                      v592 = v1241[11];
                    }

                    else
                    {
                      v592 = (v1241[10] + 24 * ((v591 - v1241[7]) >> 3));
                    }

                    v593 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1157, v586);
                    if (v1202 == v593)
                    {
                      v594 = v1221[11];
                    }

                    else
                    {
                      v594 = (v1221[10] + 2 * (v593 - v1221[7]));
                    }

                    md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::ShadowPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(v1279.i64, v1211, v588, *v590, *(v590 + 8), v592, v594, v578);
                  }
                }
              }
            }

            ++v578;
            v576 += 8;
          }

          while (v576 != v577);
        }

        v440 = v1223;
      }

      std::__function::__value_func<gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha)>::~__value_func[abi:nn200100](&v1275);
      v595 = v440[15];
      v1273 = v440[16];
      v1274 = v595;
      v1275 = &unk_1F2A409A8;
      v1276 = &v1273;
      v1278 = &v1275;
      v596 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v595);
      v1268 = gdc::Registry::storage<arComponents::StandardPipeline>(v595);
      v597 = gdc::Registry::storage<arComponents::WorldTransform>(v595);
      v598 = gdc::Registry::storage<arComponents::MeshDataComponent>(v595);
      v599 = gdc::Registry::storage<arComponents::AlbedoTextureComponent>(v595);
      v600 = gdc::Registry::storage<arComponents::AlbedoTextureUVMapping>(v595);
      v601 = gdc::Registry::storage<arComponents::AlbedoTextureUVScale>(v595);
      v602 = gdc::Registry::storage<arComponents::Boundary>(v595);
      v603 = gdc::Registry::storage<arComponents::StyleColor>(v595);
      v604.i64[0] = v596;
      v604.i64[1] = v1268;
      v1250 = v598;
      v1261 = v597;
      v605.i64[0] = v597;
      v605.i64[1] = v598;
      v1235 = v599;
      v606.i64[0] = v599;
      v1222 = v600;
      v606.i64[1] = v600;
      v1196 = v602;
      v1203 = v601;
      v607.i64[0] = v601;
      v607.i64[1] = v602;
      v1158 = v603;
      v608 = vdupq_n_s64(0x20uLL);
      v1279 = vaddq_s64(v604, v608);
      *v1280 = vaddq_s64(v605, v608);
      *&v1280[16] = vaddq_s64(v606, v608);
      *v1281 = vaddq_s64(v607, v608);
      v1170 = (v603 + 32);
      *&v1281[16] = v603 + 32;
      v609 = v1279.i64[0];
      v610 = 1;
      v611 = &v1279;
      do
      {
        if (*(v1279.i64[v610] + 32) - *(v1279.i64[v610] + 24) < *(v609 + 32) - *(v609 + 24))
        {
          v609 = v1279.i64[v610];
          v611 = (&v1279 + v610 * 8);
        }

        ++v610;
      }

      while (v610 != 9);
      v612 = v611->i64[0];
      v1142 = v611->i64[0];
      if (v596 + 4 == v611->i64[0])
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 17);
        *v1280 = &v1274;
        v614 = v596[7];
        v613 = v596[8];
        while (v614 != v613)
        {
          v615 = *(v614 + 4);
          if (v1268[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1268 + 4, v615))
          {
            v616 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1261 + 4, v615);
            v617 = v1261[8];
            if (v617 != v616)
            {
              v618 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1250 + 4, v615);
              v619 = v1250[8];
              if (v619 != v618)
              {
                v620 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1235 + 4, v615);
                v621 = v1235[8];
                if (v621 != v620)
                {
                  v622 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1222 + 4, v615);
                  v1242 = v1222[8];
                  if (v1242 != v622)
                  {
                    v623 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1203 + 4, v615);
                    v1212 = v1203[8];
                    if (v1212 != v623)
                    {
                      v624 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1196 + 4, v615);
                      v625 = v1196[8];
                      if (v625 != v624)
                      {
                        v626 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1170, v615);
                        v627 = v1158[8];
                        if (v627 != v626)
                        {
                          v1176 = v625;
                          v1186 = *v614;
                          v628 = HIDWORD(*v614);
                          v629 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1261 + 4, HIDWORD(*v614));
                          if (v617 == v629)
                          {
                            v630 = v1261[11];
                          }

                          else
                          {
                            v630 = v1261[10] + 80 * ((v629 - v1261[7]) >> 3);
                          }

                          v1131 = v630;
                          v631 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1250 + 4, v628);
                          if (v619 == v631)
                          {
                            v632 = v1250[11];
                          }

                          else
                          {
                            v632 = (v1250[10] + v631 - v1250[7]);
                          }

                          v633 = v1242;
                          v634 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1235 + 4, v628);
                          if (v621 == v634)
                          {
                            v635 = v1235[11];
                          }

                          else
                          {
                            v635 = v1235[10] + 48 * ((v634 - v1235[7]) >> 3);
                          }

                          v1243 = v635;
                          v636 = v1212;
                          v637 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1222 + 4, v628);
                          if (v633 == v637)
                          {
                            v638 = v1222[11];
                          }

                          else
                          {
                            v638 = v1222[10] + 2 * (v637 - v1222[7]);
                          }

                          v1213 = v638;
                          v639 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1203 + 4, v628);
                          if (v636 == v639)
                          {
                            v640 = v1203[11];
                          }

                          else
                          {
                            v640 = (v1203[10] + v639 - v1203[7]);
                          }

                          v641 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1196 + 4, v628);
                          if (v1176 == v641)
                          {
                            v642 = v1196[11];
                          }

                          else
                          {
                            v642 = (v1196[10] + 24 * ((v641 - v1196[7]) >> 3));
                          }

                          v643 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1170, v628);
                          if (v627 == v643)
                          {
                            v644 = v1158[11];
                          }

                          else
                          {
                            v644 = (v1158[10] + 2 * (v643 - v1158[7]));
                          }

                          md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshDataComponent&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::Boundary&,arComponents::StyleColor&)#1}::operator()(v1279.i64, v1186, v1131, *v632, v1243, v1213, v640, v642, v644);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v614 += 8;
        }

        v612 = v1142;
      }

      v645 = v1268 + 4;
      if (v1268 + 4 == v612)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 17);
        *v1280 = &v1274;
        v646 = v1268[7];
        v647 = v1268[8];
        while (v646 != v647)
        {
          v648 = *(v646 + 4);
          if (v596[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v596 + 4, v648))
          {
            v649 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1261 + 4, v648);
            v650 = v1261[8];
            if (v650 != v649)
            {
              v651 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1250 + 4, v648);
              v652 = v1250[8];
              if (v652 != v651)
              {
                v653 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1235 + 4, v648);
                v654 = v1235[8];
                if (v654 != v653)
                {
                  v655 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1222 + 4, v648);
                  v1244 = v1222[8];
                  if (v1244 != v655)
                  {
                    v656 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1203 + 4, v648);
                    v1214 = v1203[8];
                    if (v1214 != v656)
                    {
                      v657 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1196 + 4, v648);
                      v658 = v1196[8];
                      if (v658 != v657 && v1158[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1170, v648))
                      {
                        v1132 = v658;
                        v1187 = v1158[8];
                        v1177 = *v646;
                        v659 = HIDWORD(*v646);
                        v660 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1261 + 4, HIDWORD(*v646));
                        if (v650 == v660)
                        {
                          v661 = v1261[11];
                        }

                        else
                        {
                          v661 = (v1261[10] + 80 * ((v660 - v1261[7]) >> 3));
                        }

                        v662 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1250 + 4, v659);
                        if (v652 == v662)
                        {
                          v663 = v1250[11];
                        }

                        else
                        {
                          v663 = (v1250[10] + v662 - v1250[7]);
                        }

                        v1117 = v663;
                        v664 = v659;
                        v665 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1235 + 4, v659);
                        if (v654 == v665)
                        {
                          v666 = v1235[11];
                        }

                        else
                        {
                          v666 = v1235[10] + 48 * ((v665 - v1235[7]) >> 3);
                        }

                        v667 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1222 + 4, v664);
                        if (v1244 == v667)
                        {
                          v668 = v1222[11];
                        }

                        else
                        {
                          v668 = v1222[10] + 2 * (v667 - v1222[7]);
                        }

                        v1245 = v668;
                        v669 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1203 + 4, v664);
                        if (v1214 == v669)
                        {
                          v670 = v1203[11];
                        }

                        else
                        {
                          v670 = (v1203[10] + v669 - v1203[7]);
                        }

                        v1215 = v670;
                        v671 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1196 + 4, v664);
                        if (v1132 == v671)
                        {
                          v672 = v1196[11];
                        }

                        else
                        {
                          v672 = (v1196[10] + 24 * ((v671 - v1196[7]) >> 3));
                        }

                        v673 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1170, v664);
                        if (v1187 == v673)
                        {
                          v674 = v1158[11];
                        }

                        else
                        {
                          v674 = (v1158[10] + 2 * (v673 - v1158[7]));
                        }

                        md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshDataComponent&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::Boundary&,arComponents::StyleColor&)#1}::operator()(v1279.i64, v1177, v661, *v1117, v666, v1245, v1215, v672, v674);
                      }
                    }
                  }
                }
              }
            }
          }

          v646 += 8;
        }

        v612 = v1142;
      }

      v1246 = v1261 + 4;
      if (v1261 + 4 == v612)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 17);
        *v1280 = &v1274;
        v675 = v1261[7];
        v676 = v1261[8];
        if (v675 != v676)
        {
          v677 = v1261[10];
          do
          {
            v678 = *(v675 + 4);
            if (v596[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v596 + 4, v678) && v1268[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v645, v678))
            {
              v679 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1250 + 4, v678);
              v680 = v1250[8];
              if (v680 != v679)
              {
                v681 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1235 + 4, v678);
                v682 = v1235[8];
                if (v682 != v681)
                {
                  v683 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1222 + 4, v678);
                  v684 = v1222[8];
                  if (v684 != v683)
                  {
                    v685 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1203 + 4, v678);
                    v645 = v1268 + 4;
                    v1216 = v1203[8];
                    if (v1216 != v685)
                    {
                      v686 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1196 + 4, v678);
                      v645 = v1268 + 4;
                      v1188 = v1196[8];
                      if (v1188 != v686 && v1158[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1170, v678))
                      {
                        v1101 = v1158[8];
                        v1118 = *v675;
                        v1133 = HIDWORD(*v675);
                        v687 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1250 + 4, v1133);
                        if (v680 == v687)
                        {
                          v688 = v1250[11];
                        }

                        else
                        {
                          v688 = (v1250[10] + v687 - v1250[7]);
                        }

                        v1084 = v688;
                        v689 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1235 + 4, v1133);
                        if (v682 == v689)
                        {
                          v690 = v1235[11];
                        }

                        else
                        {
                          v690 = v1235[10] + 48 * ((v689 - v1235[7]) >> 3);
                        }

                        v1068 = v690;
                        v691 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1222 + 4, v1133);
                        if (v684 == v691)
                        {
                          v692 = v1222[11];
                        }

                        else
                        {
                          v692 = v1222[10] + 2 * (v691 - v1222[7]);
                        }

                        v1053 = v692;
                        v693 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1203 + 4, v1133);
                        if (v1216 == v693)
                        {
                          v694 = v1203[11];
                        }

                        else
                        {
                          v694 = (v1203[10] + v693 - v1203[7]);
                        }

                        v695 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1196 + 4, v1133);
                        if (v1188 == v695)
                        {
                          v696 = v1196[11];
                        }

                        else
                        {
                          v696 = (v1196[10] + 24 * ((v695 - v1196[7]) >> 3));
                        }

                        v697 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1170, v1133);
                        if (v1101 == v697)
                        {
                          v698 = v1158[11];
                        }

                        else
                        {
                          v698 = (v1158[10] + 2 * (v697 - v1158[7]));
                        }

                        md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshDataComponent&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::Boundary&,arComponents::StyleColor&)#1}::operator()(v1279.i64, v1118, v677, *v1084, v1068, v1053, v694, v696, v698);
                      }
                    }
                  }
                }
              }
            }

            v677 += 5;
            v675 += 8;
          }

          while (v675 != v676);
        }

        v612 = v1142;
      }

      v1217 = v1250 + 4;
      if (v1250 + 4 == v612)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 17);
        *v1280 = &v1274;
        v699 = v1250[7];
        v700 = v1250[8];
        if (v699 != v700)
        {
          v701 = v1250[10];
          do
          {
            v702 = *(v699 + 4);
            if (v596[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v596 + 4, v702) && v1268[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v645, v702))
            {
              v703 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1246, v702);
              v704 = v1261[8];
              if (v704 != v703)
              {
                v705 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1235 + 4, v702);
                v706 = v1235[8];
                if (v706 != v705)
                {
                  v707 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1222 + 4, v702);
                  v708 = v1222[8];
                  if (v708 != v707)
                  {
                    v709 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1203 + 4, v702);
                    v645 = v1268 + 4;
                    v1189 = v1203[8];
                    if (v1189 != v709)
                    {
                      v710 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1196 + 4, v702);
                      v645 = v1268 + 4;
                      v1134 = v1196[8];
                      if (v1134 != v710 && v1158[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1170, v702))
                      {
                        v1085 = v1158[8];
                        v1119 = *v699;
                        v711 = HIDWORD(*v699);
                        v712 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1246, HIDWORD(*v699));
                        if (v704 == v712)
                        {
                          v713 = v1261[11];
                        }

                        else
                        {
                          v713 = v1261[10] + 80 * ((v712 - v1261[7]) >> 3);
                        }

                        v1102 = v713;
                        v714 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1235 + 4, v711);
                        if (v706 == v714)
                        {
                          v715 = v1235[11];
                        }

                        else
                        {
                          v715 = v1235[10] + 48 * ((v714 - v1235[7]) >> 3);
                        }

                        v1069 = v715;
                        v716 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1222 + 4, v711);
                        if (v708 == v716)
                        {
                          v717 = v1222[11];
                        }

                        else
                        {
                          v717 = v1222[10] + 2 * (v716 - v1222[7]);
                        }

                        v1054 = v717;
                        v718 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1203 + 4, v711);
                        if (v1189 == v718)
                        {
                          v719 = v1203[11];
                        }

                        else
                        {
                          v719 = (v1203[10] + v718 - v1203[7]);
                        }

                        v720 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1196 + 4, v711);
                        if (v1134 == v720)
                        {
                          v721 = v1196[11];
                        }

                        else
                        {
                          v721 = (v1196[10] + 24 * ((v720 - v1196[7]) >> 3));
                        }

                        v722 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1170, v711);
                        if (v1085 == v722)
                        {
                          v723 = v1158[11];
                        }

                        else
                        {
                          v723 = (v1158[10] + 2 * (v722 - v1158[7]));
                        }

                        md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshDataComponent&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::Boundary&,arComponents::StyleColor&)#1}::operator()(v1279.i64, v1119, v1102, *v701, v1069, v1054, v719, v721, v723);
                      }
                    }
                  }
                }
              }
            }

            ++v701;
            v699 += 8;
          }

          while (v699 != v700);
        }

        v612 = v1142;
      }

      v1190 = v1235 + 4;
      if (v1235 + 4 == v612)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 17);
        *v1280 = &v1274;
        v724 = v1235[7];
        v725 = v1235[8];
        if (v724 != v725)
        {
          v726 = v1235[10];
          do
          {
            v727 = *(v724 + 4);
            if (v596[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v596 + 4, v727) && v1268[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v645, v727))
            {
              v728 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1246, v727);
              v729 = v1261[8];
              if (v729 != v728)
              {
                v730 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1217, v727);
                v731 = v1250[8];
                if (v731 != v730)
                {
                  v732 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1222 + 4, v727);
                  v733 = v1222[8];
                  if (v733 != v732)
                  {
                    v734 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1203 + 4, v727);
                    v645 = v1268 + 4;
                    v1135 = v1203[8];
                    if (v1135 != v734)
                    {
                      v735 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1196 + 4, v727);
                      v645 = v1268 + 4;
                      v1120 = v1196[8];
                      if (v1120 != v735 && v1158[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1170, v727))
                      {
                        v1086 = v1158[8];
                        v1103 = *v724;
                        v736 = HIDWORD(*v724);
                        v737 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1246, HIDWORD(*v724));
                        if (v729 == v737)
                        {
                          v738 = v1261[11];
                        }

                        else
                        {
                          v738 = v1261[10] + 80 * ((v737 - v1261[7]) >> 3);
                        }

                        v1070 = v738;
                        v739 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1217, v736);
                        if (v731 == v739)
                        {
                          v740 = v1250[11];
                        }

                        else
                        {
                          v740 = (v1250[10] + v739 - v1250[7]);
                        }

                        v741 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1222 + 4, v736);
                        if (v733 == v741)
                        {
                          v742 = v1222[11];
                        }

                        else
                        {
                          v742 = v1222[10] + 2 * (v741 - v1222[7]);
                        }

                        v1055 = v742;
                        v743 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1203 + 4, v736);
                        if (v1135 == v743)
                        {
                          v744 = v1203[11];
                        }

                        else
                        {
                          v744 = (v1203[10] + v743 - v1203[7]);
                        }

                        v1136 = v744;
                        v745 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1196 + 4, v736);
                        if (v1120 == v745)
                        {
                          v746 = v1196[11];
                        }

                        else
                        {
                          v746 = (v1196[10] + 24 * ((v745 - v1196[7]) >> 3));
                        }

                        v747 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1170, v736);
                        if (v1086 == v747)
                        {
                          v748 = v1158[11];
                        }

                        else
                        {
                          v748 = (v1158[10] + 2 * (v747 - v1158[7]));
                        }

                        md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshDataComponent&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::Boundary&,arComponents::StyleColor&)#1}::operator()(v1279.i64, v1103, v1070, *v740, v726, v1055, v1136, v746, v748);
                      }
                    }
                  }
                }
              }
            }

            v726 += 48;
            v724 += 8;
          }

          while (v724 != v725);
        }

        v612 = v1142;
      }

      v1137 = v1222 + 4;
      if (v1222 + 4 == v612)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 17);
        *v1280 = &v1274;
        v749 = v1222[7];
        v750 = v1222[8];
        if (v749 != v750)
        {
          v751 = v1222[10];
          do
          {
            v752 = *(v749 + 4);
            if (v596[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v596 + 4, v752) && v1268[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v645, v752))
            {
              v753 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1246, v752);
              v754 = v1261[8];
              if (v754 != v753)
              {
                v755 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1217, v752);
                v756 = v1250[8];
                if (v756 != v755)
                {
                  v757 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1190, v752);
                  v758 = v1235[8];
                  if (v758 != v757)
                  {
                    v759 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1203 + 4, v752);
                    v645 = v1268 + 4;
                    v1121 = v1203[8];
                    if (v1121 != v759)
                    {
                      v760 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1196 + 4, v752);
                      v645 = v1268 + 4;
                      v1104 = v1196[8];
                      if (v1104 != v760 && v1158[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1170, v752))
                      {
                        v1071 = v1158[8];
                        v1087 = *v749;
                        v761 = HIDWORD(*v749);
                        v762 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1246, HIDWORD(*v749));
                        if (v754 == v762)
                        {
                          v763 = v1261[11];
                        }

                        else
                        {
                          v763 = v1261[10] + 80 * ((v762 - v1261[7]) >> 3);
                        }

                        v1056 = v763;
                        v764 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1217, v761);
                        if (v756 == v764)
                        {
                          v765 = v1250[11];
                        }

                        else
                        {
                          v765 = (v1250[10] + v764 - v1250[7]);
                        }

                        v766 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1190, v761);
                        if (v758 == v766)
                        {
                          v767 = v1235[11];
                        }

                        else
                        {
                          v767 = v1235[10] + 48 * ((v766 - v1235[7]) >> 3);
                        }

                        v1043 = v767;
                        v768 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1203 + 4, v761);
                        if (v1121 == v768)
                        {
                          v769 = v1203[11];
                        }

                        else
                        {
                          v769 = (v1203[10] + v768 - v1203[7]);
                        }

                        v1122 = v769;
                        v770 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1196 + 4, v761);
                        if (v1104 == v770)
                        {
                          v771 = v1196[11];
                        }

                        else
                        {
                          v771 = (v1196[10] + 24 * ((v770 - v1196[7]) >> 3));
                        }

                        v772 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1170, v761);
                        if (v1071 == v772)
                        {
                          v773 = v1158[11];
                        }

                        else
                        {
                          v773 = (v1158[10] + 2 * (v772 - v1158[7]));
                        }

                        md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshDataComponent&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::Boundary&,arComponents::StyleColor&)#1}::operator()(v1279.i64, v1087, v1056, *v765, v1043, v751, v1122, v771, v773);
                      }
                    }
                  }
                }
              }
            }

            ++v751;
            v749 += 8;
          }

          while (v749 != v750);
        }

        v612 = v1142;
      }

      v1123 = v1203 + 4;
      if (v1203 + 4 == v612)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 17);
        *v1280 = &v1274;
        v774 = v1203[7];
        v775 = v1203[8];
        if (v774 != v775)
        {
          v776 = v1203[10];
          do
          {
            v777 = *(v774 + 4);
            if (v596[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v596 + 4, v777) && v1268[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v645, v777))
            {
              v778 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1246, v777);
              v779 = v1261[8];
              if (v779 != v778)
              {
                v780 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1217, v777);
                v781 = v1250[8];
                if (v781 != v780)
                {
                  v782 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1190, v777);
                  v783 = v1235[8];
                  if (v783 != v782)
                  {
                    v784 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1137, v777);
                    v1105 = v1222[8];
                    if (v1105 != v784)
                    {
                      v785 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1196 + 4, v777);
                      v645 = v1268 + 4;
                      v1088 = v1196[8];
                      if (v1088 != v785 && v1158[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1170, v777))
                      {
                        v1057 = v1158[8];
                        v1072 = *v774;
                        v786 = HIDWORD(*v774);
                        v787 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1246, HIDWORD(*v774));
                        if (v779 == v787)
                        {
                          v788 = v1261[11];
                        }

                        else
                        {
                          v788 = v1261[10] + 80 * ((v787 - v1261[7]) >> 3);
                        }

                        v1044 = v788;
                        v789 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1217, v786);
                        if (v781 == v789)
                        {
                          v790 = v1250[11];
                        }

                        else
                        {
                          v790 = (v1250[10] + v789 - v1250[7]);
                        }

                        v791 = v1105;
                        v792 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1190, v786);
                        if (v783 == v792)
                        {
                          v793 = v1235[11];
                        }

                        else
                        {
                          v793 = v1235[10] + 48 * ((v792 - v1235[7]) >> 3);
                        }

                        v1106 = v793;
                        v794 = v1088;
                        v795 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1137, v786);
                        if (v791 == v795)
                        {
                          v796 = v1222[11];
                        }

                        else
                        {
                          v796 = v1222[10] + 2 * (v795 - v1222[7]);
                        }

                        v1089 = v796;
                        v797 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1196 + 4, v786);
                        if (v794 == v797)
                        {
                          v798 = v1196[11];
                        }

                        else
                        {
                          v798 = (v1196[10] + 24 * ((v797 - v1196[7]) >> 3));
                        }

                        v799 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1170, v786);
                        if (v1057 == v799)
                        {
                          v800 = v1158[11];
                        }

                        else
                        {
                          v800 = (v1158[10] + 2 * (v799 - v1158[7]));
                        }

                        md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshDataComponent&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::Boundary&,arComponents::StyleColor&)#1}::operator()(v1279.i64, v1072, v1044, *v790, v1106, v1089, v776, v798, v800);
                      }
                    }
                  }
                }
              }
            }

            ++v776;
            v774 += 8;
          }

          while (v774 != v775);
        }

        v612 = v1142;
      }

      v1178 = v1196 + 4;
      if (v1196 + 4 == v612)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 17);
        *v1280 = &v1274;
        v801 = v1196[7];
        v802 = v1196[8];
        if (v801 != v802)
        {
          v803 = v1196[10];
          do
          {
            v804 = *(v801 + 4);
            if (v596[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v596 + 4, v804) && v1268[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v645, v804))
            {
              v805 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1246, v804);
              v806 = v1261[8];
              if (v806 != v805)
              {
                v807 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1217, v804);
                v808 = v1250[8];
                if (v808 != v807)
                {
                  v809 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1190, v804);
                  v810 = v1235[8];
                  if (v810 != v809)
                  {
                    v811 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1137, v804);
                    v1107 = v1222[8];
                    if (v1107 != v811)
                    {
                      v812 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1123, v804);
                      v1090 = v1203[8];
                      if (v1090 != v812 && v1158[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1170, v804))
                      {
                        v1058 = v1158[8];
                        v1073 = *v801;
                        v813 = HIDWORD(*v801);
                        v814 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1246, HIDWORD(*v801));
                        if (v806 == v814)
                        {
                          v815 = v1261[11];
                        }

                        else
                        {
                          v815 = (v1261[10] + 80 * ((v814 - v1261[7]) >> 3));
                        }

                        v816 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1217, v813);
                        if (v808 == v816)
                        {
                          v817 = v1250[11];
                        }

                        else
                        {
                          v817 = (v1250[10] + v816 - v1250[7]);
                        }

                        v818 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1190, v813);
                        if (v810 == v818)
                        {
                          v819 = v1235[11];
                        }

                        else
                        {
                          v819 = v1235[10] + 48 * ((v818 - v1235[7]) >> 3);
                        }

                        v820 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1137, v813);
                        if (v1107 == v820)
                        {
                          v821 = v1222[11];
                        }

                        else
                        {
                          v821 = v1222[10] + 2 * (v820 - v1222[7]);
                        }

                        v1108 = v821;
                        v822 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1123, v813);
                        if (v1090 == v822)
                        {
                          v823 = v1203[11];
                        }

                        else
                        {
                          v823 = (v1203[10] + v822 - v1203[7]);
                        }

                        v1091 = v823;
                        v824 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1170, v813);
                        if (v1058 == v824)
                        {
                          v825 = v1158[11];
                        }

                        else
                        {
                          v825 = (v1158[10] + 2 * (v824 - v1158[7]));
                        }

                        md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshDataComponent&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::Boundary&,arComponents::StyleColor&)#1}::operator()(v1279.i64, v1073, v815, *v817, v819, v1108, v1091, v803, v825);
                      }
                    }
                  }
                }
              }
            }

            v803 = (v803 + 24);
            v801 += 8;
          }

          while (v801 != v802);
        }

        v612 = v1142;
      }

      if (v1170 == v612)
      {
        v1279.i64[0] = &v1275;
        v1279.i64[1] = (v1223 + 17);
        *v1280 = &v1274;
        v827 = v1158[7];
        v826 = v1158[8];
        if (v827 != v826)
        {
          v828 = v1158[10];
          do
          {
            v829 = *(v827 + 4);
            if (v596[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v596 + 4, v829) && v1268[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v645, v829))
            {
              v830 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1246, v829);
              v831 = v1261[8];
              if (v831 != v830)
              {
                v832 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1217, v829);
                v833 = v1250[8];
                if (v833 != v832)
                {
                  v834 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1190, v829);
                  v835 = v1235[8];
                  if (v835 != v834)
                  {
                    v836 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1137, v829);
                    v1171 = v1222[8];
                    if (v1171 != v836)
                    {
                      v837 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1123, v829);
                      v1159 = v1203[8];
                      if (v1159 != v837 && v1196[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1178, v829))
                      {
                        v1143 = v1196[8];
                        v1150 = *v827;
                        v838 = HIDWORD(*v827);
                        v839 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1246, HIDWORD(*v827));
                        if (v831 == v839)
                        {
                          v840 = v1261[11];
                        }

                        else
                        {
                          v840 = v1261[10] + 80 * ((v839 - v1261[7]) >> 3);
                        }

                        v1109 = v840;
                        v841 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1217, v838);
                        if (v833 == v841)
                        {
                          v842 = v1250[11];
                        }

                        else
                        {
                          v842 = (v1250[10] + v841 - v1250[7]);
                        }

                        v843 = v1159;
                        v844 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1190, v838);
                        if (v835 == v844)
                        {
                          v845 = v1235[11];
                        }

                        else
                        {
                          v845 = v1235[10] + 48 * ((v844 - v1235[7]) >> 3);
                        }

                        v1160 = v845;
                        v846 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1137, v838);
                        if (v1171 == v846)
                        {
                          v847 = v1222[11];
                        }

                        else
                        {
                          v847 = (v1222[10] + 2 * (v846 - v1222[7]));
                        }

                        v848 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1123, v838);
                        if (v843 == v848)
                        {
                          v849 = v1203[11];
                        }

                        else
                        {
                          v849 = (v1203[10] + v848 - v1203[7]);
                        }

                        v850 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v1178, v838);
                        if (v1143 == v850)
                        {
                          v851 = v1196[11];
                        }

                        else
                        {
                          v851 = (v1196[10] + 24 * ((v850 - v1196[7]) >> 3));
                        }

                        md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshDataComponent&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::Boundary&,arComponents::StyleColor&)#1}::operator()(v1279.i64, v1150, v1109, *v842, v1160, v847, v849, v851, v828);
                      }
                    }
                  }
                }
              }
            }

            ++v828;
            v827 += 8;
          }

          while (v827 != v826);
        }
      }

      std::__function::__value_func<gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor)>::~__value_func[abi:nn200100](&v1275);
      v852 = v1223[15];
      v1273 = v1223[16];
      v1274 = v852;
      v1279.i64[0] = &unk_1F2A40A20;
      v1279.i64[1] = &v1273;
      *&v1280[8] = &v1279;
      v853 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v852);
      v854 = gdc::Registry::storage<arComponents::AREnvironmentProbeTexture>(v852);
      v855 = v854;
      v856 = v1223 + 29;
      v857 = (v854 + 32);
      v859 = v853[7];
      v858 = v853[8];
      if (*(v854 + 64) - *(v854 + 56) >= (v858 - v859))
      {
        v860 = v853 + 4;
      }

      else
      {
        v860 = (v854 + 32);
      }

      if (v853 + 4 == v860)
      {
        v1275 = &v1279;
        v1276 = v1223 + 29;
        for (i = &v1274; v859 != v858; v859 += 8)
        {
          v861 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v857, *(v859 + 4));
          v862 = v855[8];
          if (v862 != v861)
          {
            v863 = *v859;
            v864 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v857, HIDWORD(*v859));
            if (v862 == v864)
            {
              v865 = v855[11];
            }

            else
            {
              v865 = v855[10] + 24 * ((v864 - v855[7]) >> 3);
            }

            md::ECSHelpers::copyComponentsWithoutPipeline<arComponents::TransitionToRenderRegistry,arComponents::AREnvironmentProbeTexture>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::AREnvironmentProbeTexture&)#1}::operator()(&v1275, v863, v865);
          }
        }

        v856 = v1223 + 29;
      }

      if (v857 == v860)
      {
        v1275 = &v1279;
        v1276 = v856;
        i = &v1274;
        v866 = v855[7];
        v867 = v855[8];
        if (v866 != v867)
        {
          v868 = v855[10];
          do
          {
            if (v853[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v853 + 4, *(v866 + 4)))
            {
              md::ECSHelpers::copyComponentsWithoutPipeline<arComponents::TransitionToRenderRegistry,arComponents::AREnvironmentProbeTexture>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::AREnvironmentProbeTexture&)#1}::operator()(&v1275, *v866, v868);
            }

            v868 += 24;
            v866 += 8;
          }

          while (v866 != v867);
        }
      }

      std::__function::__value_func<gdc::Entity ()(arComponents::AREnvironmentProbeTexture)>::~__value_func[abi:nn200100](&v1279);
      md::ECSHelpers::updateTagComponent<arComponents::IsVisible>(v1223[15], v1223[16], 1);
      v1 = v1223;
    }

    v869 = v1[15];
    v870 = v1[16];
    v871 = gdc::Registry::storage<arComponents::CopiedEntity>(v869);
    v872 = v871[7];
    v1269 = v871[8];
    if (v872 != v1269)
    {
      v873 = v871[10];
      do
      {
        v874 = *v872;
        v875 = gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(v869);
        v876 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v875 + 32), HIDWORD(v874));
        v877 = *(v875 + 64);
        v878 = *(v873 + 4);
        v879 = gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(v870);
        v880 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v879 + 32), v878);
        v881 = *(v879 + 64);
        if (v881 == v880 && v877 != v876)
        {
          v883 = *v873;
          v884 = gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(v870);
          gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v884, v883);
        }

        else if (v877 == v876 && v881 != v880)
        {
          v886 = gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(v870);
          gdc::ComponentStorageWrapper<arComponents::QueuedForDeletionAfterLayout>::remove(v886, *v873);
        }

        v1275 = 0xA9FA4AB2A6BA1C58;
        v887 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v869 + 120), 0xA9FA4AB2A6BA1C58);
        if (!v887)
        {
          operator new();
        }

        gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::QueuedForDeletionAfterLayout>>::remove(v887[3], v874);
        v873 += 8;
        ++v872;
      }

      while (v872 != v1269);
    }

    v1251 = v1223[16];
    v1262 = v1223[15];
    v888 = gdc::Registry::storage<arComponents::CopiedEntity>(v1262);
    v1270 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>(v1262);
    v889 = gdc::Registry::storage<arComponents::WorldTransform>(v1262);
    v890.i64[0] = v888;
    v890.i64[1] = v1270;
    v891 = v889 + 4;
    v1279 = vaddq_s64(v890, vdupq_n_s64(0x20uLL));
    *v1280 = v889 + 4;
    v892 = v1279.i64[0];
    v893 = 1;
    v894 = &v1279;
    do
    {
      if (*(v1279.i64[v893] + 32) - *(v1279.i64[v893] + 24) < *(v892 + 32) - *(v892 + 24))
      {
        v892 = v1279.i64[v893];
        v894 = (&v1279 + v893 * 8);
      }

      ++v893;
    }

    while (v893 != 3);
    v1236 = v894->i64[0];
    if (v888 + 4 == v894->i64[0])
    {
      v895 = v888[7];
      v896 = v888[8];
      if (v895 != v896)
      {
        v897 = v888[10];
        do
        {
          v898 = *(v895 + 4);
          if (v1270[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1270 + 4, v898))
          {
            v899 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v891, v898);
            v900 = v889[8];
            if (v900 != v899)
            {
              v901 = *v895;
              v902 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v891, HIDWORD(*v895));
              if (v900 == v902)
              {
                v903 = v889[11];
              }

              else
              {
                v903 = v889[10] + 80 * ((v902 - v889[7]) >> 3);
              }

              v904 = *v897;
              v1279 = *v903;
              *v1280 = *(v903 + 16);
              *&v1280[8] = *(v903 + 24);
              *&v1280[24] = *(v903 + 40);
              *v1281 = *(v903 + 48);
              *&v1281[8] = *(v903 + 56);
              *&v1281[24] = *(v903 + 72);
              v905 = gdc::Registry::storage<arComponents::WorldTransform>(v1251);
              gdc::ComponentStorageWrapper<arComponents::WorldTransform>::emplace(v905, v904, v1279.i8);
              v906 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>(v1262);
              gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>::remove(v906, v901);
            }
          }

          ++v897;
          v895 += 8;
        }

        while (v895 != v896);
      }
    }

    if (v1270 + 4 == v1236)
    {
      v981 = v1270[7];
      v982 = v1270[8];
      while (v981 != v982)
      {
        v983 = *(v981 + 4);
        v984 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v888 + 4, v983);
        v985 = v888[8];
        if (v985 != v984)
        {
          v986 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v891, v983);
          v987 = v889[8];
          if (v987 != v986)
          {
            v988 = *v981;
            v989 = HIDWORD(*v981);
            v990 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v888 + 4, HIDWORD(*v981));
            if (v985 == v990)
            {
              v991 = v888[11];
            }

            else
            {
              v991 = (v888[10] + v990 - v888[7]);
            }

            v992 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v891, v989);
            if (v987 == v992)
            {
              v993 = v889[11];
            }

            else
            {
              v993 = v889[10] + 80 * ((v992 - v889[7]) >> 3);
            }

            v994 = *v991;
            v1279 = *v993;
            *v1280 = *(v993 + 16);
            *&v1280[8] = *(v993 + 24);
            *&v1280[24] = *(v993 + 40);
            *v1281 = *(v993 + 48);
            *&v1281[8] = *(v993 + 56);
            *&v1281[24] = *(v993 + 72);
            v995 = gdc::Registry::storage<arComponents::WorldTransform>(v1251);
            gdc::ComponentStorageWrapper<arComponents::WorldTransform>::emplace(v995, v994, v1279.i8);
            v996 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>(v1262);
            gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>::remove(v996, v988);
          }
        }

        v981 += 8;
      }
    }

    if (v891 == v1236)
    {
      v907 = v889[7];
      v908 = v889[8];
      if (v907 != v908)
      {
        v909 = v889[10] + 56;
        do
        {
          v910 = *(v907 + 4);
          v911 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v888 + 4, v910);
          v912 = v888[8];
          if (v912 != v911 && v1270[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1270 + 4, v910))
          {
            v913 = *v907;
            v914 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v888 + 4, HIDWORD(*v907));
            if (v912 == v914)
            {
              v915 = v888[11];
            }

            else
            {
              v915 = (v888[10] + v914 - v888[7]);
            }

            v916 = *v915;
            v1279 = *(v909 - 56);
            *v1280 = *(v909 - 40);
            *&v1280[8] = *(v909 - 32);
            *&v1280[24] = *(v909 - 16);
            *v1281 = *(v909 - 8);
            *&v1281[8] = *v909;
            *&v1281[24] = *(v909 + 16);
            v917 = gdc::Registry::storage<arComponents::WorldTransform>(v1251);
            gdc::ComponentStorageWrapper<arComponents::WorldTransform>::emplace(v917, v916, v1279.i8);
            v918 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>(v1262);
            gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>::remove(v918, v913);
          }

          v907 += 8;
          v909 += 80;
        }

        while (v907 != v908);
      }
    }

    v1252 = v1223[16];
    v1263 = v1223[15];
    v919 = gdc::Registry::storage<arComponents::CopiedEntity>(v1263);
    v1271 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::StyleColor>>(v1263);
    v920 = gdc::Registry::storage<arComponents::StyleColor>(v1263);
    v921.i64[0] = v919;
    v921.i64[1] = v1271;
    v922 = v920 + 4;
    v1279 = vaddq_s64(v921, vdupq_n_s64(0x20uLL));
    *v1280 = v920 + 4;
    v923 = v1279.i64[0];
    v924 = 1;
    v925 = &v1279;
    do
    {
      if (*(v1279.i64[v924] + 32) - *(v1279.i64[v924] + 24) < *(v923 + 32) - *(v923 + 24))
      {
        v923 = v1279.i64[v924];
        v925 = (&v1279 + v924 * 8);
      }

      ++v924;
    }

    while (v924 != 3);
    v1237 = v925->i64[0];
    if (v919 + 4 == v925->i64[0])
    {
      v926 = v919[7];
      v927 = v919[8];
      if (v926 != v927)
      {
        v928 = v919[10];
        do
        {
          v929 = *(v926 + 4);
          if (v1271[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1271 + 4, v929))
          {
            v930 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v922, v929);
            v931 = v920[8];
            if (v931 != v930)
            {
              v932 = *v926;
              v933 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v922, HIDWORD(*v926));
              if (v931 == v933)
              {
                v934 = v920[11];
              }

              else
              {
                v934 = (v920[10] + 2 * (v933 - v920[7]));
              }

              v935 = *v928;
              v1279 = *v934;
              v936 = gdc::Registry::storage<arComponents::StyleColor>(v1252);
              gdc::ComponentStorageWrapper<md::components::AlbedoTint>::emplace(v936, v935, &v1279);
              v937 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::StyleColor>>(v1263);
              gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::StyleColor>>::remove(v937, v932);
            }
          }

          ++v928;
          v926 += 8;
        }

        while (v926 != v927);
      }
    }

    if (v1271 + 4 == v1237)
    {
      v997 = v1271[7];
      v998 = v1271[8];
      while (v997 != v998)
      {
        v999 = *(v997 + 4);
        v1000 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v919 + 4, v999);
        v1001 = v919[8];
        if (v1001 != v1000)
        {
          v1002 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v922, v999);
          v1003 = v920[8];
          if (v1003 != v1002)
          {
            v1004 = *v997;
            v1005 = HIDWORD(*v997);
            v1006 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v919 + 4, HIDWORD(*v997));
            if (v1001 == v1006)
            {
              v1007 = v919[11];
            }

            else
            {
              v1007 = (v919[10] + v1006 - v919[7]);
            }

            v1008 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v922, v1005);
            if (v1003 == v1008)
            {
              v1009 = v920[11];
            }

            else
            {
              v1009 = (v920[10] + 2 * (v1008 - v920[7]));
            }

            v1010 = *v1007;
            v1279 = *v1009;
            v1011 = gdc::Registry::storage<arComponents::StyleColor>(v1252);
            gdc::ComponentStorageWrapper<md::components::AlbedoTint>::emplace(v1011, v1010, &v1279);
            v1012 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::StyleColor>>(v1263);
            gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::StyleColor>>::remove(v1012, v1004);
          }
        }

        v997 += 8;
      }
    }

    if (v922 == v1237)
    {
      v938 = v920[7];
      v939 = v920[8];
      if (v938 != v939)
      {
        v940 = v920[10];
        do
        {
          v941 = *(v938 + 4);
          v942 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v919 + 4, v941);
          v943 = v919[8];
          if (v943 != v942 && v1271[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1271 + 4, v941))
          {
            v944 = *v938;
            v945 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v919 + 4, HIDWORD(*v938));
            if (v943 == v945)
            {
              v946 = v919[11];
            }

            else
            {
              v946 = (v919[10] + v945 - v919[7]);
            }

            v947 = *v946;
            v1279 = *v940;
            v948 = gdc::Registry::storage<arComponents::StyleColor>(v1252);
            gdc::ComponentStorageWrapper<md::components::AlbedoTint>::emplace(v948, v947, &v1279);
            v949 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::StyleColor>>(v1263);
            gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::StyleColor>>::remove(v949, v944);
          }

          ++v940;
          v938 += 8;
        }

        while (v938 != v939);
      }
    }

    v1253 = v1223[16];
    v1264 = v1223[15];
    v950 = gdc::Registry::storage<arComponents::CopiedEntity>(v1264);
    v1272 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::VisibilityAlpha>>(v1264);
    v951 = gdc::Registry::storage<arComponents::VisibilityAlpha>(v1264);
    v952.i64[0] = v950;
    v952.i64[1] = v1272;
    v953 = v951 + 4;
    v1279 = vaddq_s64(v952, vdupq_n_s64(0x20uLL));
    *v1280 = v951 + 4;
    v954 = v1279.i64[0];
    v955 = 1;
    v956 = &v1279;
    do
    {
      if (*(v1279.i64[v955] + 32) - *(v1279.i64[v955] + 24) < *(v954 + 32) - *(v954 + 24))
      {
        v954 = v1279.i64[v955];
        v956 = (&v1279 + v955 * 8);
      }

      ++v955;
    }

    while (v955 != 3);
    v1238 = v956->i64[0];
    if (v950 + 4 == v956->i64[0])
    {
      v957 = v950[7];
      v958 = v950[8];
      if (v957 != v958)
      {
        v959 = v950[10];
        do
        {
          v960 = *(v957 + 4);
          if (v1272[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1272 + 4, v960))
          {
            v961 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v953, v960);
            v962 = v951[8];
            if (v962 != v961)
            {
              v963 = *v957;
              v964 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v953, HIDWORD(*v957));
              if (v962 == v964)
              {
                v965 = v951[11];
              }

              else
              {
                v965 = (v951[10] + ((v964 - v951[7]) >> 1));
              }

              v966 = *v959;
              v1279.i32[0] = *v965;
              v967 = gdc::Registry::storage<arComponents::VisibilityAlpha>(v1253);
              gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::emplace(v967, v966, v1279.i32);
              v968 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::VisibilityAlpha>>(v1264);
              gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::VisibilityAlpha>>::remove(v968, v963);
            }
          }

          ++v959;
          v957 += 8;
        }

        while (v957 != v958);
      }
    }

    if (v1272 + 4 == v1238)
    {
      v1013 = v1272[7];
      v1014 = v1272[8];
      while (v1013 != v1014)
      {
        v1015 = *(v1013 + 4);
        v1016 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v950 + 4, v1015);
        v1017 = v950[8];
        if (v1017 != v1016)
        {
          v1018 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v953, v1015);
          v1019 = v951[8];
          if (v1019 != v1018)
          {
            v1020 = *v1013;
            v1021 = HIDWORD(*v1013);
            v1022 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v950 + 4, HIDWORD(*v1013));
            if (v1017 == v1022)
            {
              v1023 = v950[11];
            }

            else
            {
              v1023 = (v950[10] + v1022 - v950[7]);
            }

            v1024 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v953, v1021);
            if (v1019 == v1024)
            {
              v1025 = v951[11];
            }

            else
            {
              v1025 = (v951[10] + ((v1024 - v951[7]) >> 1));
            }

            v1026 = *v1023;
            v1279.i32[0] = *v1025;
            v1027 = gdc::Registry::storage<arComponents::VisibilityAlpha>(v1253);
            gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::emplace(v1027, v1026, v1279.i32);
            v1028 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::VisibilityAlpha>>(v1264);
            gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::VisibilityAlpha>>::remove(v1028, v1020);
          }
        }

        v1013 += 8;
      }
    }

    if (v953 == v1238)
    {
      v969 = v951[7];
      v970 = v951[8];
      if (v969 != v970)
      {
        v971 = v951[10];
        do
        {
          v972 = *(v969 + 4);
          v973 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v950 + 4, v972);
          v974 = v950[8];
          if (v974 != v973 && v1272[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v1272 + 4, v972))
          {
            v975 = *v969;
            v976 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v950 + 4, HIDWORD(*v969));
            if (v974 == v976)
            {
              v977 = v950[11];
            }

            else
            {
              v977 = (v950[10] + v976 - v950[7]);
            }

            v978 = *v977;
            v1279.i32[0] = *v971;
            v979 = gdc::Registry::storage<arComponents::VisibilityAlpha>(v1253);
            gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::emplace(v979, v978, v1279.i32);
            v980 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::VisibilityAlpha>>(v1264);
            gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::VisibilityAlpha>>::remove(v980, v975);
          }

          ++v971;
          v969 += 8;
        }

        while (v969 != v970);
      }
    }

    return md::ECSHelpers::updateTagComponent<arComponents::IsVisible>(v1223[15], v1223[16], 0);
  }

  return result;
}

void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, std::__shared_weak_count *a5, __int128 *a6, uint64_t a7, __int128 *a8, uint64_t *a9, __int128 *a10, int *a11)
{
  v71 = *MEMORY[0x1E69E9840];
  v48 = *a3;
  v14 = *(a3 + 2);
  v50 = *(a3 + 24);
  v15 = *(a3 + 5);
  v49 = v14;
  v51 = v15;
  v52 = *(a3 + 6);
  v53 = *(a3 + 56);
  v54 = *(a3 + 9);
  v55 = 0;
  v56 = 0;
  if (a5)
  {
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
    v55 = a4;
    v56 = a5;
  }

  else
  {
    v55 = a4;
  }

  v57 = *a6;
  v58 = *(a6 + 2);
  arComponents::AlbedoTextureComponent::AlbedoTextureComponent(v59, a7);
  v63 = *a8;
  v64 = *a9;
  v65 = *a10;
  v66 = *a11;
  v16 = *a1;
  v38 = v48;
  v39 = v49;
  v40 = v50;
  v41 = v51;
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v36 = 0;
  v37 = 0;
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
    v37 = v56;
  }

  v36 = v55;
  v34 = v57;
  v35 = v58;
  arComponents::AlbedoTextureComponent::AlbedoTextureComponent(v67, v59);
  v33 = v65;
  v47 = v63;
  v46 = v64;
  v45 = v66;
  v17 = *(v16 + 24);
  if (!v17)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v18 = (*(*v17 + 48))(v17, &v38, &v36, &v34, v67, &v47, &v46, &v33, &v45);
  v69 = &unk_1F2A43EB8;

  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v68);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  v19 = a1[1];
  v21 = *(v19 + 8);
  v20 = *(v19 + 16);
  if (v21 >= v20)
  {
    v23 = (v21 - *v19) >> 3;
    if ((v23 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v24 = v20 - *v19;
    v25 = v24 >> 2;
    if (v24 >> 2 <= (v23 + 1))
    {
      v25 = v23 + 1;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      v26 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v26);
    }

    *(8 * v23) = v18;
    v22 = 8 * v23 + 8;
    v27 = *(v19 + 8) - *v19;
    v28 = (8 * v23 - v27);
    memcpy(v28, *v19, v27);
    v29 = *v19;
    *v19 = v28;
    *(v19 + 8) = v22;
    *(v19 + 16) = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v21 = v18;
    v22 = (v21 + 1);
  }

  *(v19 + 8) = v22;
  v30 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(*a1[2]);
  gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::remove(v30, a2);
  v31 = *a1[2];
  *&v38 = v18;
  v32 = gdc::Registry::storage<arComponents::CopiedEntity>(v31);
  gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(v32, a2, &v38);
  v61 = &unk_1F2A43EB8;

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v60);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }
}

void sub_1B31E5A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50, uint64_t a51, void *a52)
{
  *(v52 - 112) = &unk_1F2A43EB8;

  v54 = *(v52 - 120);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v54);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a50);
  }

  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a44);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::OcclusionPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::VisibilityAlpha&)#1}::operator()(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, std::__shared_weak_count *a5, __int128 *a6, int *a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v47 = *a3;
  v10 = *(a3 + 2);
  v49 = *(a3 + 24);
  v11 = *(a3 + 5);
  v48 = v10;
  v50 = v11;
  v12 = *(a3 + 6);
  v45 = *(a3 + 56);
  v46 = *(a3 + 9);
  if (a5)
  {
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = *a6;
  v32 = *(a6 + 2);
  v13 = *a7;
  v14 = *a1;
  v37 = v47;
  v38 = v48;
  v39 = v49;
  v40 = v50;
  v41 = v12;
  v42 = v45;
  v43 = v46;
  v36 = 0;
  if (a5)
  {
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
    v36 = a5;
  }

  v35 = a4;
  v33 = v31;
  v34 = v32;
  v44 = v13;
  v15 = *(v14 + 24);
  if (!v15)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v16 = (*(*v15 + 48))(v15, &v37, &v35, &v33, &v44);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  v17 = a1[1];
  v19 = *(v17 + 8);
  v18 = *(v17 + 16);
  if (v19 >= v18)
  {
    v21 = (v19 - *v17) >> 3;
    if ((v21 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v22 = v18 - *v17;
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v24);
    }

    *(8 * v21) = v16;
    v20 = 8 * v21 + 8;
    v25 = *(v17 + 8) - *v17;
    v26 = (8 * v21 - v25);
    memcpy(v26, *v17, v25);
    v27 = *v17;
    *v17 = v26;
    *(v17 + 8) = v20;
    *(v17 + 16) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v19 = v16;
    v20 = (v19 + 1);
  }

  *(v17 + 8) = v20;
  v28 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(*a1[2]);
  gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::remove(v28, a2);
  v29 = *a1[2];
  *&v37 = v16;
  v30 = gdc::Registry::storage<arComponents::CopiedEntity>(v29);
  gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(v30, a2, &v37);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a5);
  }
}

void sub_1B31E5D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::ShadowPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshComponent&,arComponents::Boundary&,arComponents::StyleColor&,arComponents::VisibilityAlpha&)#1}::operator()(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, std::__shared_weak_count *a5, __int128 *a6, __int128 *a7, int *a8)
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = *a3;
  v11 = *(a3 + 2);
  v52 = *(a3 + 24);
  v12 = *(a3 + 5);
  v51 = v11;
  v53 = v12;
  v13 = *(a3 + 6);
  v48 = *(a3 + 56);
  v49 = *(a3 + 9);
  if (a5)
  {
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = *a6;
  v33 = *(a6 + 2);
  v47 = *a7;
  v14 = *a8;
  v15 = *a1;
  v39 = v50;
  v40 = v51;
  v41 = v52;
  v42 = v53;
  v43 = v13;
  v44 = v48;
  v45 = v49;
  v38 = 0;
  if (a5)
  {
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
    v38 = a5;
  }

  v37 = a4;
  v36 = v33;
  v34 = v47;
  v35 = v32;
  v46 = v14;
  v16 = *(v15 + 24);
  if (!v16)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v17 = (*(*v16 + 48))(v16, &v39, &v37, &v35, &v34, &v46);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  v18 = a1[1];
  v20 = *(v18 + 8);
  v19 = *(v18 + 16);
  if (v20 >= v19)
  {
    v22 = (v20 - *v18) >> 3;
    if ((v22 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v23 = v19 - *v18;
    v24 = v23 >> 2;
    if (v23 >> 2 <= (v22 + 1))
    {
      v24 = v22 + 1;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      v25 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v25);
    }

    *(8 * v22) = v17;
    v21 = 8 * v22 + 8;
    v26 = *(v18 + 8) - *v18;
    v27 = (8 * v22 - v26);
    memcpy(v27, *v18, v26);
    v28 = *v18;
    *v18 = v27;
    *(v18 + 8) = v21;
    *(v18 + 16) = 0;
    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    *v20 = v17;
    v21 = (v20 + 1);
  }

  *(v18 + 8) = v21;
  v29 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(*a1[2]);
  gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::remove(v29, a2);
  v30 = *a1[2];
  *&v39 = v17;
  v31 = gdc::Registry::storage<arComponents::CopiedEntity>(v30);
  gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(v31, a2, &v39);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a5);
  }
}

void sub_1B31E60CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::WorldTransform&,arComponents::MeshDataComponent&,arComponents::AlbedoTextureComponent&,arComponents::AlbedoTextureUVMapping&,arComponents::AlbedoTextureUVScale&,arComponents::Boundary&,arComponents::StyleColor&)#1}::operator()(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t *a7, __int128 *a8, __int128 *a9)
{
  v67 = *MEMORY[0x1E69E9840];
  v46 = *a3;
  v14 = *(a3 + 2);
  v48 = *(a3 + 24);
  v15 = *(a3 + 5);
  v47 = v14;
  v49 = v15;
  v50 = *(a3 + 6);
  v51 = *(a3 + 56);
  v52 = *(a3 + 9);
  v53 = a4;
  arComponents::AlbedoTextureComponent::AlbedoTextureComponent(v54, a5);
  v58 = *a6;
  v59 = *a7;
  v60 = *a8;
  v61 = *(a8 + 2);
  v62 = *a9;
  v16 = *a1;
  v37 = v46;
  v38 = v47;
  v39 = v48;
  v40 = v49;
  v41 = v50;
  v42 = v51;
  v43 = v52;
  v36 = v53;
  arComponents::AlbedoTextureComponent::AlbedoTextureComponent(v63, v54);
  v35 = v61;
  v33 = v62;
  v34 = v60;
  v45 = v58;
  v44 = v59;
  v17 = *(v16 + 24);
  if (!v17)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v18 = (*(*v17 + 48))(v17, &v37, &v36, v63, &v45, &v44, &v34, &v33);
  v65 = &unk_1F2A43EB8;

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v64);
  }

  v19 = a1[1];
  v21 = *(v19 + 8);
  v20 = *(v19 + 16);
  if (v21 >= v20)
  {
    v23 = (v21 - *v19) >> 3;
    if ((v23 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v24 = v20 - *v19;
    v25 = v24 >> 2;
    if (v24 >> 2 <= (v23 + 1))
    {
      v25 = v23 + 1;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      v26 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v26);
    }

    *(8 * v23) = v18;
    v22 = 8 * v23 + 8;
    v27 = *(v19 + 8) - *v19;
    v28 = (8 * v23 - v27);
    memcpy(v28, *v19, v27);
    v29 = *v19;
    *v19 = v28;
    *(v19 + 8) = v22;
    *(v19 + 16) = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v21 = v18;
    v22 = (v21 + 1);
  }

  *(v19 + 8) = v22;
  v30 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(*a1[2]);
  gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::remove(v30, a2);
  v31 = *a1[2];
  *&v37 = v18;
  v32 = gdc::Registry::storage<arComponents::CopiedEntity>(v31);
  gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(v32, a2, &v37);
  v56 = &unk_1F2A43EB8;

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }
}

void sub_1B31E646C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, void *a44)
{
  *(v44 - 96) = &unk_1F2A43EB8;

  v46 = *(v44 - 104);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v46);
  }

  if (a42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a42);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::ECSHelpers::copyComponentsWithoutPipeline<arComponents::TransitionToRenderRegistry,arComponents::AREnvironmentProbeTexture>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(gdc::Entity,arComponents::AREnvironmentProbeTexture&)#1}::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  arComponents::AREnvironmentProbeTexture::AREnvironmentProbeTexture(v22, a3);
  v5 = *a1;
  arComponents::AREnvironmentProbeTexture::AREnvironmentProbeTexture(v24, v22);
  v6 = *(v5 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    goto LABEL_20;
  }

  v7 = (*(*v6 + 48))(v6, v24);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  v8 = a1[1];
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  if (v10 < v9)
  {
    *v10 = v7;
    v11 = (v10 + 1);
    goto LABEL_16;
  }

  v12 = (v10 - *v8) >> 3;
  if ((v12 + 1) >> 61)
  {
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v13 = v9 - *v8;
  v14 = v13 >> 2;
  if (v13 >> 2 <= (v12 + 1))
  {
    v14 = v12 + 1;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v14;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v15);
  }

  *(8 * v12) = v7;
  v11 = 8 * v12 + 8;
  v16 = *(v8 + 8) - *v8;
  v17 = (8 * v12 - v16);
  memcpy(v17, *v8, v16);
  v18 = *v8;
  *v8 = v17;
  *(v8 + 8) = v11;
  *(v8 + 16) = 0;
  if (v18)
  {
    operator delete(v18);
  }

LABEL_16:
  *(v8 + 8) = v11;
  v19 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(*a1[2]);
  gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::remove(v19, a2);
  v20 = *a1[2];
  v24[0] = v7;
  v21 = gdc::Registry::storage<arComponents::CopiedEntity>(v20);
  gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(v21, a2, v24);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }
}

void sub_1B31E6708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<gdc::Entity ()(arComponents::AREnvironmentProbeTexture)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::ECSHelpers::updateTagComponent<arComponents::IsVisible>(uint64_t a1, uint64_t a2, char a3)
{
  v38 = a2;
  v39 = a1;
  result = gdc::Registry::storage<arComponents::CopiedEntity>(a1);
  v7 = result;
  if (a3)
  {
    v8 = *(result + 56);
    v9 = *(result + 64);
    if (v8 != v9)
    {
      v10 = *(result + 80);
      do
      {
        v11 = *v8;
        v12 = HIDWORD(*v8);
        v13 = gdc::Registry::storage<arComponents::IsVisible>(a1);
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v13 + 32), v12);
        v15 = *(v13 + 64);
        v16 = *(v10 + 4);
        v17 = gdc::Registry::storage<arComponents::IsVisible>(a2);
        v18 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v17 + 32), v16);
        v19 = *(v17 + 64);
        if (v15 != Index && v19 == v18)
        {
          v23 = *v10;
          v24 = gdc::Registry::storage<arComponents::IsVisible>(a2);
          gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v24, v23);
        }

        else if (v15 == Index && v19 != v18)
        {
          v22 = gdc::Registry::storage<arComponents::IsVisible>(a2);
          gdc::ComponentStorageWrapper<arComponents::IsVisible>::remove(v22, *v10);
        }

        v25 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::IsVisible>>(a1);
        result = gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::IsVisible>>::remove(v25, v11);
        v10 += 8;
        ++v8;
      }

      while (v8 != v9);
    }
  }

  else
  {
    result = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::IsVisible>>(a1);
    v26 = result;
    v27 = (result + 32);
    v29 = v7[7];
    v28 = v7[8];
    if (*(result + 64) - *(result + 56) >= (v28 - v29))
    {
      v30 = v7 + 4;
    }

    else
    {
      v30 = (result + 32);
    }

    if (v7 + 4 == v30)
    {
      v40 = &v39;
      v41 = &v38;
      if (v29 != v28)
      {
        v31 = v7[10];
        do
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v27, *(v29 + 4));
          if (*(v26 + 64) != result)
          {
            result = md::ECSHelpers::updateTagComponent<arComponents::IsVisible>(gdc::Registry *,gdc::Registry *,BOOL)::{lambda(gdc::Entity,arComponents::CopiedEntity &)#1}::operator()(&v40, *v29, v31);
          }

          v31 += 8;
          v29 += 8;
        }

        while (v29 != v28);
      }
    }

    if (v27 == v30)
    {
      v40 = &v39;
      v41 = &v38;
      v32 = *(v26 + 56);
      v33 = *(v26 + 64);
      while (v32 != v33)
      {
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v7 + 4, *(v32 + 4));
        v34 = v7[8];
        if (v34 != result)
        {
          v35 = *v32;
          v36 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v7 + 4, HIDWORD(*v32));
          if (v34 == v36)
          {
            v37 = v7[11];
          }

          else
          {
            v37 = v7[10] + v36 - v7[7];
          }

          result = md::ECSHelpers::updateTagComponent<arComponents::IsVisible>(gdc::Registry *,gdc::Registry *,BOOL)::{lambda(gdc::Entity,arComponents::CopiedEntity &)#1}::operator()(&v40, v35, v37);
        }

        v32 += 8;
      }
    }
  }

  return result;
}

uint64_t gdc::Registry::storage<arComponents::CopiedEntity>(uint64_t a1)
{
  v3 = 0x3DAC51DBC96F761DLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x3DAC51DBC96F761DuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::QueuedForDeletionAfterLayout>>::remove(void *a1, uint64_t a2)
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

uint64_t gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::StyleColor>>(uint64_t a1)
{
  v3 = 0xE0C3110899EA91FELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xE0C3110899EA91FELL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::StyleColor>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::StyleColor>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::StyleColor>>::~ComponentStorageWrapper(uint64_t a1)
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

void gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::QueuedForDeletionAfterLayout>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::QueuedForDeletionAfterLayout>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::CopiedEntity>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::CopiedEntity>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::CopiedEntity>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL md::ECSHelpers::updateTagComponent<arComponents::IsVisible>(gdc::Registry *,gdc::Registry *,BOOL)::{lambda(gdc::Entity,arComponents::CopiedEntity &)#1}::operator()(uint64_t **a1, unint64_t a2, uint64_t a3)
{
  v6 = HIDWORD(a2);
  v7 = gdc::Registry::storage<arComponents::IsVisible>(**a1);
  Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v7 + 32), v6);
  v9 = *(v7 + 64);
  v10 = *(a3 + 4);
  v11 = gdc::Registry::storage<arComponents::IsVisible>(*a1[1]);
  v12 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v11 + 32), v10);
  v13 = *(v11 + 64);
  if (v9 != Index && v13 == v12)
  {
    v17 = *a3;
    v18 = gdc::Registry::storage<arComponents::IsVisible>(*a1[1]);
    gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v18, v17);
  }

  else if (v9 == Index && v13 != v12)
  {
    v16 = gdc::Registry::storage<arComponents::IsVisible>(*a1[1]);
    gdc::ComponentStorageWrapper<arComponents::IsVisible>::remove(v16, *a3);
  }

  v19 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::IsVisible>>(**a1);

  return gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::IsVisible>>::remove(v19, a2);
}

void sub_1B31E73BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void md::ECSHelpers::copyComponentsWithoutPipeline<arComponents::TransitionToRenderRegistry,arComponents::AREnvironmentProbeTexture>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::AREnvironmentProbeTexture)#1},std::allocator<void md::ECSHelpers::copyComponentsWithoutPipeline<arComponents::TransitionToRenderRegistry,arComponents::AREnvironmentProbeTexture>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::AREnvironmentProbeTexture)#1}>,gdc::Entity ()(arComponents::AREnvironmentProbeTexture)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A40A20;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor)#1},std::allocator<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor)#1}>,gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor)>::operator()(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, __int128 *a5, uint64_t *a6, __int128 *a7, __int128 *a8)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v20 = *a2;
  v21 = *(a2 + 2);
  v22 = *(a2 + 24);
  v23 = *(a2 + 5);
  v24 = *(a2 + 6);
  v25 = *(a2 + 56);
  v26 = *(a2 + 9);
  v19 = *a3;
  arComponents::AlbedoTextureComponent::AlbedoTextureComponent(v29, a4);
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  v18 = *(a7 + 2);
  v16 = *a8;
  v17 = v15;
  v28 = v13;
  v27 = v14;
  gdc::Registry::create(**(a1 + 8));
}

void sub_1B31E7664(_Unwind_Exception *a1)
{
  *(v1 - 96) = &unk_1F2A43EB8;

  v3 = *(v1 - 104);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor)#1},std::allocator<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor)#1}>,gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshDataComponent,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::Boundary,arComponents::StyleColor)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A409A8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::ShadowPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha)#1},std::allocator<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::ShadowPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha)#1}>,gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha)>::operator()(uint64_t a1, __int128 *a2, uint64_t *a3, __int128 *a4, __int128 *a5, int *a6)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  v16 = *(a2 + 24);
  v17 = *(a2 + 5);
  v18 = *(a2 + 6);
  v19 = *(a2 + 56);
  v20 = *(a2 + 9);
  v13 = 0;
  v6 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v13 = v7;
  }

  v12 = v6;
  v8 = *a4;
  v11 = *(a4 + 2);
  v9 = *a5;
  v10 = v8;
  v21 = *a6;
  gdc::Registry::create(**(a1 + 8));
}

void sub_1B31E7890(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::ShadowPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha)#1},std::allocator<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::ShadowPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha)#1}>,gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::StyleColor,arComponents::VisibilityAlpha)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A40930;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::OcclusionPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha)#1},std::allocator<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::OcclusionPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha)#1}>,gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha)>::operator()(uint64_t a1, __int128 *a2, uint64_t *a3, __int128 *a4, int *a5)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  v13 = *(a2 + 24);
  v14 = *(a2 + 5);
  v15 = *(a2 + 6);
  v16 = *(a2 + 56);
  v17 = *(a2 + 9);
  v10 = 0;
  v5 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v10 = v6;
  }

  v9 = v5;
  v7 = *a4;
  v8 = *(a4 + 2);
  v18 = *a5;
  gdc::Registry::create(**(a1 + 8));
}

void sub_1B31E7A74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::OcclusionPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha)#1},std::allocator<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::OcclusionPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha)#1}>,gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::VisibilityAlpha)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A408B8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha)#1},std::allocator<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha)#1}>,gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[6] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  arComponents::AlbedoTextureComponent::AlbedoTextureComponent(v7, a5);
  gdc::Registry::create(**(a1 + 8));
}

void sub_1B31E7D58(_Unwind_Exception *a1)
{
  *(v2 - 96) = &unk_1F2A43EB8;

  v4 = *(v2 - 104);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha)#1},std::allocator<void md::ECSHelpers::copyComponents<arComponents::TransitionToRenderRegistry,arComponents::StandardPipeline,arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha>(gdc::Registry *,gdc::Registry *,std::vector<gdc::Entity> &)::{lambda(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha)#1}>,gdc::Entity ()(arComponents::WorldTransform,arComponents::MeshComponent,arComponents::Boundary,arComponents::AlbedoTextureComponent,arComponents::AlbedoTextureUVMapping,arComponents::AlbedoTextureUVScale,arComponents::StyleColor,arComponents::VisibilityAlpha)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A40750;
  a2[1] = v2;
  return result;
}

uint64_t md::Logic<md::ARRenderEntityGenerationLogic,md::ARRenderEntityGenerationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x51AAE9259E4A5431 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>(uint64_t *a1, void *a2)
{
  v4 = gdc::Context::context<md::ARLogicContext>(a2);
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xA822B3A972ECE7CDLL);
  if (v5 && (v6 = v5[5], *(v6 + 8) == 0xA822B3A972ECE7CDLL))
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x3C394DB2AC35C8uLL);
  if (v8 && (v9 = v8[5], *(v9 + 8) == 0x3C394DB2AC35C8))
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  v11 = gdc::Context::context<md::LabelsExternalMeshContext>(a2);
  result = gdc::Context::context<md::ARApplyWorldTransformUpdatesContext>(a2);
  *a1 = v4;
  a1[1] = v7;
  a1[2] = v10;
  a1[3] = v11;
  a1[4] = result;
  return result;
}