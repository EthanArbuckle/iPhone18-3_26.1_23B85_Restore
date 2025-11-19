void sub_1B2EA0538(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2);
  std::mutex::~mutex((v1 + 64));
  v4 = *(v1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelExternalTransitLink>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BA90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *a1, void *a2)
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

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *>>(v3, a2);
}

void md::LabelExternalObjectsModerator::externalTransitNode(md::LabelExternalObjectsModerator *this, uint64_t a2, unint64_t a3)
{
  std::mutex::lock((a2 + 368));
  v6 = *(a2 + 256);
  if (!*&v6)
  {
    goto LABEL_17;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = a3;
    if (*&v6 <= a3)
    {
      v8 = a3 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & a3;
  }

  v9 = *(*(a2 + 248) + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_17:
    *this = 0;
    *(this + 1) = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == a3)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (v10[2] != a3)
  {
    goto LABEL_16;
  }

  *this = 0;
  *(this + 1) = 0;
  v12 = v10[4];
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    *(this + 1) = v13;
    if (v13)
    {
      *this = v10[3];
    }
  }

LABEL_18:

  std::mutex::unlock((a2 + 368));
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *>(v3, v2);
  }
}

void std::__shared_ptr_emplace<md::LabelExternalTransitNode>::__on_zero_shared(void *a1)
{
  v2 = a1[4];
  std::mutex::lock(v2);
  sig = v2[1].__m_.__sig;
  if (sig)
  {
    v4 = a1[3];
    std::mutex::lock((sig + 368));
    v5 = *(sig + 256);
    if (v5)
    {
      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = v4;
        if (v4 >= *&v5)
        {
          v7 = v4 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & v4;
      }

      v8 = *(sig + 248);
      v9 = *(v8 + 8 * v7);
      if (v9)
      {
        v10 = *v9;
        if (*v9)
        {
          v11 = *&v5 - 1;
          do
          {
            v12 = v10[1];
            if (v12 == v4)
            {
              if (v10[2] == v4)
              {
                v13 = v10[1];
                if (v6.u32[0] > 1uLL)
                {
                  if (v13 >= *&v5)
                  {
                    v13 %= *&v5;
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
                if (v15 == (sig + 272))
                {
                  goto LABEL_37;
                }

                v16 = v15[1];
                if (v6.u32[0] > 1uLL)
                {
                  if (v16 >= *&v5)
                  {
                    v16 %= *&v5;
                  }
                }

                else
                {
                  v16 &= v11;
                }

                if (v16 != v13)
                {
LABEL_37:
                  if (!*v10)
                  {
                    goto LABEL_38;
                  }

                  v17 = *(*v10 + 8);
                  if (v6.u32[0] > 1uLL)
                  {
                    if (v17 >= *&v5)
                    {
                      v17 %= *&v5;
                    }
                  }

                  else
                  {
                    v17 &= v11;
                  }

                  if (v17 != v13)
                  {
LABEL_38:
                    *(v8 + 8 * v13) = 0;
                  }
                }

                v18 = *v10;
                if (*v10)
                {
                  v19 = *(v18 + 8);
                  if (v6.u32[0] > 1uLL)
                  {
                    if (v19 >= *&v5)
                    {
                      v19 %= *&v5;
                    }
                  }

                  else
                  {
                    v19 &= v11;
                  }

                  if (v19 != v13)
                  {
                    *(*(sig + 248) + 8 * v19) = v15;
                    v18 = *v10;
                  }
                }

                *v15 = v18;
                *v10 = 0;
                --*(sig + 288);
                std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v10);
                break;
              }
            }

            else
            {
              if (v6.u32[0] > 1uLL)
              {
                if (v12 >= *&v5)
                {
                  v12 %= *&v5;
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

    std::mutex::unlock((sig + 368));
  }

  std::mutex::unlock(v2);
  v20 = a1[5];
  if (v20)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }
}

void sub_1B2EA09D8(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2);
  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelExternalTransitNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BAC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelExternalObjectsModerator::isTransitNodeAlongSelectedLine(md::LabelExternalObjectsModerator *this, unint64_t a2)
{
  if (*(this + 433) == 1)
  {
    for (i = *(this + 21); i; i = *i)
    {
      v3 = i[4];
      if (v3 <= a2)
      {
        if (v3 >= a2)
        {
          return 1;
        }

        ++i;
      }
    }

    return 0;
  }

  v4 = *(this + 17);
  if (!v4)
  {
    return 0;
  }

  while (1)
  {
    v5 = v4[4];
    if (v5 <= a2)
    {
      break;
    }

LABEL_12:
    v4 = *v4;
    if (!v4)
    {
      return 0;
    }
  }

  if (v5 < a2)
  {
    ++v4;
    goto LABEL_12;
  }

  return 1;
}

void std::__shared_ptr_emplace<md::LabelCreateExternalIconRequest>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__shared_ptr_emplace<md::LabelCreateExternalIconRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BB00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelExternalObjectsModerator::registerIconForAsynchModeUpdates(uint64_t a1, void *a2)
{
  if ((*(a1 + 432) & 1) == 0)
  {
    v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
    v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
    v8 = *(a1 + 80);
    if (v8)
    {
      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        v2 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
        if (v7 >= v8)
        {
          v2 = v7 % v8;
        }
      }

      else
      {
        v2 = v7 & (v8 - 1);
      }

      v10 = *(*(a1 + 72) + 8 * v2);
      if (v10)
      {
        for (i = *v10; i; i = *i)
        {
          v12 = i[1];
          if (v12 == v7)
          {
            if (i[2] == *a2)
            {
              return;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v12 >= v8)
              {
                v12 %= v8;
              }
            }

            else
            {
              v12 &= v8 - 1;
            }

            if (v12 != v2)
            {
              break;
            }
          }
        }
      }
    }

    v13 = mdm::zone_mallocator::instance(a1);
    v14 = pthread_rwlock_rdlock((v13 + 32));
    if (v14)
    {
      geo::read_write_lock::logFailure(v14, "read lock", v15);
    }

    v16 = malloc_type_zone_malloc(*v13, 0x20uLL, 0x10200404161829EuLL);
    atomic_fetch_add((v13 + 24), 1u);
    geo::read_write_lock::unlock((v13 + 32));
    *v16 = 0;
    v16[1] = v7;
    v18 = a2[1];
    v16[2] = *a2;
    v16[3] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = (*(a1 + 112) + 1);
    v20 = *(a1 + 120);
    if (v8 && (v20 * v8) >= v19)
    {
LABEL_68:
      v38 = *(a1 + 72);
      v39 = *(v38 + 8 * v2);
      if (v39)
      {
        *v16 = *v39;
      }

      else
      {
        *v16 = *(a1 + 96);
        *(a1 + 96) = v16;
        *(v38 + 8 * v2) = a1 + 96;
        if (!*v16)
        {
LABEL_77:
          ++*(a1 + 112);
          return;
        }

        v40 = *(*v16 + 8);
        if ((v8 & (v8 - 1)) != 0)
        {
          if (v40 >= v8)
          {
            v40 %= v8;
          }
        }

        else
        {
          v40 &= v8 - 1;
        }

        v39 = (*(a1 + 72) + 8 * v40);
      }

      *v39 = v16;
      goto LABEL_77;
    }

    v21 = 1;
    if (v8 >= 3)
    {
      v21 = (v8 & (v8 - 1)) != 0;
    }

    v22 = v21 | (2 * v8);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    if (v24 == 1)
    {
      v24 = 2;
    }

    else if ((v24 & (v24 - 1)) != 0)
    {
      prime = std::__next_prime(v24);
      v24 = prime;
    }

    v8 = *(a1 + 80);
    if (v24 > v8)
    {
      goto LABEL_35;
    }

    if (v24 < v8)
    {
      prime = vcvtps_u32_f32(*(a1 + 112) / *(a1 + 120));
      if (v8 < 3 || (v33 = vcnt_s8(v8), v33.i16[0] = vaddlv_u8(v33), v33.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v34 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v34;
        }
      }

      if (v24 <= prime)
      {
        v24 = prime;
      }

      if (v24 >= v8)
      {
        v8 = *(a1 + 80);
      }

      else
      {
        if (v24)
        {
LABEL_35:
          v25 = mdm::zone_mallocator::instance(prime);
          v26 = pthread_rwlock_rdlock((v25 + 32));
          if (v26)
          {
            geo::read_write_lock::logFailure(v26, "read lock", v27);
          }

          v28 = malloc_type_zone_malloc(*v25, 8 * v24, 0x2004093837F09uLL);
          atomic_fetch_add((v25 + 24), 1u);
          geo::read_write_lock::unlock((v25 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> **,0>((a1 + 72), v28);
          v29 = 0;
          *(a1 + 80) = v24;
          do
          {
            *(*(a1 + 72) + 8 * v29++) = 0;
          }

          while (v24 != v29);
          v30 = *(a1 + 96);
          if (v30)
          {
            v31 = v30[1];
            v32 = vcnt_s8(v24);
            v32.i16[0] = vaddlv_u8(v32);
            if (v32.u32[0] > 1uLL)
            {
              if (v31 >= v24)
              {
                v31 %= v24;
              }
            }

            else
            {
              v31 &= v24 - 1;
            }

            *(*(a1 + 72) + 8 * v31) = a1 + 96;
            v35 = *v30;
            if (*v30)
            {
              do
              {
                v36 = v35[1];
                if (v32.u32[0] > 1uLL)
                {
                  if (v36 >= v24)
                  {
                    v36 %= v24;
                  }
                }

                else
                {
                  v36 &= v24 - 1;
                }

                if (v36 != v31)
                {
                  v37 = *(a1 + 72);
                  if (!*(v37 + 8 * v36))
                  {
                    *(v37 + 8 * v36) = v30;
                    goto LABEL_59;
                  }

                  *v30 = *v35;
                  *v35 = **(v37 + 8 * v36);
                  **(v37 + 8 * v36) = v35;
                  v35 = v30;
                }

                v36 = v31;
LABEL_59:
                v30 = v35;
                v35 = *v35;
                v31 = v36;
              }

              while (v35);
            }
          }

          v8 = v24;
          goto LABEL_63;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> **,0>((a1 + 72), 0);
        v8 = 0;
        *(a1 + 80) = 0;
      }
    }

LABEL_63:
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v2 = v7 % v8;
      }

      else
      {
        v2 = v7;
      }
    }

    else
    {
      v2 = (v8 - 1) & v7;
    }

    goto LABEL_68;
  }
}

void sub_1B2EA1040(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v1);
  _Unwind_Resume(a1);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *>(v3, v2);
  }
}

void md::LabelExternalIcon::debugString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void std::vector<AdditionalRouteInfo>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    v4 = v3 - 40;
    do
    {
      *(v3 - 40) = &unk_1F2A4C308;
      v3 -= 40;

      v4 -= 40;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void *geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A4C308;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned char,md::DataRequirement>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,md::DataRequirement>>>::__erase_unique<unsigned char>(void *a1, unsigned __int8 a2)
{
  v3 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a1, a2);
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

void md::CartographicMapEngineMode::~CartographicMapEngineMode(md::CartographicMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::DisplayLinkVerificationLogic>(void *a1)
{
  v8[0] = 0x3A3A2962B4F0D965;
  v8[1] = "md::DisplayLinkVerificationLogic]";
  v8[2] = 32;
  *&v5 = 0x42BE82C40F9A8F80;
  *(&v5 + 1) = "md::DisplayLinkVerificationContext]";
  v6 = 34;
  v7 = 1;
  v4[1] = &v5;
  v4[2] = 0;
  v4[0] = &unk_1F2A4C258;
  v1[1] = &v2;
  v1[2] = 1;
  v1[0] = &unk_1F2A4C218;
  v2 = xmmword_1E7B3BAF8;
  v3 = 17;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v8, &v5, 0, v4, v1);
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::ARMesh::ARShadowPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::ARMesh::ARShadowPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::ARMesh::ARMeshPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::ARMesh::ARMeshPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::ARMesh::ARDepthMeshPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::ARMesh::ARDepthMeshPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

__n128 md::ARMeshRenderResources::generateIcoSphereCached(__n128 *this, unsigned int a2)
{
  {
  }

  if (a2 >= 3)
  {
    a2 = 3;
  }

  v4 = (&md::ARMeshRenderResources::generateIcoSphereCached(unsigned char)::_icoSpheres + 16 * a2);
  if (!*v4)
  {
    memset(v9, 0, sizeof(v9));
    memset(v8, 0, sizeof(v8));
    md::GeometryLogic::createIcoSphere(v9, v8, a2);
    operator new();
  }

  v5 = v4[1];
  this->n128_u64[0] = *v4;
  this->n128_u64[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = (&md::ARMeshRenderResources::generateIcoSphereCached(unsigned char)::_icoSpheresBounds + 24 * a2);
  result = *v6;
  this[1] = *v6;
  this[2].n128_u64[0] = v6[1].n128_u64[0];
  return result;
}

void sub_1B2EA27A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, char a37)
{
  ggl::BufferMemory::~BufferMemory(&a15);
  std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  ggl::BufferMemory::~BufferMemory(&a21);
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  ggl::BufferMemory::~BufferMemory(&a29);
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a36);
  }

  ggl::BufferMemory::~BufferMemory(&a37);
  std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  if (__p)
  {
    operator delete(__p);
  }

  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::DaVinci::TexturedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3AA30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DeviceDataTyped<ggl::DaVinci::Normals>::~DeviceDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DeviceDataTyped<ggl::DaVinci::UVs>::~DeviceDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A6D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::TexturedVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::TexturedVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::TexturedVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A7D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

ggl::zone_mallocator *std::vector<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
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
    return std::__split_buffer<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void sub_1B2EA2F78(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ggl::ConstantDataTyped<ggl::ARMesh::CameraView>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::ARMesh::CameraView>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BCA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::ARMeshRenderResources::ARMeshRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4,std::allocator<md::ARMeshRenderResources::ARMeshRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4>,ggl::ARMesh::ARDepthMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0BDD8;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARMeshPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
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
    return std::__split_buffer<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void sub_1B2EA34B0(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    if (!v3)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  if (!v2)
  {
LABEL_4:
    if (!v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  if (!v1)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  goto LABEL_6;
}

void sub_1B2EA3514()
{
  if (!v0)
  {
    JUMPOUT(0x1B2EA34CCLL);
  }

  JUMPOUT(0x1B2EA34C4);
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BC70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::ARMeshRenderResources::ARMeshRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2,std::allocator<md::ARMeshRenderResources::ARMeshRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2>,ggl::ARMesh::ARMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0BD48;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARShadowPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
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
    return std::__split_buffer<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void sub_1B2EA3A2C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    if (!v3)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  if (!v2)
  {
LABEL_4:
    if (!v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  if (!v1)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  goto LABEL_6;
}

void sub_1B2EA3A90()
{
  if (!v0)
  {
    JUMPOUT(0x1B2EA3A48);
  }

  JUMPOUT(0x1B2EA3A40);
}

uint64_t std::__function::__func<md::ARMeshRenderResources::ARMeshRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::ARMeshRenderResources::ARMeshRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0>,ggl::ARMesh::ARShadowPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0BC28;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<ggl::ARMesh::ARShadowPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BBF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ARMesh::ARDepthMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BBB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ARMesh::ARMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BB80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2EA5E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  ggl::BufferMemory::~BufferMemory(&a16);
  std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  ggl::BufferMemory::~BufferMemory(&a22);
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a29);
  }

  ggl::BufferMemory::~BufferMemory(&a30);
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a37);
  }

  ggl::BufferMemory::~BufferMemory((v40 - 200));
  std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  if (v37)
  {
    operator delete(v37);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<ARCamera * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4EB10;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<ARCamera * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4EB10;

  return a1;
}

md::MDARCamera *md::MDARCamera::MDARCamera(md::MDARCamera *this, ARCamera *a2)
{
  v3 = a2;
  *this = &unk_1F2A4EB10;
  *(this + 1) = v3;
  return this;
}

long double md::MDARCamera::widestFieldOfView(md::MDARCamera *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  md::LabelExternalPointFeature::incident(v4);
  [objc_claimAutoreleasedReturnValue() imageResolution];
  v6 = v5;
  v7 = *(a2 + 8);
  md::LabelExternalPointFeature::incident(v7);
  [objc_claimAutoreleasedReturnValue() imageResolution];

  v8 = *(a2 + 8);
  md::LabelExternalPointFeature::incident(v8);
  [objc_claimAutoreleasedReturnValue() intrinsics];
  v12 = v9;
  v10 = *(a2 + 8);
  md::LabelExternalPointFeature::incident(v10);
  [objc_claimAutoreleasedReturnValue() intrinsics];

  result = atan(fmax(v6, 0.0) / (v12 + v12)) * 114.591559;
  *this = result;
  return result;
}

void md::MDARCamera::roll(md::MDARCamera *this, void *a2)
{
  md::LabelExternalPointFeature::incident(a2);
  objc_claimAutoreleasedReturnValue();
  [a2 eulerAngles];
  *this = v3;
}

void md::MDARCamera::pitch(md::MDARCamera *this, void *a2)
{
  md::LabelExternalPointFeature::incident(a2);
  objc_claimAutoreleasedReturnValue();
  [a2 eulerAngles];
  *this = v3;
}

void md::MDARCamera::yaw(md::MDARCamera *this, void *a2)
{
  md::LabelExternalPointFeature::incident(a2);
  objc_claimAutoreleasedReturnValue();
  [a2 eulerAngles];
  *this = v3;
}

uint64_t md::StyleCrossFadeLabelPart::animate(md::StyleCrossFadeLabelPart *this, float a2)
{
  v2 = *(this + 158) + (a2 * 2.5);
  *(this + 158) = v2;
  if (v2 >= 1.0)
  {
    *(this + 158) = 1065353216;
    *(this + 638) = 0;
  }

  return (*(**(*(this + 72) + 8) + 624))();
}

void md::StyleCrossFadeLabelPart::~StyleCrossFadeLabelPart(md::StyleCrossFadeLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

uint64_t md::ARAssetOcclusionMeshDataLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *this, gdc::LayerDataManager ***a3, unsigned __int8 *a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v88 = **a3;
  md::LayoutContext::frameState(this);
  v6 = *(v5 + 88);
  gdc::LayerDataCollector::clear(*(a1 + 128));
  v93 = 0u;
  v94 = 0u;
  v95 = 1065353216;
  v86 = a1;
  v7 = gdc::Registry::storage<SceneComponents::LayerDataInView<(md::MapDataType)60>>(*(a1 + 120));
  v8 = v7[7];
  v90 = v7[8];
  if (v8 != v90)
  {
    v9 = v7[10];
    do
    {
      v92 = v8;
      v10 = *v9;
      if (*v9 != v9 + 1)
      {
        do
        {
          v11 = v10[4];
          v12 = *(v11 + 728);
          v13 = *(v11 + 736);
          if (v12 != v13)
          {
            v14 = v12 + 16;
            do
            {
              v15 = (v14 - 16);
              if (!*(v14 - 8))
              {
                v15 = v14;
              }

              v16 = *v15;
              v96[0] = *v15;
              v17 = *(v14 + 8);
              if ((v17 & 2) != 0)
              {
                *buf = v96;
                std::__hash_table<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v93, v16);
                operator new();
              }

              v18 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v93, *(&v93 + 1), v16);
              if ((v17 & 1) != 0 && !v18)
              {
                *buf = v96;
                std::__hash_table<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v93, v16);
                operator new();
              }

              v19 = v14 + 16;
              v14 += 32;
            }

            while (v19 != v13);
          }

          v20 = v10[1];
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
              v21 = v10[2];
              v43 = *v21 == v10;
              v10 = v21;
            }

            while (!v43);
          }

          v10 = v21;
        }

        while (v21 != v9 + 1);
      }

      v9 += 3;
      v8 = v92 + 8;
    }

    while (v92 + 8 != v90);
  }

  v22 = v94;
  for (i = v86; v22; v22 = *v22)
  {
    v24 = v22[2];
    v25 = *(v86 + 128);
    v98 = *(v22[4] + 16);
    v99 = 42;
    v100 = v24;
    gdc::GenericKey::GenericKey(v96, &v98, 3);
    gdc::LayerDataRequestKey::LayerDataRequestKey(buf, 0, 0x3Du, v96, -4);
    if (v96[0] != v97)
    {
      free(v96[0]);
    }

    gdc::LayerDataCollector::addDataKey(v25, buf);
    if (*&v103[2] != v105)
    {
      free(*&v103[2]);
    }

    v26 = v22[2];
    v27 = *(v86 + 128);
    v98 = *(v22[4] + 16);
    v99 = 28;
    v100 = v26;
    gdc::GenericKey::GenericKey(v96, &v98, 3);
    gdc::LayerDataRequestKey::LayerDataRequestKey(buf, 0, 0x3Du, v96, -1073741827);
    if (v96[0] != v97)
    {
      free(v96[0]);
    }

    gdc::LayerDataCollector::addDataKey(v27, buf);
    if (*&v103[2] != v105)
    {
      free(*&v103[2]);
    }
  }

  gdc::LayerDataManager::createDataRequests(v88, *(v86 + 128), (v6 * 1000.0));
  gdc::LayerDataManager::getData(v88, *(v86 + 128));
  v28 = gdc::LayerDataCollector::cDataHolders(*(*(v86 + 128) + 24), *(*(v86 + 128) + 32), 61);
  v30 = v29;
  v31 = *(a4 + 2);
  v32 = *(a4 + 6);
  v33 = (a4 + 16);
  v34 = *(a4 + 1);
  *(a4 + 40) = v34;
  *(a4 + 4) = *(a4 + 1);
  *(a4 + 8) = v31;
  *(a4 + 3) = v32;
  if (*(&v34 + 1))
  {
    v35 = (v34 + 16);
  }

  else
  {
    v35 = a4 + 32;
  }

  *v35 = a4 + 40;
  if (v32)
  {
    v36 = *v33 + 2;
  }

  else
  {
    v36 = a4 + 8;
  }

  *v36 = v33;
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*v33);
  v89 = (a4 + 8);
  *(a4 + 1) = v33;
  *(a4 + 3) = 0;
  v85 = a4 + 16;
  *v33 = 0;
  if (*(v86 + 160))
  {
    v37 = *(v86 + 152);
    if (v37)
    {
      do
      {
        v38 = *v37;
        operator delete(v37);
        v37 = v38;
      }

      while (v38);
    }

    *(v86 + 152) = 0;
    v39 = *(v86 + 144);
    if (v39)
    {
      for (j = 0; j != v39; ++j)
      {
        *(*(v86 + 136) + 8 * j) = 0;
      }
    }

    *(v86 + 160) = 0;
  }

  if (v28 == v30)
  {
    v91 = 0;
    goto LABEL_46;
  }

  v91 = 0;
  v49 = v28;
  do
  {
    v50 = *(v49 + 16);
    if (gdc::ResourceKey::getUInt64(v50, 1u) == 28)
    {
      goto LABEL_99;
    }

    UInt64 = gdc::ResourceKey::getUInt64(v50, 2u);
    v52 = gdc::ResourceKey::getUInt64(v50, 0);
    v53 = *(v49 + 128);
    v54 = *(v86 + 144);
    if (!*&v54)
    {
      goto LABEL_87;
    }

    v55 = vcnt_s8(v54);
    v55.i16[0] = vaddlv_u8(v55);
    if (v55.u32[0] > 1uLL)
    {
      v56 = UInt64;
      if (UInt64 >= *&v54)
      {
        v56 = UInt64 % *&v54;
      }
    }

    else
    {
      v56 = (*&v54 - 1) & UInt64;
    }

    v57 = *(*(v86 + 136) + 8 * v56);
    if (!v57 || (v58 = *v57) == 0)
    {
LABEL_87:
      operator new();
    }

    while (1)
    {
      v59 = v58[1];
      if (v59 == UInt64)
      {
        break;
      }

      if (v55.u32[0] > 1uLL)
      {
        if (v59 >= *&v54)
        {
          v59 %= *&v54;
        }
      }

      else
      {
        v59 &= *&v54 - 1;
      }

      if (v59 != v56)
      {
        goto LABEL_87;
      }

LABEL_86:
      v58 = *v58;
      if (!v58)
      {
        goto LABEL_87;
      }
    }

    if (v58[2] != UInt64)
    {
      goto LABEL_86;
    }

    v64 = *(v49 + 128);
    v58[3] = v52;
    *(v58 + 8) = v53;
    if (v64 == 1)
    {
      v91 = 1;
    }

    else if (v64 == 3)
    {
      v60 = *(v49 + 112);
      v61 = *(v49 + 120);
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v96[0] = *(v60 + 168);
      *buf = v96;
      v62 = std::__tree<std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v89, v96[0]);
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v63 = v62[6];
      v62[5] = v60;
      v62[6] = v61;
      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v63);
      }

      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v61);
      }
    }

