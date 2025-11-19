void sub_1B3126998(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::NamedLabelDedupingGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A34D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelSpacingDedupingGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A34D08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *a1, void *a2)
{
  if (a1)
  {
    a1 = a2[4];
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
    }
  }

  else if (!a2)
  {
    return;
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *>>(v3, a2);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *>(v3, v2);
  }
}

void std::__shared_ptr_emplace<md::MuninPointLabelDedupingGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A34C88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *a1, void *a2)
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

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *>>(v3, a2);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *>(v3, v2);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x40uLL, 0x102004081FDBCCDuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void std::__shared_ptr_emplace<md::Label>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A34C50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelPool::labelForCustomFeature(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, int a6)
{
  v19 = a3;
  *a1 = 0;
  a1[1] = 0;
  v17 = *(*a4 + 72);
  v18 = *a5;
  std::mutex::lock((a2 + 480));
  v9 = std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::find<std::pair<unsigned long long,md::LabelIdentifier>>(a2 + 544, v17, v18);
  if (a2 + 552 == v9)
  {
    std::allocate_shared[abi:nn200100]<md::Label,std::allocator<md::Label>,md::LabelManager *&,std::shared_ptr<md::LabelFeature> const&,md::LabelIdentifier const&,0>();
  }

  v11 = *(v9 + 48);
  v10 = *(v9 + 56);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v11;
  a1[1] = v10;
  std::mutex::unlock((a2 + 480));
  if (a6)
  {
    v12 = v17;
    v13 = v18;
    if (a2 + 232 == std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::find<std::pair<unsigned long long,md::LabelIdentifier>>(a2 + 224, v17, v18))
    {
      v16 = &v17;
      v14 = std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::pair<unsigned long long,md::LabelIdentifier>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long long,md::LabelIdentifier> const&>,std::tuple<>>((a2 + 224), v12, v13, &v16);
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(v14 + 7);
      *(v14 + 6) = v11;
      *(v14 + 7) = v10;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      }

      if ((*(v11 + 1341) & 1) == 0)
      {
        *(v11 + 1341) = 1;
      }

      *(a2 + 758) = 1;
    }
  }
}

void sub_1B3126F74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::erase(void *a1, uint64_t *a2)
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
  if (v7 != a1 + 3)
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
  --a1[5];
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::Label>>(uint64_t a1, uint64_t a2)
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

uint64_t std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

void std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::LabelMapTile>,std::shared_ptr<md::LabelMapTile> const&>(float *a1, unint64_t a2, void *a3)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == a2)
          {
            return;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v14 = mdm::zone_mallocator::instance(a1);
  v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>>(v14);
  *v15 = 0;
  v15[1] = v8;
  v16 = a3[1];
  v15[2] = *a3;
  v15[3] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = (*(a1 + 5) + 1);
  v18 = a1[12];
  if (!v9 || (v18 * v9) < v17)
  {
    v19 = 1;
    if (v9 >= 3)
    {
      v19 = (v9 & (v9 - 1)) != 0;
    }

    v20 = v19 | (2 * v9);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__rehash<true>(a1, v22);
    v9 = *(a1 + 1);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v3);
  if (v24)
  {
    *v15 = *v24;
LABEL_40:
    *v24 = v15;
    goto LABEL_41;
  }

  *v15 = *(a1 + 3);
  *(a1 + 3) = v15;
  *(v23 + 8 * v3) = a1 + 6;
  if (*v15)
  {
    v25 = *(*v15 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v25 >= v9)
      {
        v25 %= v9;
      }
    }

    else
    {
      v25 &= v9 - 1;
    }

    v24 = (*a1 + 8 * v25);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 5);
}

uint64_t *std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result + 1;
  v4 = result[1];
  result[1] = a2[1];
  a2[1] = v4;
  v5 = result[3];
  result[3] = a2[3];
  a2[3] = v5;
  if (result[3])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (a2[1] + 16);
  if (!v5)
  {
    v6 = a2;
  }

  *v6 = (a2 + 1);
  return result;
}

uint64_t md::LabelPool::isPointInActiveRegion(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = *(a2 + 8 * v2);
    if (v4 < *(a1 + 48 + 8 * v2) || v4 >= *(a1 + 64 + 8 * v2))
    {
      return 0;
    }

    v5 = v3;
    v3 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v6 == v7)
  {
    return 0;
  }

  do
  {
    result = 0;
    for (i = 1; ; i = 0)
    {
      v10 = *(a2 + 8 * result);
      if (v10 < *(*v6 + 48 + 8 * result) || v10 >= *(*v6 + 64 + 8 * result))
      {
        break;
      }

      v11 = i;
      result = 1;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }

    result = 0;
    v6 += 2;
  }

  while (v6 != v7);
  return result;
}

uint64_t md::LabelPool::isRectInActiveRegion(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = a2 + 16;
  v4 = 1;
  do
  {
    if (*(a1 + 64 + 8 * v2) <= *(a2 + 8 * v2) || *(a1 + 48 + 8 * v2) >= *(v3 + 8 * v2))
    {
      return 0;
    }

    v5 = v4;
    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v6 == v7)
  {
    return 0;
  }

  do
  {
    result = 0;
    v9 = 1;
    while (*(*v6 + 64 + 8 * result) > *(a2 + 8 * result) && *(*v6 + 48 + 8 * result) < *(v3 + 8 * result))
    {
      v10 = v9;
      v9 = 0;
      result = 1;
      if ((v10 & 1) == 0)
      {
        return result;
      }
    }

    result = 0;
    v6 += 2;
  }

  while (v6 != v7);
  return result;
}

