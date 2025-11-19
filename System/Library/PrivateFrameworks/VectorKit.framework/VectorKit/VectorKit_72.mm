void sub_1B2CC8B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a29);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a27);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(void *a1, unint64_t a2)
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
      if (v10 == v5)
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

void *std::vector<gm::Matrix<float,3,1>>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<gm::Matrix<float,3,1>>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

void *std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<gm::Matrix<float,3,1>>>::pair[abi:nn200100]<true,0>(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  std::vector<gm::Matrix<float,3,1>>::vector[abi:nn200100](a1 + 2, a4);
  return a1;
}

void sub_1B2CC8D90(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<gm::Matrix<float,3,1>>>>(float *a1, unint64_t a2, uint64_t a3)
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
  v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *>>(v14);
  v16 = v15;
  *v15 = 0;
  v15[1] = v8;
  v17 = *(a3 + 8);
  v15[2] = *a3;
  v15[3] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v15[4] = 0;
  v15[5] = 0;
  v15[6] = 0;
  *(v15 + 2) = *(a3 + 16);
  v15[6] = *(a3 + 32);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v18 = (*(a1 + 5) + 1);
  v19 = a1[12];
  if (!v9 || (v19 * v9) < v18)
  {
    v20 = 1;
    if (v9 >= 3)
    {
      v20 = (v9 & (v9 - 1)) != 0;
    }

    v21 = v20 | (2 * v9);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::__rehash<true>(a1, v23);
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

  v24 = *a1;
  v25 = *(*a1 + 8 * v3);
  if (v25)
  {
    *v16 = *v25;
LABEL_40:
    *v25 = v16;
    goto LABEL_41;
  }

  *v16 = *(a1 + 3);
  *(a1 + 3) = v16;
  *(v24 + 8 * v3) = a1 + 6;
  if (*v16)
  {
    v26 = *(*v16 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v26 >= v9)
      {
        v26 %= v9;
      }
    }

    else
    {
      v26 &= v9 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 5);
}

BOOL gss::RenderStyle<gss::PropertyID>::valueIsConstantForKey<float>(uint64_t a1, int a2, int *a3)
{
  v6 = *a1;
  if (*a1 && (v7 = *v6, LODWORD(v6) = *v6 == 1.0, *(a1 + 10) == 1) && (v7 != 0.0 ? (v8 = v7 == 1.0) : (v8 = 1), !v8) || (v9 = *(a1 + v6 + 11), v7 = 0.0, v9 == 2))
  {
    v12 = 0;
    IsConstantFor = gss::RenderStyle<gss::PropertyID>::styleValueIsConstantForKey<float>(a1, a2, &v12 + 1, 0);
    result = IsConstantFor & gss::RenderStyle<gss::PropertyID>::styleValueIsConstantForKey<float>(a1, a2, &v12, 1u);
    if (result)
    {
      *a3 = *(&v12 + 1) + ((*&v12 - *(&v12 + 1)) * v7);
    }
  }

  else
  {

    return gss::RenderStyle<gss::PropertyID>::styleValueIsConstantForKey<float>(a1, a2, a3, v9);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<GhostPointKey,unsigned int>,std::__unordered_map_hasher<GhostPointKey,std::__hash_value_type<GhostPointKey,unsigned int>,GhostPointHash,GhostPointKeyEqual,true>,std::__unordered_map_equal<GhostPointKey,std::__hash_value_type<GhostPointKey,unsigned int>,GhostPointKeyEqual,GhostPointHash,true>,std::allocator<std::__hash_value_type<GhostPointKey,unsigned int>>>::find<GhostPointKey>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = ((v3 << 6) + (v3 >> 2) + v4 - 0x61C8864680B583EBLL) ^ v3;
  v6 = (a2[2] + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      if (result[2] == __PAIR64__(v4, v3) && *(result + 6) == v4)
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
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

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t (****anonymous namespace::addPatternedRibbonTo(mdm::zone_mallocator *a1, uint64_t *a2, int a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7))(void)
{
  v14 = mdm::zone_mallocator::instance(a1);
  v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PatternedRibbon>(v14);
  v16 = md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::StandardModeRibbonUsingPositionType(v15, a4);
  *v16 = &unk_1F2A386D0;
  *(v16 + 96) = 0;
  v47 = v16;
  v17 = *(v16 + 88);
  if (v17)
  {
    v18 = v15[9] + 1;
    do
    {
      v19 = *a5++;
      *(v18 - 1) = v19;
      *v18 = 0;
      v18 += 3;
      --v17;
    }

    while (v17);
  }

  v20 = *(a6 + 8);
  *(v15 + 96) = v20;
  if (v20 == 1)
  {
    *(v15 + 25) = *a6;
    *(v15 + 26) = *(a6 + 4);
  }

  v21 = *(a7 + 8);
  *(v15 + 97) = v21;
  if (v21 == 1)
  {
    *(v15 + 27) = *a7;
    *(v15 + 28) = *(a7 + 4);
  }

  v23 = *a2;
  v22 = a2[1];
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v44 = v23;
  v45 = v22;
  v46 = a3;
  v48[0] = &v44;
  v24 = std::__hash_table<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PatternedBatchKey,std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PatternedBatchKey>,std::equal_to<md::PatternedBatchKey>,true>,std::__unordered_map_equal<md::PatternedBatchKey,std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PatternedBatchKey>,std::hash<md::PatternedBatchKey>,true>,std::allocator<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::PatternedBatchKey,std::piecewise_construct_t const&,std::tuple<md::PatternedBatchKey const&>,std::tuple<>>(a1, &v44);
  v25 = v24;
  v27 = v24[6];
  v26 = v24[7];
  if (v27 >= v26)
  {
    v29 = v24[5];
    v30 = v27 - v29;
    v31 = (v27 - v29) >> 3;
    v32 = v31 + 1;
    if ((v31 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v33 = v26 - v29;
    if (v33 >> 2 > v32)
    {
      v32 = v33 >> 2;
    }

    if (v33 >= 0x7FFFFFFFFFFFFFF8)
    {
      v34 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v34 = v32;
    }

    v48[4] = v24 + 8;
    if (v34)
    {
      v35 = mdm::zone_mallocator::instance(v24);
      v36 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>>(v35, v34);
      v29 = v25[5];
      v30 = v25[6] - v29;
      v37 = v30 >> 3;
      v15 = v47;
    }

    else
    {
      v36 = 0;
      v37 = v31;
    }

    v38 = &v36[8 * v31];
    v39 = &v36[8 * v34];
    v47 = 0;
    v40 = &v38[-8 * v37];
    *v38 = v15;
    v28 = v38 + 8;
    memcpy(v40, v29, v30);
    v41 = v25[5];
    v25[5] = v40;
    v25[6] = v28;
    v42 = v25[7];
    v25[7] = v39;
    v48[2] = v41;
    v48[3] = v42;
    v48[0] = v41;
    v48[1] = v41;
    std::__split_buffer<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v48);
  }

  else
  {
    v47 = 0;
    *v27 = v15;
    v28 = v27 + 8;
  }

  v25[6] = v28;
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }

  return std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>::~unique_ptr[abi:nn200100](&v47);
}

void sub_1B2CC942C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a4);
  }

  std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t (****anonymous namespace::addRoadRibbonTo(mdm::zone_mallocator *a1, uint64_t *a2, int a3, unint64_t a4, uint64_t *a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10))(void)
{
  v17 = mdm::zone_mallocator::instance(a1);
  v18 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RoadRibbon>(v17);
  v19 = md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::StandardModeRibbonUsingPositionType(v18, a4);
  *v19 = &unk_1F2A38710;
  *(v19 + 98) = 0;
  v53 = v19;
  *(v19 + 96) = a6;
  *(v19 + 97) = a7;
  *(v19 + 88) = a4;
  if (a4)
  {
    v20 = v18[9] + 1;
    v21 = 1;
    do
    {
      v22 = *a5++;
      *(v20 - 1) = v22;
      *v20 = 0;
      v20 += 3;
      v23 = v21++;
    }

    while (v23 < a4);
  }

  v24 = *(a9 + 8);
  *(v18 + 98) = v24;
  if (v24)
  {
    *(v18 + 25) = *a9;
    *(v18 + 26) = *(a9 + 4);
  }

  v25 = *(a10 + 8);
  *(v18 + 99) = v25;
  if (v25 == 1)
  {
    *(v18 + 27) = *a10;
    *(v18 + 28) = *(a10 + 4);
  }

  v27 = *a2;
  v26 = a2[1];
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = v27;
  v50 = v26;
  v51 = a3;
  v52 = a8;
  v54[0] = &v49;
  v28 = std::__hash_table<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RoadBatchKey,std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RoadBatchKey>,std::equal_to<md::RoadBatchKey>,true>,std::__unordered_map_equal<md::RoadBatchKey,std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RoadBatchKey>,std::hash<md::RoadBatchKey>,true>,std::allocator<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::RoadBatchKey,std::piecewise_construct_t const&,std::tuple<md::RoadBatchKey const&>,std::tuple<>>(a1, &v49);
  v29 = v28;
  v31 = v28[6];
  v30 = v28[7];
  if (v31 >= v30)
  {
    v33 = v28[5];
    v34 = v31 - v33;
    v35 = (v31 - v33) >> 3;
    v36 = v35 + 1;
    if ((v35 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v37 = v30 - v33;
    if (v37 >> 2 > v36)
    {
      v36 = v37 >> 2;
    }

    if (v37 >= 0x7FFFFFFFFFFFFFF8)
    {
      v38 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v38 = v36;
    }

    v54[4] = v28 + 8;
    if (v38)
    {
      v39 = mdm::zone_mallocator::instance(v28);
      v40 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>>(v39, v38);
      v33 = v29[5];
      v34 = v29[6] - v33;
      v41 = v34 >> 3;
      v18 = v53;
    }

    else
    {
      v40 = 0;
      v41 = v35;
    }

    v42 = &v40[8 * v35];
    v43 = &v40[8 * v38];
    v53 = 0;
    v44 = &v42[-8 * v41];
    *v42 = v18;
    v32 = v42 + 8;
    memcpy(v44, v33, v34);
    v45 = v29[5];
    v29[5] = v44;
    v29[6] = v32;
    v46 = v29[7];
    v29[7] = v43;
    v54[2] = v45;
    v54[3] = v46;
    v54[0] = v45;
    v54[1] = v45;
    std::__split_buffer<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v54);
  }

  else
  {
    v53 = 0;
    *v31 = v18;
    v32 = v31 + 8;
  }

  v29[6] = v32;
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v50);
  }

  return std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>::~unique_ptr[abi:nn200100](&v53);
}

void sub_1B2CC9678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a4);
  }

  std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *___ZNK2md19RoadLayerDataSource17buildRoadTileDataERKN3gdc19LayerDataRequestKeyEPN3ggl6LoaderERKN3geo8QuadTileERKNSt3__16vectorINSC_10shared_ptrINS_21GEOVectorTileResourceEEENSC_9allocatorISG_EEEERKNSC_13unordered_setINS_21RoadFeatureAndSectionENSC_4hashISN_EENSC_8equal_toISN_EENSH_ISN_EEEEONSC_10unique_ptrINS_19DaVinciTrafficLayerENSC_14default_deleteISX_EEEEONSW_INS_17CasedTrafficLayerENSY_IS12_EEEERKN3gss19FeatureAttributeSetENSE_INS5_17ConstantDataTypedINS5_4Tile4ViewEEEEENSE_INS1A_INS1B_9TransformEEEEERKNSE_INS_27TrafficSkeletonTileResourceEEERKNSD_INSE_INS_26TrafficDynamicTileResourceEEENSH_IS1N_EEEEONSD_INS1_8Resource12LoadMetadataENSH_IS1T_EEEE_block_invoke(void *result)
{
  if (*(*(result[4] + 8) + 72))
  {
    operator new();
  }

  if (*(*(result[6] + 8) + 72))
  {
    operator new();
  }

  if (*(*(result[8] + 8) + 72))
  {
    operator new();
  }

  if (*(*(result[10] + 8) + 72))
  {
    operator new();
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<gm::Matrix<float,3,1>>>,0>(v1 + 2);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *>(v3, v2);
  }

  return a1;
}

uint64_t (****std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RoadRibbon>(v4, v2);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RoadRibbon>(uint64_t a1, void *a2)
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

void std::__destroy_at[abi:nn200100]<std::pair<md::PatternedBatchKey const,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>>(v6, v5);
  }
}

uint64_t (****std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PatternedRibbon>(v4, v2);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PatternedRibbon>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *>(uint64_t a1, void *a2)
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

void std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<gm::Matrix<float,3,1>>>,0>(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::RoadTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E9EC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void __destroy_helper_block_ea8_96c68_ZTSNSt3__110shared_ptrIN3ggl17ConstantDataTypedINS1_4Tile4ViewEEEEE112c73_ZTSNSt3__110shared_ptrIN3ggl17ConstantDataTypedINS1_4Tile9TransformEEEEE(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void *__copy_helper_block_ea8_96c68_ZTSNSt3__110shared_ptrIN3ggl17ConstantDataTypedINS1_4Tile4ViewEEEEE112c73_ZTSNSt3__110shared_ptrIN3ggl17ConstantDataTypedINS1_4Tile9TransformEEEEE(void *result, void *a2)
{
  v2 = a2[13];
  result[12] = a2[12];
  result[13] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[15];
  result[14] = a2[14];
  result[15] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RoadRibbon>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x78uLL, 0x10A104081A87A85uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>>(uint64_t a1, uint64_t a2)
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

void md::RoadRibbon::~RoadRibbon(md::RoadRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PatternedRibbon>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x78uLL, 0x10A1040730F265CuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

uint64_t *std::__hash_table<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PatternedBatchKey,std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PatternedBatchKey>,std::equal_to<md::PatternedBatchKey>,true>,std::__unordered_map_equal<md::PatternedBatchKey,std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PatternedBatchKey>,std::hash<md::PatternedBatchKey>,true>,std::allocator<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::PatternedBatchKey,std::piecewise_construct_t const&,std::tuple<md::PatternedBatchKey const&>,std::tuple<>>(void *a1, md::PatternedBatchKey *this)
{
  v4 = md::PatternedBatchKey::hash(this);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_21;
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
LABEL_21:
    operator new();
  }

  v12 = *this;
  v16 = *(this + 4);
  while (1)
  {
    v13 = v11[1];
    if (v13 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v13 >= *&v6)
      {
        v13 %= *&v6;
      }
    }

    else
    {
      v13 &= *&v6 - 1;
    }

    if (v13 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  v14 = v11[2];
  if (!gss::FeatureAttributeSet::operator==(v14[30], v14[31], *(v12 + 240), *(v12 + 248)) || !geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(v14 + 34, v12 + 272) || *(v11 + 8) != v16)
  {
    goto LABEL_20;
  }

  return v11;
}

void sub_1B2CCA65C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>>(uint64_t a1, uint64_t a2)
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

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(v1 + 2))
  {
    *(v1 + 2) = i - 1;
    a1 = std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>::~unique_ptr[abi:nn200100](i - 1);
  }

  v4 = *v1;
  if (*v1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>>(v5, v4);
  }

  return v1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::PatternedBatchKey const,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void md::PatternedRibbon::~PatternedRibbon(md::PatternedRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

BOOL gss::RenderStyle<gss::PropertyID>::styleValueIsConstantForKey<float>(uint64_t a1, int a2, int *a3, unsigned int a4)
{
  result = gss::CartoStyle<gss::PropertyID>::valueIsConstantForKey<float>(*(a1 + 16 * a4 + 16), a2, a3);
  if (result)
  {
    v9 = a1 + 16 * a4;
    if (*(v9 + 56))
    {
      v10 = *(v9 + 48);
      v11 = 8 * *(v9 + 56);
      while (1)
      {
        v12 = *v10;
        v13 = *(*v10 + 72);
        if (v13)
        {
          v14 = *v13;
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v13, a2) != *(v14 + 6))
          {
            result = gss::CartoStyle<gss::PropertyID>::valueIsConstantForKey<float>(v12, a2, a3);
            if (!result)
            {
              break;
            }
          }
        }

        ++v10;
        v11 -= 8;
        if (!v11)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL gss::CartoStyle<gss::PropertyID>::valueIsConstantForKey<float>(uint64_t a1, int a2, int *a3)
{
  v5 = *(a1 + 72);
  v6 = gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<float>(v5, a2, 0, 0);
  v7 = *v6;
  *a3 = *v6;
  v8 = 1;
  do
  {
    v9 = *gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<float>(v5, a2, v8, 0);
    if (v8 > 0x16u)
    {
      break;
    }

    ++v8;
  }

  while (v9 == v7);
  return v9 == v7;
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::__rehash<true>(mdm::zone_mallocator *prime, size_t __n)
{
  v2 = prime;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
      v3 = prime;
    }
  }

  v4 = *(v2 + 8);
  if (*&v3 <= *&v4)
  {
    if (*&v3 >= *&v4)
    {
      return;
    }

    prime = vcvtps_u32_f32(*(v2 + 5) / *(v2 + 12));
    if (*&v4 < 3uLL || (v13 = vcnt_s8(v4), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
    {
      prime = std::__next_prime(prime);
    }

    else
    {
      v14 = 1 << -__clz(prime - 1);
      if (prime >= 2)
      {
        prime = v14;
      }
    }

    if (*&v3 <= prime)
    {
      v3 = prime;
    }

    if (*&v3 >= *&v4)
    {
      return;
    }

    if (!*&v3)
    {
      std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> **,0>(v2, 0);
      *(v2 + 1) = 0;
      return;
    }
  }

  v5 = mdm::zone_mallocator::instance(prime);
  v6 = pthread_rwlock_rdlock((v5 + 32));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "read lock", v7);
  }

  v8 = malloc_type_zone_malloc(*v5, 8 * *&v3, 0x2004093837F09uLL);
  atomic_fetch_add((v5 + 24), 1u);
  geo::read_write_lock::unlock((v5 + 32));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> **,0>(v2, v8);
  v9 = 0;
  *(v2 + 1) = v3;
  do
  {
    *(*v2 + 8 * v9++) = 0;
  }

  while (*&v3 != v9);
  v10 = *(v2 + 3);
  if (v10)
  {
    v11 = v10[1];
    v12 = vcnt_s8(v3);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    *(*v2 + 8 * v11) = v2 + 24;
    v15 = *v10;
    if (*v10)
    {
      do
      {
        v16 = v15[1];
        if (v12.u32[0] > 1uLL)
        {
          if (v16 >= *&v3)
          {
            v16 %= *&v3;
          }
        }

        else
        {
          v16 &= *&v3 - 1;
        }

        if (v16 != v11)
        {
          v17 = *v2;
          if (!*(*v2 + 8 * v16))
          {
            *(v17 + 8 * v16) = v10;
            goto LABEL_30;
          }

          *v10 = *v15;
          *v15 = **(v17 + 8 * v16);
          **(v17 + 8 * v16) = v15;
          v15 = v10;
        }

        v16 = v11;
LABEL_30:
        v10 = v15;
        v15 = *v15;
        v11 = v16;
      }

      while (v15);
    }
  }
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *a1, void *a2)
{
  if (a1)
  {
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<gm::Matrix<float,3,1>>>,0>(a2 + 2);
  }

  if (a2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *>>(v3, a2);
  }
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *>(v3, v2);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x38uLL, 0x10200408CE39EC4uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void *std::vector<gm::Matrix<float,3,1>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<gm::Matrix<float,3,1>>::__vallocate[abi:nn200100](result, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 2));
  }

  return result;
}

void std::vector<gm::Matrix<float,3,1>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

__n128 __Block_byref_object_copy__21(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v2 = *(a2 + 144);
  v3 = *(a2 + 160);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 144) = v2;
  *(a1 + 160) = v3;
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  result = *(a2 + 224);
  v5 = *(a2 + 240);
  v6 = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 240) = v5;
  *(a1 + 256) = v6;
  *(a1 + 224) = result;
  return result;
}

void __Block_byref_object_dispose__22(void *a1)
{
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[10] = v6;
    operator delete(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    a1[7] = v7;

    operator delete(v7);
  }
}

void ___ZNK2md19RoadLayerDataSource17createTrafficMeshENS_16TrafficMeshStyle5StyleERNSt3__110unique_ptrINS_19DaVinciTrafficLayerENS3_14default_deleteIS5_EEEERNS4_INS_17CasedTrafficLayerENS6_ISA_EEEERKN3geo8QuadTileERKNS3_10shared_ptrINS_21GEOVectorTileResourceEEERKNSI_INS_27TrafficSkeletonTileResourceEEERKNS3_6vectorINSI_INS_26TrafficDynamicTileResourceEEENS3_9allocatorIST_EEEERKS1_PN3ggl6LoaderERKNSI_INS11_17ConstantDataTypedINS11_4Tile4ViewEEEEERKNSI_INS14_INS15_9TransformEEEEEb_block_invoke(uint64_t a1, geo::codec *this, unint64_t *a3, int a4, int a5, int a6, uint64_t a7, int a8, float a9, float a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, char a15, uint64_t a16, char a17)
{
  v24 = a3;
  v60[4] = *MEMORY[0x1E69E9840];
  v59 = 0;
  v27 = geo::codec::multiSectionFeatureCharacteristicPoints(this, &v59, a3);
  v28 = md::characteristicPointSectionRange(v27, v59, a4);
  v35 = a5;
  v36 = v24;
  if (*(a1 + 128) != 4)
  {
    v29 = a6;
    v31 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  gss::FeatureAttributeSet::setByReplacingAttributes(v60, (*a7 + 240), *(a1 + 72), *(a1 + 80));
  v29 = a6;
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v55, *(a1 + 104), v60);
  v31 = v55;
  v30 = v56;
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v55, v31, v30);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  if (v58 != 1)
  {
LABEL_25:
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v57);
    }

    if (v56)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v56);
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v60);
    if (v30)
    {
      goto LABEL_21;
    }

    return;
  }

  if ((md::trafficVisibleAtSpeed(&v55, a8) & 1) == 0)
  {
    if (v58)
    {
      (*(*v55 + 56))(v55);
    }

    goto LABEL_25;
  }

  if (v58)
  {
    (*(*v55 + 56))(v55);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v57);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v60);