LABEL_99:
    v49 += 144;
  }

  while (v49 != v30);
  while (2)
  {
    v67 = *(v28 + 16);
    if (gdc::ResourceKey::getUInt64(v67, 1u) == 42)
    {
      goto LABEL_104;
    }

    v68 = gdc::ResourceKey::getUInt64(v67, 2u);
    v69 = v68;
    v70 = i[18];
    if (!*&v70)
    {
      goto LABEL_124;
    }

    v71 = vcnt_s8(v70);
    v71.i16[0] = vaddlv_u8(v71);
    if (v71.u32[0] > 1uLL)
    {
      v72 = v68;
      if (v68 >= *&v70)
      {
        v72 = v68 % *&v70;
      }
    }

    else
    {
      v72 = (*&v70 - 1) & v68;
    }

    v73 = *(*&i[17] + 8 * v72);
    if (!v73 || (v74 = *v73) == 0)
    {
LABEL_124:
      v76 = *(v28 + 128);
      switch(v76)
      {
        case 1:
          v91 = 1;
          break;
        case 2:
          if (GEOGetVectorKitARAssetOcclusionMeshDataLogicLog(void)::onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitARAssetOcclusionMeshDataLogicLog(void)::onceToken, &__block_literal_global_13653);
          }

          v83 = GEOGetVectorKitARAssetOcclusionMeshDataLogicLog(void)::log;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            v84 = gdc::ResourceKey::getUInt64(*(v28 + 16), 0);
            *buf = 134218754;
            *&buf[4] = v84;
            v102 = 2080;
            *v103 = "false";
            *&v103[8] = 2080;
            v104 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/ARAssetOcclusionMeshDataLogic.mm";
            LOWORD(v105) = 1024;
            *(&v105 + 2) = 166;
            _os_log_impl(&dword_1B2754000, v83, OS_LOG_TYPE_ERROR, "Failed to resolve an occlusion mesh for asset:%llu: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
          }

          break;
        case 3:
          v77 = *(v28 + 112);
          v78 = *(v28 + 120);
          if (v78)
          {
            atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v96[0] = *(v77 + 168);
          *buf = v96;
          v79 = std::__tree<std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v89, v96[0]);
          if (v78)
          {
            atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v80 = v79[6];
          v79[5] = v77;
          v79[6] = v78;
          if (v80)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v80);
          }

          v81 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v93, *(&v93 + 1), v69);
          i = v86;
          if (v81)
          {
              ;
            }
          }

          if (v78)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v78);
          }

          break;
      }

      goto LABEL_104;
    }

    while (2)
    {
      v75 = v74[1];
      if (v75 != v68)
      {
        if (v71.u32[0] > 1uLL)
        {
          if (v75 >= *&v70)
          {
            v75 %= *&v70;
          }
        }

        else
        {
          v75 &= *&v70 - 1;
        }

        if (v75 != v72)
        {
          goto LABEL_124;
        }

        goto LABEL_121;
      }

      if (v74[2] != v68)
      {
LABEL_121:
        v74 = *v74;
        if (!v74)
        {
          goto LABEL_124;
        }

        continue;
      }

      break;
    }

    if (*(v74 + 8) == 2)
    {
      goto LABEL_124;
    }

LABEL_104:
    v28 += 144;
    if (v28 != v30)
    {
      continue;
    }

    break;
  }

LABEL_46:
  if (*(a4 + 3) == *(a4 + 6))
  {
    v41 = *v89;
    if (*v89 == v85)
    {
LABEL_68:
      v44 = 0;
    }

    else
    {
      v42 = *(a4 + 4);
      while (1)
      {
        v43 = *(v41 + 4) == v42[4] && *(v41 + 5) == v42[5];
        v44 = !v43;
        if (!v43)
        {
          break;
        }

        v45 = *(v41 + 1);
        v46 = v41;
        if (v45)
        {
          do
          {
            v41 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          do
          {
            v41 = *(v46 + 2);
            v43 = *v41 == v46;
            v46 = v41;
          }

          while (!v43);
        }

        v47 = v42[1];
        if (v47)
        {
          do
          {
            v48 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v48 = v42[2];
            v43 = *v48 == v42;
            v42 = v48;
          }

          while (!v43);
        }

        v42 = v48;
        if (v41 == v85)
        {
          goto LABEL_68;
        }
      }
    }
  }

  else
  {
    v44 = 1;
  }

  a4[2] = v44;
  v65 = v91 & 1;
  a4[1] = *a4 != v65;
  *a4 = v65;
  return std::__hash_table<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>>>::~__hash_table(&v93);
}

void sub_1B2EA70A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<SceneComponents::LayerDataInView<(md::MapDataType)60>>(uint64_t a1)
{
  v3 = 0x37A96293F55A3841;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x37A96293F55A3841uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
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

void sub_1B2EA76BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(uint64_t a1, unint64_t a2)
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(v2 + 3);
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

void ___ZL47GEOGetVectorKitARAssetOcclusionMeshDataLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "ARAssetOcclusionMeshDataLogic");
  v1 = GEOGetVectorKitARAssetOcclusionMeshDataLogicLog(void)::log;
  GEOGetVectorKitARAssetOcclusionMeshDataLogicLog(void)::log = v0;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataInView<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    if (v6 != v7 - 24)
    {
      std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v6, *(v7 - 24), (v7 - 16));
      v7 = a1[11];
    }

    v8 = v7 - 24;
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(v7 - 16));
    a1[11] = v8;
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

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataInView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

void std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 24;
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

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataInView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

void md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::allocateContext(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 40;
}

uint64_t md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x18CA739B45F5362ALL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7 = *(a2 + 8);
    v8[0] = gdc::Context::context<md::LayerDataLogicContext>(v7);
    v8[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v7);
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

void *gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xF9EFCB105DF83E4uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xF9EFCB105DF83E4)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x18CA739B45F5362ALL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::context<md::LayerDataLogicContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v8);
      return (*(*v7 + 152))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x18CA739B45F5362ALL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::context<md::LayerDataLogicContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v8);
      return (*(*v7 + 144))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x18CA739B45F5362ALL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::context<md::LayerDataLogicContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v8);
      return (*(*v7 + 136))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x18CA739B45F5362ALL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::context<md::LayerDataLogicContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v8);
      return (*(*v7 + 128))(v7, a2, v9, v5);
    }
  }

  return result;
}

void sub_1B2EA8090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(a15);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(a12);
  MEMORY[0x1B8C62190](v15, v16);
  _Unwind_Resume(a1);
}

uint64_t gdc::ObjectHolder<md::ARAssetOcclusionMeshDataContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARAssetOcclusionMeshDataContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::ARAssetOcclusionMeshDataContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARAssetOcclusionMeshDataContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A0C3F8;
  v2 = a1[4];
  if (v2)
  {
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v2 + 40));
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v2 + 16));
    MEMORY[0x1B8C62190](v2, 0x1020C400970237FLL);
  }

  return a1;
}

void md::ARAssetOcclusionMeshDataLogic::~ARAssetOcclusionMeshDataLogic(gdc::LayerDataCollector **this)
{
  md::ARAssetOcclusionMeshDataLogic::~ARAssetOcclusionMeshDataLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0C268;
  std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table((this + 37));
  std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table((this + 32));
  std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table((this + 27));
  std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table((this + 22));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((this + 17));
  std::unique_ptr<gdc::LayerDataCollector>::reset[abi:nn200100](this + 16, 0);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[13]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[10]);
}

uint64_t std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
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

void ggl::TrafficGlow::BasePipelineState::~BasePipelineState(ggl::TrafficGlow::BasePipelineState *this)
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

void ggl::TrafficGlow::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonOverlay::AntialiasPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonOverlay::AntialiasPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::PolygonOverlay::AntialiasConstants>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PolygonOverlay::AntialiasConstants>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0C660;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::PolygonOverlay::Fill>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PolygonOverlay::Fill>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0C530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonOverlay::FillPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonOverlay::FillPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<ggl::PolygonOverlay::AntialiasPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0C4B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonOverlay::FillPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0C478;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>::pushAll(ggl::zone_mallocator *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 5);
  if (v2 != v3)
  {
    v4 = *(result + 1);
    do
    {
      v5 = *v2;
      v6 = *(v1 + 2);
      if (v4 >= v6)
      {
        v7 = (v4 - *v1) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v8 = v6 - *v1;
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

        v19[4] = v1 + 24;
        if (v10)
        {
          v11 = ggl::zone_mallocator::instance(result);
          v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonOverlay::FillPipelineSetup *>(v11, v10);
        }

        else
        {
          v12 = 0;
        }

        v14 = &v12[8 * v10];
        v13 = &v12[8 * v7];
        *v13 = v5;
        v4 = v13 + 8;
        v15 = *(v1 + 1) - *v1;
        v16 = &v13[-v15];
        memcpy(&v13[-v15], *v1, v15);
        v17 = *v1;
        *v1 = v16;
        *(v1 + 1) = v4;
        v18 = *(v1 + 2);
        *(v1 + 2) = v14;
        v19[2] = v17;
        v19[3] = v18;
        v19[0] = v17;
        v19[1] = v17;
        result = std::__split_buffer<ggl::PolygonOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
      }

      else
      {
        *v4++ = v5;
      }

      *(v1 + 1) = v4;
      ++v2;
    }

    while (v2 != v3);
    v2 = *(v1 + 4);
    v3 = *(v1 + 5);
  }

  if (v2 != v3)
  {
    *(v1 + 5) = v2;
  }

  return result;
}

void ggl::RouteLineAlphaReset::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::InteractiveMapEngineCommandExecutor::schedule(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 24);
  v4 = *(a1 + 24);
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](v12, a2);
  v14 = *(a1 + 8);
  std::mutex::lock((v4 + 8));
  v5 = *v4;
  if ((*v4 & 1) == 0)
  {
    v6 = std::__hash_table<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,std::__unordered_map_hasher<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandHash,md::MapEngineCommandEqual,true>,std::__unordered_map_equal<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandEqual,md::MapEngineCommandHash,true>,std::allocator<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>>>::find<md::RunnableMapEngineCommand>(v4 + 18, v13);
    if (v6)
    {
      v7 = v6[9];
      v9 = *v7;
      v8 = v7[1];
      *(v9 + 8) = v8;
      *v8 = v9;
      --*(v4 + 17);
      v10 = *(v7 + 14);
      if (v10 != -1)
      {
        (off_1F2A0C7F0[v10])(&v11, v7 + 2);
      }

      operator delete(v7);
    }

    operator new();
  }

  std::mutex::unlock((v4 + 8));
  if (v13 != -1)
  {
    (off_1F2A0C7F0[v13])(&v11, v12);
  }

  if ((v5 & 1) == 0)
  {
    md::InteractiveMapEngineCommandExecutor::nextCommand(*(a1 + 16), *(a1 + 8), v3, a1 + 40);
  }
}

void sub_1B2EA94C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  v22 = v19[14];
  if (v22 != -1)
  {
    (off_1F2A0C7F0[v22])(&a13, v19 + 4);
  }

  operator delete(v19);
  std::mutex::unlock((v20 + 8));
  if (a19 != -1)
  {
    (off_1F2A0C7F0[a19])(&a13, &a14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = -1;
  v3 = *(a2 + 40);
  if (v3 != -1)
  {
    v5 = a1;
    (off_1F2A0C810[v3])(&v5);
    *(a1 + 40) = v3;
  }

  return a1;
}

void sub_1B2EA95AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  v14 = *(v12 + 40);
  if (v14 != -1)
  {
    (off_1F2A0C7F0[v14])(&a12, v12);
  }

  *(v12 + 40) = -1;
  _Unwind_Resume(exception_object);
}

void md::InteractiveMapEngineCommandExecutor::nextCommand(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = *a4;
  std::mutex::lock(*a4);
  v9 = *&v8[1].__m_.__opaque[40];
  if (!v9)
  {
    std::mutex::unlock(v8);
    goto LABEL_90;
  }

  *&v8[1].__m_.__opaque[40] = v9 - 1;
  std::mutex::unlock(v8);
  v56 = 0;
  v57 = 0;
  v10 = *a3;
  LOBYTE(v49[0]) = 0;
  v52 = 0;
  std::mutex::lock((v10 + 8));
  if (*v10 != 1)
  {
    v59 = 0;
    v60 = 0;
    v13 = *(v10 + 136);
    v12 = v13 != 0;
    if (v13)
    {
      v14 = *(v10 + 128);
      v15 = *(v14 + 56);
      if (v15 == -1)
      {
        v59 = -1;
      }

      else
      {
        v61[0] = v58;
        (off_1F2A0C8E0[v15])(v61, v58, v14 + 16);
      }

      v60 = *(v14 + 64);
      v16 = *(v10 + 128);
      v18 = *v16;
      v17 = v16[1];
      *(v18 + 8) = v17;
      *v17 = v18;
      --*(v10 + 136);
      v19 = *(v16 + 14);
      if (v19 != -1)
      {
        (off_1F2A0C7F0[v19])(v61, v16 + 2);
      }

      operator delete(v16);
      v20 = std::__hash_table<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,std::__unordered_map_hasher<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandHash,md::MapEngineCommandEqual,true>,std::__unordered_map_equal<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandEqual,md::MapEngineCommandHash,true>,std::allocator<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>>>::find<md::RunnableMapEngineCommand>((v10 + 144), v59);
      if (v20)
      {
        v21 = v20;
        v22 = *(v10 + 152);
        v23 = v20[1];
        v24 = vcnt_s8(v22);
        v24.i16[0] = vaddlv_u8(v24);
        if (v24.u32[0] > 1uLL)
        {
          if (v23 >= *&v22)
          {
            v23 %= *&v22;
          }
        }

        else
        {
          v23 &= *&v22 - 1;
        }

        v25 = *(v10 + 144);
        v26 = *(v25 + 8 * v23);
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26 != v20);
        if (v27 == (v10 + 160))
        {
          goto LABEL_37;
        }

        v28 = v27[1];
        if (v24.u32[0] > 1uLL)
        {
          if (v28 >= *&v22)
          {
            v28 %= *&v22;
          }
        }

        else
        {
          v28 &= *&v22 - 1;
        }

        if (v28 != v23)
        {
LABEL_37:
          if (!*v20)
          {
            goto LABEL_38;
          }

          v29 = *(*v20 + 8);
          if (v24.u32[0] > 1uLL)
          {
            if (v29 >= *&v22)
            {
              v29 %= *&v22;
            }
          }

          else
          {
            v29 &= *&v22 - 1;
          }

          if (v29 != v23)
          {
LABEL_38:
            *(v25 + 8 * v23) = 0;
          }
        }

        v30 = *v20;
        if (*v20)
        {
          v31 = *(v30 + 8);
          if (v24.u32[0] > 1uLL)
          {
            if (v31 >= *&v22)
            {
              v31 %= *&v22;
            }
          }

          else
          {
            v31 &= *&v22 - 1;
          }

          if (v31 != v23)
          {
            *(*(v10 + 144) + 8 * v31) = v27;
            v30 = *v20;
          }
        }

        *v27 = v30;
        *v20 = 0;
        --*(v10 + 168);
        v32 = *(v20 + 14);
        if (v32 != -1)
        {
          (off_1F2A0C7F0[v32])(v61, v20 + 2);
        }

        operator delete(v21);
      }

      std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v61, v58);
      v63 = v60;
      v64 = 1;
      if (v52)
      {
        std::__variant_detail::__assignment<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>>(v49, v61);
        v51 = v63;
      }

      else
      {
        std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v49, v61);
        v51 = v63;
        v52 = 1;
      }

      if (v64 == 1 && v62 != -1)
      {
        (off_1F2A0C7F0[v62])(&v48, v61);
      }

      LOBYTE(v61[0]) = 0;
      v64 = 0;
      if ((v52 & 1) == 0)
      {
        v41 = std::__throw_bad_optional_access[abi:nn200100]();
        if (v59 != -1)
        {
          (off_1F2A0C7F0[v59])(&v48, v58);
        }

        std::mutex::unlock((v10 + 8));
        if (v52 == 1 && v50 != -1)
        {
          (off_1F2A0C7F0[v50])(v58, v49);
        }

        if (v56 != -1)
        {
          (off_1F2A0C7F0[v56])(v49, v55);
        }

        _Unwind_Resume(v41);
      }
    }

    else
    {
      LOBYTE(v61[0]) = 0;
      v64 = 0;
      if (v52 != 1)
      {
        goto LABEL_59;
      }
    }

    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v61, v49);
    v63 = v51;
    v64 = 1;
    if (v13)
    {
      std::__variant_detail::__assignment<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>>(v55, v61);
      v57 = v63;
LABEL_60:
      if (v64 == 1)
      {
        if (v62 != -1)
        {
          (off_1F2A0C7F0[v62])(&v48, v61);
        }

        v62 = -1;
      }

      if (v59 != -1)
      {
        (off_1F2A0C7F0[v59])(&v48, v58);
      }

      goto LABEL_66;
    }