uint64_t md::LabelPool::replacementForLabel(md::LabelPool *this, const md::Label *a2)
{
  v4 = (*(**(a2 + 1) + 160))(*(a2 + 1));
  v5 = (*(**(a2 + 1) + 176))(*(a2 + 1));
  std::mutex::lock((this + 480));
  v6 = *(this + 28);
  if (v6 != (this + 232))
  {
    while (1)
    {
      v7 = *(v6 + 6);
      if (v7 != a2 && *(v7 + 844) && *(v7 + 1352) == 1 && (*(**(v7 + 8) + 216))(*(v7 + 8)))
      {
        break;
      }

LABEL_12:
      v10 = *(v6 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v6 + 2);
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
      if (v11 == (this + 232))
      {
        goto LABEL_18;
      }
    }

    if (v4)
    {
      v8 = (*(**(v7 + 8) + 160))(*(v7 + 8)) == v4;
      if (v5)
      {
LABEL_8:
        v9 = (*(**(v7 + 8) + 176))(*(v7 + 8)) == v5;
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v9 = 0;
LABEL_11:
    if (v8 || v9)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

LABEL_18:
  v7 = 0;
LABEL_19:
  std::mutex::unlock((this + 480));
  return v7;
}

void md::LabelPool::setLocalLabel(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2)
  {
    v6 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    *(a1 + 760) = 0;
    *(a1 + 758) = 1;
  }

  v7 = *a3;
  if (*a3)
  {
    v8 = a3[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = a2[1];
    *a2 = v7;
    a2[1] = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    *(a1 + 760) = 0;
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::ita::PrepareFunctionConstantDescriptorSSAO::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorSSAO::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = md::getStorage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>((**(a1 + 8) + 2280), *a4);
  if (*(result + 24) > 0.01 && **(a1 + 16) == 1)
  {
    v7 = **(a1 + 24);
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 20) = v7 & 1;
  return result;
}

__n128 std::__function::__func<md::ita::PrepareFunctionConstantDescriptorSSAO::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorSSAO::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A34E50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16UseGlobeLightingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UseGlobeLighting>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UseGlobeLighting,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50228;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UseGlobeLighting,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50228;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<md::ita::PrepareFunctionConstantDescriptorGlobeLight::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::UseGlobeLighting const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorGlobeLight::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::UseGlobeLighting const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::UseGlobeLighting const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A34E98;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10UsesShadowEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UsesShadow>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UsesShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50138;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UsesShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50138;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::HasMaterialRasterRenderItem const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsMaterial const&,md::ls::MainPassItem const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13IsNotMercatorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>(void)::metadata;
  IsNot = ecs2::BasicRegistry<void>::storage<md::ls::IsNotMercator>(v3);
  v6 = IsNot[1];
  if (v2 >> 22 < (IsNot[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = IsNot;
        v9 = IsNot[25];
        v10 = IsNot[26];
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsNotMercator,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FAE0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsNotMercator,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FAE0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19UniqueRenderArrayIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueRenderArrayID>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F240;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4F260;
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

void ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F240;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::CheckIfRenderableIsUnique::operator()(ecs2::Query<md::ls::UniqueRenderArrayID const&,md::ls::SharedUniqueID const&>)::$_0,std::allocator<md::ita::CheckIfRenderableIsUnique::operator()(ecs2::Query<md::ls::UniqueRenderArrayID const&,md::ls::SharedUniqueID const&>)::$_0>,void ()(md::ls::UniqueRenderArrayID const&,md::ls::SharedUniqueID const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A35090;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::PrepareFunctionConstantDescriptorTileClipping::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ClippingConstantDataHandle const&,md::ls::SharedUniqueID const*>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorTileClipping::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ClippingConstantDataHandle const&,md::ls::SharedUniqueID const*>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::ClippingConstantDataHandle const&,md::ls::SharedUniqueID const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A351B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::PrepareFunctionConstantDescriptorColorCorrection::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ColorCorrectionDataKeyHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorColorCorrection::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ColorCorrectionDataKeyHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::ColorCorrectionDataKeyHandle const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A351F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::PrepareFunctionConstantDescriptorRoutelineMask::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorRoutelineMask::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A35240;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::ita::PrepareFunctionConstantDescriptorBlendedWater::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ColorRampDataHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorBlendedWater::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ColorRampDataHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::ColorRampDataHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A35288;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A35618;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A35500;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void *std::unique_ptr<geo::Cache<unsigned char,PolylineWithElevation,std::hash<unsigned char>,geo::LRUPolicy>>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (v2[8])
    {
      v3 = v2[7];
      v4 = *(v2[6] + 8);
      v5 = *v3;
      *(v5 + 8) = v4;
      *v4 = v5;
      v2[8] = 0;
      if (v3 != v2 + 6)
      {
        do
        {
          v6 = v3[1];
          std::__function::__alloc_func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy[abi:nn200100]((v3 + 2));
          operator delete(v3);
          v3 = v6;
        }

        while (v6 != v2 + 6);
      }
    }

    v7 = v2[3];
    if (v7)
    {
      do
      {
        v8 = *v7;
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    v9 = v2[1];
    v2[1] = 0;
    if (v9)
    {
      operator delete(v9);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B3129F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, os_unfair_lock_s *a13)
{
  operator delete(v13);
  v16 = v14;
  if ((a11 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
    v16 = a10;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a9);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  os_unfair_lock_unlock(a13 + 18);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a9);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  _Unwind_Resume(a1);
}

void std::vector<geo::Mercator2<double>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

uint64_t geo::dpSimplify<geo::Mercator2<double>>(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, double a6)
{
  v10 = result;
  v11 = a6 * a6;
  __asm { FMOV            V0.2D, #1.0 }

  v34 = _Q0;
  while (1)
  {
    v17 = a2 + 1;
    if (a2 + 1 >= a3)
    {
      break;
    }

    v18 = 0;
    v19 = *(v10 + 16 * a2);
    v20 = vsubq_f64(*(v10 + 16 * a3), v19);
    v21 = vmulq_f64(v20, v20);
    v22 = vaddq_f64(vdupq_laneq_s64(v21, 1), v21);
    v23 = vaddvq_f64(v21);
    v24 = vdivq_f64(v34, v22);
    v25 = 0.0;
    do
    {
      v26 = *(v10 + 16 * v17);
      v27 = 0.0;
      if (v23 > 1.0e-15)
      {
        v28 = vmulq_f64(vsubq_f64(v26, v19), v20);
        v27 = fmin(fmax(vmulq_f64(vaddq_f64(vdupq_laneq_s64(v28, 1), v28), v24).f64[0], 0.0), 1.0);
      }

      v29 = vsubq_f64(v26, vmlaq_n_f64(v19, v20, v27));
      v30 = vaddvq_f64(vmulq_f64(v29, v29));
      if (v30 > v25)
      {
        v18 = v17;
      }

      v25 = fmax(v30, v25);
      ++v17;
    }

    while (a3 != v17);
    if (v25 <= v11)
    {
      break;
    }

    result = geo::dpSimplify<geo::Mercator2<double>>(v10, a6);
    v31 = (v10 + 16 * v18);
    v32 = (*a5)++;
    v33 = (a4 + 16 * v32);
    *v33 = *v31;
    v33[1] = v31[1];
    a2 = v18;
  }

  return result;
}

void geo::dpSimplify<geo::Mercator2<double>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8)
{
  while (1)
  {
    v8 = a8;
    v9 = *(a2 + 8 * a3);
    v31 = *(a1 + 16 * a3);
    v32 = v9;
    v10 = *(a2 + 8 * a4);
    v29 = *(a1 + 16 * a4);
    v30 = v10;
    v11 = a3 + 1;
    if (a3 + 1 >= a4)
    {
      break;
    }

    v12 = a7;
    v13 = a6;
    v14 = a5;
    v15 = a4;
    v16 = a3;
    v17 = a2;
    v18 = a1;
    v19 = 0;
    v20 = 0.0;
    do
    {
      v21 = *(v17 + 8 * v11);
      v27 = *(v18 + 16 * v11);
      v28 = v21;
      v22 = gm::Matrix<double,3,1>::distanceSquaredToLineSegment<int,void>(&v27, &v31, &v29, &v33);
      if (v22 > v20)
      {
        v19 = v11;
      }

      v20 = fmax(v22, v20);
      ++v11;
    }

    while (v15 != v11);
    if (v20 <= v8 * v8)
    {
      break;
    }

    geo::dpSimplify<geo::Mercator2<double>>(v18, v17, v16, v19, v14, v13, v12, v8);
    v23 = (v18 + 16 * v19);
    v24 = *v12;
    v25 = (v14 + 16 * *v12);
    *v25 = *v23;
    v25[1] = v23[1];
    v26 = *(v17 + 8 * v19);
    *v12 = v24 + 1;
    *(v13 + 8 * v24) = v26;
    a1 = v18;
    a2 = v17;
    a8 = v8;
    a3 = v19;
    a4 = v15;
    a5 = v14;
    a6 = v13;
    a7 = v12;
  }
}

void std::__shared_ptr_emplace<std::vector<double>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<double>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A35858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<std::vector<geo::Mercator2<double>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<geo::Mercator2<double>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A35820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B312AAEC(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312AC0C(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312AD3C(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312AE2C(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312AF1C(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312B064(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312B2C8(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void _colorFromCGColor(CGColor *a1, double a2, CGColor *a3)
{
  if (a3 && (v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]), CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v5, kCGRenderingIntentDefault, a3, 0), CFRelease(v5), CopyByMatchingToColorSpace))
  {
    Components = CGColorGetComponents(CopyByMatchingToColorSpace);
    *a1 = vcvt_hight_f32_f64(vcvt_f32_f64(*Components), Components[1]);

    CGColorRelease(CopyByMatchingToColorSpace);
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }
}

void sub_1B312B88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16)
{
  os_unfair_lock_unlock(v17 + 49);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B312B9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VKVectorOverlayPolylineGroup;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B312BCE8(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312C068(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312C250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKVectorOverlayCircle;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B312C974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, char a30)
{
  ggl::BufferMemory::~BufferMemory(&a22);
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a29);
  }

  ggl::BufferMemory::~BufferMemory(&a30);
  v33 = *(v31 - 144);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  v34 = 184;
  while (1)
  {
    v35 = *(&v30->__vftable + v34);
    *(&v30->__vftable + v34) = 0;
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v34 -= 8;
    if (v34 == 152)
    {
      while (1)
      {
        v36 = *(&v30->__vftable + v34);
        *(&v30->__vftable + v34) = 0;
        if (v36)
        {
          (*(*v36 + 8))(v36);
        }

        v34 -= 8;
        if (v34 == 120)
        {
          while (1)
          {
            v37 = *(&v30->__vftable + v34);
            if (v37)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v37);
            }

            v34 -= 16;
            if (v34 == 88)
            {
              shared_weak_owners = v30[3].__shared_weak_owners_;
              v30[3].__shared_weak_owners_ = 0;
              if (shared_weak_owners)
              {
                (*(*shared_weak_owners + 8))(shared_weak_owners);
              }

              v39 = v30[2].__shared_weak_owners_;
              if (v39)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v39);
              }

              std::__shared_weak_count::~__shared_weak_count(v30);
              operator delete(v40);

              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

void std::__shared_ptr_emplace<md::CircleOverlayRenderable>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 184;
  do
  {
    v4 = *(v3 + v2);
    *(v3 + v2) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v2 -= 8;
  }

  while (v2 != -32);
  v5 = 0;
  v6 = a1 + 152;
  do
  {
    v7 = *(v6 + v5);
    *(v6 + v5) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v5 -= 8;
  }

  while (v5 != -32);
  for (i = 0; i != -32; i -= 16)
  {
    v9 = *(a1 + 120 + i);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  v10 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 64);
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

void std::__shared_ptr_emplace<md::CircleOverlayRenderable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A358C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::CircleOverlayRenderable::Style>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A35890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::unique_ptr<geo::Cache<unsigned char,std::shared_ptr<geo::Polygon2<double>>,std::hash<unsigned char>,geo::LRUPolicy>>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (v2[8])
    {
      v3 = v2[7];
      v4 = *(v2[6] + 8);
      v5 = *v3;
      *(v5 + 8) = v4;
      *v4 = v5;
      v2[8] = 0;
      if (v3 != v2 + 6)
      {
        do
        {
          v6 = v3[1];
          v7 = v3[4];
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v7);
          }

          operator delete(v3);
          v3 = v6;
        }

        while (v6 != v2 + 6);
      }
    }

    v8 = v2[3];
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

    v10 = v2[1];
    v2[1] = 0;
    if (v10)
    {
      operator delete(v10);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B312D8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_unfair_lock_s *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *__p)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(a11 + 10);
  _Unwind_Resume(a1);
}

void geo::Cache<unsigned char,std::shared_ptr<geo::Polygon2<double>>,std::hash<unsigned char>,geo::LRUPolicy>::insert(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>((a1 + 8), *a2);
  if (v5)
  {
    v6 = v5;
    v7 = v5[3];
    v9 = *v7;
    v8 = v7[1];
    *(v9 + 8) = v8;
    *v8 = v9;
    --*(a1 + 64);
    v10 = v7[4];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    operator delete(v7);
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((a1 + 8), v6);
  }

  operator new();
}

void sub_1B312DEA8(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,false>(uint64_t *a1, unint64_t a2, uint64_t **a3, uint64_t a4, char a5)
{
LABEL_1:
  v10 = (a2 - 24);
  v215 = (a2 - 16);
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(v11, (v11 + 24), (a2 - 24), a3);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(v11, v11 + 24, (v11 + 48), (a2 - 24), a3);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(v11, v11 + 24, v11 + 48, (v11 + 72), (a2 - 24), a3);
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v94 = *(a2 - 24);
        if (*(a2 - 8) == *(v11 + 16))
        {
          v95 = *v11;
LABEL_184:
          v96 = **a3;
          v97 = (v96 + 16 * v94);
          v98 = (v96 + 16 * v95);
          if (*v97 >= *v98 && (*v97 != *v98 || v97[1] >= v98[1]))
          {
            return;
          }
        }

        else
        {
          v95 = *v11;
          if (v94 != *(v11 + 8) || *v215 != v95)
          {
            goto LABEL_184;
          }

          if (!*(a2 - 8))
          {
            return;
          }
        }

        v225 = *(v11 + 16);
        v220 = *v11;
        v199 = *v10;
        *(v11 + 16) = *(a2 - 8);
        *v11 = v199;
        *(a2 - 8) = v225;
        *v10 = v220;
        return;
      }
    }

    if (v12 <= 575)
    {
      break;
    }

    if (!a4)
    {
      if (v11 == a2)
      {
        return;
      }

      v122 = (v13 - 2) >> 1;
      v123 = v122;
      while (1)
      {
        v124 = v123;
        if (v122 < v123)
        {
          goto LABEL_288;
        }

        v125 = (2 * v123) | 1;
        v126 = v11 + 24 * v125;
        if (2 * v124 + 2 < v13)
        {
          v127 = *v126;
          if (*(v126 + 16) == *(v126 + 40))
          {
            v128 = *(v126 + 24);
          }

          else
          {
            v128 = *(v126 + 24);
            if (v127 == *(v126 + 32) && *(v126 + 8) == v128)
            {
              if (!*(v126 + 16))
              {
                goto LABEL_250;
              }

LABEL_249:
              v126 += 24;
              v125 = 2 * v124 + 2;
              goto LABEL_250;
            }
          }

          v130 = **a3;
          v131 = (v130 + 16 * v127);
          v132 = (v130 + 16 * v128);
          if (*v131 < *v132 || *v131 == *v132 && v131[1] < v132[1])
          {
            goto LABEL_249;
          }
        }

LABEL_250:
        v133 = v11 + 24 * v124;
        v134 = *(v126 + 16);
        v135 = *(v133 + 16);
        v136 = *v126;
        if (v134 == v135)
        {
          v137 = *v133;
LABEL_256:
          v139 = **a3;
          v140 = (v139 + 16 * v136);
          v141 = (v139 + 16 * v137);
          if (*v140 < *v141 || *v140 == *v141 && v140[1] < v141[1])
          {
            goto LABEL_288;
          }

          goto LABEL_261;
        }

        v137 = *v133;
        if (v136 != *(v133 + 8) || *(v126 + 8) != v137)
        {
          goto LABEL_256;
        }

        if (v134)
        {
          goto LABEL_288;
        }

LABEL_261:
        v142 = *(v133 + 8);
        do
        {
          while (1)
          {
            v143 = *v126;
            *(v133 + 16) = *(v126 + 16);
            *v133 = v143;
            if (v122 < v125)
            {
              goto LABEL_287;
            }

            v133 = v126;
            v144 = 2 * v125;
            v125 = (2 * v125) | 1;
            v126 = v11 + 24 * v125;
            v145 = v144 + 2;
            if (v145 < v13)
            {
              v146 = *v126;
              if (*(v126 + 16) == *(v126 + 40))
              {
                v147 = *(v126 + 24);
LABEL_270:
                v149 = **a3;
                v150 = (v149 + 16 * v146);
                v151 = (v149 + 16 * v147);
                if (*v150 >= *v151 && (*v150 != *v151 || v150[1] >= v151[1]))
                {
                  goto LABEL_276;
                }

LABEL_275:
                v126 += 24;
                v125 = v145;
                goto LABEL_276;
              }

              v147 = *(v126 + 24);
              if (v146 != *(v126 + 32) || *(v126 + 8) != v147)
              {
                goto LABEL_270;
              }

              if (*(v126 + 16))
              {
                goto LABEL_275;
              }
            }

LABEL_276:
            v152 = *(v126 + 16);
            v153 = *v126;
            if (v152 == v135)
            {
              break;
            }

            if (v153 != v142 || *(v126 + 8) != v137)
            {
              break;
            }

            if (v152)
            {
              goto LABEL_286;
            }
          }

          v155 = **a3;
          v156 = (v155 + 16 * v153);
          v157 = (v155 + 16 * v137);
        }

        while (*v156 >= *v157 && (*v156 != *v157 || v156[1] >= v157[1]));
LABEL_286:
        v126 = v133;
LABEL_287:
        *v126 = v137;
        *(v126 + 8) = v142;
        *(v126 + 16) = v135;
LABEL_288:
        v123 = v124 - 1;
        if (!v124)
        {
          v158 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
          while (1)
          {
            v159 = 0;
            v224 = *(v11 + 16);
            v219 = *v11;
            v160 = v11;
            do
            {
              v161 = v160;
              v162 = &v160[3 * v159];
              v160 = v162 + 3;
              v163 = 2 * v159;
              v159 = (2 * v159) | 1;
              v164 = v163 + 2;
              if (v164 >= v158)
              {
                goto LABEL_304;
              }

              v165 = v162 + 6;
              v166 = *(v162 + 40);
              v167 = v162[3];
              if (v166 == *(v162 + 64))
              {
                v168 = *v165;
              }

              else
              {
                v168 = v162[6];
                v169 = v162[7];
                v170 = v162[4];
                if (v167 == v169 && v170 == v168)
                {
                  if (!v166)
                  {
                    goto LABEL_304;
                  }

LABEL_303:
                  v160 = v165;
                  v159 = v164;
                  goto LABEL_304;
                }
              }

              v172 = **a3;
              v173 = (v172 + 16 * v167);
              v174 = (v172 + 16 * v168);
              if (*v173 < *v174 || *v173 == *v174 && v173[1] < v174[1])
              {
                goto LABEL_303;
              }

LABEL_304:
              v175 = *v160;
              *(v161 + 16) = *(v160 + 16);
              *v161 = v175;
            }

            while (v159 <= (v158 - 2) / 2);
            a2 -= 24;
            if (v160 == a2)
            {
              *(v160 + 16) = v224;
              *v160 = v219;
              goto LABEL_334;
            }

            v176 = *a2;
            *(v160 + 16) = *(a2 + 16);
            *v160 = v176;
            *(a2 + 16) = v224;
            *a2 = v219;
            v177 = v160 - v11 + 24;
            if (v177 < 25)
            {
              goto LABEL_334;
            }

            v178 = 0xAAAAAAAAAAAAAAABLL * (v177 >> 3) - 2;
            v179 = v178 >> 1;
            v180 = v11 + 24 * (v178 >> 1);
            v181 = *(v160 + 16);
            v182 = *v180;
            if (*(v180 + 16) == v181)
            {
              v183 = *v160;
LABEL_314:
              v185 = **a3;
              v186 = (v185 + 16 * v182);
              v187 = (v185 + 16 * v183);
              if (*v186 >= *v187 && (*v186 != *v187 || v186[1] >= v187[1]))
              {
                goto LABEL_334;
              }
            }

            else
            {
              v183 = *v160;
              if (v182 != v160[1] || *(v180 + 8) != v183)
              {
                goto LABEL_314;
              }

              if (!*(v180 + 16))
              {
                goto LABEL_334;
              }
            }

            v188 = v160[1];
            v189 = *v180;
            *(v160 + 16) = *(v180 + 16);
            *v160 = v189;
            if (v178 < 2)
            {
              goto LABEL_333;
            }

            while (2)
            {
              v190 = v180;
              v191 = v179 - 1;
              v179 = (v179 - 1) >> 1;
              v180 = v11 + 24 * v179;
              v192 = *v180;
              if (*(v180 + 16) != v181 && v192 == v188 && *(v180 + 8) == v183)
              {
                if (!*(v180 + 16))
                {
                  goto LABEL_332;
                }

LABEL_330:
                v197 = *v180;
                *(v190 + 16) = *(v180 + 16);
                *v190 = v197;
                if (v191 <= 1)
                {
                  goto LABEL_333;
                }

                continue;
              }

              break;
            }

            v194 = **a3;
            v195 = (v194 + 16 * v192);
            v196 = (v194 + 16 * v183);
            if (*v195 < *v196 || *v195 == *v196 && v195[1] < v196[1])
            {
              goto LABEL_330;
            }

LABEL_332:
            v180 = v190;
LABEL_333:
            *v180 = v183;
            *(v180 + 8) = v188;
            *(v180 + 16) = v181;
LABEL_334:
            if (v158-- <= 2)
            {
              return;
            }
          }
        }
      }
    }

    v14 = v13 >> 1;
    v15 = v11 + 24 * (v13 >> 1);
    if (v12 < 0xC01)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(&a1[3 * v14], a1, (a2 - 24), a3);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, &a1[3 * v14], (a2 - 24), a3);
      v16 = 3 * v14;
      v17 = &a1[3 * v14 - 3];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1 + 3, v17, (a2 - 48), a3);
      v18 = &a1[v16 + 3];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1 + 6, v18, (a2 - 72), a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(v17, v15, v18, a3);
      v221 = a1[2];
      v216 = *a1;
      v19 = *(v15 + 16);
      *a1 = *v15;
      *(a1 + 16) = v19;
      *(v15 + 16) = v221;
      *v15 = v216;
    }

    --a4;
    if (a5)
    {
      v20 = *a1;
      v21 = *(a1 + 16);
LABEL_21:
      v27 = a1[1];
      v28 = *a3;
      for (i = a1 + 3; ; i += 3)
      {
        v30 = *i;
        if (*(i + 16) == v21)
        {
          break;
        }

        if (v30 != v27 || i[1] != v20)
        {
          break;
        }

        if (!*(i + 16))
        {
          goto LABEL_33;
        }

LABEL_32:
        ;
      }

      v32 = (*v28 + 16 * v30);
      v33 = (*v28 + 16 * v20);
      if (*v32 < *v33 || *v32 == *v33 && v32[1] < v33[1])
      {
        goto LABEL_32;
      }

LABEL_33:
      j = a2 - 24;
      if (i - 3 != a1)
      {
        while (1)
        {
          v35 = *(j + 16);
          v36 = *j;
          if (v35 != v21 && (v36 == v27 ? (v37 = *(j + 8) == v20) : (v37 = 0), v37))
          {
            if (v35)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v38 = (*v28 + 16 * v36);
            v39 = (*v28 + 16 * v20);
            if (*v38 < *v39 || *v38 == *v39 && v38[1] < v39[1])
            {
              goto LABEL_65;
            }
          }

          j -= 24;
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = a2 - 24; ; j -= 24)
        {
          v40 = *(j + 16);
          v41 = *j;
          if (v40 != v21 && (v41 == v27 ? (v42 = *(j + 8) == v20) : (v42 = 0), v42))
          {
            if (i >= j || (v40 & 1) != 0)
            {
              break;
            }
          }

          else
          {
            v43 = (*v28 + 16 * v41);
            v44 = (*v28 + 16 * v20);
            if (*v43 < *v44)
            {
              break;
            }

            if (*v43 == *v44)
            {
              if (v43[1] < v44[1] || i >= j)
              {
                break;
              }
            }

            else if (i >= j)
            {
              break;
            }
          }
        }
      }

LABEL_65:
      v11 = i;
      if (i < j)
      {
        v11 = i;
        v46 = j;
        do
        {
          v222 = *(v11 + 16);
          v217 = *v11;
          v47 = *v46;
          *(v11 + 16) = *(v46 + 16);
          *v11 = v47;
          *(v46 + 16) = v222;
          *v46 = v217;
          v48 = *a3;
          do
          {
            while (1)
            {
              v11 += 24;
              v49 = *v11;
              if (*(v11 + 16) != v21 && v49 == v27 && *(v11 + 8) == v20)
              {
                break;
              }

              v51 = (*v48 + 16 * v49);
              v52 = (*v48 + 16 * v20);
              if (*v51 >= *v52 && (*v51 != *v52 || v51[1] >= v52[1]))
              {
                goto LABEL_80;
              }
            }
          }

          while (*(v11 + 16));
          do
          {
LABEL_80:
            while (1)
            {
              v46 -= 24;
              v53 = *(v46 + 16);
              v54 = *v46;
              if (v53 == v21)
              {
                break;
              }

              if (v54 != v27 || *(v46 + 8) != v20)
              {
                break;
              }

              if (v53)
              {
                goto LABEL_88;
              }
            }

            v56 = (*v48 + 16 * v54);
            v57 = (*v48 + 16 * v20);
          }

          while (*v56 >= *v57 && (*v56 != *v57 || v56[1] >= v57[1]));
LABEL_88:
          ;
        }

        while (v11 < v46);
      }

      if ((v11 - 24) != a1)
      {
        v58 = *(v11 - 24);
        *(a1 + 16) = *(v11 - 8);
        *a1 = v58;
      }

      *(v11 - 24) = v20;
      *(v11 - 16) = v27;
      *(v11 - 8) = v21;
      if (i < j)
      {
LABEL_94:
        std::__introsort<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,false>(a1, v11 - 24, a3, a4, a5 & 1);
        a5 = 0;
      }

      else
      {
        v59 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*>(a1, v11 - 24, a3);
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*>(v11, a2, a3))
        {
          a2 = v11 - 24;
          if (v59)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v59)
        {
          goto LABEL_94;
        }
      }
    }

    else
    {
      v22 = *(a1 - 8);
      v21 = *(a1 + 16);
      v23 = *(a1 - 3);
      if (v22 == v21)
      {
        v20 = *a1;
LABEL_18:
        v24 = **a3;
        v25 = (v24 + 16 * v23);
        v26 = (v24 + 16 * v20);
        if (*v25 < *v26 || *v25 == *v26 && v25[1] < v26[1])
        {
          goto LABEL_21;
        }

        goto LABEL_98;
      }

      v20 = *a1;
      if (v23 != a1[1] || *(a1 - 2) != v20)
      {
        goto LABEL_18;
      }

      if (v22)
      {
        goto LABEL_21;
      }

LABEL_98:
      v60 = a1[1];
      v61 = *(a2 - 8);
      if (v21 == v61)
      {
        v62 = *v10;
      }

      else
      {
        v62 = *v10;
        if (v20 == *v215 && v60 == v62)
        {
          if (*(a1 + 16))
          {
            v63 = *a3;
LABEL_108:
            v11 = (a1 + 3);
            while (2)
            {
              if (v21 == *(v11 + 16))
              {
                v67 = *v11;
LABEL_115:
                v69 = (*v63 + 16 * v20);
                v70 = (*v63 + 16 * v67);
                if (*v69 < *v70 || *v69 == *v70 && v69[1] < v70[1])
                {
                  goto LABEL_135;
                }
              }

              else
              {
                v67 = *v11;
                if (v20 != *(v11 + 8) || v60 != v67)
                {
                  goto LABEL_115;
                }

                if (v21)
                {
                  goto LABEL_135;
                }
              }

              v11 += 24;
              continue;
            }
          }

          goto LABEL_121;
        }
      }

      v63 = *a3;
      v64 = **a3;
      v65 = (v64 + 16 * v20);
      v66 = (v64 + 16 * v62);
      if (*v65 < *v66 || *v65 == *v66 && v65[1] < v66[1])
      {
        goto LABEL_108;
      }

LABEL_121:
      v11 = (a1 + 3);
      if ((a1 + 3) < a2)
      {
        v71 = *a3;
        do
        {
          if (v21 == *(v11 + 16))
          {
            v72 = *v11;
          }

          else
          {
            v72 = *v11;
            if (v20 == *(v11 + 8) && v60 == v72)
            {
              if (v21)
              {
                break;
              }

              goto LABEL_134;
            }
          }

          v74 = (*v71 + 16 * v20);
          v75 = (*v71 + 16 * v72);
          if (*v74 < *v75 || *v74 == *v75 && v74[1] < v75[1])
          {
            break;
          }

LABEL_134:
          v11 += 24;
        }

        while (v11 < a2);
      }

LABEL_135:
      v76 = a2;
      if (v11 >= a2)
      {
        goto LABEL_173;
      }

      v77 = *a3;
      v78 = (a2 - 16);
      while (v21 != v61)
      {
        v79 = *(v78 - 1);
        if (v20 != *v78 || v60 != v79)
        {
          goto LABEL_143;
        }

        if (!*(a1 + 16))
        {
          goto LABEL_149;
        }

LABEL_148:
        LOBYTE(v61) = *(v78 - 16);
        v78 -= 3;
      }

      v79 = *(v78 - 1);
LABEL_143:
      v81 = (*v77 + 16 * v20);
      v82 = (*v77 + 16 * v79);
      if (*v81 < *v82 || *v81 == *v82 && v81[1] < v82[1])
      {
        goto LABEL_148;
      }

LABEL_149:
      v76 = v78 - 1;
LABEL_173:
      if (v11 < v76)
      {
        v223 = *(v11 + 16);
        v218 = *v11;
        v83 = *v76;
        *(v11 + 16) = *(v76 + 16);
        *v11 = v83;
        *(v76 + 16) = v223;
        *v76 = v218;
        v84 = *a3;
        while (1)
        {
          v11 += 24;
          if (v21 == *(v11 + 16))
          {
            v85 = *v11;
LABEL_157:
            v87 = (*v84 + 16 * v20);
            v88 = (*v84 + 16 * v85);
            if (*v87 < *v88 || *v87 == *v88 && v87[1] < v88[1])
            {
              while (1)
              {
LABEL_164:
                v76 -= 3;
                if (v21 == *(v76 + 16))
                {
                  v89 = *v76;
LABEL_170:
                  v91 = (*v84 + 16 * v20);
                  v92 = (*v84 + 16 * v89);
                  if (*v91 >= *v92 && (*v91 != *v92 || v91[1] >= v92[1]))
                  {
                    goto LABEL_173;
                  }
                }

                else
                {
                  v89 = *v76;
                  if (v20 != v76[1] || v60 != v89)
                  {
                    goto LABEL_170;
                  }

                  if (!v21)
                  {
                    goto LABEL_173;
                  }
                }
              }
            }
          }

          else
          {
            v85 = *v11;
            if (v20 != *(v11 + 8) || v60 != v85)
            {
              goto LABEL_157;
            }

            if (v21)
            {
              goto LABEL_164;
            }
          }
        }
      }

      if ((v11 - 24) != a1)
      {
        v93 = *(v11 - 24);
        *(a1 + 16) = *(v11 - 8);
        *a1 = v93;
      }

      a5 = 0;
      *(v11 - 24) = v20;
      *(v11 - 16) = v60;
      *(v11 - 8) = v21;
    }
  }

  v99 = (v11 + 24);
  v101 = v11 == a2 || v99 == a2;
  if ((a5 & 1) == 0)
  {
    if (v101)
    {
      return;
    }

    while (1)
    {
      v200 = a1;
      a1 = v99;
      v201 = *(v200 + 40);
      v202 = v200[3];
      if (v201 == *(v200 + 16))
      {
        break;
      }

      v203 = *v200;
      if (v202 != v200[1] || v200[4] != v203)
      {
        goto LABEL_348;
      }

      if (*(v200 + 40))
      {
        goto LABEL_353;
      }

LABEL_366:
      v99 = a1 + 3;
      if (a1 + 3 == a2)
      {
        return;
      }
    }

    v203 = *v200;
LABEL_348:
    v205 = **a3;
    v206 = (v205 + 16 * v202);
    v207 = (v205 + 16 * v203);
    if (*v206 >= *v207 && (*v206 != *v207 || v206[1] >= v207[1]))
    {
      goto LABEL_366;
    }

LABEL_353:
    v208 = v200[4];
    while (1)
    {
      v209 = v200;
      *(v200 + 3) = *v200;
      *(v200 + 40) = *(v200 + 16);
      v200 -= 3;
      if (v201 == *(v209 - 8))
      {
        v210 = *v200;
LABEL_360:
        v212 = **a3;
        v213 = (v212 + 16 * v202);
        v214 = (v212 + 16 * v210);
        if (*v213 >= *v214 && (*v213 != *v214 || v213[1] >= v214[1]))
        {
LABEL_365:
          *v209 = v202;
          v209[1] = v208;
          *(v209 + 16) = v201;
          goto LABEL_366;
        }
      }

      else
      {
        v210 = *(v209 - 3);
        if (v202 != *(v209 - 2) || v208 != v210)
        {
          goto LABEL_360;
        }

        if ((v201 & 1) == 0)
        {
          goto LABEL_365;
        }
      }
    }
  }

  if (v101)
  {
    return;
  }

  v102 = 0;
  v103 = v11;
  while (2)
  {
    v104 = v103;
    v103 = v99;
    v105 = *(v104 + 40);
    v106 = *(v104 + 24);
    if (v105 == *(v104 + 16))
    {
      v107 = *v104;
LABEL_209:
      v109 = **a3;
      v110 = (v109 + 16 * v106);
      v111 = (v109 + 16 * v107);
      if (*v110 >= *v111 && (*v110 != *v111 || v110[1] >= v111[1]))
      {
        goto LABEL_232;
      }
    }

    else
    {
      v107 = *v104;
      if (v106 != *(v104 + 8) || *(v104 + 32) != v107)
      {
        goto LABEL_209;
      }

      if (!*(v104 + 40))
      {
        goto LABEL_232;
      }
    }

    v112 = *(v104 + 32);
    *v103 = *v104;
    *(v103 + 16) = *(v104 + 16);
    v113 = v11;
    if (v104 == v11)
    {
      goto LABEL_231;
    }

    v114 = v102;
    while (2)
    {
      v115 = v11 + v114;
      v116 = (v11 + v114 - 24);
      if (v105 == *(v11 + v114 - 8))
      {
        v117 = *v116;
LABEL_222:
        v119 = **a3;
        v120 = (v119 + 16 * v106);
        v121 = (v119 + 16 * v117);
        if (*v120 >= *v121 && (*v120 != *v121 || v120[1] >= v121[1]))
        {
          v113 = v104;
          goto LABEL_231;
        }

        goto LABEL_227;
      }

      v117 = *v116;
      if (v106 != *(v115 - 16) || v112 != v117)
      {
        goto LABEL_222;
      }

      if (v105)
      {
LABEL_227:
        v104 -= 24;
        *v115 = *v116;
        *(v115 + 16) = *(v11 + v114 - 8);
        v114 -= 24;
        if (!v114)
        {
          v113 = v11;
          goto LABEL_231;
        }

        continue;
      }

      break;
    }

    v113 = v11 + v114;
LABEL_231:
    *v113 = v106;
    *(v113 + 8) = v112;
    *(v113 + 16) = v105;
LABEL_232:
    v99 = (v103 + 24);
    v102 += 24;
    if (v103 + 24 != a2)
    {
      continue;
    }

    break;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

BOOL gm::LineSegment<double,2>::intersects<double,void>(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3)
{
  v4 = 0.0;
  v5 = 0.0;
  result = gm::LineSegment<double,2>::intersect<double,void>(a1, a2, &v5, &v4, a3);
  if (result)
  {
    return v5 >= 0.0 && v5 <= 1.0 && v4 >= 0.0 && v4 <= 1.0;
  }

  return result;
}

BOOL geo::Intersect::SHSegmentComparator<double>::operator()(float64x2_t *a1, float64x2_t *a2)
{
  if (*&a1->f64[0] == *&a2->f64[0] && *&a1->f64[1] == *&a2->f64[1])
  {
    v3 = *a1;
    v5 = vaddq_f64(a1[1], *a1);
    v4 = *a2;
    v6 = vaddq_f64(a2[1], *a2);
    if (*&v5.f64[0] == *&v6.f64[0] && *&v5.f64[1] == *&v6.f64[1])
    {
      return 0;
    }
  }

  else
  {
    v3.f64[0] = a1->f64[0];
    v4.f64[0] = a2->f64[0];
  }

  if (v3.f64[0] > v4.f64[0])
  {
    v8 = a2[1].f64[0];
    v9 = a2[1].f64[1];
    v10 = a1->f64[1] - a2->f64[1];
    v11 = v3.f64[0] - v4.f64[0];
    v12 = -(v9 * v11 - v10 * v8);
    v13 = v12 < 0.0;
    if (v12 == 0.0)
    {
      return (v10 + a1[1].f64[1]) * v8 <= (v11 + a1[1].f64[0]) * v9;
    }

    return v13;
  }

  v16 = a1->f64[1];
  v15 = a1[1].f64[0];
  v17 = a1[1].f64[1];
  v18 = a2->f64[1];
  v19 = v4.f64[0] - v3.f64[0];
  v20 = -(v17 * v19 - (v18 - v16) * v15);
  v21 = v20 <= 0.0;
  if (v20 == 0.0)
  {
    if (v3.f64[0] == v15 + v3.f64[0])
    {
      return v16 < v18;
    }

    v21 = (v18 - v16 + a2[1].f64[1]) * v15 <= (v19 + a2[1].f64[0]) * v17;
  }

  return !v21;
}

uint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v4 = *(a2 + 16);
  v5 = *a2;
  if (v4 == *(result + 16))
  {
    v6 = *result;
    goto LABEL_7;
  }

  v6 = *result;
  if (v5 != result[1] || a2[1] != v6)
  {
LABEL_7:
    v8 = **a4;
    v9 = (v8 + 16 * v5);
    v10 = (v8 + 16 * v6);
    if (*v9 >= *v10 && (*v9 != *v10 || v9[1] >= v10[1]))
    {
      goto LABEL_10;
    }

LABEL_16:
    v15 = *a3;
    if (*(a3 + 16) != v4 && v15 == a2[1] && a3[1] == v5)
    {
      if (*(a3 + 16))
      {
LABEL_29:
        v28 = *result;
        v29 = result[2];
        v30 = *(a3 + 16);
        *result = *a3;
        *(result + 16) = v30;
LABEL_47:
        *(a3 + 16) = v29;
        *a3 = v28;
        return result;
      }
    }

    else
    {
      v16 = **a4;
      v17 = (v16 + 16 * v15);
      v18 = (v16 + 16 * v5);
      if (*v17 < *v18 || *v17 == *v18 && v17[1] < v18[1])
      {
        goto LABEL_29;
      }
    }

    v19 = *result;
    v20 = result[2];
    v21 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v21;
    *(a2 + 16) = v20;
    *a2 = v19;
    v22 = v20;
    v23 = *a3;
    if (*(a3 + 16) == v22)
    {
      v24 = *a2;
    }

    else
    {
      v24 = *a2;
      if (v23 == a2[1] && a3[1] == v24)
      {
        if (!*(a3 + 16))
        {
          return result;
        }

LABEL_46:
        v28 = *a2;
        v29 = a2[2];
        v42 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v42;
        goto LABEL_47;
      }
    }

    v25 = **a4;
    v26 = (v25 + 16 * v23);
    v27 = (v25 + 16 * v24);
    if (*v26 >= *v27 && (*v26 != *v27 || v26[1] >= v27[1]))
    {
      return result;
    }

    goto LABEL_46;
  }

  if (v4)
  {
    goto LABEL_16;
  }

LABEL_10:
  v11 = *a3;
  if (*(a3 + 16) != v4 && v11 == a2[1] && a3[1] == v5)
  {
    if (!*(a3 + 16))
    {
      return result;
    }

LABEL_33:
    v31 = *a2;
    v32 = a2[2];
    v33 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v33;
    *(a3 + 16) = v32;
    *a3 = v31;
    v34 = *a2;
    if (*(a2 + 16) == *(result + 16))
    {
      v35 = *result;
    }

    else
    {
      v35 = *result;
      if (v34 == result[1] && a2[1] == v35)
      {
        if (!*(a2 + 16))
        {
          return result;
        }

        goto LABEL_42;
      }
    }

    v36 = **a4;
    v37 = (v36 + 16 * v34);
    v38 = (v36 + 16 * v35);
    if (*v37 >= *v38 && (*v37 != *v38 || v37[1] >= v38[1]))
    {
      return result;
    }

LABEL_42:
    v39 = *result;
    v40 = result[2];
    v41 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v41;
    *(a2 + 16) = v40;
    *a2 = v39;
    return result;
  }

  v12 = **a4;
  v13 = (v12 + 16 * v11);
  v14 = (v12 + 16 * v5);
  if (*v13 < *v14 || *v13 == *v14 && v13[1] < v14[1])
  {
    goto LABEL_33;
  }

  return result;
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, a2, a3, a5);
  v11 = *a4;
  if (*(a4 + 16) == *(a3 + 16))
  {
    v12 = *a3;
  }

  else
  {
    v12 = *a3;
    if (v11 == a3[1] && a4[1] == v12)
    {
      if (!*(a4 + 16))
      {
        return result;
      }

LABEL_12:
      result = *a3;
      v17 = a3[2];
      v18 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v18;
      *(a4 + 16) = v17;
      *a4 = result;
      v19 = *a3;
      if (*(a3 + 16) == *(a2 + 16))
      {
        v20 = *a2;
      }

      else
      {
        v20 = *a2;
        if (v19 == *(a2 + 8) && a3[1] == v20)
        {
          if (!*(a3 + 16))
          {
            return result;
          }

          goto LABEL_21;
        }
      }

      v21 = **a5;
      v22 = (v21 + 16 * v19);
      v23 = (v21 + 16 * v20);
      result.n128_u64[0] = *v22;
      if (*v22 >= *v23)
      {
        if (*v22 != *v23)
        {
          return result;
        }

        result.n128_u64[0] = v22[1];
        if (result.n128_f64[0] >= v23[1])
        {
          return result;
        }
      }

LABEL_21:
      result = *a2;
      v24 = *(a2 + 16);
      v25 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v25;
      *(a3 + 16) = v24;
      *a3 = result;
      v26 = *a2;
      if (*(a2 + 16) == *(a1 + 16))
      {
        v27 = *a1;
      }

      else
      {
        v27 = *a1;
        if (v26 == *(a1 + 8) && *(a2 + 8) == v27)
        {
          if (!*(a2 + 16))
          {
            return result;
          }

          goto LABEL_30;
        }
      }

      v28 = **a5;
      v29 = (v28 + 16 * v26);
      v30 = (v28 + 16 * v27);
      result.n128_u64[0] = *v29;
      if (*v29 >= *v30)
      {
        if (*v29 != *v30)
        {
          return result;
        }

        result.n128_u64[0] = v29[1];
        if (result.n128_f64[0] >= v30[1])
        {
          return result;
        }
      }

LABEL_30:
      result = *a1;
      v31 = *(a1 + 16);
      v32 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v32;
      *(a2 + 16) = v31;
      *a2 = result;
      return result;
    }
  }

  v14 = **a5;
  v15 = (v14 + 16 * v11);
  v16 = (v14 + 16 * v12);
  result.n128_u64[0] = *v15;
  if (*v15 < *v16)
  {
    goto LABEL_12;
  }

  if (*v15 == *v16)
  {
    result.n128_u64[0] = v15[1];
    if (result.n128_f64[0] < v16[1])
    {
      goto LABEL_12;
    }
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  result.n128_u64[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *a5;
  if (*(a5 + 16) == *(a4 + 16))
  {
    v14 = *a4;
  }

  else
  {
    v14 = *a4;
    if (v13 == a4[1] && a5[1] == v14)
    {
      if (!*(a5 + 16))
      {
        return result;
      }

LABEL_12:
      result = *a4;
      v19 = a4[2];
      v20 = *(a5 + 16);
      *a4 = *a5;
      *(a4 + 16) = v20;
      *(a5 + 16) = v19;
      *a5 = result;
      v21 = *a4;
      if (*(a4 + 16) == *(a3 + 16))
      {
        v22 = *a3;
      }

      else
      {
        v22 = *a3;
        if (v21 == *(a3 + 8) && a4[1] == v22)
        {
          if (!*(a4 + 16))
          {
            return result;
          }

          goto LABEL_21;
        }
      }

      v23 = **a6;
      v24 = (v23 + 16 * v21);
      v25 = (v23 + 16 * v22);
      result.n128_u64[0] = *v24;
      if (*v24 >= *v25)
      {
        if (*v24 != *v25)
        {
          return result;
        }

        result.n128_u64[0] = v24[1];
        if (result.n128_f64[0] >= v25[1])
        {
          return result;
        }
      }

LABEL_21:
      result = *a3;
      v26 = *(a3 + 16);
      v27 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v27;
      *(a4 + 16) = v26;
      *a4 = result;
      v28 = *a3;
      if (*(a3 + 16) == *(a2 + 16))
      {
        v29 = *a2;
      }

      else
      {
        v29 = *a2;
        if (v28 == *(a2 + 8) && *(a3 + 8) == v29)
        {
          if (!*(a3 + 16))
          {
            return result;
          }

          goto LABEL_30;
        }
      }

      v30 = **a6;
      v31 = (v30 + 16 * v28);
      v32 = (v30 + 16 * v29);
      result.n128_u64[0] = *v31;
      if (*v31 >= *v32)
      {
        if (*v31 != *v32)
        {
          return result;
        }

        result.n128_u64[0] = v31[1];
        if (result.n128_f64[0] >= v32[1])
        {
          return result;
        }
      }

LABEL_30:
      result = *a2;
      v33 = *(a2 + 16);
      v34 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v34;
      *(a3 + 16) = v33;
      *a3 = result;
      v35 = *a2;
      if (*(a2 + 16) == *(a1 + 16))
      {
        v36 = *a1;
      }

      else
      {
        v36 = *a1;
        if (v35 == *(a1 + 8) && *(a2 + 8) == v36)
        {
          if (!*(a2 + 16))
          {
            return result;
          }

          goto LABEL_39;
        }
      }

      v37 = **a6;
      v38 = (v37 + 16 * v35);
      v39 = (v37 + 16 * v36);
      result.n128_u64[0] = *v38;
      if (*v38 >= *v39)
      {
        if (*v38 != *v39)
        {
          return result;
        }

        result.n128_u64[0] = v38[1];
        if (result.n128_f64[0] >= v39[1])
        {
          return result;
        }
      }

LABEL_39:
      result = *a1;
      v40 = *(a1 + 16);
      v41 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v41;
      *(a2 + 16) = v40;
      *a2 = result;
      return result;
    }
  }

  v16 = **a6;
  v17 = (v16 + 16 * v13);
  v18 = (v16 + 16 * v14);
  result.n128_u64[0] = *v17;
  if (*v17 < *v18)
  {
    goto LABEL_12;
  }

  if (*v17 == *v18)
  {
    result.n128_u64[0] = v17[1];
    if (result.n128_f64[0] < v18[1])
    {
      goto LABEL_12;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, (a1 + 24), (a2 - 24), a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, a1 + 24, (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, a1 + 24, a1 + 48, (a1 + 72), (a2 - 24), a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = (a2 - 24);
      v8 = *(a2 - 24);
      if (*(a2 - 8) == *(a1 + 16))
      {
        v9 = *a1;
      }

      else
      {
        v9 = *a1;
        if (v8 == *(a1 + 8) && *(a2 - 16) == v9)
        {
          if (!*(a2 - 8))
          {
            return 1;
          }

          goto LABEL_50;
        }
      }

      v10 = **a3;
      v11 = (v10 + 16 * v8);
      v12 = (v10 + 16 * v9);
      if (*v11 >= *v12 && (*v11 != *v12 || v11[1] >= v12[1]))
      {
        return 1;
      }

LABEL_50:
      v32 = *a1;
      v33 = *(a1 + 16);
      v34 = *(a2 - 8);
      *a1 = *v7;
      *(a1 + 16) = v34;
      *(a2 - 8) = v33;
      *v7 = v32;
      return 1;
    }
  }

  v13 = a1 + 48;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(a1, (a1 + 24), (a1 + 48), a3);
  v14 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (2)
  {
    v17 = *(v14 + 16);
    v18 = *v14;
    if (v17 == *(v13 + 16))
    {
      v19 = *v13;
      goto LABEL_23;
    }

    v19 = *v13;
    if (v18 != *(v13 + 8) || *(v14 + 8) != v19)
    {
LABEL_23:
      v21 = **a3;
      v22 = (v21 + 16 * v18);
      v23 = (v21 + 16 * v19);
      if (*v22 >= *v23 && (*v22 != *v23 || v22[1] >= v23[1]))
      {
        goto LABEL_44;
      }

      goto LABEL_28;
    }

    if (!*(v14 + 16))
    {
      goto LABEL_44;
    }

LABEL_28:
    v24 = *(v14 + 8);
    *v14 = *v13;
    *(v14 + 16) = *(v13 + 16);
    v25 = v15;
    do
    {
      v26 = a1 + v25;
      if (v17 == *(a1 + v25 + 40))
      {
        v27 = *(v26 + 24);
      }

      else
      {
        v27 = *(v26 + 24);
        if (v18 == *(v26 + 32) && v24 == v27)
        {
          if (!v17)
          {
            goto LABEL_43;
          }

          goto LABEL_41;
        }
      }

      v29 = **a3;
      v30 = (v29 + 16 * v18);
      v31 = (v29 + 16 * v27);
      if (*v30 >= *v31)
      {
        if (*v30 != *v31)
        {
          v13 = a1 + v25 + 48;
          goto LABEL_43;
        }

        if (v30[1] >= v31[1])
        {
          goto LABEL_43;
        }
      }

LABEL_41:
      v13 -= 24;
      *(v26 + 48) = *(v26 + 24);
      *(v26 + 64) = *(v26 + 40);
      v25 -= 24;
    }

    while (v25 != -48);
    v13 = a1;
LABEL_43:
    *v13 = v18;
    *(v13 + 8) = v24;
    *(v13 + 16) = v17;
    if (++v16 != 8)
    {
LABEL_44:
      v13 = v14;
      v15 += 24;
      v14 += 24;
      if (v14 == a2)
      {
        return 1;
      }

      continue;
    }

    return v14 + 24 == a2;
  }
}

void std::__shared_ptr_emplace<geo::Polygon2<double>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<geo::Polygon2<double>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3EC30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B312FF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, uint64_t a13)
{
  std::default_delete<zilch::TrafficSkeletonTile>::operator()[abi:nn200100](v13);

  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<geo::Polygon2<double> *,std::shared_ptr<geo::Polygon2<double>>::__shared_ptr_default_delete<geo::Polygon2<double>,geo::Polygon2<double>>,std::allocator<geo::Polygon2<double>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B3130124(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B3130248(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B3130378(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B31306E0(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B31307D0(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B313091C(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B3130AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKVectorOverlayPolygonGroup;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

float VKVectorOverlayAutomaticLineWidthForZoomLevel(double a1)
{
  v1 = 21.0;
  if (a1 <= 18.0)
  {
    v2 = VKVectorOverlayAutomaticLineWidthForZoomLevel(double)::kLineWidthForZoomLevel[vcvtmd_u64_f64(a1)];
    return v2 + (a1 - floor(a1)) * (VKVectorOverlayAutomaticLineWidthForZoomLevel(double)::kLineWidthForZoomLevel[vcvtpd_u64_f64(a1)] - v2);
  }

  return v1;
}

void md::Logic<md::ARWorldIntersectorLogic,md::ARWorldIntersectorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void *md::ARWorldIntersectorLogic::runAfterLayout(uint64_t a1)
{
  result = gdc::Registry::storage<arComponents::DidIntersectRaycast>(*(a1 + 120));
  v2 = result;
  if (result[29])
  {
    v3 = result[28];
    if (v3)
    {
      v4 = result[31];
      v5 = result[7];
      v6 = (result[8] - v5) >> 3;
      do
      {
        result = std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v3[6], v4, v5, v6);
        v3 = *v3;
      }

      while (v3);
    }
  }

  v2[8] = v2[7];
  v2[11] = v2[10];
  return result;
}

void md::ARWorldIntersectorLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v247 = *MEMORY[0x1E69E9840];
  if (a4[3])
  {
    v7 = a4[2];
    if (v7)
    {
      do
      {
        v8 = *v7;
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    a4[2] = 0;
    v9 = a4[1];
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        *(*a4 + 8 * i) = 0;
      }
    }

    a4[3] = 0;
  }

  v197 = +[VKDebugSettings sharedSettings];
  v194 = *(a3 + 8);
  v195 = *a3;
  v196 = *(a3 + 16);
  v11 = gdc::Registry::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)60>>(*(a1 + 120));
  v12 = gdc::Registry::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)60>>(*(a1 + 120));
  v13 = *(a1 + 120);
  v14 = gdc::Registry::storage<arComponents::Boundary>(v13);
  v15 = gdc::Registry::storage<arComponents::WorldTransform>(v13);
  v16 = gdc::Registry::storage<arComponents::UseForOcclusionTest>(v13);
  v17 = gdc::Registry::storage<arComponents::AddToWorldIntersectorPending>(v13);
  v204 = a1;
  if (!*(a1 + 168) || (*(a1 + 184) & 1) != 0)
  {
    goto LABEL_18;
  }

  v18 = 0xAAAAAAAAAAAAAAABLL * ((*(v14 + 88) - *(v14 + 80)) >> 3);
  v19 = 0xCCCCCCCCCCCCCCCDLL * ((*(v15 + 88) - *(v15 + 80)) >> 4);
  v238[0] = v18;
  v238[1] = v19;
  *&v20 = *(v17 + 88) - *(v17 + 80);
  *&v239.f64[0] = *(v16 + 88) - *(v16 + 80);
  v239.f64[1] = v20;
  v21 = 1;
  v22 = v238;
  do
  {
    if (v238[v21] < v18)
    {
      v18 = v238[v21];
      v22 = &v238[v21];
    }

    ++v21;
  }

  while (v21 != 4);
  if (*v22 || *(v12 + 88) != *(v12 + 80) || *(v11 + 88) != *(v11 + 80) || *(v196 + 2) == 1)
  {
LABEL_18:
    v23 = *(a1 + 120);
    v24 = gdc::Registry::storage<arComponents::Boundary>(v23);
    v25 = gdc::Registry::storage<arComponents::WorldTransform>(v23);
    v26 = gdc::Registry::storage<arComponents::UseForOcclusionTest>(v23);
    v27 = v26;
    v28 = 0xAAAAAAAAAAAAAAABLL * ((v24[11] - v24[10]) >> 3);
    v29 = *(v26 + 80);
    if (0xCCCCCCCCCCCCCCCDLL * ((v25[11] - v25[10]) >> 4) < v28)
    {
      v28 = 0xCCCCCCCCCCCCCCCDLL * ((v25[11] - v25[10]) >> 4);
    }

    if (*(v26 + 88) - v29 >= v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = *(v26 + 88) - v29;
    }

    if (v30)
    {
      if (v30 <= 0x555555555555555)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,4>>>(v30);
      }

LABEL_218:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v208 = 0u;
    v31.i64[0] = v24;
    v31.i64[1] = v25;
    *v238 = vaddq_s64(v31, vdupq_n_s64(0x20uLL));
    v206 = v27 + 4;
    *&v239.f64[0] = v27 + 4;
    v32 = v238[0];
    v33 = 1;
    v34 = v238;
    do
    {
      if (*(v238[v33] + 4) - *(v238[v33] + 3) < v32[4] - v32[3])
      {
        v32 = v238[v33];
        v34 = &v238[v33];
      }

      ++v33;
    }

    while (v33 != 3);
    v35 = v24 + 4;
    v198 = *v34;
    v205 = v27;
    if (v24 + 4 != *v34 || (v36 = v24[7], v37 = v24[8], v36 == v37))
    {
LABEL_53:
      if (v25 + 4 != v198 || (v57 = v25[7], v56 = v25[8], v57 == v56))
      {
LABEL_76:
        if (v206 != v198 || (v76 = v27, v77 = v27[7], v78 = v76[8], v77 == v78))
        {
LABEL_99:
          v97 = gdc::Registry::storage<arComponents::AddToWorldIntersectorPending>(*(a1 + 120));
          v98 = v97;
          if (v97[29])
          {
            v99 = v97[28];
            if (v99)
            {
              v100 = v97[31];
              v101 = v97[7];
              v102 = (v97[8] - v101) >> 3;
              do
              {
                std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v99[6], v100, v101, v102);
                v99 = *v99;
              }

              while (v99);
            }
          }

          v98[8] = v98[7];
          v98[11] = v98[10];
          v103 = gdc::Registry::storage<SceneComponents::LayerDataInView<(md::MapDataType)60>>(*(a1 + 120));
          v239.f64[0] = 0.0;
          v238[1] = 0;
          v238[0] = &v238[1];
          v104 = v103[7];
          v105 = v103[8];
          if (v104 != v105)
          {
            v106 = v103[10];
            do
            {
              if (*v106 != v106 + 1)
              {
                operator new();
              }

              v106 += 3;
              v104 += 8;
            }

            while (v104 != v105);
          }

          operator new();
        }

        *v207 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v201 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        while (1)
        {
          v79 = *(v77 + 4);
          if (v24[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v35, v79) && v25[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v25 + 4, v79))
          {
            v80 = *v77;
            v81 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v24, *v77);
            v82 = gdc::RegistryView<arComponents::Boundary,arComponents::WorldTransform,arComponents::UseForOcclusionTest>::getComponent<arComponents::Boundary,arComponents::WorldTransform>(v25, v80);
            for (j = 0; j != 3; ++j)
            {
              v226.f64[j] = *(v81 + 4 * j);
            }

            do
            {
              v226.f64[j] = *(v81 + 4 * j);
              ++j;
            }

            while (j != 6);
            geo::Transform<double>::toMatrix(v238, v82);
            v218 = *v207;
            v219 = xmmword_1B33B0520;
            v220 = v201;
            *&v235 = &unk_1F2A61070;
            *(&v235 + 1) = &v218;
            v236 = v238;
            v237 = &v235;
            gm::Box<double,3>::forEachCorner(&v226, &v235);
            std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](&v235);
            v84 = v208;
            v85 = *(&v208 + 1) - v208;
            v86 = 0xAAAAAAAAAAAAAAABLL * ((*(&v208 + 1) - v208) >> 4) + 1;
            if (v86 > 0x555555555555555)
            {
              goto LABEL_218;
            }

            if (0x5555555555555556 * (-v208 >> 4) > v86)
            {
              v86 = 0x5555555555555556 * (-v208 >> 4);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v208 >> 4) >= 0x2AAAAAAAAAAAAAALL)
            {
              v87 = 0x555555555555555;
            }

            else
            {
              v87 = v86;
            }

            if (v87)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,4>>>(v87);
            }

            v88 = (16 * ((*(&v208 + 1) - v208) >> 4));
            v89 = v218;
            v90 = v220;
            v88[1] = v219;
            v88[2] = v90;
            *v88 = v89;
            if (v208 != *(&v208 + 1))
            {
              v91 = v208;
              v92 = &v88[3 * (v85 / -48)];
              do
              {
                v93 = *v91;
                v94 = v91[2];
                v92[1] = v91[1];
                v92[2] = v94;
                *v92 = v93;
                v92 += 3;
                v91 += 3;
              }

              while (v91 != *(&v208 + 1));
            }

            v95 = v88 + 3;
            v211 = &v88[3 * (v85 / -48)];
            a1 = v204;
            v35 = v24 + 4;
            if (v84)
            {
              operator delete(v84);
            }

            *&v96 = v211;
            *(&v96 + 1) = v95;
            v208 = v96;
          }

          v77 += 8;
          if (v77 == v78)
          {
            goto LABEL_99;
          }
        }
      }

      v58 = v25[10];
      v202 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      *v199 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      while (1)
      {
        v59 = *(v57 + 4);
        if (v24[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v35, v59) && v27[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v206, v59))
        {
          v60 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v24, *v57);
          for (k = 0; k != 3; ++k)
          {
            v226.f64[k] = *(v60 + 4 * k);
          }

          do
          {
            v226.f64[k] = *(v60 + 4 * k);
            ++k;
          }

          while (k != 6);
          geo::Transform<double>::toMatrix(v238, v58);
          v218 = v202;
          v219 = xmmword_1B33B0520;
          v220 = *v199;
          *&v235 = &unk_1F2A61070;
          *(&v235 + 1) = &v218;
          v236 = v238;
          v237 = &v235;
          gm::Box<double,3>::forEachCorner(&v226, &v235);
          std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](&v235);
          v62 = v208;
          v63 = *(&v208 + 1) - v208;
          v64 = 0xAAAAAAAAAAAAAAABLL * ((*(&v208 + 1) - v208) >> 4) + 1;
          if (v64 > 0x555555555555555)
          {
            goto LABEL_218;
          }

          if (0x5555555555555556 * (-v208 >> 4) > v64)
          {
            v64 = 0x5555555555555556 * (-v208 >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v208 >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v65 = 0x555555555555555;
          }

          else
          {
            v65 = v64;
          }

          if (v65)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,4>>>(v65);
          }

          v66 = (16 * ((*(&v208 + 1) - v208) >> 4));
          v67 = v218;
          v68 = v220;
          v66[1] = v219;
          v66[2] = v68;
          *v66 = v67;
          v69 = &v66[3 * (v63 / -48)];
          if (v208 != *(&v208 + 1))
          {
            v70 = v208;
            v71 = &v66[3 * (v63 / -48)];
            do
            {
              v72 = *v70;
              v73 = v70[2];
              v71[1] = v70[1];
              v71[2] = v73;
              *v71 = v72;
              v71 += 3;
              v70 += 3;
            }

            while (v70 != *(&v208 + 1));
          }

          v74 = v66 + 3;
          v210 = v69;
          if (v62)
          {
            operator delete(v62);
          }

          *&v75 = v210;
          *(&v75 + 1) = v74;
          v208 = v75;
          v27 = v205;
          v35 = v24 + 4;
        }

        v58 += 10;
        v57 += 8;
        if (v57 == v56)
        {
          goto LABEL_76;
        }
      }
    }

    v38 = v24[10];
    v203 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v200 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    while (1)
    {
      v39 = *(v36 + 4);
      if (v25[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v25 + 4, v39) && v27[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v206, v39))
      {
        v40 = gdc::RegistryView<arComponents::Boundary,arComponents::WorldTransform,arComponents::UseForOcclusionTest>::getComponent<arComponents::Boundary,arComponents::WorldTransform>(v25, *v36);
        for (m = 0; m != 3; ++m)
        {
          v226.f64[m] = *(v38 + 4 * m);
        }

        do
        {
          v226.f64[m] = *(v38 + 4 * m);
          ++m;
        }

        while (m != 6);
        geo::Transform<double>::toMatrix(v238, v40);
        v218 = v203;
        v219 = xmmword_1B33B0520;
        v220 = v200;
        *&v235 = &unk_1F2A61070;
        *(&v235 + 1) = &v218;
        v236 = v238;
        v237 = &v235;
        gm::Box<double,3>::forEachCorner(&v226, &v235);
        std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](&v235);
        v42 = v208;
        v43 = *(&v208 + 1) - v208;
        v44 = 0xAAAAAAAAAAAAAAABLL * ((*(&v208 + 1) - v208) >> 4) + 1;
        if (v44 > 0x555555555555555)
        {
          goto LABEL_218;
        }

        if (0x5555555555555556 * (-v208 >> 4) > v44)
        {
          v44 = 0x5555555555555556 * (-v208 >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v208 >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v45 = 0x555555555555555;
        }

        else
        {
          v45 = v44;
        }

        if (v45)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,4>>>(v45);
        }

        v46 = (16 * ((*(&v208 + 1) - v208) >> 4));
        v47 = v218;
        v48 = v220;
        v46[1] = v219;
        v46[2] = v48;
        *v46 = v47;
        v49 = &v46[3 * (v43 / -48)];
        if (v208 != *(&v208 + 1))
        {
          v50 = v208;
          v51 = &v46[3 * (v43 / -48)];
          do
          {
            v52 = *v50;
            v53 = v50[2];
            v51[1] = v50[1];
            v51[2] = v53;
            *v51 = v52;
            v51 += 3;
            v50 += 3;
          }

          while (v50 != *(&v208 + 1));
        }

        v54 = v46 + 3;
        v209 = v49;
        if (v42)
        {
          operator delete(v42);
        }

        *&v55 = v209;
        *(&v55 + 1) = v54;
        v208 = v55;
        v27 = v205;
        v35 = v24 + 4;
      }

      v38 += 24;
      v36 += 8;
      if (v36 == v37)
      {
        goto LABEL_53;
      }
    }
  }

  v107 = +[VKDebugSettings sharedSettings];
  v108 = [v107 arRenderAvoidanceObjects];

  if (v108)
  {
    v225 = [v197 arRenderAvoidanceObjectsIntersection];
    v109 = *(v195 + 699);
    if (!v109)
    {
      v109 = v195;
    }

    v110 = (v109 + 808);
    v111 = gdc::CameraView::position(v195);
    v112 = 0;
    v113 = *v111;
    v222 = *(v111 + 16);
    v221 = v113;
    v223 = *(v195 + 193);
    v224 = *(v195 + 388);
    v114 = &v226;
    v115 = v110;
    do
    {
      v116 = 0;
      v117 = v115;
      do
      {
        v118 = *v117;
        v117 += 4;
        v114->f64[v116++] = v118;
      }

      while (v116 != 4);
      ++v112;
      v114 += 2;
      ++v115;
    }

    while (v112 != 4);
    v119 = 0;
    *__p = vaddq_f64(v226, v232);
    v244 = vaddq_f64(v227, v233);
    v245 = vsubq_f64(v232, v226);
    v246 = vsubq_f64(v233, v227);
    v240[2] = vaddq_f64(v228, v232);
    v240[3] = vaddq_f64(v229, v233);
    *v241 = vsubq_f64(v232, v228);
    v242 = vsubq_f64(v233, v229);
    *v238 = v230;
    v239 = v231;
    v240[0] = vsubq_f64(v232, v230);
    v240[1] = vsubq_f64(v233, v231);
    do
    {
      v120 = 0;
      v121 = &v238[4 * v119];
      v122 = v121[2];
      v215 = *v121;
      *&v216 = v122;
      v123 = 0.0;
      do
      {
        v123 = v123 + *(&v215 + v120) * *(&v215 + v120);
        v120 += 8;
      }

      while (v120 != 24);
      v124 = 0;
      v125 = 1.0 / sqrt(v123);
      do
      {
        *(&v235 + v124) = *(&v215 + v124) * v125;
        v124 += 8;
      }

      while (v124 != 24);
      v126 = &v218.i8[32 * v119];
      v127 = v236;
      v128 = *(v121 + 3) * v125;
      *v126 = v235;
      *(v126 + 2) = v127;
      *(v126 + 3) = v128;
      ++v119;
    }

    while (v119 != 6);
    geo::Frustum<double>::calculateCorners(&v218, v110, 0.0);
    v215 = 0u;
    v216 = 0u;
    v217 = 1065353216;
    v129 = *(a1 + 120);
    v130 = gdc::Registry::storage<arComponents::Boundary>(v129);
    v131 = gdc::Registry::storage<arComponents::WorldTransform>(v129);
    v132 = gdc::Registry::storage<arComponents::UseForOcclusionTest>(v129);
    v133 = v132;
    v134 = 0xAAAAAAAAAAAAAAABLL * ((v130[11] - v130[10]) >> 3);
    v135 = *(v132 + 80);
    if (0xCCCCCCCCCCCCCCCDLL * ((v131[11] - v131[10]) >> 4) < v134)
    {
      v134 = 0xCCCCCCCCCCCCCCCDLL * ((v131[11] - v131[10]) >> 4);
    }

    if (*(v132 + 88) - v135 >= v134)
    {
      v136 = v134;
    }

    else
    {
      v136 = *(v132 + 88) - v135;
    }

    if (v136)
    {
      if (v136 < 0xAAAAAAAAAAAAAABLL)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v136);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v137.i64[0] = v130;
    v137.i64[1] = v131;
    *v238 = vaddq_s64(v137, vdupq_n_s64(0x20uLL));
    *&v239.f64[0] = v133 + 4;
    v138 = v238[0];
    v139 = 1;
    v140 = v238;
    do
    {
      if (*(v238[v139] + 4) - *(v238[v139] + 3) < v138[4] - v138[3])
      {
        v138 = v238[v139];
        v140 = &v238[v139];
      }

      ++v139;
    }

    while (v139 != 3);
    v141 = *v140;
    if (v130 + 4 == *v140)
    {
      v212 = *v140;
      v238[0] = &v218;
      v238[1] = a1;
      *&v239.f64[0] = &v215;
      *&v239.f64[1] = &v225;
      *&v240[0] = &v221;
      v143 = v130[7];
      v142 = v130[8];
      if (v143 != v142)
      {
        v144 = v130[10];
        do
        {
          v145 = *(v143 + 4);
          if (v131[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v131 + 4, v145) && v133[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v133 + 4, v145))
          {
            v146 = *v143;
            v147 = gdc::RegistryView<arComponents::Boundary,arComponents::WorldTransform,arComponents::UseForOcclusionTest>::getComponent<arComponents::Boundary,arComponents::WorldTransform>(v131, *v143);
            md::ARWorldIntersectorLogic::generateDebugAvoidancesIntersections(md::CameraContext const&,md::GeometryContext const&,md::ARWorldIntersectorContext &,BOOL)::$_0::operator()(v238, v146, v144, v147);
          }

          v144 += 24;
          v143 += 8;
        }

        while (v143 != v142);
      }

      a1 = v204;
      v141 = v212;
    }

    if (v131 + 4 == v141)
    {
      v213 = v141;
      v238[0] = &v218;
      v238[1] = a1;
      *&v239.f64[0] = &v215;
      *&v239.f64[1] = &v225;
      *&v240[0] = &v221;
      v149 = v131[7];
      v148 = v131[8];
      if (v149 != v148)
      {
        v150 = v131[10];
        do
        {
          v151 = *(v149 + 4);
          if (v130[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v130 + 4, v151) && v133[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v133 + 4, v151))
          {
            v152 = *v149;
            v153 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v130, *v149);
            md::ARWorldIntersectorLogic::generateDebugAvoidancesIntersections(md::CameraContext const&,md::GeometryContext const&,md::ARWorldIntersectorContext &,BOOL)::$_0::operator()(v238, v152, v153, v150);
          }

          v150 += 10;
          v149 += 8;
        }

        while (v149 != v148);
      }

      a1 = v204;
      v141 = v213;
    }

    if (v133 + 4 == v141)
    {
      v238[0] = &v218;
      v238[1] = a1;
      *&v239.f64[0] = &v215;
      *&v239.f64[1] = &v225;
      *&v240[0] = &v221;
      v154 = v133[7];
      v155 = v133[8];
      while (v154 != v155)
      {
        v156 = *(v154 + 4);
        if (v130[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v130 + 4, v156) && v131[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v131 + 4, v156))
        {
          v157 = *v154;
          v158 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v130, *v154);
          v159 = gdc::RegistryView<arComponents::Boundary,arComponents::WorldTransform,arComponents::UseForOcclusionTest>::getComponent<arComponents::Boundary,arComponents::WorldTransform>(v131, v157);
          md::ARWorldIntersectorLogic::generateDebugAvoidancesIntersections(md::CameraContext const&,md::GeometryContext const&,md::ARWorldIntersectorContext &,BOOL)::$_0::operator()(v238, v157, v158, v159);
        }

        v154 += 8;
      }

      a1 = v204;
    }

    v165 = gdc::Registry::storage<SceneComponents::LayerDataInView<(md::MapDataType)60>>(*(a1 + 120));
    v166 = v165[7];
    v214 = v165[8];
    if (v166 != v214)
    {
      v167 = v165[10];
      do
      {
        v168 = *v167;
        if (*v167 != v167 + 1)
        {
          do
          {
            v169 = gdc::Context::context<md::components::SharedTransformData>(*(v168[4] + 792));
            v170 = 0;
            for (n = &v218; ; n += 2)
            {
              v172 = 0;
              v173 = *(&v218 + v170 + 16);
              v226 = *(&v218 + v170);
              v227.f64[0] = v173;
              do
              {
                v174 = &v169[v172 + 20];
                if (v226.f64[v172] < 0.0)
                {
                  v174 = &v169[v172 + 17];
                }

                v238[v172++] = *v174;
              }

              while (v172 != 3);
              v175 = 0;
              v176 = 0.0;
              do
              {
                v176 = v176 + *&n->i64[v175] * *&v238[v175];
                ++v175;
              }

              while (v175 != 3);
              if (*(&v219 + v170 + 8) + v176 < 0.0)
              {
                break;
              }

              v170 += 32;
              if (v170 == 192)
              {
                md::GeometryContext::transformConstantData(v169[55], v169[56], &v234, v194, v169, 0, -1);
              }
            }

            v177 = v168[1];
            if (v177)
            {
              do
              {
                v178 = v177;
                v177 = *v177;
              }

              while (v177);
            }

            else
            {
              do
              {
                v178 = v168[2];
                v179 = *v178 == v168;
                v168 = v178;
              }

              while (!v179);
            }

            v168 = v178;
          }

          while (v178 != v167 + 1);
        }

        v167 += 3;
        v166 += 8;
      }

      while (v166 != v214);
    }

    a1 = v204;
    v180 = *(v204 + 144);
    for (ii = (v204 + 128); v180; v180 = *v180)
    {
      if (*(&v215 + 1))
      {
        v182 = v180[2];
        v183 = vcnt_s8(*(&v215 + 8));
        v183.i16[0] = vaddlv_u8(v183);
        if (v183.u32[0] > 1uLL)
        {
          v184 = v180[2];
          if (v182 >= *(&v215 + 1))
          {
            v184 = v182 % *(&v215 + 1);
          }
        }

        else
        {
          v184 = (*(&v215 + 1) - 1) & v182;
        }

        v185 = *(v215 + 8 * v184);
        if (v185)
        {
          for (jj = *v185; jj; jj = *jj)
          {
            v187 = jj[1];
            if (v182 == v187)
            {
              if (*(jj + 8) == v182 && *(jj + 9) == WORD1(v182) && *(jj + 5) == HIDWORD(v182))
              {
                goto LABEL_207;
              }
            }

            else
            {
              if (v183.u32[0] > 1uLL)
              {
                if (v187 >= *(&v215 + 1))
                {
                  v187 %= *(&v215 + 1);
                }
              }

              else
              {
                v187 &= *(&v215 + 1) - 1;
              }

              if (v187 != v184)
              {
                break;
              }
            }
          }
        }
      }

      gdc::Registry::destroy(*(v204 + 120), v180[3]);
LABEL_207:
      ;
    }

    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(ii);
    v188 = v215;
    *&v215 = 0;
    v189 = *ii;
    *ii = v188;
    if (v189)
    {
      operator delete(v189);
    }

    v190 = *(&v215 + 1);
    v191 = v216;
    *(&v215 + 1) = 0;
    v192 = *(&v216 + 1);
    *(v204 + 144) = v216;
    *(v204 + 152) = v192;
    *(v204 + 160) = v217;
    *(v204 + 136) = v190;
    if (v192)
    {
      v193 = *(v191 + 8);
      if ((v190 & (v190 - 1)) != 0)
      {
        if (v193 >= v190)
        {
          v193 %= v190;
        }
      }

      else
      {
        v193 &= v190 - 1;
      }

      *(*ii + v193) = v204 + 144;
      v216 = 0uLL;
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v215);
  }

  else if (*(a1 + 152))
  {
    v238[0] = v240;
    v238[1] = v240;
    *&v239.f64[0] = v240;
    *&v239.f64[1] = 4;
    for (kk = (a1 + 144); ; geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(v238, kk + 3))
    {
      kk = *kk;
      if (!kk)
      {
        break;
      }
    }

    v161 = v238[0];
    v162 = v238[1];
    if (v238[0] != v238[1])
    {
      v163 = *(a1 + 120);
      do
      {
        v164 = *v161++;
        gdc::Registry::destroy(v163, v164);
      }

      while (v161 != v162);
    }

    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a1 + 128));
    if (v238[0] != *&v239.f64[0])
    {
      free(v238[0]);
    }
  }

  *(a1 + 184) = 0;
}

