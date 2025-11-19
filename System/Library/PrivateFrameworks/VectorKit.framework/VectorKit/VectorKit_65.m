void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelMarker>>(uint64_t a1, uint64_t a2)
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

std::__shared_weak_count *std::__split_buffer<std::shared_ptr<md::LabelMarker>,geo::allocator_adapter<std::shared_ptr<md::LabelMarker>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelMarker>>(v5, v4);
  }

  return v1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelMarker>>(uint64_t a1, void *a2)
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

uint64_t md::StandardLabeler::isLabelHitAtPixel(uint64_t a1, uint64_t a2, float *a3, int a4)
{
  if (*(a2 + 224))
  {
    return 0;
  }

  v18 = v7;
  v19 = v6;
  v20 = v4;
  v21 = v5;
  v11 = *(*(a1 + 24) + 176);
  v12 = *(a2 + 288);
  if (a4)
  {
    v13 = 15.0;
    if (*(v12 + 1156))
    {
      v14 = 0;
    }

    else
    {
      result = *(v12 + 272);
      if (!result)
      {
        return result;
      }

      result = (*(*result + 648))(result);
      if (!result)
      {
        return result;
      }

      v12 = *(a2 + 288);
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
    v13 = 22.0;
  }

  v17 = 0;
  v15 = *a3;
  v16 = a3[1];
  *(v12 + 1292) = 0;
  result = *(v12 + 272);
  if (result)
  {
    result = (*(*result + 640))(result, &v17, v14, v15, v16, v13 * v11);
    if (result)
    {
      *(v12 + 1292) = (*(*result + 664))(result);
      return 1;
    }
  }

  return result;
}

void md::StandardLabeler::roadMarkerForSelectionAtPixel(std::__shared_weak_count *a1@<X0>, float *a2@<X1>, void *a3@<X8>)
{
  v15[9] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  md::StandardLabeler::labelAtPixel(&v13, a1, a2, 0, v15);
  if (!v13)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = -1;
    v11 = -1;
    v12 = 0;
    md::StandardLabeler::hitRoadFeatureAtPixel(a1, a2, &v13, &v7, 0);
    if (v7)
    {
      std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v6, a1[1].~__shared_weak_count_0, a1[1].__on_zero_shared);
      operator new();
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }
}

void sub_1B2C1B9D8(mdm::zone_mallocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (*(v20 - 81) < 0)
  {
    v22 = *(v20 - 104);
    v23 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v23, v22);
  }

  if (*(v18 + 119) < 0)
  {
    v24 = v19[1];
    v25 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v25, v24);
  }

  v26 = *v19;
  *v19 = 0;
  if (v26)
  {
    std::default_delete<md::MarkerFeatureHandle>::operator()[abi:nn200100](v26);
  }

  v27 = *(v18 + 80);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(v18 + 64);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  v29 = *(v18 + 40);
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  std::__shared_weak_count::~__shared_weak_count(v18);
  operator delete(v30);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void md::StandardLabeler::hitRoadFeatureAtPixel(std::__shared_weak_count *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1;
  v76 = *MEMORY[0x1E69E9840];
  v71 = 0uLL;
  v72 = 0;
  if (a5 == 1)
  {
    v6 = BYTE4(a1[1].__vftable[92].~__shared_weak_count);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[2].__vftable;
  on_zero_shared = v7->__on_zero_shared;
  get_deleter = v7->__get_deleter;
  if (v6)
  {
    if (on_zero_shared != get_deleter)
    {
      *(&v74 + 1) = 0;
      operator new();
    }
  }

  else
  {
    for (; on_zero_shared != get_deleter; on_zero_shared = (on_zero_shared + 16))
    {
      v10 = a1[1].__vftable;
      if ((BYTE5(v10[91].__on_zero_shared_weak) & 1) == 0)
      {
        *(&v74 + 1) = 0;
        operator new();
      }

      if ((HIBYTE(v10[91].__on_zero_shared_weak) & 1) == 0)
      {
        *(&v74 + 1) = 0;
        operator new();
      }
    }
  }

  v11 = *(&v71 + 1);
  v12 = v71;
  i = a4;
  if (*(&v71 + 1) == v71)
  {
    goto LABEL_95;
  }

  if (!a5)
  {
    v43 = v71;
    do
    {
      if (v43[5] < *(v12 + 5))
      {
        v12 = v43;
      }

      v43 += 6;
    }

    while (v43 != *(&v71 + 1));
    v45 = *v12;
    v44 = v12[1];
    if (v44)
    {
      atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
    }

    v46 = *(a4 + 8);
    *a4 = v45;
    *(a4 + 8) = v44;
    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v46);
    }

    *(a4 + 16) = *(v12 + 4);
    v47 = *(v12 + 20);
    *(a4 + 36) = *(v12 + 9);
    *(a4 + 20) = v47;
    goto LABEL_95;
  }

  v14 = 0;
  v68 = 0;
  v69 = 0uLL;
  do
  {
    if ((*(*v12 + 148) & 0xFE) == 4)
    {
      if (v14 >= *(&v69 + 1))
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v68) >> 4);
        v18 = v17 + 1;
        if (v17 + 1 > 0x555555555555555)
        {
          goto LABEL_104;
        }

        if (0x5555555555555556 * ((*(&v69 + 1) - v68) >> 4) > v18)
        {
          v18 = 0x5555555555555556 * ((*(&v69 + 1) - v68) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(&v69 + 1) - v68) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v19 = 0x555555555555555;
        }

        else
        {
          v19 = v18;
        }

        v75 = &v70;
        if (v19)
        {
          v20 = mdm::zone_mallocator::instance(a1);
          v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureHitResult>(v20, v19);
        }

        else
        {
          v21 = 0;
        }

        v22 = &v21[48 * v17];
        *&v73 = v21;
        *(&v73 + 1) = v22;
        *(&v74 + 1) = &v21[48 * v19];
        *v22 = *v12;
        v23 = v12[1];
        *(v22 + 1) = v23;
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }

        v24 = *(v12 + 1);
        *(v22 + 4) = v12[4];
        *(v22 + 1) = v24;
        *(v22 + 5) = v12[5];
        *&v74 = v22 + 48;
        v25 = (v68 + v22 - v69);
        std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>,md::LabelFeatureHitResult*>(v68, v69, v25);
        v26 = v68;
        v27 = *(&v69 + 1);
        v68 = v25;
        v67 = v74;
        v69 = v74;
        *&v74 = v26;
        *(&v74 + 1) = v27;
        *&v73 = v26;
        *(&v73 + 1) = v26;
        a1 = std::__split_buffer<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator> &>::~__split_buffer(&v73);
        v14 = v67;
      }

      else
      {
        *v14 = *v12;
        v15 = v12[1];
        *(v14 + 8) = v15;
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v16 = *(v12 + 1);
        *(v14 + 32) = v12[4];
        *(v14 + 16) = v16;
        *(v14 + 40) = v12[5];
        v14 += 48;
      }

      *&v69 = v14;
    }

    v12 += 6;
  }

  while (v12 != v11);
  v28 = v68;
  if (v68 == v14)
  {
    j = *(&v71 + 1);
  }

  else
  {
    v29 = v14 - v68;
    v30 = v72;
    v31 = v71;
    if (v72 - v71 >= v14 - v68)
    {
      v48 = *(&v71 + 1) - v71;
      if (*(&v71 + 1) - v71 >= v29)
      {
        j = std::__copy_impl::operator()[abi:nn200100]<md::LabelFeatureHitResult *,md::LabelFeatureHitResult *,md::LabelFeatureHitResult *>(v68, v14, v71);
        v63 = *(&v71 + 1);
        for (i = a4; v63 != j; v63 -= 48)
        {
          v64 = *(v63 - 40);
          if (v64)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v64);
          }
        }

        *(&v71 + 1) = j;
        goto LABEL_73;
      }

      v49 = v68 + v48;
      std::__copy_impl::operator()[abi:nn200100]<md::LabelFeatureHitResult *,md::LabelFeatureHitResult *,md::LabelFeatureHitResult *>(v68, (v68 + v48), v71);
      for (j = *(&v71 + 1); v49 != v14; j += 48)
      {
        *j = *v49;
        v50 = *(v49 + 1);
        *(j + 8) = v50;
        if (v50)
        {
          atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
        }

        v51 = *(v49 + 1);
        *(j + 32) = *(v49 + 4);
        *(j + 16) = v51;
        *(j + 40) = *(v49 + 5);
        v49 += 48;
      }
    }

    else
    {
      v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 4);
      if (v71)
      {
        v33 = *(&v71 + 1);
        v34 = v71;
        if (*(&v71 + 1) != v71)
        {
          do
          {
            a1 = *(v33 - 40);
            if (a1)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](a1);
            }

            v33 -= 48;
          }

          while (v33 != v31);
          v34 = v71;
        }

        *(&v71 + 1) = v31;
        v35 = mdm::zone_mallocator::instance(a1);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeatureHitResult>(v35, v34);
        v30 = 0;
        v71 = 0uLL;
        v72 = 0;
      }

      if (v32 > 0x555555555555555)
      {
        goto LABEL_104;
      }

      v36 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 4);
      v37 = 2 * v36;
      if (2 * v36 <= v32)
      {
        v37 = v32;
      }

      v38 = v36 >= 0x2AAAAAAAAAAAAAALL ? 0x555555555555555 : v37;
      if (v38 > 0x555555555555555)
      {
LABEL_104:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v39 = mdm::zone_mallocator::instance(a1);
      j = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureHitResult>(v39, v38);
      *&v71 = j;
      *(&v71 + 1) = j;
      v72 = j + 48 * v38;
      do
      {
        *j = *v28;
        v41 = v28[1];
        *(j + 8) = v41;
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
        }

        v42 = *(v28 + 1);
        *(j + 32) = v28[4];
        *(j + 16) = v42;
        *(j + 40) = v28[5];
        v28 += 6;
        j += 48;
      }

      while (v28 != v14);
    }

    *(&v71 + 1) = j;
  }

  i = a4;
LABEL_73:
  v52 = v71;
  v53 = v71;
  if (v71 != j)
  {
    v53 = v71;
    while (*v53 != v5[8].__shared_owners_ || *(v53 + 16) != LODWORD(v5[9].__vftable) || *(v53 + 20) != HIDWORD(v5[9].__vftable) || *(v53 + 24) != LODWORD(v5[9].__shared_owners_) || *(v53 + 28) != HIDWORD(v5[9].__shared_owners_))
    {
      v53 += 48;
      if (v53 == j)
      {
        goto LABEL_89;
      }
    }
  }

  if (v53 == j || v53 + 48 == j)
  {
LABEL_89:
    v60 = *v71;
    v59 = *(v71 + 8);
    if (v59)
    {
      atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
    }

    v61 = *(i + 8);
    *i = v60;
    *(i + 8) = v59;
    if (v61)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v61);
    }

    *(i + 16) = *(v52 + 16);
    v57 = *(v52 + 20);
    v58 = *(v52 + 36);
  }

  else
  {
    v55 = *(v53 + 48);
    v54 = *(v53 + 56);
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    v56 = *(i + 8);
    *i = v55;
    *(i + 8) = v54;
    if (v56)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v56);
    }

    *(i + 16) = *(v53 + 64);
    v57 = *(v53 + 68);
    v58 = *(v53 + 84);
  }

  *(i + 36) = v58;
  *(i + 20) = v57;
  *&v73 = &v68;
  std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v73);
LABEL_95:
  if (*i)
  {
    md::LabelPool::labelForFeature(&v73, v5[2].__vftable, v5[1].__vftable, i, (i + 16), 0);
    v62 = *(a3 + 8);
    *a3 = v73;
    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v62);
    }
  }

  *&v73 = &v71;
  std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v73);
}

void sub_1B2C1C650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void ***a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a15 = &a17;
  std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a15);
  a17 = &a21;
  std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a17);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelFeatureMarker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3A30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeatureHitResult>(v5, v3);
  }
}

void std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    v4 = *(i - 40);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeatureHitResult>(uint64_t a1, void *a2)
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<md::LabelFeatureHitResult *,md::LabelFeatureHitResult *,md::LabelFeatureHitResult *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(a3 + 8);
      *a3 = v7;
      *(a3 + 8) = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      *(a3 + 16) = *(v5 + 4);
      v9 = *(v5 + 20);
      *(a3 + 36) = *(v5 + 9);
      *(a3 + 20) = v9;
      *(a3 + 40) = v5[5];
      v5 += 6;
      a3 += 48;
    }

    while (v5 != a2);
  }

  return a3;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureHitResult>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 48 * a2, 0x10600400E78B8FBuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>,md::LabelFeatureHitResult*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *v5 = 0;
      *(v5 + 8) = 0;
      v6 = *(v5 + 16);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 16) = v6;
      *(a3 + 40) = *(v5 + 40);
      v5 += 48;
      a3 += 48;
    }

    while (v5 != a2);
    do
    {
      v7 = *(v4 + 8);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v4 += 48;
    }

    while (v4 != a2);
  }
}

std::__shared_weak_count *std::__split_buffer<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 48;
    a1 = *(shared_weak_owners - 40);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      shared_weak_owners = v1->__shared_weak_owners_;
    }

    else
    {
      shared_weak_owners -= 48;
    }
  }

  v4 = v1->__vftable;
  if (v1->__vftable)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeatureHitResult>(v5, v4);
  }

  return v1;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<md::LabelFeature> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_5,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_5>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, void *a2)
{
  v14 = xmmword_1B33B0640;
  v15 = 0;
  v13 = **(a1 + 8);
  if ((*(**a2 + 440))())
  {
    v4 = *(a1 + 32);
    v5 = *a2;
    v6 = a2[1];
    v10[0] = v5;
    v10[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v14;
    v12 = v15;
    v7 = v4[1];
    if (v7 >= v4[2])
    {
      v9 = std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(v4, v10, &v13);
    }

    else
    {
      v8 = v13;
      *v7 = v5;
      *(v7 + 8) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      *(v7 + 40) = v8;
      v9 = v7 + 48;
    }

    v4[1] = v9;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void sub_1B2C1CC40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(void *a1, uint64_t a2, float *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v4;
  }

  v23 = a1 + 3;
  if (v8)
  {
    v9 = mdm::zone_mallocator::instance(a1);
    v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureHitResult>(v9, v8);
  }

  else
  {
    v10 = 0;
  }

  *(&v22 + 1) = &v10[48 * v8];
  v11 = *a3;
  v12 = *(a2 + 8);
  v13 = &v10[48 * v3];
  *v13 = *a2;
  *(v13 + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 16);
  *(v13 + 4) = *(a2 + 32);
  *(v13 + 1) = v14;
  *(v13 + 5) = v11;
  *&v22 = v13 + 48;
  v15 = a1[1];
  v16 = &v13[*a1 - v15];
  std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>,md::LabelFeatureHitResult*>(*a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v22;
  *(a1 + 1) = v22;
  *&v22 = v17;
  *(&v22 + 1) = v18;
  v21[0] = v17;
  v21[1] = v17;
  std::__split_buffer<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator> &>::~__split_buffer(v21);
  return v20;
}

__n128 std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_5,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_5>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3BD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_4,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_4>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, void *a2)
{
  v14 = xmmword_1B33B0640;
  v15 = 0;
  v13 = **(a1 + 8);
  if ((*(**a2 + 440))())
  {
    v4 = *(a1 + 32);
    v5 = *a2;
    v6 = a2[1];
    v10[0] = v5;
    v10[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v14;
    v12 = v15;
    v7 = v4[1];
    if (v7 >= v4[2])
    {
      v9 = std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(v4, v10, &v13);
    }

    else
    {
      v8 = v13;
      *v7 = v5;
      *(v7 + 8) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      *(v7 + 40) = v8;
      v9 = v7 + 48;
    }

    v4[1] = v9;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void sub_1B2C1CF84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_4,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_4>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3B88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_3,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_3>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, void *a2)
{
  v14 = xmmword_1B33B0640;
  v15 = 0;
  v13 = **(a1 + 8);
  if ((*(**a2 + 440))())
  {
    v4 = *(a1 + 32);
    v5 = *a2;
    v6 = a2[1];
    v10[0] = v5;
    v10[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v14;
    v12 = v15;
    v7 = v4[1];
    if (v7 >= v4[2])
    {
      v9 = std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(v4, v10, &v13);
    }

    else
    {
      v8 = v13;
      *v7 = v5;
      *(v7 + 8) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      *(v7 + 40) = v8;
      v9 = v7 + 48;
    }

    v4[1] = v9;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void sub_1B2C1D17C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_3,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_3>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3B40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_2,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_2>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, void *a2)
{
  v14 = xmmword_1B33B0640;
  v15 = 0;
  v13 = **(a1 + 8);
  if ((*(**a2 + 440))())
  {
    v4 = *(a1 + 32);
    v5 = *a2;
    v6 = a2[1];
    v10[0] = v5;
    v10[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v14;
    v12 = v15;
    v7 = v4[1];
    if (v7 >= v4[2])
    {
      v9 = std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(v4, v10, &v13);
    }

    else
    {
      v8 = v13;
      *v7 = v5;
      *(v7 + 8) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      *(v7 + 40) = v8;
      v9 = v7 + 48;
    }

    v4[1] = v9;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void sub_1B2C1D374(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_2,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_2>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3AF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_1,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_1>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, void *a2)
{
  v14 = xmmword_1B33B0640;
  v15 = 0;
  v13 = **(a1 + 8);
  if ((*(**a2 + 440))())
  {
    v4 = *(a1 + 32);
    v5 = *a2;
    v6 = a2[1];
    v10[0] = v5;
    v10[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v14;
    v12 = v15;
    v7 = v4[1];
    if (v7 >= v4[2])
    {
      v9 = std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(v4, v10, &v13);
    }

    else
    {
      v8 = v13;
      *v7 = v5;
      *(v7 + 8) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      *(v7 + 40) = v8;
      v9 = v7 + 48;
    }

    v4[1] = v9;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void sub_1B2C1D56C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_1,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_1>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3AB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_0,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_0>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, void *a2)
{
  v14 = xmmword_1B33B0640;
  v15 = 0;
  v13 = **(a1 + 8);
  if ((*(**a2 + 440))())
  {
    v4 = *(a1 + 32);
    v5 = *a2;
    v6 = a2[1];
    v10[0] = v5;
    v10[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v14;
    v12 = v15;
    v7 = v4[1];
    if (v7 >= v4[2])
    {
      v9 = std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(v4, v10, &v13);
    }

    else
    {
      v8 = v13;
      *v7 = v5;
      *(v7 + 8) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      *(v7 + 40) = v8;
      v9 = v7 + 48;
    }

    v4[1] = v9;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void sub_1B2C1D764(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_0,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_0>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3A68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::StandardLabeler::adoptSelectedLabelMarker(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 224))
  {
    return 0;
  }

  v5 = a1[38];
  a1[37] = 0;
  a1[38] = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a1[40];
  a1[39] = 0;
  a1[40] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = a1[35];
  if (v7)
  {
    a1[35] = 0;
  }

  v8 = (*(**a2 + 424))(*a2);
  if (v8)
  {
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset((a1 + 34), v8);
    v10 = *a2;
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = a1[38];
    v2 = 1;
    a1[37] = v10;
    a1[38] = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }
  }

  else
  {
    if (*(*a2 + 225) == 1 || (*(**a2 + 160))(*a2))
    {
      _ZNSt3__115allocate_sharedB8nn200100IN2md25LabelExternalPointFeatureENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    v2 = 0;
  }

  return v2;
}

void sub_1B2C1DE0C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v5);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = *(a1 + 8);
  *(a1 + 8) = v7;
}

void std::__shared_ptr_emplace<md::PointLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2C3F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::TrafficIncidentLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A05878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelFeature>>(uint64_t a1, void *a2)
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

char *std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelFeature>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[16 * a2];
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelFeature>>(uint64_t a1, uint64_t a2)
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

uint64_t md::StandardLabeler::releaseAdoptedSelectedLabelMarker(md::StandardLabeler *this)
{
  v2 = *(this + 30);
  if (v2)
  {
    atomic_store(0, (*(v2 + 288) + 1331));
  }

  v4 = 0;
  v5 = 0;
  (*(*this + 184))(this, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return (*(*this + 208))(this);
}

void sub_1B2C1E23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::ARWalkingFeatureSet::~ARWalkingFeatureSet(md::ARWalkingFeatureSet *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    v3 = *(this + 37);
    v4 = *(this + 36);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *(this + 36);
    }

    *(this + 37) = v2;
    operator delete(v4);
  }

  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 248);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>>::~__hash_table(this + 208);
  v6 = (this + 176);
  std::vector<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 144);
  std::vector<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 112);
  std::vector<std::shared_ptr<md::ARWalkingContinueLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingContinueLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 80);
  std::vector<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 48));
  v6 = (this + 24);
  std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  *this = &unk_1F2A3ED40;
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::vector<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(v5, v3);
  }
}

void std::vector<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(v5, v3);
  }
}

void std::vector<std::shared_ptr<md::ARWalkingContinueLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingContinueLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(v5, v3);
  }
}