LABEL_59:
    v33 = *a4;
    std::mutex::lock(*a4);
    ++*&v33[1].__m_.__opaque[40];
    std::condition_variable::notify_one(&v33[1]);
    std::mutex::unlock(v33);
    goto LABEL_60;
  }

  LOBYTE(v61[0]) = 0;
  v64 = 0;
  if (v52 == 1)
  {
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v61, v49);
    v63 = v51;
    v64 = 1;
  }

  v11 = *a4;
  std::mutex::lock(*a4);
  ++*&v11[1].__m_.__opaque[40];
  std::condition_variable::notify_one(&v11[1]);
  std::mutex::unlock(v11);
  if (v64 == 1)
  {
    if (v62 != -1)
    {
      (off_1F2A0C7F0[v62])(v58, v61);
    }

    v12 = 0;
    v62 = -1;
  }

  else
  {
    v12 = 0;
  }

LABEL_66:
  std::mutex::unlock((v10 + 8));
  if (v52 == 1 && v50 != -1)
  {
    (off_1F2A0C7F0[v50])(v58, v49);
  }

  if (v12)
  {
    atomic_fetch_add(&nextCommandExecutionIdentifier(void)::key, 1uLL);
    v35 = *a4;
    v34 = *(a4 + 8);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = v7;
    v38 = *a3;
    v37 = a3[1];
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x6812000000;
    v49[3] = __Block_byref_object_copy__13746;
    v49[4] = __Block_byref_object_dispose__13747;
    v50 = "";
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](&v51, v55);
    v54 = v57;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3321888768;
    v42[2] = ___ZN2md35InteractiveMapEngineCommandExecutor11nextCommandEPU28objcproto17OS_dispatch_queue8NSObjectPKvRKNSt3__110shared_ptrIN3geo21concurrent_queue_baseINS_24RunnableMapEngineCommandENS8_19UniqueStoragePolicyISA_NS8_23ReplaceDuplicatesPolicyISA_EENS_20MapEngineCommandHashENS_21MapEngineCommandEqualEEEEEEERKNS7_INS8_9SemaphoreEEE_block_invoke;
    v42[3] = &unk_1F2A0C778;
    v42[4] = v49;
    v42[5] = v35;
    v43 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v39 = v36;
    v40 = v39;
    v44 = v39;
    v45 = a2;
    v46 = v38;
    v47 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v39, v42);
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v47);
    }

    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v43);
    }

    _Block_object_dispose(v49, 8);
    if (v53 != -1)
    {
      (off_1F2A0C7F0[v53])(v61, &v51);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v37);
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }
  }

  if (v56 != -1)
  {
    (off_1F2A0C7F0[v56])(v49, v55);
  }

LABEL_90:
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = -1;
  v3 = *(a2 + 40);
  if (v3 != -1)
  {
    v5 = a1;
    (off_1F2A0C830[v3])(&v5);
    *(a1 + 40) = v3;
  }

  return a1;
}

void sub_1B2EA9E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  v14 = *(v12 + 40);
  if (v14 != -1)
  {
    (off_1F2A0C7F0[v14])(&a12, v12);
  }

  *(v12 + 40) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 40);
  v4 = *(a2 + 40);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1F2A0C7F0[v3])(&v6, result, a2);
    *(v2 + 40) = -1;
    return result;
  }

  v5 = result;
  return (off_1F2A0C8C0[v4])(&v5, result, a2);
}

uint64_t __Block_byref_object_copy__13746(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](a1 + 48, a2 + 48);
  *(a1 + 96) = *(a2 + 96);
  return result;
}

uint64_t __Block_byref_object_dispose__13747(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2 != -1)
  {
    result = (off_1F2A0C7F0[v2])(&v3, result + 48);
  }

  *(v1 + 88) = -1;
  return result;
}

void ___ZN2md35InteractiveMapEngineCommandExecutor11nextCommandEPU28objcproto17OS_dispatch_queue8NSObjectPKvRKNSt3__110shared_ptrIN3geo21concurrent_queue_baseINS_24RunnableMapEngineCommandENS8_19UniqueStoragePolicyISA_NS8_23ReplaceDuplicatesPolicyISA_EENS_20MapEngineCommandHashENS_21MapEngineCommandEqualEEEEEEERKNS7_INS8_9SemaphoreEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 80);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B2EAA118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_40c337_ZTSZN2md35InteractiveMapEngineCommandExecutor11nextCommandEPU28objcproto17OS_dispatch_queue8NSObjectPKvRKNSt3__110shared_ptrIN3geo21concurrent_queue_baseINS_24RunnableMapEngineCommandENS8_19UniqueStoragePolicyISA_NS8_23ReplaceDuplicatesPolicyISA_EENS_20MapEngineCommandHashENS_21MapEngineCommandEqualEEEEEEERKNS7_INS8_9SemaphoreEEEE3__1(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

id __copy_helper_block_ea8_40c337_ZTSZN2md35InteractiveMapEngineCommandExecutor11nextCommandEPU28objcproto17OS_dispatch_queue8NSObjectPKvRKNSt3__110shared_ptrIN3geo21concurrent_queue_baseINS_24RunnableMapEngineCommandENS8_19UniqueStoragePolicyISA_NS8_23ReplaceDuplicatesPolicyISA_EENS_20MapEngineCommandHashENS_21MapEngineCommandEqualEEEEEEERKNS7_INS8_9SemaphoreEEEE3__1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 80) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t md::RunnableMapEngineCommand::operator()(uint64_t a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6 = a1;
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v7, a2);
  v3 = *(a1 + 40);
  if (v3 == -1)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v5 = &v6;
  (off_1F2A0C7D0[v3])(&v5, a1);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<md::RunnableMapEngineCommand::operator()(std::function<void ()(void)>)::$_0 &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext> &>(uint64_t *a1, CGContext **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(**a1 + 48);
  v8 = *a2;
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v9, (a2 + 1));
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v7, v2 + 8);
  v4 = v8;
  v5 = CACurrentMediaTime();
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v12, v9);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v10, v7);
  if (!md::MapEngine::canRenderAsync(v3))
  {
    if (md::MapEngine::renderSceneInContextSync(v3, v4, v5) && v13)
    {
      (*(*v13 + 48))(v13);
    }

    if (v11)
    {
      (*(*v11 + 48))(v11);
      goto LABEL_11;
    }

LABEL_12:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v16, v12);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v14, v10);
  if (md::MapEngine::canRender(v3))
  {
    atomic_store(1u, (v3 + 42005));
    md::MapEngine::runUpdatePhase(v3, v5, 0);
    [*(v3 + 41640) drawInContext:v4 registry:v3 + 224];
    CGContextRelease(v4);
    atomic_store(0, (v3 + 42005));
  }

  if (!v15)
  {
    goto LABEL_12;
  }

  (*(*v15 + 48))(v15);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v14);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v16);
LABEL_11:
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v10);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v12);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v9);
}

void sub_1B2EAA4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v23 - 104);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a18);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a22);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a9);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v22 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<md::RunnableMapEngineCommand::operator()(std::function<void ()(void)>)::$_0 &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext> &>(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(**a1 + 48);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v7, a2);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v6, v2 + 8);
  v4 = CACurrentMediaTime();
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v9, v7);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v8, v6);
  md::MapEngine::renderScene(v3, v9, v8, v4);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v8);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v9);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v6);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7);
}

void sub_1B2EAA60C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2 - 72);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<md::RunnableMapEngineCommand::operator()(std::function<void ()(void)>)::$_0 &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext> &>(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v1 = *(**a1 + 48);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v56, *a1 + 8);
  if (v1)
  {
    v2 = (v1 + 47160);
    v3 = (v1 + 41240);
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v4 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = gdc::ServiceLocator::resolve<md::MapEngineLogger>(**(v1 + 47336), *(*(v1 + 47336) + 8));
      v6 = (*(*v5 + 16))(v5);
      v7 = atomic_load((v1 + 81));
      *buf = 136315394;
      v78 = v6;
      v79 = 1024;
      v80 = v7 & 1;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "%s Destroy MapEngine wasQueued:%d", buf, 0x12u);
    }

    (*(**(v1 + 47328) + 48))(*(v1 + 47328));
    (*(**v2 + 48))();
    md::MapEngine::logLayoutReasonsHistory(v1, 0);
    GEOConfigRemoveBlockListener();
    GEOConfigRemoveBlockListener();
    GEOConfigRemoveBlockListener();
    GEOConfigRemoveBlockListener();
    GEOConfigRemoveBlockListener();
    v8 = *(v1 + 41928);
    v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0x20A1ED17D78F322BuLL);
    if (v9)
    {
      v10 = v9[5];
      if (v10)
      {
        v81 = 0;
        md::LabelsLogic::setNeedsDisplayCallback(*(*(v10 + 152) + 88), buf);
        std::__function::__value_func<void ()(md::LabelManager *,md::NeedsLayoutReason)>::~__value_func[abi:nn200100](buf);
        v76 = 0;
        md::LabelsLogic::setNeedsLayoutCallback(v10, v75);
      }
    }

    v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0xEC9B77B4222D22FFLL);
    if (v11)
    {
      v12 = v11[5];
      if (v12)
      {
        v74 = 0;
        md::VenueLogic::setNearestVenueDidChangeCallback(v12, v73);
        std::__function::__value_func<void ()(md::Venue const*,md::VenueBuilding const*)>::~__value_func[abi:nn200100](v73);
        v72 = 0;
        md::VenueLogic::setFocusedVenueDidChangeCallback(v12, v71);
        std::__function::__value_func<void ()(md::Venue const*)>::~__value_func[abi:nn200100](v71);
        v70 = 0;
        std::function<void ()(void)>::operator=(v12 + 760, v69);
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v69);
        v68 = 0;
        md::VenueLogic::setRunAnimationCallback(v12, v67);
        std::__function::__value_func<void ()(VKAnimation *)>::~__value_func[abi:nn200100](v67);
        v66 = 0;
        std::function<void ()(void)>::operator=(v12 + 824, v65);
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v65);
        v64 = 0;
        std::function<void ()(BOOL)>::operator=(v12 + 856, v63);
        std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v63);
        v8 = *(v1 + 41928);
      }
    }

    v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0xC74495586E0C32F6);
    if (v13)
    {
      v14 = v13[5];
      if (v14)
      {
        v62 = 0;
        std::function<void ()(unsigned long long)>::operator=(v14 + 232, v61);
        std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](v61);
        v60 = 0;
        md::HikingLogic::setCallbackForContextualRegionLocationIntersectionRequest(v14, v59);
        std::__function::__value_func<void ()(geo::Mercator2<double>,BOOL)>::~__value_func[abi:nn200100](v59);
      }
    }

    **(v1 + 208) = 0;
    v15 = *(v1 + 160);
    if (v15)
    {
      (*(*v15 + 32))(v15);
      v16 = *(v1 + 144);
      *(v1 + 136) = 0;
      *(v1 + 144) = 0;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }

      v17 = *(v1 + 152);
      *(v1 + 152) = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    **(v1 + 200) = 0;
    objc_storeWeak((v1 + 41664), 0);
    md::AnimationManager::stopAllAnimations(*(v1 + 192));
    v58[0] = 0;
    v18 = *(v1 + 41856);
    *(v1 + 41856) = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    ggl::Loader::~Loader(v58);
    v19 = *(v1 + 41672);
    *(v1 + 41672) = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = *(v1 + 200);
    *(v1 + 200) = 0;
    if (v20)
    {
      MEMORY[0x1B8C62190](v20, 0x20C4093837F09);
    }

    v21 = *(v1 + 41928);
    *(v1 + 41928) = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = *(*(v1 + 41704) + 272);
    v23 = *(v1 + 208);
    v58[0] = &unk_1F2A265F8;
    v58[1] = v23;
    v58[3] = v58;
    md::OverlayContainer::visitOverlays(v22, v58);
    std::__function::__value_func<void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::~__value_func[abi:nn200100](v58);
    std::unique_ptr<gdc::Context>::reset[abi:nn200100]((v1 + 41728), 0);
    std::unique_ptr<md::World>::reset[abi:nn200100]((v1 + 41704), 0);
    v24 = *(v1 + 216);
    *(v1 + 208) = 0;
    *(v1 + 216) = 0;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }

    v25 = *(v1 + 41648);
    if (v25)
    {
      [v25 willDealloc];
    }

    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v26 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *v55 = 0;
      _os_log_impl(&dword_1B2754000, v26, OS_LOG_TYPE_INFO, "Destroy MapEngine End", v55, 2u);
    }

    md::Monitorable<md::ConfigValue<GEOConfigKeyUint64,unsigned long long>>::~Monitorable(v1 + 48016);
    md::Monitorable<md::ConfigValue<GEOConfigKeyUint64,unsigned long long>>::~Monitorable(v1 + 47936);
    md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v1 + 47856);
    md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v1 + 47776);
    md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v1 + 47696);
    md::Monitorable<md::ConfigValue<GEOConfigKeyInteger,int>>::~Monitorable(v1 + 47616);
    md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 47536);
    std::__function::__value_func<BOOL ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 47504);
    md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 47416);
    std::unique_ptr<md::HomeQueueScheduler>::reset[abi:nn200100]((v1 + 47360), 0);
    v27 = *(v1 + 47352);
    *(v1 + 47352) = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = *(v1 + 47344);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    v29 = *(v1 + 47328);
    *(v1 + 47328) = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 47248);
    md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 47168);
    v30 = *v2;
    *v2 = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = *(v1 + 42256);
    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }

    v32 = *(v1 + 42240);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v32);
    }

    v33 = *(v1 + 42096);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v33);
    }

    std::unique_ptr<md::DaVinciGroundSettings>::reset[abi:nn200100]((v1 + 42072), 0);
    std::unique_ptr<md::DaVinciTransitionManager>::reset[abi:nn200100]((v1 + 42064), 0);
    if (*(v1 + 42063) < 0)
    {
      operator delete(*(v1 + 42040));
    }

    v34 = *(v1 + 42024);
    *(v1 + 42024) = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = *(v1 + 42016);
    *(v1 + 42016) = 0;
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v36 = *(v1 + 41960);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v36);
    }

    v37 = *(v1 + 41944);
    *(v1 + 41944) = 0;
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    std::unique_ptr<md::MapEngineSettings>::reset[abi:nn200100]((v1 + 41936), 0);
    v38 = *(v1 + 41928);
    *(v1 + 41928) = 0;
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    *(v1 + 41904) = &unk_1F2A21918;

    std::unique_ptr<md::LayoutContext>::reset[abi:nn200100]((v1 + 41896), 0);
    std::unique_ptr<md::LayoutContext>::reset[abi:nn200100]((v1 + 41888), 0);
    v39 = *(v1 + 41880);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v39);
    }

    std::unique_ptr<md::ARContext>::reset[abi:nn200100]((v1 + 41864), 0);
    ggl::Loader::~Loader((v1 + 41856));
    std::unique_ptr<gdc::Context>::reset[abi:nn200100]((v1 + 41728), 0);
    std::unique_ptr<md::MapDataAccess>::reset[abi:nn200100]((v1 + 41712), 0);
    std::unique_ptr<md::World>::reset[abi:nn200100]((v1 + 41704), 0);
    v40 = *(v1 + 41696);
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v40);
    }

    v41 = *(v1 + 41672);
    *(v1 + 41672) = 0;
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }

    objc_destroyWeak((v1 + 41664));

    ecs2::Flow::~Flow((v1 + 41304));
    std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>>>::~__hash_table(v1 + 41264);
    v42 = *v3;
    if (*v3)
    {
      *(v1 + 41248) = v42;
      operator delete(v42);
    }

    v43 = v1 + 41208;
    v44 = -16384;
    do
    {
      v43 = std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v43) - 32;
      v44 += 32;
    }

    while (v44);
    do
    {
      v45 = *(v1 + v44 + 8464);
      *(v1 + v44 + 8464) = 0;
      if (v45)
      {
        (*(*v45 + 8))(v45);
      }

      v44 -= 8;
    }

    while (v44 != -4096);
    v46 = *(v1 + 4352);
    if (v46)
    {
      *(v1 + 4360) = v46;
      operator delete(v46);
    }

    v47 = *(v1 + 4328);
    if (v47)
    {
      *(v1 + 4336) = v47;
      operator delete(v47);
    }

    v48 = *(v1 + 216);
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v48);
    }

    v49 = *(v1 + 200);
    *(v1 + 200) = 0;
    if (v49)
    {
      MEMORY[0x1B8C62190](v49, 0x20C4093837F09);
    }

    v50 = *(v1 + 192);
    *(v1 + 192) = 0;
    if (v50)
    {
      (*(*v50 + 8))(v50);
    }

    v51 = *(v1 + 152);
    *(v1 + 152) = 0;
    if (v51)
    {
      (*(*v51 + 8))(v51);
    }

    v52 = *(v1 + 144);
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v52);
    }

    *(v1 + 112) = &unk_1F2A218F8;

    v53 = *(v1 + 96);
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v53);
    }

    MEMORY[0x1B8C62190](v1, 0x10F2C406CAF0309);
  }

  +[VKSharedResourcesManager removeResourceUser];
  if (!v57)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  (*(*v57 + 48))(v57);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v56);
}