void sub_1B3132EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (STACK[0x380])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x380]);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a31);

  _Unwind_Resume(a1);
}

uint64_t gdc::RegistryView<arComponents::Boundary,arComponents::WorldTransform,arComponents::UseForOcclusionTest>::getComponent<arComponents::Boundary,arComponents::WorldTransform>(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    return a1[11];
  }

  else
  {
    return a1[10] + 80 * ((v3 - a1[7]) >> 3);
  }
}

void md::ARWorldIntersectorLogic::generateDebugAvoidancesIntersections(md::CameraContext const&,md::GeometryContext const&,md::ARWorldIntersectorContext &,BOOL)::$_0::operator()(uint64_t *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  v32[4] = *MEMORY[0x1E69E9840];
  v31 = a2;
  v7 = a1[1];
  do
  {
    *(&v26 + v6) = *(a3 + 4 * v6);
    ++v6;
  }

  while (v6 != 3);
  do
  {
    *(&v26 + v6) = *(a3 + 4 * v6);
    ++v6;
  }

  while (v6 != 6);
  geo::Transform<double>::toMatrix(&v23, a4);
  v28 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v29 = xmmword_1B33B0520;
  v30 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *&v32[0] = &unk_1F2A61070;
  *&v32[1] = &v28;
  *&v32[2] = &v23;
  *&v32[3] = v32;
  gm::Box<double,3>::forEachCorner(&v26, v32);
  std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](v32);
  v8 = 0;
  v32[0] = 0.0;
  v22 = 0;
  v9 = *a1;
  for (i = *a1; ; i += 32)
  {
    v11 = 0;
    v12 = *(v9 + v8 + 16);
    v26 = *(v9 + v8);
    v27 = v12;
    do
    {
      v13 = &v28.i8[v11 * 8];
      if (*(&v26 + v11 * 8) >= 0.0)
      {
        v13 = &v29 + v11 * 8 + 8;
      }

      v23.i64[v11++] = *v13;
    }

    while (v11 != 3);
    v14 = 0;
    v15 = 0.0;
    do
    {
      v15 = v15 + *(i + v14 * 8) * *&v23.i64[v14];
      ++v14;
    }

    while (v14 != 3);
    if (*(v9 + v8 + 24) + v15 < 0.0)
    {
      break;
    }

    v8 += 32;
    if (v8 == 192)
    {
      v16 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>((v7 + 128), a2);
      if (!v16)
      {
        v18 = *(v7 + 120);
        v23 = v28;
        v24 = v29;
        v25 = v30;
        gdc::Registry::create(v18);
      }

      v17 = v16[3];
      std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((v7 + 128), v16);
      v19 = a1[2];
      v23.i64[0] = &v31;
      std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::Entity>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::Entity>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::Entity>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::Entity>>>::__emplace_unique_key_args<gdc::Entity,std::piecewise_construct_t const&,std::tuple<gdc::Entity const&>,std::tuple<>>(v19, a2)[3] = v17;
      if (*a1[3] == 1)
      {
        v20 = a1[4];
        v23 = v28;
        v24 = v29;
        v25 = v30;
        if (gm::Ray<double,3>::segmentIntersectsBox(v20, v23.i64, v32, &v22, 0.000001, 1.79769313e308))
        {
          v21 = gdc::Registry::storage<arComponents::DidIntersectRaycast>(*(v7 + 120));
          gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v21, v17);
        }
      }

      return;
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::Entity>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::Entity>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::Entity>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::Entity>>>::__emplace_unique_key_args<gdc::Entity,std::piecewise_construct_t const&,std::tuple<gdc::Entity const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_19;
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
LABEL_19:
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
      goto LABEL_19;
    }