LABEL_16:
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3321888768;
  v37[2] = ___ZNK2md19RoadLayerDataSource17createTrafficMeshENS_16TrafficMeshStyle5StyleERNSt3__110unique_ptrINS_19DaVinciTrafficLayerENS3_14default_deleteIS5_EEEERNS4_INS_17CasedTrafficLayerENS6_ISA_EEEERKN3geo8QuadTileERKNS3_10shared_ptrINS_21GEOVectorTileResourceEEERKNSI_INS_27TrafficSkeletonTileResourceEEERKNS3_6vectorINSI_INS_26TrafficDynamicTileResourceEEENS3_9allocatorIST_EEEERKS1_PN3ggl6LoaderERKNSI_INS11_17ConstantDataTypedINS11_4Tile4ViewEEEEERKNSI_INS14_INS15_9TransformEEEEEb_block_invoke_2;
  v37[3] = &unk_1F29E9D50;
  v52 = a17;
  v37[4] = *(a1 + 32);
  v40 = this;
  v41 = a7;
  v53 = a8;
  v46 = v35;
  v47 = v29;
  v48 = a4;
  v49 = a9;
  v54 = a15;
  v42 = v31;
  v43 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = *(a1 + 128);
  v33 = *(a1 + 120);
  v34 = *(a1 + 56);
  v38 = *(a1 + 40);
  v39 = v34;
  v50 = v32;
  v51 = v36;
  v44 = v33;
  v45 = a16;
  md::splitRoadSectionByZ(a11, a14, &v27[100 * v28], HIDWORD(v28) - v28, v37, a9, a10);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  if (v30)
  {
LABEL_21:
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }
}

void sub_1B2CCB1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a30);
  }

  _Unwind_Resume(exception_object);
}

void md::CasedTrafficLayer::~CasedTrafficLayer(md::CasedTrafficLayer *this)
{
  *this = &unk_1F29E9E80;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E9E80;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonLayer(this);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29E9EA0;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[9];
  a1[9] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void md::Ribbons::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29E9E80;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29E9E80;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonLayer(a1);
}

void std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>::reset[abi:nn200100](uint64_t (****a1)(void))
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::CasedTrafficRibbon>(v3, v1);
  }
}

mdm::zone_mallocator *std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v22[4] = result + 24;
    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(result);
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>>(v14, v13);
      v8 = *v3;
      v9 = *(v3 + 1) - *v3;
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v10];
    v17 = &v15[8 * v13];
    v18 = *a2;
    *a2 = 0;
    v19 = &v16[-8 * (v9 >> 3)];
    *v16 = v18;
    v7 = v16 + 8;
    memcpy(v19, v8, v9);
    v20 = *v3;
    *v3 = v19;
    *(v3 + 1) = v7;
    v21 = *(v3 + 2);
    *(v3 + 2) = v17;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  *(v3 + 1) = v7;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v117 = a2;
    v119 = a2 - 1;
    v114 = a2 - 3;
    v115 = a2 - 2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = a2 - v6;
          if (v8 > 2)
          {
            switch(v8)
            {
              case 3:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v119);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v119);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v6 + 3, v119);
            }
          }

          else
          {
            if (v8 < 2)
            {
              return result;
            }

            if (v8 == 2)
            {
              v41 = *v119;
              v42 = ggl::CullingGrid::sortOrderForCells(*(*v119 + 96));
              v43 = *v6;
              result = ggl::CullingGrid::sortOrderForCells(*(*v6 + 96));
              if (v42 < result)
              {
                *v6 = v41;
                *v119 = v43;
              }

              return result;
            }
          }

          if (v8 <= 23)
          {
            v44 = v6 + 1;
            v46 = v6 == a2 || v44 == a2;
            if (a4)
            {
              if (!v46)
              {
                v47 = 0;
                v48 = v6;
                do
                {
                  v49 = v44;
                  v50 = v48[1];
                  v51 = ggl::CullingGrid::sortOrderForCells(*(v50 + 96));
                  result = ggl::CullingGrid::sortOrderForCells(*(*v48 + 96));
                  if (v51 < result)
                  {
                    *v49 = 0;
                    v124 = v50;
                    v52 = *v48;
                    v53 = v47;
                    while (1)
                    {
                      *(v7 + v53) = 0;
                      std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100]((v7 + v53 + 8), v52);
                      v54 = v124;
                      if (!v53)
                      {
                        break;
                      }

                      v55 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                      v52 = *(v7 + v53 - 8);
                      v53 -= 8;
                      if (v55 >= ggl::CullingGrid::sortOrderForCells(*(v52 + 96)))
                      {
                        v56 = (v7 + v53 + 8);
                        goto LABEL_84;
                      }
                    }

                    v56 = v7;
LABEL_84:
                    v124 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v56, v54);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                    a2 = v117;
                  }

                  v44 = v49 + 1;
                  v47 += 8;
                  v48 = v49;
                }

                while (v49 + 1 != a2);
              }
            }

            else if (!v46)
            {
              do
              {
                v106 = v44;
                v107 = v7[1];
                v108 = ggl::CullingGrid::sortOrderForCells(*(v107 + 96));
                result = ggl::CullingGrid::sortOrderForCells(*(*v7 + 96));
                if (v108 < result)
                {
                  *v106 = 0;
                  v124 = v107;
                  v109 = *v7;
                  v110 = v106;
                  v111 = v106;
                  do
                  {
                    *--v111 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v110, v109);
                    v112 = v124;
                    v113 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                    v109 = *(v110 - 2);
                    v110 = v111;
                  }

                  while (v113 < ggl::CullingGrid::sortOrderForCells(*(v109 + 96)));
                  v124 = 0;
                  std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v111, v112);
                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                }

                v44 = v106 + 1;
                v7 = v106;
              }

              while (v106 + 1 != a2);
            }

            return result;
          }

          v122 = v6;
          if (!a3)
          {
            if (v6 != a2)
            {
              v57 = (v8 - 2) >> 1;
              v120 = v57;
              do
              {
                v58 = v57;
                if (v120 >= v57)
                {
                  v59 = (2 * v57) | 1;
                  v60 = &v122[v59];
                  if (2 * v57 + 2 >= v8)
                  {
                    v65 = *v60;
                  }

                  else
                  {
                    v61 = *v60;
                    v62 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                    v63 = v60[1];
                    v64 = ggl::CullingGrid::sortOrderForCells(*(v63 + 96));
                    if (v62 >= v64)
                    {
                      v65 = v61;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    if (v62 < v64)
                    {
                      ++v60;
                      v59 = 2 * v58 + 2;
                    }
                  }

                  v66 = &v122[v58];
                  v67 = ggl::CullingGrid::sortOrderForCells(*(v65 + 96));
                  v68 = *v66;
                  result = ggl::CullingGrid::sortOrderForCells(*(*v66 + 96));
                  if (v67 >= result)
                  {
                    *v66 = 0;
                    v124 = v68;
                    v69 = *v60;
                    while (1)
                    {
                      v70 = v60;
                      *v60 = 0;
                      std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v66, v69);
                      if (v120 < v59)
                      {
                        break;
                      }

                      v71 = (2 * v59) | 1;
                      v60 = &v122[v71];
                      v72 = 2 * v59 + 2;
                      if (v72 >= v8)
                      {
                        v69 = *v60;
                        v59 = (2 * v59) | 1;
                      }

                      else
                      {
                        v73 = *v60;
                        v74 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                        v75 = v60[1];
                        v76 = ggl::CullingGrid::sortOrderForCells(*(v75 + 96));
                        v77 = v74 >= v76;
                        if (v74 >= v76)
                        {
                          v69 = v73;
                        }

                        else
                        {
                          v69 = v75;
                        }

                        if (v77)
                        {
                          v59 = v71;
                        }

                        else
                        {
                          ++v60;
                          v59 = v72;
                        }
                      }

                      v78 = ggl::CullingGrid::sortOrderForCells(*(v69 + 96));
                      v79 = v124;
                      v66 = v70;
                      if (v78 < ggl::CullingGrid::sortOrderForCells(*(v124 + 96)))
                      {
                        goto LABEL_112;
                      }
                    }

                    v79 = v124;
LABEL_112:
                    a2 = v117;
                    v124 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v70, v79);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                  }
                }

                v57 = v58 - 1;
              }

              while (v58);
              v80 = v122;
              do
              {
                if (v8 >= 2)
                {
                  v81 = 0;
                  v82 = *v80;
                  *v80 = 0;
                  v118 = a2;
                  v121 = v82;
                  v123 = v82;
                  v83 = v80;
                  do
                  {
                    v84 = &v83[v81];
                    v85 = v84 + 1;
                    v86 = (2 * v81) | 1;
                    v81 = 2 * v81 + 2;
                    if (v81 >= v8)
                    {
                      v93 = *v85;
                      v81 = v86;
                    }

                    else
                    {
                      v87 = v84[1];
                      v88 = ggl::CullingGrid::sortOrderForCells(*(v87 + 96));
                      v91 = v84[2];
                      v90 = v84 + 2;
                      v89 = v91;
                      v92 = ggl::CullingGrid::sortOrderForCells(*(v91 + 96));
                      if (v88 >= v92)
                      {
                        v93 = v87;
                      }

                      else
                      {
                        v93 = v89;
                      }

                      if (v88 >= v92)
                      {
                        v81 = v86;
                      }

                      else
                      {
                        v85 = v90;
                      }
                    }

                    *v85 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v83, v93);
                    v83 = v85;
                  }

                  while (v81 <= ((v8 - 2) >> 1));
                  a2 = v118;
                  v94 = v118 - 1;
                  if (v85 == v118 - 1)
                  {
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v85, v121);
                    v80 = v122;
                  }

                  else
                  {
                    v95 = *v94;
                    *v94 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v85, v95);
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v94, v121);
                    v80 = v122;
                    v96 = (v85 - v122 + 8) >> 3;
                    v97 = v96 < 2;
                    v98 = v96 - 2;
                    if (!v97)
                    {
                      v99 = v98 >> 1;
                      v100 = &v122[v98 >> 1];
                      v101 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                      v102 = *v85;
                      if (v101 < ggl::CullingGrid::sortOrderForCells(*(*v85 + 96)))
                      {
                        *v85 = 0;
                        v103 = *v100;
                        do
                        {
                          v104 = v100;
                          *v100 = 0;
                          std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v85, v103);
                          if (!v99)
                          {
                            break;
                          }

                          v99 = (v99 - 1) >> 1;
                          v100 = &v122[v99];
                          v103 = *v100;
                          v105 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                          v85 = v104;
                        }

                        while (v105 < ggl::CullingGrid::sortOrderForCells(*(v102 + 96)));
                        v124 = 0;
                        std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v104, v102);
                        std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                        a2 = v118;
                      }
                    }
                  }

                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](&v123, 0);
                }

                --a2;
                v97 = v8-- > 2;
              }

              while (v97);
            }

            return result;
          }

          v9 = v8 >> 1;
          v10 = &v6[v8 >> 1];
          if (v8 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(&v6[v8 >> 1], v6, v119);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, &v6[v8 >> 1], v119);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 1, v10 - 1, v115);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 2, &v6[v9 + 1], v114);
            v7 = v6;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v10 - 1, &v6[v8 >> 1], &v6[v9 + 1]);
            v11 = *v6;
            *v6 = *v10;
            *v10 = v11;
          }

          --a3;
          v12 = *v7;
          if (a4)
          {
            break;
          }

          v14 = ggl::CullingGrid::sortOrderForCells(*(*(v7 - 1) + 96));
          v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
          v77 = v14 >= v13;
          v7 = v6;
          if (!v77)
          {
            goto LABEL_18;
          }

          *v6 = 0;
          v124 = v12;
          if (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v119 + 96)))
          {
            v31 = v6 + 1;
            do
            {
              v6 = v31;
              if (v31 >= a2)
              {
                break;
              }

              ++v31;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v6 + 96)));
          }

          else
          {
            do
            {
              v30 = v6[1];
              ++v6;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(v30 + 96)));
          }

          v32 = a2;
          if (v6 < a2)
          {
            v32 = a2;
            do
            {
              v33 = *--v32;
            }

            while (v13 < ggl::CullingGrid::sortOrderForCells(*(v33 + 96)));
          }

          if (v6 < v32)
          {
            v34 = *v6;
            v35 = *v32;
            do
            {
              *v6 = v35;
              *v32 = v34;
              v12 = v124;
              v36 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
              do
              {
                v37 = v6[1];
                ++v6;
                v34 = v37;
              }

              while (v36 >= ggl::CullingGrid::sortOrderForCells(*(v37 + 96)));
              do
              {
                v38 = *--v32;
                v35 = v38;
              }

              while (v36 < ggl::CullingGrid::sortOrderForCells(*(v38 + 96)));
            }

            while (v6 < v32);
          }

          v39 = v6 - 1;
          if (v6 - 1 != v122)
          {
            v40 = *v39;
            *v39 = 0;
            std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v122, v40);
            v12 = v124;
          }

          v124 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v6 - 1, v12);
          result = std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
          a4 = 0;
        }

        v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
LABEL_18:
        *v7 = 0;
        v124 = v12;
        v15 = v7;
        do
        {
          v16 = v15;
          v18 = v15[1];
          ++v15;
          v17 = v18;
        }

        while (ggl::CullingGrid::sortOrderForCells(*(v18 + 96)) < v13);
        v19 = a2;
        if (v16 == v122)
        {
          v19 = a2;
          do
          {
            if (v15 >= v19)
            {
              break;
            }

            v21 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v21 + 96)) >= v13);
        }

        else
        {
          do
          {
            v20 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v20 + 96)) >= v13);
        }

        if (v15 < v19)
        {
          v22 = *v19;
          v23 = v15;
          v24 = v19;
          do
          {
            *v23 = v22;
            *v24 = v17;
            v12 = v124;
            v25 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
            do
            {
              v16 = v23;
              v26 = v23[1];
              ++v23;
              v17 = v26;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v26 + 96)) < v25);
            do
            {
              v27 = *--v24;
              v22 = v27;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v27 + 96)) >= v25);
          }

          while (v23 < v24);
        }

        if (v16 != v122)
        {
          v28 = *v16;
          *v16 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v122, v28);
          v12 = v124;
        }

        v124 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v16, v12);
        std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
        a2 = v117;
        if (v15 >= v19)
        {
          break;
        }

LABEL_37:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(v122, v16, a3, a4 & 1);
        a4 = 0;
        v6 = v16 + 1;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v122, v16);
      v6 = v16 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v16 + 1, v117);
      if (result)
      {
        break;
      }

      if ((v29 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    a2 = v16;
    v6 = v122;
    if ((v29 & 1) == 0)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2 + 56;
    std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v5 = v1 + 3;
      std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::CasedTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(uint64_t *a1, uint64_t *a2)
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
          std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100]((a1 + v15 + 24), v14);
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
        std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](v18, v16);
        if (++v11 == 8)
        {
          v19 = v9 + 1 == a2;
          std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
          return v19;
        }

        std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
      }

      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

void __destroy_helper_block_ea8_72c107_ZTSNSt3__16vectorINS_4pairIN3gss14StyleAttributeEtEEN3geo17allocator_adapterIS4_NS2_15zone_mallocatorEEEEE104c70_ZTSNSt3__110shared_ptrIN3gss17StylesheetManagerINS1_10PropertyIDEEEEE(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 72));
}