void sub_1B2EAB18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](&a27);
  md::Monitorable<md::ConfigValue<GEOConfigKeyUint64,unsigned long long>>::~Monitorable(v27 + 48016);
  md::Monitorable<md::ConfigValue<GEOConfigKeyUint64,unsigned long long>>::~Monitorable(v27 + 47936);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v27 + 47856);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v27 + 47776);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v27 + 47696);
  md::Monitorable<md::ConfigValue<GEOConfigKeyInteger,int>>::~Monitorable(v27 + 47616);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v27 + 47536);
  std::__function::__value_func<BOOL ()(BOOL const&)>::~__value_func[abi:nn200100](v27 + 47504);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v27 + 47416);
  std::unique_ptr<md::HomeQueueScheduler>::reset[abi:nn200100]((v27 + 47360), 0);
  v31 = v29[24];
  v29[24] = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = v29[23];
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = v29[21];
  v29[21] = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v27 + 47248);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v27 + 47168);
  v34 = *v29;
  *v29 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(v28 + 1016);
  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = *(v28 + 1000);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  v37 = *(v28 + 856);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  std::unique_ptr<md::DaVinciGroundSettings>::reset[abi:nn200100]((v27 + 42072), 0);
  std::unique_ptr<md::DaVinciTransitionManager>::reset[abi:nn200100]((v27 + 42064), 0);
  if (*(v28 + 823) < 0)
  {
    operator delete(*(v28 + 800));
  }

  v38 = *(v28 + 784);
  *(v28 + 784) = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  v39 = *(v28 + 776);
  *(v28 + 776) = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = *(v28 + 720);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  }

  v41 = *(v28 + 704);
  *(v28 + 704) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  std::unique_ptr<md::MapEngineSettings>::reset[abi:nn200100]((v27 + 41936), 0);
  v42 = *(v28 + 688);
  *(v28 + 688) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  *(v28 + 664) = &unk_1F2A21918;

  std::unique_ptr<md::LayoutContext>::reset[abi:nn200100]((v27 + 41896), 0);
  std::unique_ptr<md::LayoutContext>::reset[abi:nn200100]((v27 + 41888), 0);
  v43 = *(v28 + 640);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  std::unique_ptr<md::ARContext>::reset[abi:nn200100]((v27 + 41864), 0);
  ggl::Loader::~Loader((v27 + 41856));
  std::unique_ptr<gdc::Context>::reset[abi:nn200100]((v27 + 41728), 0);
  std::unique_ptr<md::MapDataAccess>::reset[abi:nn200100]((v27 + 41712), 0);
  std::unique_ptr<md::World>::reset[abi:nn200100]((v27 + 41704), 0);
  v44 = *(v28 + 456);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v44);
  }

  v45 = *(v28 + 432);
  *(v28 + 432) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  objc_destroyWeak((v27 + 41664));

  ecs2::Flow::~Flow((v27 + 41304));
  std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>>>::~__hash_table(v27 + 41264);
  v46 = *v28;
  if (*v28)
  {
    *(v28 + 8) = v46;
    operator delete(v46);
  }

  v47 = v27 + 41208;
  v48 = -16384;
  do
  {
    v47 = std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v47) - 32;
    v48 += 32;
  }

  while (v48);
  v49 = v27 + 8464;
  while (1)
  {
    v50 = *(v49 + v48);
    *(v49 + v48) = 0;
    if (v50)
    {
      (*(*v50 + 8))(v50);
    }

    v48 -= 8;
    if (v48 == -4096)
    {
      v51 = *(v27 + 4352);
      if (v51)
      {
        *(v27 + 4360) = v51;
        operator delete(v51);
      }

      v52 = *(v27 + 4328);
      if (v52)
      {
        *(v27 + 4336) = v52;
        operator delete(v52);
      }

      v53 = *(v27 + 216);
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v53);
      }

      v54 = *(v27 + 200);
      *(v27 + 200) = 0;
      if (v54)
      {
        MEMORY[0x1B8C62190](v54, 0x20C4093837F09);
      }

      v55 = *(v27 + 192);
      *(v27 + 192) = 0;
      if (v55)
      {
        (*(*v55 + 8))(v55);
      }

      v56 = *(v27 + 152);
      *(v27 + 152) = 0;
      if (v56)
      {
        (*(*v56 + 8))(v56);
      }

      v57 = *(v27 + 144);
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v57);
      }

      *(v27 + 112) = &unk_1F2A218F8;

      v58 = *(v27 + 96);
      if (v58)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v58);
      }

      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a11);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<md::RunnableMapEngineCommand::operator()(std::function<void ()(void)>)::$_0 &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext> &>(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(**a1 + 48);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v4, *a1 + 8);
  v2 = CACurrentMediaTime();
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v5, v4);
  md::MapEngine::onRenderTimerFired(v1, v5, v2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B2EAB844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::InteractiveMapEngineCommandExecutor::nextCommand(NSObject  {objcproto17OS_dispatch_queue}*,void const*,std::shared_ptr<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>> const&,std::shared_ptr<geo::Semaphore> const&)::$_1,std::allocator<md::InteractiveMapEngineCommandExecutor::nextCommand(NSObject  {objcproto17OS_dispatch_queue}*,void const*,std::shared_ptr<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>> const&,std::shared_ptr<geo::Semaphore> const&)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *(a1 + 8);
  std::mutex::lock(v2);
  ++*(v2 + 112);
  std::condition_variable::notify_one((v2 + 64));
  std::mutex::unlock(v2);
  v3 = v1[2];
  v4 = v1[3];

  md::InteractiveMapEngineCommandExecutor::nextCommand(v3, v4, v1 + 4, v1);
}

void std::__function::__func<md::InteractiveMapEngineCommandExecutor::nextCommand(NSObject  {objcproto17OS_dispatch_queue}*,void const*,std::shared_ptr<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>> const&,std::shared_ptr<geo::Semaphore> const&)::$_1,std::allocator<md::InteractiveMapEngineCommandExecutor::nextCommand(NSObject  {objcproto17OS_dispatch_queue}*,void const*,std::shared_ptr<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>> const&,std::shared_ptr<geo::Semaphore> const&)::$_1>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  operator delete(a1);
}

void std::__function::__func<md::InteractiveMapEngineCommandExecutor::nextCommand(NSObject  {objcproto17OS_dispatch_queue}*,void const*,std::shared_ptr<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>> const&,std::shared_ptr<geo::Semaphore> const&)::$_1,std::allocator<md::InteractiveMapEngineCommandExecutor::nextCommand(NSObject  {objcproto17OS_dispatch_queue}*,void const*,std::shared_ptr<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>> const&,std::shared_ptr<geo::Semaphore> const&)::$_1>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

id std::__function::__func<md::InteractiveMapEngineCommandExecutor::nextCommand(NSObject  {objcproto17OS_dispatch_queue}*,void const*,std::shared_ptr<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>> const&,std::shared_ptr<geo::Semaphore> const&)::$_1,std::allocator<md::InteractiveMapEngineCommandExecutor::nextCommand(NSObject  {objcproto17OS_dispatch_queue}*,void const*,std::shared_ptr<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>> const&,std::shared_ptr<geo::Semaphore> const&)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F2A0C910;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = *(a1 + 32);
  v7 = *(a1 + 48);
  *(a2 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::InteractiveMapEngineCommandExecutor::nextCommand(NSObject  {objcproto17OS_dispatch_queue}*,void const*,std::shared_ptr<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>> const&,std::shared_ptr<geo::Semaphore> const&)::$_1,std::allocator<md::InteractiveMapEngineCommandExecutor::nextCommand(NSObject  {objcproto17OS_dispatch_queue}*,void const*,std::shared_ptr<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>> const&,std::shared_ptr<geo::Semaphore> const&)::$_1>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A0C910;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::InteractiveMapEngineCommandExecutor::nextCommand(NSObject  {objcproto17OS_dispatch_queue}*,void const*,std::shared_ptr<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>> const&,std::shared_ptr<geo::Semaphore> const&)::$_1,std::allocator<md::InteractiveMapEngineCommandExecutor::nextCommand(NSObject  {objcproto17OS_dispatch_queue}*,void const*,std::shared_ptr<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>> const&,std::shared_ptr<geo::Semaphore> const&)::$_1>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A0C910;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md16DisplayLinkFiredENS8_16DestroyMapEngineENS8_11RenderSceneENS8_20RenderSceneInContextEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJS9_SA_SB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  if (*(v3 + 40) != 3)
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>>::__emplace[abi:nn200100]<3ul,md::RenderSceneInContext>(v3, a3);
  }

  *a2 = *a3;
  return std::__function::__value_func<void ()(void)>::operator=[abi:nn200100]((a2 + 1), (a3 + 1));
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>>::__emplace[abi:nn200100]<3ul,md::RenderSceneInContext>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (v4 != -1)
  {
    (off_1F2A0C7F0[v4])(&v6, a1);
  }

  *(a1 + 40) = -1;
  *a1 = *a2;
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](a1 + 8, (a2 + 1));
  *(a1 + 40) = 3;
  return a1;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md16DisplayLinkFiredENS8_16DestroyMapEngineENS8_11RenderSceneENS8_20RenderSceneInContextEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJS9_SA_SB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(v3 + 40) == 2)
  {
    return std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](a2, a3);
  }

  else
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>>::__emplace[abi:nn200100]<2ul,md::RenderScene>(v3, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>>::__emplace[abi:nn200100]<2ul,md::RenderScene>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4 != -1)
  {
    (off_1F2A0C7F0[v4])(&v6, a1);
  }

  *(a1 + 40) = -1;
  result = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](a1, a2);
  *(a1 + 40) = 2;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md16DisplayLinkFiredENS8_16DestroyMapEngineENS8_11RenderSceneENS8_20RenderSceneInContextEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJS9_SA_SB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 40);
  if (v2 != -1)
  {
    if (v2 == 1)
    {
      return result;
    }

    result = (off_1F2A0C7F0[v2])(&v3, v1);
  }

  *(v1 + 40) = 1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md16DisplayLinkFiredENS8_16DestroyMapEngineENS8_11RenderSceneENS8_20RenderSceneInContextEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJS9_SA_SB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 40);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_1F2A0C7F0[v2])(&v3, v1);
  }

  *(v1 + 40) = 0;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,std::__unordered_map_hasher<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandHash,md::MapEngineCommandEqual,true>,std::__unordered_map_equal<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandEqual,md::MapEngineCommandHash,true>,std::allocator<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>>>::find<md::RunnableMapEngineCommand>(void *a1, unsigned int a2)
{
  v2 = a2;
  if (a2 == -1)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2;
  }

  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v4)
    {
      v2 = v3 % *&v4;
    }
  }

  else
  {
    v2 = (*&v4 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v2);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 14) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v8 >= *&v4)
        {
          v8 %= *&v4;
        }
      }

      else
      {
        v8 &= *&v4 - 1;
      }

      if (v8 != v2)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md16DisplayLinkFiredENS8_16DestroyMapEngineENS8_11RenderSceneENS8_20RenderSceneInContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJS9_SA_SB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t *a1, void *a2, void *a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (*(*a1 + 40) == 3)
  {
    *a2 = *a3;

    return std::function<void ()(void)>::operator=((a2 + 1), (a3 + 1));
  }

  else
  {
    v5 = *a3;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v6, (a3 + 1));
    std::__variant_detail::__assignment<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>>::__emplace[abi:nn200100]<3ul,md::RenderSceneInContext>(v3, &v5);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v6);
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md16DisplayLinkFiredENS8_16DestroyMapEngineENS8_11RenderSceneENS8_20RenderSceneInContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJS9_SA_SB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (*(*a1 + 40) == 2)
  {

    return std::function<void ()(void)>::operator=(a2, a3);
  }

  else
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v5, a3);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>>::__emplace[abi:nn200100]<2ul,md::RenderScene>(v3, v5);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
  }
}

void sub_1B2EAC050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md16DisplayLinkFiredENS8_16DestroyMapEngineENS8_11RenderSceneENS8_20RenderSceneInContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJS9_SA_SB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 40);
  if (v2 != -1)
  {
    if (v2 == 1)
    {
      return result;
    }

    result = (off_1F2A0C7F0[v2])(&v3, v1);
  }

  *(v1 + 40) = 1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md16DisplayLinkFiredENS8_16DestroyMapEngineENS8_11RenderSceneENS8_20RenderSceneInContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJS9_SA_SB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 40);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_1F2A0C7F0[v2])(&v3, v1);
  }

  *(v1 + 40) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext> &&>(void **a1, void *a2)
{
  v2 = *a1;
  *v2 = *a2;
  return std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100]((v2 + 1), (a2 + 1));
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md16DisplayLinkFiredENS8_16DestroyMapEngineENS8_11RenderSceneENS8_20RenderSceneInContextEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJS9_SA_SB_SC_EEEEEEDcSM_DpT0_(void **a1, void *a2)
{
  v2 = *a1;
  *v2 = *a2;
  return std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100]((v2 + 1), (a2 + 1));
}

void md::InteractiveMapEngineCommandExecutor::~InteractiveMapEngineCommandExecutor(md::InteractiveMapEngineCommandExecutor *this)
{
  md::InteractiveMapEngineCommandExecutor::~InteractiveMapEngineCommandExecutor(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0C758;
  v2 = *(this + 3);
  if (v2)
  {
    std::mutex::lock((v2 + 8));
    *v2 = 1;
    std::__list_imp<md::RunnableMapEngineCommand>::clear((v2 + 120));
    if (*(v2 + 168))
    {
      std::__hash_table<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,std::__unordered_map_hasher<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandHash,md::MapEngineCommandEqual,true>,std::__unordered_map_equal<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandEqual,md::MapEngineCommandHash,true>,std::allocator<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>>>::__deallocate_node(*(v2 + 160));
      *(v2 + 160) = 0;
      v3 = *(v2 + 152);
      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          *(*(v2 + 144) + 8 * i) = 0;
        }
      }

      *(v2 + 168) = 0;
    }

    std::condition_variable::notify_all((v2 + 72));
    std::mutex::unlock((v2 + 8));
  }

  v5 = *(this + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B2EAC274(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(a1);
}

void std::__list_imp<md::RunnableMapEngineCommand>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = *(v2 + 14);
        if (v6 != -1)
        {
          (off_1F2A0C7F0[v6])(&v7, v2 + 2);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__hash_table<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,std::__unordered_map_hasher<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandHash,md::MapEngineCommandEqual,true>,std::__unordered_map_equal<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandEqual,md::MapEngineCommandHash,true>,std::allocator<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = *(v1 + 14);
      if (v3 != -1)
      {
        (off_1F2A0C7F0[v3])(&v4, v1 + 2);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t md::SnapshotMapEngineCommandExecutor::schedule(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](v6, a2);
  v8 = *(a1 + 8);
  v5[0] = &unk_1F2A0C958;
  v5[3] = v5;
  md::RunnableMapEngineCommand::operator()(v6, v5);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
  if (v7 != -1)
  {
    return (off_1F2A0C7F0[v7])(&v4, v6);
  }

  return result;
}

void sub_1B2EAC46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a14);
  if (a23 != -1)
  {
    (off_1F2A0C7F0[a23])(&a13, &a18);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<geo::Semaphore>::__on_zero_shared(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 88));

  std::mutex::~mutex((a1 + 24));
}

void std::__shared_ptr_emplace<geo::Semaphore>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0C898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>>::__on_zero_shared(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,std::__unordered_map_hasher<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandHash,md::MapEngineCommandEqual,true>,std::__unordered_map_equal<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandEqual,md::MapEngineCommandHash,true>,std::allocator<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>>>::__deallocate_node(*(a1 + 184));
  v2 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  std::__list_imp<md::RunnableMapEngineCommand>::clear((a1 + 144));
  std::condition_variable::~condition_variable((a1 + 96));

  std::mutex::~mutex((a1 + 32));
}

void std::__shared_ptr_emplace<geo::concurrent_queue_base<md::RunnableMapEngineCommand,geo::UniqueStoragePolicy<md::RunnableMapEngineCommand,geo::ReplaceDuplicatesPolicy<md::RunnableMapEngineCommand>,md::MapEngineCommandHash,md::MapEngineCommandEqual>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0C860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::FontGlyph>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::weak_interface_ptr<md::LabelGlyphImageLoader>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0C9A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelGlyphImageLoader::queueCommand(void *a1, uint64_t a2)
{
  v13[9] = *MEMORY[0x1E69E9840];
  std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v8, *(a1[3] + 8), *(a1[3] + 16));
  v5 = v8;
  v4 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v6 = a1[1];
  v7 = a1[2];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v10[0] = v5;
  v10[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v6;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v13, a2);
  v13[8] = 0;
  operator new();
}

void sub_1B2EAC9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v19 - 88);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v18);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v17)
    {
LABEL_5:
      if (!v16)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v17)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  if (!v16)
  {
LABEL_7:
    _Unwind_Resume(a1);
  }

LABEL_6:
  std::__shared_weak_count::__release_weak(v16);
  goto LABEL_7;
}

void std::__function::__func<md::LabelGlyphImageLoader::queueCommand(std::function<void ()(void)>)::$_0,std::allocator<md::LabelGlyphImageLoader::queueCommand(std::function<void ()(void)>)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[1];
      if (v5)
      {
        std::recursive_mutex::lock((v5 + 24));
        v6 = a1[3];
        std::mutex::lock(v6);
        if (v6[1].__m_.__sig)
        {
          v7 = a1[8];
          if (!v7)
          {
            v8 = std::__throw_bad_function_call[abi:nn200100]();
            std::mutex::unlock(v6);
            std::recursive_mutex::unlock((v5 + 24));
            std::__shared_weak_count::__release_shared[abi:nn200100](v4);
            _Unwind_Resume(v8);
          }

          (*(*v7 + 48))(v7);
        }

        std::mutex::unlock(v6);
        std::recursive_mutex::unlock((v5 + 24));
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void std::__function::__func<md::LabelGlyphImageLoader::queueCommand(std::function<void ()(void)>)::$_0,std::allocator<md::LabelGlyphImageLoader::queueCommand(std::function<void ()(void)>)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void std::__function::__func<md::LabelGlyphImageLoader::queueCommand(std::function<void ()(void)>)::$_0,std::allocator<md::LabelGlyphImageLoader::queueCommand(std::function<void ()(void)>)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t std::__function::__func<md::LabelGlyphImageLoader::queueCommand(std::function<void ()(void)>)::$_0,std::allocator<md::LabelGlyphImageLoader::queueCommand(std::function<void ()(void)>)::$_0>,void ()(void)>::__clone(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *a2 = &unk_1F2A0CAF8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1[4];
  a2[3] = a1[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100]((a2 + 5), (a1 + 5));
}

void sub_1B2EACC78(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2EACD34(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelGlyphImageLoader::queueCommand(std::function<void ()(void)>)::$_0,std::allocator<md::LabelGlyphImageLoader::queueCommand(std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A0CAF8;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelGlyphImageLoader::queueCommand(std::function<void ()(void)>)::$_0,std::allocator<md::LabelGlyphImageLoader::queueCommand(std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A0CAF8;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void std::__function::__func<md::LabelGlyphImageLoader::onUpscaleFactorDidChange(void)::$_0,std::allocator<md::LabelGlyphImageLoader::onUpscaleFactorDidChange(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (v1 + 68);
  if (!*(v1 + 72))
  {
    v2 = MEMORY[0x1E69E5358];
  }

  atomic_store(*v2, (*v1 + 104));
  md::FontAtlas::clear(*(*(v1 + 24) + 304));
}

uint64_t std::__function::__func<md::LabelGlyphImageLoader::onUpscaleFactorDidChange(void)::$_0,std::allocator<md::LabelGlyphImageLoader::onUpscaleFactorDidChange(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0CA68;
  a2[1] = v2;
  return result;
}

void *std::vector<std::shared_ptr<md::FontGlyph>,geo::allocator_adapter<std::shared_ptr<md::FontGlyph>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::FontGlyph>*,std::shared_ptr<md::FontGlyph>*>(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = result;
    v8 = mdm::zone_mallocator::instance(result);
    result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::FontGlyph>>(v8, a4);
    *v7 = result;
    v7[1] = result;
    for (v7[2] = &result[2 * a4]; a2 != a3; result += 2)
    {
      v9 = a2[1];
      *result = *a2;
      result[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
    }

    v7[1] = result;
  }

  return result;
}

void std::__function::__func<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0,std::allocator<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  if (v2 != v3)
  {
    v4 = a1[1];
    do
    {
      v5 = *v2;
      v2 += 2;
      (***v4)(*v4, v5);
      v6 = atomic_load((v4 + 76));
      atomic_store(v6, (v5 + 52));
      atomic_store(1u, (v5 + 109));
    }

    while (v2 != v3);
  }

  v7 = a1[7];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a1[9];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B2EAD134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  std::recursive_mutex::lock((v2 + 24));
  v3 = *(a1 + 24);
  std::mutex::lock(v3);
  sig = v3[1].__m_.__sig;
  if (sig)
  {
    atomic_fetch_add((sig + 64), 0xFFFFFFFF);
    v5 = *(a1 + 8);
    *(v5 + 3038) = 1;
    *(v5 + 3040) = 1;
    v6 = atomic_load((v5 + 3053));
    if (v6)
    {
      v7 = *(v5 + 136);
      if (v7)
      {
        v8 = *(v7 + 56);
        if (v8)
        {
          std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v8, v5, 9);
        }
      }
    }
  }

  std::mutex::unlock(v3);

  std::recursive_mutex::unlock((v2 + 24));
}

void sub_1B2EAD20C(_Unwind_Exception *a1)
{
  std::mutex::unlock(v1);
  std::recursive_mutex::unlock((v2 + 24));
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(a1 + 8);

  operator delete(a1);
}

void *std::__function::__func<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F2A0CA20;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A0CA20;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A0CA20;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void std::__function::__func<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0,std::allocator<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4.__vftable = (a1 + 16);
  std::vector<std::shared_ptr<md::FontGlyph>,geo::allocator_adapter<std::shared_ptr<md::FontGlyph>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);

  operator delete(a1);
}

void std::__function::__func<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0,std::allocator<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4.__vftable = (a1 + 16);
  std::vector<std::shared_ptr<md::FontGlyph>,geo::allocator_adapter<std::shared_ptr<md::FontGlyph>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
}