LABEL_18:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  if (__PAIR64__(*(v6 + 9), *(v6 + 8)) != __PAIR64__(WORD1(a2), a2) || *(v6 + 5) != HIDWORD(a2))
  {
    goto LABEL_18;
  }

  return v6;
}

uint64_t geo::Intersect::internal::intersection<float,std::array<gm::Plane3<float>,26ul>>(uint64_t a1, uint64_t a2, int a3, float *a4, float *a5)
{
  v5 = 0;
  v6 = flt_1B3416E38[a3];
  *a4 = flt_1B3416E2C[a3];
  *a5 = v6;
  for (i = a1; ; i += 16)
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      v9 = v9 + (*(a2 + 12 + v8) * *(i + v8));
      v8 += 4;
    }

    while (v8 != 12);
    v10 = 0;
    v11 = 0.0;
    do
    {
      v11 = v11 + (*(a2 + v10) * *(i + v10));
      v10 += 4;
    }

    while (v10 != 12);
    v12 = v11 + *(a1 + v5 + 12);
    v13 = v9 <= 0.0;
    if (v9 == 0.0)
    {
      if (v12 < 0.0)
      {
        return 0;
      }
    }

    else
    {
      v14 = -v12 / v9;
      if (v13)
      {
        v6 = fminf(v14, v6);
        *a5 = v6;
      }

      else
      {
        *a4 = fmaxf(*a4, v14);
        v6 = *a5;
      }
    }

    if (*a4 > v6)
    {
      break;
    }

    v5 += 16;
    if (v5 == 416)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t std::default_delete<md::ARWorldIntersector>::operator()[abi:nn200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 104);
    if (v2)
    {
      *(v1 + 112) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 96);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v1 + 64);
    if (v4)
    {
      do
      {
        v5 = *v4;
        v7 = (v4 + 24);
        std::vector<arComponents::LocalBounds>::__destroy_vector::operator()[abi:nn200100](&v7);
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *(v1 + 48);
    *(v1 + 48) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v1 + 32));
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(v1 + 8));

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::ARWorldIntersector *,std::shared_ptr<md::ARWorldIntersector>::__shared_ptr_default_delete<md::ARWorldIntersector,md::ARWorldIntersector>,std::allocator<md::ARWorldIntersector>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

double md::Logic<md::ARWorldIntersectorLogic,md::ARWorldIntersectorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t md::Logic<md::ARWorldIntersectorLogic,md::ARWorldIntersectorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x6DBE9777D7FEDAAELL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7 = *(a2 + 8);
    md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>::buildRequiredTuple<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>(&v12, v7);
    v8 = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v7);
    v9 = v12;
    v10 = v13;
    v11 = v8;
    return (*(*v6 + 160))(v6, a2, &v9, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>::buildRequiredTuple<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x1AF456233693CD46))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x3070CB6B3C7F21D3uLL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0x3070CB6B3C7F21D3))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x18CA739B45F5362AuLL);
  if (result && (v11 = result[5], *(v11 + 8) == 0x18CA739B45F5362ALL))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  return result;
}

uint64_t md::Logic<md::ARWorldIntersectorLogic,md::ARWorldIntersectorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x6DBE9777D7FEDAAELL)
  {
    v15 = v3;
    v16 = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>::buildRequiredTuple<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>(&v13, v8);
      v9 = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v8);
      v10 = v13;
      v11 = v14;
      v12 = v9;
      return (*(*v7 + 152))(v7, a2, &v10, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARWorldIntersectorLogic,md::ARWorldIntersectorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x6DBE9777D7FEDAAELL)
  {
    v15 = v3;
    v16 = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>::buildRequiredTuple<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>(&v13, v8);
      v9 = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v8);
      v10 = v13;
      v11 = v14;
      v12 = v9;
      return (*(*v7 + 144))(v7, a2, &v10, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARWorldIntersectorLogic,md::ARWorldIntersectorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x6DBE9777D7FEDAAELL)
  {
    v15 = v3;
    v16 = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>::buildRequiredTuple<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>(&v13, v8);
      v9 = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v8);
      v10 = v13;
      v11 = v14;
      v12 = v9;
      return (*(*v7 + 136))(v7, a2, &v10, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARWorldIntersectorLogic,md::ARWorldIntersectorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x6DBE9777D7FEDAAELL)
  {
    v15 = v3;
    v16 = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>::buildRequiredTuple<md::CameraContext,md::GeometryContext,md::ARAssetOcclusionMeshDataContext>(&v13, v8);
      v9 = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v8);
      v10 = v13;
      v11 = v14;
      v12 = v9;
      return (*(*v7 + 128))(v7, a2, &v10, v5);
    }
  }

  return result;
}

void sub_1B31341F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a10);
  MEMORY[0x1B8C62190](v16, v17);
  _Unwind_Resume(a1);
}

uint64_t gdc::ObjectHolder<md::ARWorldIntersectorContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARWorldIntersectorContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::ARWorldIntersectorContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARWorldIntersectorContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A35D20;
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v4, 0x10A0C407175AC86);
  }

  return a1;
}

void md::ARWorldIntersectorLogic::didBecomeInactive(md::ARWorldIntersectorLogic *this)
{
  v2 = *(this + 22);
  *(this + 21) = 0;
  *(this + 22) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v8 = v12;
  v9 = v12;
  v10 = v12;
  v11 = 4;
  for (i = (this + 144); ; geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v8, i + 3))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  v4 = v8;
  v5 = v9;
  if (v8 != v9)
  {
    v6 = *(this + 15);
    do
    {
      v7 = *v4++;
      gdc::Registry::destroy(v6, v7);
    }

    while (v4 != v5);
  }

  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 16);
  if (v8 != v10)
  {
    free(v8);
  }
}

void sub_1B3134390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11)
{
  if (a9 != a11)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

void md::ARWorldIntersectorLogic::~ARWorldIntersectorLogic(md::ARWorldIntersectorLogic *this)
{
  md::ARWorldIntersectorLogic::~ARWorldIntersectorLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A35938;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 272);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 192);
  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 128);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::SegmentConnectionEntry>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x1020040FFEA222EuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::SegmentConnectionPoint>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::SegmentConnectionEntry>(uint64_t a1, void *a2)
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

uint64_t *std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::erase(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        v8 = *v4;
        *v4 = 0;
        v9 = *v7;
        *v7 = v8;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        ++v4;
        ++v7;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v11 = *--v6;
      v10 = v11;
      *v6 = 0;
      if (v11)
      {
        (*(*v10 + 8))(v10);
      }
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *(*a2 + 2);
  v5 = *result;
  v6 = *(*result + 2);
  if (v4 == v6)
  {
    if (*(*a2 + 2))
    {
      v7 = *(v3 + 104);
      v8 = (v5 + 104);
    }

    else
    {
      v7 = **(**(v3 + 40) + 16);
      v8 = *(**(v5 + 40) + 16);
    }

    if (v7 <= *v8)
    {
      goto LABEL_12;
    }

LABEL_5:
    v9 = *a3;
    v10 = *(*a3 + 2);
    if (v10 == v4)
    {
      if (*(*a2 + 2))
      {
        v11 = *(v9 + 104);
        v12 = (v3 + 104);
      }

      else
      {
        v11 = **(**(v9 + 40) + 16);
        v12 = *(**(v3 + 40) + 16);
      }

      if (v11 <= *v12)
      {
        goto LABEL_19;
      }
    }

    else if (v10 >= v4)
    {
LABEL_19:
      *result = v3;
      *a2 = v5;
      v17 = *a3;
      v18 = *(*a3 + 2);
      if (v18 == v6)
      {
        if (v6)
        {
          v19 = *(v17 + 104);
          v20 = (v5 + 104);
        }

        else
        {
          v19 = **(**(v17 + 40) + 16);
          v20 = *(**(v5 + 40) + 16);
        }

        if (v19 <= *v20)
        {
          return result;
        }
      }

      else if (v18 >= v6)
      {
        return result;
      }

      *a2 = v17;
LABEL_34:
      *a3 = v5;
      return result;
    }

    *result = v9;
    goto LABEL_34;
  }

  if (v4 < v6)
  {
    goto LABEL_5;
  }

LABEL_12:
  v13 = *a3;
  v14 = *(*a3 + 2);
  if (v14 == v4)
  {
    if (*(*a2 + 2))
    {
      v15 = *(v13 + 104);
      v16 = (v3 + 104);
    }

    else
    {
      v15 = **(**(v13 + 40) + 16);
      v16 = *(**(v3 + 40) + 16);
    }

    if (v15 <= *v16)
    {
      return result;
    }
  }

  else if (v14 >= v4)
  {
    return result;
  }

  *a2 = v13;
  *a3 = v3;
  v21 = *a2;
  v22 = *(*a2 + 2);
  v23 = *result;
  v24 = *(*result + 2);
  if (v22 == v24)
  {
    if (*(*a2 + 2))
    {
      v25 = *(v21 + 104);
      v26 = (v23 + 104);
    }

    else
    {
      v25 = **(**(v21 + 40) + 16);
      v26 = *(**(v23 + 40) + 16);
    }

    if (v25 > *v26)
    {
      goto LABEL_37;
    }
  }

  else if (v22 < v24)
  {
LABEL_37:
    *result = v21;
    *a2 = v23;
  }

  return result;
}

double std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(a1, a2, a3);
  v9 = *a4;
  v10 = *(*a4 + 2);
  v11 = *a3;
  v12 = *(*a3 + 2);
  if (v10 == v12)
  {
    if (*(*a4 + 2))
    {
      result = *(v9 + 104);
      v13 = (v11 + 104);
    }

    else
    {
      result = **(**(v9 + 40) + 16);
      v13 = *(**(v11 + 40) + 16);
    }

    if (result <= *v13)
    {
      return result;
    }
  }

  else if (v10 >= v12)
  {
    return result;
  }

  *a3 = v9;
  *a4 = v11;
  v14 = *a3;
  v15 = *(*a3 + 2);
  v16 = *a2;
  v17 = *(*a2 + 2);
  if (v15 != v17)
  {
    if (v15 >= v17)
    {
      return result;
    }

LABEL_15:
    *a2 = v14;
    *a3 = v16;
    v19 = *a2;
    v20 = *(*a2 + 2);
    v21 = *a1;
    v22 = *(*a1 + 2);
    if (v20 == v22)
    {
      if (*(*a2 + 2))
      {
        result = *(v19 + 104);
        v23 = (v21 + 104);
      }

      else
      {
        result = **(**(v19 + 40) + 16);
        v23 = *(**(v21 + 40) + 16);
      }

      if (result <= *v23)
      {
        return result;
      }
    }

    else if (v20 >= v22)
    {
      return result;
    }

    *a1 = v19;
    *a2 = v21;
    return result;
  }

  if (*(*a3 + 2))
  {
    result = *(v14 + 104);
    v18 = (v16 + 104);
  }

  else
  {
    result = **(**(v14 + 40) + 16);
    v18 = *(**(v16 + 40) + 16);
  }

  if (result > *v18)
  {
    goto LABEL_15;
  }

  return result;
}

double std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(a1, a2, a3, a4);
  v11 = *a5;
  v12 = *(*a5 + 2);
  v13 = *a4;
  v14 = *(*a4 + 2);
  if (v12 == v14)
  {
    if (*(*a5 + 2))
    {
      result = *(v11 + 104);
      v15 = (v13 + 104);
    }

    else
    {
      result = **(**(v11 + 40) + 16);
      v15 = *(**(v13 + 40) + 16);
    }

    if (result <= *v15)
    {
      return result;
    }
  }

  else if (v12 >= v14)
  {
    return result;
  }

  *a4 = v11;
  *a5 = v13;
  v16 = *a4;
  v17 = *(*a4 + 2);
  v18 = *a3;
  v19 = *(*a3 + 2);
  if (v17 == v19)
  {
    if (*(*a4 + 2))
    {
      result = *(v16 + 104);
      v20 = (v18 + 104);
    }

    else
    {
      result = **(**(v16 + 40) + 16);
      v20 = *(**(v18 + 40) + 16);
    }

    if (result <= *v20)
    {
      return result;
    }
  }

  else if (v17 >= v19)
  {
    return result;
  }

  *a3 = v16;
  *a4 = v18;
  v21 = *a3;
  v22 = *(*a3 + 2);
  v23 = *a2;
  v24 = *(*a2 + 2);
  if (v22 != v24)
  {
    if (v22 >= v24)
    {
      return result;
    }

LABEL_22:
    *a2 = v21;
    *a3 = v23;
    v26 = *a2;
    v27 = *(*a2 + 2);
    v28 = *a1;
    v29 = *(*a1 + 2);
    if (v27 == v29)
    {
      if (*(*a2 + 2))
      {
        result = *(v26 + 104);
        v30 = (v28 + 104);
      }

      else
      {
        result = **(**(v26 + 40) + 16);
        v30 = *(**(v28 + 40) + 16);
      }

      if (result <= *v30)
      {
        return result;
      }
    }

    else if (v27 >= v29)
    {
      return result;
    }

    *a1 = v26;
    *a2 = v28;
    return result;
  }

  if (*(*a3 + 2))
  {
    result = *(v21 + 104);
    v25 = (v23 + 104);
  }

  else
  {
    result = **(**(v21 + 40) + 16);
    v25 = *(**(v23 + 40) + 16);
  }

  if (result > *v25)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
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
      v6 = *(v5 + 2);
      v7 = *a1;
      v8 = *(*a1 + 2);
      if (v6 == v8)
      {
        if (*(v5 + 2))
        {
          v9 = *(v5 + 104);
          v10 = (v7 + 104);
        }

        else
        {
          v9 = **(**(v5 + 40) + 16);
          v10 = *(**(v7 + 40) + 16);
        }

        if (v9 <= *v10)
        {
          return 1;
        }

        goto LABEL_39;
      }

      if (v6 < v8)
      {
LABEL_39:
        *a1 = v5;
        *(a2 - 1) = v7;
      }

      return 1;
    }
  }

  v11 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(a1, a1 + 1, a1 + 2);
  v12 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *v12;
    v16 = *(*v12 + 2);
    v17 = *v11;
    v18 = *(*v11 + 2);
    if (v16 != v18)
    {
      if (v16 < v18)
      {
        break;
      }

      goto LABEL_35;
    }

    if (*(*v12 + 2))
    {
      v19 = *(v15 + 104);
      v20 = (v17 + 104);
    }

    else
    {
      v19 = **(**(v15 + 40) + 16);
      v20 = *(**(v17 + 40) + 16);
    }

    if (v19 > *v20)
    {
      break;
    }

LABEL_35:
    v11 = v12;
    v13 += 8;
    if (++v12 == a2)
    {
      return 1;
    }
  }

  *v12 = 0;
  v30 = v15;
  v21 = *v11;
  for (i = v13; ; i -= 8)
  {
    *(a1 + i + 16) = 0;
    std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100]((a1 + i + 24), v21);
    v23 = v30;
    if (i == -16)
    {
      v11 = a1;
      goto LABEL_33;
    }

    v24 = *(v30 + 2);
    v21 = *(a1 + i + 8);
    v25 = *(v21 + 2);
    if (v24 == v25)
    {
      break;
    }

    if (v24 >= v25)
    {
      goto LABEL_33;
    }

LABEL_30:
    --v11;
  }

  if (*(v30 + 2))
  {
    v26 = *(v30 + 104);
    v27 = (v21 + 104);
  }

  else
  {
    v26 = **(**(v30 + 40) + 16);
    v27 = *(**(v21 + 40) + 16);
  }

  if (v26 > *v27)
  {
    goto LABEL_30;
  }

  v11 = (a1 + i + 16);