uint64_t __copy_helper_block_ea8_72c107_ZTSNSt3__16vectorINS_4pairIN3gss14StyleAttributeEtEEN3geo17allocator_adapterIS4_NS2_15zone_mallocatorEEEEE104c70_ZTSNSt3__110shared_ptrIN3gss17StylesheetManagerINS1_10PropertyIDEEEEE(uint64_t a1, uint64_t a2)
{
  result = std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](a1 + 72, a2 + 72);
  v5 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZNK2md19RoadLayerDataSource17createTrafficMeshENS_16TrafficMeshStyle5StyleERNSt3__110unique_ptrINS_19DaVinciTrafficLayerENS3_14default_deleteIS5_EEEERNS4_INS_17CasedTrafficLayerENS6_ISA_EEEERKN3geo8QuadTileERKNS3_10shared_ptrINS_21GEOVectorTileResourceEEERKNSI_INS_27TrafficSkeletonTileResourceEEERKNS3_6vectorINSI_INS_26TrafficDynamicTileResourceEEENS3_9allocatorIST_EEEERKS1_PN3ggl6LoaderERKNSI_INS11_17ConstantDataTypedINS11_4Tile4ViewEEEEERKNSI_INS14_INS15_9TransformEEEEEb_block_invoke_2(uint64_t a1, int a2, uint64_t a3, int a4, int a5, float a6, float a7)
{
  v14 = *(*(a1 + 32) + 8);
  if ((*(a1 + 144) & 1) == 0 && md::TrafficAccum::canAppend(v14 + 48, *(a1 + 72), *(a1 + 145), *(a1 + 120), *(a1 + 124), *(a1 + 128), a2, *(a1 + 146), *(a1 + 132), **(a1 + 80), *(a1 + 88)))
  {
    goto LABEL_11;
  }

  if (*(a1 + 136) == 4)
  {
    v15 = *(*(a1 + 40) + 8);
    v40[0] = 0;
    v40[24] = 0;
    v39[0] = 0;
    v39[1] = 0;
    v34[0] = 255;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 1;
    md::TrafficAccum::flushToRibbonCollection((v14 + 48), v15 + 48, v40, v39, v34);
  }

  else
  {
    md::TrafficAccum::flushToRibbonCollection(v14 + 48, *(a1 + 104), (*(*(a1 + 48) + 8) + 48), (*(*(a1 + 56) + 8) + 48), (*(*(a1 + 64) + 8) + 48));
  }

  v16 = *(*(a1 + 32) + 8);
  v17 = *(a1 + 140);
  v18 = *(a1 + 145);
  v19 = *(a1 + 120);
  v20 = *(a1 + 124);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v23 = *v22;
  v24 = v22[1];
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = *(a1 + 96);
  v33[0] = *(a1 + 88);
  v33[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    md::TrafficAccum::reset(v16 + 48, v21, v17, v18, v19, v20, v23, v24, v33, a2, *(a1 + 146));
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    if (!v24)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  md::TrafficAccum::reset(v16 + 48, v21, v17, v18, v19, v20, v23, v24, v33, a2, *(a1 + 146));
  if (v24)
  {
LABEL_10:
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

LABEL_11:
  v26 = *(*(a1 + 32) + 8);
  v27 = *(a1 + 140);
  v28 = *(a1 + 128);
  *(v26 + 168) = *(a1 + 72);
  *(v26 + 176) = v27;
  *(v26 + 180) = v28;
  *(v26 + 184) = a7;
  v29 = *(a1 + 112);
  v30 = *(*(a1 + 32) + 8) + 48;
  if (a5)
  {
    v31 = a7;
    v32 = a6;
  }

  else
  {
    v31 = a6;
    v32 = a7;
  }

  md::TrafficAccum::addPoints(v30, a3, 0, 0, a4, v29, v31, v32);
}

void __destroy_helper_block_ea8_88c68_ZTSNSt3__110shared_ptrIN3gss15StylesheetQueryINS1_10PropertyIDEEEEE(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_88c68_ZTSNSt3__110shared_ptrIN3gss15StylesheetQueryINS1_10PropertyIDEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  *(result + 88) = *(a2 + 88);
  *(result + 96) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void md::RoadLayerDataSource::~RoadLayerDataSource(md::RoadLayerDataSource *this)
{
  *this = &unk_1F29E9CA0;
  *(this + 98) = &unk_1F2A59028;

  md::TrafficLayerDataSource::~TrafficLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E9CA0;
  *(this + 98) = &unk_1F2A59028;

  md::TrafficLayerDataSource::~TrafficLayerDataSource(this);
}

void md::Logic<md::AROcclusionGenerationLogic,md::AROcclusionGenerationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::AROcclusionGenerationLogic::runBeforeLayout(char **a1, uint64_t a2, void *a3)
{
  v132 = *MEMORY[0x1E69E9840];
  if (*(*a3 + 64) == 2)
  {
    v4 = a3[1];
    if (a1[18] == a1[19])
    {
LABEL_17:
      v10 = *&v4[5];
      v11 = [v10 routeInfo];
      v12 = [v11 route];

      if (v12)
      {
        [v12 distance];
        v14 = (v13 * 0.5);
        v15 = a1 + 15;
        a1[16] = a1[15];
        std::vector<gm::Matrix<double,3,1>>::reserve(a1 + 15, v14 != 0);
        if (v14)
        {
          [v12 pointWithAltitudeCorrectionAtRouteCoordinate:{objc_msgSend(v12, "coordinateAtOffset:", 0.0)}];
          v17 = v16;
          v19 = v18;
          v21 = tan(v20 * 0.00872664626 + 0.785398163);
          v22 = v17 * 0.00277777778 + 0.5;
          v23 = log(v21) * 0.159154943 + 0.5;
          v24 = v19 * 0.0000000249532021;
          v26 = a1[16];
          v25 = a1[17];
          if (v26 >= v25)
          {
            v28 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v15) >> 3);
            v29 = v28 + 1;
            if (v28 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v30 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v15) >> 3);
            if (2 * v30 > v29)
            {
              v29 = 2 * v30;
            }

            if (v30 >= 0x555555555555555)
            {
              v31 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v31 = v29;
            }

            if (v31)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v31);
            }

            v32 = (24 * v28);
            *v32 = v22;
            v32[1] = v23;
            v32[2] = v24;
            v27 = 24 * v28 + 24;
            v33 = a1[15];
            v34 = a1[16];
            v35 = v32 + v33 - v34;
            if (v34 != v33)
            {
              v36 = v35;
              do
              {
                v37 = *v33;
                *(v36 + 2) = *(v33 + 2);
                *v36 = v37;
                v36 += 24;
                v33 += 24;
              }

              while (v33 != v34);
              v33 = *v15;
            }

            a1[15] = v35;
            a1[16] = v27;
            a1[17] = 0;
            if (v33)
            {
              operator delete(v33);
            }
          }

          else
          {
            *v26 = v22;
            v26[1] = v23;
            v27 = (v26 + 3);
            v26[2] = v24;
          }

          a1[16] = v27;
        }

        else
        {
          v27 = a1[16];
        }

        if (*v15 == v27)
        {
          if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
          }

          v75 = GEOGetVectorKitVKDefaultLog_log;
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "false";
            *&buf[12] = 2080;
            *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/AROcclusionGenerationLogic.mm";
            *&buf[22] = 1024;
            LODWORD(v116) = 46;
            _os_log_impl(&dword_1B2754000, v75, OS_LOG_TYPE_ERROR, "There should always be at least 1 position to build occlusion boxes for: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
          }
        }

        else
        {
          v130 = 0uLL;
          v131 = 0;
          md::AROcclusionGenerationLogic::clearOcclusionBoxesEntities(a1);
          v38 = a1[15];
          if (0xAAAAAAAAAAAAAAABLL * ((a1[16] - v38) >> 3) - 3 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v77 = vdupq_n_s64(0x3E5ACB157F7410BCuLL);
            __asm { FMOV            V0.2D, #1.0 }

            v76 = _Q0;
            v44 = 0;
            v102 = 0uLL;
            v103 = 0x3E7418501F970C8DLL;
            do
            {
              *&buf[v44] = *&v38[v44] - *(&v102 + v44);
              v44 += 8;
            }

            while (v44 != 24);
            v45 = 0;
            v113 = *buf;
            v114 = *&buf[16];
            v102 = 0uLL;
            v103 = 0x3E7418501F970C8DLL;
            v46 = v38 + 24;
            do
            {
              *&buf[v45] = *&v46[v45] - *(&v102 + v45);
              v45 += 8;
            }

            while (v45 != 24);
            v47 = 0;
            v111 = *buf;
            v112 = *&buf[16];
            do
            {
              *&buf[v47] = *(&v111 + v47) - *(&v113 + v47);
              v47 += 8;
            }

            while (v47 != 24);
            v48 = 0;
            v109 = *buf;
            v110 = *&buf[16];
            do
            {
              *&buf[v48] = *(&v109 + v48) * 0.5;
              v48 += 8;
            }

            while (v48 != 24);
            v49 = 0;
            v102 = *buf;
            v103 = *&buf[16];
            do
            {
              *&buf[v49] = *(&v113 + v49) + *(&v102 + v49);
              v49 += 8;
            }

            while (v49 != 24);
            v104 = *buf;
            v105 = *&buf[16];
            v106 = v130;
            v107 = v131;
            *v108 = xmmword_1B33B08F0;
            *&v108[16] = v77;
            geo::Transform<double>::toMatrix(&v102, &v104);
            gm::Matrix<double,4,4>::inverted<int,void>(v101, &v102);
            v50 = 0;
            v99 = 0uLL;
            v100 = 0x3FF0000000000000;
            v97 = xmmword_1B33B0680;
            v98 = 0x3FF0000000000000;
            v95 = xmmword_1B33B0740;
            v96 = 0x3FF0000000000000;
            v93 = v76;
            v94 = 0x3FF0000000000000;
            v78 = 0uLL;
            v79 = 0;
            do
            {
              *&buf[v50] = *(&v78 + v50) + *(&v111 + v50);
              v50 += 8;
            }

            while (v50 != 24);
            v51 = 0;
            v91 = *buf;
            v92 = *&buf[16];
            v78 = 0uLL;
            v79 = 0;
            do
            {
              *&buf[v51] = *(&v78 + v51) + *(&v113 + v51);
              v51 += 8;
            }

            while (v51 != 24);
            v52 = 0;
            v89 = *buf;
            v90 = *&buf[16];
            v78 = xmmword_1B33B0900;
            v79 = 0;
            do
            {
              *&buf[v52] = *(&v78 + v52) + *(&v111 + v52);
              v52 += 8;
            }

            while (v52 != 24);
            v53 = 0;
            v87 = *buf;
            v88 = *&buf[16];
            v78 = xmmword_1B33B0900;
            v79 = 0;
            do
            {
              *&buf[v53] = *(&v78 + v53) + *(&v113 + v53);
              v53 += 8;
            }

            while (v53 != 24);
            v85 = *buf;
            v86 = *&buf[16];
            *&v99 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v101, &v91);
            *(&v99 + 1) = v54;
            v100 = v55;
            *&v97 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v101, &v89);
            *(&v97 + 1) = v56;
            v98 = v57;
            *&v95 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v101, &v87);
            *(&v95 + 1) = v58;
            v96 = v59;
            v60 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v101, &v85);
            v61 = 0;
            *&v93 = v60;
            *(&v93 + 1) = v62;
            v94 = v63;
            do
            {
              *&buf[v61 * 8] = *(&v99 + v61 * 8) - *&kOcclusionBoxesOffsetDown[v61];
              ++v61;
            }

            while (v61 != 3);
            v64 = 0;
            v65 = *buf;
            v66 = *&buf[16];
            do
            {
              *&buf[v64 * 8] = *(&v97 + v64 * 8) - *&kOcclusionBoxesOffsetDown[v64];
              ++v64;
            }

            while (v64 != 3);
            v67 = 0;
            v68 = *buf;
            v69 = *&buf[16];
            do
            {
              *&buf[v67 * 8] = *(&v95 + v67 * 8) - *&kOcclusionBoxesOffsetDown[v67];
              ++v67;
            }

            while (v67 != 3);
            v70 = 0;
            v71 = *buf;
            v72 = *&buf[16];
            do
            {
              *&buf[v70 * 8] = *(&v93 + v70 * 8) - *&kOcclusionBoxesOffsetDown[v70];
              ++v70;
            }

            while (v70 != 3);
            v73 = *&buf[16];
            v74 = *buf;
            v78 = v104;
            v81 = v131;
            v80 = v130;
            v79 = v105;
            v82 = 0x3FF0000000000000;
            v83 = *&v108[8];
            v84 = *&v108[24];
            *buf = v65;
            v116 = v68;
            *&buf[16] = v66;
            v117 = v69;
            v118 = v71;
            v120 = v74;
            v119 = v72;
            v121 = v73;
            v122 = v99;
            v123 = v100;
            v124 = v97;
            v125 = v98;
            v127 = v96;
            v126 = v95;
            v129 = v94;
            v128 = v93;
            operator new();
          }
        }
      }

      else
      {
        md::AROcclusionGenerationLogic::clearOcclusionBoxesEntities(a1);
        a1[16] = a1[15];
      }
    }

    else
    {
      v5 = v4[14];
      if (v5)
      {
        v6 = vcnt_s8(v5);
        v6.i16[0] = vaddlv_u8(v6);
        v7 = (v5.i8[0] & 1) == 0;
        if (v6.u32[0] >= 2uLL)
        {
          v7 = *&v5 != 1;
        }

        v8 = *(*&v4[13] + 8 * v7);
        if (v8)
        {
          while (1)
          {
            v8 = *v8;
            if (!v8)
            {
              break;
            }

            v9 = v8[1];
            if (v9 == 1)
            {
              if (*(v8 + 4) == 1)
              {
                goto LABEL_17;
              }
            }

            else
            {
              if (v6.u32[0] > 1uLL)
              {
                if (v9 >= *&v5)
                {
                  v9 %= *&v5;
                }
              }

              else
              {
                v9 &= *&v5 - 1;
              }

              if (v9 != v7)
              {
                return;
              }
            }
          }
        }
      }
    }
  }
}

void md::AROcclusionGenerationLogic::clearOcclusionBoxesEntities(md::AROcclusionGenerationLogic *this)
{
  v2 = *(this + 18);
  if (*(this + 19) != v2)
  {
    v3 = 0;
    do
    {
      gdc::Registry::destroy(*(this + 21), *(v2 + 8 * v3++));
      v2 = *(this + 18);
    }

    while (v3 < (*(this + 19) - v2) >> 3);
  }

  *(this + 19) = v2;
}

void gdc::ComponentStorageWrapper<arComponents::WorldTransform>::emplace(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v30 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v30);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v19 = a1[10];
      v20 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v19) >> 4) + 1;
      if (v20 > 0x333333333333333)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v19) >> 4);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x199999999999999)
      {
        v22 = 0x333333333333333;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (v22 <= 0x333333333333333)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v23 = 16 * ((v7 - v19) >> 4);
      *(v23 + 16) = *(a3 + 2);
      *v23 = *a3;
      *(v23 + 24) = *(a3 + 24);
      *(v23 + 40) = *(a3 + 5);
      *(v23 + 48) = *(a3 + 6);
      *(v23 + 56) = *(a3 + 56);
      *(v23 + 72) = *(a3 + 9);
      v12 = v23 + 80;
      v24 = v23 - (v7 - v19);
      if (v19 != v7)
      {
        v25 = 16 * ((v7 - v19) >> 4) - (v7 - v19);
        do
        {
          v26 = *v19;
          *(v25 + 16) = *(v19 + 2);
          *v25 = v26;
          v27 = *(v19 + 24);
          *(v25 + 40) = *(v19 + 5);
          *(v25 + 24) = v27;
          *(v25 + 48) = *(v19 + 6);
          v28 = *(v19 + 56);
          *(v25 + 72) = *(v19 + 9);
          *(v25 + 56) = v28;
          v19 += 80;
          v25 += 80;
        }

        while (v19 != v7);
        v19 = a1[10];
      }

      a1[10] = v24;
      a1[11] = v12;
      a1[12] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      v9 = *a3;
      *(v7 + 2) = *(a3 + 2);
      *v7 = v9;
      v10 = *(a3 + 24);
      *(v7 + 5) = *(a3 + 5);
      *(v7 + 24) = v10;
      *(v7 + 6) = *(a3 + 6);
      v11 = *(a3 + 56);
      *(v7 + 9) = *(a3 + 9);
      *(v7 + 56) = v11;
      v12 = (v7 + 80);
    }

    a1[11] = v12;
    v17 = a1[31];
    goto LABEL_30;
  }

  v13 = 0;
  v14 = a1[10] + 80 * ((v5 - a1[7]) >> 3);
  do
  {
    *(v14 + 24 + v13) = *(a3 + v13 + 24);
    v13 += 8;
  }

  while (v13 != 24);
  v15 = 0;
  *(v14 + 48) = *(a3 + 6);
  do
  {
    *(v14 + v15) = *(a3 + v15);
    v15 += 8;
  }

  while (v15 != 24);
  for (i = 0; i != 24; i += 8)
  {
    *(v14 + 56 + i) = *(a3 + i + 56);
  }

  v17 = a1[31];
  if (v14 == a1[11])
  {
LABEL_30:
    for (j = a1[22]; j; j = *j)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v17, &v30, 1);
    }

    return;
  }

  for (k = a1[16]; k; k = *k)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v17, &v30, 1);
  }
}

uint64_t gdc::Registry::storage<arComponents::CustomBoxCreateDesc>(uint64_t a1)
{
  v3 = 0x95BAF39EB8C7C7A3;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x95BAF39EB8C7C7A3);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::UseForOcclusionTest>(uint64_t a1)
{
  v3 = 0x141C685A574F9941;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x141C685A574F9941uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::AddToWorldIntersectorPending>(uint64_t a1)
{
  v3 = 0xD37C9F66680751FBLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xD37C9F66680751FBLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::AddToWorldIntersectorPending>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::AddToWorldIntersectorPending>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::AddToWorldIntersectorPending>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::UseForOcclusionTest>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::UseForOcclusionTest>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::UseForOcclusionTest>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::CustomBoxCreateDesc>::remove(void *a1, uint64_t a2)
{
  v13 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 24 * ((v3 - a1[7]) >> 3));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    if (v6 != (v7 - 24))
    {
      std::vector<gm::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,3,1>*,gm::Matrix<double,3,1>*>(v6, *(v7 - 24), *(v7 - 16), 0xAAAAAAAAAAAAAAABLL * ((*(v7 - 16) - *(v7 - 24)) >> 3));
      v7 = a1[11];
    }

    v9 = v7 - 24;
    v8 = *(v7 - 24);
    if (v8)
    {
      *(v7 - 16) = v8;
      operator delete(v8);
    }

    a1[11] = v9;
    v10 = a1[28];
    if (v10)
    {
      v11 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v10[6], v11, &v13, 1);
        v10 = *v10;
      }

      while (v10);
    }
  }

  return v5 != v4;
}

char *std::vector<gm::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,3,1>*,gm::Matrix<double,3,1>*>(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<gm::LineSegment<float,3>>::__vallocate[abi:nn200100](a1, v11);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      for (i = 0; i != 24; i += 8)
      {
        *&result[i] = *(v5 + i);
      }

      v5 = (v5 + 24);
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        for (j = 0; j != 24; j += 8)
        {
          *&result[j] = *(v5 + j);
        }

        v5 = (v5 + 24);
        result += 24;
      }

      while (v5 != v13);
    }

    while (v13 != a3)
    {
      v16 = *v13;
      *(v12 + 2) = *(v13 + 2);
      *v12 = v16;
      v12 += 24;
      v13 = (v13 + 24);
    }

    a1[1] = v12;
  }

  return result;
}

void gdc::ComponentStorageWrapper<arComponents::CustomBoxCreateDesc>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

uint64_t gdc::ComponentStorageWrapper<arComponents::CustomBoxCreateDesc>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

uint64_t md::Logic<md::AROcclusionGenerationLogic,md::AROcclusionGenerationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA822B3A972ECE7CDLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8[0] = md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::NavigationContext>(*(a2 + 8));
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

uint64_t md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::NavigationContext>(void *a1)
{
  v2 = gdc::Context::context<md::ARLogicContext>(a1);
  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x1B8B241A8D896A1DuLL);
  return v2;
}

uint64_t md::Logic<md::AROcclusionGenerationLogic,md::AROcclusionGenerationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA822B3A972ECE7CDLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::NavigationContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 152))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::AROcclusionGenerationLogic,md::AROcclusionGenerationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA822B3A972ECE7CDLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::NavigationContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 144))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::AROcclusionGenerationLogic,md::AROcclusionGenerationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA822B3A972ECE7CDLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::NavigationContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::AROcclusionGenerationLogic,md::AROcclusionGenerationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA822B3A972ECE7CDLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::NavigationContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::NavigationContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::AROcclusionGenerationContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::AROcclusionGenerationContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EA068;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::AROcclusionGenerationContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EA068;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::AROcclusionGenerationLogic::~AROcclusionGenerationLogic(md::AROcclusionGenerationLogic *this)
{
  md::AROcclusionGenerationLogic::~AROcclusionGenerationLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E9EF8;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::ARAssetOcclusionMeshData::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  gdc::LayerData::createDebugNode(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(&v14, "ARAssetOcclusionMeshData");
  v4 = gdc::DebugTreeNode::createChildNode(a2, &v14);
  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "UsesOcclusionMeshes");
  gdc::DebugTreeValue::DebugTreeValue(v11, *(a1 + 200));
  gdc::DebugTreeNode::addProperty(v4, &v14, v11);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "OcclusionMeshCount");
  gdc::DebugTreeValue::DebugTreeValue(v8, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 184) - *(a1 + 176)) >> 3));
  gdc::DebugTreeNode::addProperty(v4, &v14, v8);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "AssetId");
  gdc::DebugTreeValue::DebugTreeValue(v5, *(a1 + 168));
  gdc::DebugTreeNode::addProperty(v4, &v14, v5);
  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }
}

void sub_1B2CD1280(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v2 - 56));
  *(v2 - 56) = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v2 - 56));
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void md::ARAssetOcclusionMeshData::~ARAssetOcclusionMeshData(md::ARAssetOcclusionMeshData *this)
{
  *this = &unk_1F29EA090;
  v3 = (this + 176);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v3);
  *this = &unk_1F2A60328;
  v2 = *(this + 4);
  if (v2 != *(this + 6))
  {
    free(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29EA090;
  v3 = (this + 176);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v3);
  *this = &unk_1F2A60328;
  v2 = *(this + 4);
  if (v2 != *(this + 6))
  {
    free(v2);
  }
}

void *std::vector<gm::Matrix<float,3,1>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t visitScaledVertices<std::vector<gm::Matrix<float,3,1>,geo::allocator_adapter<gm::Matrix<float,3,1>,geo::mallocator>>>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    while (1)
    {
      v9 = *v5;
      v10 = 25000.0;
      v6 = *(a3 + 24);
      if (!v6)
      {
        break;
      }

      (*(*v6 + 48))(v6, &v9);
      v10 = -v10;
      v7 = *(a3 + 24);
      if (!v7)
      {
        break;
      }

      result = (*(*v7 + 48))(v7, &v9);
      v5 = (v5 + 12);
      if (v5 == a2)
      {
        return result;
      }
    }

    v8 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__value_func<void ()(gm::Matrix<float,3,1> const&)>::~__value_func[abi:nn200100](v8);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(gm::Matrix<float,3,1> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::vector<md::OcclusionMesh>::__emplace_back_slow_path<std::vector<gm::Matrix<float,3,1>>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = 24 * v2 + 24;
  v9 = *a1;
  v8 = a1[1];
  v10 = 24 * v2 + *a1 - v8;
  if (*a1 != v8)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      *v12 = *v11;
      v12[2] = *(v11 + 16);
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      v11 += 24;
      v12 += 3;
    }

    while (v11 != v8);
    do
    {
      v13 = *v9;
      if (*v9)
      {
        v9[1] = v13;
        operator delete(v13);
      }

      v9 += 3;
    }

    while (v9 != v8);
  }

  v14 = *a1;
  *a1 = v10;
  *(a1 + 1) = v7;
  if (v14)
  {
    operator delete(v14);
  }

  return v7;
}

void geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::extractVertices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  geo::Transform<float>::toMatrix(v5, a3);
  geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::planes(v4, a1);
  operator new();
}