void std::vector<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(v5, v3);
  }
}

void std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 24;
        std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3ED40;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3ED40;

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(uint64_t a1, void *a2)
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

void std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingContinueLabelFeature> const,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingContinueLabelFeature> const,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

md::HighPrecisionAltitudeRequestor *std::unique_ptr<md::HighPrecisionAltitudeRequestor>::reset[abi:nn200100](md::HighPrecisionAltitudeRequestor **a1, md::HighPrecisionAltitudeRequestor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    md::HighPrecisionAltitudeRequestor::~HighPrecisionAltitudeRequestor(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<md::VLAltitudeRequest> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__hash_table<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::allocator<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::allocator<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>>(uint64_t a1, void *a2)
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

void std::__hash_table<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::allocator<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::__deallocate_node(void (***a1)(void))
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      (*v1[2])();
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__function::__func<md::ARWalkingSupport::ARWalkingSupport(md::LabelManager *)::$_0,std::allocator<md::ARWalkingSupport::ARWalkingSupport(md::LabelManager *)::$_0>,void ()(std::shared_ptr<md::VLAltitudeRequest> const&)>::operator()(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = [[VKARWalkingElevationRequestFailureInfo alloc] initWithReason:1];
  v3 = *(v1 + 136);
  v7 = v2;
  if (v3 && *(v3 + 312))
  {
    v4 = v2;
    v8 = v4;
    v5 = *(v3 + 312);
    if (!v5)
    {
      v6 = std::__throw_bad_function_call[abi:nn200100]();

      _Unwind_Resume(v6);
    }

    (*(*v5 + 48))(v5, &v8);
  }
}

uint64_t std::__function::__func<md::ARWalkingSupport::ARWalkingSupport(md::LabelManager *)::$_0,std::allocator<md::ARWalkingSupport::ARWalkingSupport(md::LabelManager *)::$_0>,void ()(std::shared_ptr<md::VLAltitudeRequest> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E3C38;
  a2[1] = v2;
  return result;
}

void md::ARWalkingSupport::setMaxDelayPostLocalizationWithoutExistingFeatures(md::ARWalkingSupport *this, double a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 4) != a2)
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "maxDelayPostLocalizationWithoutExistingFeatures:%f", &v5, 0xCu);
    }

    *(this + 4) = a2;
  }
}

id GEOGetVectorKitARWalkingSupportLog(void)
{
  if (GEOGetVectorKitARWalkingSupportLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitARWalkingSupportLog(void)::onceToken, &__block_literal_global_338);
  }

  v1 = GEOGetVectorKitARWalkingSupportLog(void)::log;

  return v1;
}

void ___ZL34GEOGetVectorKitARWalkingSupportLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "ARWalkingSupport");
  v1 = GEOGetVectorKitARWalkingSupportLog(void)::log;
  GEOGetVectorKitARWalkingSupportLog(void)::log = v0;
}

void md::ARWalkingSupport::setMaxDelayPostLocalizationWithExistingFeatures(md::ARWalkingSupport *this, double a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 5) != a2)
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "maxDelayPostLocalizationWithExistingFeatures:%f", &v5, 0xCu);
    }

    *(this + 5) = a2;
  }
}

void md::ARWalkingSupport::shouldUseHighPrecisionAltitude(md::ARWalkingSupport *this, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 9) != a2)
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "Should use high precision altitude:%d", v5, 8u);
    }

    *(this + 9) = a2;
    md::ARWalkingSupport::setARWalkingFeatures(this, *(this + 56), 1);
  }
}

void md::ARWalkingSupport::setARWalkingFeatures(int8x8_t *this, VKARWalkingFeatureSet *a2, __int8 a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((a3 & 1) != 0 || this[56] != v5)
  {
    if (this[11].i8[0] == 1)
    {
      geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v12, &this[7]);
    }

    else
    {
      v12 = &unk_1F2A3ED40;
      v13 = 0;
    }

    geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v9, v6);
    v11 = a3;
    if (this[11].i8[0] == 1)
    {
      geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(&this[7], v10);
      v7 = v11;
    }

    else
    {
      geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&this[7], &v9);
      v7 = v11;
      this[11].i8[0] = 1;
    }

    this[10].i8[0] = v7;
    v9 = &unk_1F2A3ED40;

    md::ARWalkingSupport::updateFeatureSetState(this, v13, 5);
    if ((this[11].i8[0] & 1) == 0)
    {
      v8 = std::__throw_bad_optional_access[abi:nn200100]();
      v12 = &unk_1F2A3ED40;

      _Unwind_Resume(v8);
    }

    md::ARWalkingSupport::updateFeatureSetState(this, *&this[8], 1);
    v12 = &unk_1F2A3ED40;
  }
}

void md::ARWalkingSupport::updateFeatureSetState(int8x8_t *a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (!v4 || [v4 state] == a3)
  {
    goto LABEL_25;
  }

  v6 = GEOGetVectorKitARWalkingSupportLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(&off_1E7B2FA68 + a3 - 1);
    buf[0] = 138412546;
    *&buf[1] = v7;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "Updating feature set state to %@ - %@", buf, 0x16u);
  }

  [v5 setState:a3];
  geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v24, v5);
  v8 = [v25 hash];
  v9 = v8;
  v10 = a1[114];
  if (!*&v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*&a1[113] + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  v17 = v15[3];
  v18 = v25;
  v19 = v17;
  v20 = v18;
  v21 = v20;
  if (v19 != v20)
  {
    v22 = [v19 isEqual:v20];

    if (v22)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_24:
  v24 = &unk_1F2A3ED40;

LABEL_25:
}

void sub_1B2C1F738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::unique_ptr<std::__hash_node<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,void *>>>>::~unique_ptr[abi:nn200100](va);

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      (*v2[2])();
    }

    operator delete(v2);
  }

  return a1;
}

void md::ARWalkingSupport::setHighPrecisionAltitudeDistanceThreshold(uint64_t a1, double *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a2 != *(a1 + 16))
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *a2;
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "high precision altitude distance threshold:%f", &v7, 0xCu);
    }

    v6 = *a2;
    *(a1 + 16) = *a2;
    *(a1 + 24) = v6 * v6;
    md::ARWalkingSupport::setARWalkingFeatures(a1, *(a1 + 448), 1);
  }
}

void md::ARWalkingSupport::setHighPrecisionZLevel(md::ARWalkingSupport *this, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 48) != a2)
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "high precision zLevel:%d", v5, 8u);
    }

    *(this + 48) = a2;
    md::ARWalkingSupport::setARWalkingFeatures(this, *(this + 56), 1);
  }
}

void md::ARWalkingSupport::prepareContinueFeaturePlacementsForRegion(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v81 = *MEMORY[0x1E69E9840];
  v55 = (*a2)[25];
  md::LabelExternalPointFeature::incident(v55);
  objc_claimAutoreleasedReturnValue();
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v8 = (*a2)[38];
  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = md::LabelPoint::mercatorPoint(*(v8 + 16));
      if (md::MultiRectRegion::contains(a3, v10))
      {
        v11 = *(v8 + 16);
        if (v9 >= v63)
        {
          v9 = std::vector<md::LabelIdentifier>::__emplace_back_slow_path<md::LabelIdentifier const&>(&v61, (v11 + 160));
        }

        else
        {
          *v9++ = *(v11 + 160);
        }

        v62 = v9;
      }

      v8 = *v8;
    }

    while (v8);
    v12 = v61;
    if (v61 != v9)
    {
      v54 = a3;
      v13 = v61;
      v56 = a1;
      v57 = v61;
      do
      {
        v14 = *v13;
        v60 = *v13;
        v15 = *a2;
        v16 = (*a2)[34];
        if (!v16)
        {
          goto LABEL_21;
        }

        v17 = v15 + 34;
        do
        {
          v18 = *(v16 + 32);
          v19 = v18 >= v14;
          v20 = v18 < v14;
          if (v19)
          {
            v17 = v16;
          }

          v16 = *(v16 + 8 * v20);
        }

        while (v16);
        if (v17 == v15 + 34 || *(v17 + 8) > v14 || (v21 = v17[5]) == 0 || (*(v21 + 136) & 1) == 0)
        {
LABEL_21:
          if (*(a1 + 9) == 1)
          {
            v22 = (*(*v15 + 112))(v15, &v60);
            *v64 = *v22;
            *&v64[16] = *(v22 + 16);
            *v65 = *(v22 + 24);
            *&v65[16] = *(v22 + 40);
            *&v65[19] = *(v22 + 43);
            v23 = *(a1 + 776);
            md::LabelPoint::coordinate(&buf, v64);
            *&v74.__r_.__value_.__l.__data_ = *&buf.__r_.__value_.__l.__data_;
            md::HighPrecisionAltitudeRequestor::requestAltitude(&v58, v23, &v74);
            v24 = v58;
            if (v58)
            {
              v25 = a4[1];
              if (!v25)
              {
                goto LABEL_46;
              }

              v26 = vcnt_s8(v25);
              v26.i16[0] = vaddlv_u8(v26);
              if (v26.u32[0] > 1uLL)
              {
                v27 = v60;
                if (v25 <= v60)
                {
                  v27 = v60 % v25;
                }
              }

              else
              {
                v27 = (v25 - 1) & v60;
              }

              v31 = *(*a4 + 8 * v27);
              if (!v31 || (v32 = *v31) == 0)
              {
LABEL_46:
                operator new();
              }

              while (1)
              {
                v33 = v32[1];
                if (v33 == v60)
                {
                  if (*(v32 + 4) == v60)
                  {
                    a1 = v56;
                    v12 = v57;
                    v30 = v59;
                    if (v59)
                    {
                      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v34 = v32[4];
                    v32[3] = v24;
                    v32[4] = v30;
                    if (v34)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
                    }

                    goto LABEL_51;
                  }
                }

                else
                {
                  if (v26.u32[0] > 1uLL)
                  {
                    if (v33 >= v25)
                    {
                      v33 %= v25;
                    }
                  }

                  else
                  {
                    v33 &= v25 - 1;
                  }

                  if (v33 != v27)
                  {
                    goto LABEL_46;
                  }
                }

                v32 = *v32;
                if (!v32)
                {
                  goto LABEL_46;
                }
              }
            }

            v28 = GEOGetVectorKitARWalkingSupportLog();
            v12 = v57;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              md::LabelIdentifier::to_string(&v74, v60);
              v29 = &v74;
              if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v29 = v74.__r_.__value_.__r.__words[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
              *(buf.__r_.__value_.__r.__words + 4) = v29;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v55;
              HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
              v76 = "false";
              v77 = 2080;
              v78 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/ARWalkingSupport.mm";
              v79 = 1024;
              v80 = 663;
              _os_log_impl(&dword_1B2754000, v28, OS_LOG_TYPE_ERROR, "Failed to request high precision altitude for placement:%s of Continue %@: Assertion with expression - %s : Failed in file - %s line - %i", &buf, 0x30u);
              if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v74.__r_.__value_.__l.__data_);
              }
            }

            v30 = v59;
LABEL_51:
            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v30);
            }
          }

          else
          {
            *v64 = 0;
            *&v64[8] = 0;
            a3 &= 0xFFFFFFFFFFFFFF00;
            md::ARWalkingContinueLabelFeature::setHighPrecisionAltitudeForPlacement(v15, v14, v64, 0, *&a3);
          }
        }

        ++v13;
      }

      while (v13 != v9);
      a3 = v54;
    }
  }

  else
  {
    v12 = 0;
    v9 = 0;
  }

  if (a4[3])
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v64);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v64[16], "[", 1);
    for (i = a4[2]; i; i = *i)
    {
      md::LabelIdentifier::to_string(&buf, *(i + 4));
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = buf.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v64[16], p_buf, size);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v64[16], ",", 1);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v64[16], "]", 1);
    v38 = GEOGetVectorKitARWalkingSupportLog();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
LABEL_90:

      *v64 = *MEMORY[0x1E69E54D8];
      v53 = *(MEMORY[0x1E69E54D8] + 72);
      *&v64[*(*v64 - 24)] = *(MEMORY[0x1E69E54D8] + 64);
      *&v64[16] = v53;
      *v65 = MEMORY[0x1E69E5548] + 16;
      if (v70 < 0)
      {
        operator delete(__p);
      }

      *v65 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v65[8]);
      std::iostream::~basic_iostream();
      MEMORY[0x1B8C620C0](&v73);
      v12 = v61;
      if (!v61)
      {
        goto LABEL_75;
      }

LABEL_74:
      v62 = v12;
      operator delete(v12);
      goto LABEL_75;
    }

    if ((v72 & 0x10) != 0)
    {
      v50 = v71;
      if (v71 < v68)
      {
        v71 = v68;
        v50 = v68;
      }

      v51 = __src;
    }

    else
    {
      if ((v72 & 8) == 0)
      {
        v39 = 0;
        *(&buf.__r_.__value_.__s + 23) = 0;
LABEL_86:
        buf.__r_.__value_.__s.__data_[v39] = 0;
        v52 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v52 = buf.__r_.__value_.__r.__words[0];
        }

        LODWORD(v74.__r_.__value_.__l.__data_) = 136315394;
        *(v74.__r_.__value_.__r.__words + 4) = v52;
        WORD2(v74.__r_.__value_.__r.__words[1]) = 2112;
        *(&v74.__r_.__value_.__r.__words[1] + 6) = v55;
        _os_log_impl(&dword_1B2754000, v38, OS_LOG_TYPE_INFO, "Requesting high precision altitude for placements:%s of Continue %@", &v74, 0x16u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        goto LABEL_90;
      }

      v51 = *&v65[16];
      v50 = v66;
    }

    v39 = v50 - v51;
    if (v50 - v51 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v39 >= 0x17)
    {
      operator new();
    }

    *(&buf.__r_.__value_.__s + 23) = v50 - v51;
    if (v39)
    {
      memmove(&buf, v51, v39);
    }

    goto LABEL_86;
  }

  v40 = *(a3 + 40);
  v41 = *(a3 + 48);
  v43 = *(a3 + 24);
  v42 = *(a3 + 32);
  v44 = GEOGetVectorKitARWalkingSupportLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = fmod((v43 + (v40 - v43) * 0.5) * 6.28318531, 6.28318531);
    v46 = fmod(v45 + 6.28318531, 6.28318531) * 57.2957795 + -180.0;
    v47 = exp((v42 + (v41 - v42) * 0.5) * 6.28318531 + -3.14159265);
    v48 = atan(v47);
    v49 = *(a3 + 16);
    *v64 = 134219011;
    *&v64[4] = v9 - v12;
    *&v64[12] = 2049;
    *&v64[14] = v48 * 114.591559 + -90.0;
    *&v64[22] = 2049;
    *v65 = v46;
    *&v65[8] = 2048;
    *&v65[10] = v49;
    *&v65[18] = 2112;
    *&v65[20] = v55;
    _os_log_impl(&dword_1B2754000, v44, OS_LOG_TYPE_INFO, "None of the %lu placements in the region(center:%{private}f,%{private}f count:%lu) need high precision altitude for Continue in %@", v64, 0x34u);
  }

  if (v12)
  {
    goto LABEL_74;
  }

LABEL_75:
}

void sub_1B2C20370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  a23 = *MEMORY[0x1E69E54D8];
  v44 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a23 + *(a23 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a25 = v44;
  a26 = MEMORY[0x1E69E5548] + 16;
  if (a39 < 0)
  {
    operator delete(__p);
  }

  a26 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a27);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a42);
  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>>::__emplace_unique_key_args<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<md::ARWalkingContinueLabelFeature> const&>,std::tuple<>>(void *a1, unint64_t a2)
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

void sub_1B2C207E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