LABEL_33:
  v30 = 0;
  std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](v11, v23);
  if (++v14 != 8)
  {
    std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](&v30, 0);
    goto LABEL_35;
  }

  v28 = v12 + 1 == a2;
  std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](&v30, 0);
  return v28;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineStitchSegment>(uint64_t a1, void *a2)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 1;
  k = a1;
  while (1)
  {
    a1 = k;
    v10 = a2 - k;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          result.n128_u64[0] = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(k, &k[1], &a2[-1]).n128_u64[0];
          return result;
        case 4:
          result.n128_u64[0] = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(k, &k[1], &k[2]).n128_u64[0];
          v60 = *(v8->n128_u64[0] + 8);
          v61 = *(k[2].n128_u64[0] + 8);
          v62 = *(v60 + 60);
          if (v62 == *(v61 + 60))
          {
            if (*(*(v60 + 16) + 24) >= *(*(v61 + 16) + 24))
            {
              return result;
            }
          }

          else if (v62)
          {
            return result;
          }

          result = k[2];
          v136 = v8->n128_u64[0];
          k[2].n128_u16[4] = a2[-1].n128_u16[4];
          k[2].n128_u64[0] = v136;
          a2[-1].n128_u16[4] = result.n128_u16[4];
          v8->n128_u64[0] = result.n128_u64[0];
          v137 = *(k[2].n128_u64[0] + 8);
          v138 = *(k[1].n128_u64[0] + 8);
          v139 = *(v137 + 60);
          if (v139 == *(v138 + 60))
          {
            if (*(*(v137 + 16) + 24) >= *(*(v138 + 16) + 24))
            {
              return result;
            }
          }

          else if (v139)
          {
            return result;
          }

          result = k[1];
          k[1].n128_u64[0] = k[2].n128_u64[0];
          k[1].n128_u16[4] = k[2].n128_u16[4];
          k[2].n128_u64[0] = result.n128_u64[0];
          k[2].n128_u16[4] = result.n128_u16[4];
          v152 = *(k[1].n128_u64[0] + 8);
          v153 = *(k->n128_u64[0] + 8);
          v154 = *(v152 + 60);
          if (v154 == *(v153 + 60))
          {
            if (*(*(v152 + 16) + 24) >= *(*(v153 + 16) + 24))
            {
              return result;
            }
          }

          else if (v154)
          {
            return result;
          }

          result = *k;
          v160 = *k;
          k->n128_u64[0] = k[1].n128_u64[0];
          k->n128_u16[4] = k[1].n128_u16[4];
          k[1].n128_u64[0] = v160.n128_u64[0];
          k[1].n128_u16[4] = v160.n128_u16[4];
          return result;
        case 5:

          result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(k, &k[1], &k[2], &k[3], &a2[-1]).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v57 = *(v8->n128_u64[0] + 8);
        v58 = *(k->n128_u64[0] + 8);
        v59 = *(v57 + 60);
        if (v59 == *(v58 + 60))
        {
          if (*(*(v57 + 16) + 24) >= *(*(v58 + 16) + 24))
          {
            return result;
          }
        }

        else if (v59)
        {
          return result;
        }

        result = *k;
        v159 = *k;
        v135 = v8->n128_u64[0];
        k->n128_u16[4] = a2[-1].n128_u16[4];
        k->n128_u64[0] = v135;
        a2[-1].n128_u16[4] = v159.n128_u16[4];
        v8->n128_u64[0] = v159.n128_u64[0];
        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (k == a2)
      {
        return result;
      }

      v80 = (v10 - 2) >> 1;
      v81 = v80;
      while (1)
      {
        v82 = v81;
        if (v80 < v81)
        {
          goto LABEL_165;
        }

        v83 = (2 * v81) | 1;
        v84 = &k[v83];
        if (2 * v82 + 2 < v10)
        {
          v85 = *(v84->n128_u64[0] + 8);
          v86 = *(v84[1].n128_u64[0] + 8);
          v87 = *(v85 + 60);
          if (v87 != *(v86 + 60))
          {
            if (v87)
            {
              goto LABEL_147;
            }

LABEL_146:
            ++v84;
            v83 = 2 * v82 + 2;
            goto LABEL_147;
          }

          if (*(*(v85 + 16) + 24) < *(*(v86 + 16) + 24))
          {
            goto LABEL_146;
          }
        }

LABEL_147:
        v88 = &k[v82];
        v89 = *(v84->n128_u64[0] + 8);
        v90 = v88->n128_u64[0];
        v91 = *(v88->n128_u64[0] + 8);
        v92 = *(v89 + 60);
        if (v92 == *(v91 + 60))
        {
          if (*(*(v89 + 16) + 24) >= *(*(v91 + 16) + 24))
          {
            goto LABEL_151;
          }
        }

        else if (v92)
        {
LABEL_151:
          v93 = v88->n128_i16[4];
          v94 = v84->n128_i16[4];
          v88->n128_u64[0] = v84->n128_u64[0];
          v88->n128_u16[4] = v94;
          if (v80 < v83)
          {
LABEL_152:
            v95 = v84;
LABEL_164:
            v95->n128_u64[0] = v90;
            v95->n128_u16[4] = v93;
            goto LABEL_165;
          }

          while (2)
          {
            v96 = 2 * v83;
            v83 = (2 * v83) | 1;
            v95 = &k[v83];
            v97 = v96 + 2;
            if (v97 < v10)
            {
              v98 = *(v95->n128_u64[0] + 8);
              v99 = *(v95[1].n128_u64[0] + 8);
              v100 = *(v98 + 60);
              if (v100 == *(v99 + 60))
              {
                if (*(*(v98 + 16) + 24) >= *(*(v99 + 16) + 24))
                {
                  goto LABEL_159;
                }
              }

              else if (v100)
              {
                goto LABEL_159;
              }

              ++v95;
              v83 = v97;
            }

LABEL_159:
            v101 = *(v95->n128_u64[0] + 8);
            v102 = *(v90 + 8);
            v103 = *(v101 + 60);
            if (v103 == *(v102 + 60))
            {
              if (*(*(v101 + 16) + 24) < *(*(v102 + 16) + 24))
              {
                goto LABEL_152;
              }
            }

            else if ((v103 & 1) == 0)
            {
              goto LABEL_152;
            }

            v104 = v95->n128_u64[0];
            v84->n128_u16[4] = v95->n128_u16[4];
            v84->n128_u64[0] = v104;
            v84 = v95;
            if (v80 < v83)
            {
              goto LABEL_164;
            }

            continue;
          }
        }

LABEL_165:
        v81 = v82 - 1;
        if (!v82)
        {
          while (1)
          {
            v105 = 0;
            result = *k;
            v158 = *k;
            v106 = k;
            do
            {
              v107 = v106;
              v108 = &v106[16 * v105];
              v106 = v108 + 16;
              v109 = 2 * v105;
              v105 = (2 * v105) | 1;
              v110 = v109 + 2;
              if (v110 >= v10)
              {
                goto LABEL_173;
              }

              v112 = *(v108 + 4);
              v111 = v108 + 32;
              v113 = *(*(v111 - 2) + 8);
              v114 = *(v112 + 8);
              v115 = *(v113 + 60);
              if (v115 != *(v114 + 60))
              {
                if (v115)
                {
                  goto LABEL_173;
                }

LABEL_172:
                v106 = v111;
                v105 = v110;
                goto LABEL_173;
              }

              if (*(*(v113 + 16) + 24) < *(*(v114 + 16) + 24))
              {
                goto LABEL_172;
              }

LABEL_173:
              v116 = *v106;
              *(v107 + 4) = *(v106 + 4);
              *v107 = v116;
            }

            while (v105 <= ((v10 - 2) >> 1));
            if (v106 == --a2)
            {
              *(v106 + 4) = v158.n128_u16[4];
              *v106 = v158.n128_u64[0];
              goto LABEL_189;
            }

            v117 = a2->n128_u64[0];
            *(v106 + 4) = a2->n128_u16[4];
            *v106 = v117;
            a2->n128_u16[4] = v158.n128_u16[4];
            a2->n128_u64[0] = v158.n128_u64[0];
            v118 = (v106 - k + 16) >> 4;
            v119 = v118 - 2;
            if (v118 < 2)
            {
              goto LABEL_189;
            }

            v120 = v119 >> 1;
            v121 = &k[v119 >> 1];
            v122 = *(v121->n128_u64[0] + 8);
            v123 = *v106;
            v124 = *(*v106 + 8);
            v125 = *(v122 + 60);
            if (v125 == *(v124 + 60))
            {
              if (*(*(v122 + 16) + 24) >= *(*(v124 + 16) + 24))
              {
                goto LABEL_189;
              }
            }

            else if (v125)
            {
              goto LABEL_189;
            }

            v126 = *(v106 + 4);
            v127 = v121->n128_i16[4];
            *v106 = v121->n128_u64[0];
            *(v106 + 4) = v127;
            if (v119 >= 2)
            {
              do
              {
                v129 = v120 - 1;
                v120 = (v120 - 1) >> 1;
                v128 = &k[v120];
                v130 = *(v128->n128_u64[0] + 8);
                v131 = *(v123 + 8);
                v132 = *(v130 + 60);
                if (v132 == *(v131 + 60))
                {
                  if (*(*(v130 + 16) + 24) >= *(*(v131 + 16) + 24))
                  {
                    goto LABEL_182;
                  }
                }

                else if (v132)
                {
                  goto LABEL_182;
                }

                v133 = v128->n128_u64[0];
                v121->n128_u16[4] = v128->n128_u16[4];
                v121->n128_u64[0] = v133;
                v121 = &k[v120];
              }

              while (v129 > 1);
            }

            else
            {
LABEL_182:
              v128 = v121;
            }

            v128->n128_u64[0] = v123;
            v128->n128_u16[4] = v126;
LABEL_189:
            if (v10-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v11 = v10 >> 1;
    v12 = &k[v10 >> 1];
    if (v10 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(&a1[v10 >> 1], a1, &a2[-1]);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(a1, &a1[v10 >> 1], &a2[-1]);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(&a1[1], &v12[-1], &a2[-2]);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(&a1[2], &a1[v11 + 1], &a2[-3]);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(&v12[-1], v12, &a1[v11 + 1]);
      result = *a1;
      v155 = *a1;
      v14 = v12->n128_u64[0];
      a1->n128_u16[4] = v12->n128_u16[4];
      a1->n128_u64[0] = v14;
      v12->n128_u16[4] = v155.n128_u16[4];
      v12->n128_u64[0] = v155.n128_u64[0];
    }

    --a3;
    v15 = a1->n128_u64[0];
    if (a4)
    {
      v16 = *(v15 + 8);
      v17 = *(v16 + 60);
LABEL_20:
      v20 = a1->n128_i64[1];
      for (i = a1 + 1; ; ++i)
      {
        v22 = *(i->n128_u64[0] + 8);
        v23 = *(v22 + 60);
        if (v23 != v17)
        {
          break;
        }

        if (*(*(v22 + 16) + 24) >= *(*(v16 + 16) + 24))
        {
          goto LABEL_26;
        }

LABEL_25:
        ;
      }

      if ((v23 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_26:
      j = a2 - 1;
      if (&i[-1] != a1)
      {
        while (1)
        {
          v25 = *(j->n128_u64[0] + 8);
          v26 = *(v25 + 60);
          if (v26 == v17)
          {
            if (*(*(v25 + 16) + 24) < *(*(v16 + 16) + 24))
            {
              goto LABEL_41;
            }
          }

          else if ((v26 & 1) == 0)
          {
            goto LABEL_41;
          }

          --j;
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          v27 = *(j->n128_u64[0] + 8);
          v28 = *(v27 + 60);
          if (v28 == v17)
          {
            if (i >= j || *(*(v27 + 16) + 24) < *(*(v16 + 16) + 24))
            {
              break;
            }
          }

          else if (i >= j || (v28 & 1) == 0)
          {
            break;
          }
        }
      }

LABEL_41:
      k = i;
      if (i < j)
      {
        k = i;
        v29 = j;
        do
        {
          v156 = *k;
          v30 = *v29;
          k->n128_u16[4] = *(v29 + 8);
          k->n128_u64[0] = v30;
          *(v29 + 8) = v156.n128_u16[4];
          *v29 = v156.n128_u64[0];
          v31 = *(v15 + 8);
          v32 = *(v31 + 60);
          do
          {
            while (1)
            {
              v33 = k[1].n128_u64[0];
              ++k;
              v34 = *(v33 + 8);
              v35 = *(v34 + 60);
              if (v35 != v32)
              {
                break;
              }

              if (*(*(v34 + 16) + 24) >= *(*(v31 + 16) + 24))
              {
                goto LABEL_50;
              }
            }
          }

          while ((v35 & 1) == 0);
          do
          {
LABEL_50:
            while (1)
            {
              v36 = *(v29 - 16);
              v29 -= 16;
              v37 = *(v36 + 8);
              v38 = *(v37 + 60);
              if (v38 == v32)
              {
                break;
              }

              if ((v38 & 1) == 0)
              {
                goto LABEL_52;
              }
            }
          }

          while (*(*(v37 + 16) + 24) >= *(*(v31 + 16) + 24));
LABEL_52:
          ;
        }

        while (k < v29);
      }

      if (&k[-1] != a1)
      {
        v39 = k[-1].n128_u64[0];
        a1->n128_u16[4] = k[-1].n128_u16[4];
        a1->n128_u64[0] = v39;
      }

      k[-1].n128_u64[0] = v15;
      k[-1].n128_u16[4] = v20;
      if (i < j)
      {
LABEL_58:
        std::__introsort<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,false>(a1, &k[-1], a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*>(a1, &k[-1]);
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*>(k, a2))
        {
          a2 = k - 1;
          if (v40)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v40)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      v18 = *(a1[-1].n128_u64[0] + 8);
      v16 = *(v15 + 8);
      v19 = *(v18 + 60);
      v17 = *(v16 + 60);
      if (v19 == v17)
      {
        v17 = *(v18 + 60);
        if (*(*(v18 + 16) + 24) < *(*(v16 + 16) + 24))
        {
          v17 = *(v18 + 60);
          goto LABEL_20;
        }
      }

      else if ((v19 & 1) == 0)
      {
        goto LABEL_20;
      }

      v41 = *(v8->n128_u64[0] + 8);
      v42 = *(v41 + 60);
      if (v17 == v42)
      {
        if (*(*(v16 + 16) + 24) < *(*(v41 + 16) + 24))
        {
          v43 = v17;
LABEL_71:
          for (k = a1 + 1; ; ++k)
          {
            v45 = *(k->n128_u64[0] + 8);
            if (v17 == *(v45 + 60))
            {
              if (*(*(v16 + 16) + 24) < *(*(v45 + 16) + 24))
              {
                goto LABEL_77;
              }
            }

            else if ((v43 & 1) == 0)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (!v17)
      {
        v43 = 0;
        goto LABEL_71;
      }

      for (k = a1 + 1; k < a2; ++k)
      {
        v44 = *(k->n128_u64[0] + 8);
        if (v17 == *(v44 + 60))
        {
          if (*(*(v16 + 16) + 24) < *(*(v44 + 16) + 24))
          {
            break;
          }
        }

        else if ((v17 & 1) == 0)
        {
          break;
        }
      }

LABEL_77:
      m = a2;
      if (k < a2)
      {
        for (m = a2[-1].n128_u64; ; m -= 16)
        {
          if (v17 == v42)
          {
            if (*(*(v16 + 16) + 24) >= *(*(v41 + 16) + 24))
            {
              break;
            }
          }

          else if (v17)
          {
            break;
          }

          v47 = *(m - 16);
          v41 = *(v47 + 8);
          LOBYTE(v42) = *(v41 + 60);
        }
      }

      v48 = a1->n128_i64[1];
LABEL_85:
      while (k < m)
      {
        result = *k;
        v157 = *k;
        v49 = *m;
        k->n128_u16[4] = *(m + 8);
        k->n128_u64[0] = v49;
        *(m + 8) = v157.n128_u16[4];
        *m = v157.n128_u64[0];
        v50 = *(v15 + 8);
        v51 = *(v50 + 60);
        do
        {
          while (1)
          {
            v52 = k[1].n128_u64[0];
            ++k;
            v53 = *(v52 + 8);
            if (v51 != *(v53 + 60))
            {
              break;
            }

            if (*(*(v50 + 16) + 24) < *(*(v53 + 16) + 24))
            {
              goto LABEL_93;
            }
          }
        }

        while ((v51 & 1) != 0);
        do
        {
LABEL_93:
          while (1)
          {
            v54 = *(m - 16);
            m -= 16;
            v55 = *(v54 + 8);
            if (v51 == *(v55 + 60))
            {
              break;
            }

            if (v51)
            {
              goto LABEL_85;
            }
          }
        }

        while (*(*(v50 + 16) + 24) < *(*(v55 + 16) + 24));
      }

      if (&k[-1] != a1)
      {
        v56 = k[-1].n128_u64[0];
        a1->n128_u16[4] = k[-1].n128_u16[4];
        a1->n128_u64[0] = v56;
      }

      a4 = 0;
      k[-1].n128_u64[0] = v15;
      k[-1].n128_u16[4] = v48;
    }
  }

  v63 = k + 1;
  v65 = k == a2 || v63 == a2;
  if ((a4 & 1) == 0)
  {
    if (v65)
    {
      return result;
    }

    while (1)
    {
      v140 = a1;
      a1 = v63;
      v141 = v140[1].n128_i64[0];
      v142 = *(v141 + 8);
      v143 = *(v140->n128_u64[0] + 8);
      v144 = *(v142 + 60);
      if (v144 == *(v143 + 60))
      {
        if (*(*(v142 + 16) + 24) >= *(*(v143 + 16) + 24))
        {
          goto LABEL_209;
        }
      }

      else if (v144)
      {
        goto LABEL_209;
      }

      v145 = v140[1].n128_i16[4];
      do
      {
        while (1)
        {
          v146 = v140;
          v140[1].n128_u64[0] = v140->n128_u64[0];
          v147 = v140->n128_i16[4];
          v148 = v140[-1].n128_i64[0];
          --v140;
          v146[1].n128_u16[4] = v147;
          v149 = *(v141 + 8);
          v150 = *(v148 + 8);
          v151 = *(v149 + 60);
          if (v151 != *(v150 + 60))
          {
            break;
          }

          if (*(*(v149 + 16) + 24) >= *(*(v150 + 16) + 24))
          {
            goto LABEL_208;
          }
        }
      }

      while ((v151 & 1) == 0);
LABEL_208:
      v146->n128_u64[0] = v141;
      v146->n128_u16[4] = v145;
LABEL_209:
      v63 = a1 + 1;
      if (&a1[1] == a2)
      {
        return result;
      }
    }
  }

  if (v65)
  {
    return result;
  }

  v66 = 0;
  v67 = k;
  while (2)
  {
    v68 = v67;
    v67 = v63;
    v69 = v68[1].n128_u64[0];
    v70 = *(v69 + 8);
    v71 = *(v68->n128_u64[0] + 8);
    v72 = *(v70 + 60);
    if (v72 == *(v71 + 60))
    {
      if (*(*(v70 + 16) + 24) >= *(*(v71 + 16) + 24))
      {
        goto LABEL_136;
      }
    }

    else if (v72)
    {
      goto LABEL_136;
    }

    v73 = v68[1].n128_u16[4];
    v67->n128_u64[0] = v68->n128_u64[0];
    v67->n128_u16[4] = v68->n128_u16[4];
    v74 = k;
    if (v68 == k)
    {
      goto LABEL_135;
    }

    v75 = v66;
    while (2)
    {
      v76 = k + v75;
      v77 = *(v69 + 8);
      v78 = *(*(k[-1].n128_u64 + v75) + 8);
      v79 = *(v77 + 60);
      if (v79 == *(v78 + 60))
      {
        if (*(*(v77 + 16) + 24) >= *(*(v78 + 16) + 24))
        {
          v74 = v68;
          goto LABEL_135;
        }

LABEL_132:
        --v68;
        *v76 = *(k[-1].n128_u64 + v75);
        *(v76 + 4) = *(&k->n128_u16[-4] + v75);
        v75 -= 16;
        if (!v75)
        {
          v74 = k;
          goto LABEL_135;
        }

        continue;
      }

      break;
    }

    if ((v79 & 1) == 0)
    {
      goto LABEL_132;
    }

    v74 = (k + v75);
LABEL_135:
    v74->n128_u64[0] = v69;
    v74->n128_u16[4] = v73;
LABEL_136:
    v63 = v67 + 1;
    v66 += 16;
    if (&v67[1] != a2)
    {
      continue;
    }

    return result;
  }
}

__n128 std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(_WORD *a1, _WORD *a2, _WORD *a3)
{
  v3 = *(*a2 + 8);
  v4 = *(*a1 + 8);
  v5 = *(v3 + 60);
  if (v5 == *(v4 + 60))
  {
    if (*(*(v3 + 16) + 24) >= *(*(v4 + 16) + 24))
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = *(*a3 + 8);
    v9 = *(v8 + 60);
    if (v9 == v5)
    {
      if (*(*(v8 + 16) + 24) >= *(*(v3 + 16) + 24))
      {
LABEL_9:
        result = *a1;
        v22 = *a1;
        v11 = a2[4];
        *a1 = *a2;
        a1[4] = v11;
        *a2 = v22;
        a2[4] = WORD4(v22);
        v12 = *(*a3 + 8);
        v13 = *(*a2 + 8);
        v14 = *(v12 + 60);
        if (v14 == *(v13 + 60))
        {
          if (*(*(v12 + 16) + 24) >= *(*(v13 + 16) + 24))
          {
            return result;
          }
        }

        else if (v14)
        {
          return result;
        }

        result = *a2;
        v24 = *a2;
        v20 = a3[4];
        *a2 = *a3;
        a2[4] = v20;
LABEL_20:
        *a3 = v24;
        a3[4] = WORD4(v24);
        return result;
      }
    }

    else if (v9)
    {
      goto LABEL_9;
    }

    result = *a1;
    v24 = *a1;
    v19 = a3[4];
    *a1 = *a3;
    a1[4] = v19;
    goto LABEL_20;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = *(*a3 + 8);
  v7 = *(v6 + 60);
  if (v7 == v5)
  {
    if (*(*(v6 + 16) + 24) >= *(*(v3 + 16) + 24))
    {
      return result;
    }
  }

  else if (v7)
  {
    return result;
  }

  result = *a2;
  v23 = *a2;
  v15 = a3[4];
  *a2 = *a3;
  a2[4] = v15;
  *a3 = v23;
  a3[4] = WORD4(v23);
  v16 = *(*a2 + 8);
  v17 = *(*a1 + 8);
  v18 = *(v16 + 60);
  if (v18 != *(v17 + 60))
  {
    if (v18)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (*(*(v16 + 16) + 24) < *(*(v17 + 16) + 24))
  {
LABEL_22:
    result = *a1;
    v25 = *a1;
    v21 = a2[4];
    *a1 = *a2;
    a1[4] = v21;
    *a2 = v25;
    a2[4] = WORD4(v25);
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(_WORD *a1, _WORD *a2, _WORD *a3, _WORD *a4, _WORD *a5)
{
  result.n128_u64[0] = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(a1, a2, a3).n128_u64[0];
  v11 = *(*a4 + 8);
  v12 = *(*a3 + 8);
  v13 = *(v11 + 60);
  if (v13 == *(v12 + 60))
  {
    if (*(*(v11 + 16) + 24) >= *(*(v12 + 16) + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v13)
  {
    goto LABEL_14;
  }

  result = *a3;
  v39 = *a3;
  v14 = a4[4];
  *a3 = *a4;
  a3[4] = v14;
  *a4 = v39;
  a4[4] = WORD4(v39);
  v15 = *(*a3 + 8);
  v16 = *(*a2 + 8);
  v17 = *(v15 + 60);
  if (v17 == *(v16 + 60))
  {
    if (*(*(v15 + 16) + 24) >= *(*(v16 + 16) + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v17)
  {
    goto LABEL_14;
  }

  result = *a2;
  v40 = *a2;
  v18 = a3[4];
  *a2 = *a3;
  a2[4] = v18;
  *a3 = v40;
  a3[4] = WORD4(v40);
  v19 = *(*a2 + 8);
  v20 = *(*a1 + 8);
  v21 = *(v19 + 60);
  if (v21 != *(v20 + 60))
  {
    if (v21)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (*(*(v19 + 16) + 24) < *(*(v20 + 16) + 24))
  {
LABEL_13:
    result = *a1;
    v41 = *a1;
    v22 = a2[4];
    *a1 = *a2;
    a1[4] = v22;
    *a2 = v41;
    a2[4] = WORD4(v41);
  }

LABEL_14:
  v23 = *(*a5 + 8);
  v24 = *(*a4 + 8);
  v25 = *(v23 + 60);
  if (v25 == *(v24 + 60))
  {
    if (*(*(v23 + 16) + 24) >= *(*(v24 + 16) + 24))
    {
      return result;
    }
  }

  else if (v25)
  {
    return result;
  }

  result = *a4;
  v42 = *a4;
  v26 = a5[4];
  *a4 = *a5;
  a4[4] = v26;
  *a5 = v42;
  a5[4] = WORD4(v42);
  v27 = *(*a4 + 8);
  v28 = *(*a3 + 8);
  v29 = *(v27 + 60);
  if (v29 == *(v28 + 60))
  {
    if (*(*(v27 + 16) + 24) >= *(*(v28 + 16) + 24))
    {
      return result;
    }
  }

  else if (v29)
  {
    return result;
  }

  result = *a3;
  v43 = *a3;
  v30 = a4[4];
  *a3 = *a4;
  a3[4] = v30;
  *a4 = v43;
  a4[4] = WORD4(v43);
  v31 = *(*a3 + 8);
  v32 = *(*a2 + 8);
  v33 = *(v31 + 60);
  if (v33 == *(v32 + 60))
  {
    if (*(*(v31 + 16) + 24) >= *(*(v32 + 16) + 24))
    {
      return result;
    }
  }

  else if (v33)
  {
    return result;
  }

  result = *a2;
  v44 = *a2;
  v34 = a3[4];
  *a2 = *a3;
  a2[4] = v34;
  *a3 = v44;
  a3[4] = WORD4(v44);
  v35 = *(*a2 + 8);
  v36 = *(*a1 + 8);
  v37 = *(v35 + 60);
  if (v37 != *(v36 + 60))
  {
    if (v37)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (*(*(v35 + 16) + 24) < *(*(v36 + 16) + 24))
  {
LABEL_30:
    result = *a1;
    v45 = *a1;
    v38 = a2[4];
    *a1 = *a2;
    a1[4] = v38;
    *a2 = v45;
    a2[4] = WORD4(v45);
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*>(char *a1, char *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(a1, a1 + 8, a2 - 8);
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(a1, a1 + 8, a1 + 16, a1 + 24, a2 - 8);
        return 1;
      }

      goto LABEL_12;
    }

    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(a1, a1 + 8, a1 + 16);
    v23 = *(a2 - 2);
    v22 = a2 - 16;
    v24 = *(v23 + 8);
    v25 = *(*(a1 + 4) + 8);
    v26 = *(v24 + 60);
    if (v26 == *(v25 + 60))
    {
      if (*(*(v24 + 16) + 24) >= *(*(v25 + 16) + 24))
      {
        return 1;
      }
    }

    else if (v26)
    {
      return 1;
    }

    v37 = *(a1 + 2);
    v28 = *(v22 + 4);
    *(a1 + 4) = *v22;
    *(a1 + 20) = v28;
    *v22 = v37;
    *(v22 + 4) = WORD4(v37);
    v29 = *(*(a1 + 4) + 8);
    v30 = *(*(a1 + 2) + 8);
    v31 = *(v29 + 60);
    if (v31 == *(v30 + 60))
    {
      if (*(*(v29 + 16) + 24) >= *(*(v30 + 16) + 24))
      {
        return 1;
      }
    }

    else if (v31)
    {
      return 1;
    }

    v38 = *(a1 + 1);
    *(a1 + 2) = *(a1 + 4);
    *(a1 + 12) = *(a1 + 20);
    *(a1 + 4) = v38;
    *(a1 + 20) = WORD4(v38);
    v32 = *(*(a1 + 2) + 8);
    v33 = *(*a1 + 8);
    v34 = *(v32 + 60);
    if (v34 == *(v33 + 60))
    {
      if (*(*(v32 + 16) + 24) >= *(*(v33 + 16) + 24))
      {
        return 1;
      }
    }

    else if (v34)
    {
      return 1;
    }

    v39 = *a1;
    *a1 = *(a1 + 2);
    *(a1 + 4) = *(a1 + 12);
    *(a1 + 2) = v39;
    *(a1 + 12) = WORD4(v39);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 16;
    v6 = *(*(a2 - 2) + 8);
    v7 = *(*a1 + 8);
    v8 = *(v6 + 60);
    if (v8 == *(v7 + 60))
    {
      if (*(*(v6 + 16) + 24) >= *(*(v7 + 16) + 24))
      {
        return 1;
      }
    }

    else if (v8)
    {
      return 1;
    }

    v36 = *a1;
    v27 = *(a2 - 4);
    *a1 = *v5;
    *(a1 + 4) = v27;
    *v5 = v36;
    *(a2 - 4) = WORD4(v36);
    return 1;
  }

LABEL_12:
  v9 = a1 + 32;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::connectTileLabelLineSegments(std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>> &,double,std::vector<std::pair<unsigned long,unsigned long>> &)::$_0 &,md::SegmentConnectionEntry*,0>(a1, a1 + 8, a1 + 16);
  v10 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (2)
  {
    v13 = *v10;
    v14 = *(*v10 + 8);
    v15 = *(*v9 + 8);
    v16 = *(v14 + 60);
    if (v16 == *(v15 + 60))
    {
      if (*(*(v14 + 16) + 24) >= *(*(v15 + 16) + 24))
      {
        goto LABEL_27;
      }
    }

    else if (v16)
    {
      goto LABEL_27;
    }

    v17 = *(v10 + 4);
    *v10 = *v9;
    *(v10 + 4) = *(v9 + 4);
    v18 = v11;
    while (1)
    {
      v19 = *(v13 + 8);
      v20 = *(*&a1[v18 + 16] + 8);
      v21 = *(v19 + 60);
      if (v21 == *(v20 + 60))
      {
        if (*(*(v19 + 16) + 24) >= *(*(v20 + 16) + 24))
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      if (v21)
      {
        break;
      }

LABEL_23:
      v9 -= 16;
      *&a1[v18 + 32] = *&a1[v18 + 16];
      *&a1[v18 + 40] = *&a1[v18 + 24];
      v18 -= 16;
      if (v18 == -32)
      {
        v9 = a1;
        goto LABEL_26;
      }
    }

    v9 = &a1[v18 + 32];
LABEL_26:
    *v9 = v13;
    *(v9 + 4) = v17;
    if (++v12 != 8)
    {
LABEL_27:
      v9 = v10;
      v11 += 16;
      v10 += 16;
      if (v10 == a2)
      {
        return 1;
      }

      continue;
    }

    return v10 + 16 == a2;
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStitchSegment>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 136 * a2, 0x1060040230C754DuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void non-virtual thunk toggl::Ribbon::BaseMesh::~BaseMesh(ggl::Ribbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Ribbon::BaseMesh::~BaseMesh(ggl::Ribbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::Ribbon::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Ribbon::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void *ggl::Ribbon::BaseMesh::BaseMesh(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::Ribbon::DefaultVbo>::typedReflection();
  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::Ribbon::DefaultVbo>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = a1 + 15;
  *a1 = &unk_1F2A35D88;
  a1[2] = &unk_1F2A35DA8;
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

  *a1 = &unk_1F2A35D48;
  a1[2] = &unk_1F2A35D68;
  return a1;
}

void md::StandardPassList::buildFrameGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, md::FrameGraphBuilder *a5)
{
  v108 = *MEMORY[0x1E69E9840];
  v10 = md::LayoutContext::get<md::LightingLogicContext>(*(a2 + 8));
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = *(v10 + 259);
  v86[0] = *(v10 + 259);
  if (*(v10 + 256) == 1)
  {
    v12 = +[VKDebugSettings sharedSettings];
    v13 = [v12 enableDOF];

    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  if ((v13 & 1) == 0)
  {
LABEL_7:
    *(a1 + 112) = 0;
    *(a1 + 176) = 0;
    goto LABEL_11;
  }

LABEL_8:
  v104[0] = 1.0;
  if (v11)
  {
    v14 = +[VKDebugSettings sharedSettings];
    [v14 daVinciSSAODepthTextureScale];
    v104[0] = v15;
  }

  md::StandardPassList::_buildSSAODOFCommonFrameGraph(a1, v86, v13, v104, a5);
LABEL_11:
  v16 = md::LayoutContext::get<md::LightingLogicContext>(*(a2 + 8));
  if (v16)
  {
    v17 = *(v16 + 259);
  }

  else
  {
    v17 = 0;
  }

  v18 = +[VKDebugSettings sharedSettings];
  [v18 daVinciSSAOTextureScale];
  v20 = v19;

  *v86 = v20;
  v21 = +[VKDebugSettings sharedSettings];
  v22 = [v21 daVinciSSAOEnableBlur];

  LOBYTE(v79[0]) = v22;
  if (*(a4 + 92))
  {
    v23 = (a4 + 9);
  }

  else
  {
    v23 = &md::FrameGraphRenderTarget::size(void)const::fallback;
  }

  v24 = v23[1];
  v25 = v23[3];
  v104[0] = v24;
  v104[1] = v25;
  md::StandardPassList::_buildSSAOFrameGraph(a1, v17 & 1, v86, v79, v104, a5);
  v26 = *(a2 + 8);
  v27 = md::LayoutContext::get<md::LightingLogicContext>(v26);
  if (v27)
  {
    md::StandardPassList::_buildShadowFrameGraph(a1, *(v27 + 257), a5);
    v26 = *(a2 + 8);
  }

  v28 = md::LayoutContext::get<md::SceneQueryContext>(v26);
  if (v28)
  {
    v29 = *(v28 + 64);
  }

  else
  {
    v29 = 0;
  }

  v30 = +[VKDebugSettings sharedSettings];
  [v30 daVinciRouteLineMaskScale];
  v32 = v31;

  *v86 = v32;
  LOBYTE(v79[0]) = [*(a3 + 104) supportsFramebufferFetch];
  if (*(a4 + 92))
  {
    v33 = (a4 + 9);
  }

  else
  {
    v33 = &md::FrameGraphRenderTarget::size(void)const::fallback;
  }

  v34 = v33[1];
  v35 = v33[3];
  v104[0] = v34;
  v104[1] = v35;
  md::StandardPassList::_buildRouteLineMaskFrameGraph(a1, v29 & 1, v86, v79, v104, a5);
  v36 = *(a3 + 104);
  if ([v36 supportsFramebufferFetch])
  {
    v37 = +[VKDebugSettings sharedSettings];
    v38 = [v37 enableDOF];

    if (v38)
    {
      v39 = *a4;
      if (*a4 && *(v39 + 112) == 1 && (v40 = *(v39 + 108), v40))
      {
        v41 = v40 | 0x100000000;
      }

      else
      {
        v41 = 0;
      }

      LOWORD(v104[0]) = 1;
      *&v104[1] = 0x3F00000000000000;
      *&v104[3] = 0x3F00000000000000;
      *&v104[5] = v41;
      LOBYTE(v104[7]) = 0;
      BYTE4(v105) = 0;
      *(&v105 + 1) = 0x100000000;
      v106[0] = 1;
      LOBYTE(v106[1]) = 0;
      if (v39 && *(v39 + 112) == 1 && (v42 = *(v39 + 108), v42))
      {
        v43 = v42 | 0x100000000;
      }

      else
      {
        v43 = 0;
      }

      *v86 = 1;
      *&v86[4] = 0x3F80000000000000;
      *&v86[12] = 0x3F80000000000000;
      *&v86[20] = v43;
      v86[28] = 0;
      BYTE4(v87) = 0;
      *(&v87 + 1) = 0x100000001;
      LODWORD(v88) = 4;
      BYTE4(v88) = 0;
      if (v39 && *(v39 + 112) == 1 && (v44 = *(v39 + 108), v44))
      {
        v45 = v44 | 0x100000000;
      }

      else
      {
        v45 = 0;
      }

      LOWORD(v79[0]) = 1;
      *&v79[1] = 0x3F80000000000000;
      *&v79[3] = 0x3F80000000000000;
      v80 = v45;
      LOBYTE(v81) = 0;
      v82 = 0;
      v83 = 0x100000000;
      v84 = 1;
      v85 = 2;
      v46 = a4[8];
      if (v46 && *(v46 + 112) == 1 && (v47 = *(v46 + 108), v47))
      {
        v48 = v47 | 0x100000000;
      }

      else
      {
        v48 = 0;
      }

      LOWORD(v75[0]) = 1;
      *&v75[1] = 0x3F80000000000000;
      *&v75[3] = 0x3F80000000000000;
      v76 = v48;
      LOBYTE(v77[0]) = 0;
      LOBYTE(v77[2]) = 0;
      *&v77[3] = 0x100000001;
      v77[5] = 4;
      v78 = 1;
      v95 = 1;
      v96 = 0x3E00000000000000;
      v97 = 0x3E00000000000000;
      v98 = 0x100000002;
      v99 = 0;
      v100 = 0;
      v101 = 0x100000000;
      v102 = 1;
      v103 = 0;
      md::FrameGraphBuilder::createResource(a5, v86, "Primary Scene Color", 0x8BC3D4C00000013, 0);
    }
  }

  else
  {
  }

  *(a1 + 216) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  v49 = *(a2 + 8);
  v50 = md::LayoutContext::get<md::LightingLogicContext>(v49);
  v51 = md::LayoutContext::get<md::SceneQueryContext>(v49);
  if (v50)
  {
    v52 = v50[259];
    v53 = v50[257];
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v94 = v52;
  v93 = v53 & 1;
  if (v51)
  {
    v54 = *(v51 + 64);
  }

  else
  {
    v54 = 0;
  }

  v92 = v54 & 1;
  if (v50 && v50[256] == 1)
  {
    v55 = +[VKDebugSettings sharedSettings];
    v56 = [v55 enableDOF];
  }

  else
  {
    v56 = 0;
  }

  v91 = v56;
  if ([*(a3 + 104) supportsFramebufferFetch])
  {
    operator new();
  }

  v57 = *(a3 + 104);
  v58 = [v57 finalRenderTarget];
  v59 = [v57 linearRenderTarget];
  v61 = v59;
  if (v59)
  {
    v62 = *(a1 + 24);
    v63 = ggl::RenderTarget::width(v59);
    v64 = ggl::RenderTarget::height(v61);
    *(v62 + 40) = v63;
    *(v62 + 44) = v64;
    v65 = *(v61 + 72);
    *(v62 + 48) = *(v61 + 56);
    *(v62 + 64) = v65;
  }

  v107 = 0;
  memset(v104, 0, sizeof(v104));
  v105 = 0u;
  memset(v106, 0, 25);
  md::FrameGraphUtils::prepareGraphBuilderForRenderTarget(v104, a5, v61, "renderTarget_linearColorBuffer", 0x6F1219E0000001ELL, "renderTarget_linearDepthStencilBuffer", 0xE3A8F65400000025, v60, "renderTarget_linearMsaaResolveBuffer", 0xEECC3D6200000024);
  v66 = *(a4 + 3);
  v87 = *(a4 + 2);
  v88 = v66;
  v67 = *(a4 + 5);
  v89 = *(a4 + 4);
  v90 = v67;
  v68 = *(a4 + 1);
  *v86 = *a4;
  *&v86[16] = v68;
  v69 = *(v58 + 88);
  v70 = v69[20];
  v71 = v69[21];
  v72 = v69[17];
  v73 = v69[18];
  if (v72)
  {
    v74 = v72 | 0x100000000;
  }

  else
  {
    v74 = 0;
  }

  LOWORD(v79[0]) = 0;
  *&v79[1] = v70;
  *&v79[3] = v71;
  v80 = v74;
  v83 = 0x100000000;
  v84 = v73;
  v85 = 0;
  v82 = 1;
  v81 = 0x200000001;
  md::FrameGraphBuilder::createResource(a5, v79, "renderTarget_colorBuffer_first", 0xE22C27790000001ELL, 0);
}

void md::FrameGraphBuilder::addRenderPass<md::StandardBelowOverlaysCommandBufferIdInfo>(uint64_t a1)
{
  v2 = 0;
  v4 = *(a1 + 152);
  v3 = *(a1 + 160);
  while (1)
  {
    v5 = md::CommandBufferPool::pop(*(a1 + 184), v2, off_1E7B3B008[v2]);
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
    if (++v2 == 98)
    {
      md::FrameGraphResourcePools::constructRenderQueue(*(a1 + 184), *(a1 + 152) + v3 - v4, 0x62uLL);
    }
  }
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_5,std::allocator<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_5>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:nn200100]<0>(&__str, "Above Overlays");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = **(a1 + 8);
  std::__tree<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>>::__emplace_unique_key_args<md::FrameGraphPass *,md::FrameGraphPass * const&>(a2 + 56, __str.__r_.__value_.__l.__data_);
  v4 = *(a1 + 16);
  v5 = *v4;
  *(a2 + 120) = v4[1];
  *(a2 + 104) = v5;
  result = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  *(a2 + 184) = v4[5];
  *(a2 + 168) = v8;
  *(a2 + 152) = v7;
  *(a2 + 136) = result;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_5,std::allocator<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_5>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A363B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_4,std::allocator<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_4>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:nn200100]<0>(&__str, "Overlays Above Labels");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = **(a1 + 8);
  std::__tree<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>>::__emplace_unique_key_args<md::FrameGraphPass *,md::FrameGraphPass * const&>(a2 + 56, __str.__r_.__value_.__l.__data_);
  v4 = *(a1 + 16);
  v5 = *v4;
  *(a2 + 120) = v4[1];
  *(a2 + 104) = v5;
  result = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  *(a2 + 184) = v4[5];
  *(a2 + 168) = v8;
  *(a2 + 152) = v7;
  *(a2 + 136) = result;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_4,std::allocator<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_4>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A36368;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_3,std::allocator<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_3>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:nn200100]<0>(&__str, "Between Overlays");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = **(a1 + 8);
  std::__tree<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>>::__emplace_unique_key_args<md::FrameGraphPass *,md::FrameGraphPass * const&>(a2 + 56, __str.__r_.__value_.__l.__data_);
  v4 = *(a1 + 16);
  v5 = *v4;
  *(a2 + 120) = v4[1];
  *(a2 + 104) = v5;
  result = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  *(a2 + 184) = v4[5];
  *(a2 + 168) = v8;
  *(a2 + 152) = v7;
  *(a2 + 136) = result;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_3,std::allocator<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_3>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A36320;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_2,std::allocator<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_2>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:nn200100]<0>(&__str, "Overlays Below Labels");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = **(a1 + 8);
  std::__tree<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>>::__emplace_unique_key_args<md::FrameGraphPass *,md::FrameGraphPass * const&>(a2 + 56, __str.__r_.__value_.__l.__data_);
  v4 = *(a1 + 16);
  v5 = *v4;
  *(a2 + 120) = v4[1];
  *(a2 + 104) = v5;
  result = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  *(a2 + 184) = v4[5];
  *(a2 + 168) = v8;
  *(a2 + 152) = v7;
  *(a2 + 136) = result;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_2,std::allocator<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_2>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A362D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_1,std::allocator<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_1>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  std::string::basic_string[abi:nn200100]<0>(&__str, "Below Overlays");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (**(a1 + 8) == 1)
  {
    md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v4 + 104));
  }

  if (**(a1 + 24) == 1)
  {
    v5 = +[VKDebugSettings sharedSettings];
    v6 = [v5 daVinciSSAODepthAwareUpsampleEnabled];

    v7 = 144;
    if (v6)
    {
      v7 = 160;
    }

    md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v4 + v7));
  }

  if (**(a1 + 32) == 1)
  {
    md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v4 + 168));
  }

  v8 = *(a1 + 40);
  v9 = *v8;
  *(a2 + 120) = v8[1];
  *(a2 + 104) = v9;
  result = v8[2];
  v11 = v8[3];
  v12 = v8[4];
  *(a2 + 184) = v8[5];
  *(a2 + 168) = v12;
  *(a2 + 152) = v11;
  *(a2 + 136) = result;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_1,std::allocator<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_1>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A36290;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  std::string::basic_string[abi:nn200100]<0>(&__str, "Primary");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (**(a1 + 8) == 1)
  {
    md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v4 + 104));
  }

  if (**(a1 + 24) == 1)
  {
    md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v4 + 128));
  }

  if (**(a1 + 32) == 1)
  {
    md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v4 + 168));
  }

  if (**(a1 + 40) == 1)
  {
    v6 = *(v4 + 216);
    *(a2 + 104) = v6;
    if ((*(a2 + 196) & 1) == 0)
    {
      result = *(v6 + 88);
      *(a2 + 192) = *(v6 + 104);
      *(a2 + 176) = result;
      *(a2 + 196) = 1;
    }

    v7 = *(v4 + 224);
    *(a2 + 168) = *(v4 + 232);
    *(a2 + 136) = v7;
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = *v8;
    *(a2 + 120) = v8[1];
    *(a2 + 104) = v9;
    result = v8[2];
    v10 = v8[3];
    v11 = v8[4];
    *(a2 + 184) = v8[5];
    *(a2 + 168) = v11;
    *(a2 + 152) = v10;
    *(a2 + 136) = result;
  }

  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildPrimaryFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A36248;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_6,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_6>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  *(a2 + 120) = v2[1];
  *(a2 + 104) = v3;
  result = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  *(a2 + 184) = v2[5];
  *(a2 + 168) = v6;
  *(a2 + 152) = v5;
  *(a2 + 136) = result;
  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_6,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_6>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A365A8;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_5,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_5>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, __n128 *a2)
{
  v2 = *(*(a1 + 8) + 288);
  a2[6].n128_u64[1] = v2;
  if ((a2[12].n128_u8[4] & 1) == 0)
  {
    result = *(v2 + 88);
    a2[12].n128_u32[0] = *(v2 + 104);
    a2[11] = result;
    a2[12].n128_u8[4] = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_5,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_5>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A36560;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_4,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_4>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, __n128 *a2)
{
  v2 = *(*(a1 + 8) + 280);
  a2[6].n128_u64[1] = v2;
  if ((a2[12].n128_u8[4] & 1) == 0)
  {
    result = *(v2 + 88);
    a2[12].n128_u32[0] = *(v2 + 104);
    a2[11] = result;
    a2[12].n128_u8[4] = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_4,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_4>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A36518;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_3,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_3>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, __n128 *a2)
{
  v2 = *(*(a1 + 8) + 272);
  a2[6].n128_u64[1] = v2;
  if ((a2[12].n128_u8[4] & 1) == 0)
  {
    result = *(v2 + 88);
    a2[12].n128_u32[0] = *(v2 + 104);
    a2[11] = result;
    a2[12].n128_u8[4] = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_3,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_3>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A364D0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_2,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_2>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, __n128 *a2)
{
  v2 = *(*(a1 + 8) + 264);
  a2[6].n128_u64[1] = v2;
  if ((a2[12].n128_u8[4] & 1) == 0)
  {
    result = *(v2 + 88);
    a2[12].n128_u32[0] = *(v2 + 104);
    a2[11] = result;
    a2[12].n128_u8[4] = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_2,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_2>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A36488;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_1,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_1>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, __n128 *a2)
{
  v2 = *(*(a1 + 8) + 240);
  a2[6].n128_u64[1] = v2;
  if ((a2[12].n128_u8[4] & 1) == 0)
  {
    result = *(v2 + 88);
    a2[12].n128_u32[0] = *(v2 + 104);
    a2[11] = result;
    a2[12].n128_u8[4] = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_1,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_1>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A36440;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 248);
  *(a2 + 104) = v3;
  if ((*(a2 + 196) & 1) == 0)
  {
    v4 = *(v3 + 88);
    *(a2 + 192) = *(v3 + 104);
    *(a2 + 176) = v4;
    *(a2 + 196) = 1;
  }

  *(a2 + 112) = *(v2 + 256);
  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildDOFFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A363F8;
  a2[1] = v2;
  return result;
}

void ggl::Texture2D::Texture2D(uint64_t a1, int a2, int a3, int a4, void *a5, int a6)
{
  ggl::Texture::Texture(a1, "", 1, 4, a6, a4, 1, 0);
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  *v9 = &unk_1F2A5D9F0;
  *(v9 + 40) = &unk_1F2A5DA10;
  *(v9 + 104) = 1;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  *(v9 + 128) = 0;
  *(v9 + 130) = 1;
  v10 = a5[1];
  *(v9 + 136) = *a5;
  *(v9 + 144) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(v9 + 80) = a2;
  *(v9 + 84) = a3;
}

__n128 std::__function::__func<md::StandardPassList::_buildRouteLineMaskFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_1,std::allocator<md::StandardPassList::_buildRouteLineMaskFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_1>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::string::basic_string[abi:nn200100]<0>(&__str, "RouteLine DistanceField");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v5 = *(v3 + 168);
  *(a2 + 104) = v5;
  if ((*(a2 + 196) & 1) == 0)
  {
    result = *(v5 + 88);
    *(a2 + 192) = *(v5 + 104);
    *(a2 + 176) = result;
    *(a2 + 196) = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildRouteLineMaskFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_1,std::allocator<md::StandardPassList::_buildRouteLineMaskFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_1>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A361B8;
  a2[1] = v2;
  return result;
}

uint64_t md::FrameGraphBuilder::assignPhysicalResource<ggl::Texture2D>(uint64_t result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 184);
  v7 = *a2;
  v8 = *(v6 + 552);
  if (!v8)
  {
    result = geo::Pool<std::array<unsigned char,24ul>>::allocateSlab(v6 + 512);
    v8 = *(v6 + 552);
  }

  *(v6 + 552) = *v8;
  *(v8 + 8) = v7;
  *(v8 + 16) = a3;
  *v8 = &unk_1F2A35F38;
  v9 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v9 >> 47) ^ v9);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v12 = v5[12];
  if (!*&v12)
  {
    goto LABEL_20;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
    if (v11 >= *&v12)
    {
      v14 = v11 % *&v12;
    }
  }

  else
  {
    v14 = v11 & (*&v12 - 1);
  }

  v15 = *(*&v5[11] + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v17 = v16[1];
    if (v17 == v11)
    {
      break;
    }

    if (v13.u32[0] > 1uLL)
    {
      if (v17 >= *&v12)
      {
        v17 %= *&v12;
      }
    }

    else
    {
      v17 &= *&v12 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_20;
    }

LABEL_19:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_20;
    }
  }

  if (v16[2] != a2)
  {
    goto LABEL_19;
  }

  v16[3] = v8;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_5,std::allocator<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_5>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::string::basic_string[abi:nn200100]<0>(&__str, "SSAO Rescale");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3 + 128));
  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3 + 152));
  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3 + 112));
  v5 = *(v3 + 160);
  *(a2 + 104) = v5;
  if ((*(a2 + 196) & 1) == 0)
  {
    result = *(v5 + 88);
    *(a2 + 192) = *(v5 + 104);
    *(a2 + 176) = result;
    *(a2 + 196) = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_5,std::allocator<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_5>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A360C0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_4,std::allocator<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_4>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::string::basic_string[abi:nn200100]<0>(&__str, "SSAO Rescale");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3 + 144));
  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3 + 152));
  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3 + 112));
  v5 = *(v3 + 160);
  *(a2 + 104) = v5;
  if ((*(a2 + 196) & 1) == 0)
  {
    result = *(v5 + 88);
    *(a2 + 192) = *(v5 + 104);
    *(a2 + 176) = result;
    *(a2 + 196) = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_4,std::allocator<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_4>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A36078;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_3,std::allocator<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_3>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::string::basic_string[abi:nn200100]<0>(&__str, "SSAO Blur2");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3 + 136));
  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3 + 152));
  v5 = *(v3 + 144);
  *(a2 + 104) = v5;
  if ((*(a2 + 196) & 1) == 0)
  {
    result = *(v5 + 88);
    *(a2 + 192) = *(v5 + 104);
    *(a2 + 176) = result;
    *(a2 + 196) = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_3,std::allocator<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_3>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A36030;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_2,std::allocator<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_2>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::string::basic_string[abi:nn200100]<0>(&__str, "SSAO Blur");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3 + 128));
  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3 + 152));
  v5 = *(v3 + 136);
  *(a2 + 104) = v5;
  if ((*(a2 + 196) & 1) == 0)
  {
    result = *(v5 + 88);
    *(a2 + 192) = *(v5 + 104);
    *(a2 + 176) = result;
    *(a2 + 196) = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_2,std::allocator<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_2>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A35FE8;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_1,std::allocator<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_1>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::string::basic_string[abi:nn200100]<0>(&__str, "SSAO");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3 + 176));
  v5 = *(v3 + 128);
  *(a2 + 104) = v5;
  if ((*(a2 + 196) & 1) == 0)
  {
    result = *(v5 + 88);
    *(a2 + 192) = *(v5 + 104);
    *(a2 + 176) = result;
    *(a2 + 196) = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_1,std::allocator<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_1>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A35FA0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::string::basic_string[abi:nn200100]<0>(&__str, "Scene depth downscale");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3 + 112));
  v5 = *(v3 + 152);
  *(a2 + 104) = v5;
  if ((*(a2 + 196) & 1) == 0)
  {
    result = *(v5 + 88);
    *(a2 + 192) = *(v5 + 104);
    *(a2 + 176) = result;
    *(a2 + 196) = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildSSAOFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A35F58;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::StandardPassList::_buildSSAODOFCommonFrameGraph(BOOL const&,BOOL const&,float const&,md::FrameGraphBuilder *)::$_1,std::allocator<md::StandardPassList::_buildSSAODOFCommonFrameGraph(BOOL const&,BOOL const&,float const&,md::FrameGraphBuilder *)::$_1>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::string::basic_string[abi:nn200100]<0>(&__str, "Scene Depth");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v5 = *(v3 + 112);
  *(a2 + 168) = v5;
  if ((*(a2 + 196) & 1) == 0)
  {
    result = *(v5 + 88);
    *(a2 + 192) = *(v5 + 104);
    *(a2 + 176) = result;
    *(a2 + 196) = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::StandardPassList::_buildSSAODOFCommonFrameGraph(BOOL const&,BOOL const&,float const&,md::FrameGraphBuilder *)::$_1,std::allocator<md::StandardPassList::_buildSSAODOFCommonFrameGraph(BOOL const&,BOOL const&,float const&,md::FrameGraphBuilder *)::$_1>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A35EF0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::StandardPassList::_buildSSAODOFCommonFrameGraph(BOOL const&,BOOL const&,float const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildSSAODOFCommonFrameGraph(BOOL const&,BOOL const&,float const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::string::basic_string[abi:nn200100]<0>(&__str, "Scene Depth");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v4 = *(v3 + 176);
  *(a2 + 104) = v4;
  if ((*(a2 + 196) & 1) == 0)
  {
    v5 = *(v4 + 88);
    *(a2 + 192) = *(v4 + 104);
    *(a2 + 176) = v5;
    *(a2 + 196) = 1;
  }

  *(a2 + 168) = *(v3 + 112);
}

uint64_t std::__function::__func<md::StandardPassList::_buildSSAODOFCommonFrameGraph(BOOL const&,BOOL const&,float const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildSSAODOFCommonFrameGraph(BOOL const&,BOOL const&,float const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A35EA8;
  a2[1] = v2;
  return result;
}

void ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A35E50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A35DF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraphWithFrameBufferFetch(BOOL const&,BOOL const&,BOOL const&,md::FrameGraphRenderTarget const*,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildPrimaryFrameGraphWithFrameBufferFetch(BOOL const&,BOOL const&,BOOL const&,md::FrameGraphRenderTarget const*,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A36200;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 3));
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

void std::vector<std::pair<md::TileSelectionTileSetType,md::SceneTileSet>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 112;
        std::allocator_traits<std::allocator<std::pair<md::TileSelectionTileSetType,md::SceneTileSet>>>::destroy[abi:nn200100]<std::pair<md::TileSelectionTileSetType,md::SceneTileSet>,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::__unordered_map_hasher<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,gdc::LayerDataWithWorldHash,std::equal_to<gdc::LayerDataWithWorld>,true>,std::__unordered_map_equal<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::equal_to<gdc::LayerDataWithWorld>,gdc::LayerDataWithWorldHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::__unordered_map_hasher<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,gdc::LayerDataWithWorldHash,std::equal_to<gdc::LayerDataWithWorld>,true>,std::__unordered_map_equal<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::equal_to<gdc::LayerDataWithWorld>,gdc::LayerDataWithWorldHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::vector<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 32;
        std::__tree<gdc::LayerDataWithWorld>::destroy(*(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void md::SceneStateManager::~SceneStateManager(md::SceneStateManager *this)
{
  md::SceneStateManager::~SceneStateManager(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A365F0;
  std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>>>::~__hash_table(this + 432);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::~__hash_table(this + 392);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::~__hash_table(this + 352);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 42));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 288);
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  v4 = *(this + 26);
  if (v4)
  {
    *(this + 27) = v4;
    operator delete(v4);
  }

  v5 = *(this + 23);
  if (v5)
  {
    *(this + 24) = v5;
    operator delete(v5);
  }

  v6 = (this + 160);
  std::vector<std::pair<md::TileSelectionTileSetType,md::SceneTileSet>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 136);
  std::vector<std::pair<md::TileSelectionTileSetType,md::SceneTileSet>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 112);
  std::vector<std::pair<md::TileSelectionTileSetType,md::SceneTileSet>>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::__unordered_map_hasher<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,gdc::LayerDataWithWorldHash,std::equal_to<gdc::LayerDataWithWorld>,true>,std::__unordered_map_equal<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::equal_to<gdc::LayerDataWithWorld>,gdc::LayerDataWithWorldHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>>>::~__hash_table(this + 72);
  v6 = (this + 48);
  std::vector<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>>>::~__hash_table(this + 8);
}

void std::__shared_ptr_emplace<gdc::SubtileClipMask>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A36610;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::small_vector_base<geo::QuadTile>::grow(void *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
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

  v10 = malloc_type_malloc(32 * v9, 0x10000400096DC68uLL);
  v11 = *a1;
  v12 = a1[1];
  if (*a1 != v12)
  {
    v13 = 0;
    do
    {
      v14 = &v10[v13];
      v14[24] = 0;
      *(v14 + 4) = *&v11[v13 + 4];
      *v14 = *&v11[v13];
      *(v14 + 2) = *&v11[v13 + 16];
      v14[24] = v11[v13 + 24];
      v13 += 32;
    }

    while (&v11[v13] != v12);
  }

  if (v3 != v6)
  {
    free(v11);
  }

  *a1 = v10;
  a1[1] = &v10[v4 - v3];
  a1[3] = v9;
}

uint64_t std::__function::__func<gdc::FragmentCollector<md::MapDataType,82ul>::validFragmentsForTile(geo::QuadTile const&,std::bitset<82ul> const&,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>> &)::{lambda(std::bitset<82ul> const&)#1},std::allocator<gdc::FragmentCollector<md::MapDataType,82ul>::validFragmentsForTile(geo::QuadTile const&,std::bitset<82ul> const&,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>> &)::{lambda(std::bitset<82ul> const&)#1}>,BOOL ()(std::bitset<82ul> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A366D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gdc::FragmentCollector<md::MapDataType,82ul>::validSubtilesForTile(geo::QuadTile const&,std::bitset<82ul> const&,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>> &)::{lambda(std::bitset<82ul> const&)#1},std::allocator<gdc::FragmentCollector<md::MapDataType,82ul>::validSubtilesForTile(geo::QuadTile const&,std::bitset<82ul> const&,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>> &)::{lambda(std::bitset<82ul> const&)#1}>,BOOL ()(std::bitset<82ul> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A36690;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::SceneStateManager::updateSceneTileSet(md::SceneTileSet &,md::TileSelectionTileSetType)::$_0,std::allocator<md::SceneStateManager::updateSceneTileSet(md::SceneTileSet &,md::TileSelectionTileSetType)::$_0>,void ()(md::MapDataType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A36648;
  a2[1] = v2;
  return result;
}

uint64_t **md::SceneStateManager::setHasLayerDataDependency(void *a1, const gdc::LayerDataRequestKey *a2)
{
  v4 = a1[59];
  v5 = *(a2 + 4);
  result = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((v4 + 136), v5);
  if (result)
  {
    v7 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((v4 + 136), v5);
    if (v7)
    {
      v8 = *(v7 + 10);
    }

    else
    {
      v8 = 0;
    }

    v10 = a1[14];
    v9 = a1[15];
    while (v10 != v9)
    {
      if (*v10 == v8)
      {
        v9 = v10;
        break;
      }

      v10 += 56;
    }

    result = *(v9 + 13);
    if (result)
    {

      return gdc::LayerDataCollector::setHasLayerDataDependency(result, a2);
    }
  }

  return result;
}

BOOL md::SceneStateManager::setHasTileSelectionDependency(uint64_t a1, unsigned __int16 a2, unsigned int a3, uint64_t a4)
{
  v23 = a2;
  v24 = &v23;
  v6 = std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 432), a2);
  v7 = a3;
  v8 = v6[4];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = a3;
    if (v8 <= a3)
    {
      v10 = a3 % v6[4];
    }
  }

  else
  {
    v10 = (v8 - 1) & a3;
  }

  v11 = v6[3][v10];
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= v8)
      {
        v13 %= v8;
      }
    }

    else
    {
      v13 &= v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (v12[2].u16[0] != v7)
  {
    goto LABEL_17;
  }

  if (*(a4 + 24) == 1)
  {
    geo::QuadTile::computeHash(a4);
    *(a4 + 24) = 0;
  }

  v14 = *(a4 + 16);
  v15 = v12[4];
  if (!*&v15)
  {
    goto LABEL_38;
  }

  v16 = vcnt_s8(v15);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = *(a4 + 16);
    if (v14 >= *&v15)
    {
      v18 = v14 % *&v15;
    }
  }

  else
  {
    v18 = (*&v15 - 1) & v14;
  }

  v19 = *(*&v12[3] + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_38:
    operator new();
  }

  while (2)
  {
    v21 = *(v20 + 1);
    if (v21 != v14)
    {
      if (v17 > 1)
      {
        if (v21 >= *&v15)
        {
          v21 %= *&v15;
        }
      }

      else
      {
        v21 &= *&v15 - 1;
      }

      if (v21 != v18)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    result = std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v20 + 16, a4);
    if (!result)
    {
LABEL_37:
      v20 = *v20;
      if (!v20)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  *(v20 + 6) |= 2uLL;
  return result;
}

void md::RoadRenderLayer::featureMarker(uint64_t a1@<X1>, float64x2_t *a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + 648);
  *a3 = 0;
  a3[1] = 0;
  if (v4)
  {
    v6 = *(v4 + 32);
    v7 = geo::codec::VectorTile::linesCount(v6, *(v4 + 40));
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = vcvt_f32_f64(*a2);
      v13 = 1.0;
      do
      {
        v14 = v6 + 168 * v11;
        if (*(v14 + 24))
        {
          v15 = v10 == v14;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          v14 = v9;
        }

        else
        {
          v16 = 0;
          while (1)
          {
            v26 = 0;
            v17 = geo::codec::multiSectionFeaturePoints(v6 + 7 * v11, v16, &v26);
            v18 = v26 - 1;
            if (v26 != 1)
            {
              break;
            }

LABEL_14:
            if (++v16 >= *(v14 + 24) || v9 == v14)
            {
              v14 = v9;
              v10 = v9;
              goto LABEL_21;
            }
          }

          p_shared_owners = &v17->__shared_owners_;
          v20 = v17->__vftable;
          while (1)
          {
            v21 = v20;
            v20 = *p_shared_owners;
            v22 = vsub_f32(*p_shared_owners, v21);
            v25[0] = v21;
            v25[1] = v22;
            v23 = gm::LineSegment<float,2>::distanceSquaredTo(v25, v12.f32[0], v12.f32[1]);
            if (v23 < v13)
            {
              break;
            }

            ++p_shared_owners;
            if (!--v18)
            {
              goto LABEL_14;
            }
          }

          v10 = v6 + 168 * v11;
          v13 = v23;
        }

LABEL_21:
        ++v11;
        v9 = v14;
      }

      while (v11 != v8);
      if (v13 < 0.0001)
      {
        operator new();
      }
    }
  }
}