void sub_1B2CD1A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::planes(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1 + 16;
  do
  {
    v12[0] = xmmword_1B33B0870;
    v12[1] = xmmword_1B33B0870;
    v12[2] = xmmword_1B33B0880;
    v12[3] = xmmword_1B33B0890;
    v12[4] = xmmword_1B33B08A0;
    v12[5] = xmmword_1B33B08B0;
    v12[6] = xmmword_1B33B08C0;
    v12[7] = xmmword_1B33B08D0;
    v12[8] = xmmword_1B33B08E0;
    v13 = 0x3E8483EDBF7746EDLL;
    v14 = 0;
    v7 = *(v12 + v4 + 8);
    v8 = -*(a2 + v3);
    *(v6 - 16) = *(v12 + v4);
    *(v6 - 8) = v7;
    *(v6 - 4) = v8;
    *v6 = geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::maxSlabPlane(a2, v5);
    *(v6 + 4) = v9;
    ++v5;
    *(v6 + 8) = v10;
    *(v6 + 12) = v11;
    v4 += 12;
    v3 += 8;
    v6 += 32;
  }

  while (v5 != 13);
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    memset(a1[1], *a3, __len);
    a1[1] = &v6[__len];
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

BOOL geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::contains(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = 0; i != 13; ++i)
  {
    v4 = 0;
    v10[0] = xmmword_1B33B0870;
    v10[1] = xmmword_1B33B0870;
    v10[2] = xmmword_1B33B0880;
    v10[3] = xmmword_1B33B0890;
    v10[4] = xmmword_1B33B08A0;
    v10[5] = xmmword_1B33B08B0;
    v10[6] = xmmword_1B33B08C0;
    v10[7] = xmmword_1B33B08D0;
    v10[8] = xmmword_1B33B08E0;
    v11 = 0x3E8483EDBF7746EDLL;
    v12 = 0;
    v5 = v10 + 12 * i;
    v6 = *(v5 + 2);
    *&v10[0] = *v5;
    DWORD2(v10[0]) = v6;
    v7 = 0.0;
    do
    {
      v7 = v7 + (*(a2 + v4) * *(v10 + v4));
      v4 += 4;
    }

    while (v4 != 12);
    v8 = (a1 + 8 * i);
    if (v7 < *v8)
    {
      break;
    }

    if (v7 > v8[1])
    {
      break;
    }

    v2 = i > 0xB;
  }

  return v2;
}

uint64_t std::__prev_permutation[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(_BYTE *a1, _BYTE *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = a2 - 1;
  if (a2 - 1 == a1)
  {
    return 0;
  }

  v3 = *(a2 - 1);
  v4 = a2 - 2;
  for (i = -1; ; --i)
  {
    v6 = v3;
    v3 = *v4;
    if (v6 < v3)
    {
      break;
    }

    if (v4-- == a1)
    {
      if (v2 > a1)
      {
        v8 = (a1 + 1);
        do
        {
          v9 = *(v8 - 1);
          *(v8 - 1) = *v2;
          *v2-- = v9;
          v10 = v8++ >= v2;
        }

        while (!v10);
      }

      return 0;
    }
  }

  v12 = v4 + 2;
  v13 = a2;
  do
  {
    v15 = *--v13;
    v14 = v15;
  }

  while (v15 >= v3);
  *v4 = v14;
  *v13 = v3;
  result = 1;
  if (i != -1 && &a2[i] != a2)
  {
    result = 1;
    do
    {
      v16 = *(v12 - 1);
      *(v12 - 1) = *v2;
      *v2-- = v16;
      v10 = v12++ >= v2;
    }

    while (!v10);
  }

  return result;
}

uint64_t geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::enclose(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (result + 4);
  do
  {
    v7[0] = xmmword_1B33B0870;
    v7[1] = xmmword_1B33B0870;
    v7[2] = xmmword_1B33B0880;
    v7[3] = xmmword_1B33B0890;
    v7[4] = xmmword_1B33B08A0;
    v7[5] = xmmword_1B33B08B0;
    v7[6] = xmmword_1B33B08C0;
    v7[7] = xmmword_1B33B08D0;
    v7[8] = xmmword_1B33B08E0;
    v8 = 0x3E8483EDBF7746EDLL;
    v9 = 0;
    v4 = vmul_f32(*(a2 + 4), *(v7 + v2 + 4));
    v5 = (v4.f32[0] + (*(v7 + v2) * *a2)) + v4.f32[1];
    v4.f32[0] = fminf(v5, *(v3 - 1));
    v6 = fmaxf(*v3, v5);
    *(v3 - 1) = v4.f32[0];
    *v3 = v6;
    v2 += 12;
    v3 += 2;
  }

  while (v2 != 156);
  return result;
}

uint64_t std::__function::__func<md::ARAssetOcclusionMeshData::ARAssetOcclusionMeshData(gdc::LayerDataRequestKey const&,std::shared_ptr<md::DaVinciAssetResource> &,std::shared_ptr<md::DaVinciAssetOcclusionMeshResource> &)::$_1,std::allocator<md::ARAssetOcclusionMeshData::ARAssetOcclusionMeshData(gdc::LayerDataRequestKey const&,std::shared_ptr<md::DaVinciAssetResource> &,std::shared_ptr<md::DaVinciAssetOcclusionMeshResource> &)::$_1>,void ()(gm::Matrix<float,3,1> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EA108;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::ARAssetOcclusionMeshData::ARAssetOcclusionMeshData(gdc::LayerDataRequestKey const&,std::shared_ptr<md::DaVinciAssetResource> &,std::shared_ptr<md::DaVinciAssetOcclusionMeshResource> &)::$_0,std::allocator<md::ARAssetOcclusionMeshData::ARAssetOcclusionMeshData(gdc::LayerDataRequestKey const&,std::shared_ptr<md::DaVinciAssetResource> &,std::shared_ptr<md::DaVinciAssetOcclusionMeshResource> &)::$_0>,void ()(gm::Matrix<float,3,1> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = v2[1];
  v3 = v2[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v2) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v10);
    }

    v11 = 12 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    v6 = 12 * v7 + 12;
    v13 = *v2;
    v14 = v2[1];
    v15 = 12 * v7 + *v2 - v14;
    if (*v2 != v14)
    {
      v16 = 12 * v7 + *v2 - v14;
      do
      {
        v17 = *v13;
        *(v16 + 8) = v13[2];
        *v16 = v17;
        v16 += 12;
        v13 += 3;
      }

      while (v13 != v14);
      v13 = *v2;
    }

    *v2 = v15;
    v2[1] = v6;
    v2[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  v2[1] = v6;
}

uint64_t std::__function::__func<md::ARAssetOcclusionMeshData::ARAssetOcclusionMeshData(gdc::LayerDataRequestKey const&,std::shared_ptr<md::DaVinciAssetResource> &,std::shared_ptr<md::DaVinciAssetOcclusionMeshResource> &)::$_0,std::allocator<md::ARAssetOcclusionMeshData::ARAssetOcclusionMeshData(gdc::LayerDataRequestKey const&,std::shared_ptr<md::DaVinciAssetResource> &,std::shared_ptr<md::DaVinciAssetOcclusionMeshResource> &)::$_0>,void ()(gm::Matrix<float,3,1> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EA0C0;
  a2[1] = v2;
  return result;
}

uint64_t ggl::Circle::FillPipelineSetup::constantDataIsEnabled(ggl::Circle::FillPipelineSetup *this, unint64_t a2)
{
  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 304);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void ggl::Circle::FillPipelineSetup::~FillPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &off_1F2A36810;
  v4[1] = a3;
  v4[3] = v4;
  md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(a1, a2, v4);
  return std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v4);
}

void sub_1B2CD278C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(ggl::RenderItem *,BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::JunctionLayoutContext::~JunctionLayoutContext(md::JunctionLayoutContext *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

ggl::zone_mallocator *std::__function::__func<md::DaVinciHikingRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::DaVinciHikingRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(ggl::RenderItem *,BOOL)>::operator()(uint64_t a1, ggl::RenderItem **a2, unsigned __int8 *a3)
{
  v3 = *a2;
  v4 = *a3;
  *(v3 + 6) = 0;
  if (v4 == 1)
  {
    result = **(a1 + 8);
    return ggl::CommandBuffer::pushRenderItem(result, v3);
  }

  result = **(a1 + 16);
  if (result)
  {
    return ggl::CommandBuffer::pushRenderItem(result, v3);
  }

  return result;
}

__n128 std::__function::__func<md::DaVinciHikingRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::DaVinciHikingRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(ggl::RenderItem *,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29EAE78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__destroy_at[abi:nn200100]<md::RoadStyling::Entry,0>(uint64_t a1)
{
  v2 = *(a1 + 40);
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

float gm::quaternionFromEulerAnglesZYX<float>(float *a1, float a2, float a3, float a4)
{
  v7 = __sincosf_stret(a2 * 0.5);
  v8 = __sincosf_stret(a3 * 0.5);
  v9 = __sincosf_stret(a4 * 0.5);
  *a1 = -(((v9.__cosval * v8.__sinval) * v7.__sinval) - ((v8.__cosval * v7.__cosval) * v9.__sinval));
  a1[1] = ((v8.__sinval * v7.__cosval) * v9.__cosval) + ((v8.__cosval * v7.__sinval) * v9.__sinval);
  result = -(((v8.__sinval * v7.__cosval) * v9.__sinval) - ((v8.__cosval * v7.__sinval) * v9.__cosval));
  a1[2] = result;
  a1[3] = ((v8.__cosval * v7.__cosval) * v9.__cosval) + ((v9.__sinval * v7.__sinval) * v8.__sinval);
  return result;
}

void md::mun::cameraFrameFromStorefront(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 lookAt];
  [v3 lookAt];
  [v3 lookAt];
  v26[0] = *v14;
  v26[1] = *(&v23 + 1);
  v26[2] = v21;
  v4 = [v3 imageryInfo];
  v5 = v4;
  if (v4)
  {
    [v4 position];
    v7 = *&v14[28];
    v6 = *&v14[24];
    v8 = *&v14[32];
    v9 = *&v14[16];
    v13 = *v14;
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v13 = 0u;
    v8 = 0.0;
    v9 = 0;
    v7 = 0.0;
    v6 = 0.0;
  }

  gm::quaternionFromEulerAnglesZYX<float>(&v20, v6, v7, v8);
  v23 = v13;
  v24 = v9;
  v25 = v20;

  v17 = xmmword_1B33B0930;
  gm::Quaternion<float>::operator*(v14, &v25, &v17);
  v20 = v23;
  v21 = v24;
  v22 = *v14;
  v10 = gm::Matrix<double,3,1>::normalized<int,void>(&v23);
  v12.i64[1] = v11;
  md::mun::lookAtOrientationWithPitch(&v17, &v20, v26, v10, v12);
  *v14 = v23;
  *&v14[16] = v24;
  *&v14[24] = v17;
  v15 = v18;
  v16 = v19;
  gdc::CameraFrame<geo::Radians,double>::fromRigidTransformEcefNoOffset(a1, v14);
}

double gdc::CameraFrame<geo::Radians,double>::fromRigidTransformEcefNoOffset(uint64_t a1, __int128 *a2)
{
  v17 = *a2;
  v18 = *(a2 + 2);
  geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v15, &v17);
  gdc::CameraFrame<geo::Radians,double>::createLocalEcefFrame(v13, &v17);
  for (i = 0; i != 24; i += 8)
  {
    *(&v11 + i) = -*&v13[i + 24];
  }

  v8 = v11;
  v9 = v12;
  v10 = v14;
  gm::Quaternion<double>::operator*(&v11, &v8, a2 + 24);
  v7 = 0.0;
  *&v8 = 0;
  v6 = 0;
  gm::quaternionToEulerAnglesYXZ<double>(&v11, &v6, &v8, &v7);
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = 0;
  *(a1 + 32) = -*&v8;
  *(a1 + 40) = v6;
  result = -v7;
  *(a1 + 48) = -v7;
  return result;
}

double gdc::CameraFrame<geo::Radians,double>::createLocalEcefFrame(uint64_t a1, uint64_t a2)
{
  gdc::CameraFrame<geo::Radians,double>::createLocalEcefBasis(&v13, a2);
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  gm::quaternionFromRotationMatrix<double>(&v10, &v5);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v10;
  *(a1 + 40) = v11;
  result = v12;
  *(a1 + 48) = v12;
  return result;
}

void gm::quaternionToEulerAnglesYXZ<double>(double *a1, long double *a2, double *a3, long double *a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  *a4 = atan2(v6 * *a1 + v9 * v8 + v6 * *a1 + v9 * v8, (*a1 * *a1 + v8 * v8) * -2.0 + 1.0);
  *v11.i64 = -(v9 * v7 - v8 * v6) * -2.0;
  if (fabs(*v11.i64) >= 1.0)
  {
    v10.i64[0] = 0x3FF921FB54442D18;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    *&v12 = vbslq_s8(vnegq_f64(v13), v10, v11).u64[0];
  }

  else
  {
    v12 = asin(*v11.i64);
  }

  *a3 = v12;
  *a2 = atan2(v8 * v7 + v9 * v6 + v8 * v7 + v9 * v6, (v7 * v7 + v6 * v6) * -2.0 + 1.0);
}

double gdc::CameraFrame<geo::Radians,double>::createLocalEcefBasis(double *a1, double *a2)
{
  geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(v25, a2);
  v4 = v25[2];
  v5 = v25[1] + 0.00001;
  v6 = __sincos_stret(v25[0]);
  v7 = 6378137.0 / sqrt(v6.__sinval * v6.__sinval * -0.00669437999 + 1.0);
  v8 = (v7 + v4) * v6.__cosval;
  v9 = __sincos_stret(v5);
  v24[0] = v8 * v9.__cosval;
  v24[1] = v8 * v9.__sinval;
  v24[2] = (v4 + v7 * 0.99330562) * v6.__sinval;
  v10 = gm::Matrix<double,3,1>::normalized<int,void>(a2);
  v12 = v11;
  v14 = v13;
  v15 = 0;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = v13;
  do
  {
    *(&v26 + v15 * 8) = v24[v15] - a2[v15];
    ++v15;
  }

  while (v15 != 3);
  v16 = gm::Matrix<double,3,1>::normalized<int,void>(&v26);
  v19 = -(v12 * v17 - v14 * v18);
  v20 = -(v14 * v16 - v10 * v17);
  v21 = -(v10 * v18 - v12 * v16);
  a1[6] = v19;
  a1[7] = v20;
  a1[8] = v21;
  v22 = -(v20 * v14 - v21 * v12);
  result = -(v21 * v10 - v19 * v14);
  *a1 = v22;
  a1[1] = result;
  a1[2] = -(v19 * v12 - v20 * v10);
  return result;
}

double *gm::quaternionFromRotationMatrix<double>(double *result, double *a2)
{
  v2 = *a2;
  v3 = a2[4];
  v4 = v3 + *a2;
  v5 = a2[8];
  if (v4 + v5 <= 0.0)
  {
    if (v2 > v3)
    {
      v11 = v2 == v5;
      v12 = v2 < v5;
    }

    else
    {
      v11 = 1;
      v12 = 0;
    }

    if (v12 || v11)
    {
      if (v3 <= v5)
      {
        v18 = sqrt(v5 + 1.0 - v4);
        v19 = 1.0 / (v18 + v18);
        v7 = (a2[2] + a2[6]) * v19;
        v8 = (a2[5] + a2[7]) * v19;
        v9 = v18 * 0.5;
        v10 = (a2[1] - a2[3]) * v19;
        goto LABEL_12;
      }

      v13 = sqrt(v3 + 1.0 - (v2 + v5));
      v16 = 1.0 / (v13 + v13);
      v8 = v13 * 0.5;
      v7 = (a2[1] + a2[3]) * v16;
      v9 = (a2[5] + a2[7]) * v16;
      v17 = a2[6] - a2[2];
    }

    else
    {
      v14 = sqrt(v2 + 1.0 - (v3 + v5));
      v15 = v14 + v14;
      v7 = v14 * 0.5;
      v16 = 1.0 / v15;
      v8 = (a2[1] + a2[3]) * (1.0 / v15);
      v9 = (a2[2] + a2[6]) * v16;
      v17 = a2[5] - a2[7];
    }

    v10 = v17 * v16;
  }

  else
  {
    v6 = 0.5 / sqrt(v4 + v5 + 1.0);
    v7 = (a2[5] - a2[7]) * v6;
    v8 = (a2[6] - a2[2]) * v6;
    v9 = (a2[1] - a2[3]) * v6;
    v10 = 0.25 / v6;
  }

LABEL_12:
  *result = v7;
  result[1] = v8;
  result[2] = v9;
  result[3] = v10;
  return result;
}

uint64_t md::RoadPosition::debugString@<X0>(md::RoadPosition *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v16);
  v4 = (*(*this + 56))(this);
  v5 = md::LabelPoint::mercatorPoint(v4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, "(", 1);
  v6 = MEMORY[0x1B8C61C60](&v16, *v5);
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, ",", 1);
  MEMORY[0x1B8C61C60](v7, v5[1]);
  if (v4[10] != 3.4028e38)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, ",", 1);
    std::ostream::operator<<();
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, "), ", 3);
  v8 = *(this + 9);
  if (v8 <= 8)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, off_1E7B31EE8[v8], qword_1B33B2D58[v8]);
  }

  v9 = *(this + 45);
  if (v9 <= 2)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, off_1E7B31F30[v9], 1);
  }

  if ((*(*this + 80))(this))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, "[Reversed]", 10);
  }

  if ((*(*this + 88))(this))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, "[HasAntn]", 9);
  }

  v10 = 0;
  v11 = 1;
  do
  {
    if ((*(this + 3) >> v10))
    {
      if ((v11 & 1) == 0)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, ",", 1);
      }

      MEMORY[0x1B8C61C80](&v16, v10);
      v11 = 0;
    }

    ++v10;
  }

  while (v10 != 24);
  if ((v23 & 0x10) != 0)
  {
    v13 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v13 = v19;
    }

    locale = v18[4].__locale_;
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v12 = 0;
      a2[23] = 0;
      goto LABEL_30;
    }

    locale = v18[1].__locale_;
    v13 = v18[3].__locale_;
  }

  v12 = v13 - locale;
  if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a2[23] = v12;
  if (v12)
  {
    memmove(a2, locale, v12);
  }

LABEL_30:
  a2[v12] = 0;
  v16 = *MEMORY[0x1E69E54E8];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v24);
}

void sub_1B2CD3648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a10 = *MEMORY[0x1E69E54E8];
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a11 = MEMORY[0x1E69E5548] + 16;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  a11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