md::LabelPoint *md::LabelPoint::geocentricPoint(md::LabelPoint *this)
{
  if ((*(this + 44) & 1) == 0)
  {
    v2 = *(this + 3) * 6.28318531;
    v3 = exp(*(this + 4) * 6.28318531 + -3.14159265);
    v4 = atan(v3) * 2.0 + -1.57079633;
    v5 = fmod(v2, 6.28318531);
    v6 = fmod(v5 + 6.28318531, 6.28318531) + -3.14159265;
    v7 = __sincos_stret(v4);
    v8 = 6378137.0 / sqrt(v7.__sinval * v7.__sinval * -0.00669437999 + 1.0);
    v9 = __sincos_stret(v6);
    *this = v8 * v7.__cosval * v9.__cosval;
    *(this + 1) = v8 * v7.__cosval * v9.__sinval;
    *(this + 2) = v7.__sinval * 0.99330562 * v8;
    *(this + 44) = 1;
  }

  return this;
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__emplace_unique_key_args<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const&>,std::tuple<>>(void *a1, unint64_t a2)
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

void sub_1B2C20B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::ARWalkingSupport::updateFeatureSet(md::ARWalkingSupport *this, md::ARWalkingFeatureSet *a2)
{
  v141 = *MEMORY[0x1E69E9840];
  if (*(a2 + 29) + *(a2 + 34))
  {
    v5 = a2;
    md::LabelLayoutContext::mercatorEyePos(*(*this + 424));
    v7 = v6;
    v8 = *(v5 + 33);
    v120 = v5;
    if (v8)
    {
      v119 = 0;
      v9 = (v5 + 248);
      v10 = (v5 + 264);
      v121 = v5 + 72;
      while ((md::HighPrecisionAltitudeRequest::resolveResults(v8[4]) & 1) == 0)
      {
        v22 = *v8;
LABEL_80:
        v8 = v22;
        if (!v22)
        {
          goto LABEL_83;
        }
      }

      v125 = 0;
      v126 = 0;
      v11 = *(v8[2] + 720);
      md::LabelExternalPointFeature::incident(v11);
      objc_claimAutoreleasedReturnValue();
      LOBYTE(__val) = 0;
      v130 = 0;
      v12 = v8[4];
      if (!v12)
      {
        goto LABEL_17;
      }

      *&v2 &= 0xFFFFFFFFFFFFFF00;
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v13 == v14)
      {
        goto LABEL_17;
      }

      v15 = 0;
      v16 = 1.79769313e308;
      do
      {
        v17 = *v13++;
        v18 = v17;
        v19 = vabdd_f64(v7, v17);
        if (v15)
        {
          v20 = v15;
        }

        else
        {
          v20 = 1;
        }

        if (v19 < v16)
        {
          v2 = v18;
          v15 = v20;
        }

        v16 = fmin(v19, v16);
      }

      while (v13 != v14);
      if (v15)
      {
        __val = v2;
        v21 = 1;
        v130 = 1;
      }

      else
      {
LABEL_17:
        v21 = 0;
      }

      v23 = GEOGetVectorKitARWalkingSupportLog();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
LABEL_33:

        md::ARWalkingManeuverLabelFeature::updateWithHighPrecisionAltitude(v8[2], &__val, v8[4], v8[5]);
        v29 = v8[2];
        v30 = v8[3];
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v125 = v29;
        v126 = v30;
        v32 = *(v5 + 7);
        v31 = *(v5 + 8);
        if (v32 >= v31)
        {
          v34 = *(v5 + 6);
          v35 = (v32 - v34) >> 3;
          if ((v35 + 1) >> 61)
          {
            goto LABEL_197;
          }

          v36 = v31 - v34;
          v37 = v36 >> 2;
          if (v36 >> 2 <= (v35 + 1))
          {
            v37 = v35 + 1;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFF8)
          {
            v38 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v37;
          }

          *v134 = v121;
          if (v38)
          {
            v39 = mdm::zone_mallocator::instance(v28);
            v40 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeature *>(v39, v38);
          }

          else
          {
            v40 = 0;
          }

          v42 = &v40[8 * v38];
          v41 = &v40[8 * v35];
          *v41 = v29;
          v33 = v41 + 8;
          v43 = *(v120 + 6);
          v44 = *(v120 + 7) - v43;
          v45 = &v41[-v44];
          memcpy(&v41[-v44], v43, v44);
          v46 = *(v120 + 6);
          *(v120 + 6) = v45;
          *(v120 + 7) = v33;
          v47 = *(v120 + 8);
          *(v120 + 8) = v42;
          v5 = v120;
          *&buf[16] = v46;
          *&buf[24] = v47;
          *buf = v46;
          *&buf[8] = v46;
          std::__split_buffer<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator> &>::~__split_buffer(buf);
        }

        else
        {
          *v32 = v29;
          v33 = v32 + 1;
        }

        *(v5 + 7) = v33;
        v48 = *(v8[2] + 720);
        md::LabelExternalPointFeature::incident(v48);
        objc_claimAutoreleasedReturnValue();
        v124 = v48;
        v49 = geo::linear_map<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>,md::VKARWalkingFeatureEqualTo,std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>,std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>>::operator[](v5 + 3, &v124);
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = v49[1];
        *v49 = v29;
        v49[1] = v30;
        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v50);
        }

        md::ARWalkingSupport::addLabelFeature(&v125, v5);
        v51 = *(v5 + 256);
        v52 = v8[1];
        v53 = vcnt_s8(v51);
        v53.i16[0] = vaddlv_u8(v53);
        if (v53.u32[0] > 1uLL)
        {
          if (v52 >= *&v51)
          {
            v52 %= *&v51;
          }
        }

        else
        {
          v52 &= *&v51 - 1;
        }

        v22 = *v8;
        v54 = *(*v9 + 8 * v52);
        do
        {
          v55 = v54;
          v54 = *v54;
        }

        while (v54 != v8);
        if (v55 == v10)
        {
          goto LABEL_200;
        }

        v56 = v55[1];
        if (v53.u32[0] > 1uLL)
        {
          if (v56 >= *&v51)
          {
            v56 %= *&v51;
          }
        }

        else
        {
          v56 &= *&v51 - 1;
        }

        v57 = *v8;
        if (v56 != v52)
        {
LABEL_200:
          if (v22)
          {
            v58 = v22[1];
            if (v53.u32[0] > 1uLL)
            {
              if (v58 >= *&v51)
              {
                v58 %= *&v51;
              }
            }

            else
            {
              v58 &= *&v51 - 1;
            }

            v57 = *v8;
            if (v58 == v52)
            {
              goto LABEL_71;
            }
          }

          *(*v9 + 8 * v52) = 0;
          v57 = *v8;
        }

        if (!v57)
        {
LABEL_77:
          *v55 = v57;
          *v8 = 0;
          --*(v5 + 34);
          *buf = v8;
          *&buf[8] = v9;
          buf[16] = 1;
          *&buf[17] = 0;
          *&buf[20] = 0;
          std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>>::~unique_ptr[abi:nn200100](buf);
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v30);
          }

          ++v119;
          goto LABEL_80;
        }

LABEL_71:
        v59 = *(v57 + 8);
        if (v53.u32[0] > 1uLL)
        {
          if (v59 >= *&v51)
          {
            v59 %= *&v51;
          }
        }

        else
        {
          v59 &= *&v51 - 1;
        }

        if (v59 != v52)
        {
          *(*v9 + 8 * v59) = v55;
          v57 = *v8;
        }

        goto LABEL_77;
      }

      v24 = *(v5 + 41);
      v25 = v8[4];
      if (v25)
      {
        md::HighPrecisionAltitudeRequest::to_string(__p, v8[4]);
        if (v128 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        if (v21)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v26 = "";
        if (v21)
        {
LABEL_24:
          std::to_string(&v132, __val);
          v27 = &v132;
          if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = v132.__r_.__value_.__r.__words[0];
          }

          *buf = 134219010;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = v26;
          *&buf[22] = 2080;
          *&buf[24] = v27;
          *v134 = 2048;
          *&v134[2] = v7;
          v135 = 2112;
          v136 = *&v11;
          _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_INFO, "Updating Maneuver Feature for FeatureSet(version:%llu) with high precision altitude request:(%s) resolvedAltitude:%s eyeAltitude:%f feature:%@", buf, 0x34u);
          if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v132.__r_.__value_.__l.__data_);
          }

          goto LABEL_30;
        }
      }

      *buf = 134219010;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = v26;
      *&buf[22] = 2080;
      *&buf[24] = "NONE";
      *v134 = 2048;
      *&v134[2] = v7;
      v135 = 2112;
      v136 = *&v11;
      _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_INFO, "Updating Maneuver Feature for FeatureSet(version:%llu) with high precision altitude request:(%s) resolvedAltitude:%s eyeAltitude:%f feature:%@", buf, 0x34u);
LABEL_30:
      v5 = v120;
      if (v25 && v128 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_33;
    }

    v119 = 0;
LABEL_83:
    v60 = *(v5 + 28);
    if (v60)
    {
      v116 = (v5 + 224);
      v117 = (v5 + 208);
      while (1)
      {
        v62 = v60[2];
        v61 = v60[3];
        if (v61)
        {
          atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v118 = v61;
        v63 = v60[6];
        if (v63)
        {
          v64 = 0;
          v123 = v62;
          while (1)
          {
            v65 = (v63 + 3);
            if (md::HighPrecisionAltitudeRequest::resolveResults(v63[3]))
            {
              break;
            }

            v76 = *v63;
LABEL_152:
            v63 = v76;
            if (!v76)
            {
              goto LABEL_155;
            }
          }

          v66 = *&v4 & 0xFFFFFFFFFFFFFF00;
          v67 = *v65;
          if (!*v65 || (*&v3 &= 0xFFFFFFFFFFFFFF00, v68 = v67[2], v69 = v67[3], v68 == v69))
          {
            LOBYTE(v70) = 0;
            goto LABEL_103;
          }

          v70 = 0;
          v71 = 1.79769313e308;
          do
          {
            v72 = *v68++;
            v73 = v72;
            v74 = vabdd_f64(v7, v72);
            if (v70)
            {
              v75 = v70;
            }

            else
            {
              v75 = 1;
            }

            if (v74 < v71)
            {
              v3 = v73;
              v70 = v75;
            }

            v71 = fmin(v74, v71);
          }

          while (v68 != v69);
          v4 = v3;
          if (!v70)
          {
LABEL_103:
            v4 = *&v66;
          }

          v77 = (v63 + 2);
          v78 = *((*(*v62 + 112))(v62, v63 + 2) + 40);
          if (v78 == 3.4028e38)
          {
            std::__throw_bad_optional_access[abi:nn200100]();
LABEL_197:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (v70)
          {
            v2 = v4;
          }

          else
          {
            *&v2 &= 0xFFFFFFFFFFFFFF00;
          }

          md::ARWalkingContinueLabelFeature::setHighPrecisionAltitudeForPlacement(v62, *v77, (v63 + 3), v70 & 1, v2);
          v79 = GEOGetVectorKitARWalkingSupportLog();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            md::LabelIdentifier::to_string(&v132, *v77);
            v80 = &v132;
            if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v80 = v132.__r_.__value_.__r.__words[0];
            }

            v122 = v80;
            v81 = *(v5 + 41);
            v82 = *v65;
            if (*v65)
            {
              md::HighPrecisionAltitudeRequest::to_string(&__val, *v65);
              if (v131 >= 0)
              {
                p_val = &__val;
              }

              else
              {
                p_val = *&__val;
              }
            }

            else
            {
              p_val = "";
            }

            v84 = v78;
            v85 = v123[25];
            md::LabelExternalPointFeature::incident(v85);
            objc_claimAutoreleasedReturnValue();
            *buf = 136316674;
            if (v70)
            {
              v86 = v4;
            }

            else
            {
              v86 = v84;
            }

            *&buf[4] = v122;
            *&buf[12] = 2048;
            *&buf[14] = v81;
            *&buf[22] = 2080;
            *&buf[24] = p_val;
            *v134 = 2048;
            *&v134[2] = v84;
            v135 = 2048;
            v136 = v86;
            v137 = 2048;
            v138 = v7;
            v139 = 2112;
            v140 = v85;
            _os_log_impl(&dword_1B2754000, v79, OS_LOG_TYPE_INFO, "Updating Continue placement:%s for FeatureSet(version:%llu) with high precision altitude request:(%s) previousAltitude:%f resolvedAltitude:%f eyeAltitude:%f feature:%@", buf, 0x48u);
            v5 = v120;
            if (v82 && v131 < 0)
            {
              operator delete(*&__val);
            }

            if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v132.__r_.__value_.__l.__data_);
            }

            v62 = v123;
          }

          v87 = v60[5];
          v88 = v63[1];
          v89 = vcnt_s8(v87);
          v89.i16[0] = vaddlv_u8(v89);
          if (v89.u32[0] > 1uLL)
          {
            if (v88 >= *&v87)
            {
              v88 %= *&v87;
            }
          }

          else
          {
            v88 &= *&v87 - 1;
          }

          v76 = *v63;
          v90 = v60[4];
          v91 = *(v90 + 8 * v88);
          do
          {
            v92 = v91;
            v91 = *v91;
          }

          while (v91 != v63);
          if (v92 == v60 + 6)
          {
            goto LABEL_201;
          }

          v93 = v92[1];
          if (v89.u32[0] > 1uLL)
          {
            if (v93 >= *&v87)
            {
              v93 %= *&v87;
            }
          }

          else
          {
            v93 &= *&v87 - 1;
          }

          v94 = *v63;
          if (v93 == v88)
          {
LABEL_144:
            if (v94)
            {
              goto LABEL_145;
            }
          }

          else
          {
LABEL_201:
            if (!v76)
            {
              goto LABEL_143;
            }

            v95 = v76[1];
            if (v89.u32[0] > 1uLL)
            {
              if (v95 >= *&v87)
              {
                v95 %= *&v87;
              }
            }

            else
            {
              v95 &= *&v87 - 1;
            }

            v94 = *v63;
            if (v95 != v88)
            {
LABEL_143:
              *(v90 + 8 * v88) = 0;
              v94 = *v63;
              goto LABEL_144;
            }

LABEL_145:
            v96 = v94[1];
            if (v89.u32[0] > 1uLL)
            {
              if (v96 >= *&v87)
              {
                v96 %= *&v87;
              }
            }

            else
            {
              v96 &= *&v87 - 1;
            }

            if (v96 != v88)
            {
              *(v60[4] + 8 * v96) = v92;
              v94 = *v63;
            }
          }

          *v92 = v94;
          *v63 = 0;
          --v60[7];
          std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>::operator()[abi:nn200100](1, v63);
          ++v64;
          goto LABEL_152;
        }

        v64 = 0;
LABEL_155:
        if (!v60[7])
        {
          break;
        }

        v97 = v64;
        v98 = *v60;
LABEL_185:
        if (v118)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v118);
        }

        v119 += v97;
        v60 = v98;
        if (!v98)
        {
          goto LABEL_188;
        }
      }

      v99 = *(v5 + 216);
      v100 = v60[1];
      v101 = vcnt_s8(v99);
      v101.i16[0] = vaddlv_u8(v101);
      if (v101.u32[0] > 1uLL)
      {
        if (v100 >= *&v99)
        {
          v100 %= *&v99;
        }
      }

      else
      {
        v100 &= *&v99 - 1;
      }

      v98 = *v60;
      v102 = *(*v117 + 8 * v100);
      do
      {
        v103 = v102;
        v102 = *v102;
      }

      while (v102 != v60);
      if (v103 == v116)
      {
        goto LABEL_202;
      }

      v104 = v103[1];
      if (v101.u32[0] > 1uLL)
      {
        if (v104 >= *&v99)
        {
          v104 %= *&v99;
        }
      }

      else
      {
        v104 &= *&v99 - 1;
      }

      v105 = *v60;
      if (v104 != v100)
      {
LABEL_202:
        if (v98)
        {
          v106 = v98[1];
          if (v101.u32[0] > 1uLL)
          {
            if (v106 >= *&v99)
            {
              v106 %= *&v99;
            }
          }

          else
          {
            v106 &= *&v99 - 1;
          }

          v105 = *v60;
          if (v106 == v100)
          {
            goto LABEL_177;
          }
        }

        *(*v117 + 8 * v100) = 0;
        v105 = *v60;
      }

      if (!v105)
      {
        v97 = v64;
LABEL_184:
        *v103 = v105;
        *v60 = 0;
        --*(v5 + 29);
        *buf = v60;
        *&buf[8] = v117;
        buf[16] = 1;
        *&buf[17] = 0;
        *&buf[20] = 0;
        std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,void *>>>>::~unique_ptr[abi:nn200100](buf);
        goto LABEL_185;
      }

LABEL_177:
      v107 = v105[1];
      if (v101.u32[0] > 1uLL)
      {
        if (v107 >= *&v99)
        {
          v107 %= *&v99;
        }
      }

      else
      {
        v107 &= *&v99 - 1;
      }

      v97 = v64;
      if (v107 != v100)
      {
        *(*v117 + 8 * v107) = v103;
        v105 = *v60;
      }

      goto LABEL_184;
    }

LABEL_188:
    if (v119)
    {
      v108 = GEOGetVectorKitARWalkingSupportLog();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
      {
        v109 = *(v120 + 41);
        v110 = *(v120 + 29) + *(v120 + 34);
        *buf = 134218496;
        *&buf[4] = v109;
        *&buf[12] = 1024;
        *&buf[14] = v119;
        *&buf[18] = 2048;
        *&buf[20] = v110;
        _os_log_impl(&dword_1B2754000, v108, OS_LOG_TYPE_INFO, "FeatureSet(version:%llu) processed %d requests - awaiting %lu requests", buf, 0x1Cu);
      }

      v111 = *this;
      *(v111 + 3034) = 1;
      v112 = atomic_load((v111 + 3053));
      if (v112)
      {
        v113 = *(v111 + 136);
        if (v113)
        {
          v114 = *(v113 + 56);
          if (v114)
          {
            std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v114, v111, 9);
          }
        }
      }
    }
  }
}

void sub_1B2C21744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (v40)
  {
    if (a29 < 0)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

void *geo::linear_map<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>,md::VKARWalkingFeatureEqualTo,std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>,std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>>::operator[](void *a1, id *a2)
{
  j = *a1;
  for (i = a1[1]; j != i; i = a1[1])
  {
    if ([*a2 isEqual:*j])
    {
      if (j != a1[1])
      {
        return j + 1;
      }

      break;
    }

    j += 3;
  }

  v6 = *a2;
  for (j = *a1; ; j += 3)
  {
    v7 = a1[1];
    if (j == v7)
    {
      break;
    }

    if ([v6 isEqual:*j])
    {
      v7 = a1[1];
      if (j != v7)
      {
        goto LABEL_28;
      }

      break;
    }
  }

  v8 = a1[2];
  if (v7 >= v8)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>>(v14);
    }

    v15 = (8 * ((v7 - *a1) >> 3));
    v16 = v6;
    v15[1] = 0;
    v15[2] = 0;
    *v15 = v16;
    v10 = 24 * v11 + 24;
    v17 = *a1;
    v18 = a1[1];
    v19 = v15 + *a1 - v18;
    if (*a1 != v18)
    {
      v20 = *a1;
      v21 = v19;
      do
      {
        v22 = *v20;
        *v20 = 0;
        *v21 = v22;
        *(v21 + 2) = *(v20 + 16);
        *(v20 + 8) = 0;
        *(v20 + 16) = 0;
        v20 += 24;
        v21 += 24;
      }

      while (v20 != v18);
      do
      {
        std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(v17);
        v17 += 24;
      }

      while (v17 != v18);
    }

    v23 = *a1;
    *a1 = v19;
    *(a1 + 1) = v10;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v9 = v6;
    v7[1] = 0;
    v7[2] = 0;
    *v7 = v9;
    v10 = (v7 + 3);
    a1[1] = v10;
  }

  a1[1] = v10;
  j = (v10 - 24);