void md::RoadRenderLayer::renderablesWillEnterView(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      v6 = *(*v3 + 392);
      v7 = *(v6 + 728);
      if (v7)
      {
        md::RoadStyling::subscribeLayer(*(a1 + 480), v7);
      }

      v8 = *(v6 + 744);
      if (v8)
      {
        md::RoadStyling::subscribeLayer(*(a1 + 480), v8);
      }

      v3 += 8;
    }

    while (v3 != v4);
  }
}

unsigned __int8 *md::RoadRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 49) - *(a1 + 48) + 1;
  v7 = geo::linear_map<md::CommandBufferLocation,ggl::ClearItem *,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>,std::vector<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>>::operator[]((a1 + 416), a3);
  v8 = ggl::StencilManager::reserveStencilValues(*(a2 + 24), v6, v7, 0) - *(a1 + 48);
  *geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[]((a1 + 368), a3) = v8;
  v9 = +[VKSharedResourcesManager sharedResources];
  v10 = *([v9 gglDevice] + 20);

  if (v10 == 1)
  {
    result = geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[]((a1 + 392), a3);
    *result = 0;
  }

  else
  {
    v14 = 0;
    v12 = ggl::StencilManager::reserveStencilValues(*(a2 + 24), 3, &v14, 0);
    result = geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[]((a1 + 392), a3);
    *result = v12;
    v13 = v14;
    if (v14)
    {
      result = geo::linear_map<md::CommandBufferLocation,ggl::ClearItem *,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>,std::vector<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>>::operator[]((a1 + 416), a3);
      *result = v13;
    }
  }

  return result;
}