void md::RoadPosition::debugRoadNameForPosition(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void md::TrailJunctionsResource::updateWithContext(md::TrailJunctionsResource *this, const md::JunctionLayoutContext *a2, const geo::QuadTile *a3)
{
  v174 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (v3)
  {
    v154 = vdupq_n_s32(0x37800080u);
    v5 = 23.0;
    while (1)
    {
      v6 = v3[2];
      *v171 = v3 + 2;
      v7 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const&>,std::tuple<>>(this + 14, v6, v171);
      v8 = v3[2];
      v9 = v3[3];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = v9;
      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v171, v8, v9);
      v11 = v10;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        v11 = v10;
      }

      v160 = (v7 + 4);
      if (BYTE14(v172))
      {
        break;
      }

      v12 = v11;
      v16 = 0;
LABEL_93:
      if (BYTE14(v172) == 1)
      {
        (*(**v171 + 56))(*v171);
      }

      if (*(&v172 + 6))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v172 + 6));
      }

      v153 = v3;
      if (*&v171[8])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v171[8]);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }

      if (v16)
      {
        v157 = v3[4];
        for (i = v3[5]; v157 != i; v157 += 2)
        {
          v65 = 0;
          v66 = 1;
          do
          {
            v67 = v66;
            v68 = &v160[22 * v65];
            if (*(v68 + 84) == 1)
            {
              v69 = *v157;
              v70 = *(this + 14);
              v71 = (*v157)[v65 + 14];
              *(v71 + 24) = *v70;
              *(v71 + 64) = *(a2 + 1);
              v72 = *v68;
              v73 = v68[5];
              v74 = v68[10];
              v75 = v68[15];
              v76 = ggl::DataAccess<ggl::Tile::View>::DataAccess(v171, *(a2 + 5), 0);
              v77 = *(*&v173[3] + 64);
              ggl::BufferMemory::~BufferMemory(v76);
              v79 = &v69[2 * v65];
              v80 = *(v79 + 3);
              v161 = v80;
              if (*(&v80 + 1))
              {
                atomic_fetch_add_explicit((*(&v80 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v159 = v67;
              v164 = *(&v80 + 1);
              v81 = (v73 + v72) + (v74 + v75);
              v82 = *v69;
              v83 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v78, v80);
              **&v173[3] = v82;
              ggl::BufferMemory::~BufferMemory(v83);
              LODWORD(v82) = *(v69 + 2);
              v85 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v84, v161);
              *(*&v173[3] + 8) = v82;
              ggl::BufferMemory::~BufferMemory(v85);
              v87 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v86, v161);
              *(*&v173[3] + 12) = v77 * v81;
              ggl::BufferMemory::~BufferMemory(v87);
              v89 = *(v79 + 1);
              v90 = v79[3];
              if (v90)
              {
                atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v162 = v90;
              v158 = v89;
              v91 = v89;
              ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v88, v89);
              v92 = 0;
              v93 = *&v173[3];
              v5 = 23.0;
              do
              {
                *(v93 + v92 * 4) = v68[v92 + 1];
                ++v92;
              }

              while (v92 != 4);
              ggl::BufferMemory::~BufferMemory(v171);
              ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v94, v91);
              v95 = 0;
              v96 = *&v173[3] + 16;
              do
              {
                *(v96 + v95 * 4) = v68[v95 + 6];
                ++v95;
              }

              while (v95 != 4);
              ggl::BufferMemory::~BufferMemory(v171);
              v97 = v68[5];
              v99 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v98, v91);
              *(*&v173[3] + 64) = (v97 * 0.5) / v81;
              ggl::BufferMemory::~BufferMemory(v99);
              ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v100, v91);
              v101 = 0;
              v102 = *&v173[3] + 48;
              do
              {
                *(v102 + v101 * 4) = v68[v101 + 11];
                ++v101;
              }

              while (v101 != 4);
              ggl::BufferMemory::~BufferMemory(v171);
              v103 = v68[10];
              v105 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v104, v91);
              *(*&v173[3] + 68) = (v103 * 0.5) / v81;
              ggl::BufferMemory::~BufferMemory(v105);
              ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v106, v91);
              v107 = 0;
              v108 = *&v173[3] + 32;
              do
              {
                *(v108 + v107 * 4) = v68[v107 + 16];
                ++v107;
              }

              while (v107 != 4);
              ggl::BufferMemory::~BufferMemory(v171);
              v109 = v68[15];
              v111 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v110, v91);
              *(*&v173[3] + 72) = (v109 * 0.5) / v81;
              ggl::BufferMemory::~BufferMemory(v111);
              v112 = *(v68 + 20);
              v114 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v113, v91);
              *(*&v173[3] + 76) = v112;
              ggl::BufferMemory::~BufferMemory(v114);
              v115 = v79[10];
              v116 = *(a2 + 35);
              v117 = *(a2 + 34);
              memset(v173, 0, sizeof(v173));
              v172 = 0u;
              *&v171[2] = 0u;
              v171[0] = v116;
              v171[1] = v117;
              v120 = ggl::packFunctionConstantKey(v118, v119);
              v121 = v70[15];
              if (!v121)
              {
                goto LABEL_125;
              }

              v122 = v70 + 15;
              do
              {
                v123 = v121[4];
                v124 = v123 >= v120;
                v125 = v123 < v120;
                if (v124)
                {
                  v122 = v121;
                }

                v121 = v121[v125];
              }

              while (v121);
              if (v122 == v70 + 15 || v120 < v122[4])
              {
LABEL_125:
                operator new();
              }

              v126 = v122[5];
              v127 = v122[6];
              if (v127)
              {
                atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
                *v171 = v126;
                *&v171[8] = v127;
                atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
                ggl::PipelineSetup::setState(v115, v171);
                std::__shared_weak_count::__release_shared[abi:nn200100](v127);
                std::__shared_weak_count::__release_shared[abi:nn200100](v127);
              }

              else
              {
                *v171 = v122[5];
                *&v171[8] = 0;
                ggl::PipelineSetup::setState(v115, v171);
              }

              v128 = v115[17];
              *(v128 + 40) = 0;
              v129 = *(a2 + 7);
              *(v128 + 32) = v129;
              v130 = v115[29];
              v131 = *(a2 + 8);
              if (v131)
              {
                atomic_fetch_add_explicit((v131 + 8), 1uLL, memory_order_relaxed);
              }

              v132 = *(v130 + 40);
              *(v130 + 32) = v129;
              *(v130 + 40) = v131;
              if (v132)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v132);
              }

              v133 = v115[17];
              *(v133 + 24) = 0;
              v134 = *(a2 + 5);
              *(v133 + 16) = v134;
              v135 = v115[29];
              v136 = *(a2 + 6);
              if (v136)
              {
                atomic_fetch_add_explicit((v136 + 8), 1uLL, memory_order_relaxed);
              }

              v137 = *(v135 + 24);
              *(v135 + 16) = v134;
              *(v135 + 24) = v136;
              if (v137)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v137);
              }

              v138 = v115[17];
              *(v138 + 48) = v161;
              *(v138 + 56) = 0;
              v139 = v115[29];
              v140 = v164;
              if (v164)
              {
                atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v141 = *(v139 + 56);
              *(v139 + 48) = v161;
              if (v141)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v141);
                v140 = v164;
              }

              v142 = v115[17];
              *v142 = v91;
              v142[1] = 0;
              v143 = v115[29];
              if (v162)
              {
                atomic_fetch_add_explicit(&v162->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v144 = *(v143 + 8);
              *v143 = v158;
              v67 = v159;
              if (v144)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v144);
                v140 = v164;
              }

              if (v162)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v162);
                v140 = v164;
              }

              if (v140)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v140);
              }
            }

            v66 = 0;
            v65 = 1;
          }

          while ((v67 & 1) != 0);
        }
      }

      v3 = *v153;
      if (!*v153)
      {
        return;
      }
    }

    v12 = v11;
    if (*(a2 + 6) >= 0x17)
    {
      v13 = 23;
    }

    else
    {
      v13 = *(a2 + 6);
    }

    v14 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*v171 + 24), 108, v13, 2u, 0);
    v15 = *(a2 + 6);
    if (v14)
    {
      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v170, *(*v171 + 24), 92, 2u, fminf(fmaxf(v15, 0.0), v5));
    }

    else
    {
      if (v15 >= 0x17)
      {
        v17 = 23;
      }

      else
      {
        v17 = v15;
      }

      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v170, *(*v171 + 24), 92, v17, 2u, 0);
    }

    *(v7 + 36) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v170)), v154);
    if (*(a2 + 6) >= 0x17)
    {
      v18 = 23;
    }

    else
    {
      v18 = *(a2 + 6);
    }

    v19 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*v171 + 24), 107, v18, 2u, 0);
    v20 = *(a2 + 6);
    if (v19)
    {
      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v170, *(*v171 + 24), 93, 2u, fminf(fmaxf(v20, 0.0), v5));
    }

    else
    {
      if (v20 >= 0x17)
      {
        v21 = 23;
      }

      else
      {
        v21 = v20;
      }

      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v170, *(*v171 + 24), 93, v21, 2u, 0);
    }

    *(v7 + 7) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v170)), v154);
    if (*(a2 + 6) >= 0x17)
    {
      v22 = 23;
    }

    else
    {
      v22 = *(a2 + 6);
    }

    v23 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*v171 + 24), 407, v22, 2u, 0);
    v24 = *(a2 + 6);
    if (v23)
    {
      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v170, *(*v171 + 24), 403, 2u, fminf(fmaxf(v24, 0.0), v5));
    }

    else
    {
      if (v24 >= 0x17)
      {
        v25 = 23;
      }

      else
      {
        v25 = v24;
      }

      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v170, *(*v171 + 24), 403, v25, 2u, 0);
    }

    *(v7 + 76) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v170)), v154);
    if (*(a2 + 6) >= 0x17)
    {
      v26 = 23;
    }

    else
    {
      v26 = *(a2 + 6);
    }

    v27 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*v171 + 24), 463, v26, 2u, 0);
    v28 = *(a2 + 6);
    if (v27)
    {
      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v170, *(*v171 + 24), 461, 2u, fminf(fmaxf(v28, 0.0), v5));
    }

    else
    {
      if (v28 >= 0x17)
      {
        v29 = 23;
      }

      else
      {
        v29 = v28;
      }

      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v170, *(*v171 + 24), 461, v29, 2u, 0);
    }

    *(v7 + 6) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v170)), v154);
    v30 = *(a2 + 6);
    v31 = *(*v171 + 24);
    v32 = fminf(fmaxf(v30, 0.0), v5);
    v33 = *v31;
    if (*v31)
    {
      v34 = *v33;
      v35 = *v33 == 1.0;
      if (*(v31 + 10) == 1 && v34 != 0.0 && v34 != 1.0)
      {
        goto LABEL_155;
      }
    }

    else
    {
      v35 = 0;
    }

    v36 = *(v31 + v35 + 11);
    if (v36 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v171 + 24), 94, v36, 0, v32);
      goto LABEL_51;
    }

    v34 = 0.0;
LABEL_155:
    LOBYTE(v170) = 1;
    v169 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v31, 94, 0, &v170, v32);
    v165 = v145;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v31, 94, 1, &v169, v32);
    v37 = v165 + ((v146 - v165) * v34);
LABEL_51:
    *v160 = v37;
    if (v33)
    {
      v38 = *v33;
      v39 = *v33 == 1.0;
      if (*(v31 + 10) == 1 && v38 != 0.0 && v38 != 1.0)
      {
        goto LABEL_157;
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = *(v31 + v39 + 11);
    if (v40 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v31, 97, v40, 0, v32);
      goto LABEL_57;
    }

    v38 = 0.0;
LABEL_157:
    LOBYTE(v170) = 1;
    v169 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v31, 97, 0, &v170, v32);
    v166 = v147;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v31, 97, 1, &v169, v32);
    v41 = v166 + ((v148 - v166) * v38);
LABEL_57:
    *(v7 + 13) = v41;
    if (v33)
    {
      v42 = *v33;
      v43 = *v33 == 1.0;
      if (*(v31 + 10) == 1 && v42 != 0.0 && v42 != 1.0)
      {
        goto LABEL_159;
      }
    }

    else
    {
      v43 = 0;
    }

    v44 = *(v31 + v43 + 11);
    if (v44 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v31, 404, v44, 0, v32);
      goto LABEL_63;
    }

    v42 = 0.0;
LABEL_159:
    LOBYTE(v170) = 1;
    v169 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v31, 404, 0, &v170, v32);
    v167 = v149;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v31, 404, 1, &v169, v32);
    v45 = v167 + ((v150 - v167) * v42);
LABEL_63:
    *(v7 + 18) = v45;
    if (v33)
    {
      v46 = *v33;
      v47 = *v33 == 1.0;
      if (*(v31 + 10) == 1 && v46 != 0.0 && v46 != 1.0)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v47 = 0;
    }

    v51 = *(v31 + v47 + 11);
    if (v51 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v31, 462, v51, 0, v32);
LABEL_74:
      *(v7 + 23) = v50;
      if (v27)
      {
        gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v170, v31, 298, 2u, v32);
      }

      else
      {
        if (v30 >= 0x17)
        {
          v52 = 23;
        }

        else
        {
          v52 = v30;
        }

        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v170, v31, 298, v52, 2u, 0);
      }

      *(v7 + 124) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v170)), v154);
      v53 = *(a2 + 6);
      v54 = *(*v171 + 24);
      v55 = fminf(fmaxf(v53, 0.0), v5);
      v56 = *v54;
      if (!*v54 || (v57 = *v56, LODWORD(v56) = *v56 == 1.0, *(v54 + 10) != 1) || v57 == 0.0 || v57 == 1.0)
      {
        v58 = *(v54 + v56 + 11);
        if (v58 != 2)
        {
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v171 + 24), 297, v58, 0, v55);
          goto LABEL_86;
        }

        v57 = 0.0;
      }

      LOBYTE(v170) = 1;
      v169 = 1;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v54, 297, 0, &v170, v55);
      v168 = v151;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v54, 297, 1, &v169, v55);
      v59 = v168 + ((v152 - v168) * v57);
LABEL_86:
      *(v7 + 30) = v59;
      *(v7 + 35) = 0;
      *(v7 + 40) = 0;
      *(v7 + 45) = 0;
      if (v53 >= 0x17)
      {
        v60 = 23;
      }

      else
      {
        v60 = v53;
      }

      if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v54, 91, v60, 2u, 0))
      {
        v61 = *(v7 + 8);
        v16 = *(v7 + 30) > 0.0;
        v62 = v61 <= 0.0;
        *(v7 + 116) = v61 > 0.0;
        v63 = *(a2 + 7);
        *(v7 + 28) = v63;
        *(v7 + 204) = v16;
        *(v7 + 50) = v63;
        if (!v62)
        {
          v16 = 1;
        }
      }

      else
      {
        v16 = 0;
        *(v7 + 116) = 0;
        v64 = *(a2 + 7);
        *(v7 + 28) = v64;
        *(v7 + 204) = 0;
        *(v7 + 50) = v64;
      }

      goto LABEL_93;
    }

    v46 = 0.0;
LABEL_67:
    LOBYTE(v170) = 1;
    v169 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v31, 462, 0, &v170, v32);
    v163 = v48;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v31, 462, 1, &v169, v32);
    v50 = v163 + ((v49 - v163) * v46);
    goto LABEL_74;
  }
}

void sub_1B2CD488C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v34 = *(v32 - 208);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  v35 = *(v32 - 224);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
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
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v8)
          {
            if (v12[2] == a2)
            {
              return v12;
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

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  v14 = mdm::zone_mallocator::instance(a1);
  v15 = pthread_rwlock_rdlock((v14 + 32));
  if (v15)
  {
    geo::read_write_lock::logFailure(v15, "read lock", v16);
  }

  v12 = malloc_type_zone_malloc(*v14, 0xD0uLL, 0x1020040028215AAuLL);
  atomic_fetch_add((v14 + 24), 1u);
  geo::read_write_lock::unlock((v14 + 32));
  *v12 = 0;
  v12[1] = v8;
  v18 = (*a3)[1];
  v12[2] = **a3;
  v12[3] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = 0;
  *(v12 + 11) = 0u;
  *(v12 + 12) = 0u;
  *(v12 + 9) = 0u;
  *(v12 + 10) = 0u;
  *(v12 + 7) = 0u;
  *(v12 + 8) = 0u;
  *(v12 + 5) = 0u;
  *(v12 + 6) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  *(v12 + 2) = 0u;
  __asm { FMOV            V0.2S, #1.0 }

  do
  {
    v25 = &v12[v19];
    *(v25 + 4) = 0;
    *(v25 + 5) = 0;
    *(v25 + 12) = 1065353216;
    *(v25 + 60) = 0;
    *(v25 + 52) = 0;
    *(v25 + 17) = 1065353216;
    *(v25 + 9) = 0;
    *(v25 + 10) = 0;
    *(v25 + 22) = 1065353216;
    *(v25 + 100) = 0;
    *(v25 + 92) = 0;
    *(v25 + 108) = _D0;
    v19 += 11;
    v25[116] = 0;
  }

  while (v19 != 22);
  v26 = (*(a1 + 5) + 1);
  v27 = a1[12];
  if (!v9 || (v27 * v9) < v26)
  {
    v28 = 1;
    if (v9 >= 3)
    {
      v28 = (v9 & (v9 - 1)) != 0;
    }

    v29 = v28 | (2 * v9);
    v30 = vcvtps_u32_f32(v26 / v27);
    if (v29 <= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v29;
    }

    if (v31 == 1)
    {
      v31 = 2;
    }

    else if ((v31 & (v31 - 1)) != 0)
    {
      prime = std::__next_prime(v31);
      v31 = prime;
    }

    v9 = *(a1 + 1);
    if (v31 > v9)
    {
      goto LABEL_36;
    }

    if (v31 < v9)
    {
      prime = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (v9 < 3 || (v40 = vcnt_s8(v9), v40.i16[0] = vaddlv_u8(v40), v40.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v41 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v41;
        }
      }

      if (v31 <= prime)
      {
        v31 = prime;
      }

      if (v31 >= v9)
      {
        v9 = *(a1 + 1);
      }

      else
      {
        if (v31)
        {
LABEL_36:
          v32 = mdm::zone_mallocator::instance(prime);
          v33 = pthread_rwlock_rdlock((v32 + 32));
          if (v33)
          {
            geo::read_write_lock::logFailure(v33, "read lock", v34);
          }

          v35 = malloc_type_zone_malloc(*v32, 8 * v31, 0x2004093837F09uLL);
          atomic_fetch_add((v32 + 24), 1u);
          geo::read_write_lock::unlock((v32 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *> *> **,0>(a1, v35);
          v36 = 0;
          *(a1 + 1) = v31;
          do
          {
            *(*a1 + 8 * v36++) = 0;
          }

          while (v31 != v36);
          v37 = *(a1 + 3);
          if (v37)
          {
            v38 = v37[1];
            v39 = vcnt_s8(v31);
            v39.i16[0] = vaddlv_u8(v39);
            if (v39.u32[0] > 1uLL)
            {
              if (v38 >= v31)
              {
                v38 %= v31;
              }
            }

            else
            {
              v38 &= v31 - 1;
            }

            *(*a1 + 8 * v38) = a1 + 6;
            v42 = *v37;
            if (*v37)
            {
              do
              {
                v43 = v42[1];
                if (v39.u32[0] > 1uLL)
                {
                  if (v43 >= v31)
                  {
                    v43 %= v31;
                  }
                }

                else
                {
                  v43 &= v31 - 1;
                }

                if (v43 != v38)
                {
                  v44 = *a1;
                  if (!*(*a1 + 8 * v43))
                  {
                    *(v44 + 8 * v43) = v37;
                    goto LABEL_60;
                  }

                  *v37 = *v42;
                  *v42 = **(v44 + 8 * v43);
                  **(v44 + 8 * v43) = v42;
                  v42 = v37;
                }

                v43 = v38;
LABEL_60:
                v37 = v42;
                v42 = *v42;
                v38 = v43;
              }

              while (v42);
            }
          }

          v9 = v31;
          goto LABEL_64;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *> *> **,0>(a1, 0);
        v9 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_64:
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

  v45 = *a1;
  v46 = *(*a1 + 8 * v3);
  if (v46)
  {
    *v12 = *v46;
LABEL_77:
    *v46 = v12;
    goto LABEL_78;
  }

  *v12 = *(a1 + 3);
  *(a1 + 3) = v12;
  *(v45 + 8 * v3) = a1 + 6;
  if (*v12)
  {
    v47 = *(*v12 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v47 >= v9)
      {
        v47 %= v9;
      }
    }

    else
    {
      v47 &= v9 - 1;
    }

    v46 = (*a1 + 8 * v47);
    goto LABEL_77;
  }

LABEL_78:
  ++*(a1 + 5);
  return v12;
}

void sub_1B2CD4E0C(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = mdm::zone_mallocator::instance(v4);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *>>(v5, v1);
  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *>>(uint64_t a1, void *a2)
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

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *> *> *>(v3, v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *> *> *>(uint64_t a1, void *a2)
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

void md::TrailJunctionsResource::collectRenderItems(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 24); i; i = *i)
  {
    v5 = i[2];
    v17 = i + 2;
    v6 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const&>,std::tuple<>>((a1 + 56), v5, &v17);
    v7 = i[4];
    v8 = i[5];
    if (v7 != v8)
    {
      v9 = v6 + 4;
      while (2)
      {
        v10 = 0;
        v11 = 0;
        v12 = 1;
        do
        {
          v13 = v12;
          if (BYTE4(v9[11 * v11 + 10]) == 1)
          {
            v17 = *(*v7 + 8 * v11 + 112);
            v16 = v10 & 1;
            v14 = *(a2 + 24);
            if (!v14)
            {
              v15 = std::__throw_bad_function_call[abi:nn200100]();
              std::vector<std::pair<md::MapDataType,std::unique_ptr<gdc::LayerDataStore>>>::__destroy_vector::operator()[abi:nn200100](v15);
              return;
            }

            (*(*v14 + 48))(v14, &v17, &v16);
          }

          v12 = 0;
          v10 = 1;
          v11 = 1;
        }

        while ((v13 & 1) != 0);
        v7 += 2;
        if (v7 != v8)
        {
          continue;
        }

        break;
      }
    }
  }
}

void std::vector<std::pair<md::MapDataType,std::unique_ptr<gdc::LayerDataStore>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 2;
        std::unique_ptr<gdc::LayerDataStore>::~unique_ptr[abi:nn200100](v4 - 1);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<md::MapDataType,std::unique_ptr<gdc::DataKeyRequester>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<md::MapDataType,std::unique_ptr<gdc::DataKeyRequester>>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<md::MapDataType,std::unique_ptr<gdc::LayerDataSource>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<md::MapDataType,std::unique_ptr<gdc::LayerDataSource>>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::pair<md::MapDataType,std::unique_ptr<gdc::LayerDataSource>>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  for (i = result[1]; i != v2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void *std::vector<std::pair<md::MapDataType,std::unique_ptr<gdc::DataKeyRequester>>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  for (i = result[1]; i != v2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void geo::_retain_ptr<GEOApplicationAuditToken * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2FB88;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOApplicationAuditToken * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2FB88;

  return a1;
}

uint64_t std::__function::__func<md::World::World(VKSharedResources *,GEOApplicationAuditToken *,float,objc_object  {objcproto14MDRenderTarget}*,std::shared_ptr<md::TaskContext>,gdc::LoadingStatusTracker *,ggl::RenderTargetFormat const&,std::function<void ()(void)>,BOOL,md::RunLoopController *,md::DaVinciGroundSettings const*,std::shared_ptr<md::TaskContext>::Logger *)::$_0,std::allocator<std::shared_ptr<md::TaskContext>::Logger *>,std::function>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    return gdc::ResourceManager::clearFailedResources(*(v1 + 56), *(v1 + 64));
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<md::DaVinciGroundMetaData *,std::shared_ptr<md::DaVinciGroundMetaData>::__shared_ptr_default_delete<md::DaVinciGroundMetaData,md::DaVinciGroundMetaData>,std::allocator<md::DaVinciGroundMetaData>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::DaVinciGroundMetaData *,std::shared_ptr<md::DaVinciGroundMetaData>::__shared_ptr_default_delete<md::DaVinciGroundMetaData,md::DaVinciGroundMetaData>,std::allocator<md::DaVinciGroundMetaData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

md::FlyoverMetaData *std::__shared_ptr_pointer<md::FlyoverMetaData *,std::shared_ptr<md::FlyoverMetaData>::__shared_ptr_default_delete<md::FlyoverMetaData,md::FlyoverMetaData>,std::allocator<md::FlyoverMetaData>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::FlyoverMetaData::~FlyoverMetaData(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::FlyoverMetaData *,std::shared_ptr<md::FlyoverMetaData>::__shared_ptr_default_delete<md::FlyoverMetaData,md::FlyoverMetaData>,std::allocator<md::FlyoverMetaData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::FlyoverRegionManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EB028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::OverlayContainer::~OverlayContainer(md::OverlayContainer *this)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 296);
  std::mutex::~mutex((this + 232));
  v9 = (this + 208);
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v9);
  for (i = 184; i != 136; i -= 24)
  {
    v9 = (this + i);
    std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v9);
  }

  v3 = 160;
  do
  {
    v3 -= 24;
    v4 = this + v3;
    v5 = *(this + v3);
    if (v5)
    {
      v6 = *(v4 + 1);
      v7 = *(this + v3);
      if (v6 != v5)
      {
        do
        {
          v8 = v6 - 40;
          std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v6 - 32);
          v6 = v8;
        }

        while (v8 != v5);
        v7 = *v4;
      }

      *(v4 + 1) = v5;
      operator delete(v7);
    }
  }

  while (v3 != 112);
  std::mutex::~mutex((this + 48));
}

md::OverlayContainer *std::__shared_ptr_pointer<md::OverlayContainer *,std::shared_ptr<md::OverlayContainer>::__shared_ptr_default_delete<md::OverlayContainer,md::OverlayContainer>,std::allocator<md::OverlayContainer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::OverlayContainer::~OverlayContainer(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::OverlayContainer *,std::shared_ptr<md::OverlayContainer>::__shared_ptr_default_delete<md::OverlayContainer,md::OverlayContainer>,std::allocator<md::OverlayContainer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::__split_buffer<md::TileSelectionTileSetType>::emplace_back<md::TileSelectionTileSetType const&>(void *result, _WORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result];
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v11);
    }

    v7 = ((v6 >> 1) + 1) / -2;
    v8 = ((v6 >> 1) + 1 + (((v6 >> 1) + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[2 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 2;
  return result;
}

void md::World::getDsmTileData(md::World *this, const geo::QuadTile *a2, const geo::QuadTile *a3, int *a4)
{
  *this = 0;
  *(this + 1) = 0;
  if (a2 != a3)
  {
    while (*a2 != 77)
    {
      a2 = (a2 + 16);
      if (a2 == a3)
      {
        return;
      }
    }

    if (a2 != a3)
    {
      v6 = *(a2 + 1);
      if (v6)
      {
        v7 = v6[1];
        if (v7 != v6)
        {
          v8 = 0;
          v9 = 0;
          v19 = 0;
          while (1)
          {
            v11 = v7[16];
            v10 = v7[17];
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (*(v11 + 168) != *a4)
            {
              goto LABEL_26;
            }

            v12 = *(v11 + 169);
            v13 = *(a4 + 1);
            v14 = v13 >= v12;
            v15 = v13 - v12;
            if (v15 != 0 && v14)
            {
              if (*(v11 + 172) == a4[1] >> v15 && *(v11 + 176) == a4[2] >> v15)
              {
LABEL_20:
                v16 = md::FlyoverDsmTileData::rasterLevel(v11);
                if (v9 < v16)
                {
                  v17 = v16;
                  if (v10)
                  {
                    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v8)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
                  }

                  v8 = v10;
                  v19 = v11;
                  v9 = v17;
                }
              }
            }

            else if (!v15 && *(v11 + 172) == a4[1] && *(v11 + 176) == a4[2])
            {
              goto LABEL_20;
            }

LABEL_26:
            if (v10)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v10);
            }

            v7 = v7[1];
            if (v7 == v6)
            {
              *(this + 1) = v8;
              v18 = v19;
              goto LABEL_31;
            }
          }
        }

        v18 = 0;
LABEL_31:
        *this = v18;
      }
    }
  }
}

uint64_t md::FlyoverDsmTileData::rasterLevel(md::FlyoverDsmTileData *this)
{
  v1 = *(this + 91);
  if (v1)
  {
    return *(v1 + 57);
  }

  v1 = *(this + 93);
  if (v1)
  {
    return *(v1 + 57);
  }

  else
  {
    return 0;
  }
}

int64x2_t md::BezierEase::BezierEase(float *a1, float *a2, float *a3)
{
  v3 = *a3 * 3.0;
  v4 = *a2 * 3.0;
  v5 = v3 - (*a2 * 6.0);
  a1[11] = (v4 + 1.0) - v3;
  a1[12] = v5;
  a1[13] = v4;
  v6 = a2[1];
  v7 = a3[1] * 3.0;
  a1[14] = ((v6 * 3.0) + 1.0) - v7;
  a1[15] = v7 - (v6 * 6.0);
  a1[16] = v6 * 3.0;
  result = xmmword_1B33B0550;
  v9 = xmmword_1B33B0560;
  v10 = 3;
  v11 = vdupq_n_s64(0xBuLL);
  v12 = vdupq_n_s32(0x3DCCCCCDu);
  v13 = vdupq_n_s64(4uLL);
  do
  {
    v14 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v9)), vcvtq_f64_u64(result)), v12);
    v15 = a1 + 12;
    v16 = vld1q_dup_f32(v15);
    v17 = a1 + 13;
    v18 = vld1q_dup_f32(v17);
    v19 = vmulq_f32(vmlaq_f32(v18, v14, vmlaq_n_f32(v16, v14, a1[11])), v14);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v11, v9)), *result.i8).u8[0])
    {
      a1[v10 - 3] = v19.f32[0];
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v9)), *&result).i8[2])
    {
      a1[v10 - 2] = v19.f32[1];
    }

    if (vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&result))).i32[1])
    {
      *&a1[v10 - 1] = v19.i64[1];
    }

    result = vaddq_s64(result, v13);
    v9 = vaddq_s64(v9, v13);
    v10 += 4;
  }

  while (v10 != 15);
  return result;
}