LABEL_28:

  return j + 1;
}

void md::ARWalkingSupport::addLabelFeature(void *a1, void *a2)
{
  v4 = (*(**a1 + 264))(*a1);
  if (v4 == 25)
  {
    v5 = *a1;
    v6 = a1[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = a2[19];
    v7 = a2[20];
    if (v8 >= v7)
    {
      v16 = a2[18];
      v17 = v8 - v16;
      v18 = (v8 - v16) >> 4;
      v19 = v18 + 1;
      if ((v18 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v7 - v16;
      if (v20 >> 3 > v19)
      {
        v19 = v20 >> 3;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v21 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        v88 = v5;
        v22 = mdm::zone_mallocator::instance(v4);
        v23 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(v22, v21);
        v16 = a2[18];
        v17 = a2[19] - v16;
        v24 = v17 >> 4;
        v5 = v88;
      }

      else
      {
        v23 = 0;
        v24 = v18;
      }

      v46 = &v23[16 * v18];
      v47 = &v23[16 * v21];
      v48 = &v46[-16 * v24];
      *v46 = v5;
      v9 = v46 + 16;
      v49 = memcpy(v48, v16, v17);
      v50 = a2[18];
      a2[18] = v48;
      a2[19] = v9;
      a2[20] = v47;
      if (v50)
      {
        v51 = mdm::zone_mallocator::instance(v49);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(v51, v50);
      }
    }

    else
    {
      *v8 = v5;
      v9 = v8 + 16;
    }

    a2[19] = v9;
  }

  else
  {
    v10 = (*(**a1 + 264))(*a1);
    if (v10 == 24)
    {
      v11 = *a1;
      v12 = a1[1];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v14 = a2[11];
      v13 = a2[12];
      if (v14 >= v13)
      {
        v31 = a2[10];
        v32 = v14 - v31;
        v33 = (v14 - v31) >> 4;
        v34 = v33 + 1;
        if ((v33 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v35 = v13 - v31;
        if (v35 >> 3 > v34)
        {
          v34 = v35 >> 3;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v36 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v34;
        }

        if (v36)
        {
          v89 = v11;
          v37 = mdm::zone_mallocator::instance(v10);
          v38 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(v37, v36);
          v31 = a2[10];
          v32 = a2[11] - v31;
          v39 = v32 >> 4;
          v11 = v89;
        }

        else
        {
          v38 = 0;
          v39 = v33;
        }

        v61 = &v38[16 * v33];
        v62 = &v38[16 * v36];
        v63 = &v61[-16 * v39];
        *v61 = v11;
        v15 = v61 + 16;
        v64 = memcpy(v63, v31, v32);
        v65 = a2[10];
        a2[10] = v63;
        a2[11] = v15;
        a2[12] = v62;
        if (v65)
        {
          v66 = mdm::zone_mallocator::instance(v64);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(v66, v65);
        }
      }

      else
      {
        *v14 = v11;
        v15 = v14 + 16;
      }

      a2[11] = v15;
    }

    else
    {
      v25 = (*(**a1 + 264))(*a1);
      if (v25 == 26)
      {
        v26 = *a1;
        v27 = a1[1];
        if (v27)
        {
          atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
        }

        v29 = a2[15];
        v28 = a2[16];
        if (v29 >= v28)
        {
          v52 = a2[14];
          v53 = v29 - v52;
          v54 = (v29 - v52) >> 4;
          v55 = v54 + 1;
          if ((v54 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v56 = v28 - v52;
          if (v56 >> 3 > v55)
          {
            v55 = v56 >> 3;
          }

          if (v56 >= 0x7FFFFFFFFFFFFFF0)
          {
            v57 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v55;
          }

          if (v57)
          {
            v90 = v26;
            v58 = mdm::zone_mallocator::instance(v25);
            v59 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(v58, v57);
            v52 = a2[14];
            v53 = a2[15] - v52;
            v60 = v53 >> 4;
            v26 = v90;
          }

          else
          {
            v59 = 0;
            v60 = v54;
          }

          v76 = &v59[16 * v54];
          v77 = &v59[16 * v57];
          v78 = &v76[-16 * v60];
          *v76 = v26;
          v30 = v76 + 16;
          v79 = memcpy(v78, v52, v53);
          v80 = a2[14];
          a2[14] = v78;
          a2[15] = v30;
          a2[16] = v77;
          if (v80)
          {
            v81 = mdm::zone_mallocator::instance(v79);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(v81, v80);
          }
        }

        else
        {
          *v29 = v26;
          v30 = v29 + 16;
        }

        a2[15] = v30;
      }

      else
      {
        v40 = (*(**a1 + 264))(*a1);
        if (v40 == 27)
        {
          v41 = *a1;
          v42 = a1[1];
          if (v42)
          {
            atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
          }

          v44 = a2[23];
          v43 = a2[24];
          if (v44 >= v43)
          {
            v67 = a2[22];
            v68 = v44 - v67;
            v69 = (v44 - v67) >> 4;
            v70 = v69 + 1;
            if ((v69 + 1) >> 60)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v71 = v43 - v67;
            if (v71 >> 3 > v70)
            {
              v70 = v71 >> 3;
            }

            if (v71 >= 0x7FFFFFFFFFFFFFF0)
            {
              v72 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v72 = v70;
            }

            if (v72)
            {
              v91 = v41;
              v73 = mdm::zone_mallocator::instance(v40);
              v74 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(v73, v72);
              v67 = a2[22];
              v68 = a2[23] - v67;
              v75 = v68 >> 4;
              v41 = v91;
            }

            else
            {
              v74 = 0;
              v75 = v69;
            }

            v82 = &v74[16 * v69];
            v83 = &v74[16 * v72];
            v84 = &v82[-16 * v75];
            *v82 = v41;
            v45 = v82 + 16;
            v85 = memcpy(v84, v67, v68);
            v86 = a2[22];
            a2[22] = v84;
            a2[23] = v45;
            a2[24] = v83;
            if (v86)
            {
              v87 = mdm::zone_mallocator::instance(v85);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(v87, v86);
            }
          }

          else
          {
            *v44 = v41;
            v45 = v44 + 16;
          }

          a2[23] = v45;
        }
      }
    }
  }
}

void sub_1B2C21E74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingContinueLabelFeature> const,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *md::LabelIdentifier::to_string(std::string *retstr, unsigned int a2)
{
  if (a2)
  {
    return std::to_string(retstr, a2);
  }

  else
  {
    return std::string::basic_string[abi:nn200100]<0>(retstr, "UNKNOWN");
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(uint64_t a1, uint64_t a2)
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t gdc::Context::context<md::ARLogicContext>(void *a1)
{
  v1 = a1[1];
  if (!*&v1)
  {
    return 0;
  }

  v2 = vcnt_s8(v1);
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = 0x37F8C546A65FE3EELL;
    if (*&v1 <= 0x37F8C546A65FE3EEuLL)
    {
      v3 = 0x37F8C546A65FE3EEuLL % *&v1;
    }
  }

  else
  {
    v3 = (*&v1 - 1) & 0x37F8C546A65FE3EELL;
  }

  v4 = *(*a1 + 8 * v3);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == 0x37F8C546A65FE3EELL)
    {
      break;
    }

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

LABEL_16:
    result = 0;
    v5 = *v5;
    if (!v5)
    {
      return result;
    }
  }

  if (v5[2] != 0x37F8C546A65FE3EELL)
  {
    goto LABEL_16;
  }

  v8 = v5[5];
  if (*(v8 + 8) == 0x37F8C546A65FE3EELL)
  {
    return *(v8 + 32);
  }

  return 0;
}

void md::ARWalkingSupport::processSetFeatureRequest(double *a1, uint64_t a2)
{
  v210[9] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 112);
  v4 = *(*(*a1 + 424) + 336);
  v168 = &unk_1F2A3ED40;
  v169 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v178 = 0;
  v180 = 0;
  v179 = 0;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v186 = 0;
  v188 = 0;
  v187 = 0;
  *__n = 0u;
  v191 = 0u;
  v172 = 0u;
  v171 = 0u;
  v170 = 0u;
  v194 = 0u;
  v193 = 0u;
  v192 = 1065353216;
  v195 = 1065353216;
  v196 = 0;
  v197 = 0;
  v198 = 0;
  *&v199 = v3;
  *(&v199 + 1) = v4;
  v200 = atomic_fetch_add(&md::ARWalkingFeatureSet::nextVersion(void)::next, 1uLL) + 1;
  v145 = *(a2 + 24);
  v164[0] = md::LabelLayoutContext::geocentricEyePos(*(*a1 + 424));
  v164[1] = v5;
  v164[2] = v6;
  geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v168, *(a2 + 8));
  v7 = GEOGetVectorKitARWalkingSupportLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v200;
    v9 = *(&v199 + 1);
    v10 = *(a2 + 24);
    v11 = *(a2 + 8);
    v12 = [v11 features];
    v13 = [v12 count];
    v14 = *(a2 + 8);
    v15 = [v14 features];
    *buf = 134219010;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    *&buf[22] = 1024;
    *__p_8 = v10;
    *&__p_8[4] = 2048;
    *&__p_8[6] = v13;
    *&__p_8[14] = 2112;
    *&__p_8[16] = v15;
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Begin Preparing FeatureSet(version:%llu timestamp:%f) - force:%d features(%lu):%@", buf, 0x30u);
  }

  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = [v169 features];
  v149 = [obj countByEnumeratingWithState:&v159 objects:v167 count:16];
  if (v149)
  {
    v148 = *v160;
    v143 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v142 = 0x8400702uLL;
    do
    {
      for (i = 0; i != v149; ++i)
      {
        if (*v160 != v148)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v159 + 1) + 8 * i);
        v163 = v16;
        v158 = 0uLL;
        v17 = a1;
        for (j = *(a1 + 58); ; j += 3)
        {
          v19 = *(v17 + 59);
          if (j == v19)
          {
            j = *(v17 + 59);
            goto LABEL_14;
          }

          if ([v16 isEqual:{*j, v142}])
          {
            break;
          }

          v17 = a1;
        }

        v19 = *(a1 + 59);
LABEL_14:
        v20 = [v16 type];
        if (!v20)
        {
          v39 = v16;
          if (j == v19)
          {
            v154 = 0;
          }

          else
          {
            v40 = j[2];
            v154 = j[1];
            if (v40)
            {
              v153 = 0;
              atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
              goto LABEL_47;
            }
          }

          v40 = 0;
          v153 = 1;
LABEL_47:
          v151 = v40;
          v41 = v39;
          v157 = 0uLL;
          v156 = v41;
          if (v41)
          {
            [v41 coordinate];
            v42 = *&v166;
            v43 = vmulq_f64(v165, v143);
          }

          else
          {
            v165 = 0uLL;
            v43 = 0uLL;
            v42 = 0.0;
            *&v166 = 0;
          }

          v147 = v43.f64[1];
          v44 = __sincos_stret(v43.f64[0]);
          v45 = 6378137.0 / sqrt(v44.__sinval * v44.__sinval * -0.00669437999 + 1.0);
          v46 = (v45 + v42) * v44.__cosval;
          v47 = __sincos_stret(v147);
          v210[0] = v46 * v47.__cosval;
          v210[1] = v46 * v47.__sinval;
          v210[2] = (v42 + v45 * 0.99330562) * v44.__sinval;
          v48 = gm::Matrix<double,3,1>::distanceToPoint<int,void>(v164, v210);
          v49 = v48;
          v50 = a1[2];
          if (v154)
          {
            v51 = *(v154 + 816);
            v52 = (v48 <= v50) & (v51 ^ 1);
          }

          else
          {
            v51 = 0;
            v52 = 0;
          }

          v53 = v145;
          if (!v154)
          {
            v53 = 1;
          }

          v54 = v53 | v52;
          v55 = *(a1 + 9) & (v53 | v52) & (v48 <= v50);
          v56 = GEOGetVectorKitARWalkingSupportLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = *(a1 + 9);
            *buf = 134219776;
            *&buf[4] = v49;
            *&buf[12] = 1024;
            *&buf[14] = v57;
            *&buf[18] = 1024;
            *&buf[20] = v49 <= v50;
            *__p_8 = 1024;
            *&__p_8[2] = v51;
            *&__p_8[6] = 1024;
            *&__p_8[8] = v52;
            *&__p_8[12] = 1024;
            *&__p_8[14] = v54 & 1;
            *&__p_8[18] = 1024;
            *&__p_8[20] = v154 != 0;
            *&__p_8[24] = 1024;
            *&__p_8[26] = v55 & 1;
            _os_log_impl(&dword_1B2754000, v56, OS_LOG_TYPE_INFO, "Incoming Maneuver feature - distance:%f shouldUseHighPrecisionAltitude:%d featureWithinHighPrecisionThreshold:%d alreadyHasHighPrecisionAltitude:%d shouldRebuildExistingFeatureForUpdatedAltitude:%d shouldBuildNewFeature:%d hasExistingLabelFeature:%d shouldRequestHighPrecisionAltitude:%d", buf, 0x36u);
          }

          v58 = GEOGetVectorKitARWalkingSupportLog();
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_INFO);
          if (v54)
          {
            if (v59)
            {
              *buf = 138412290;
              *&buf[4] = v156;
              _os_log_impl(&dword_1B2754000, v58, OS_LOG_TYPE_INFO, "Building Maneuver LabelFeature for %@", buf, 0xCu);
            }

            operator new();
          }

          if (v59)
          {
            *buf = 138412290;
            *&buf[4] = v156;
            _os_log_impl(&dword_1B2754000, v58, OS_LOG_TYPE_INFO, "Reusing previous Maneuver LabelFeature for external feature %@", buf, 0xCu);
          }

          if (v151)
          {
            atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&v157 = v154;
          *(&v157 + 1) = v151;
          v60 = v156;
          v61 = v60;
          if (v156)
          {
            v62 = v60;
          }

          else
          {
            v62 = 0;
          }

          v63 = v62;
          v64 = *(v154 + 720);
          *(v154 + 720) = v61;

          if (v55)
          {
            v66 = *(a1 + 97);
            if (v156)
            {
              [v156 coordinate];
              v67 = *buf;
            }

            else
            {
              memset(buf, 0, sizeof(buf));
              v67 = 0uLL;
            }

            v209 = v67;
            md::HighPrecisionAltitudeRequestor::requestAltitude(&v208, v66, &v209);
            v68 = v208;
            if (v208)
            {
              v69 = GEOGetVectorKitARWalkingSupportLog();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v156;
                _os_log_impl(&dword_1B2754000, v69, OS_LOG_TYPE_INFO, "Requesting high precision altitude for Maneuver %@", buf, 0xCu);
              }

              *buf = &v157;
              v70 = std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__emplace_unique_key_args<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const&>,std::tuple<>>(&v193, v157);
              if (*(&v68 + 1))
              {
                atomic_fetch_add_explicit((*(&v68 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v71 = v70[5];
              *(v70 + 2) = v68;
              if (v71)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v71);
              }
            }

            if (*(&v68 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v68 + 1));
            }
          }

          if ((v153 & 1) == 0)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v151);
          }

          v24 = *(&v157 + 1);
          v25 = v157;
          if (v157)
          {
            v72 = v154 == v157;
          }

          else
          {
            v72 = 1;
          }

          v73 = !v72;
          if (*(&v157 + 1))
          {
            atomic_fetch_add_explicit((*(&v157 + 1) + 8), 1uLL, memory_order_relaxed);
            *&v158 = v25;
            *(&v158 + 1) = v24;
            if (*(&v157 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v157 + 1));
            }
          }

          else
          {
            v158 = v157;
          }

          if ((v153 & 1) == 0)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v151);
          }

          if (v25)
          {
            if (v73)
            {
              v75 = v172;
              if (v172 >= *(&v172 + 1))
              {
                v77 = (v172 - *(&v171 + 1)) >> 3;
                if ((v77 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v78 = (*(&v172 + 1) - *(&v171 + 1)) >> 2;
                if (v78 <= v77 + 1)
                {
                  v78 = v77 + 1;
                }

                if (*(&v172 + 1) - *(&v171 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
                {
                  v79 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v79 = v78;
                }

                *&__p_8[8] = &v173;
                if (v79)
                {
                  v80 = mdm::zone_mallocator::instance(v74);
                  v81 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeature *>(v80, v79);
                }

                else
                {
                  v81 = 0;
                }

                v83 = &v81[8 * v79];
                v82 = &v81[8 * v77];
                *v82 = v25;
                v76 = v82 + 8;
                v84 = &v82[-(v172 - *(&v171 + 1))];
                memcpy(v84, *(&v171 + 1), v172 - *(&v171 + 1));
                v85 = *(&v171 + 1);
                v86 = *(&v172 + 1);
                *(&v171 + 1) = v84;
                *&v172 = v76;
                *(&v172 + 1) = v83;
                *&buf[16] = v85;
                *__p_8 = v86;
                *&buf[8] = v85;
                *buf = v85;
                std::__split_buffer<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator> &>::~__split_buffer(buf);
              }

              else
              {
                *v172 = v25;
                v76 = (v75 + 8);
              }

              *&v172 = v76;
            }

LABEL_119:
            v87 = geo::linear_map<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>,md::VKARWalkingFeatureEqualTo,std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>,std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>>::operator[](&v170, &v163);
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v88 = v87[1];
            *v87 = v25;
            v87[1] = v24;
            if (v88)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v88);
            }

            md::ARWalkingSupport::addLabelFeature(&v158, &v168);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v24);
          }

          continue;
        }

        if (v20 != 1)
        {
          if (v20 != 2)
          {
            continue;
          }

          v155 = v16;
          v21 = GEOGetVectorKitARWalkingSupportLog();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
          if ((v145 & 1) != 0 || j == v19)
          {
            if (v22)
            {
              *buf = 138412290;
              *&buf[4] = v155;
              _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_INFO, "Building Continue LabelFeature for %@", buf, 0xCu);
            }

            operator new();
          }

          if (v22)
          {
            v23 = *j;
            *buf = 134218242;
            *&buf[4] = v23;
            *&buf[12] = 2112;
            *&buf[14] = v155;
            _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_INFO, "Reusing previous Continue LabelFeature for external feature (%p) %@", buf, 0x16u);
          }

          v25 = j[1];
          v24 = j[2];
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&v158 = v25;
          *(&v158 + 1) = v24;
          v26 = v155;
          v27 = v26;
          if (v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;
          v30 = *(v25 + 200);
          *(v25 + 200) = v27;
          goto LABEL_38;
        }

        v146 = v16;
        v31 = [v146 storeFronts];
        v32 = [v31 count] == 0;

        if (!v32)
        {
          v33 = GEOGetVectorKitARWalkingSupportLog();
          v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
          if ((v145 & 1) != 0 || j == v19)
          {
            if (v34)
            {
              *buf = 138412290;
              *&buf[4] = v146;
              _os_log_impl(&dword_1B2754000, v33, OS_LOG_TYPE_INFO, "Building Arrival LabelFeature for %@", buf, 0xCu);
            }

            if (*(a1 + 10) == 1)
            {
              operator new();
            }

            operator new();
          }

          if (v34)
          {
            v35 = *j;
            *buf = 134218242;
            *&buf[4] = v35;
            *&buf[12] = 2112;
            *&buf[14] = v146;
            _os_log_impl(&dword_1B2754000, v33, OS_LOG_TYPE_INFO, "Reusing previous Arrival LabelFeature for external feature (%p) %@", buf, 0x16u);
          }

          v25 = j[1];
          v24 = j[2];
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&v158 = v25;
          *(&v158 + 1) = v24;
          v36 = v146;
          v27 = v36;
          if (v36)
          {
            v37 = v36;
          }

          else
          {
            v37 = 0;
          }

          v38 = v37;
          v30 = *(v25 + 744);
          *(v25 + 744) = v27;
LABEL_38:

          goto LABEL_119;
        }

        v65 = GEOGetVectorKitARWalkingSupportLog();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          *&buf[4] = v146;
          *&buf[12] = 2080;
          *&buf[14] = "false";
          *&buf[22] = 2080;
          *__p_8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/ARWalkingSupport.mm";
          *&__p_8[8] = 1024;
          *&__p_8[10] = 332;
          _os_log_impl(&dword_1B2754000, v65, OS_LOG_TYPE_ERROR, "Arrival features should have at least 1 storefront - dropping %@: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
        }
      }

      v149 = [obj countByEnumeratingWithState:&v159 objects:v167 count:16];
    }

    while (v149);
  }

  v89 = GEOGetVectorKitARWalkingSupportLog();
  if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
  {
    v90 = v200;
    v91 = v169;
    v92 = [v91 features];
    v93 = [v92 count];
    *buf = 134219776;
    *&buf[4] = v90;
    *&buf[12] = 2048;
    *&buf[14] = v93;
    *&buf[22] = 2048;
    *__p_8 = 0xAAAAAAAAAAAAAAABLL * ((*(&v170 + 1) - v170) >> 3);
    *&__p_8[8] = 2048;
    *&__p_8[10] = (v183 - v182) >> 4;
    *&__p_8[18] = 2048;
    *&__p_8[20] = (v175 - v174) >> 4;
    *&__p_8[28] = 2048;
    v203 = (v179 - v178) >> 4;
    v204 = 2048;
    v205 = *(&v194 + 1);
    v206 = 2048;
    v207 = *(&v191 + 1);
    _os_log_impl(&dword_1B2754000, v89, OS_LOG_TYPE_INFO, "Done preparing FeatureSet(version:%llu) external:%lu internal:%lu (arrival:%lu maneuver:%lu continue:%lu pendingManeuvers:%lu pendingContinues:%lu)", buf, 0x52u);
  }

  v94 = a1;
  if ((a1[54] & 1) == 0)
  {
    v97 = a1 + 12;
LABEL_138:
    *&v209 = &unk_1F2A3ED40;
    *(&v209 + 1) = 0;
    goto LABEL_139;
  }

  v95 = GEOGetVectorKitARWalkingSupportLog();
  if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
  {
    if ((a1[54] & 1) == 0)
    {
      goto LABEL_212;
    }

    v96 = *(a1 + 53);
    *buf = 134217984;
    *&buf[4] = v96;
    _os_log_impl(&dword_1B2754000, v95, OS_LOG_TYPE_INFO, "Dropped PendingFeatureSet(version:%llu)", buf, 0xCu);
  }

  v94 = a1;
  v97 = a1 + 12;
  if ((a1[54] & 1) == 0)
  {
    goto LABEL_138;
  }

  geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v209, (a1 + 12));
  if (a1[54])
  {
    md::ARWalkingFeatureSet::operator=(v97, &v168);
    goto LABEL_209;
  }