uint64_t md::RoadRenderLayer::layout(md::RoadRenderLayer *this, const md::LayoutContext *a2)
{
  v329 = *MEMORY[0x1E69E9840];
  v249 = mach_absolute_time();
  v4 = *(this + 44);
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  v5 = md::LayoutContext::get<md::SettingsContext>(*(a2 + 1));
  v6 = *(this + 61);
  v7 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *v6);
  if (v7)
  {
    v260 = *(*(v7 + 16) + 8 * v6[1]);
  }

  else
  {
    v260 = 0;
  }

  v8 = *geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[](this + 46, v6);
  v257 = *geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[](this + 49, *(this + 61));
  ggl::CommandBuffer::clearRenderItems(v260);
  LOBYTE(v318) = 0;
  v326 = 0;
  md::CartographicTiledVectorRenderLayer<md::RoadTileDataRenderable>::layoutStencilTiles(this, a2, v260, v8, &v318);
  v9 = *(this + 61);
  if ((*(this + 62) - v9) < 3)
  {
    v251 = 0;
    v258 = 0;
  }

  else
  {
    v10 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(v9 + 2));
    if (v10)
    {
      v10 = *(*(v10 + 16) + 8 * *(v9 + 3));
    }

    v258 = v10;
    ggl::CommandBuffer::clearRenderItems(v10);
    LODWORD(v251) = *geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[](this + 46, (*(this + 61) + 2));
    HIDWORD(v251) = *geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[](this + 49, (*(this + 61) + 2));
  }

  md::RibbonLayoutContext::RibbonLayoutContext(v281, a2);
  v288 = 0x10000;
  v289 = 1065353216;
  v290 = 0;
  v291 = 0;
  v282 = *(this + 360);
  v11 = +[VKDebugSettings sharedSettings];
  [v11 ribbonCrispness];
  v284 = v12;

  v262 = v8;
  v13 = *(this + 55);
  v285 = *(*(v13 + 120) + 8);
  v291 = v13;
  v14 = *(a2 + 3);
  v15 = *(v14 + 1);
  v16 = *(v14 + 2);
  v17 = *(this + 360);
  md::RibbonLayoutContext::RibbonLayoutContext(v272, a2);
  LOBYTE(v15) = v15 < v16;
  v277 = 0;
  v278 = 0;
  memset_pattern16(&v279, &unk_1B33B2570, 0x10uLL);
  v280[21] = 0;
  *v280 = 0;
  *&v280[8] = 0;
  *&v280[15] = 0;
  BYTE8(v273) = *(this + 360) | v15;
  v280[16] = **(a2 + 93);
  v280[17] = 1;
  v280[18] = (v17 ^ 1) & v15;
  +[VKDebugSettings sharedSettings];
  v19 = v18 = v262;
  [v19 ribbonCrispness];
  DWORD1(v274) = v20;

  v280[19] = 1;
  v21 = +[VKDebugSettings sharedSettings];
  v280[21] = [v21 showTrafficOffset];

  v22 = *(a2 + 1);
  v23 = md::LayoutContext::get<md::SceneQueryContext>(v22);
  if (v23)
  {
    v24 = *(v23 + 64);
  }

  else
  {
    v24 = 0;
  }

  v286 = v24 & 1;
  v25 = *(*(this + 5) + 24);
  v26 = *(v25 + 168);
  if (v26 && (v27 = *(v25 + 8), v28 = *(v26 + 32), v29 = *(v27 + 96), v28 < (*(v27 + 104) - v29) >> 3))
  {
    v30 = *(*(v29 + 8 * v28) + 16);
  }

  else
  {
    v30 = 0;
  }

  v287 = v30;
  v31 = md::LayoutContext::get<md::SharedResourcesContext>(v22);
  if (v31 && !v30)
  {
    v32 = *v31;
    [v32 textureManager];
    v287 = *v318;
    if (v319)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v319);
    }
  }

  md::RoadStyling::update(**(this + 60), *(*(this + 60) + 8), v281);
  if (!v5)
  {
LABEL_32:
    v256 = 0;
    goto LABEL_33;
  }

  v33 = *v5;
  v34 = v5[1];
  if (*v5 == v34)
  {
    goto LABEL_31;
  }

  v35 = *v5;
  while (*v35 != 2)
  {
    v35 += 16;
    if (v35 == v34)
    {
      goto LABEL_31;
    }
  }

  if (v35 == v34 || !*(v35 + 8))
  {
LABEL_31:
    while (v33 != v34)
    {
      if (*v33 == 4)
      {
        if (v33 == v34)
        {
          goto LABEL_32;
        }

        v36 = *(v33 + 8) == 0;
        goto LABEL_337;
      }

      v33 += 16;
    }

    goto LABEL_32;
  }

  v36 = 0;
LABEL_337:
  v256 = 0;
  if (*(this + 58) && !v36)
  {
    v248 = +[VKDebugSettings sharedSettings];
    if ([v248 showTrafficCasing])
    {
      v256 = *(this + 91) == 2;
    }

    else
    {
      v256 = 0;
    }
  }

LABEL_33:
  v37 = *(this + 34);
  v255 = *(this + 35);
  if (v37 != v255)
  {
    v254 = 0;
    v252 = vdupq_n_s32(0x37800080u);
    v38 = 1.0;
    v250 = a2;
    v263 = this;
    while (1)
    {
      v261 = v37;
      v39 = *v37;
      v40 = *(*v37 + 392);
      v41 = *(v40 + 760);
      if (v41)
      {
        LOBYTE(v41) = *(v41 + 16) != *(v41 + 8);
      }

      HIBYTE(v288) = v41;
      md::RoadTileData::updateWithContext(v40, a2, *(v39 + 56), (v39 + 240));
      v42 = v257;
      if (v282 == 1)
      {
        v42 = v18 + *(v40 + 169);
      }

      v283 = v42;
      v43 = *(v40 + 728);
      if (v43)
      {
        v44 = *(v43 + 208);
        v45 = *(this + 55);
        if (v44)
        {
          v46 = v44 == v45;
        }

        else
        {
          v46 = 0;
        }

        if (!v46)
        {
          md::RoadLayer::setSharedResources(*(v40 + 728), v45);
        }

        md::RoadLayer::layout(v43, v281);
        v318 = &off_1F2A36810;
        *&v319 = v260;
        *&v320 = &v318;
        md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(*(v43 + 8), *(v43 + 16), &v318);
        std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v318);
      }

      v47 = *(v40 + 744);
      if (v47)
      {
        v48 = *(v47 + 208);
        v49 = *(this + 55);
        if (v48)
        {
          v50 = v48 == v49;
        }

        else
        {
          v50 = 0;
        }

        if (!v50)
        {
          md::RoadLayer::setSharedResources(*(v40 + 744), v49);
        }

        if (v258)
        {
          v51 = BYTE4(v251);
          if (v282 == 1)
          {
            v51 = v251 + *(v40 + 169);
          }

          v283 = v51;
          md::RoadLayer::layout(v47, v281);
          v318 = &off_1F2A36810;
          *&v319 = v258;
          *&v320 = &v318;
          md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(*(v47 + 8), *(v47 + 16), &v318);
        }

        else
        {
          md::RoadLayer::layout(v47, v281);
          v318 = &off_1F2A36810;
          *&v319 = v260;
          *&v320 = &v318;
          md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(*(v47 + 8), *(v47 + 16), &v318);
        }

        std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v318);
        v254 = 1;
      }

      v52 = *(v40 + 736);
      v53 = *(v40 + 752);
      if (v52 | v53)
      {
        break;
      }