uint64_t md::BezierEase::value(uint64_t this, float a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 > 0.0 && a2 < 1.0)
  {
    v3 = (this + 4);
    v4 = -1;
    while (v4 != 9)
    {
      v5 = *v3++;
      v6 = v5;
      ++v4;
      if (v5 >= a2)
      {
        goto LABEL_11;
      }
    }

    v6 = *(this + 44);
    v4 = 10;
LABEL_11:
    v7 = (((a2 - *(this + 4 * v4)) / (v6 - *(this + 4 * v4))) + v4) * 0.1;
    v8 = v4 * 0.1;
    v9 = v8 + 0.1;
    v17[0] = &unk_1F29EB1A8;
    v17[1] = this;
    v17[2] = LODWORD(a2);
    v18 = v17;
    v15[0] = &unk_1F29EB1F0;
    v15[1] = this;
    v16 = v15;
    v10 = 5;
    do
    {
      v11 = std::function<float ()(float)>::operator()(v18, v7);
      if (fabsf(v11) < 0.0001)
      {
        break;
      }

      v12 = std::function<float ()(float)>::operator()(v16, v7);
      if (fabsf(v12) < 0.00001)
      {
        break;
      }

      v13 = v7 - (v11 / v12);
      if (v13 <= v8 || v13 >= v9)
      {
        if (v11 <= 0.0)
        {
          v8 = v7;
        }

        else
        {
          v9 = v7;
        }

        v13 = (v9 + v8) * 0.5;
      }

      v7 = v13;
      --v10;
    }

    while (v10);
    std::__function::__value_func<float ()(float)>::~__value_func[abi:nn200100](v15);
    return std::__function::__value_func<float ()(float)>::~__value_func[abi:nn200100](v17);
  }

  return this;
}

uint64_t std::__function::__value_func<float ()(float)>::~__value_func[abi:nn200100](uint64_t a1)
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

float std::function<float ()(float)>::operator()(uint64_t a1, float a2)
{
  v5 = a2;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v5);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__func<md::BezierEase::findBezierT(float)::$_1,std::allocator<md::BezierEase::findBezierT(float)::$_1>,float ()(float)>::operator()(v3, v4);
  }

  return result;
}

float std::__function::__func<md::BezierEase::findBezierT(float)::$_1,std::allocator<md::BezierEase::findBezierT(float)::$_1>,float ()(float)>::operator()(uint64_t a1, float *a2)
{
  v2.i32[1] = 0x40000000;
  v2.f32[0] = *a2 * 3.0;
  return *(*(a1 + 8) + 52) + (vaddv_f32(vmul_f32(v2, *(*(a1 + 8) + 44))) * *a2);
}

uint64_t std::__function::__func<md::BezierEase::findBezierT(float)::$_1,std::allocator<md::BezierEase::findBezierT(float)::$_1>,float ()(float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EB1F0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::BezierEase::findBezierT(float)::$_0,std::allocator<md::BezierEase::findBezierT(float)::$_0>,float ()(float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29EB1A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t md::PendingSceneLogic::createDebugConsoleString(md::PendingSceneLogic *this, md::SceneStateManager **a2, md::SceneContext *a3, md::World *a4)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v63);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "\n=== Tile Selection ===\n", 24);
  std::vector<md::TileSelectionTileSetType>::vector[abi:nn200100](&__p, *a2 + 29);
  v6 = __p;
  v7 = v62;
  if (__p != v62)
  {
    do
    {
      v8 = *v6;
      v9 = *(*a2 + 14);
      v10 = *(*a2 + 15);
      while (v9 != v10)
      {
        if (*v9 == v8)
        {
          v10 = v9;
          break;
        }

        v9 += 56;
      }

      v11 = "<Invalid>";
      if (v8 <= 8)
      {
        v11 = off_1E7B3B318[*v6];
      }

      v12 = strlen(v11);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, v11, v12);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, ": ", 2);
      v13 = MEMORY[0x1B8C61CB0](&v63, *(v10 + 11));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, "\n", 1);
      ++v6;
    }

    while (v6 != v7);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "\n=== Scene State ===\n", 21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "Required Layers: ", 17);
  if (md::SceneStateManager::isFinishedLoadingRequiredLayers(*a2))
  {
    v14 = "Y";
  }

  else
  {
    v14 = "N";
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, v14, 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "All Layers: ", 12);
  if (md::SceneStateManager::isFinishedLoadingAllLayers(*a2))
  {
    v15 = "Y";
  }

  else
  {
    v15 = "N";
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, v15, 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "Failed Tiles: ", 14);
  if (md::SceneStateManager::hasFailedTiles(*a2))
  {
    v16 = "Y";
  }

  else
  {
    v16 = "N";
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, v16, 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "Tiles to Render: ", 17);
  if (md::SceneContext::hasAnyTilesToRender(*a2))
  {
    v17 = "Y";
  }

  else
  {
    v17 = "N";
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, v17, 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "\n", 1);
  v18 = __p;
  v19 = v62;
  if (__p != v62)
  {
    do
    {
      v20 = *v18;
      v21 = *(*a2 + 14);
      v22 = *(*a2 + 15);
      while (v21 != v22)
      {
        if (*v21 == v20)
        {
          v22 = v21;
          break;
        }

        v21 += 56;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "\n=== ", 5);
      v23 = "<Invalid>";
      if (v20 <= 8)
      {
        v23 = off_1E7B3B318[v20];
      }

      v24 = strlen(v23);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, v23, v24);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, " ===\n", 5);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "Required Layers: ", 17);
      if (*(v22 + 8))
      {
        v25 = "Y";
      }

      else
      {
        v25 = "N";
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, v25, 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "\n", 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "All Layers: ", 12);
      if (*(v22 + 9))
      {
        v26 = "Y";
      }

      else
      {
        v26 = "N";
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, v26, 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "\n", 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "Failed Tiles: ", 14);
      if (*(v22 + 10))
      {
        v27 = "Y";
      }

      else
      {
        v27 = "N";
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, v27, 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "\n", 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "Tiles to Render: ", 17);
      v28 = MEMORY[0x1B8C61CB0](&v63, *(v22 + 5));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, "\n", 1);
      ++v18;
    }

    while (v18 != v19);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "\n=== Metal Resources ===\n", 25);
  v29 = +[VKSharedResourcesManager sharedResources];
  v30 = [v29 device];

  v31 = *(v30 + 8);
  if (v31)
  {
    v32 = *(v31 + 80);
    if (v32)
    {
      v33 = (v32 + 168);
      while (1)
      {
        v33 = *v33;
        if (!v33)
        {
          break;
        }

        v34 = strlen(v33[2]);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, v33[2], v34);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, ": ", 2);
        v35 = MEMORY[0x1B8C61CF0](&v63, v33[4]);
        v36 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, " (", 2);
        v37 = MEMORY[0x1B8C61C60](v36, v33[5] * 0.000000953674316);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, " MB) \n", 6);
      }
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "\n=== Memory ===\n", 16);
  task_info_outCnt = 264;
  if (!task_info(*MEMORY[0x1E69E9A60], 0x16u, task_info_out, &task_info_outCnt))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "Footprint: ", 11);
    v38 = MEMORY[0x1B8C61C60](&v63, v59 * 0.000000953674316);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, " MB \n", 5);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "Footprint Peak: ", 16);
    v39 = MEMORY[0x1B8C61C60](&v63, v60 * 0.000000953674316);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, " MB \n", 5);
  }

  v56 = 0;
  v55 = 0;
  malloc_get_all_zones();
  if (a3)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "\n=== Tile Cache ===\n", 20);
    for (i = *(a3 + 19); i; i = *i)
    {
      v41 = *(i + 8);
      v42 = *(a3 + 10);
      v43 = *(a3 + 11);
      while (v42 != v43)
      {
        if (*v42 == v41)
        {
          if (v42 != v43)
          {
            v44 = *(v42 + 1);
            goto LABEL_56;
          }

          break;
        }

        v42 += 8;
      }

      v44 = 0;
LABEL_56:
      if (*(v44 + 48))
      {
        v45 = "<Invalid>";
        if (v41 <= 0x51)
        {
          v45 = off_1E7B30210[*(i + 8)];
        }

        v46 = strlen(v45);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, v45, v46);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, ": ", 2);
        v47 = MEMORY[0x1B8C61CB0](&v63, *(v44 + 48));
        v48 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v47, " (estimated ", 12);
        v49 = MEMORY[0x1B8C61CB0](v48, *(v44 + 72) >> 10);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v49, " KB)\n", 5);
      }
    }
  }

  if ((v70 & 0x10) != 0)
  {
    v51 = v69;
    if (v69 < v66)
    {
      v69 = v66;
      v51 = v66;
    }

    locale = v65[4].__locale_;
  }

  else
  {
    if ((v70 & 8) == 0)
    {
      v50 = 0;
      *(this + 23) = 0;
      goto LABEL_74;
    }

    locale = v65[1].__locale_;
    v51 = v65[3].__locale_;
  }

  v50 = v51 - locale;
  if ((v51 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v50 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v50;
  if (v50)
  {
    memmove(this, locale, v50);
  }

LABEL_74:
  *(this + v50) = 0;
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  v63 = *MEMORY[0x1E69E54E8];
  *(&v63 + *(v63 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v64 = MEMORY[0x1E69E5548] + 16;
  if (v68 < 0)
  {
    operator delete(v67);
  }

  v64 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v65);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v71);
}

void sub_1B2CD69D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  a67 = *MEMORY[0x1E69E54E8];
  *(&a67 + *(a67 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a68 = MEMORY[0x1E69E5548] + 16;
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  a68 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a69);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&STACK[0x240]);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::TileExclusionArea>>(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t **std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::find<unsigned short>(uint64_t a1, unint64_t a2, unsigned __int16 a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 8) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::unordered_set<unsigned short>::unordered_set(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 2 * a3;
    do
    {
      std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a1, *a2++);
      v5 -= 2;
    }

    while (v5);
  }

  return a1;
}

void std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::erase(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v3 = *__p;
  v4 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v2)
    {
      v4 %= *&v2;
    }
  }

  else
  {
    v4 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 == a1 + 2)
  {
    goto LABEL_18;
  }

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

  if (v8 != v4)
  {
LABEL_18:
    if (v3)
    {
      v9 = *(v3 + 8);
      if (v5.u32[0] > 1uLL)
      {
        v10 = *(v3 + 8);
        if (v9 >= *&v2)
        {
          v10 = v9 % *&v2;
        }
      }

      else
      {
        v10 = v9 & (*&v2 - 1);
      }

      if (v10 == v4)
      {
        goto LABEL_21;
      }
    }

    *(*a1 + 8 * v4) = 0;
    v3 = *__p;
  }

  if (!v3)
  {
    goto LABEL_10;
  }

  v9 = *(v3 + 8);
LABEL_21:
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v2)
    {
      v9 %= *&v2;
    }
  }

  else
  {
    v9 &= *&v2 - 1;
  }

  if (v9 != v4)
  {
    *(*a1 + 8 * v9) = v7;
    v3 = *__p;
  }

LABEL_10:
  *v7 = v3;
  *__p = 0;
  --a1[3];
  operator delete(__p);
}

uint64_t std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::operator()(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, char a5, uint64_t a6)
{
  v10 = a3;
  v9 = a4;
  v8 = a5;
  if (a2)
  {
    return (*(*a2 + 48))(a2, &v10, &v9, &v8, a6);
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return md::PendingSceneLogic::addSelectionContextMap(v7);
}

uint64_t md::PendingSceneLogic::addSelectionContextMap(uint64_t result, int a2, unsigned __int16 *a3, unsigned __int16 *a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a5;
  if (*a5)
  {
    v10 = a3 == a4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v12 = a3;
    while (*v12 != a2)
    {
      v12 += 16;
      if (v12 == a4)
      {
        return result;
      }
    }

    if (v12 != a4)
    {
      v9[8] = a7;
      v13 = *(result + 392);
      v15 = *(v13 + 112);
      v14 = *(v13 + 120);
      while (1)
      {
        if (v15 == v14)
        {
          goto LABEL_15;
        }

        if (*v15 == a2)
        {
          break;
        }

        v15 += 56;
      }

      v14 = v15;
LABEL_15:
      v9[9] = v14 + 28;
      v9[7] = a6;
      v9[1] = a8;
      std::unordered_set<unsigned short>::unordered_set(v16, a9);
      gdc::SelectionContext::setLayerDataTypes(v9, v16);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v16);
      *a5 = 0;
      operator new();
    }
  }

  return result;
}

void sub_1B2CD6F60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__emplace_back_slow_path<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>> const&>(uint64_t *a1, _WORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v17 = 0;
  v18 = 48 * v2;
  v19 = 48 * v2;
  *v18 = *a2;
  std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::unordered_set(48 * v2 + 8, (a2 + 4));
  v7 = *a1;
  v6 = a1[1];
  v8 = v18 - &v6[-*a1];
  *&v19 = v19 + 48;
  if (v6 != v7)
  {
    v9 = v18 - 16 * ((v6 - v7) >> 4) + 8;
    v10 = v7;
    v11 = v7;
    do
    {
      v12 = *v11;
      v11 += 48;
      *(v9 - 8) = v12;
      v9 = std::__hash_table<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DaVinciTrafficBatchKey>,std::equal_to<md::DaVinciTrafficBatchKey>,true>,std::__unordered_map_equal<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DaVinciTrafficBatchKey>,std::hash<md::DaVinciTrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>>>::__hash_table(v9, v10 + 1) + 48;
      v10 = v11;
    }

    while (v11 != v6);
    do
    {
      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table((v7 + 8));
      v7 += 48;
    }

    while (v7 != v6);
  }

  v13 = *a1;
  *a1 = v8;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::~__split_buffer(&v17);
  return v16;
}

void sub_1B2CD7134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3 != __p[6])
    {
      free(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void gdc::SelectionContext::~SelectionContext(gdc::SelectionContext *this)
{
  *this = &unk_1F2A61128;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 16);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A61128;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 16);
}

void *std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v5 = (a2 + 16);
  v4 = *(a2 + 16);
  *(a2 + 8) = v4;
  inserted = std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__node_insert_multi_prepare(a1, v4, v5);

  return std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_perform(a1, a2, inserted);
}