void *std::__function::__func<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0,std::allocator<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F2A0C9D8;
  *(a2 + 8) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = *(a1 + 40);
  result = std::vector<std::shared_ptr<md::FontGlyph>,geo::allocator_adapter<std::shared_ptr<md::FontGlyph>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::FontGlyph>*,std::shared_ptr<md::FontGlyph>*>((a2 + 16), *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 4);
  v6 = *(a1 + 56);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0,std::allocator<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A0C9D8;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4.__vftable = (a1 + 16);
  std::vector<std::shared_ptr<md::FontGlyph>,geo::allocator_adapter<std::shared_ptr<md::FontGlyph>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0,std::allocator<md::LabelGlyphImageLoader::startQueuedLoads(void)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A0C9D8;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5.__vftable = (a1 + 16);
  std::vector<std::shared_ptr<md::FontGlyph>,geo::allocator_adapter<std::shared_ptr<md::FontGlyph>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::FontGlyph>>(uint64_t a1, uint64_t a2)
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

void std::__function::__func<md::LabelGlyphImageLoader::onContentScaleDidChange(void)::$_0,std::allocator<md::LabelGlyphImageLoader::onContentScaleDidChange(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[3];
  *(*v1 + 108) = (*(*(*(v2 + 232) + 8) + 176) * *(*(v2 + 232) + 56));
  md::FontAtlas::clear(*(v2 + 304));
}

uint64_t std::__function::__func<md::LabelGlyphImageLoader::onContentScaleDidChange(void)::$_0,std::allocator<md::LabelGlyphImageLoader::onContentScaleDidChange(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0CAB0;
  a2[1] = v2;
  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::DistanceCompressedVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::DistanceCompressedVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinci::DistanceCompressedMesh::~DistanceCompressedMesh(ggl::DaVinci::DistanceCompressedMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::DaVinci::DistanceCompressedMesh::~DistanceCompressedMesh(ggl::DaVinci::DistanceCompressedMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::DistanceCompressedVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::DistanceCompressedVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

float md::mun::frustumFromGEOFrustumCorners(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  for (i = 0; i != 96; i += 48)
  {
    v4 = &v16[i];
    v5 = *(a2 + i);
    v6 = *(a2 + i + 32);
    v4[1] = *(a2 + i + 16);
    v4[2] = v6;
    *v4 = v5;
  }

  v7 = 0;
  v8 = a1 + 96;
  do
  {
    v9 = v8 + v7;
    *v9 = *&v16[v7];
    *(v9 + 8) = *&v16[v7 + 8];
    v7 += 12;
  }

  while (v7 != 96);
  v10 = &qword_1B33B3FB8;
  v11 = 6;
  do
  {
    v12 = v8 + 12 * *(v10 - 2);
    v13 = v8 + 12 * *(v10 - 1);
    v14 = *v10;
    v10 += 3;
    gm::Plane3<float>::Plane3(&v17, v12, v13, v8 + 12 * v14);
    *v2 = v17;
    *(v2 + 8) = v18;
    result = v19;
    *(v2 + 12) = v19;
    v2 += 16;
    --v11;
  }

  while (v11);
  return result;
}

unint64_t md::mun::MetadataResourceFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a3 + 8);
  gdc::ResourceKey::getInt32(v5, 0);
  gdc::ResourceKey::getInt32(v5, 1u);
  gdc::ResourceKey::getInt32(v5, 2u);
  [v4 size];
  [v4 scale];
  v6 = [v4 style];
  v7 = GEOTileKeyMake();
  if (v6 <= 0x19 && ((1 << v6) & 0x200101C) != 0)
  {
    v8 = 128;
  }

  else
  {
    v8 = (v6 == 26) << 7;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFF7FLL;

  return v8 | v9;
}

void md::mun::MetadataResourceFetcher::~MetadataResourceFetcher(md::mun::MetadataResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::mun::MetadataResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0CC78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<unsigned long,double>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,double>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,double>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long,double>,mdm::zone_mallocator>>::__deallocate_node(mdm::zone_mallocator *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = mdm::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *>>(v3, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *>>(uint64_t a1, void *a2)
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

id md::RoadSignArtworkGenerator::generateRoadSignArtwork(uint64_t a1, void *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v227 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v135 = [v10 componentsSeparatedByString:@"\n"];
  v11 = [v135 objectAtIndex:0];
  v137 = v11;
  if ([v135 count] < 2)
  {
    v15 = 0;
  }

  else
  {
    v12 = [v11 length];
    v13 = [v10 length];
    v14 = v13 + ~[v137 length];
    if (v14)
    {
      v15 = [v10 substringWithRange:{v12 + 1, v14}];
    }

    else
    {
      v15 = 0;
    }

    v11 = v137;
  }

  v16 = *a3;
  v18 = *(a3 + 8);
  v17 = *(a3 + 16);
  v150 = *(a3 + 56);
  v151 = *(a3 + 72);
  v152 = *(a3 + 88);
  v148 = *(a3 + 24);
  v149 = *(a3 + 40);
  v146 = *(a3 + 104);
  v147 = *(a3 + 120);
  v133 = *(a3 + 136);
  v134 = *(a3 + 144);
  v19 = *(a3 + 152);
  v20 = a4[1];
  v190 = *a4;
  v191 = v20;
  v192 = a4[2];
  v193 = *(a4 + 6);
  v196 = *(a4 + 80);
  if (*(a4 + 79) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__src, *(a4 + 7), *(a4 + 8));
  }

  else
  {
    __src = *(a4 + 56);
    v195 = *(a4 + 9);
  }

  v199 = *(a4 + 112);
  if (*(a4 + 111) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&v197, *(a4 + 11), *(a4 + 12));
  }

  else
  {
    v197 = *(a4 + 88);
    v198 = *(a4 + 13);
  }

  v200 = *(a4 + 120);
  v201 = *(a4 + 68);
  v21 = *a7;
  v22 = a7[1];
  v131 = v21;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v145 = v11;
  v23 = v15;
  v225 = &unk_1F2A0CCB0;
  v226 = 0;
  v223 = &unk_1F2A5F268;
  v224 = 0;
  v24 = *a6 != 0;
  v132 = v16;
  if (*a6)
  {
    v25 = *a6;
    v26 = *(*a6 + 104);
    if (v26)
    {
      v27 = grl::IconMetricsRenderResult::size(v26);
      v133 = *v27;
      v134 = v27[1];
    }
  }

  else
  {
    v25 = 0;
  }

  v141 = v22;
  v144 = v23;
  v28 = +[VKSharedResourcesManager sharedResources];
  v29 = [v28 grlFontManager];
  v31 = *v29;
  v30 = *(v29 + 8);
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v136 = v30;

  if (!v31)
  {
    v34 = 0;
    v35 = v144;
    v36 = v141;
    v37 = v136;
    goto LABEL_157;
  }

  attrString = objc_alloc_init(MEMORY[0x1E696AD40]);
  if (v145)
  {
    if (v195 >= 0)
    {
      p_src = &__src;
    }

    else
    {
      p_src = __src;
    }

    std::string::basic_string[abi:nn200100]<0>(__p, p_src);
    v33 = round(*&v190 * *(&v192 + 1) * *(&v190 + 1));
    grl::FontManager::fontForKey(&v221, v31, __p, v33);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v221 = &unk_1F2A5F810;
    v222 = 0;
  }

  if (v23)
  {
    if (v198 >= 0)
    {
      v38 = &v197;
    }

    else
    {
      v38 = v197;
    }

    std::string::basic_string[abi:nn200100]<0>(__p, v38);
    v39 = round(*&v190 * v193 * *(&v190 + 1));
    grl::FontManager::fontForKey(&v219, v31, __p, v39);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v219 = &unk_1F2A5F810;
    v220 = 0;
  }

  v217 = &unk_1F2A5F810;
  cf = 0;
  v215 = &unk_1F29E1130;
  v216 = 0;
  if (!v145)
  {
    if (!v23)
    {
      goto LABEL_65;
    }

    v48 = v23;
    goto LABEL_53;
  }

  v40 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v145];
  v41 = v222;
  if (v222)
  {
    v42 = [v145 length];
    [v40 addAttribute:*MEMORY[0x1E6965658] value:v41 range:{0, v42}];
    v43 = v222;
    v44 = cf;
    if (v222)
    {
      CFRetain(v222);
    }

    cf = v43;
    if (v44)
    {
      CFRelease(v44);
    }
  }

  if (*(a5 + 6) == 1)
  {
    v45 = CGColorCreate(*(a1 + 64), (a5 + 200));
    v46 = [v145 length];
    [v40 addAttribute:*MEMORY[0x1E69659D8] value:v45 range:{0, v46}];
    v47 = v216;
    if (v45)
    {
      CFRetain(v45);
    }

    v216 = v45;
    if (v47)
    {
      CFRelease(v47);
    }

    CGColorRelease(v45);
  }

  [(NSMutableAttributedString *)attrString appendAttributedString:v40];

  if (v144)
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v144];

LABEL_53:
    v49 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v48];
    v50 = v220;
    if (v220)
    {
      v51 = [v48 length];
      [v49 addAttribute:*MEMORY[0x1E6965658] value:v50 range:{0, v51}];
      v52 = v220;
      v53 = cf;
      if (v220)
      {
        CFRetain(v220);
      }

      cf = v52;
      if (v53)
      {
        CFRelease(v53);
      }
    }

    if (*(a5 + 7) == 1)
    {
      v54 = CGColorCreate(*(a1 + 64), (a5 + 232));
      v55 = [v48 length];
      [v49 addAttribute:*MEMORY[0x1E69659D8] value:v54 range:{0, v55}];
      v56 = v216;
      if (v54)
      {
        CFRetain(v54);
      }

      v216 = v54;
      if (v56)
      {
        CFRelease(v56);
      }

      CGColorRelease(v54);
    }

    [(NSMutableAttributedString *)attrString appendAttributedString:v49];
  }

LABEL_65:
  v57 = v25;
  if (v222)
  {
    CFRelease(v222);
    v222 = 0;
  }

  if (v220)
  {
    CFRelease(v220);
    v220 = 0;
  }

  v58 = *(&v200 + 1);
  if (v201 < 2u)
  {
    v73 = CTLineCreateWithAttributedString(attrString);
    v75 = v224;
    v224 = v73;
    if (v75)
    {
      CFRelease(v75);
      v73 = v224;
    }

    isLineRTL = md::RoadSignArtworkGenerator::isLineRTL(v73, v74);
    v76 = *(&v200 + 1);
    *__p = 0;
    descent = 0.0;
    TypographicBounds = CTLineGetTypographicBounds(v224, __p, &descent, 0);
    v78 = [(NSMutableAttributedString *)attrString string];
    if ([v78 canBeConvertedToEncoding:5])
    {
      v79 = 1;
    }

    else
    {
      v79 = [v78 canBeConvertedToEncoding:9];
    }

    if (v58 != 0.0 && TypographicBounds > v17 * v76)
    {
      md::RoadSignArtworkGenerator::truncateAttributedStringWithEllipsis(a1, attrString, v224, v17 * v76, cf, v216);
      v85 = CTLineCreateWithAttributedString(attrString);
      v86 = v224;
      v224 = v85;
      if (v86)
      {
        CFRelease(v86);
        v85 = v224;
      }

      TypographicBounds = CTLineGetTypographicBounds(v85, __p, &descent, 0);
    }

    if (v79)
    {
      v87 = *__p - descent;
    }

    else
    {
      *(&v87 - 3) = CTLineGetImageBounds(v224, 0);
    }

    v126 = 0;
    v88 = (v87 + round(*&v190 * *(&v191 + 1) * *(&v190 + 1)) * 2.0) / (v18 * v17);
    *&v200 = ceil(TypographicBounds);
    v89 = 0.0;
  }

  else
  {
    v59 = CTFramesetterCreateWithAttributedString(attrString);
    v60 = v226;
    v226 = v59;
    if (v60)
    {
      CFRelease(v60);
      v59 = v226;
    }

    v234.width = v17 * v58;
    v234.height = 1.79769313e308;
    v229.location = 0;
    v229.length = 0;
    v61 = CTFramesetterSuggestFrameSizeWithConstraints(v59, v229, 0, v234, 0);
    Mutable = CGPathCreateMutable();
    v63 = ceil(v61.width);
    v64 = ceil(v61.height);
    v236.origin.x = 0.0;
    v236.origin.y = 0.0;
    v236.size.width = v63;
    v236.size.height = v64;
    CGPathAddRect(Mutable, 0, v236);
    v230.location = 0;
    v230.length = 0;
    v65 = CTFramesetterCreateFrame(v226, v230, Mutable, 0);
    Lines = CTFrameGetLines(v65);
    Count = CFArrayGetCount(Lines);
    v127 = v57;
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v68 = Lines;
    v70 = [(__CFArray *)v68 countByEnumeratingWithState:&v186 objects:v214 count:16];
    if (v70)
    {
      v71 = *v187;
      while (2)
      {
        for (i = 0; i != v70; ++i)
        {
          if (*v187 != v71)
          {
            objc_enumerationMutation(v68);
          }

          if (md::RoadSignArtworkGenerator::isLineRTL(*(*(&v186 + 1) + 8 * i), v69))
          {
            isLineRTL = 1;
            goto LABEL_86;
          }
        }

        v70 = [(__CFArray *)v68 countByEnumeratingWithState:&v186 objects:v214 count:16];
        if (v70)
        {
          continue;
        }

        break;
      }
    }

    isLineRTL = 0;
LABEL_86:

    if (Count <= v201)
    {
      v81 = v127;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v68, v201 - 1);
      v81 = v127;
      md::RoadSignArtworkGenerator::truncateAttributedStringWithEllipsis(a1, attrString, ValueAtIndex, v63, cf, v216);
      v82 = CTFramesetterCreateWithAttributedString(attrString);
      v83 = v226;
      v226 = v82;
      if (v83)
      {
        CFRelease(v83);
        v82 = v226;
      }

      v231.location = 0;
      v231.length = 0;
      v235.width = v63;
      v235.height = v64;
      v84 = CTFramesetterSuggestFrameSizeWithConstraints(v82, v231, 0, v235, __p);
      v63 = ceil(v84.width);
      v64 = ceil(v84.height);
    }

    CFRelease(v65);
    CFRelease(Mutable);
    v126 = v24;
    if (v81 && Count > 1 || *(a1 + 80) == 1)
    {
      path = CGPathCreateMutable();
      v237.origin.x = 0.0;
      v237.origin.y = 0.0;
      v237.size.width = v63;
      v237.size.height = v64;
      CGPathAddRect(path, 0, v237);
      v232.location = 0;
      v232.length = 0;
      frame = CTFramesetterCreateFrame(v226, v232, path, 0);
      v90 = CTFrameGetLines(frame);
      v91 = CFArrayGetCount(v90);
      if (v91)
      {
        if (!(v91 >> 60))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v91);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v233.location = 0;
      v233.length = 0;
      CTFrameGetLineOrigins(frame, v233, 0);
      CFRelease(frame);
      v81 = v127;
      CFRelease(path);
    }

    v92 = v64 * 0.5;
    if (v81)
    {
      v89 = v64 * 0.5;
    }

    else
    {
      v89 = 0.0;
    }

    v93 = round(*&v190 * *(&v191 + 1) * *(&v190 + 1));
    v88 = (v64 + v93 * 2.0) / (v18 * v17);
    *&v200 = ceil(v63);
    if (!v81)
    {
      v92 = v88 * 0.5;
    }

    v19 = floor(floor((v93 + v92) / (v18 * v17)) - v88 * 0.5) * (v18 * v17);
  }

  HIBYTE(v201) = isLineRTL;
  if (v226)
  {
    v94 = [VKRoadSignArtwork alloc];
    v173 = v18;
    v174 = v17;
    v176 = v149;
    v177 = v150;
    v95 = v226;
    descent = v132;
    v178 = v151;
    v179 = v152;
    v175 = v148;
    v181 = v146;
    v182 = v147;
    v180 = v88;
    v183 = v133;
    v184 = v134;
    v185 = v19;
    v202 = v190;
    v203 = v191;
    v204 = v192;
    v205 = v193;
    v208 = v196;
    if (SHIBYTE(v195) < 0)
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&v206, __src, *(&__src + 1));
    }

    else
    {
      v206 = __src;
      v207 = v195;
    }

    v211 = v199;
    if (SHIBYTE(v198) < 0)
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&v209, v197, *(&v197 + 1));
    }

    else
    {
      v209 = v197;
      v210 = v198;
    }

    v212 = v200;
    v213 = v201;
    *__p = *a5;
    *&__p[8] = *(a5 + 8);
    v156 = *(a5 + 24);
    v157 = *(a5 + 40);
    v158 = *(a5 + 56);
    v159 = *(a5 + 72);
    v160 = *(a5 + 88);
    v162 = *(a5 + 120);
    v161 = *(a5 + 104);
    v98 = *(a5 + 136);
    v164 = *(a5 + 152);
    v163 = v98;
    v166 = *(a5 + 184);
    v165 = *(a5 + 168);
    v168 = *(a5 + 216);
    v167 = *(a5 + 200);
    v170 = *(a5 + 248);
    v169 = *(a5 + 232);
    v171 = *(a5 + 264);
    v153 = v131;
    v154 = v141;
    if (v141)
    {
      atomic_fetch_add_explicit(&v141->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v99 = [(VKRoadSignArtwork *)v94 initWithFramesetter:v95 signMetrics:&descent textMetrics:&v202 signColoring:__p glyph:a6 cgGlyph:0 resourceStore:&v153];
  }

  else
  {
    if (!v224)
    {
      v100 = 0;
      goto LABEL_148;
    }

    v96 = [VKRoadSignArtwork alloc];
    v173 = v18;
    v174 = v17;
    v176 = v149;
    v177 = v150;
    v97 = v224;
    descent = v132;
    v178 = v151;
    v179 = v152;
    v175 = v148;
    v181 = v146;
    v182 = v147;
    v180 = v88;
    v183 = v133;
    v184 = v134;
    v185 = v19;
    v202 = v190;
    v203 = v191;
    v204 = v192;
    v205 = v193;
    v208 = v196;
    if (SHIBYTE(v195) < 0)
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&v206, __src, *(&__src + 1));
    }

    else
    {
      v206 = __src;
      v207 = v195;
    }

    v211 = v199;
    if (SHIBYTE(v198) < 0)
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&v209, v197, *(&v197 + 1));
    }

    else
    {
      v209 = v197;
      v210 = v198;
    }

    v212 = v200;
    v213 = v201;
    *__p = *a5;
    *&__p[8] = *(a5 + 8);
    v156 = *(a5 + 24);
    v157 = *(a5 + 40);
    v158 = *(a5 + 56);
    v159 = *(a5 + 72);
    v160 = *(a5 + 88);
    v162 = *(a5 + 120);
    v161 = *(a5 + 104);
    v101 = *(a5 + 136);
    v164 = *(a5 + 152);
    v163 = v101;
    v166 = *(a5 + 184);
    v165 = *(a5 + 168);
    v168 = *(a5 + 216);
    v167 = *(a5 + 200);
    v170 = *(a5 + 248);
    v169 = *(a5 + 232);
    v171 = *(a5 + 264);
    v153 = v131;
    v154 = v141;
    if (v141)
    {
      atomic_fetch_add_explicit(&v141->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v99 = [(VKRoadSignArtwork *)v96 initWithLine:v97 signMetrics:&descent textMetrics:&v202 signColoring:__p glyph:a6 cgGlyph:0 resourceStore:&v153];
  }

  v100 = v99;
  v102 = v154;
  if (v154)
  {
    std::__shared_weak_count::__release_weak(v154);
  }

  if (SHIBYTE(v210) < 0)
  {
    v103 = v209;
    v104 = mdm::zone_mallocator::instance(v102);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v104, v103);
  }

  if ((SHIBYTE(v207) & 0x80000000) == 0)
  {
    if (!v100)
    {
      goto LABEL_148;
    }

LABEL_142:
    if (*(a1 + 80) == 1)
    {
      v107 = [v100 generatedMetrics];
      v108 = *(v107 + 760);
      v109 = *(v107 + 768);
      v110 = *(v107 + 776);
      v140 = *(v107 + 784);
      v111 = [v100 generatedMetrics];
      v112 = *(v111 + 848);
      v113 = *(v111 + 856);
      v114 = *(v111 + 864);
      v115 = *(v111 + 872);
      if (v126)
      {
        *__p = xmmword_1B33B0AC0;
        [v100 addDebugPoint:__p color:{v108 + v110 * 0.5, v113 + v89}];
      }

      *__p = xmmword_1B33AFEE0;
      [v100 addDebugRect:__p color:{v112, v113, v114, v115}];
      *__p = xmmword_1B33B0AF0;
      [v100 addDebugRect:__p color:{v108, v109, v110, v140}];
      v116 = [v100 generatedMetrics];
      if ((v116[96] & 1) != 0 || (v116[272] & 1) != 0 || v116[704] == 1 && v116[624] == 1)
      {
        v117 = [v100 generatedMetrics];
        v118 = *(v117 + 816);
        v119 = *(v117 + 824);
        *__p = xmmword_1B33AFEE0;
        [v100 addDebugPoint:__p color:{v118, v119}];
      }
    }

    goto LABEL_148;
  }

  v105 = v206;
  v106 = mdm::zone_mallocator::instance(v102);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v106, v105);
  if (v100)
  {
    goto LABEL_142;
  }