LABEL_139:
  geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v97, &v168);
  v94[15] = 0.0;
  v94[16] = 0.0;
  v94[17] = 0.0;
  if (*(&v170 + 1) != v170)
  {
    std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__vallocate[abi:nn200100]((v94 + 15), 0xAAAAAAAAAAAAAAABLL * ((*(&v170 + 1) - v170) >> 3));
  }

  v94[18] = 0.0;
  v94[19] = 0.0;
  v94[20] = 0.0;
  *(v94 + 168) = v173;
  v98 = *(&v171 + 1);
  v99 = v172 - *(&v171 + 1);
  if (v172 != *(&v171 + 1))
  {
    std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((v94 + 18), v99 >> 3);
    v100 = *(v94 + 19);
    memmove(v100, v98, v99);
    *(v94 + 19) = &v100[v99];
  }

  v94[22] = 0.0;
  v94[23] = 0.0;
  v94[24] = 0.0;
  *(v94 + 200) = v177;
  v101 = v174;
  v102 = v175;
  if (v175 != v174)
  {
    std::vector<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((v94 + 22), (v175 - v174) >> 4);
    v103 = *(v94 + 23);
    do
    {
      *v103 = *v101;
      v104 = *(v101 + 1);
      v103[1] = v104;
      if (v104)
      {
        atomic_fetch_add_explicit((v104 + 8), 1uLL, memory_order_relaxed);
      }

      v101 += 16;
      v103 += 2;
    }

    while (v101 != v102);
    *(v94 + 23) = v103;
  }

  v94[26] = 0.0;
  v94[27] = 0.0;
  v94[28] = 0.0;
  *(v94 + 232) = v181;
  v105 = v178;
  v106 = v179;
  if (v179 != v178)
  {
    std::vector<std::shared_ptr<md::ARWalkingContinueLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingContinueLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((v94 + 26), (v179 - v178) >> 4);
    v107 = *(v94 + 27);
    do
    {
      *v107 = *v105;
      v108 = *(v105 + 1);
      v107[1] = v108;
      if (v108)
      {
        atomic_fetch_add_explicit((v108 + 8), 1uLL, memory_order_relaxed);
      }

      v105 += 16;
      v107 += 2;
    }

    while (v105 != v106);
    *(v94 + 27) = v107;
  }

  v94[30] = 0.0;
  v94[31] = 0.0;
  v94[32] = 0.0;
  *(v94 + 264) = v185;
  v109 = v182;
  v110 = v183;
  if (v183 != v182)
  {
    std::vector<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((v94 + 30), (v183 - v182) >> 4);
    v111 = *(v94 + 31);
    do
    {
      *v111 = *v109;
      v112 = *(v109 + 1);
      v111[1] = v112;
      if (v112)
      {
        atomic_fetch_add_explicit((v112 + 8), 1uLL, memory_order_relaxed);
      }

      v109 += 16;
      v111 += 2;
    }

    while (v109 != v110);
    *(v94 + 31) = v111;
  }

  v94[34] = 0.0;
  v94[35] = 0.0;
  v94[36] = 0.0;
  *(v94 + 296) = v189;
  v113 = v186;
  v114 = v187;
  if (v187 != v186)
  {
    std::vector<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((v94 + 34), (v187 - v186) >> 4);
    v115 = *(v94 + 35);
    do
    {
      *v115 = *v113;
      v116 = v113[1];
      v115[1] = v116;
      if (v116)
      {
        atomic_fetch_add_explicit((v116 + 8), 1uLL, memory_order_relaxed);
      }

      v113 += 2;
      v115 += 2;
    }

    while (v113 != v114);
    *(v94 + 35) = v115;
  }

  v117 = v94 + 38;
  *(v94 + 19) = 0u;
  *(v94 + 20) = 0u;
  *(v94 + 84) = v192;
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>((v94 + 38), __n[1]);
  v118 = v191;
  if (!v191)
  {
    goto LABEL_186;
  }

  do
  {
    v119 = v118[2];
    v120 = 0x9DDFEA08EB382D69 * ((8 * (v119 & 0x1FFFFFFF) + 8) ^ HIDWORD(v119));
    v121 = 0x9DDFEA08EB382D69 * (HIDWORD(v119) ^ (v120 >> 47) ^ v120);
    v122 = 0x9DDFEA08EB382D69 * (v121 ^ (v121 >> 47));
    v123 = v94[39];
    if (!*&v123)
    {
      goto LABEL_184;
    }

    v124 = vcnt_s8(v123);
    v124.i16[0] = vaddlv_u8(v124);
    if (v124.u32[0] > 1uLL)
    {
      v125 = 0x9DDFEA08EB382D69 * (v121 ^ (v121 >> 47));
      if (v122 >= *&v123)
      {
        v125 = v122 % *&v123;
      }
    }

    else
    {
      v125 = v122 & (*&v123 - 1);
    }

    v126 = *(*v117 + 8 * v125);
    if (!v126 || (v127 = *v126) == 0)
    {
LABEL_184:
      operator new();
    }

    while (1)
    {
      v128 = v127[1];
      if (v128 == v122)
      {
        break;
      }

      if (v124.u32[0] > 1uLL)
      {
        if (v128 >= *&v123)
        {
          v128 %= *&v123;
        }
      }

      else
      {
        v128 &= *&v123 - 1;
      }

      if (v128 != v125)
      {
        goto LABEL_184;
      }

LABEL_183:
      v127 = *v127;
      if (!v127)
      {
        goto LABEL_184;
      }
    }

    if (v127[2] != v119)
    {
      goto LABEL_183;
    }

    v118 = *v118;
    v94 = a1;
  }

  while (v118);
LABEL_186:
  v129 = v94 + 43;
  *(v94 + 43) = 0u;
  *(v94 + 45) = 0u;
  *(v94 + 94) = v195;
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>((v94 + 43), *(&v193 + 1));
  v130 = v194;
  if (!v194)
  {
    goto LABEL_205;
  }

  while (2)
  {
    v131 = v130[2];
    v132 = 0x9DDFEA08EB382D69 * ((8 * (v131 & 0x1FFFFFFF) + 8) ^ HIDWORD(v131));
    v133 = 0x9DDFEA08EB382D69 * (HIDWORD(v131) ^ (v132 >> 47) ^ v132);
    v134 = 0x9DDFEA08EB382D69 * (v133 ^ (v133 >> 47));
    v135 = v94[44];
    if (!*&v135)
    {
      goto LABEL_203;
    }

    v136 = vcnt_s8(v135);
    v136.i16[0] = vaddlv_u8(v136);
    if (v136.u32[0] > 1uLL)
    {
      v137 = 0x9DDFEA08EB382D69 * (v133 ^ (v133 >> 47));
      if (v134 >= *&v135)
      {
        v137 = v134 % *&v135;
      }
    }

    else
    {
      v137 = v134 & (*&v135 - 1);
    }

    v138 = *(*v129 + 8 * v137);
    if (!v138 || (v139 = *v138) == 0)
    {
LABEL_203:
      operator new();
    }

    while (2)
    {
      v140 = v139[1];
      if (v140 != v134)
      {
        if (v136.u32[0] > 1uLL)
        {
          if (v140 >= *&v135)
          {
            v140 %= *&v135;
          }
        }

        else
        {
          v140 &= *&v135 - 1;
        }

        if (v140 != v137)
        {
          goto LABEL_203;
        }

        goto LABEL_202;
      }

      if (v139[2] != v131)
      {
LABEL_202:
        v139 = *v139;
        if (!v139)
        {
          goto LABEL_203;
        }

        continue;
      }

      break;
    }

    v130 = *v130;
    v94 = a1;
    if (v130)
    {
      continue;
    }

    break;
  }

LABEL_205:
  v94[48] = 0.0;
  v94[49] = 0.0;
  v94[50] = 0.0;
  v141 = v197 - v196;
  if (v197 != v196)
  {
    if (!((v141 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v141 >> 3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(v94 + 51) = v199;
  *(v94 + 53) = v200;
  *(v94 + 432) = 1;
LABEL_209:
  md::ARWalkingSupport::updateFeatureSetState(v94, *(&v209 + 1), 5);
  if ((v94[54] & 1) == 0)
  {
LABEL_212:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  md::ARWalkingSupport::updateFeatureSetState(v94, *(v94 + 13), 2);
  *&v209 = &unk_1F2A3ED40;

  md::ARWalkingFeatureSet::~ARWalkingFeatureSet(&v168);
}

void sub_1B2C25038(_Unwind_Exception *a1)
{
  STACK[0x540] = &unk_1F2A3ED40;

  md::ARWalkingFeatureSet::~ARWalkingFeatureSet(&STACK[0x2F0]);
  _Unwind_Resume(a1);
}

void md::ARWalkingSupport::restyleFeatures(uint64_t *a1, void *a2)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    md::LabelFeatureStyler::restyleFeatures(*(*a1 + 296), a2);
    if (*a2 == a2[1])
    {
      return;
    }

    goto LABEL_22;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v4 = std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::reserve(&v25, 0xAAAAAAAAAAAAAAABLL * ((a1[59] - a1[58]) >> 3));
  v5 = a1[58];
  v6 = a1[59];
  if (v5 == v6)
  {
    v7 = v26;
  }

  else
  {
    v7 = v26;
    do
    {
      v8 = *(v5 + 8);
      if (v7 >= v27)
      {
        v9 = (v7 - v25) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v10 = (v27 - v25) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v27 - v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        v24[4] = v28;
        if (v11)
        {
          v12 = mdm::zone_mallocator::instance(v4);
          v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeature *>(v12, v11);
        }

        else
        {
          v13 = 0;
        }

        v15 = &v13[8 * v11];
        v14 = &v13[8 * v9];
        *v14 = v8;
        v7 = v14 + 8;
        v16 = &v14[-(v26 - v25)];
        memcpy(v16, v25, v26 - v25);
        v17 = v25;
        v18 = v27;
        v25 = v16;
        v26 = v7;
        v27 = v15;
        v24[2] = v17;
        v24[3] = v18;
        v24[0] = v17;
        v24[1] = v17;
        v4 = std::__split_buffer<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator> &>::~__split_buffer(v24);
      }

      else
      {
        *v7 = v8;
        v7 += 8;
      }

      v26 = v7;
      v5 += 24;
    }

    while (v5 != v6);
  }

  v19 = v25;
  md::LabelFeatureStyler::restyleFeatures(*(*a1 + 296), &v25);
  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v25);
  if (v19 != v7)
  {
LABEL_22:
    v20 = *a1;
    *(v20 + 3034) = 1;
    v21 = atomic_load((v20 + 3053));
    if (v21)
    {
      v22 = *(v20 + 136);
      if (v22)
      {
        v23 = *(v22 + 56);
        if (v23)
        {
          std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v23, v20, 9);
        }
      }
    }
  }
}

uint64_t md::ARWalkingFeatureSet::operator=(uint64_t a1, uint64_t a2)
{
  if (geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1, *(a2 + 8)) == a2)
  {
    goto LABEL_222;
  }

  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = v7 - v6;
  v9 = *(a1 + 40);
  if (v9 - v4 < (v7 - v6))
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    if (v4)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 24);
      if (v11 != v4)
      {
        do
        {
          v11 -= 24;
          std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(v11);
        }

        while (v11 != v4);
        v12 = *v5;
      }

      *(a1 + 32) = v4;
      operator delete(v12);
      v9 = 0;
      *v5 = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
    }

    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= v10)
      {
        v14 = v10;
      }

      if (v13 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v14;
      }

      std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__vallocate[abi:nn200100](a1 + 24, v15);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = *(a1 + 32);
  v17 = v16 - v4;
  if (v16 - v4 >= v8)
  {
    if (v6 != v7)
    {
      do
      {
        std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>::operator=[abi:nn200100](v4, v6);
        v6 += 24;
        v4 += 24;
      }

      while (v6 != v7);
      v16 = *(a1 + 32);
    }

    while (v16 != v4)
    {
      v16 -= 3;
      std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(v16);
    }

    *(a1 + 32) = v4;
  }

  else
  {
    if (v16 != v4)
    {
      v18 = v16 - v4;
      v19 = *(a2 + 24);
      do
      {
        std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>::operator=[abi:nn200100](v4, v19);
        v19 += 24;
        v4 += 24;
        v18 -= 24;
      }

      while (v18);
      v16 = *(a1 + 32);
    }

    *(a1 + 32) = std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>,std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>*,std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>*,std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>*>(&v17[v6], v7, v16);
  }

  v20 = *(a1 + 48);
  v22 = *(a2 + 48);
  v21 = *(a2 + 56);
  v23 = v21 - v22;
  if (*(a1 + 64) - v20 < (v21 - v22))
  {
    std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vdeallocate((a1 + 48));
    if ((v23 >> 3) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v24 = *(a1 + 64) - *(a1 + 48);
    v25 = v24 >> 2;
    if (v24 >> 2 <= (v23 >> 3))
    {
      v25 = v23 >> 3;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      v26 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 48), v26);
    v20 = *(a1 + 56);
    goto LABEL_41;
  }

  v27 = *(a1 + 56);
  v28 = v27 - v20;
  if (v27 - v20 >= v23)
  {
LABEL_41:
    if (v21 != v22)
    {
      memmove(v20, v22, v21 - v22);
    }

    v30 = &v20[v23];
    goto LABEL_44;
  }

  v29 = &v22[v28];
  if (v27 != v20)
  {
    memmove(*(a1 + 48), *(a2 + 48), v28);
    v27 = *(a1 + 56);
  }

  if (v21 != v29)
  {
    memmove(v27, v29, v21 - v29);
  }

  v30 = &v27[v21 - v29];