uint64_t *std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, unsigned __int16 *a3)
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

    v23 = v21 == a2 && *(v18 + 8) == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::clear(void *a1)
{
  std::__list_imp<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::clear(a1);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::clear((a1 + 3));
  a1[8] = a1;
  a1[9] = 0;
}

uint64_t *std::list<std::unique_ptr<gdc::SelectionContext>>::erase(uint64_t a1, uint64_t *__p, uint64_t *a3)
{
  if (__p != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *__p;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = __p[1];
      --*(a1 + 16);
      std::__list_imp<std::unique_ptr<gdc::SelectionContext>>::__delete_node[abi:nn200100](__p);
      __p = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

void std::__list_imp<std::unique_ptr<gdc::SelectionContext>>::__delete_node[abi:nn200100](void *__p)
{
  v2 = __p[2];
  __p[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

_BYTE *md::Logic<md::PendingSceneLogic,md::PendingSceneContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9F2276D081C2CB20 && (v5 = *(a3 + 32)) != 0)
  {
    md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>(v8, *(a2 + 8));
    return (*(*a1 + 160))(a1, a2, v8, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::PendingSceneContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::PendingSceneContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::PendingSceneContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::PendingSceneContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EB438;
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    MEMORY[0x1B8C62190](v2, 0x60C40149E097CLL);
  }

  return a1;
}

void md::PendingSceneLogic::createDebugNode(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&__p, "PendingSceneLogic");
  v62 = a2;
  gdc::DebugTreeNode::DebugTreeNode(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    v63 = *v4;
    std::string::basic_string[abi:nn200100]<0>(&__p, "Scene Context");
    gdc::DebugTreeNode::DebugTreeNode(v68, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v64 = 0;
    v66 = *MEMORY[0x1E69E54E8];
    v67 = *(MEMORY[0x1E69E54E8] + 24);
    do
    {
      v5 = v63[14];
      v6 = v63[15];
      if (v5 != v6)
      {
        while (md::TileSelectionTileSetTypeList[v64] != *v5)
        {
          v5 += 56;
          if (v5 == v6)
          {
            goto LABEL_12;
          }
        }

        v6 = v5;
      }

LABEL_12:
      std::string::basic_string[abi:nn200100]<0>(&v74, "Scene Tile Set");
      v7 = md::TileSelectionTileSetTypeList[v64];
      v8 = "<Invalid>";
      if (v7 <= 8)
      {
        v8 = off_1E7B3B318[v7];
      }

      v9 = strlen(v8);
      v10 = std::string::append(&v74, v8, v9);
      v75 = *v10;
      v10->__r_.__value_.__r.__words[0] = 0;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      gdc::DebugTreeNode::DebugTreeNode(v76, &v75);
      std::string::basic_string[abi:nn200100]<0>(&__p, "Virtual Tiles");
      ChildNode = gdc::DebugTreeNode::createChildNode(v76, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      gdc::LayerDataCollector::virtualTilesBegin(v84);
      while (1)
      {
        gdc::LayerDataCollector::virtualTilesEnd(&__p, *(*(v6 + 13) + 8));
        if (!geo::codec::VectorTile::daVinciBuildingColorsArePresent(v84[0], __p.__r_.__value_.__l.__data_))
        {
          break;
        }

        std::ostringstream::basic_ostringstream[abi:nn200100](&__p);
        v11 = gdc::VirtualTileIterator::tileKey(&v94, v84[0]);
        v12 = MEMORY[0x1B8C61C80](&__p, LODWORD(v94.__r_.__value_.__r.__words[1]), v11);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, ".", 1);
        v13 = gdc::VirtualTileIterator::tileKey(&v91, v84[0]);
        v14 = MEMORY[0x1B8C61C80](v12, HIDWORD(v91.__r_.__value_.__r.__words[0]), v13);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, ".", 1);
        v15 = gdc::VirtualTileIterator::tileKey(v89, v84[0]);
        MEMORY[0x1B8C61C80](v14, BYTE1(v89[0]), v15);
        std::ostringstream::str[abi:nn200100](&v94, &__p);
        v16 = gdc::DebugTreeNode::createChildNode(ChildNode, &v94);
        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        v17 = grl::LayerMetrics::anchor(v84[0]);
        for (v89[0] = v17; ; v17 = v89[0])
        {
          v18 = grl::LayerMetrics::anchor(v84[1]);
          if (!gdc::DataKeyIterator::operator!=(v17, v18))
          {
            break;
          }

          v19 = *(v17 + 8);
          hasData = gdc::LayerDataCollector::hasData(*(v6 + 13), *(v17 + 8), *(v17 + 144));
          v21 = gdc::LayerDataCollector::status(*(*(v6 + 13) + 24), *(*(v6 + 13) + 32), v19, *(v89[0] + 144));
          ExternalDependencyBitfield = gdc::LayerDataCollector::getExternalDependencyBitfield(*(*(v6 + 13) + 24), *(*(v6 + 13) + 32), v19, *(v89[0] + 144));
          v23 = "<Invalid>";
          if (v19 <= 0x51)
          {
            v23 = off_1E7B30210[v19];
          }

          std::string::basic_string[abi:nn200100]<0>(&v94, v23);
          v24 = gdc::DebugTreeNode::createChildNode(v16, &v94);
          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v94, "Has Data");
          gdc::DebugTreeValue::DebugTreeValue(v109, hasData);
          gdc::DebugTreeNode::addProperty(v24, &v94, v109);
          if (v111 < 0)
          {
            operator delete(v110);
          }

          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v94, "Status");
          v25 = "<Invalid>";
          if (v21 <= 3)
          {
            v25 = off_1E7B3B360[v21];
          }

          gdc::DebugTreeValue::DebugTreeValue(&__str, v25);
          gdc::DebugTreeNode::addProperty(v24, &v94, &__str);
          if (v108 < 0)
          {
            operator delete(v107);
          }

          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v94, "Tile");
          gdc::Tiled::stringFromLayerDataKey(&v91, v17);
          gdc::DebugTreeValue::DebugTreeValue(v103, &v91);
          gdc::DebugTreeNode::addProperty(v24, &v94, v103);
          if (v105 < 0)
          {
            operator delete(v104);
          }

          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v94, "External Dependency Bitfield");
          v26 = 0;
          *(&v91.__r_.__value_.__s + 23) = 8;
          strcpy(&v91, "00000000");
          v27 = 7;
          do
          {
            if ((*ExternalDependencyBitfield >> v26))
            {
              if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v28 = &v91;
              }

              else
              {
                v28 = v91.__r_.__value_.__r.__words[0];
              }

              v28->__r_.__value_.__s.__data_[v27] = 49;
            }

            ++v26;
            --v27;
          }

          while (v26 != 8);
          gdc::DebugTreeValue::DebugTreeValue(v100, &v91);
          gdc::DebugTreeNode::addProperty(v24, &v94, v100);
          if (v102 < 0)
          {
            operator delete(v101);
          }

          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          gdc::LayerDataRequestKey::createDebugNode(&v94, v17);
          gdc::DebugTreeNode::addChildNode(v24, &v94);
          v91.__r_.__value_.__r.__words[0] = &v99;
          std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v91);
          v91.__r_.__value_.__r.__words[0] = &v98;
          std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v91);
          if (v97 < 0)
          {
            operator delete(v95);
          }

          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          gdc::DataKeyIterator::operator++(v89);
        }

        __p.__r_.__value_.__r.__words[0] = v66;
        *(__p.__r_.__value_.__r.__words + *(v66 - 24)) = v67;
        __p.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
        if (v118 < 0)
        {
          operator delete(v117);
        }

        __p.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&__p.__r_.__value_.__r.__words[2]);
        std::ostream::~ostream();
        MEMORY[0x1B8C620C0](v119);
        gdc::VirtualTileIterator::operator++(v84);
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, "Finish Loading Required Layers");
      gdc::DebugTreeValue::DebugTreeValue(&v94, *(v6 + 8));
      gdc::DebugTreeNode::addProperty(v76, &__p, &v94);
      if (SHIBYTE(v98) < 0)
      {
        operator delete(v96);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, "Finish Loading All Layers");
      gdc::DebugTreeValue::DebugTreeValue(&v91, *(v6 + 9));
      gdc::DebugTreeNode::addProperty(v76, &__p, &v91);
      if (v93 < 0)
      {
        operator delete(v92);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, "Has Failed Tiles");
      gdc::DebugTreeValue::DebugTreeValue(v89, *(v6 + 10));
      gdc::DebugTreeNode::addProperty(v76, &__p, v89);
      if (v90 < 0)
      {
        operator delete(v89[4]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      memset(v88, 0, sizeof(v88));
      for (i = *(v6 + 10); i; i = *i)
      {
        std::ostringstream::basic_ostringstream[abi:nn200100](&__p);
        v30 = MEMORY[0x1B8C61C80](&__p, *(i + 6));
        v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, ".", 1);
        v32 = MEMORY[0x1B8C61C80](v31, *(i + 5));
        v33 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, ".", 1);
        MEMORY[0x1B8C61C80](v33, *(i + 17));
        std::ostringstream::str[abi:nn200100](&v83, &__p);
        gdc::DebugTreeValue::DebugTreeValue(v84, &v83);
        std::vector<gdc::DebugTreeValue>::push_back[abi:nn200100](v88, v84);
        if (v87 < 0)
        {
          operator delete(v86);
        }

        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        __p.__r_.__value_.__r.__words[0] = v66;
        *(__p.__r_.__value_.__r.__words + *(v66 - 24)) = v67;
        __p.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
        if (v118 < 0)
        {
          operator delete(v117);
        }

        __p.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&__p.__r_.__value_.__r.__words[2]);
        std::ostream::~ostream();
        MEMORY[0x1B8C620C0](v119);
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, "Tile Set");
      gdc::DebugTreeNode::addProperty(v76, &__p, v88);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(v84, "Tile Selection Size");
      gdc::DebugTreeValue::DebugTreeValue(&__p, *(v6 + 14));
      gdc::DebugTreeNode::addProperty(v76, v84, &__p);
      if ((v116[7] & 0x80000000) != 0)
      {
        operator delete(v114);
      }

      if (v85 < 0)
      {
        operator delete(v84[0]);
      }

      v84[0] = v88;
      std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](v84);
      gdc::DebugTreeNode::addChildNode(v68, v76);
      __p.__r_.__value_.__r.__words[0] = &v82;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__p);
      __p.__r_.__value_.__r.__words[0] = v81;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__p);
      if (v80 < 0)
      {
        operator delete(v78);
      }

      if (v77 < 0)
      {
        operator delete(v76[0]);
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      ++v64;
    }

    while (v64 != 9);
    std::string::basic_string[abi:nn200100]<0>(&__p, "Required Loading Stats");
    v34 = gdc::DebugTreeNode::createChildNode(v68, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    for (j = v63[51]; j; j = *j)
    {
      v36 = *(j + 4);
      v37 = "<Invalid>";
      if (v36 <= 3)
      {
        v37 = off_1E7B3B360[v36];
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, v37);
      v38 = gdc::DebugTreeNode::createChildNode(v34, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      for (k = j[5]; k; k = *k)
      {
        v40 = *(k + 8);
        v41 = "<Invalid>";
        if (v40 <= 0x51)
        {
          v41 = off_1E7B30210[v40];
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, v41);
        gdc::DebugTreeValue::DebugTreeValue(&v94, *(k + 6));
        gdc::DebugTreeNode::addProperty(v38, &__p, &v94);
        if (SHIBYTE(v98) < 0)
        {
          operator delete(v96);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Optional Loading Stats");
    v42 = gdc::DebugTreeNode::createChildNode(v68, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    for (m = v63[46]; m; m = *m)
    {
      v44 = *(m + 4);
      v45 = "<Invalid>";
      if (v44 <= 3)
      {
        v45 = off_1E7B3B360[v44];
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, v45);
      v46 = gdc::DebugTreeNode::createChildNode(v42, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      for (n = m[5]; n; n = *n)
      {
        v48 = *(n + 8);
        v49 = "<Invalid>";
        if (v48 <= 0x51)
        {
          v49 = off_1E7B30210[v48];
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, v49);
        gdc::DebugTreeValue::DebugTreeValue(v76, *(n + 6));
        gdc::DebugTreeNode::addProperty(v46, &__p, v76);
        if ((v81[7] & 0x80000000) != 0)
        {
          operator delete(v79);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Scene Info");
    v50 = gdc::DebugTreeNode::createChildNode(v68, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v51 = v63[6];
    for (ii = v63[7]; v51 != ii; v51 += 16)
    {
      v53 = *v51;
      v54 = "<Invalid>";
      if (v53 <= 0x51)
      {
        v54 = off_1E7B30210[v53];
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, v54);
      v55 = gdc::DebugTreeNode::createChildNode(v50, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, "inView");
      v56 = gdc::DebugTreeNode::createChildNode(v55, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v57 = *(v51 + 1);
      if (v57 != v51 + 8)
      {
        do
        {
          (*(**(v57 + 4) + 24))(&__p);
          FillRect = grl::IconMetricsRenderResult::getFillRect(*(v57 + 4));
          gdc::Tiled::stringFromLayerDataKey(&__str, FillRect);
          std::string::operator=(&__p, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&__str, "World");
          gdc::DebugTreeValue::DebugTreeValue(v109, *(v57 + 48));
          gdc::DebugTreeNode::addProperty(&__p, &__str, v109);
          if (v111 < 0)
          {
            operator delete(v110);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          gdc::DebugTreeNode::addChildNode(v56, &__p);
          __str.__r_.__value_.__r.__words[0] = &v117;
          std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
          __str.__r_.__value_.__r.__words[0] = v116;
          std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
          if (v115 < 0)
          {
            operator delete(v113);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v59 = *(v57 + 1);
          if (v59)
          {
            do
            {
              v60 = v59;
              v59 = *v59;
            }

            while (v59);
          }

          else
          {
            do
            {
              v60 = *(v57 + 2);
              v61 = *v60 == v57;
              v57 = v60;
            }

            while (!v61);
          }

          v57 = v60;
        }

        while (v60 != v51 + 8);
      }
    }

    gdc::DebugTreeNode::addChildNode(v62, v68);
    __p.__r_.__value_.__r.__words[0] = &v73;
    std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__p);
    __p.__r_.__value_.__r.__words[0] = &v72;
    std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__p);
    if (v71 < 0)
    {
      operator delete(v70);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }
  }
}

void sub_1B2CD8850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  STACK[0x3B0] = &a37;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x3B0]);
  STACK[0x3B0] = &a34;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x3B0]);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  a22 = (a9 + 72);
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a22);
  a22 = (a9 + 48);
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a22);
  if (*(a9 + 47) < 0)
  {
    operator delete(*(a9 + 24));
  }

  if (*(a9 + 23) < 0)
  {
    operator delete(*a9);
  }

  _Unwind_Resume(a1);
}

void md::PendingSceneLogic::~PendingSceneLogic(md::PendingSceneLogic *this)
{
  md::PendingSceneLogic::~PendingSceneLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29EB238;
  (*(**(this + 33) + 48))(*(this + 33));
  (*(**(this + 34) + 48))(*(this + 34));
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 352);
  v6 = (this + 328);
  std::vector<std::pair<unsigned short,std::list<std::unique_ptr<gdc::SelectionContext>>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 304);
  std::vector<std::pair<unsigned short,std::list<std::unique_ptr<gdc::SelectionContext>>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 280);
  std::vector<std::pair<unsigned short,std::list<std::unique_ptr<gdc::SelectionContext>>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v3 = *(this + 34);
  *(this + 34) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 33);
  *(this + 33) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>>::reset[abi:nn200100](this + 27, 0);
  v6 = (this + 192);
  std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 168);
  std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B2CD8E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 400);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v10 + 352);
  a10 = (v10 + 328);
  std::vector<std::pair<unsigned short,std::list<std::unique_ptr<gdc::SelectionContext>>>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 304);
  std::vector<std::pair<unsigned short,std::list<std::unique_ptr<gdc::SelectionContext>>>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 280);
  std::vector<std::pair<unsigned short,std::list<std::unique_ptr<gdc::SelectionContext>>>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v13 = *(v10 + 272);
  *(v10 + 272) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(v10 + 264);
  *(v10 + 264) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  std::unique_ptr<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>>::reset[abi:nn200100]((v10 + 216), 0);
  a10 = (v10 + 192);
  std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 168);
  std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v15 = *(v10 + 144);
  if (v15)
  {
    *(v10 + 152) = v15;
    operator delete(v15);
  }

  *v10 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v10 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v10 + 80));
  _Unwind_Resume(a1);
}