LABEL_148:
  v34 = v100;

  v215 = &unk_1F29E1130;
  if (v216)
  {
    CFRelease(v216);
  }

  v217 = &unk_1F2A5F810;
  if (cf)
  {
    CFRelease(cf);
  }

  v219 = &unk_1F2A5F810;
  if (v220)
  {
    CFRelease(v220);
  }

  v221 = &unk_1F2A5F810;
  if (v222)
  {
    CFRelease(v222);
  }

  v35 = v144;
  v36 = v141;
  v37 = v136;
LABEL_157:
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  v223 = &unk_1F2A5F268;
  if (v224)
  {
    CFRelease(v224);
  }

  v225 = &unk_1F2A0CCB0;
  if (v226)
  {
    CFRelease(v226);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_weak(v141);
  }

  if (SHIBYTE(v198) < 0)
  {
    v121 = v197;
    v122 = mdm::zone_mallocator::instance(v120);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v122, v121);
  }

  if (SHIBYTE(v195) < 0)
  {
    v123 = __src;
    v124 = mdm::zone_mallocator::instance(v120);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v124, v123);
  }

  return v34;
}

void sub_1B2EAF400(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, void *a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, void *a38)
{
  if (SLOBYTE(STACK[0x43F]) < 0)
  {
    v41 = STACK[0x428];
    v42 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v42, v41);
  }

  STACK[0x508] = a15;
  if (STACK[0x510])
  {
    CFRelease(STACK[0x510]);
  }

  STACK[0x520] = a16;
  if (STACK[0x528])
  {
    CFRelease(STACK[0x528]);
  }

  STACK[0x538] = &unk_1F2A5F810;
  if (STACK[0x540])
  {
    CFRelease(STACK[0x540]);
  }

  *(v39 - 240) = &unk_1F2A5F810;
  v43 = *(v39 - 232);
  if (v43)
  {
    CFRelease(v43);
  }

  if (v38)
  {
    operator delete(v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  *(v39 - 216) = a26;
  v44 = *(v39 - 208);
  if (v44)
  {
    CFRelease(v44);
  }

  *(v39 - 192) = a27;
  v45 = *(v39 - 184);
  if (v45)
  {
    CFRelease(v45);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_weak(a32);
  }

  if (SLOBYTE(STACK[0x3CF]) < 0)
  {
    v47 = STACK[0x3B8];
    v48 = mdm::zone_mallocator::instance(v46);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v48, v47);
  }

  if (SLOBYTE(STACK[0x3AF]) < 0)
  {
    v49 = STACK[0x398];
    v50 = mdm::zone_mallocator::instance(v46);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v50, v49);
  }

  _Unwind_Resume(a1);
}

uint64_t md::RoadSignArtworkGenerator::isLineRTL(md::RoadSignArtworkGenerator *this, const __CTLine *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = CTLineGetGlyphRuns(this);
  v3 = [(__CFArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (CTRunGetStatus(*(*(&v7 + 1) + 8 * i)))
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [(__CFArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

void md::RoadSignArtworkGenerator::truncateAttributedStringWithEllipsis(md::RoadSignArtworkGenerator *this, NSMutableAttributedString *a2, const __CTLine *a3, double a4, const __CTFont *a5, CGColor *a6)
{
  v65[2] = *MEMORY[0x1E69E9840];
  v62 = a2;
  if (a5)
  {
    v12 = *MEMORY[0x1E69659D8];
    v64[0] = *MEMORY[0x1E6965658];
    v64[1] = v12;
    v65[0] = a5;
    v65[1] = a6;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 hash];
  v15 = v14;
  v16 = *(this + 8);
  if (v16)
  {
    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = v14;
      if (v14 >= *&v16)
      {
        v18 = v14 % *&v16;
      }
    }

    else
    {
      v18 = (*&v16 - 1) & v14;
    }

    v19 = *(*this + 8 * v18);
    if (v19)
    {
      for (i = *v19; i; i = *i)
      {
        v21 = *(i + 1);
        if (v21 == v14)
        {
          if (*(i + 2) == v14)
          {
            v61 = i[3];
            goto LABEL_95;
          }
        }

        else
        {
          if (v17.u32[0] > 1uLL)
          {
            if (v21 >= *&v16)
            {
              v21 %= *&v16;
            }
          }

          else
          {
            v21 &= *&v16 - 1;
          }

          if (v21 != v18)
          {
            break;
          }
        }
      }
    }
  }

  v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"…" attributes:v13];
  v23 = CTFramesetterCreateWithAttributedString(v22);
  v68.width = 1.79769313e308;
  v67.location = 0;
  v67.length = 0;
  v68.height = 1.79769313e308;
  *&v24 = *&CTFramesetterSuggestFrameSizeWithConstraints(v23, v67, 0, v68, 0);
  CFRelease(v23);
  v26 = *(this + 1);
  if (v26)
  {
    v27 = vcnt_s8(v26);
    v27.i16[0] = vaddlv_u8(v27);
    if (v27.u32[0] > 1uLL)
    {
      v6 = v15;
      if (v15 >= v26)
      {
        v6 = v15 % v26;
      }
    }

    else
    {
      v6 = (v26 - 1) & v15;
    }

    v28 = *(*this + 8 * v6);
    if (v28)
    {
      for (j = *v28; j; j = *j)
      {
        v30 = *(j + 1);
        if (v30 == v15)
        {
          if (*(j + 2) == v15)
          {
            goto LABEL_94;
          }
        }

        else
        {
          if (v27.u32[0] > 1uLL)
          {
            if (v30 >= v26)
            {
              v30 %= v26;
            }
          }

          else
          {
            v30 &= v26 - 1;
          }

          if (v30 != v6)
          {
            break;
          }
        }
      }
    }
  }

  v31 = mdm::zone_mallocator::instance(v25);
  v32 = pthread_rwlock_rdlock((v31 + 32));
  if (v32)
  {
    geo::read_write_lock::logFailure(v32, "read lock", v33);
  }

  j = malloc_type_zone_malloc(*v31, 0x20uLL, 0x1020040B07D1DCCuLL);
  atomic_fetch_add((v31 + 24), 1u);
  geo::read_write_lock::unlock((v31 + 32));
  *j = 0.0;
  *(j + 1) = v15;
  *(j + 2) = v15;
  j[3] = 0.0;
  v35 = (*(this + 5) + 1);
  v36 = *(this + 12);
  if (!v26 || (v36 * v26) < v35)
  {
    v37 = 1;
    if (v26 >= 3)
    {
      v37 = (v26 & (v26 - 1)) != 0;
    }

    v38 = v37 | (2 * v26);
    v39 = vcvtps_u32_f32(v35 / v36);
    if (v38 <= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = v38;
    }

    if (v40 == 1)
    {
      v40 = 2;
    }

    else if ((v40 & (v40 - 1)) != 0)
    {
      prime = std::__next_prime(v40);
      v40 = prime;
    }

    v26 = *(this + 1);
    if (v40 > v26)
    {
      goto LABEL_51;
    }

    if (v40 < v26)
    {
      prime = vcvtps_u32_f32(*(this + 5) / *(this + 12));
      if (v26 < 3 || (v49 = vcnt_s8(v26), v49.i16[0] = vaddlv_u8(v49), v49.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v50 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v50;
        }
      }

      if (v40 <= prime)
      {
        v40 = prime;
      }

      if (v40 >= v26)
      {
        v26 = *(this + 1);
      }

      else
      {
        if (v40)
        {
LABEL_51:
          v41 = mdm::zone_mallocator::instance(prime);
          v42 = pthread_rwlock_rdlock((v41 + 32));
          if (v42)
          {
            geo::read_write_lock::logFailure(v42, "read lock", v43);
          }

          v44 = malloc_type_zone_malloc(*v41, 8 * v40, 0x2004093837F09uLL);
          atomic_fetch_add((v41 + 24), 1u);
          geo::read_write_lock::unlock((v41 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> **,0>(this, v44);
          v45 = 0;
          *(this + 1) = v40;
          do
          {
            *(*this + 8 * v45++) = 0;
          }

          while (v40 != v45);
          v46 = *(this + 3);
          if (v46)
          {
            v47 = v46[1];
            v48 = vcnt_s8(v40);
            v48.i16[0] = vaddlv_u8(v48);
            if (v48.u32[0] > 1uLL)
            {
              if (v47 >= v40)
              {
                v47 %= v40;
              }
            }

            else
            {
              v47 &= v40 - 1;
            }

            *(*this + 8 * v47) = this + 24;
            v51 = *v46;
            if (*v46)
            {
              do
              {
                v52 = v51[1];
                if (v48.u32[0] > 1uLL)
                {
                  if (v52 >= v40)
                  {
                    v52 %= v40;
                  }
                }

                else
                {
                  v52 &= v40 - 1;
                }

                if (v52 != v47)
                {
                  v53 = *this;
                  if (!*(*this + 8 * v52))
                  {
                    *(v53 + 8 * v52) = v46;
                    goto LABEL_75;
                  }

                  *v46 = *v51;
                  *v51 = **(v53 + 8 * v52);
                  **(v53 + 8 * v52) = v51;
                  v51 = v46;
                }

                v52 = v47;
LABEL_75:
                v46 = v51;
                v51 = *v51;
                v47 = v52;
              }

              while (v51);
            }
          }

          v26 = v40;
          goto LABEL_79;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> **,0>(this, 0);
        v26 = 0;
        *(this + 1) = 0;
      }
    }

LABEL_79:
    if ((v26 & (v26 - 1)) != 0)
    {
      if (v15 >= v26)
      {
        v6 = v15 % v26;
      }

      else
      {
        v6 = v15;
      }
    }

    else
    {
      v6 = (v26 - 1) & v15;
    }
  }

  v54 = *this;
  v55 = *(*this + 8 * v6);
  if (v55)
  {
    *j = *v55;
  }

  else
  {
    *j = *(this + 3);
    *(this + 3) = j;
    *(v54 + 8 * v6) = this + 24;
    if (!*j)
    {
      goto LABEL_93;
    }

    v56 = *(*j + 8);
    if ((v26 & (v26 - 1)) != 0)
    {
      if (v56 >= v26)
      {
        v56 %= v26;
      }
    }

    else
    {
      v56 &= v26 - 1;
    }

    v55 = (*this + 8 * v56);
  }

  *v55 = j;
LABEL_93:
  ++*(this + 5);
LABEL_94:
  v61 = ceil(v24);
  j[3] = v61;

LABEL_95:
  v69.y = 0.0;
  v69.x = fmax(a4 - v61, 0.0);
  StringIndexForPosition = CTLineGetStringIndexForPosition(a3, v69);
  location = CTLineGetStringRange(a3).location;
  v59 = [v63 length];
  if (location <= StringIndexForPosition - 1)
  {
    v60 = StringIndexForPosition - 1;
  }

  else
  {
    v60 = location;
  }

  [v63 replaceCharactersInRange:v60 withString:{v59 - v60, @"…"}];
}

void sub_1B2EAFEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  geo::read_write_lock::unlock((v12 + 32));
  v15 = mdm::zone_mallocator::instance(v14);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *>>(v15, v11);

  _Unwind_Resume(a1);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,double>,void *> *> *>(v3, v2);
  }
}

void geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F810;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F810;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CTLine const*,geo::_retain_cf<__CTLine const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F268;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CTLine const*,geo::_retain_cf<__CTLine const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F268;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CTFramesetter const*,geo::_retain_cf<__CTFramesetter const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A0CCB0;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CTFramesetter const*,geo::_retain_cf<__CTFramesetter const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A0CCB0;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::FontAtlasCell []>>(uint64_t a1, void *a2)
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

void std::default_delete<md::FontAtlasCell []>::operator()[abi:nn200100]<md::FontAtlasCell>(uint64_t a1)
{
  v2 = a1 - 8;
  v1 = *(a1 - 8);
  if (v1)
  {
    v3 = 48 * v1;
    do
    {
      v4 = *(v2 + v3);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      v3 -= 48;
    }

    while (v3);
  }

  JUMPOUT(0x1B8C62170);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::FontAtlasCell *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::FontAtlasCell *>(uint64_t a1, uint64_t a2)
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

mdm::zone_mallocator *std::__split_buffer<md::FontAtlasCell *,geo::allocator_adapter<md::FontAtlasCell *,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::FontAtlasCell *>(v5, v4);
  }

  return a1;
}

BOOL md::ARDebugCustomScene::update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 65))
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = 0;
  }

  return md::ARDebugScene::setFeatures(a1, v4);
}

BOOL md::ARDebugScene::setFeatures(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (v4 != v3)
  {
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(a1 + 8, v3);
  }

  return v4 != v3;
}

void md::ARDebugCustomScene::~ARDebugCustomScene(md::ARDebugCustomScene *this)
{
  *this = &unk_1F2A0CCF8;
  *(this + 4) = &unk_1F2A436C8;

  *this = &unk_1F2A1DF08;
  *(this + 1) = &unk_1F2A4C2E8;

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0CCF8;
  *(this + 4) = &unk_1F2A436C8;

  *this = &unk_1F2A1DF08;
  *(this + 1) = &unk_1F2A4C2E8;
}

void geo::_retain_ptr<NSArray<VKARWalkingFeature *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4C2E8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSArray<VKARWalkingFeature *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4C2E8;

  return a1;
}

void md::ARDebugCustomSceneBuilder::convertPointToCoordinate(uint64_t a1, unsigned __int8 a2, double a3, double a4, double a5)
{
  if (gdc::ToCoordinateSystem(a2))
  {
    v15[0] = a3;
    v15[1] = a4;
    v15[2] = a5;
    geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(v15, a1);
  }

  else if (a2)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v10 = exp(a4 * 6.28318531 + -3.14159265);
    v14 = atan(v10);
    v11 = fmod(a3 * 6.28318531, 6.28318531);
    v12 = fmod(v11 + 6.28318531, 6.28318531);
    v13.f64[0] = v14;
    v13.f64[1] = v12;
    *a1 = vmlaq_f64(xmmword_1B33B0660, xmmword_1B33B0650, v13);
    *(a1 + 16) = a5 * 40075017.0;
  }
}

uint64_t gdc::Registry::storage<arComponents::XYPlaneMeshRequest>(uint64_t a1)
{
  v3 = 0xD6C83C44ECE8EA5;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xD6C83C44ECE8EA5uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<arComponents::AlbedoTextureComponent>::emplace(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v31);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v16 = a1[10];
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v16) >> 4);
      if (v17 + 1 > 0x555555555555555)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v16) >> 4);
      v19 = 2 * v18;
      if (2 * v18 <= v17 + 1)
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x2AAAAAAAAAAAAAALL)
      {
        v20 = 0x555555555555555;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        if (v20 <= 0x555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = 48 * v17;
      arComponents::AlbedoTextureComponent::AlbedoTextureComponent(v21, a3);
      v9 = (v21 + 48);
      v30 = (v21 + 48);
      v22 = a1[10];
      v23 = a1[11];
      v24 = (v21 + v22 - v23);
      if (v23 != v22)
      {
        v25 = a1[10];
        v26 = v24;
        do
        {
          v27 = arComponents::AlbedoTextureComponent::AlbedoTextureComponent(v26, v25);
          v25 += 48;
          v26 = v27 + 6;
        }

        while (v25 != v23);
        do
        {
          std::__destroy_at[abi:nn200100]<arComponents::AlbedoTextureComponent,0>(v22);
          v22 += 48;
        }

        while (v22 != v23);
      }

      v28 = a1[10];
      a1[10] = v24;
      *(a1 + 11) = v30;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      v9 = arComponents::AlbedoTextureComponent::AlbedoTextureComponent(v7, a3) + 6;
    }

    a1[11] = v9;
    v14 = a1[31];
LABEL_28:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v14, &v31, 1);
    }

    return;
  }

  v10 = (a1[10] + 48 * ((v5 - a1[7]) >> 3));
  v11 = *(a3 + 8);
  *v10 = *a3;
  v12 = *(a3 + 16);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v10[2];
  v10[1] = v11;
  v10[2] = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=((v10 + 3), *(a3 + 32));
  v14 = a1[31];
  if (v10 == a1[11])
  {
    goto LABEL_28;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v14, &v31, 1);
  }
}

void gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVMapping>::emplace(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v23);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = (v8 - v14) >> 4;
      v16 = v15 + 1;
      if ((v15 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v14;
      if (v17 >> 3 > v16)
      {
        v16 = v17 >> 3;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      *(16 * v15) = *a3;
      v9 = 16 * v15 + 16;
      if (v14 != v8)
      {
        v19 = v14;
        v20 = 0;
        do
        {
          v21 = *v19;
          v19 += 16;
          *v20++ = v21;
        }

        while (v19 != v8);
      }

      a1[10] = 0;
      a1[11] = v9;
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = (v8 + 16);
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_23;
  }

  v10 = a1[11];
  v11 = (a1[10] + 2 * (v5 - a1[7]));
  *v11 = *a3;
  v11[1] = *(a3 + 4);
  v11[2] = *(a3 + 8);
  v11[3] = *(a3 + 12);
  v12 = a1[31];
  if (v11 == v10)
  {
LABEL_23:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v23, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v23, 1);
  }
}

void gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVScale>::emplace(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v23);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = (v8 - v14) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v14;
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
        if (!(v18 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      *(8 * v15) = *a3;
      v9 = 8 * v15 + 8;
      if (v14 != v8)
      {
        v19 = v14;
        v20 = (8 * v15 + v14 - v8);
        do
        {
          v21 = *v19;
          v19 += 8;
          *v20++ = v21;
        }

        while (v19 != v8);
      }

      a1[10] = 8 * v15 + v14 - v8;
      a1[11] = v9;
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = (v8 + 8);
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_23;
  }

  v10 = a1[11];
  v11 = (a1[10] + v5 - a1[7]);
  *v11 = *a3;
  v11[1] = *(a3 + 4);
  v12 = a1[31];
  if (v11 == v10)
  {
LABEL_23:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v23, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v23, 1);
  }
}

void *arComponents::AlbedoTextureComponent::AlbedoTextureComponent(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  v4 = (a1 + 3);
  a1[3] = &unk_1F2A43EB8;
  a1[4] = 0;
  v5 = *(a2 + 8);
  *a1 = *a2;
  v6 = *(a2 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v7 = a1[2];
    a1[1] = v5;
    a1[2] = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }
  }

  else
  {
    a1[1] = v5;
    a1[2] = 0;
  }

  geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v4, *(a2 + 32));
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::XYPlaneMeshRequest>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::XYPlaneMeshRequest>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::XYPlaneMeshRequest>::~ComponentStorageWrapper(uint64_t a1)
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

void *geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A43EB8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