LABEL_44:
  *(a1 + 56) = v30;
  v32 = (a1 + 80);
  v31 = *(a1 + 80);
  v34 = *(a2 + 80);
  v33 = *(a2 + 88);
  v35 = v33 - v34;
  v36 = *(a1 + 96);
  if (v36 - v31 < (v33 - v34))
  {
    v37 = v35 >> 4;
    if (v31)
    {
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 80));
      v38 = *v32;
      v40 = mdm::zone_mallocator::instance(v39);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(v40, v38);
      v36 = 0;
      *v32 = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
    }

    if (v37 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v41 = v36 >> 3;
    if (v36 >> 3 <= v37)
    {
      v41 = v37;
    }

    if (v36 >= 0x7FFFFFFFFFFFFFF0)
    {
      v42 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = v41;
    }

    std::vector<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 80), v42);
    for (i = *(a1 + 88); v34 != v33; i += 2)
    {
      *i = *v34;
      v44 = *(v34 + 1);
      i[1] = v44;
      if (v44)
      {
        atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
      }

      v34 += 16;
    }

LABEL_63:
    *(a1 + 88) = i;
    goto LABEL_69;
  }

  v45 = *(a1 + 88) - v31;
  if (v45 < v35)
  {
    v46 = &v34[v45];
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 80), &v34[v45], v31);
    for (i = *(a1 + 88); v46 != v33; i += 2)
    {
      *i = *v46;
      v47 = *(v46 + 1);
      i[1] = v47;
      if (v47)
      {
        atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
      }

      v46 += 16;
    }

    goto LABEL_63;
  }

  v48 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 80), *(a2 + 88), v31);
  for (j = *(a1 + 88); j != v48; j -= 2)
  {
    v50 = *(j - 1);
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v50);
    }
  }

  *(a1 + 88) = v48;
LABEL_69:
  v52 = (a1 + 112);
  v51 = *(a1 + 112);
  v54 = *(a2 + 112);
  v53 = *(a2 + 120);
  v55 = v53 - v54;
  v56 = *(a1 + 128);
  if (v56 - v51 < (v53 - v54))
  {
    v57 = v55 >> 4;
    if (v51)
    {
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 112));
      v58 = *v52;
      v60 = mdm::zone_mallocator::instance(v59);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(v60, v58);
      v56 = 0;
      *v52 = 0;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
    }

    if (v57 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v61 = v56 >> 3;
    if (v56 >> 3 <= v57)
    {
      v61 = v57;
    }

    if (v56 >= 0x7FFFFFFFFFFFFFF0)
    {
      v62 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v62 = v61;
    }

    std::vector<std::shared_ptr<md::ARWalkingContinueLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingContinueLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 112), v62);
    for (k = *(a1 + 120); v54 != v53; k += 2)
    {
      *k = *v54;
      v64 = *(v54 + 1);
      k[1] = v64;
      if (v64)
      {
        atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
      }

      v54 += 16;
    }

LABEL_88:
    *(a1 + 120) = k;
    goto LABEL_94;
  }

  v65 = *(a1 + 120) - v51;
  if (v65 < v55)
  {
    v66 = &v54[v65];
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 112), &v54[v65], v51);
    for (k = *(a1 + 120); v66 != v53; k += 2)
    {
      *k = *v66;
      v67 = *(v66 + 1);
      k[1] = v67;
      if (v67)
      {
        atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
      }

      v66 += 16;
    }

    goto LABEL_88;
  }

  v68 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 112), *(a2 + 120), v51);
  for (m = *(a1 + 120); m != v68; m -= 2)
  {
    v70 = *(m - 1);
    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v70);
    }
  }

  *(a1 + 120) = v68;
LABEL_94:
  v72 = (a1 + 144);
  v71 = *(a1 + 144);
  v74 = *(a2 + 144);
  v73 = *(a2 + 152);
  v75 = v73 - v74;
  v76 = *(a1 + 160);
  if (v76 - v71 < (v73 - v74))
  {
    v77 = v75 >> 4;
    if (v71)
    {
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 144));
      v78 = *v72;
      v80 = mdm::zone_mallocator::instance(v79);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(v80, v78);
      v76 = 0;
      *v72 = 0;
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
    }

    if (v77 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v81 = v76 >> 3;
    if (v76 >> 3 <= v77)
    {
      v81 = v77;
    }

    if (v76 >= 0x7FFFFFFFFFFFFFF0)
    {
      v82 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v82 = v81;
    }

    std::vector<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 144), v82);
    for (n = *(a1 + 152); v74 != v73; n += 2)
    {
      *n = *v74;
      v84 = *(v74 + 1);
      n[1] = v84;
      if (v84)
      {
        atomic_fetch_add_explicit((v84 + 8), 1uLL, memory_order_relaxed);
      }

      v74 += 16;
    }

LABEL_113:
    *(a1 + 152) = n;
    goto LABEL_119;
  }

  v85 = *(a1 + 152) - v71;
  if (v85 < v75)
  {
    v86 = &v74[v85];
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 144), &v74[v85], v71);
    for (n = *(a1 + 152); v86 != v73; n += 2)
    {
      *n = *v86;
      v87 = *(v86 + 1);
      n[1] = v87;
      if (v87)
      {
        atomic_fetch_add_explicit((v87 + 8), 1uLL, memory_order_relaxed);
      }

      v86 += 16;
    }

    goto LABEL_113;
  }

  v88 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 144), *(a2 + 152), v71);
  for (ii = *(a1 + 152); ii != v88; ii -= 2)
  {
    v90 = *(ii - 1);
    if (v90)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v90);
    }
  }

  *(a1 + 152) = v88;
LABEL_119:
  v92 = (a1 + 176);
  v91 = *(a1 + 176);
  v94 = *(a2 + 176);
  v93 = *(a2 + 184);
  v95 = v93 - v94;
  v96 = *(a1 + 192);
  if (v96 - v91 >= (v93 - v94))
  {
    v105 = *(a1 + 184) - v91;
    if (v105 >= v95)
    {
      v108 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 176), *(a2 + 184), v91);
      for (jj = *(a1 + 184); jj != v108; jj -= 2)
      {
        v110 = *(jj - 1);
        if (v110)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v110);
        }
      }

      *(a1 + 184) = v108;
      goto LABEL_144;
    }

    v106 = &v94[v105];
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 176), &v94[v105], v91);
    for (kk = *(a1 + 184); v106 != v93; kk += 2)
    {
      *kk = *v106;
      v107 = *(v106 + 1);
      kk[1] = v107;
      if (v107)
      {
        atomic_fetch_add_explicit((v107 + 8), 1uLL, memory_order_relaxed);
      }

      v106 += 16;
    }
  }

  else
  {
    v97 = v95 >> 4;
    if (v91)
    {
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 176));
      v98 = *v92;
      v100 = mdm::zone_mallocator::instance(v99);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(v100, v98);
      v96 = 0;
      *v92 = 0;
      *(a1 + 184) = 0;
      *(a1 + 192) = 0;
    }

    if (v97 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v101 = v96 >> 3;
    if (v96 >> 3 <= v97)
    {
      v101 = v97;
    }

    if (v96 >= 0x7FFFFFFFFFFFFFF0)
    {
      v102 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v102 = v101;
    }

    std::vector<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 176), v102);
    for (kk = *(a1 + 184); v94 != v93; kk += 2)
    {
      *kk = *v94;
      v104 = *(v94 + 1);
      kk[1] = v104;
      if (v104)
      {
        atomic_fetch_add_explicit((v104 + 8), 1uLL, memory_order_relaxed);
      }

      v94 += 16;
    }
  }

  *(a1 + 184) = kk;
LABEL_144:
  *(a1 + 240) = *(a2 + 240);
  v111 = *(a2 + 224);
  v112 = *(a1 + 216);
  if (v112)
  {
    for (mm = 0; mm != v112; ++mm)
    {
      *(*(a1 + 208) + 8 * mm) = 0;
    }

    v114 = *(a1 + 224);
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    if (v114)
    {
      v115 = v111 == 0;
    }

    else
    {
      v115 = 1;
    }

    if (v115)
    {
      v116 = v114;
    }

    else
    {
      do
      {
        v118 = v111[2];
        v117 = v111[3];
        if (v117)
        {
          atomic_fetch_add_explicit((v117 + 8), 1uLL, memory_order_relaxed);
        }

        v119 = v114[3];
        v114[2] = v118;
        v114[3] = v117;
        if (v119)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v119);
        }

        if (v114 != v111)
        {
          *(v114 + 16) = *(v111 + 16);
          v120 = v111[6];
          v121 = v114[5];
          if (v121)
          {
            for (nn = 0; nn != v121; ++nn)
            {
              *(v114[4] + 8 * nn) = 0;
            }

            v123 = v114[6];
            v114[6] = 0;
            v114[7] = 0;
            if (v123)
            {
              v124 = v120 == 0;
            }

            else
            {
              v124 = 1;
            }

            if (v124)
            {
              v125 = v123;
            }

            else
            {
              do
              {
                *(v123 + 4) = *(v120 + 4);
                v127 = v120[3];
                v126 = v120[4];
                if (v126)
                {
                  atomic_fetch_add_explicit((v126 + 8), 1uLL, memory_order_relaxed);
                }

                v128 = v123[4];
                v123[3] = v127;
                v123[4] = v126;
                if (v128)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v128);
                }

                v125 = *v123;
                v129 = *(v123 + 4);
                v123[1] = v129;
                inserted = std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_prepare((v114 + 4), v129, v123 + 4);
                std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_perform(v114 + 4, v123, inserted);
                v120 = *v120;
                if (!v125)
                {
                  break;
                }

                v123 = v125;
              }

              while (v120);
            }

            std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v125);
          }

          if (v120)
          {
            operator new();
          }
        }

        v116 = *v114;
        std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__node_insert_multi(a1 + 208, v114);
        v111 = *v111;
        if (!v116)
        {
          break;
        }

        v114 = v116;
      }

      while (v111);
    }

    std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>>::__deallocate_node(v116);
  }

  if (v111)
  {
    operator new();
  }

  *(a1 + 280) = *(a2 + 280);
  v131 = *(a2 + 264);
  v132 = *(a1 + 256);
  if (v132)
  {
    for (i1 = 0; i1 != v132; ++i1)
    {
      *(*(a1 + 248) + 8 * i1) = 0;
    }

    v134 = *(a1 + 264);
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    if (v134)
    {
      v135 = v131 == 0;
    }

    else
    {
      v135 = 1;
    }

    if (v135)
    {
      v136 = v134;
    }

    else
    {
      do
      {
        v138 = v131[2];
        v137 = v131[3];
        if (v137)
        {
          atomic_fetch_add_explicit((v137 + 8), 1uLL, memory_order_relaxed);
        }

        v139 = v134[3];
        v134[2] = v138;
        v134[3] = v137;
        if (v139)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v139);
        }

        v141 = v131[4];
        v140 = v131[5];
        if (v140)
        {
          atomic_fetch_add_explicit((v140 + 8), 1uLL, memory_order_relaxed);
        }

        v142 = v134[5];
        v134[4] = v141;
        v134[5] = v140;
        if (v142)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v142);
        }

        v136 = *v134;
        std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__node_insert_multi(a1 + 248, v134);
        v131 = *v131;
        if (!v136)
        {
          break;
        }

        v134 = v136;
      }

      while (v131);
    }

    std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v136);
  }

  if (v131)
  {
    operator new();
  }

  if (a1 != a2)
  {
    v143 = *(a2 + 296) - *(a2 + 288);
    v144 = v143 >> 3;
    v145 = *(a1 + 288);
    v146 = *(a1 + 296);
    v147 = (v146 - v145) >> 3;
    if (v143 >> 3 <= v147)
    {
      if (v144 < v147)
      {
        v152 = v145 + v143;
        while (v146 != v152)
        {
          v153 = *(v146 - 8);
          v146 -= 8;
        }

        *(a1 + 296) = v152;
      }
    }

    else
    {
      v148 = v144 - v147;
      v149 = *(a1 + 304);
      if (v144 - v147 > (v149 - v146) >> 3)
      {
        if (!(v144 >> 61))
        {
          v150 = v149 - v145;
          if (v150 >> 2 > v144)
          {
            v144 = v150 >> 2;
          }

          if (v150 >= 0x7FFFFFFFFFFFFFF8)
          {
            v151 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v151 = v144;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v151);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(a1 + 296), 8 * v148);
      *(a1 + 296) = v146 + 8 * v148;
    }

    v154 = *(a2 + 288);
    v155 = *(a2 + 296);
    if (v154 != v155)
    {
      v156 = *(a1 + 288);
      do
      {
        v157 = *v154++;
        objc_storeStrong(v156++, v157);
      }

      while (v154 != v155);
    }
  }

LABEL_222:
  v158 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 312) = v158;
  return a1;
}

void sub_1B2C26868(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::pair<std::shared_ptr<md::ARWalkingContinueLabelFeature> const,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>::pair[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = (a1 + 16);
  *(a1 + 48) = *(a2 + 48);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1 + 16, *(a2 + 24));
  for (i = *(a2 + 32); i; i = *i)
  {
    v7 = *(i + 4);
    v8 = *(a1 + 24);
    if (!*&v8)
    {
      goto LABEL_20;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = *(i + 4);
      if (*&v8 <= v7)
      {
        v10 = v7 % v8.i32[0];
      }
    }

    else
    {
      v10 = (v8.i32[0] - 1) & v7;
    }

    v11 = *(*v5 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_20:
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
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_20;
      }

LABEL_19:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    if (*(v12 + 4) != v7)
    {
      goto LABEL_19;
    }
  }

  return a1;
}

void sub_1B2C26B68(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && *(v18 + 4) == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

char *std::vector<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[16 * a2];
  return result;
}

char *std::vector<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[16 * a2];
  return result;
}

char *std::vector<std::shared_ptr<md::ARWalkingContinueLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingContinueLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[16 * a2];
  return result;
}

char *std::vector<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[16 * a2];
  return result;
}

uint64_t std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return a1;
}

void *std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>,std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>*,std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>*,std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>*>(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      v8 = *(v5 + 8);
      v7 = *(v5 + 16);
      *a3 = v6;
      a3[1] = v8;
      a3[2] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v5 += 24;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__shared_ptr_emplace<md::ARWalkingContinueLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3CF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::ARWalkingManeuverLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::ARWalkingStorefrontLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3CB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::ARWalkingArrivalLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3C80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *a1, void *a2)
{
  if (a1)
  {
    a1 = a2[3];
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

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>>(v3, a2);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x20uLL, 0x10200404161829EuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *>(uint64_t a1, uint64_t a2)
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

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *>(v3, v2);
  }
}

void md::ARWalkingSupport::setShouldUse3DArrival(md::ARWalkingSupport *this, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 10) != a2)
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "Should use 3d arrival:%d", v5, 8u);
    }

    *(this + 10) = a2;
    md::ARWalkingSupport::setARWalkingFeatures(this, *(this + 56), 1);
  }
}

void md::ARWalkingSupport::setPerpendicularLayoutEnabled(md::ARWalkingSupport *this, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 11) != a2)
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "Should use perpendicular layout:%d", v5, 8u);
    }

    *(this + 11) = a2;
    md::ARWalkingSupport::setARWalkingFeatures(this, *(this + 56), 1);
  }
}

void sub_1B2C27988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v18 - 72);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C28C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C28E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<VKPolylineGroupOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E3D60;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKPolylineGroupOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E3D60;

  return a1;
}

uint64_t std::__shared_ptr_pointer<ggl::Device *,std::shared_ptr<ggl::Device>::__shared_ptr_default_delete<ggl::Device,ggl::Device>,std::allocator<ggl::Device>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::Device *,std::shared_ptr<ggl::Device>::__shared_ptr_default_delete<ggl::Device,ggl::Device>,std::allocator<ggl::Device>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VSLibraryBundleMTLData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FlyoverLibraryBundleMTLData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3DF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardLibraryBundleMTLData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3DB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::CommonLibraryMTLData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3D80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::MetalSurface>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::MetalSwapchain>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3ED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

double md::FlyoverTileDataRequester::resolveTile@<D0>(md::FlyoverTileDataRequester *this@<X0>, const geo::QuadTile *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 19);
  if (*(v5 + 712))
  {
    os_unfair_lock_lock((v5 + 632));
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
        if (v5 + 688 == geo::LRUPolicy<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>,geo::QuadTileHash>::get(v5 + 688, (v5 + 648), a3))
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

    os_unfair_lock_unlock((v5 + 632));
  }

  else
  {
    result = *(a2 + 4);
    *(a3 + 4) = result;
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 2);
    *(a3 + 24) = *(a2 + 24);
  }

  return result;
}