LABEL_81:
      if (v256)
      {
        v63 = *(a2 + 1);
        v64 = gdc::Context::get<md::StyleLogicContext>(v63);
        v65 = md::LayoutContext::get<md::ElevationContext>(v63);
        gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v297, *v64, (v40 + 832));
        memset_pattern16(&__b, &unk_1B33B2570, 0x10uLL);
        v66 = *geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[](this + 46, *(this + 61));
        v306 = v274;
        v307 = v275;
        v308 = v276;
        *v302 = v272[0];
        v303 = v272[1];
        v304 = v272[2];
        v305 = v273;
        v67 = v278;
        if (v278)
        {
          atomic_fetch_add_explicit(&v278->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v311 = v279;
        *v312 = *v280;
        *&v312[14] = *&v280[14];
        v68 = v297;
        v69 = v298;
        if (v298)
        {
          atomic_fetch_add_explicit(&v298->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v309 = v68;
        v310 = v69;
        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v67);
        }

        if (*(this + 360) == 1)
        {
          v70 = *(v40 + 169) + v66;
        }

        else
        {
          v70 = *(*(a2 + 3) + 1);
        }

        BYTE9(v305) = v70;
        v311 = __b;
        v71 = +[VKDebugSettings sharedSettings];
        v72 = [v71 loadGreenTraffic];
        v267 = v70;
        v269 = v68;

        v73 = *(v40 + 760);
        v74 = *(v40 + 768);
        if (v73)
        {
          v75 = v73[2];
          v76 = v73[1];
          if (v75 != v76)
          {
            memset_pattern16(&__b, &unk_1B33B2580, 0x10uLL);
            v312[20] = (*v65 & 1) == 0;
            *&v312[12] = v312[20];
            v77 = v73[20];
            v78 = *(this + 58);
            if (!v77 || v77 != v78)
            {
              v73[20] = v78;
              do
              {
                v79 = *v76++;
                **(*(v79 + 328) + 168) = *(*(*(*(v79 + 8) + 160) + 128) + 16);
              }

              while (v76 != v75);
            }

            md::DaVinciTrafficLayer::layout(v73, v302);
            v318 = &unk_1F2A368A0;
            *&v319 = v260;
            *&v320 = &v318;
            md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(v73[1], v73[2], &v318);
            std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v318);
          }
        }

        if (v74 && *(v74 + 16) != *(v74 + 8))
        {
          v80 = v297;
          v81 = v298;
          if (v298)
          {
            atomic_fetch_add_explicit(&v298->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v292, v80, v81);
          if (v81)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v81);
          }

          for (i = 0; i != 4; ++i)
          {
            if (v295 == 1)
            {
              v83 = md::trafficVisibleAtSpeed(&v292, i);
              if (i == 3)
              {
                v84 = v72;
              }

              else
              {
                v84 = 0;
              }

              if (v84 | v83)
              {
                v85 = 3;
              }

              else
              {
                v85 = 5;
              }
            }

            else
            {
              v85 = 5;
            }

            *(&__b + i) = v85;
          }

          v86 = *(v74 + 160);
          v87 = *(this + 58);
          if (v86)
          {
            v88 = v86 == v87;
          }

          else
          {
            v88 = 0;
          }

          if (!v88)
          {
            *(v74 + 160) = v87;
            v89 = *(v74 + 8);
            v90 = *(v74 + 16);
            v86 = v87;
            if (v89 != v90)
            {
              do
              {
                v91 = *v89;
                v92 = *(*(*v89 + 8) + 160);
                if (*(v92 + 136) == 1)
                {
                  v93 = v91 + 312;
                  v94 = *(v91 + 312);
                  v95 = *(v92 + 24);
                  v318 = *(v92 + 16);
                  *&v319 = v95;
                  if (v95)
                  {
                    atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
                    ggl::PipelineSetup::setState(v94, &v318);
                    std::__shared_weak_count::__release_shared[abi:nn200100](v95);
                  }

                  else
                  {
                    ggl::PipelineSetup::setState(v94, &v318);
                  }
                }

                else
                {
                  v93 = v91 + 320;
                  ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v91 + 320), *v92, *(v92 + 8));
                }

                **(*v93 + 168) = *(*(v92 + 128) + 16);
                ++v89;
              }

              while (v89 != v90);
              v86 = *(v74 + 160);
            }
          }

          if (v312[18] == 1)
          {
            v96 = 32;
            if (v312[16])
            {
              v96 = 40;
            }
          }

          else
          {
            v97 = 16;
            if (!BYTE8(v305))
            {
              v97 = 0;
            }

            v98 = 8;
            if (BYTE8(v305))
            {
              v98 = 24;
            }

            if (v312[16])
            {
              v96 = v98;
            }

            else
            {
              v96 = v97;
            }
          }

          v18 = v262;
          v99 = v269;
          *(v74 + 56) = *(v86 + 72 + v96);
          v100 = v302[0];
          md::LayoutContext::frameState(v302[0]);
          v268 = v100;
          v265 = v74;
          if ((*(v101 + 632) & 1) == 0)
          {
            v124 = v74;
            v125 = *(v74 + 8);
            v126 = *(v124 + 16);
            goto LABEL_179;
          }

          v102 = *(v100 + 1);
          v103 = md::LayoutContext::get<md::CameraContext>(v102);
          v104 = v103;
          if (*(v103 + 3784))
          {
            v105 = *(v74 + 72);
            if (v105)
            {
              v106 = 0;
              v107 = 0;
              v108 = *(gdc::Camera::cameraFrame(v103) + 16);
              v109 = v105 + 1696;
              v110 = v105 + 32;
              do
              {
                for (j = 0; j != 4; ++j)
                {
                  v112 = v106 | (4 * j);
                  geo::Frustum<double>::transformed(&v318, v104 + 984, v109 + 56 * v112);
                  v113 = v110 + 104 * v112;
                  v114 = *(v113 + 56);
                  v115 = *(v113 + 88);
                  v317[0] = *(v113 + 72);
                  v317[1] = v115;
                  v316 = v114;
                  v327 = 0uLL;
                  v328 = v108;
                  gm::Box<double,3>::operator+=(v316.i64, &v327);
                  for (k = 0; k != 24; k += 4)
                  {
                    v117 = 0;
                    v118 = *(&v319 + k * 8 + 8);
                    v313 = *&(&v318)[k];
                    v314 = v118;
                    do
                    {
                      v119 = &v316 + v117 * 8;
                      if (*(&v313 + v117 * 8) >= 0.0)
                      {
                        v119 = v317 + v117 * 8 + 8;
                      }

                      v327.i64[v117++] = *v119;
                    }

                    while (v117 != 3);
                    v120 = 0;
                    v121 = 0.0;
                    do
                    {
                      v121 = v121 + *&(&(&v318)[k])[v120] * *&v327.i64[v120];
                      ++v120;
                    }

                    while (v120 != 3);
                    v122 = *(&v320 + k * 8) + v121;
                    if (v122 < 0.0)
                    {
                      break;
                    }
                  }

                  v123 = 1 << (4 * j + v106);
                  if (v122 < 0.0)
                  {
                    v123 = 0;
                  }

                  v107 |= v123;
                }

                ++v106;
              }

              while (v106 != 4);
LABEL_169:
              v125 = *(v74 + 8);
              v126 = *(v265 + 16);
              if (v125 == v126)
              {
                this = v263;
                v18 = v262;
                v100 = v268;
                v99 = v269;
              }

              else
              {
                v130 = *(v265 + 8);
                this = v263;
                v18 = v262;
                v100 = v268;
                v99 = v269;
                do
                {
                  v131 = *v130;
                  v132 = *(*v130 + 248);
                  v133 = *(*v130 + 256);
                  if (v132 == v133)
                  {
                    v134 = 0;
                  }

                  else
                  {
                    v134 = 0;
                    do
                    {
                      v135 = *v132++;
                      v136 = (*(v135 + 96) & v107) != 0;
                      v134 |= v136;
                      *(v135 + 48) = v136;
                    }

                    while (v132 != v133);
                  }

                  *(v131 + 136) = v134 & 1;
                  *(v131 + 272) = v134 & 1;
                  ++v130;
                }

                while (v130 != v126);
              }

LABEL_179:
              v137 = v126;
              if (v125 != v126)
              {
                while (1)
                {
                  v138 = *v125;
                  if (*(*v125 + 272) == 1)
                  {
                    break;
                  }

LABEL_265:
                  if (++v125 == v137)
                  {
                    v194 = v265;
                    v195 = *(v265 + 16);
                    goto LABEL_276;
                  }
                }

                if (v69)
                {
                  atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v318, v99, v69);
                if (v69)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v69);
                }

                v139 = *(v138 + 300);
                if (BYTE8(v320) != 1)
                {
                  md::defaultStandardFillColor(&v316, v139);
                  v144 = v316;
                  goto LABEL_208;
                }

                v140 = SBYTE4(v302[1]);
                if (*(v138 + 300) > 1u)
                {
                  if (v139 == 2)
                  {
                    v141 = v318[3];
                    v142 = fminf(fmaxf(v140, 0.0), 23.0);
                    v143 = 65;
                  }

                  else
                  {
                    if (v139 != 3)
                    {
LABEL_196:
                      v145 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(v100 + 2), *(*(v100 + 2) + 8));
                      if (v145)
                      {
                        v146 = v145;
                        v327 = v259;
                        v147 = v318[3];
                        v148 = fminf(fmaxf(v140, 0.0), 23.0);
                        v149 = *v147;
                        if (!*v147 || (v150 = *v149, LODWORD(v149) = *v149 == v38, *(v147 + 10) != 1) || (v150 != 0.0 ? (v151 = v150 == v38) : (v151 = 1), v151))
                        {
                          v152 = *(v147 + v149 + 11);
                          if (v152 != 2)
                          {
                            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v318[3], 489, v152, 0, v148);
LABEL_206:
                            md::AccessibilityHelper::luminanceAdjustedColor(&v316, *v146, &v327, v153);
                            v270 = v316;
                            v100 = v268;
                            goto LABEL_209;
                          }

                          v150 = 0.0;
                        }

                        v316.i8[0] = 1;
                        LOBYTE(v313) = 1;
                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v147, 489, 0, &v316, v148);
                        v186 = v185;
                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v147, 489, 1, &v313, v148);
                        v153 = v186 + ((v187 - v186) * v150);
                        goto LABEL_206;
                      }

                      v144 = v259;
LABEL_208:
                      v270 = v144;
LABEL_209:
                      if (BYTE8(v320) == 1)
                      {
                        (*(*v318 + 7))(v318);
                      }

                      if (v320)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v320);
                      }

                      if (v319)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v319);
                      }

                      v316.i32[0] = 0;
                      v154 = *(v138 + 280);
                      v155 = *(v138 + 288);
                      if (v155)
                      {
                        atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v318, v154, v155);
                      if (v155)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v155);
                      }

                      v156 = 0.0;
                      if (BYTE8(v320) != 1 || ((v157 = *&v302[1], *&v302[1] >= 0x17) ? (v158 = 23) : (v158 = *&v302[1]), (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v318[3], 91, v158, 2u, 0) & 1) == 0))
                      {
                        v172 = 0;
                        v171 = 0.0;
                        goto LABEL_240;
                      }

                      v327.i32[0] = 0;
                      LODWORD(v313) = 0;
                      v299 = 0;
                      md::getRoadWidths(&v318, v316.f32, v327.f32, &v313, &v299, v157);
                      v159 = v318[3];
                      v160 = fminf(fmaxf(v157, 0.0), 23.0);
                      v161 = *v159;
                      if (*v159)
                      {
                        v162 = *v161;
                        v163 = *v161 == v38;
                        if (*(v159 + 10) == 1 && v162 != 0.0 && v162 != v38)
                        {
                          goto LABEL_271;
                        }
                      }

                      else
                      {
                        v163 = 0;
                      }

                      v165 = *(v159 + v163 + 11);
                      if (v165 != 2)
                      {
                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v318[3], 302, v165, 0, v160);
                        v156 = v166;
                        if (!v161)
                        {
LABEL_272:
                          v168 = 0;
LABEL_236:
                          v169 = *(v159 + v168 + 11);
                          if (v169 != 2)
                          {
                            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v159, 373, v169, 0, v160);
                            v171 = v170;
LABEL_238:
                            v172 = 1;
LABEL_240:
                            if (BYTE8(v320) == 1)
                            {
                              (*(*v318 + 7))(v318);
                            }

                            if (v320)
                            {
                              std::__shared_weak_count::__release_shared[abi:nn200100](v320);
                            }

                            if (v319)
                            {
                              std::__shared_weak_count::__release_shared[abi:nn200100](v319);
                            }

                            if (v172)
                            {
                              v173 = v156 + 0.5;
                              if (v156 < 0.25 || v156 > 3.5)
                              {
                                v173 = v156;
                              }

                              if (v171 == 0.0)
                              {
                                v174 = v156;
                              }

                              else
                              {
                                v174 = v173;
                              }

                              v175 = v316.f32[0];
                              v176 = v174 + (v316.f32[0] * 0.5);
                              v177 = **(*(*(v138 + 8) + 160) + 128);
                              v178 = *(&v306 + 1);
                              v179 = 320;
                              if (*(v138 + 329))
                              {
                                v179 = 312;
                              }

                              v180 = *(v138 + v179);
                              *(v138 + 48) = v180;
                              ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v318, *(*(v180 + 136) + 32));
                              if (v171 == 0.0)
                              {
                                v181 = v176;
                              }

                              else
                              {
                                v181 = v174 * 0.5;
                              }

                              v182 = v321;
                              *v321 = v270;
                              *(v182 + 16) = *(*(*(*(v138 + 8) + 160) + 128) + 8) * v181;
                              if (v171 == 0.0)
                              {
                                v38 = 1.0;
                                v183 = -1.0;
                                if (*(v138 + 296) <= 0.0)
                                {
                                  v183 = 1.0;
                                }

                                v184 = 0.0;
                              }

                              else
                              {
                                v183 = 0.0;
                                v184 = fmaxf(v171 + ((v175 + v174) * 0.5), 0.0);
                                v38 = 1.0;
                              }

                              *(v182 + 24) = 0;
                              *(v182 + 20) = v178 * v177;
                              *(v182 + 28) = v184;
                              *(v182 + 32) = v183;
                              ggl::BufferMemory::~BufferMemory(&v318);
                              *(v138 + 272) = 1;
                              v18 = v262;
                              if (*(v138 + 136) == 1)
                              {
                                *(v138 + 56) = v267;
                                md::RoadBatch::setRenderOrdersForStrokeAndFill(0, 0, 0, 0, 0, v138 + 16, *(v138 + 304), 1, *(v138 + 280), *(v138 + 288), v302, *(v138 + 328), 0);
                              }
                            }

                            else
                            {
                              *(v138 + 272) = 0;
                              v18 = v262;
                            }

                            goto LABEL_265;
                          }

                          v167 = 0.0;
LABEL_274:
                          LOBYTE(v301.__begin_) = 1;
                          v300 = 1;
                          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v159, 373, 0, &v301, v160);
                          v192 = v191;
                          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v159, 373, 1, &v300, v160);
                          v171 = v192 + ((v193 - v192) * v167);
                          goto LABEL_238;
                        }

LABEL_233:
                        v167 = *v161;
                        v168 = *v161 == v38;
                        if (*(v159 + 10) == 1 && v167 != 0.0 && v167 != v38)
                        {
                          goto LABEL_274;
                        }

                        goto LABEL_236;
                      }

                      v162 = 0.0;
LABEL_271:
                      LOBYTE(v301.__begin_) = 1;
                      v300 = 1;
                      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v159, 302, 0, &v301, v160);
                      v189 = v188;
                      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v159, 302, 1, &v300, v160);
                      v156 = v189 + ((v190 - v189) * v162);
                      if (!v161)
                      {
                        goto LABEL_272;
                      }

                      goto LABEL_233;
                    }

                    v141 = v318[3];
                    v142 = fminf(fmaxf(v140, 0.0), 23.0);
                    v143 = 76;
                  }
                }

                else
                {
                  v141 = v318[3];
                  v142 = fminf(fmaxf(v140, 0.0), 23.0);
                  if (*(v138 + 300))
                  {
                    v143 = 54;
                  }

                  else
                  {
                    v143 = 43;
                  }
                }

                gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v316, v141, v143, 2u, v142);
                v259 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v316.f32)), v252);
                goto LABEL_196;
              }

              v194 = v265;
              v195 = v126;
LABEL_276:
              *&v313 = &unk_1F2A368E8;
              *(&v313 + 1) = v260;
              v315 = &v313;
              v196 = *(v194 + 8);
              if (v196 != v195)
              {
                v253 = v195;
                while (1)
                {
                  v197 = *v196;
                  std::__function::__value_func<void ()(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&v327, &v313);
                  if (*(v197 + 272) == 1)
                  {
                    break;
                  }

LABEL_316:
                  std::__function::__value_func<void ()(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v327);
                  if (++v196 == v195)
                  {
                    goto LABEL_320;
                  }
                }

                ggl::Batcher::reset((v197 + 144));
                md::RenderItemPool::reset((v197 + 224));
                std::__function::__value_func<void ()(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&v316, &v327);
                if (*(v197 + 272) != 1)
                {
                  goto LABEL_315;
                }

                memset(&v301, 0, sizeof(v301));
                std::vector<unsigned int>::reserve(&v301, 5uLL);
                if (*(v197 + 136))
                {
                  LODWORD(v318) = 0;
                  std::vector<unsigned int>::push_back[abi:nn200100](&v301, &v318);
                  v199 = *(*(v197 + 8) + 56);
                  *(v197 + 40) = v199;
                  v46 = *(v199 + 58) == 1;
                  v200 = 16;
                  if (v46)
                  {
                    v200 = 32;
                  }
                }

                else
                {
                  v200 = 16;
                }

                v266 = v200;
                begin = v301.__begin_;
                if (v301.__begin_ == v301.__end_)
                {
LABEL_313:
                  if (!begin)
                  {
                    goto LABEL_315;
                  }
                }

                else
                {
                  v203 = *(v197 + 248);
                  v202 = *(v197 + 256);
                  if (v203 == v202)
                  {
                    v204 = 0;
                  }

                  else
                  {
                    v204 = 0;
                    v264 = *(v197 + 256);
                    do
                    {
                      v205 = *v203;
                      if (*(*v203 + 48) == 1)
                      {
                        if (*(v205 + 88) != v204)
                        {
                          v271 = v204;
                          if (v204)
                          {
                            v206 = ggl::Batcher::commit((v197 + 144), 0xC8u, v198);
                            if (v206[1] != *v206)
                            {
                              v207 = v301.__begin_;
                              end = v301.__end_;
                              if (v301.__begin_ != v301.__end_)
                              {
                                v209 = v206;
                                do
                                {
                                  v210 = *v207;
                                  v318 = &off_1F2A5D8B8;
                                  v211 = v197 + 16 + (v210 << 7);
                                  v212 = *(v211 + 8);
                                  v213 = *(v211 + 24);
                                  v321 = *(v211 + 40);
                                  v320 = v213;
                                  v319 = v212;
                                  v214 = *(v211 + 56);
                                  v215 = *(v211 + 72);
                                  v216 = *(v211 + 88);
                                  v325 = *(v211 + 104);
                                  v324 = v216;
                                  v323 = v215;
                                  v322 = v214;
                                  v217 = *(v197 + 232);
                                  v218 = v217[1];
                                  if (v218 == *(v197 + 240))
                                  {
                                    v217 = *v217;
                                    if (!v217)
                                    {
                                      v217 = malloc_type_malloc(120 * v218 + 16, 0x1020040EDED9539uLL);
                                      *v217 = 0;
                                      v217[1] = 0;
                                      **(v197 + 232) = v217;
                                    }

                                    *(v197 + 232) = v217;
                                    v218 = v217[1];
                                  }

                                  v219 = &v217[15 * v218];
                                  v217[1] = v218 + 1;
                                  v219[2] = &off_1F2A5D8B8;
                                  v220 = v319;
                                  v221 = v320;
                                  *(v219 + 7) = v321;
                                  *(v219 + 5) = v221;
                                  *(v219 + 3) = v220;
                                  v222 = v322;
                                  v223 = v323;
                                  v224 = v324;
                                  *(v219 + 15) = v325;
                                  *(v219 + 13) = v224;
                                  *(v219 + 11) = v223;
                                  *(v219 + 9) = v222;
                                  ggl::RenderItem::~RenderItem(&v318);
                                  v219[10] = v271;
                                  v225 = *v209;
                                  v219[13] = *v209;
                                  v219[14] = (v209[1] - v225) >> 4;
                                  std::function<void ()(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(&v317[0] + 1), v210, (v219 + 2));
                                  ++v207;
                                }

                                while (v207 != end);
                              }
                            }
                          }

                          v205 = *v203;
                          v204 = *(*v203 + 88);
                          this = v263;
                          v202 = v264;
                        }

                        ggl::Batcher::addRange(v197 + 144, (v205 + v266));
                      }

                      ++v203;
                    }

                    while (v203 != v202);
                    begin = v301.__begin_;
                  }

                  v226 = ggl::Batcher::commit((v197 + 144), 0xC8u, v198);
                  v195 = v253;
                  if (v226[1] != *v226)
                  {
                    v227 = v301.__end_;
                    if (begin != v301.__end_)
                    {
                      v228 = v226;
                      do
                      {
                        v229 = *begin;
                        v318 = &off_1F2A5D8B8;
                        v230 = v197 + 16 + (v229 << 7);
                        v231 = *(v230 + 8);
                        v232 = *(v230 + 24);
                        v321 = *(v230 + 40);
                        v320 = v232;
                        v319 = v231;
                        v233 = *(v230 + 56);
                        v234 = *(v230 + 72);
                        v235 = *(v230 + 88);
                        v325 = *(v230 + 104);
                        v324 = v235;
                        v323 = v234;
                        v322 = v233;
                        v236 = *(v197 + 232);
                        v237 = v236[1];
                        if (v237 == *(v197 + 240))
                        {
                          v236 = *v236;
                          if (!v236)
                          {
                            v236 = malloc_type_malloc(120 * v237 + 16, 0x1020040EDED9539uLL);
                            *v236 = 0;
                            v236[1] = 0;
                            **(v197 + 232) = v236;
                          }

                          *(v197 + 232) = v236;
                          v237 = v236[1];
                        }

                        v238 = &v236[15 * v237];
                        v236[1] = v237 + 1;
                        v238[2] = &off_1F2A5D8B8;
                        v239 = v319;
                        v240 = v320;
                        *(v238 + 7) = v321;
                        *(v238 + 5) = v240;
                        *(v238 + 3) = v239;
                        v241 = v322;
                        v242 = v323;
                        v243 = v324;
                        *(v238 + 15) = v325;
                        *(v238 + 13) = v243;
                        *(v238 + 11) = v242;
                        *(v238 + 9) = v241;
                        ggl::RenderItem::~RenderItem(&v318);
                        v238[10] = v204;
                        v244 = *v228;
                        v238[13] = *v228;
                        v238[14] = (v228[1] - v244) >> 4;
                        std::function<void ()(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(&v317[0] + 1), v229, (v238 + 2));
                        ++begin;
                      }

                      while (begin != v227);
                      begin = v301.__begin_;
                      this = v263;
                      v18 = v262;
                      v195 = v253;
                      goto LABEL_313;
                    }
                  }

                  v18 = v262;
                  if (!begin)
                  {
LABEL_315:
                    std::__function::__value_func<void ()(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v316);
                    goto LABEL_316;
                  }
                }

                v301.__end_ = begin;
                operator delete(begin);
                goto LABEL_315;
              }

LABEL_320:
              std::__function::__value_func<void ()(md::Ribbons::CasedTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v313);
              if (v295)
              {
                (*(*v292 + 56))(v292);
              }

              a2 = v250;
              if (v294)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v294);
              }

              if (v293)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v293);
              }

              v69 = v310;
              if (!v310)
              {
LABEL_132:
                if (v298)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v298);
                }

                goto LABEL_134;
              }

LABEL_131:
              std::__shared_weak_count::__release_shared[abi:nn200100](v69);
              goto LABEL_132;
            }

            ggl::DataAccess<ggl::Tile::View>::DataAccess(&v318, *(v74 + 120), 0);
            v128 = v321;
            v129 = 0.0;
          }

          else
          {
            v127 = 0.0;
            if (*md::LayoutContext::get<md::ElevationContext>(v102) == 1 && *(v74 + 112) == 1)
            {
              v127 = *(gdc::Camera::cameraFrame(v104) + 16) * 0.0000000249532021 * (1 << *(v74 + 81));
            }

            ggl::DataAccess<ggl::Tile::View>::DataAccess(&v318, *(v74 + 120), 0);
            v128 = v321;
            v129 = v127;
          }

          v107 = ggl::CullingGrid::intersectedCellsForView(v128, v129);
          ggl::BufferMemory::~BufferMemory(&v318);
          goto LABEL_169;
        }

        v18 = v262;
        if (!v69)
        {
          goto LABEL_132;
        }

        goto LABEL_131;
      }

LABEL_134:
      v37 = v261 + 1;
      if (v261 + 1 == v255)
      {
        goto LABEL_329;
      }
    }

    md::RibbonLayoutContext::RibbonLayoutContext(&v318, a2);
    *(&v325 + 1) = 0;
    BYTE3(v325) = 0;
    DWORD1(v325) = 1065353216;
    BYTE8(v325) = 0;
    v54 = *(this + 360);
    LOBYTE(v322) = *(this + 360);
    if (!v52)
    {
LABEL_67:
      if (v53)
      {
        v59 = *(v53 + 200);
        v60 = *(this + 59);
        if (v59)
        {
          v61 = v59 == v60;
        }

        else
        {
          v61 = 0;
        }

        if (!v61)
        {
          *(v53 + 200) = v60;
        }

        if (v258)
        {
          v62 = BYTE4(v251);
          if (v322 == 1)
          {
            v62 = v251 + *(v40 + 169);
          }

          BYTE1(v322) = v62;
          md::PatternedLayer::layout(v53, &v318);
          v302[0] = &off_1F2A36858;
          v302[1] = v258;
          *(&v303 + 1) = v302;
          md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItemsForPasses(*(v53 + 8), *(v53 + 16), v302);
        }

        else
        {
          md::PatternedLayer::layout(v53, &v318);
          v302[0] = &off_1F2A36858;
          v302[1] = v260;
          *(&v303 + 1) = v302;
          md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItemsForPasses(*(v53 + 8), *(v53 + 16), v302);
        }

        std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v302);
        v254 = 1;
      }

      goto LABEL_81;
    }

    v55 = *(v52 + 200);
    v56 = *(this + 59);
    if (v55)
    {
      v57 = v55 == v56;
    }

    else
    {
      v57 = 0;
    }

    if (v57)
    {
      v58 = v257;
      if (!v54)
      {
        goto LABEL_66;
      }
    }

    else
    {
      *(v52 + 200) = v56;
      v58 = v257;
      if ((v54 & 1) == 0)
      {
LABEL_66:
        BYTE1(v322) = v58;
        md::PatternedLayer::layout(v52, &v318);
        v302[0] = &off_1F2A36858;
        v302[1] = v260;
        *(&v303 + 1) = v302;
        md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItemsForPasses(*(v52 + 8), *(v52 + 16), v302);
        std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v302);
        goto LABEL_67;
      }
    }

    v58 = v18 + *(v40 + 169);
    goto LABEL_66;
  }

  v254 = 0;
LABEL_329:
  ggl::CommandBuffer::sortRenderItems(v260[9], v260[10]);
  if ((v254 & 1) != 0 && v258)
  {
    LOBYTE(v318) = 0;
    v326 = 0;
    md::CartographicTiledVectorRenderLayer<md::RoadTileDataRenderable>::layoutStencilTiles(this, a2, v258, v251, &v318);
    ggl::CommandBuffer::sortRenderItems(v258[9], v258[10]);
  }

  if (v278)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v278);
  }

  v245 = mach_absolute_time();
  v246 = v245 - v249;
  result = ggl::Performance::Counters::instance(v245);
  atomic_fetch_add((*(result + 32) + 104), v246);
  return result;
}