BOOL md::SelectedRoadLayerDataSource::shouldFilterFeature(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 8) + 16);
  v4 = *(a1 + 32);
  if (*(a1 + 858) != 1)
  {
    if (v4 == 68)
    {
      goto LABEL_9;
    }

    return *(a3 + 40) != v3;
  }

  if (v4 != 68)
  {
    return *(a3 + 40) != v3;
  }

  if (*(a2 + 2) == *(a1 + 856))
  {
    v5 = (a1 + 832);
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if (v5[2] == *(a3 + 40))
      {
        return 0;
      }
    }

    v6 = 0;
    goto LABEL_13;
  }

LABEL_9:
  if (*(a3 + 40) == v3)
  {
    return 0;
  }

  v6 = 1;
LABEL_13:
  if (!*(a3 + 74))
  {
    return 1;
  }

  v8 = 0;
  v9 = (a1 + 832);
  result = 1;
  do
  {
    v10 = *(*(*(a2 + 144) + 3488) + 8 * (*(a3 + 64) + v8));
    v11 = v9;
    if (v6)
    {
      if (v10 == v3)
      {
        return 0;
      }
    }

    else
    {
      while (1)
      {
        v11 = *v11;
        if (!v11)
        {
          break;
        }

        if (v11[2] == v10)
        {
          return 0;
        }
      }
    }

    ++v8;
  }

  while (v8 != *(a3 + 74));
  return result;
}

void md::SelectedRoadLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  v20[7] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != 68)
  {

    md::RoadLayerDataSource::createLayerData(a1, a2, a3);
  }

  std::atomic_load[abi:nn200100]<md::RegistryManager>(v20, (a1 + 768));
  gdc::Tiled::tileFromLayerDataKey(v19, *(a2 + 16));
  memset(v18, 0, sizeof(v18));
  v7 = *a3;
  v6 = a3[1];
  if (*a3 == v6)
  {
    goto LABEL_18;
  }

  v8 = *a3;
  while (*(a1 + 592) != *v8)
  {
    v8 += 24;
    if (v8 == v6)
    {
      goto LABEL_18;
    }
  }

  if (v8 == v6)
  {
LABEL_18:
    if (*(a1 + 858) == 1 && v7 != v6)
    {
      while (*(a1 + 856) != *v7)
      {
        v7 += 24;
        if (v7 == v6)
        {
          goto LABEL_23;
        }
      }

      if (v7 != v6)
      {
        std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(v18, *(v7 + 4));
        for (i = *(v7 + 3); i; i = *i)
        {
          v14 = i[15];
          v15 = i[14];
          v16 = v14;
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::vector<std::shared_ptr<gdc::Resource>>::push_back[abi:nn200100](v18, &v15);
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v16);
          }
        }
      }
    }
  }

  else
  {
    std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(v18, *(v8 + 4));
    for (j = *(v8 + 3); j; j = *j)
    {
      v10 = j[15];
      v15 = j[14];
      v16 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::vector<std::shared_ptr<gdc::Resource>>::push_back[abi:nn200100](v18, &v15);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }
    }
  }

LABEL_23:
  v12 = *(a1 + 792);
  (*(*[v12 gglDevice] + 24))(&v17);

  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B2EB166C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p)
{
  a27 = v36 - 184;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a27);
  v38 = *(v36 - 120);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  _Unwind_Resume(a1);
}

void md::SelectedRoadLayerDataSource::constructRequests(uint64_t a1, char **a2, char **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 840))
  {
    v3 = a2 == a3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v5 = a2;
    do
    {
      gdc::Tiled::tileFromLayerDataKey(&v20, *(*v5 + 2));
      if (*(a1 + 32) == 68)
      {
        v7 = *(a1 + 858);
      }

      else
      {
        v7 = 0;
      }

      v8 = *(a1 + 832);
      if (v8)
      {
        v9 = vrev64_s32(v22);
        v10 = v21;
        do
        {
          v11 = v8[2];
          v23 = v9;
          v25 = v11;
          v24 = v10;
          if ((*(*v5 + 12) & 0x100000000) != 0)
          {
            v12 = *(*v5 + 12);
          }

          else
          {
            v12 = 2147483646;
          }

          gdc::ResourceKey::ResourceKey(&v17, *(a1 + 592), &v23, 24, *(*v5 + 14), v12);
          gdc::LayerDataRequest::request(*v5, &v17, v7 & 1);
          if (v18 != v19)
          {
            free(v18);
          }

          v8 = *v8;
        }

        while (v8);
      }

      if (v7)
      {
        if ((*(a1 + 858) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:nn200100]();
        }

        v13 = **v5;
        v14 = *(a1 + 856);
        v15 = *(*v5 + 14);
        if ((*(*v5 + 12) & 0x100000000) != 0)
        {
          v16 = *(*v5 + 12);
        }

        else
        {
          v16 = 2147483646;
        }

        v23 = vrev64_s32(v22);
        LODWORD(v24) = v21;
        HIDWORD(v24) = v20;
        gdc::ResourceKey::ResourceKey(&v17, v13, v14, &v23, 4, v15, v16);
        gdc::LayerDataRequest::request(*v5, &v17, 0);
        if (v18 != v19)
        {
          free(v18);
        }
      }

      v5 += 2;
    }

    while (v5 != a3);
  }
}

void md::SelectedRoadLayerDataSource::~SelectedRoadLayerDataSource(md::SelectedRoadLayerDataSource *this)
{
  *this = &unk_1F2A0CD40;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 816);
  *this = &unk_1F29E9CA0;
  *(this + 98) = &unk_1F2A59028;

  md::TrafficLayerDataSource::~TrafficLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0CD40;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 816);
  *this = &unk_1F29E9CA0;
  *(this + 98) = &unk_1F2A59028;

  md::TrafficLayerDataSource::~TrafficLayerDataSource(this);
}

void non-virtual thunk toggl::DaVinci::TexturedMesh::~TexturedMesh(ggl::DaVinci::TexturedMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::DaVinci::TexturedMesh::~TexturedMesh(ggl::DaVinci::TexturedMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MeshTyped<ggl::DaVinci::TexturedVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::DaVinci::TexturedVbo>::attributesReflection(void)::r = &ggl::DaVinci::texturedVboReflection;
    }

    ggl::MeshTyped<ggl::DaVinci::TexturedVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::DaVinci::TexturedVbo>::attributesReflection(void)::r;
    *algn_1ED65FDB8 = 1;
  }
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::TexturedVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::TexturedVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void *ggl::DaVinci::TexturedMesh::TexturedMesh(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::DaVinci::TexturedVbo>::typedReflection();
  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::DaVinci::TexturedVbo>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = a1 + 15;
  *a1 = &unk_1F2A0CEF8;
  a1[2] = &unk_1F2A0CF18;
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

  *a1 = &unk_1F2A0CDF8;
  a1[2] = &unk_1F2A0CE18;
  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0CF78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinci::TexturedCompressedMesh::~TexturedCompressedMesh(ggl::DaVinci::TexturedCompressedMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::DaVinci::TexturedCompressedMesh::~TexturedCompressedMesh(ggl::DaVinci::TexturedCompressedMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::TexturedCompressedVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::TexturedCompressedVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void *ggl::DaVinci::TexturedCompressedMesh::TexturedCompressedMesh(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::DaVinci::TexturedCompressedVbo>::typedReflection();
  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::DaVinci::TexturedCompressedVbo>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = a1 + 15;
  *a1 = &unk_1F2A0CF38;
  a1[2] = &unk_1F2A0CF58;
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

  *a1 = &unk_1F2A0CE38;
  a1[2] = &unk_1F2A0CE58;
  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::TexturedPositionCompressedVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::TexturedPositionCompressedVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinci::TexturedPositionCompressedMesh::~TexturedPositionCompressedMesh(ggl::DaVinci::TexturedPositionCompressedMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::DaVinci::TexturedPositionCompressedMesh::~TexturedPositionCompressedMesh(ggl::DaVinci::TexturedPositionCompressedMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::TexturedPositionCompressedVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::TexturedPositionCompressedVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinci::TexturedCompressedDrapingMesh::~TexturedCompressedDrapingMesh(ggl::DaVinci::TexturedCompressedDrapingMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::DaVinci::TexturedCompressedDrapingMesh::~TexturedCompressedDrapingMesh(ggl::DaVinci::TexturedCompressedDrapingMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::TexturedCompressedDrapingVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::TexturedCompressedDrapingVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::TransitLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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

void md::TransitLayerDataSource::createLayerData(uint64_t a1@<X0>, unsigned __int16 **a2@<X2>, void *a3@<X8>)
{
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v10, *(a1 + 592), *a2, a2[1]);
  if (*(a1 + 848))
  {
    memset(__p, 0, sizeof(__p));
    gdc::LayerDataSource::populateLoadMetadataListFromMap(*a2, a2[1], __p);
    std::atomic_load[abi:nn200100]<md::RegistryManager>(&v8, (a1 + 800));
    atomic_load((a1 + 864));
    v6 = *(a1 + 768);
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  v7 = v11;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void sub_1B2EB2604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v19);

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::TransitTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2A978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TransitLayerDataSource::didDeactivate(md::TransitLayerDataSource *this)
{
  v2 = *(this + 107);
  *(this + 53) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void md::TransitLayerDataSource::didActivate(md::TransitLayerDataSource *this)
{
  v2 = *(this + 105);
  if (!v2)
  {
LABEL_10:
    v8 = std::__throw_bad_function_call[abi:nn200100]();
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    _Unwind_Resume(v8);
  }

  (*(*v2 + 48))(&v9);
  v3 = (*(**(*(v9 + 168) + 64) + 16))(*(*(v9 + 168) + 64));
  if (!*(v3 + 8) || (v4 = *v3, (v5 = std::__shared_weak_count::lock(*(v3 + 8))) == 0))
  {
    std::__throw_bad_weak_ptr[abi:nn200100]();
    goto LABEL_10;
  }

  *&v6 = v4;
  *(&v6 + 1) = v5;
  v7 = *(this + 107);
  *(this + 53) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

void md::TransitLayerDataSource::~TransitLayerDataSource(md::TransitLayerDataSource *this)
{
  *this = &unk_1F2A0D070;
  v2 = *(this + 107);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](this + 816);
  v3 = *(this + 101);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 99);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0D070;
  v2 = *(this + 107);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](this + 816);
  v3 = *(this + 101);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 99);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void std::__shared_ptr_emplace<md::TransitLineSharedResources>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2CD18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

id dynamicValueAnimation(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  *&v20[3] = a3 * 0.001;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  *&v19[3] = a2;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __dynamicValueAnimation_block_invoke;
  v13[3] = &unk_1E7B35390;
  v15 = v19;
  v16 = v20;
  v14 = v9;
  v17 = a4;
  v18 = a5;
  v10 = v9;
  v11 = [v13 copy];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);

  return v11;
}

void sub_1B2EB2F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 80), 8);
  _Unwind_Resume(a1);
}

BOOL __dynamicValueAnimation_block_invoke(uint64_t a1, double a2)
{
  v3 = *(a1 + 56) * 0.025;
  v4 = pow(1.0 - v3, a2 * 1000.0);
  v5 = *(*(*(a1 + 48) + 8) + 24) * (1.0 - v3);
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + (v5 - v4 * v5) / v3;
  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) * v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(*(*(*(a1 + 40) + 8) + 24));
  }

  v7 = *(*(*(a1 + 48) + 8) + 24);
  return v7 * v7 < *(a1 + 64) * *(a1 + 64) * 0.0001;
}

double dynamicValueAnimationDuration(double a1, double a2, double a3)
{
  v3 = fabs(a1) * 0.001;
  v4 = 0.0;
  if (v3 > 0.0)
  {
    v5 = a2 * -0.025 + 1.0;
    v6 = log(a3 * 0.01 / v3);
    v4 = v6 * 0.06 / log(v5);
  }

  return ceil(v4) * 0.0166666667;
}

id dynamicValueAnimationTimingFunction(double a1, double a2, double a3)
{
  v3 = fabs(a2) * -0.001;
  v4 = a1 * 1000.0;
  v5 = a3 * 0.025;
  v6 = 1.0 - a3 * 0.025;
  v7 = pow(v6, 16.6666667);
  v8 = v3 * v6 * (v7 + -1.0) / v5;
  v9 = v4;
  v10 = pow(v6, v9);
  v13[0] = MEMORY[0x1E69E9820];
  *&v10 = -(v8 - v10 * v8) / (v7 + -1.0);
  v13[1] = 3221225472;
  v13[2] = __dynamicValueAnimationTimingFunction_block_invoke;
  v13[3] = &__block_descriptor_72_e8_f12__0f8l;
  *&v13[4] = *&v10;
  *&v13[5] = v4;
  *&v13[6] = v8;
  *&v13[7] = v6;
  *&v13[8] = v7;
  v11 = [v13 copy];

  return v11;
}

float __dynamicValueAnimationTimingFunction_block_invoke(uint64_t a1, float a2)
{
  v2 = *(a1 + 32);
  v3 = 1.0;
  if (v2 > 0.0)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 40) * a2;
    v6 = -(v4 - pow(*(a1 + 56), v5) * v4) / (*(a1 + 64) + -1.0);
    return v6 / v2;
  }

  return v3;
}

uint64_t md::TransitMapEngineMode::willBecomeInactive(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 41704);
  v3 = v2[7];
  v4 = v2[8];
  while (v3 != v4)
  {
    if (*v3 == 15)
    {
      if (v3 != v4)
      {
        v5 = *(v3 + 8);
        if (v5)
        {
          if (*(v5 + 21))
          {
            *(v5 + 21) = 0;
          }
        }
      }

      break;
    }

    v3 += 16;
  }

  v7 = v2[4];
  v6 = v2[5];
  while (v7 != v6)
  {
    if (*v7 == 15)
    {
      if (v7 != v6)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          if (*(v8 + 608))
          {
            *(v8 + 608) = 0;
            return gdc::LayerDataStore::invalidateAllData(*(v8 + 16));
          }
        }
      }

      return result;
    }

    v7 += 16;
  }

  return result;
}

void md::TransitMapEngineMode::didBecomeActive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  md::StandardMapEngineMode::didBecomeActive(a1, a2, a3, a4);
  v5 = *(a2 + 41704);
  v6 = v5[7];
  v7 = v5[8];
  while (v6 != v7)
  {
    if (*v6 == 15)
    {
      if (v6 != v7)
      {
        v8 = *(v6 + 8);
        if (v8)
        {
          if ((*(v8 + 21) & 1) == 0)
          {
            *(v8 + 21) = 1;
          }
        }
      }

      break;
    }

    v6 += 16;
  }

  v10 = v5[4];
  v9 = v5[5];
  while (v10 != v9)
  {
    if (*v10 == 15)
    {
      if (v10 != v9)
      {
        v11 = *(v10 + 8);
        if (v11)
        {
          if ((*(v11 + 608) & 1) == 0)
          {
            *(v11 + 608) = 1;
            v12 = *(v11 + 16);

            gdc::LayerDataStore::invalidateAllData(v12);
          }
        }
      }

      return;
    }

    v10 += 16;
  }
}

void md::TransitMapEngineMode::~TransitMapEngineMode(md::TransitMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::TransitLogic>(void *a1)
{
  v7[0] = 0x1BCA10CB9934FB1BLL;
  v7[1] = "md::TransitLogic]";
  v7[2] = 16;
  *&v4 = 0xFD5D5EC7C4E1E43ELL;
  *(&v4 + 1) = "md::TransitContext]";
  v5 = 18;
  v6 = 1;
  v3[0] = xmmword_1E7B3C7D8;
  v2[1] = v3;
  v2[2] = 2;
  v1[2] = 0;
  v2[0] = &unk_1F2A4B5D0;
  v3[1] = unk_1E7B3C7E8;
  v3[2] = xmmword_1E7B3C7F8;
  v1[0] = &unk_1F2A4C258;
  v1[1] = v2;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v7, &v4, 0, v2, v1);
}

uint64_t **md::TransitMapEngineMode::TransitMapEngineMode(uint64_t **this, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  IsEnabled_VKMLayout_SPR = MapsFeature_IsEnabled_VKMLayout_SPR();
  v5 = md::StandardMapEngineMode::StandardMapEngineMode(this, 6, a2, IsEnabled_VKMLayout_SPR);
  *this = &unk_1F2A0D118;
  LOBYTE(v7) = 19;
  md::MapEngineMode::addRequiredRenderLayers(v5, &v7, 1);
  LOBYTE(v7) = 20;
  md::MapEngineMode::addOptionalRenderLayers(this, &v7, 1);
  v7 = 25;
  v8 = a2;
  v9 = 16;
  v10 = a2;
  md::MapEngineMode::addRequiredMapDataTypes(this, &v7, 2);
  v7 = 17;
  v8 = a2;
  md::MapEngineMode::addOptionalMapDataTypes(this, &v7, 1);
  if (a2)
  {
    md::MapEngineMode::addTileSelectionTileSetType(this);
  }

  gdc::LogicExecutionGraphBuilder::addLogic<md::TransitLogic>(this + 29);
  return this;
}

void md::constructBoundingVolume(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v41 = v1;
  v43 = v2;
  v58 = *MEMORY[0x1E69E9840];
  v4 = v3[2];
  v5 = v3[3];
  v6 = *v3;
  v7 = v3[1];
  v40 = v3;
  bzero(v55, 0x1800uLL);
  v8 = -6144;
  v9 = vneg_f32(0x80000000800000);
  do
  {
    v10 = &v54[v8];
    v10[768] = v9;
    v10[769].i32[0] = 2139095039;
    *&v55[v8 + 12] = 0x80000000800000;
    v10[770].i32[1] = -8388609;
    v8 += 24;
  }

  while (v8);
  v11 = v43[1];
  if (v11 >= 3)
  {
    v12 = 0;
    v39 = v11 / 3;
    v13 = 1.0 / (v4 - v6);
    v14 = 1.0 / (v5 - v7);
    do
    {
      v15 = 0;
      v16 = *v43;
      v17 = (*v43 + 2 * (3 * v12));
      v18 = *v41;
      v19 = *v41 + 12 * *v17;
      v46 = *v19;
      v47 = *(v19 + 8);
      v20 = (3 * v12 + 1);
      v21 = (v18 + 12 * *(v16 + 2 * v20));
      v44 = *v21;
      v45 = *(v21 + 2);
      v42 = (3 * v12 + 2);
      v22 = (v18 + 12 * *(v16 + 2 * v42));
      v52 = *v22;
      v53 = *(v22 + 2);
      do
      {
        *(&v56 + v15) = *(&v44 + v15) + *(&v46 + v15);
        v15 += 4;
      }

      while (v15 != 12);
      v23 = 0;
      v48 = v56;
      v49 = v57;
      do
      {
        *(&v56 + v23) = *(&v52 + v23) + *(&v48 + v23);
        v23 += 4;
      }

      while (v23 != 12);
      v24 = 0;
      v50 = v56;
      v51 = v57;
      do
      {
        *(&v56 + v24) = *(&v50 + v24) * 0.33333;
        v24 += 4;
      }

      while (v24 != 12);
      v25 = vcvtms_s32_f32(((*&v56 - *v40) * 16.0) * v13);
      if (v25 >= 0xF)
      {
        v25 = 15;
      }

      v26 = vcvtms_s32_f32(((*(&v56 + 1) - v40[1]) * 16.0) * v14);
      if (v26 >= 0xF)
      {
        v26 = 15;
      }

      v27 = v25 | (16 * v26);
      v28 = &v55[24 * v27];
      std::vector<unsigned short>::push_back[abi:nn200100](v28, v17);
      std::vector<unsigned short>::push_back[abi:nn200100](v28, (*v43 + 2 * v20));
      std::vector<unsigned short>::push_back[abi:nn200100](v28, (*v43 + 2 * v42));
      v29 = 0;
      v30 = &v54[24 * v27];
      do
      {
        v31 = &v30[v29];
        v32 = *(&v46 + v29);
        *v31 = fminf(v32, *&v30[v29]);
        v31[3] = fmaxf(*&v30[v29 + 12], v32);
        v29 += 4;
      }

      while (v29 != 12);
      for (i = 0; i != 12; i += 4)
      {
        v34 = &v30[i];
        v35 = *(&v44 + i);
        *v34 = fminf(v35, *&v30[i]);
        v34[3] = fmaxf(*&v30[i + 12], v35);
      }

      for (j = 0; j != 12; j += 4)
      {
        v37 = &v30[j];
        v38 = *(&v52 + j);
        *v37 = fminf(v38, *&v30[j]);
        v37[3] = fmaxf(*&v30[j + 12], v38);
      }

      ++v12;
    }

    while (v12 != v39);
  }

  operator new();
}