void std::vector<std::pair<unsigned short,std::list<std::unique_ptr<gdc::SelectionContext>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::__list_imp<std::unique_ptr<gdc::SelectionContext>>::clear(v4 - 3);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 48;
        std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table((v4 - 40));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__function::__func<md::PendingSceneLogic::PendingSceneLogic(md::World *,md::RunLoopController *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_1,std::allocator<md::PendingSceneLogic::PendingSceneLogic(md::World *,md::RunLoopController *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = **(*(a1 + 8) + 136);
  if (v1)
  {
    v2 = 8;
    md::MapEngine::setNeedsTick(v1, &v2);
  }
}

void std::__function::__func<md::PendingSceneLogic::PendingSceneLogic(md::World *,md::RunLoopController *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_0,std::allocator<md::PendingSceneLogic::PendingSceneLogic(md::World *,md::RunLoopController *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = **(*(a1 + 8) + 136);
  if (v1)
  {
    v2 = 8;
    md::MapEngine::setNeedsTick(v1, &v2);
  }
}

uint64_t std::__shared_ptr_pointer<md::SceneStateManager *,std::shared_ptr<md::SceneStateManager>::__shared_ptr_default_delete<md::SceneStateManager,md::SceneStateManager>,std::allocator<md::SceneStateManager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::SceneStateManager *,std::shared_ptr<md::SceneStateManager>::__shared_ptr_default_delete<md::SceneStateManager,md::SceneStateManager>,std::allocator<md::SceneStateManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::PendingSceneLogic,md::PendingSceneContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::Logic<md::PendingSceneLogic,md::PendingSceneContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::allocateContext(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t CollinearPolylineWalker::CollinearPolylineWalker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  v4 = sqrtf(((*&a2 - **a3) * (*&a2 - **a3)) + ((*(&a2 + 1) - *(*a3 + 4)) * (*(&a2 + 1) - *(*a3 + 4))));
  *(a1 + 28) = v4;
  *(a1 + 32) = v4;
  CollinearPolylineWalker::moveToNextSegment(a1);
  return a1;
}

float32x2_t *CollinearPolylineWalker::moveToNextSpan(float32x2_t *this)
{
  v1 = this;
  if (this[6].i8[1] == 1)
  {
    this[6].i8[1] = 0;
    v2 = this[7].i32[1];
  }

  else
  {
    this[5].f32[1] = this[5].f32[1] + this[3].f32[0];
    this = CollinearPolylineWalker::moveToNextSegment(this);
    v2 = 0;
  }

  v1[7].i32[1] = v2;
  v1[8].i32[0] = v2;
  return this;
}

float32x2_t *CollinearPolylineWalker::moveToNextSegment(float32x2_t *this)
{
  v1 = this[2];
  v2 = **&this[1];
  v3 = *(*&this[1] + 8) - v2;
  v4 = v3 >> 3;
  if (v1 <= v3 >> 3)
  {
    v5 = v3 >> 3;
  }

  else
  {
    v5 = this[2];
  }

  v6 = (v2 + 8 * v1 + 8);
  while (v5 != v1)
  {
    if (this[6].i8[0] != 1)
    {
      break;
    }

    this[2] = ++v1;
    if (v1 >= v4)
    {
      break;
    }

    v7 = vsub_f32(*v6, v6[-1]);
    v8 = sqrtf(vaddv_f32(vmul_f32(v7, v7)));
    this[3].f32[0] = v8;
    ++v6;
    if (v8 > 0.00000011921)
    {
      v9 = v1 - 1;
      v10 = (v2 + 8 * v1);
      v11 = this[4].f32[0];
      this[3].f32[1] = v11;
      v12 = *this;
      v13 = COERCE_FLOAT(HIDWORD(*this)) - v10[1];
      this[4].f32[0] = sqrtf(((COERCE_FLOAT(*this) - *v10) * (COERCE_FLOAT(*this) - *v10)) + (v13 * v13));
      v14 = vmul_n_f32(v7, 1.0 / v8);
      v15 = vsub_f32(v12, *(v2 + 8 * v9));
      v16 = fabsf(vmla_lane_f32(vneg_f32(vmul_lane_f32(v15, v14, 1)), v14, v15, 1).f32[0]);
      v14.f32[0] = vaddv_f32(vmul_f32(v15, v14));
      this[4].f32[1] = v16;
      this[5].i32[0] = v14.i32[0];
      this[6].i8[0] = v11 <= 0.0 || v14.f32[0] <= 0.0;
      return this;
    }
  }

  return this;
}

_BYTE *md::EntityDebugHighlightLogic::debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  if (*(a1 + 272))
  {
    v117 = *(a2 + 24);
    std::ostringstream::basic_ostringstream[abi:nn200100](&v119);
    if (*(a1 + 272))
    {
      v6 = *(a1 + 152);
      v7 = *(a1 + 160);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\n=== Components ===\n", 20);
      __dst = a3;
      for (i = *(v6 + 136); i; i = *i)
      {
        v9 = i[3];
        if ((*(*v9 + 24))(v9, v7))
        {
          v10 = v9[1];
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, v9[2], v9[3]);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\n", 1);
          if (v10 <= 0xF44C196EC679B51BLL)
          {
            switch(v10)
            {
              case 0xA4F4C87C991FC6E0:
                v88 = gdc::Registry::storage<md::components::ClientState>(v6);
                v89 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v88, v7);
                if (v89)
                {
                  v90 = v89;
                  v91 = *(v89 + 12);
                  if (*(v89 + 12))
                  {
                    v92 = 0;
                    v93 = 0;
                    v94 = 0;
                    LOWORD(v95) = *(v89 + 12);
                    do
                    {
                      if (v94 < v95 && (v92 & 1) == 0)
                      {
                        v93 = (*v90 + 4 * v94);
                        v3 = (*v90 + *(v90 + 8) + 2 * v94);
                        v92 = 1;
                      }

                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\t(", 2);
                      v96 = gss::to_string(*v93);
                      v97 = strlen(v96);
                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, v96, v97);
                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, ",", 1);
                      v98 = MEMORY[0x1B8C61C80](&v119, LOWORD(v3->__vftable));
                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v98, ")\n", 2);
                      v95 = *(v90 + 12);
                      if (v94 + 1 < v95)
                      {
                        ++v94;
                      }

                      else
                      {
                        v94 = *(v90 + 12);
                      }

                      if (v92)
                      {
                        v92 = 0;
                      }
                    }

                    while (v94 != v91);
                  }
                }

                continue;
              case 0xAE13B930655B4EC8:
                v106 = gdc::Registry::storage<md::components::Building>(v6);
                v107 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v106 + 4, HIDWORD(v7));
                if (v106[8] == v107)
                {
                  v108 = v106[11];
                }

                else
                {
                  v108 = (v106[10] + v107 - v106[7]);
                }

                if (v108 == v106[11])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v108;
                }

                if (!v31)
                {
                  continue;
                }

                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\tid:", 4);
                break;
              case 0xD7CF92E7713C257ALL:
                v26 = gdc::Registry::storage<md::components::ReferencedAssetInstance>(v6);
                v27 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v26 + 4, HIDWORD(v7));
                if (v26[8] == v27)
                {
                  continue;
                }

                v28 = v26[11];
                v29 = v26[10] + 96 * ((v27 - v26[7]) >> 3);
                if (v29 == v28 || v29 == 0)
                {
                  continue;
                }

                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\tassetId:", 9);
                v31 = (v29 + 16);
                break;
              default:
                continue;
            }

            v25 = MEMORY[0x1B8C61CF0](&v119, *v31);
            goto LABEL_132;
          }

          if (v10 > 0x1F5CA557A3AFA83ELL)
          {
            if (v10 == 0x1F5CA557A3AFA83FLL)
            {
              v102 = gdc::Registry::storage<md::components::FlexSelectionInfo>(v6);
              v103 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v102 + 4, HIDWORD(v7));
              if (v102[8] == v103)
              {
                continue;
              }

              v104 = v102[11];
              v105 = v102[10] + ((v103 - v102[7]) >> 1);
              if (v105 == v104 || !v105)
              {
                continue;
              }

              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\tflexDistance:", 14);
              v25 = std::ostream::operator<<();
              goto LABEL_132;
            }

            if (v10 == 0x299DE7A80C80C439)
            {
              v32 = gdc::Registry::storage<md::components::Material>(v6);
              v33 = gdc::ComponentStorageWrapper<md::components::Material>::get(v32, v7);
              if (v33)
              {
                v34 = v33;
                v35 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>((*v117 + 16), *v33);
                if (v35)
                {
                  v37 = v35[3];
                  v36 = v35[4];
                  if (v36)
                  {
                    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v37)
                  {
                    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\tSheet:", 7);
                    v38 = MEMORY[0x1B8C61CF0](&v119, *v34);
                    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, "\n", 1);
                    if (v34[1])
                    {
                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\tSource Material:", 17);
                      v115 = v36;
                      v39 = v34[1];
                      v40 = *(v39 + 16);
                      v41 = *(v39 + 24);
                      if (v41)
                      {
                        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v43 = v37[5];
                      v42 = v37[6];
                      v44 = v43;
                      if (v43 != v42)
                      {
                        while (*v44 != v40)
                        {
                          v44 += 16;
                          if (v44 == v42)
                          {
                            v44 = v37[6];
                            break;
                          }
                        }
                      }

                      v45 = ((v44 - v43) >> 4) | 0x100000000;
                      if (v42 == v44)
                      {
                        v46 = 0;
                      }

                      else
                      {
                        v46 = v45;
                      }

                      if ((v46 & 0x100000000) != 0)
                      {
                        v47 = v46;
                      }

                      else
                      {
                        v47 = 0xFFFFFFFFLL;
                      }

                      v48 = MEMORY[0x1B8C61C90](&v119, v47);
                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, "\n", 1);
                      if (v41)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v41);
                      }

                      v49 = v34[1];
                      v50 = *(v49 + 16);
                      v51 = *(v49 + 24);
                      if (v51)
                      {
                        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v52 = gms::MaterialSheet<ggl::Texture2D>::attributeMapForMaterial(v37, v50);
                      if (v51)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v51);
                      }

                      v114 = v37;
                      v116 = v34;
                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\t\tattrs:[\n", 10);
                      if (v52)
                      {
                        v53 = *(v52 + 12);
                        if (*(v52 + 12))
                        {
                          v54 = 0;
                          v55 = 0;
                          v56 = 0;
                          LOWORD(v57) = *(v52 + 12);
                          do
                          {
                            if (v56 < v57 && (v54 & 1) == 0)
                            {
                              v55 = (*v52 + 4 * v56);
                              v37 = (*v52 + *(v52 + 8) + 2 * v56);
                              v54 = 1;
                            }

                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\t\t  ", 4);
                            v58 = MEMORY[0x1B8C61C90](&v119, *v55);
                            v59 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v58, ":", 1);
                            MEMORY[0x1B8C61CD0](v59, *v37);
                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "(", 1);
                            v60 = gss::to_string(*v55);
                            v61 = strlen(v60);
                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, v60, v61);
                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, ":", 1);
                            v62 = gss::to_string(*v55, *v37);
                            v63 = strlen(v62);
                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, v62, v63);
                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, ")", 1);
                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\n", 1);
                            v57 = *(v52 + 12);
                            if (v56 + 1 < v57)
                            {
                              ++v56;
                            }

                            else
                            {
                              v56 = *(v52 + 12);
                            }

                            if (v54)
                            {
                              v54 = 0;
                            }
                          }

                          while (v56 != v53);
                        }
                      }

                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\t\t]\n", 4);
                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\tTarget Material:", 17);
                      v64 = v116[1];
                      v65 = *(v64 + 32);
                      v3 = *(v64 + 40);
                      if (v3)
                      {
                        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v67 = v114[5];
                      v66 = v114[6];
                      v68 = v67;
                      if (v67 != v66)
                      {
                        while (*v68 != v65)
                        {
                          v68 += 16;
                          if (v68 == v66)
                          {
                            v68 = v114[6];
                            break;
                          }
                        }
                      }

                      v69 = ((v68 - v67) >> 4) | 0x100000000;
                      if (v66 == v68)
                      {
                        v70 = 0;
                      }

                      else
                      {
                        v70 = v69;
                      }

                      if ((v70 & 0x100000000) != 0)
                      {
                        v71 = v70;
                      }

                      else
                      {
                        v71 = 0xFFFFFFFFLL;
                      }

                      v72 = MEMORY[0x1B8C61C90](&v119, v71);
                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v72, "\n", 1);
                      if (v3)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
                      }

                      v73 = v116[1];
                      v74 = *(v73 + 16);
                      v75 = *(v73 + 24);
                      if (v75)
                      {
                        atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v76 = gms::MaterialSheet<ggl::Texture2D>::attributeMapForMaterial(v114, v74);
                      if (v75)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v75);
                      }

                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\t\tattrs:[\n", 10);
                      if (v76)
                      {
                        v3 = *(v76 + 12);
                        if (*(v76 + 12))
                        {
                          v77 = 0;
                          v78 = 0;
                          v79 = 0;
                          LOWORD(v80) = *(v76 + 12);
                          do
                          {
                            if (v79 < v80 && (v77 & 1) == 0)
                            {
                              v78 = (*v76 + 4 * v79);
                              v37 = (*v76 + *(v76 + 8) + 2 * v79);
                              v77 = 1;
                            }

                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\t\t  ", 4);
                            v81 = MEMORY[0x1B8C61C90](&v119, *v78);
                            v82 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v81, ":", 1);
                            MEMORY[0x1B8C61CD0](v82, *v37);
                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "(", 1);
                            v83 = gss::to_string(*v78);
                            v84 = strlen(v83);
                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, v83, v84);
                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, ":", 1);
                            v85 = gss::to_string(*v78, *v37);
                            v86 = strlen(v85);
                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, v85, v86);
                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, ")", 1);
                            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\n", 1);
                            v80 = *(v76 + 12);
                            if (v79 + 1 < v80)
                            {
                              ++v79;
                            }

                            else
                            {
                              v79 = *(v76 + 12);
                            }

                            if (v77)
                            {
                              v77 = 0;
                            }
                          }

                          while (v79 != v3);
                        }
                      }

                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\t\t]\n", 4);
                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\tBlend Factor:", 14);
                      v87 = std::ostream::operator<<();
                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v87, "\n", 1);
                      v36 = v115;
                    }

                    else
                    {
                      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\tMaterial: NONE\n", 16);
                    }

                    goto LABEL_137;
                  }
                }

                else
                {
                  v36 = 0;
                }

                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\tSheet: NOT_AVAILABLE\n", 22);
LABEL_137:
                if (v36)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v36);
                }
              }
            }
          }

          else
          {
            if (v10 != 0xF44C196EC679B51CLL)
            {
              if (v10 != 0x1049843FF67503A0)
              {
                continue;
              }

              v11 = gdc::Registry::storage<md::components::MarketMask>(v6);
              v12 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v11, v7);
              if (!v12)
              {
                continue;
              }

              v13 = v12;
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\tmask:", 6);
              v14 = *v13;
              std::ios_base::getloc((&v119 + *(v119 - 24)));
              v15 = MEMORY[0x1E69E5318];
              v16 = std::locale::use_facet(&v129, MEMORY[0x1E69E5318]);
              v17 = (v16->__vftable[2].~facet_0)(v16, 48);
              std::ios_base::getloc((&v119 + *(v119 - 24)));
              v18 = std::locale::use_facet(&v128, v15);
              v19 = (v18->__vftable[2].~facet_0)(v18, 49);
              v20 = 0;
              v132 = 8;
              v130 = 0x101010101010101 * v17;
              LOBYTE(v131) = 0;
              v21 = 7;
              do
              {
                if ((v14 >> v20))
                {
                  if (v132 >= 0)
                  {
                    v22 = &v130;
                  }

                  else
                  {
                    v22 = v130;
                  }

                  *(v22 + v21) = v19;
                }

                ++v20;
                --v21;
              }

              while (v20 != 8);
              if (v132 >= 0)
              {
                v23 = &v130;
              }

              else
              {
                v23 = v130;
              }

              if (v132 >= 0)
              {
                v24 = v132;
              }

              else
              {
                v24 = v131;
              }

              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, v23, v24);
              if (v132 < 0)
              {
                operator delete(v130);
              }

              std::locale::~locale(&v128);
              std::locale::~locale(&v129);
              v25 = &v119;
              goto LABEL_132;
            }

            v99 = gdc::Registry::storage<md::components::Visibility>(v6);
            v100 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v99, v7);
            if (v100)
            {
              v101 = v100;
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v119, "\tIsVisible:", 11);
              v25 = MEMORY[0x1B8C61C50](&v119, *v101);
LABEL_132:
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, "\n", 1);
            }
          }
        }
      }

      if ((v126 & 0x10) != 0)
      {
        v112 = v125;
        v110 = __dst;
        if (v125 < v122)
        {
          v125 = v122;
          v112 = v122;
        }

        locale = v121[4].__locale_;
      }

      else
      {
        v110 = __dst;
        if ((v126 & 8) == 0)
        {
          v111 = 0;
          __dst[23] = 0;
LABEL_156:
          v110[v111] = 0;
          v119 = *MEMORY[0x1E69E54E8];
          *(&v119 + *(v119 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
          v120 = MEMORY[0x1E69E5548] + 16;
          if (v124 < 0)
          {
            operator delete(__p);
          }

          v120 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v121);
          std::ostream::~ostream();
          return MEMORY[0x1B8C620C0](&v127);
        }

        locale = v121[1].__locale_;
        v112 = v121[3].__locale_;
      }

      v111 = v112 - locale;
      if ((v112 - locale) < 0x7FFFFFFFFFFFFFF8)
      {
        if (v111 >= 0x17)
        {
          operator new();
        }

        v110[23] = v111;
        if (v111)
        {
          memmove(v110, locale, v111);
        }

        goto LABEL_156;
      }
    }

    else
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return std::string::basic_string[abi:nn200100]<0>(a3, "");
}

void sub_1B2CDA1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  a16 = *MEMORY[0x1E69E54E8];
  *(&a16 + *(a16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a17 = MEMORY[0x1E69E5548] + 16;
  if (a30 < 0)
  {
    operator delete(__p);
  }

  a17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a18);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a33);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::components::Building>(uint64_t a1)
{
  v3 = 0xAE13B930655B4EC8;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xAE13B930655B4EC8);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::ComponentStorageWrapper<md::components::Material>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
  }

  if (v4 == a1[11])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t gms::MaterialSheet<ggl::Texture2D>::attributeMapForMaterial(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3)
  {
    return 0;
  }

  v5 = a1[5];
  v4 = a1[6];
  v6 = v5;
  if (v5 != v4)
  {
    while (*v6 != a2)
    {
      v6 += 16;
      if (v6 == v4)
      {
        v6 = v4;
        break;
      }
    }
  }

  if (v4 == v6)
  {
    return 0;
  }

  else
  {
    return (*(*v3 + 16))(v3, (v6 - v5) >> 4);
  }
}

uint64_t gdc::Registry::storage<md::components::FlexSelectionInfo>(uint64_t a1)
{
  v3 = 0x1F5CA557A3AFA83FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1F5CA557A3AFA83FuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::FlexSelectionInfo>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 1;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 4);
    a1[11] = v8 - 4;
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

void gdc::ComponentStorageWrapper<md::components::FlexSelectionInfo>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::FlexSelectionInfo>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::components::Building>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::components::Building>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::Building>::~ComponentStorageWrapper(uint64_t a1)
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

void md::EntityDebugHighlightLogic::findEntityForRay(_BYTE *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const geo::QuadTile *a6)
{
  v80 = *MEMORY[0x1E69E9840];
  if (a2 == a3)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v8 = a2;
    v9 = 0;
    v10 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    v65 = _Q0;
    v66 = vdupq_n_s64(0x3FC45F306DC9C883uLL);
    __asm { FMOV            V12.2S, #1.0 }

    do
    {
      v17 = *v8;
      v18 = gdc::Registry::storage<md::components::SupportsDebugHighlight>(*v8);
      if (*(v18 + 88) != *(v18 + 80))
      {
        v19 = v10;
        v20 = gdc::Context::context<md::components::SharedTransformData>(v17);
        v21 = *(v20 + 1);
        __powidf2();
        v23 = v22 * 0.0000000249532021;
        *v76 = *a4;
        *&v76[16] = *(a4 + 16);
        v71 = 0uLL;
        *&v72 = 0.0;
        geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(v76, &v71);
        __pa = *(&v71 + 1);
        v24 = *&v72;
        v25 = tan(*&v71 * 0.5 + 0.785398163);
        v26 = log(v25);
        v27.f64[0] = __pa;
        v27.f64[1] = v26;
        v28 = vmlaq_f64(v65, v66, v27);
        *v27.f64 = v24;
        v29.i64[0] = *(v20 + 2);
        v29.i64[1] = (1 << v21) + ~*(v20 + 1);
        __pb = vmulq_n_f64(vcvtq_f64_s64(v29), 1.0 / (1 << v21));
        v67 = vcvt_f32_f64(vmulq_n_f64(vsubq_f64(v28, __pb), (1 << v21)));
        *v28.f64 = v23 * *v27.f64;
        v68 = LODWORD(v28.f64[0]);
        *v76 = gm::Ray<double,3>::at(a4, 100.0);
        *&v76[8] = v30;
        *&v76[16] = v31;
        v71 = 0uLL;
        *&v72 = 0.0;
        geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(v76, &v71);
        v61 = *(&v71 + 1);
        v32 = *&v72;
        v33 = tan(*&v71 * 0.5 + 0.785398163);
        v34 = log(v33);
        v35 = 0;
        v36 = v32;
        v37.f64[0] = v61;
        v37.f64[1] = v34;
        v78 = vcvt_f32_f64(vmulq_n_f64(vsubq_f64(vmlaq_f64(v65, v66, v37), __pb), (1 << v21)));
        *&v34 = v23 * v36;
        LODWORD(v79) = LODWORD(v34);
        do
        {
          *(&v71 + v35 * 4) = v78.f32[v35] - v67.f32[v35];
          ++v35;
        }

        while (v35 != 3);
        v38 = gm::Matrix<float,3,1>::normalized<int,void>(&v71);
        *&v71 = v67;
        *(&v71 + 1) = __PAIR64__(LODWORD(v38), v68);
        *&v72 = COERCE_DOUBLE(__PAIR64__(v40, v39));
        v41 = *(v20 + 55) * 0.0000000249532021;
        v42 = *(v20 + 56) * 0.0000000249532021;
        *v76 = 0;
        *&v76[12] = _D12;
        *&v76[8] = v41;
        *&v76[20] = v42;
        LODWORD(v74) = 0;
        LODWORD(v73) = 0;
        if (gm::Ray<float,3>::segmentIntersectsBox(&v71, v76, &v74, &v73))
        {
          v69 = v71;
          *&v70 = v72;
          v43 = v19 - v9;
          v44 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - v9) >> 3);
          v45 = v44 + 1;
          if (v44 + 1 > 0x666666666666666)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          __p = v9;
          if (0x999999999999999ALL * (-v9 >> 3) > v45)
          {
            v45 = 0x999999999999999ALL * (-v9 >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * (-v9 >> 3) >= 0x333333333333333)
          {
            v46 = 0x666666666666666;
          }

          else
          {
            v46 = v45;
          }

          if (v46)
          {
            if (v46 <= 0x666666666666666)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v47 = 40 * v44;
          *v47 = *&v74;
          *(v47 + 8) = v71;
          *(v47 + 24) = *&v72;
          *(v47 + 32) = v17;
          v48 = 40 * v44 + 40 * (v43 / -40);
          if (__p != v19)
          {
            v49 = __p;
            v50 = v48;
            do
            {
              v51 = *v49;
              v52 = *(v49 + 1);
              *(v50 + 32) = v49[4];
              *v50 = v51;
              *(v50 + 16) = v52;
              v49 += 5;
              v50 += 40;
            }

            while (v49 != v19);
          }

          v10 = (v47 + 40);
          if (__p)
          {
            operator delete(__p);
          }

          v9 = v48;
        }

        else
        {
          v10 = v19;
        }
      }

      ++v8;
    }

    while (v8 != a3);
  }

  v53 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v10 - v9) >> 3));
  if (v10 == v9)
  {
    v54 = 0;
  }

  else
  {
    v54 = v53;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::EntityDebugHighlightLogic::findIntersectedRegistries(gm::Ray<double,3> const&,md::CameraContext const&,md::GeometryContext const&,md::EntityDebugHighlightContext &)::$_0 &,md::RegistryIntersection *,false>(v9, v10, v54, 1);
  v76[0] = 0;
  v77 = 0;
  if (v10 != v9)
  {
    v55 = *(v9 + 8);
    v56 = *(v9 + 32);
    v75 = *(v9 + 24);
    v74 = v55;
    v58 = gdc::Context::context<md::components::SharedTransformData>(v56);
    md::GeometryContext::transformConstantData(v58[55], v58[56], &v73, a6, v58, *(a5 + 3784), -1);
  }

  *a1 = 0;
  a1[120] = 0;
  if (v9)
  {
    operator delete(v9);
  }
}