void md::FlyoverTileDataRequester::requestDataKeys(md::FlyoverTileDataRequester *this, const gdc::SelectionContext *a2, int a3)
{
  v4 = *(this + 12);
  v5 = v4 == 50 || v4 == 20;
  v6 = 8;
  if (v5)
  {
    v6 = 144;
  }

  v83 = *(this + v6);
  if (!v83)
  {
    return;
  }

  v8 = *(a2 + 1);
  v9 = (*(*v83 + 24))(v83);
  if ((v10 & 1) == 0)
  {
    return;
  }

  v79 = HIDWORD(v9);
  if (*(this + 32) == 1)
  {
    LODWORD(v9) = *(this + 7);
  }

  v11 = *(a2 + 8);
  if (*(this + 40) == 1)
  {
    LODWORD(v79) = *(this + 9);
  }

  v82 = v9;
  if ((a3 & 1) != 0 || *(a2 + 82) == 1)
  {
    v12 = 0x100000001;
  }

  else
  {
    v12 = *(this + 4) | 0x100000000;
  }

  v13 = *(v11 + 3);
  if (!v13)
  {
    return;
  }

  v85 = v8;
  v80 = *v11;
  do
  {
    v14 = (v13 + 2);
    v15 = *(v13 + 17);
    v16 = (*(v13 + 5) % (1 << v15) + (1 << v15)) % (1 << v15);
    v17 = *(v13 + 6) % (1 << v15) + (1 << v15);
    v106 = *(v13 + 16);
    v107 = v15;
    v108 = v16;
    v109 = v17 % (1 << v15);
    v110 = 0;
    v111 = 1;
    md::FlyoverSelectionContext::adjustTile(v100, *(a2 + 17), &v106, v83);
    if (v105 != 1)
    {
      goto LABEL_24;
    }

    v84 = v13;
    if (v104 == 2)
    {
      v18 = 4;
    }

    else
    {
      v18 = *(this + 12);
    }

    v19 = v100[1];
    v20 = v101;
    __p = v100[0];
    v21 = v102;
    v22 = v103;
    v23 = v107;
    v24 = (*(*v83 + 32))(v83, v18);
    if ((v24 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    v25 = v24;
    v26 = 0;
    if (v80)
    {
      v27 = v24;
      if (v24)
      {
        if (v24 >= v80)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          do
          {
            ++v26;
            v27 *= 2;
          }

          while (v27 < v80);
        }

        v28 = v80;
        if (v27 > v80)
        {
          do
          {
            --v26;
            v29 = v27 > 2 * v28;
            v28 *= 2;
          }

          while (v29);
        }
      }
    }

    if (v19)
    {
      v21 = 0;
      v30 = -v26 & ~(-v26 >> 31);
      if (v30 >= (v23 - v82))
      {
        LOBYTE(v30) = v23 - v82;
      }

      v31 = v30;
      if (v19 < v30)
      {
        v31 = v19;
      }

      v32 = v19 - v31;
      v20 = vshl_s32(v20, vneg_s32(vdup_n_s32(v31)));
      v33 = (v19 - v31);
      v22 = 1;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    v96[1] = v32;
    v97 = v20;
    v96[0] = __p;
    v98 = v21;
    v99 = v22;
    if (v82 > v33)
    {
      goto LABEL_23;
    }

    if (v79 < v33)
    {
      goto LABEL_23;
    }

    *(this + 16) = *(this + 15);
    v78 = v78 & 0xFFFFFFFFFF000000 | *(this + 22) | (*(this + 46) << 16);
    md::TileAdjustmentHelpers::adjustTileForSizeAndResourceType(v80, v24, v18, v83, v96, v78, this + 120);
    v34 = *(this + 15);
    v86 = *(this + 16);
    if (v34 == v86)
    {
      goto LABEL_23;
    }

    if (a3)
    {
      v35 = 0;
    }

    else
    {
      v35 = v25;
    }

    v87 = v35;
    do
    {
      (*(*this + 80))(v92, this, v34);
      v88 = v34;
      if (*(*(this + 19) + 712) != 1)
      {
        goto LABEL_88;
      }

      v36 = *(v34 + 1);
      v37 = *(v84 + 17);
      if (HIBYTE(v92[0]) >= v36 && HIBYTE(v92[0]) >= v37)
      {
        goto LABEL_88;
      }

      v39 = v36 <= v37 ? v14 : v34;
      v120 = *(v39 + 4);
      v119[0] = *v39;
      v121 = *(v39 + 2);
      v122 = *(v39 + 24);
      v40 = *(a2 + 20);
      if (!v40)
      {
        goto LABEL_88;
      }

      v41 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>>>::find<geo::QuadTile>(v40, v92);
      if (v41)
      {
        goto LABEL_87;
      }

      v42 = *(a2 + 20);
      v124 = 0;
      v125 = 0;
      LODWORD(v126) = 1065353216;
      *(&v112 + 4) = v93;
      LOWORD(v112) = v92[0];
      v43 = v94;
      v113 = v94;
      v114[0] = v95;
      v123[1] = 0;
      v123[0] = 0;
      v115 = 0uLL;
      v116 = 0;
      v117 = 0;
      v118 = 1065353216;
      if (v95 == 1)
      {
        v44 = LOBYTE(v92[0]) - 0x61C8864680B583EBLL;
        v45 = (v93 - 0x61C8864680B583EBLL + ((((v44 << 6) - 0x61C8864680B583EBLL + (v44 >> 2) + HIBYTE(v92[0])) ^ v44) << 6) + ((((v44 << 6) - 0x61C8864680B583EBLL + (v44 >> 2) + HIBYTE(v92[0])) ^ v44) >> 2)) ^ ((v44 << 6) - 0x61C8864680B583EBLL + (v44 >> 2) + HIBYTE(v92[0])) ^ v44;
        v43 = (SHIDWORD(v93) - 0x61C8864680B583EBLL + (v45 << 6) + (v45 >> 2)) ^ v45;
        v113 = v43;
        v114[0] = 0;
      }

      v46 = v42[1];
      if (!*&v46)
      {
        goto LABEL_86;
      }

      v47 = vcnt_s8(v46);
      v47.i16[0] = vaddlv_u8(v47);
      v48 = v47.u32[0];
      if (v47.u32[0] > 1uLL)
      {
        v49 = v43;
        if (v43 >= *&v46)
        {
          v49 = v43 % *&v46;
        }
      }

      else
      {
        v49 = (*&v46 - 1) & v43;
      }

      v50 = *(*v42 + 8 * v49);
      if (!v50 || (__pa = v49, (v41 = *v50) == 0))
      {
LABEL_86:
        operator new();
      }

      v51 = v43;
      while (1)
      {
        v52 = *(v41 + 1);
        if (v52 == v43)
        {
          break;
        }

        if (v48 > 1)
        {
          if (v52 >= *&v46)
          {
            v52 %= *&v46;
          }
        }

        else
        {
          v52 &= *&v46 - 1;
        }

        if (v52 != __pa)
        {
          goto LABEL_86;
        }

LABEL_81:
        v41 = *v41;
        if (!v41)
        {
          goto LABEL_86;
        }
      }

      if (v41[40] == 1)
      {
        geo::QuadTile::computeHash(v41 + 16);
        v41[40] = 0;
        v53 = *(v41 + 4);
        if (v114[0])
        {
          v54 = (BYTE1(v112) - 0x61C8864680B583EBLL + ((v112 - 0x61C8864680B583EBLL) << 6) + ((v112 - 0x61C8864680B583EBLL) >> 2)) ^ (v112 - 0x61C8864680B583EBLL);
          v55 = (SDWORD1(v112) - 0x61C8864680B583EBLL + (v54 << 6) + (v54 >> 2)) ^ v54;
          v51 = ((SDWORD2(v112) - 0x61C8864680B583EBLL + (v55 << 6) + (v55 >> 2)) ^ v55);
          v113 = v51;
          v114[0] = 0;
        }

        else
        {
          v51 = v113;
        }
      }

      else
      {
        v53 = *(v41 + 4);
      }

      if (v53 != v51 || __PAIR64__(v41[17], v41[16]) != __PAIR64__(BYTE1(v112), v112) || *(v41 + 20) != *(&v112 + 4))
      {
        goto LABEL_81;
      }

      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v115);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v123);
LABEL_87:
      std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(v41 + 6, v119);
LABEL_88:
      if (*(this + 13))
      {
        v56 = *(this + 12);
        if (v56)
        {
          do
          {
            v57 = *v56;
            operator delete(v56);
            v56 = v57;
          }

          while (v57);
        }

        *(this + 12) = 0;
        v58 = *(this + 11);
        if (v58)
        {
          for (i = 0; i != v58; ++i)
          {
            *(*(this + 10) + 8 * i) = 0;
          }
        }

        *(this + 13) = 0;
      }

      v136 = 0;
      v137 = 0;
      v138 = 0;
      md::FlyoverMetaData::tileCacheLookup(&v112, *(a2 + 17), v92, 0, 0);
      if (v117)
      {
        v60 = *(&v115 + 1);
      }

      else
      {
        v60 = 0;
      }

      v61 = md::FlyoverMetaData::tileType(*(a2 + 17), v92, 0);
      if ((v61 & 0xFF00) != 0)
      {
        v62 = v61;
      }

      else
      {
        v62 = 2;
      }

      md::FlyoverMetaData::heightIndices(***(a2 + 17), v92, &v136);
      v64 = v136;
      v63 = v137;
      __pb = v136;
      if (v136 == v137)
      {
        *(&v112 + 4) = v93;
        LOWORD(v112) = v92[0];
        v113 = v94;
        v114[0] = v95;
        LOBYTE(v115) = v62;
        *(&v115 + 4) = v60 & 0xFFFFFFFFFFLL;
        HIDWORD(v115) = 0;
        if (v62)
        {
          std::__hash_table<md::FlyoverOctile,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,std::allocator<md::FlyoverOctile>>::__emplace_unique_key_args<md::FlyoverOctile,md::FlyoverOctile const&>(this + 10, &v112);
        }
      }

      else
      {
        v65 = v60 & 0xFFFFFFFFFFLL;
        do
        {
          v66 = *v64;
          v67 = md::FlyoverMetaData::tileType(*(a2 + 17), v92, v66);
          v68 = v67;
          if (v67 >= 0x100u)
          {
            md::FlyoverMetaData::elevationBoundsForHeightTile(v135, ***(a2 + 17), v92, v66);
            if (v135[16] == 1)
            {
              v69 = a2 + 168;
              if (*(a2 + 82) != 1)
              {
                v69 = *(a2 + 18);
              }

              if (gdc::ToCoordinateSystem(*v69))
              {
                v129 = v93;
                v128[0] = v92[0];
                v130 = v94;
                v131 = v95;
                v132 = v68;
                v133 = v65;
                v134 = v66;
                md::FlyoverSelectionContext::getTileBound(v123, a2, v128, v135);
                if (v127[24] == 1)
                {
                  geo::RigidTransform<double,double>::inverse(v119, v123);
                  geo::Frustum<double>::transformed(&v112, (v69 + 984), v119);
                  v70 = 0;
                  while (1)
                  {
                    v71 = 0;
                    v72 = *(&v112 + v70 + 16);
                    v139 = *(&v112 + v70);
                    v140 = v72;
                    v73 = v127;
                    do
                    {
                      v74 = v73 - 24;
                      if (*(&v139 + v71) >= 0.0)
                      {
                        v74 = v73;
                      }

                      *&v141[8 * v71++] = *v74;
                      v73 += 8;
                    }

                    while (v71 != 3);
                    v75 = 0;
                    v76 = 0.0;
                    do
                    {
                      v76 = v76 + *(&v112 + v70 + v75) * *&v141[v75];
                      v75 += 8;
                    }

                    while (v75 != 24);
                    if (*&v114[v70] + v76 < 0.0)
                    {
                      break;
                    }

                    v70 += 32;
                    if (v70 == 192)
                    {
                      goto LABEL_121;
                    }
                  }
                }

                else
                {
LABEL_121:
                  md::FlyoverSelectionContext::selectBestFitOctiles(a2, v128, this + 10, v87);
                }
              }

              else
              {
                *(&v112 + 4) = v93;
                LOWORD(v112) = v92[0];
                v113 = v94;
                v114[0] = v95;
                LOBYTE(v115) = v68;
                *(&v115 + 4) = v65;
                HIDWORD(v115) = v66;
                if (v68)
                {
                  std::__hash_table<md::FlyoverOctile,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,std::allocator<md::FlyoverOctile>>::__emplace_unique_key_args<md::FlyoverOctile,md::FlyoverOctile const&>(this + 10, &v112);
                }
              }
            }
          }

          ++v64;
        }

        while (v64 != v63);
      }

      if (__pb)
      {
        operator delete(__pb);
      }

      for (j = *(this + 12); j; j = *j)
      {
        md::FlyoverCommon::encodeFlyoverKey(&v112, j + 16, 0, v12);
        gdc::LayerDataCollector::addDataKey(v85, &v112, v14);
        if (geo::codec::VectorTile::hasComputedJunctions(*(this + 20)))
        {
          md::FlyoverCommon::encodeFlyoverKey(v123, j + 16, 1u, v12);
          gdc::LayerDataCollector::addDataKey(v85, v123, v14);
          if (v124 != v126)
          {
            free(v124);
          }
        }

        if (v113 != v115)
        {
          free(v113);
        }
      }

      v34 = (v88 + 32);
    }

    while ((v88 + 32) != v86);
LABEL_23:
    v13 = v84;
LABEL_24:
    v13 = *v13;
  }

  while (v13);
}

void sub_1B2C2A9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void md::FlyoverTileDataRequester::~FlyoverTileDataRequester(md::FlyoverTileDataRequester *this)
{
  *this = &unk_1F29E3F08;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 80);
  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E3F08;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 80);
  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);
}