void sub_1B2EB42B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  a21 = &a25;
  std::vector<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>::__destroy_vector::operator()[abi:nn200100](&a21);
  v27 = 6144;
  while (1)
  {
    v28 = *(&STACK[0x18D0] + v27 - 24);
    if (v28)
    {
      *(&STACK[0x18D0] + v27 - 16) = v28;
      operator delete(v28);
    }

    v27 -= 24;
    if (!v27)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::__function::__value_func<double ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 2);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v7 = *(v4 - 6);
        if (v7)
        {
          *(v4 - 5) = v7;
          operator delete(v7);
        }

        std::__function::__value_func<double ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100]((v4 - 88));
        std::__function::__value_func<BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100]((v4 - 120));
        v8 = v4 - 144;
        std::vector<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>::__destroy_vector::operator()[abi:nn200100](&v8);
        v4 -= 168;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>::push_back[abi:nn200100](uint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xCF3CF3CF3CF3CF3DLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0x186186186186186)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xCF3CF3CF3CF3CF3DLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0xC30C30C30C30C3)
    {
      v10 = 0x186186186186186;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>>(v10);
    }

    v16 = 0;
    v17 = 168 * v7;
    gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>::BoundingVolumeNode(168 * v7, a2);
    v18 = 168 * v7 + 168;
    v11 = a1[1];
    v12 = 168 * v7 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>,gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>*>(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = a1[2];
    v15 = v18;
    *(a1 + 1) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = std::__split_buffer<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>::~__split_buffer(&v16);
    v6 = v15;
  }

  else
  {
    result = gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>::BoundingVolumeNode(a1[1], a2);
    v6 = v4 + 168;
    a1[1] = v4 + 168;
  }

  a1[1] = v6;
  return result;
}

void sub_1B2EB4648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<double ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::allocator_traits<std::allocator<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>>::destroy[abi:nn200100]<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>,void,0>(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    *(a1 + 128) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<double ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](a1 + 80);
  std::__function::__value_func<BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](a1 + 48);
  v4 = (a1 + 24);
  std::vector<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>::__destroy_vector::operator()[abi:nn200100](&v4);
}

void std::__shared_ptr_emplace<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0D198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>::BoundingVolumeNode(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *(a1 + 24) = 0;
  *a1 = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  if (v6 != v5)
  {
    std::vector<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>::__vallocate[abi:nn200100](a1 + 24, 0xCF3CF3CF3CF3CF3DLL * ((v6 - v5) >> 3));
  }

  v7 = *(a2 + 9);
  if (!v7)
  {
    goto LABEL_6;
  }

  if (v7 != a2 + 3)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_6:
    *(a1 + 72) = v7;
    goto LABEL_8;
  }

  *(a1 + 72) = a1 + 48;
  (*(**(a2 + 9) + 24))(*(a2 + 9), a1 + 48);
LABEL_8:
  v8 = *(a2 + 13);
  if (!v8)
  {
LABEL_11:
    *(a1 + 104) = v8;
    goto LABEL_13;
  }

  if (v8 != a2 + 5)
  {
    v8 = (*(*v8 + 16))(v8);
    goto LABEL_11;
  }

  *(a1 + 104) = a1 + 80;
  (*(**(a2 + 13) + 24))(*(a2 + 13), a1 + 80);
LABEL_13:
  *(a1 + 112) = *(a2 + 56);
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100]((a1 + 120), a2 + 15);
  v9 = *(a2 + 19);
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 152) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 160) = *(a2 + 20);
  return a1;
}

void sub_1B2EB4A04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](v2);
  std::vector<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>>(unint64_t a1)
{
  if (a1 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>,gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 48;
    v6 = a3 + 48;
    do
    {
      v7 = *(v5 - 32);
      *(v6 - 48) = *(v5 - 48);
      *(v6 - 32) = v7;
      *(v6 - 24) = 0;
      *(v6 - 16) = 0;
      *(v6 - 8) = 0;
      *(v6 - 24) = *(v5 - 24);
      *(v6 - 8) = *(v5 - 8);
      *(v5 - 24) = 0;
      *(v5 - 16) = 0;
      *(v5 - 8) = 0;
      std::__function::__value_func<BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::__value_func[abi:nn200100](v6, v5);
      std::__function::__value_func<double ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::__value_func[abi:nn200100](v6 + 32, v5 + 32);
      *(v6 + 64) = *(v5 + 64);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 72) = 0;
      *(v6 + 72) = *(v5 + 72);
      *(v6 + 88) = *(v5 + 88);
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      *(v5 + 88) = 0;
      *(v6 + 96) = *(v5 + 96);
      *(v5 + 96) = 0;
      *(v5 + 104) = 0;
      *(v6 + 112) = *(v5 + 112);
      v8 = v5 + 120;
      v5 += 168;
      v6 += 168;
    }

    while (v8 != a2);
    do
    {
      std::allocator_traits<std::allocator<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>>::destroy[abi:nn200100]<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>,void,0>(v4);
      v4 += 168;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 168;
    std::allocator_traits<std::allocator<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>>::destroy[abi:nn200100]<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>,void,0>(i - 168);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__shared_ptr_emplace<gdc::CollisionMesh<float>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<gdc::CollisionMesh<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0D160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MaterialData::~MaterialData(md::MaterialData *this)
{
  md::MaterialData::~MaterialData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0D1D0;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 23);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *this = &unk_1F2A60328;
  v4 = *(this + 4);
  if (v4 != *(this + 6))
  {
    free(v4);
  }
}

void std::__shared_ptr_emplace<gms::MaterialMetaData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0D200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

unint64_t md::ita::PrepareGradientParametersConstantDataHandle::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::RampMaterialData const&,md::ls::ColorRampDataHandle &>)::$_1::operator()(uint64_t **a1, unint64_t a2, float a3, float a4)
{
  v5 = -a3;
  v6 = 1.0 / (a4 - a3);
  v7 = **a1;
  v122 = v6;
  v123 = -a3;
  v8 = COERCE_UNSIGNED_INT(-a3);
  if (a3 == 0.0)
  {
    v8 = 0;
  }

  v9 = LODWORD(v6) - 0x61C8864680B583EBLL;
  if (v6 == 0.0)
  {
    v9 = 0x9E3779B97F4A7C15;
  }

  v10 = ((v8 >> 2) + (v8 << 6) + v9) ^ v8;
  v11 = *(v7 + 11936);
  if (!*&v11)
  {
    goto LABEL_29;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v10;
    if (v10 >= *&v11)
    {
      v13 = v10 % *&v11;
    }
  }

  else
  {
    v13 = v10 & (*&v11 - 1);
  }

  v14 = *(*(v7 + 11928) + 8 * v13);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  if (!v15)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v16 = *(v15 + 1);
    if (v16 == v10)
    {
      break;
    }

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
      goto LABEL_29;
    }

LABEL_24:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_29;
    }
  }

  if (v15[4] != v5 || v15[5] != v6)
  {
    goto LABEL_24;
  }

  v18 = *(v15 + 3);
  if (v18)
  {
    if (v18 == a2)
    {
      return a2;
    }

    md::VKMRenderResourcesStore::_disconnect<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>>(v7, a2);
    v58 = **a1;
    v59 = *(*(*(v58 + 11584) + 8 * (v18 >> 6)) + 16 * (v18 & 0x3F) + 8);
    v60 = *(*(v58 + 11632) + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v59 & 0x3F);
    ++*(v60 + 8);
    return v18;
  }

LABEL_29:
  v124 = 0uLL;
  v125 = 0;
  v127 = 0;
  v19 = *(v7 + 11792);
  v20 = *(v7 + 11808);
  if (*(v7 + 11784) == v19)
  {
    v18 = ((*(v7 + 11816) - v20) >> 3) | 0x100000000;
    v128 = v18;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v7 + 11808, &v128);
  }

  else
  {
    v18 = *(v20 + 8 * *(v19 - 8));
    *(v7 + 11792) = v19 - 8;
  }

  v128 = v18;
  v21 = v18 >> 6;
  v22 = *(v7 + 11592);
  v23 = *(v7 + 11584);
  v24 = v22 - v23;
  if (v21 >= (v22 - v23) >> 3)
  {
    v25 = v21 + 1;
    v26 = v21 + 1 - (v24 >> 3);
    v27 = *(v7 + 11600);
    if (v26 > (v27 - v22) >> 3)
    {
      v28 = v27 - v23;
      if (v28 >> 2 > v25)
      {
        v25 = v28 >> 2;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFF8)
      {
        v29 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v25;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v29);
    }

    bzero(*(v7 + 11592), 8 * v26);
    *(v7 + 11592) = v22 + 8 * v26;
    v23 = *(v7 + 11584);
  }

  v30 = *(v23 + 8 * v21);
  if (!v30)
  {
    operator new();
  }

  v31 = (v30 + 16 * (v18 & 0x3F));
  if (*v31 == -1 && v31[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v7 + 11608, &v128);
    v33 = ((*(v7 + 11616) - *(v7 + 11608)) >> 3) - 1;
    *v31 = HIDWORD(v18);
    v31[1] = v33;
    v34 = v33 & 0x3F;
    v35 = (*(*(v7 + 11632) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((v7 + 11632), v33)) + 24 * v34);
    *v35 = vdupq_n_s64(1uLL);
    v35[1].i16[0] = 1;
    v36 = v33 >> 6;
    v37 = *(v7 + 11688);
    v38 = *(v7 + 11680);
    v39 = v37 - v38;
    v121 = v33 >> 6;
    if (v33 >> 6 >= (v37 - v38) >> 3)
    {
      v40 = v36 + 1;
      v41 = v36 + 1 - (v39 >> 3);
      v42 = *(v7 + 11696);
      if (v41 > (v42 - v37) >> 3)
      {
        v43 = v42 - v38;
        v44 = (v42 - v38) >> 2;
        if (v44 <= v40)
        {
          v44 = v36 + 1;
        }

        if (v43 >= 0x7FFFFFFFFFFFFFF8)
        {
          v45 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v44;
        }

        if (!(v45 >> 61))
        {
          operator new();
        }

        goto LABEL_176;
      }

      v46 = 0;
      v47 = (v41 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v48 = vdupq_n_s64(v47);
      do
      {
        v49 = vmovn_s64(vcgeq_u64(v48, vorrq_s8(vdupq_n_s64(v46), xmmword_1B33B0560)));
        if (v49.i8[0])
        {
          *(v37 + 8 * v46) = 0;
        }

        if (v49.i8[4])
        {
          *(v37 + 8 * v46 + 8) = 0;
        }

        v46 += 2;
      }

      while (v47 - ((v41 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v46);
      *(v7 + 11688) = v37 + 8 * v41;
      v50 = *(v7 + 11712);
      v51 = *(v7 + 11704);
      v24 = v50 - v51;
      v52 = (v50 - v51) >> 4;
      if (v52 <= v36)
      {
        v53 = v40 - v52;
        v54 = *(v7 + 11720);
        if (v53 > (v54 - v50) >> 4)
        {
          v55 = v54 - v51;
          v56 = v55 >> 3;
          if (v55 >> 3 <= v40)
          {
            v56 = v40;
          }

          if (v55 >= 0x7FFFFFFFFFFFFFF0)
          {
            v57 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v56;
          }

          if (!(v57 >> 60))
          {
            operator new();
          }

          goto LABEL_176;
        }

        bzero(*(v7 + 11712), 16 * v53);
        *(v7 + 11712) = v50 + 16 * v53;
        v36 = v121;
      }

      else if (v40 < v52)
      {
        *(v7 + 11712) = v51 + 16 * v40;
      }

      v38 = *(v7 + 11680);
      if (v39 < (*(v7 + 11688) - v38))
      {
        operator new();
      }
    }

    v61 = *(v38 + 8 * v36) + 24 * v34;
    *v61 = v124;
    *(v61 + 16) = v125;
    *(&v124 + 1) = 0;
    v125 = 0;
    v62 = *(v7 + 11736);
    v63 = *(v7 + 11728);
    v64 = v62 - v63;
    if (v36 < (v62 - v63) >> 3)
    {
LABEL_107:
      *(*(v63 + 8 * v36) + 8 * v34) = v127;
      goto LABEL_108;
    }

    v65 = v36 + 1;
    v66 = v36 + 1 - (v64 >> 3);
    v67 = *(v7 + 11744);
    if (v66 > (v67 - v62) >> 3)
    {
      v68 = v67 - v63;
      v69 = (v67 - v63) >> 2;
      if (v69 <= v65)
      {
        v69 = v36 + 1;
      }

      if (v68 >= 0x7FFFFFFFFFFFFFF8)
      {
        v70 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v70 = v69;
      }

      if (!(v70 >> 61))
      {
        operator new();
      }

      goto LABEL_176;
    }

    v71 = 0;
    v72 = (v66 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v73 = vdupq_n_s64(v72);
    do
    {
      v74 = vmovn_s64(vcgeq_u64(v73, vorrq_s8(vdupq_n_s64(v71), xmmword_1B33B0560)));
      if (v74.i8[0])
      {
        *(v62 + 8 * v71) = 0;
      }

      if (v74.i8[4])
      {
        *(v62 + 8 * v71 + 8) = 0;
      }

      v71 += 2;
    }

    while (v72 - ((v66 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v71);
    *(v7 + 11736) = v62 + 8 * v66;
    v75 = *(v7 + 11760);
    v76 = *(v7 + 11752);
    v24 = v75 - v76;
    v77 = (v75 - v76) >> 4;
    if (v77 > v36)
    {
      if (v65 < v77)
      {
        *(v7 + 11760) = v76 + 16 * v65;
      }

      goto LABEL_105;
    }

    v78 = v65 - v77;
    v79 = *(v7 + 11768);
    if (v78 <= (v79 - v75) >> 4)
    {
      bzero(*(v7 + 11760), 16 * v78);
      *(v7 + 11760) = v75 + 16 * v78;
      v36 = v121;
LABEL_105:
      v63 = *(v7 + 11728);
      if (v64 < (*(v7 + 11736) - v63))
      {
        operator new();
      }

      goto LABEL_107;
    }

    v80 = v79 - v76;
    v81 = v80 >> 3;
    if (v80 >> 3 <= v65)
    {
      v81 = v65;
    }

    if (v80 >= 0x7FFFFFFFFFFFFFF0)
    {
      v82 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v82 = v81;
    }

    if (!(v82 >> 60))
    {
      operator new();
    }

LABEL_176:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_108:
  v83 = *(v7 + 11936);
  if (!*&v83)
  {
    goto LABEL_129;
  }

  v84 = vcnt_s8(v83);
  v84.i16[0] = vaddlv_u8(v84);
  if (v84.u32[0] > 1uLL)
  {
    v85 = v10;
    if (v10 >= *&v83)
    {
      v85 = v10 % *&v83;
    }
  }

  else
  {
    v85 = v10 & (*&v83 - 1);
  }

  v86 = *(*(v7 + 11928) + 8 * v85);
  if (!v86 || (v87 = *v86) == 0)
  {
LABEL_129:
    operator new();
  }

  while (2)
  {
    v88 = *(v87 + 1);
    if (v88 != v10)
    {
      if (v84.u32[0] > 1uLL)
      {
        if (v88 >= *&v83)
        {
          v88 %= *&v83;
        }
      }

      else
      {
        v88 &= *&v83 - 1;
      }

      if (v88 != v85)
      {
        goto LABEL_129;
      }

      goto LABEL_128;
    }

    if (v87[4] != v123 || v87[5] != v122)
    {
LABEL_128:
      v87 = *v87;
      if (!v87)
      {
        goto LABEL_129;
      }

      continue;
    }

    break;
  }

  *(v87 + 3) = v18;
  v90 = *(v7 + 11976);
  if (!*&v90)
  {
    goto LABEL_147;
  }

  v91 = vcnt_s8(v90);
  v91.i16[0] = vaddlv_u8(v91);
  if (v91.u32[0] > 1uLL)
  {
    v92 = v18;
    if (v18 >= *&v90)
    {
      v92 = v18 % *&v90;
    }
  }

  else
  {
    v92 = (*&v90 - 1) & v18;
  }

  v93 = *(*(v7 + 11968) + 8 * v92);
  if (!v93 || (v94 = *v93) == 0)
  {
LABEL_147:
    operator new();
  }

  while (2)
  {
    v95 = v94[1];
    if (v95 != v18)
    {
      if (v91.u32[0] > 1uLL)
      {
        if (v95 >= *&v90)
        {
          v95 %= *&v90;
        }
      }

      else
      {
        v95 &= *&v90 - 1;
      }

      if (v95 != v92)
      {
        goto LABEL_147;
      }

      goto LABEL_146;
    }

    if (v94[2] != v18)
    {
LABEL_146:
      v94 = *v94;
      if (!v94)
      {
        goto LABEL_147;
      }

      continue;
    }

    break;
  }

  v94[3] = __PAIR64__(LODWORD(v122), LODWORD(v123));
  if (v125)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v125);
  }

  v96 = **a1;
  v97 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v96 + 1447, v18);
  if (v97 == v96[1452])
  {
    v98 = 0;
    goto LABEL_174;
  }

  v99 = v97;
  v100 = v96[1451];
  v101 = v96[1485];
  if (v96[1484] == v101)
  {
    v102 = v96[1490];
    if (!v102)
    {
      v118 = std::__throw_bad_function_call[abi:nn200100]();
      operator delete(v24);
      _Unwind_Resume(v118);
    }

    v98 = (*(*v102 + 48))(v102);
  }

  else
  {
    v98 = *(v101 - 8);
    v96[1485] = v101 - 8;
  }

  v103 = 0x9DDFEA08EB382D69 * ((8 * (v98 & 0x1FFFFFFF) + 8) ^ HIDWORD(v98));
  v104 = 0x9DDFEA08EB382D69 * (HIDWORD(v98) ^ (v103 >> 47) ^ v103);
  v105 = 0x9DDFEA08EB382D69 * (v104 ^ (v104 >> 47));
  v106 = v96[1480];
  if (!*&v106)
  {
    goto LABEL_173;
  }

  v107 = vcnt_s8(v106);
  v107.i16[0] = vaddlv_u8(v107);
  if (v107.u32[0] > 1uLL)
  {
    v108 = 0x9DDFEA08EB382D69 * (v104 ^ (v104 >> 47));
    if (v105 >= *&v106)
    {
      v108 = v105 % *&v106;
    }
  }

  else
  {
    v108 = v105 & (*&v106 - 1);
  }

  v109 = *(v96[1479] + 8 * v108);
  if (!v109 || (v110 = *v109) == 0)
  {
LABEL_173:
    operator new();
  }

  while (2)
  {
    v111 = v110[1];
    if (v111 != v105)
    {
      if (v107.u32[0] > 1uLL)
      {
        if (v111 >= *&v106)
        {
          v111 %= *&v106;
        }
      }

      else
      {
        v111 &= *&v106 - 1;
      }

      if (v111 != v108)
      {
        goto LABEL_173;
      }

      goto LABEL_172;
    }

    if (v110[2] != v98)
    {
LABEL_172:
      v110 = *v110;
      if (!v110)
      {
        goto LABEL_173;
      }

      continue;
    }

    break;
  }

  v112 = (((v99 - v100) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v113 = *(v96[1454] + v112);
  v114 = ((v99 - v100) >> 3) & 0x3F;
  v115 = *(v96[1460] + v112);
  v116 = *(v96[1466] + v112);
  *(v115 + 24 * v114) = v98;
  ++*(v113 + 24 * v114);
  *(v116 + 8 * v114) = v98;
LABEL_174:
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v124, v98);
  *v126 = vrev64_s32(__PAIR64__(LODWORD(v122), LODWORD(v123)));
  ggl::BufferMemory::~BufferMemory(&v124);
  md::VKMRenderResourcesStore::_disconnect<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>>(**a1, a2);
  return v18;
}