uint64_t std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void non-virtual thunk toggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E40B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::CommonMesh::Pos2Mesh::~Pos2Mesh(ggl::CommonMesh::Pos2Mesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::CommonMesh::Pos2Mesh::~Pos2Mesh(ggl::CommonMesh::Pos2Mesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::CommonMesh::BufferPos2>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

ggl::CommonMesh::Pos2Mesh *ggl::CommonMesh::Pos2Mesh::Pos2Mesh(ggl::CommonMesh::Pos2Mesh *this, const char *a2)
{
  ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::typedReflection();
  *(this + 1) = a2;
  ggl::RenderDataHolder::RenderDataHolder(this + 16);
  *(this + 7) = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::typedReflection(void)::r;
  *(this + 8) = 0;
  v4 = this + 64;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 15) = 0;
  *(this + 17) = 0;
  *(this + 14) = this + 120;
  *this = &unk_1F29E4070;
  *(this + 2) = &unk_1F29E4090;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::resize((this + 64), qword_1ED66A6B0);
  *this = &unk_1F29E3F70;
  *(this + 2) = &unk_1F29E3F90;
  if (!a2)
  {
    a2 = "/VertexData";
  }

  v6 = ggl::zone_mallocator::instance(v5);
  v7 = pthread_rwlock_rdlock((v6 + 32));
  if (v7)
  {
    geo::read_write_lock::logFailure(v7, "read lock", v8);
  }

  v9 = malloc_type_zone_malloc(*v6, 0x100uLL, 0x1081040D98108EAuLL);
  atomic_fetch_add((v6 + 24), 1u);
  geo::read_write_lock::unlock((v6 + 32));
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_1F29E40B0;
  v10 = ggl::VertexData::VertexData((v9 + 4), a2, &ggl::CommonMesh::bufferPos2Reflection, 0, 6, 0);
  v9[4] = &unk_1F2A5BD40;
  v9[29] = &unk_1F2A5BD60;
  *&v11 = v10;
  *(&v11 + 1) = v9;
  v12 = *(*v4 + 8);
  **v4 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  return this;
}

void std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData> const*,std::shared_ptr<ggl::VertexData> const*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__vdeallocate(a1);
    v9 = a1[2] - *a1;
    v10 = v9 >> 3;
    if (v9 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__vallocate[abi:nn200100](a1, v11);
    for (i = a1[1]; v6 != a3; i += 2)
    {
      v13 = v6[1];
      *i = *v6;
      i[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v6 += 2;
    }

LABEL_17:
    a1[1] = i;
    return;
  }

  v14 = a1[1] - v8;
  if (a4 > v14 >> 4)
  {
    v15 = (a2 + v14);
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(a2, (a2 + v14), v8);
    for (i = a1[1]; v15 != a3; i += 2)
    {
      v16 = v15[1];
      *i = *v15;
      i[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v15 += 2;
    }

    goto LABEL_17;
  }

  v17 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(a2, a3, v8);
  for (j = a1[1]; j != v17; j -= 2)
  {
    v19 = *(j - 1);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }
  }

  a1[1] = v17;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F2028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::CommonMesh::Pos4Mesh::~Pos4Mesh(ggl::CommonMesh::Pos4Mesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::CommonMesh::Pos4Mesh::~Pos4Mesh(ggl::CommonMesh::Pos4Mesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::CommonMesh::BufferPos4>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void *ggl::CommonMesh::Pos4Mesh::Pos4Mesh(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::typedReflection();
  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = a1 + 15;
  *a1 = &unk_1F29E40E8;
  a1[2] = &unk_1F29E4108;
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

  *a1 = &unk_1F29E3FB0;
  a1[2] = &unk_1F29E3FD0;
  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::CommonMesh::BufferPos2UV>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2UV>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2UV>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2UV>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E4168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::CommonMesh::Pos2UVMesh::~Pos2UVMesh(ggl::CommonMesh::Pos2UVMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void non-virtual thunk toggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::CommonMesh::BufferPos4UV>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4UV>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::CommonMesh::Pos4UVMesh::~Pos4UVMesh(ggl::CommonMesh::Pos4UVMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::CommonMesh::Pos4UVMesh::~Pos4UVMesh(ggl::CommonMesh::Pos4UVMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void *ggl::CommonMesh::Pos4UVMesh::Pos4UVMesh(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::typedReflection();
  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = a1 + 15;
  *a1 = &unk_1F29E41A0;
  a1[2] = &unk_1F29E41C0;
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

  *a1 = &unk_1F29E4030;
  a1[2] = &unk_1F29E4050;
  return a1;
}

BOOL edgeRejectsConvexHull(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  for (i = 0; i != 3; ++i)
  {
    v12[0].f64[i] = *(a1 + i * 8) - *(a2 + i * 8);
  }

  v4 = *a3;
  if (v4 < 1)
  {
    return 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = vextq_s8(v12[0], v12[0], 8uLL);
    v8 = a3 + 2;
    do
    {
      for (j = 0; j != 6; j += 2)
      {
        v12[0].f64[j / 2] = *&v8[j] - *(a1 + j * 4);
      }

      v10 = vmulq_f64(v12[0], v7);
      if ((vmovn_s64(vcgtq_f64(v10, vdupq_laneq_s64(v10, 1))).u8[0] & 1) == 0)
      {
        break;
      }

      ++v5;
      v8 += 6;
      v6 = v5 >= v4;
    }

    while (v5 != v4);
  }

  return v6;
}

void md::Logic<md::CollectRenderablesLogic<(md::MapDataType)33,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)33>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)33>>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void cleanup(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  v6 = gdc::ServiceLocator::resolve<md::VKMRenderResourcesStore>(a1, a2);
  v7 = a4;
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::BaseMapTileHandle>(a3);
  v9 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v8, a4, HIWORD(a4));
  if (v9 == v8[5])
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v8[7] + ((((v9 - v8[4]) >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((2 * (v9 - v8[4])) & 0x1F8);
  }

  v11 = ecs2::BasicRegistry<void>::storage<md::ls::RegisterHandle>(a3);
  v12 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v11, a4, HIWORD(a4));
  if (v12 == v11[5])
  {
    v13 = 0;
  }

  else
  {
    v13 = (*(v11[7] + ((((v12 - v11[4]) >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((2 * (v12 - v11[4])) & 0x1F8));
  }

  v14 = ecs2::BasicRegistry<void>::get_if<md::ls::AssociationTileHandle>(a3, a4);
  if (v14)
  {
    v15 = v14;
    v129 = v10;
    v16 = v13;
    AssociationItemStorage = md::VKMRenderResourcesStore::getAssociationItemStorage(v6, *v14, 0);
    v18 = AssociationItemStorage[1];
    v19 = AssociationItemStorage[2];
    while (v18 != v19)
    {
      v20 = *v18++;
      v10 = v10 & 0xFFFFFFFF00000000 | v20;
      ecs2::BasicRegistry<void>::add<md::ls::RenderItemPendingDeletion>(a3, v10);
    }

    v21 = AssociationItemStorage[4];
    v22 = AssociationItemStorage[5];
    if (v21 != v22)
    {
      do
      {
        v23 = *v21++;
        v10 = v10 & 0xFFFFFFFF00000000 | v23;
        ecs2::BasicRegistry<void>::add<md::ls::PendingDeletion>(a3, v10);
      }

      while (v21 != v22);
      v21 = AssociationItemStorage[4];
    }

    AssociationItemStorage[2] = AssociationItemStorage[1];
    AssociationItemStorage[5] = v21;
    ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::erase(v6 + 1716, v15);
    util::id_pool<geo::handle<md::AssociationItem>>::push((v6 + 1736), *v15);
    md::VKMRenderResourcesStore::clearRenderItemGroup(v6, v15, 1);
    v13 = v16;
    v7 = a4;
    v10 = v129;
  }

  v24 = ecs2::BasicRegistry<void>::storage<md::ls::TileViewConstantDataHandle>(a3);
  v25 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v24, a4, HIWORD(a4));
  if (v25 != v24[5])
  {
    v26 = v25 - v24[4];
    v27 = *(v24[7] + (((v26 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v27)
    {
      v28 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 851, *(v27 + 8 * (v26 >> 2)));
      if (v28 != v6[856])
      {
        v29 = (*(v6[858] + ((((v28 - v6[855]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v28 - v6[855]) >> 3) & 0x3F));
        v30 = v29[1];
        if (!v30 || (v31 = v30 - 1, (v29[1] = v31) == 0))
        {
          *v29 = 0;
        }
      }
    }
  }

  v32 = ecs2::BasicRegistry<void>::storage<md::ls::TileTransformConstantDataHandle>(a3);
  v33 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v32, a4, HIWORD(a4));
  if (v33 != v32[5])
  {
    v34 = v33 - v32[4];
    v35 = *(v32[7] + (((v34 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v35)
    {
      v36 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 825, *(v35 + 8 * (v34 >> 2)));
      if (v36 != v6[830])
      {
        v37 = (*(v6[832] + ((((v36 - v6[829]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v36 - v6[829]) >> 3) & 0x3F));
        v38 = v37[1];
        if (!v38 || (v39 = v38 - 1, (v37[1] = v39) == 0))
        {
          *v37 = 0;
        }
      }
    }
  }

  v40 = ecs2::BasicRegistry<void>::get_if<md::ls::AssociationTileHandle>(a3, v7);
  if (v40)
  {
    v41 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 1716, *v40);
    if (v41 != v6[1721])
    {
      v42 = (*(v6[1723] + ((((v41 - v6[1720]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v41 - v6[1720]) >> 3) & 0x3F));
      v43 = v42[1];
      if (!v43 || (v44 = v43 - 1, (v42[1] = v44) == 0))
      {
        *v42 = 0;
      }
    }
  }

  v45 = ecs2::BasicRegistry<void>::storage<md::ls::TileShadowConstantDataHandle>(a3);
  v46 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v45, a4, HIWORD(a4));
  if (v46 != v45[5])
  {
    v47 = v46 - v45[4];
    v48 = *(v45[7] + (((v47 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v48)
    {
      md::VKMRenderResourcesStore::_disconnect<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>>(v6, *(v48 + 8 * (v47 >> 2)));
    }
  }

  v49 = ecs2::BasicRegistry<void>::storage<md::ls::TilePrepassShadowConstantDataHandle>(a3);
  v50 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v49, a4, HIWORD(a4));
  if (v50 != v49[5])
  {
    v51 = v50 - v49[4];
    v52 = *(v49[7] + (((v51 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v52)
    {
      md::VKMRenderResourcesStore::_disconnect<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>>(v6, *(v52 + 8 * (v51 >> 2)));
    }
  }

  v53 = ecs2::BasicRegistry<void>::storage<md::ls::TilePrepassConstantDataHandle>(a3);
  v54 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v53, a4, HIWORD(a4));
  if (v54 != v53[5])
  {
    v55 = v54 - v53[4];
    v56 = *(v53[7] + (((v55 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v56)
    {
      v57 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 877, *(v56 + 8 * (v55 >> 2)));
      if (v57 != v6[882])
      {
        v58 = (*(v6[884] + ((((v57 - v6[881]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v57 - v6[881]) >> 3) & 0x3F));
        v59 = v58[1];
        if (!v59 || (v60 = v59 - 1, (v58[1] = v60) == 0))
        {
          *v58 = 0;
        }
      }
    }
  }

  v61 = ecs2::BasicRegistry<void>::storage<md::ls::TileClippingConstantDataHandle>(a3);
  v62 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v61, a4, HIWORD(a4));
  if (v62 != v61[5])
  {
    v63 = v62 - v61[4];
    v64 = *(v61[7] + (((v63 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v64)
    {
      v65 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 903, *(v64 + 8 * (v63 >> 2)));
      if (v65 != v6[908])
      {
        v66 = (*(v6[910] + ((((v65 - v6[907]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v65 - v6[907]) >> 3) & 0x3F));
        v67 = v66[1];
        if (!v67 || (v68 = v67 - 1, (v66[1] = v68) == 0))
        {
          *v66 = 0;
        }
      }
    }
  }

  v69 = ecs2::BasicRegistry<void>::storage<md::ls::TileStyleCameraConstantDataHandle>(a3);
  v70 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v69, a4, HIWORD(a4));
  if (v70 != v69[5])
  {
    v71 = v70 - v69[4];
    v72 = *(v69[7] + (((v71 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v72)
    {
      v73 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 1171, *(v72 + 8 * (v71 >> 2)));
      if (v73 != v6[1176])
      {
        v74 = (*(v6[1178] + ((((v73 - v6[1175]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v73 - v6[1175]) >> 3) & 0x3F));
        v75 = v74[1];
        if (!v75 || (v76 = v75 - 1, (v74[1] = v76) == 0))
        {
          *v74 = 0;
        }
      }
    }
  }

  v77 = ecs2::BasicRegistry<void>::storage<md::ls::TileStyleDataKeyHandle>(a3);
  v78 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v77, a4, HIWORD(a4));
  if (v78 != v77[5])
  {
    v79 = v78 - v77[4];
    v80 = *(v77[7] + (((v79 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v80)
    {
      v81 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 177, *(v80 + 8 * (v79 >> 2)));
      if (v81 != v6[182])
      {
        v82 = (*(v6[184] + ((((v81 - v6[181]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v81 - v6[181]) >> 3) & 0x3F));
        v83 = v82[1];
        if (!v83 || (v84 = v83 - 1, (v82[1] = v84) == 0))
        {
          *v82 = 0;
        }
      }
    }
  }

  v85 = ecs2::BasicRegistry<void>::storage<md::ls::TileMatrix>(a3);
  v86 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v85, a4, HIWORD(a4));
  if (v86 != v85[5])
  {
    v87 = v86 - v85[4];
    v88 = *(v85[7] + (((v87 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v88)
    {
      v89 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 1586, *(v88 + 8 * (v87 >> 2)));
      if (v89 != v6[1591])
      {
        v90 = (*(v6[1593] + ((((v89 - v6[1590]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v89 - v6[1590]) >> 3) & 0x3F));
        v91 = v90[1];
        if (!v91 || (v92 = v91 - 1, (v90[1] = v92) == 0))
        {
          *v90 = 0;
        }
      }
    }
  }

  v93 = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableDataHandle>(a3);
  v94 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v93, a4, HIWORD(a4));
  if (v94 != v93[5])
  {
    v95 = v94 - v93[4];
    v96 = *(v93[7] + (((v95 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v96)
    {
      v97 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 1612, *(v96 + 8 * (v95 >> 2)));
      if (v97 != v6[1617])
      {
        v98 = (*(v6[1619] + ((((v97 - v6[1616]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v97 - v6[1616]) >> 3) & 0x3F));
        v99 = v98[1];
        if (!v99 || (v100 = v99 - 1, (v98[1] = v100) == 0))
        {
          *v98 = 0;
        }
      }
    }
  }

  if (v10)
  {
    v101 = *v10;
    v130 = v101;
    v102 = v101 >> 6;
    v103 = v6[1691];
    if (v102 < (v6[1692] - v103) >> 3)
    {
      v104 = *(v103 + 8 * v102);
      if (v104)
      {
        if (*(v104 + 16 * (v101 & 0x3F)) == HIDWORD(v101))
        {
          ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::erase(v6 + 1690, &v130);
          util::id_pool<geo::handle<md::AssociationItem>>::push((v6 + 1710), v101);
        }
      }
    }
  }

  if (v13)
  {
    v105 = *v13;
    v106 = *v13 >> 6;
    v107 = v6[1665];
    if (v106 < (v6[1666] - v107) >> 3)
    {
      v108 = *(v107 + 8 * v106);
      if (v108)
      {
        v109 = *v13 & 0x3FLL;
        if (*(v108 + 16 * v109) == HIDWORD(v105))
        {
          v110 = *(v108 + 16 * v109 + 8);
          v111 = v110 & 0x3F;
          v112 = v6[1671];
          v113 = (v110 >> 3) & 0x1FFFFFFFFFFFFFF8;
          v114 = *(v112 + v113) + 24 * v111;
          v115 = ((v6[1669] - v6[1668]) >> 3) - 1;
          v116 = *(v112 + ((v115 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v115 & 0x3F);
          v117 = *v114;
          v118 = *(v114 + 16);
          LOWORD(v115) = *(v116 + 16);
          *v114 = *v116;
          *(v114 + 16) = v115;
          *(v116 + 16) = v118;
          *v116 = v117;
          v119 = v6[1677];
          v120 = *(v119 + v113);
          v121 = ((v6[1669] - v6[1668]) >> 3) - 1;
          v122 = v121 & 0x3F;
          v123 = *(v119 + ((v121 >> 3) & 0x1FFFFFFFFFFFFFF8));
          v124 = *(v120 + 8 * v111);
          *(v120 + 8 * v111) = *(v123 + 8 * v122);
          *(v123 + 8 * v122) = v124;
          v125 = v6[1665];
          if (v106 < (v6[1666] - v125) >> 3)
          {
            v126 = *(v125 + 8 * v106);
            if (v126)
            {
              if (*(v126 + 16 * (v105 & 0x3F)) == HIDWORD(v105))
              {
                ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(v6 + 1664, (v6[1668] + 8 * *(v126 + 16 * v109 + 8)));
              }
            }
          }

          v127 = v6[1687];
          if (v105 < ((v6[1688] - v127) >> 3))
          {
            v128 = *(v127 + 8 * v105);
            if (!((v128 ^ v105) >> 32))
            {
              v130 = v105;
              *(v127 + 8 * v105) = v128 + 0x100000000;
              std::vector<unsigned long>::push_back[abi:nn200100]((v6 + 1684), &v130);
            }
          }
        }
      }
    }
  }
}

void std::invoke[abi:nn200100]<void md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>&)#1} &,ecs2::Entity&,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>&>(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 2;
    if ((v6 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v9);
    }

    v10 = (4 * v6);
    *v10 = a2;
    v5 = 4 * v6 + 4;
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
    *v4 = a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19TileRenderableTypeTINS6_23DaVinciGroundRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>();
    *algn_1EB83D018 = 0xC0EF30C6D6B08313;
    qword_1EB83D020 = "md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>]";
    qword_1EB83D028 = 56;
  }
}

void std::function<void ()(ecs2::Entity)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v3);
  }

  else
  {
    v2 = std::__throw_bad_function_call[abi:nn200100]();
    _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19TileRenderableTypeTINS6_23DaVinciGroundRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE18destroy_deallocateEv(v2);
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40C80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A60B38;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40104B78CFLL);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::function<void ()(ecs2::Entity)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40C80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void *std::vector<ecs2::Entity>::reserve(void *result)
{
  if (result[2] - *result <= 0xFFuLL)
  {
    operator new();
  }

  return result;
}

uint64_t *std::vector<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *,std::allocator<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *>>::resize(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = (v3 - *result) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return result;
    }

    v11 = v4 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = result[2];
    if (v6 > (v7 - v3) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v4;
        v9 = (v7 - v4) >> 2;
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0;
    v13 = *a3;
    v14 = (v6 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v15 = vdupq_n_s64(v14);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_1B33B0560)));
      if (v16.i8[0])
      {
        *(v3 + 8 * v12) = v13;
      }

      if (v16.i8[4])
      {
        *(v3 + 8 * v12 + 8) = v13;
      }

      v12 += 2;
    }

    while (v14 - ((v6 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    v11 = v3 + 8 * v6;
  }

  result[1] = v11;
  return result;
}

void std::vector<std::span<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,18446744073709551615ul>>::resize(uint64_t *a1, unint64_t a2)
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

        if (!(v10 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E46E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29E4708;
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

void ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E46E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>::~storage(a1);
}

void geo::Pool<md::DaVinciGroundRenderable>::construct<std::shared_ptr<md::MapTileData> &,signed char,BOOL const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> &>(uint64_t a1, uint64_t *a2, char *a3)
{
  v6 = *(a1 + 40);
  if (!v6)
  {
    v7 = malloc_type_malloc(824 * *(a1 + 24), 0x10A20405B62D6D9uLL);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v7);
    v6 = *(a1 + 40);
    v8 = &v7[824 * *(a1 + 24) - 824];
    if (v8 >= v7)
    {
      do
      {
        *v8 = v6;
        v6 = v8;
        v8 -= 824;
      }

      while (v8 >= v7);
      v6 = v8 + 824;
    }

    *(a1 + 40) = v6;
  }

  *(a1 + 40) = *v6;
  md::MapTileDataRenderable<md::MapTileData>::MapTileDataRenderable(v6, a2, *a3);
}

void sub_1B2C2DC64(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = 0;
  while (1)
  {
    v5 = *(v1 + v4 + 432);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v4 -= 16;
    if (v4 == -32)
    {
      md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(v1);
      _Unwind_Resume(a1);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void ecs2::BasicRegistry<void>::add<md::ls::RegisterHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RegisterHandle>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
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
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    if (v21 > (v22 - v18) >> 3)
    {
      v23 = v22 - v19;
      v24 = (v22 - v19) >> 2;
      if (v24 <= v20)
      {
        v24 = v17 + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (!(v25 >> 61))
      {
        operator new();
      }

      goto LABEL_42;
    }

    v26 = 0;
    v27 = (v21 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v28 = vdupq_n_s64(v27);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_1B33B0560)));
      if (v29.i8[0])
      {
        *(v18 + 8 * v26) = 0;
      }

      if (v29.i8[4])
      {
        *(v18 + 8 * v26 + 8) = 0;
      }

      v26 += 2;
    }

    while (v27 - ((v21 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v26);
    *(v8 + 64) = v18 + 8 * v21;
    v30 = *(v8 + 80);
    v31 = *(v8 + 88);
    v32 = (v31 - v30) >> 4;
    if (v32 <= v17)
    {
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::MapDataTypeV>(uint64_t a1, unint64_t a2, _WORD *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeV>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 2 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    if (v21 > (v22 - v18) >> 3)
    {
      v23 = v22 - v19;
      v24 = (v22 - v19) >> 2;
      if (v24 <= v20)
      {
        v24 = v17 + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (!(v25 >> 61))
      {
        operator new();
      }

      goto LABEL_42;
    }

    v26 = 0;
    v27 = (v21 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v28 = vdupq_n_s64(v27);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_1B33B0560)));
      if (v29.i8[0])
      {
        *(v18 + 8 * v26) = 0;
      }

      if (v29.i8[4])
      {
        *(v18 + 8 * v26 + 8) = 0;
      }

      v26 += 2;
    }

    while (v27 - ((v21 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v26);
    *(v8 + 64) = v18 + 8 * v21;
    v30 = *(v8 + 80);
    v31 = *(v8 + 88);
    v32 = (v31 - v30) >> 4;
    if (v32 <= v17)
    {
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 2 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::CheckIfReadyToProcess>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::CheckIfReadyToProcess>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
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
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    if (v21 > (v22 - v18) >> 3)
    {
      v23 = v22 - v19;
      v24 = (v22 - v19) >> 2;
      if (v24 <= v20)
      {
        v24 = v17 + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (!(v25 >> 61))
      {
        operator new();
      }

      goto LABEL_42;
    }

    v26 = 0;
    v27 = (v21 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v28 = vdupq_n_s64(v27);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_1B33B0560)));
      if (v29.i8[0])
      {
        *(v18 + 8 * v26) = 0;
      }

      if (v29.i8[4])
      {
        *(v18 + 8 * v26 + 8) = 0;
      }

      v26 += 2;
    }

    while (v27 - ((v21 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v26);
    *(v8 + 64) = v18 + 8 * v21;
    v30 = *(v8 + 80);
    v31 = *(v8 + 88);
    v32 = (v31 - v30) >> 4;
    if (v32 <= v17)
    {
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderablesCount>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v47 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>(void)::metadata;
  v46 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablesCount>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
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
    v41 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 32 * (v14 & 0x3F);
    *v41 = *a3;
    v42 = *(v41 + 8);
    if (v42)
    {
      *(v41 + 16) = v42;
      operator delete(v42);
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
    }

    *(v41 + 8) = *(a3 + 8);
    *(v41 + 24) = *(a3 + 24);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v47);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v44 = v6;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    v43 = v16;
    v45 = v18 - v19;
    if (v21 > (v22 - v18) >> 3)
    {
      v23 = v22 - v19;
      v24 = (v22 - v19) >> 2;
      if (v24 <= v20)
      {
        v24 = v17 + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (!(v25 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v26 = 0;
    v27 = (v21 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v28 = vdupq_n_s64(v27);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_1B33B0560)));
      if (v29.i8[0])
      {
        *(v18 + 8 * v26) = 0;
      }

      if (v29.i8[4])
      {
        *(v18 + 8 * v26 + 8) = 0;
      }

      v26 += 2;
    }

    while (v27 - ((v21 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v26);
    *(v8 + 64) = v18 + 8 * v21;
    v30 = *(v8 + 80);
    v31 = *(v8 + 88);
    v32 = (v31 - v30) >> 4;
    if (v32 <= v17)
    {
      v16 = v20 - v32;
      v33 = *(v8 + 96);
      if (v16 > (v33 - v31) >> 4)
      {
        v34 = v33 - v30;
        v35 = v34 >> 3;
        if (v34 >> 3 <= v20)
        {
          v35 = v17 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF0)
        {
          v36 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        if (!(v36 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v16);
      *(v8 + 88) = v31 + 16 * v16;
      LOBYTE(v16) = v43;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    v6 = v44;
    if (v45 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  v37 = *(v19 + 8 * v17) + 32 * (v16 & 0x3F);
  *v37 = *a3;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 8) = 0;
  *(v37 + 8) = *(a3 + 8);
  *(v37 + 24) = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(v46 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>();
  *(v46 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>(void)::metadata) = *(v46 + 4096);
}