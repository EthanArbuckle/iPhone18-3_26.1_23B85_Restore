void fst::RmFinalEpsilon<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  memset(v3, 0, sizeof(v3));
  v2 = 0;
  v1[0] = 0;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = &v2;
  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, v1);
}

void sub_8DDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__hash_table(&a21);
  v23 = *(v21 - 128);
  if (v23)
  {
    operator delete(v23);
  }

  v24 = *(v21 - 104);
  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~EncodeMapper(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 80) - 1;
  *(v2 + 80) = v3;
  if (!v3)
  {
    fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~EncodeTable(v2);
    operator delete();
  }

  return a1;
}

void *fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~EncodeTable(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      if (*(v3 + 8 * v4))
      {
        operator delete();
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v5 = a1[11];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[12];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__hash_table((a1 + 4));
  v7 = a1[1];
  if (v7)
  {
    a1[2] = v7;
    operator delete(v7);
  }

  return a1;
}

void *fst::ContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::~ContextFst(void *a1)
{
  *a1 = off_2767F8;
  v2 = a1[1];
  v3 = v2[14] - 1;
  v2[14] = v3;
  if (!v3)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::ContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::~ContextFst(void *a1)
{
  *a1 = off_2767F8;
  v1 = a1[1];
  v2 = v1[14] - 1;
  v1[14] = v2;
  if (!v2)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::ContextFstImpl(uint64_t a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CacheBaseImpl(a1);
}

{
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CacheBaseImpl(a1);
}

void sub_8E714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    a14 = a13;
    operator delete(a13);
  }

  if (*(v18 + 431) < 0)
  {
    operator delete(*(v18 + 408));
  }

  v21 = *(v18 + 368);
  if (v21)
  {
    *(v18 + 376) = v21;
    operator delete(v21);
  }

  v22 = *(v18 + 344);
  if (v22)
  {
    operator delete(v22);
  }

  v23 = *(v18 + 304);
  if (v23)
  {
    *(v18 + 312) = v23;
    operator delete(v23);
  }

  v24 = *(v18 + 280);
  if (v24)
  {
    operator delete(v24);
  }

  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(v18 + 200);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(v19);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::FindLabel(void *a1, int **a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::find<std::vector<int>>(a1 + 25, a2);
  if (v4)
  {
    return *(v4 + 10);
  }

  v5 = -1431655765 * ((a1[31] - a1[30]) >> 3);
  std::vector<std::vector<int>>::push_back[abi:ne200100]((a1 + 30), a2);
  *(std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(a1 + 25, a2) + 10) = v5;
  return v5;
}

void fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::~ContextFstImpl(uint64_t a1)
{
  fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::~ContextFstImpl(a1);

  operator delete();
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CacheBaseImpl(uint64_t a1)
{
  *a1 = off_271380;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = off_2750D0;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = FLAGS_fst_default_cache_gc;
  *(a1 + 112) = FLAGS_fst_default_cache_gc_limit;
  operator new();
}

void *std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::find<std::vector<int>>(void *a1, int **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5++;
      v4 = v6 + 7853 * v4;
    }

    while (v5 != v2);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2 - v3;
    do
    {
      v14 = v12[1];
      if (v14 == v4)
      {
        v15 = v12[2];
        if (v12[3] - v15 == v13 && !memcmp(v15, v3, v13))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
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

        if (v14 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void *std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(void *a1, int **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5++;
      v4 = v6 + 7853 * v4;
    }

    while (v5 != v2);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_25:
    std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>();
  }

  v13 = v2 - v3;
  while (1)
  {
    v14 = v12[1];
    if (v14 == v4)
    {
      break;
    }

    if (v9 > 1)
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

    if (v14 != v10)
    {
      goto LABEL_25;
    }

LABEL_24:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  v15 = v12[2];
  if (v12[3] - v15 != v13 || memcmp(v15, v3, v13))
  {
    goto LABEL_24;
  }

  return v12;
}

void sub_8EE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,int>,void *>>>::operator()[abi:ne200100](&a13, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8EEBC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[2];
    if (v3)
    {
      __p[3] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::~ContextFstImpl(uint64_t a1)
{
  *a1 = off_2768B8;
  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  v2 = *(a1 + 368);
  if (v2)
  {
    *(a1 + 376) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 344);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 304);
  if (v4)
  {
    *(a1 + 312) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 280);
  if (v5)
  {
    operator delete(v5);
  }

  v7 = (a1 + 240);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(a1 + 200);
  v7 = (a1 + 176);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(a1 + 136);
  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(a1);
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      std::vector<int>::vector[abi:ne200100](__p, *(a1 + 396) - 1);
      if (fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::FindState(a1, __p))
      {
        __assert_rtn("Start", "context-fst-inl.h", 80, "s == 0");
      }

      *(a1 + 64) = 0;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= 0)
      {
        *(a1 + 68) = 1;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  return *(a1 + 64);
}

void sub_8F178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::FindState(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 396) - 1 != ((*(a2 + 8) - *a2) >> 2))
  {
    fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::FindState();
  }

  v4 = std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::find<std::vector<int>>((a1 + 136), a2);
  if (v4)
  {
    return *(v4 + 10);
  }

  v5 = -1431655765 * ((*(a1 + 184) - *(a1 + 176)) >> 3);
  std::vector<std::vector<int>>::push_back[abi:ne200100](a1 + 176, a2);
  *(std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>((a1 + 136), a2) + 10) = v5;
  return v5;
}

float fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Final(uint64_t a1, int a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 184) - *(a1 + 176)) >> 3) <= a2)
  {
    fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Final();
  }

  v4 = a2;
  if (fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasFinal(a1, a2))
  {
    v5 = *(a1 + 120);
    if (*(v5 + 92) == a2)
    {
      v6 = (v5 + 96);
    }

    else
    {
      v6 = (*(v5 + 8) + 8 * v4 + 8);
    }

    return **v6;
  }

  else
  {
    v7 = *(*(a1 + 176) + 24 * v4);
    v8 = (*(*(a1 + 176) + 24 * v4 + 8) - v7) >> 2;
    if (*(a1 + 396) - 1 != v8)
    {
      fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Final();
    }

    v9 = *(a1 + 400);
    v10 = 0.0;
    if (v9 < v8)
    {
      if (*(v7 + 4 * v9) == *(a1 + 392))
      {
        v10 = 0.0;
      }

      else
      {
        v10 = INFINITY;
      }
    }

    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(*(a1 + 120), a2);
    *MutableState = v10;
    *(MutableState + 14) |= 9u;
  }

  return v10;
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::NumArcs(uint64_t a1, unsigned int a2)
{
  if (fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(a1, a2))
  {
    v5 = *(a1 + 120);
    if (*(v5 + 92) == a2)
    {
      v6 = v5 + 96;
    }

    else
    {
      v6 = *(v5 + 8) + 8 * a2 + 8;
    }

    return (*(*v6 + 32) - *(*v6 + 24)) >> 4;
  }

  else
  {
    if ((a2 & 0x80000000) != 0 || (v7 = *(a1 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 184) - v7) >> 3) <= a2))
    {
      kaldi::KaldiAssertFailure_("NumArcs", "../subproject/libquasar/libkaldi/src/fstext/context-fst-inl.h", &stru_B8.sectname[2], "s >= 0 && s < state_seqs_.size()", v4);
    }

    v10 = (v7 + 24 * a2);
    v8 = *v10;
    v9 = v10[1];
    v11 = *(a1 + 396) - 1;
    if (v11 != (v9 - *v10) >> 2)
    {
      kaldi::KaldiAssertFailure_("NumArcs", "../subproject/libquasar/libkaldi/src/fstext/context-fst-inl.h", &stru_B8.sectname[4], "seq.size() == N_ - 1", v4);
    }

    if (v8 == v9 || (v12 = *(v9 - 4), v12 != *(a1 + 392)))
    {
      v15 = ((*(a1 + 312) - *(a1 + 304)) >> 2) + ((*(a1 + 376) - *(a1 + 368)) >> 2);
    }

    else
    {
      v13 = *(a1 + 400);
      if (v13 == v11 || *(v8 + 4 * v13) == v12)
      {
        return (*(a1 + 376) - *(a1 + 368)) >> 2;
      }

      v15 = (*(a1 + 376) - *(a1 + 368)) >> 2;
    }

    return v15 + 1;
  }
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Expand(uint64_t a1, int a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 184) - *(a1 + 176)) >> 3) <= a2)
  {
    fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Expand();
  }

  if (fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::CreateArc(a1, a2, *(a1 + 392), &v7))
  {
    fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::PushArc(a1, a2, &v7);
  }

  for (i = *(a1 + 304); i != *(a1 + 312); ++i)
  {
    if (fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::CreateArc(a1, a2, *i, &v7))
    {
      fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::PushArc(a1, a2, &v7);
    }
  }

  for (j = *(a1 + 368); j != *(a1 + 376); ++j)
  {
    if (fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::CreateArc(a1, a2, *j, &v7))
    {
      fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::PushArc(a1, a2, &v7);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a1, a2);
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::CreateArc(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  v33 = a3;
  if (!a3)
  {
    return 0;
  }

  v8 = *(a1 + 176);
  if (kaldi::ConstIntegerSet<int>::count(a1 + 328, a3))
  {
    __p = 0;
    v28 = 0;
    v29 = 0;
    LODWORD(v30) = -a3;
    std::vector<int>::push_back[abi:ne200100](&__p, &v30);
    *a4 = fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::FindLabel(a1, &__p);
    a4[1] = a3;
    a4[2] = 0;
    a4[3] = a2;
    goto LABEL_4;
  }

  v10 = (v8 + 24 * a2);
  v11 = kaldi::ConstIntegerSet<int>::count(a1 + 264, a3);
  v12 = *(a1 + 392);
  if (!v11)
  {
    if (v12 != a3)
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "CreateArc", "../subproject/libquasar/libkaldi/src/fstext/context-fst-inl.h", 315);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "ContextFst: CreateArc, invalid olabel supplied [confusion about phone list or disambig symbols?]: ", 98);
        std::ostream::operator<<();
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
      }

      exit(1);
    }

LABEL_13:
    v14 = *(a1 + 400);
    if (v14 != *(a1 + 396) - 1 && *(*v10 + 4 * v14) != a3)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v12 == a3)
  {
    goto LABEL_13;
  }

  v13 = v10[1];
  if (*v10 != v13 && *(v13 - 4) == v12)
  {
    return 0;
  }

LABEL_16:
  std::vector<int>::vector[abi:ne200100](&__p, *(a1 + 396) - 1);
  LODWORD(v15) = *(a1 + 396);
  v16 = v15 - 2;
  if (v15 > 2)
  {
    v17 = 0;
    v18 = __p;
    v19 = *v10 + 4;
    do
    {
      v18[v17] = *(v19 + 4 * v17);
      v15 = *(a1 + 396);
      v16 = v15 - 2;
      ++v17;
    }

    while (v17 < v15 - 2);
  }

  if (v15 >= 2)
  {
    *(__p + v16) = a3;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v30, *v10, v10[1], (v10[1] - *v10) >> 2);
  State = fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::FindState(a1, &__p);
  std::vector<int>::push_back[abi:ne200100](&v30, &v33);
  v21 = *(a1 + 396);
  v22 = v30;
  if (v21 >= 2)
  {
    for (i = 1; i < v21; ++i)
    {
      if (v22[i] == *(a1 + 392))
      {
        v22[i] = 0;
        v21 = *(a1 + 396);
      }
    }
  }

  v24 = v22[*(a1 + 400)];
  if (v24 == *(a1 + 392))
  {
    __assert_rtn("CreatePhoneOrEpsArc", "context-fst-inl.h", 249, "phone_seq[P_] != subsequential_symbol_");
  }

  v25 = v33;
  if (v24)
  {
    Label = fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::FindLabel(a1, &v30);
    v22 = v30;
    *a4 = Label;
    a4[1] = v25;
    a4[2] = 0;
    a4[3] = State;
    if (!v22)
    {
      goto LABEL_4;
    }
  }

  else
  {
    *a4 = *(a1 + 404);
    a4[1] = v25;
    a4[2] = 0;
    a4[3] = State;
  }

  v31 = v22;
  operator delete(v22);
LABEL_4:
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return 1;
}

void *fst::ContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::ContextFst(void *result, uint64_t a2, int a3)
{
  *result = off_2767F8;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_8FAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&a9);
  if (*(v9 + 431) < 0)
  {
    operator delete(*(v9 + 408));
  }

  v12 = *(v9 + 368);
  if (v12)
  {
    *(v9 + 376) = v12;
    operator delete(v12);
  }

  v13 = *(v9 + 344);
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(v9 + 304);
  if (v14)
  {
    *(v9 + 312) = v14;
    operator delete(v14);
  }

  v15 = *(v9 + 280);
  if (v15)
  {
    operator delete(v15);
  }

  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(v9 + 200);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(v10);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(v9);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheStateIterator<fst::ContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 68))
  {
    return 0;
  }

  v5 = fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 68))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::ContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = (*(v19 + 32) - v7) >> 4;
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 16 * v20 + 12);
      do
      {
        v14 = *v12;
        v12 += 4;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 68) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 68);
    --*(v19 + 60);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 68));
  return v4;
}

void *fst::ArcIterator<fst::ContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::ArcIterator(void *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 15);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComposeFstImplBase(a1, a2, a3, a4) = off_2769B8;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(*v9.n128_u64[0] + 32))(v9.n128_u64[0], v9);
  *(a1 + 168) = (*(**(a1 + 152) + 32))(*(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(**(a1 + 144) + 40))(*(a1 + 144), v11);
  v14 = (*(**(a1 + 152) + 40))(*(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(uint64_t a1)
{
  if (((*(**(a1 + 144) + 48))(*(a1 + 144)) & 1) != 0 && (*(**(a1 + 144) + 24))(*(a1 + 144), 1) != 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v13 = fst::LogMessage::LogMessage(&v18, __p);
    v14 = fst::cerr(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "ComposeFst: 1st argument requires matching but cannot.", 54);
  }

  else if (((*(**(a1 + 152) + 48))(*(a1 + 152)) & 1) != 0 && (*(**(a1 + 152) + 24))(*(a1 + 152), 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v2 = fst::LogMessage::LogMessage(&v18, __p);
    v3 = fst::cerr(v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ComposeFst: 2nd argument requires matching but cannot.", 54);
  }

  else
  {
    v4 = (*(**(a1 + 144) + 24))(*(a1 + 144), 0);
    v5 = (*(**(a1 + 152) + 24))(*(a1 + 152), 0);
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 == 1;
    }

    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = v4 == 1;
    if (v4 == 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8 || v5 == 0)
    {
      goto LABEL_36;
    }

    v9 = 1;
    if ((*(**(a1 + 144) + 24))(*(a1 + 144), 1) == 1)
    {
      goto LABEL_36;
    }

    if (!(*(**(a1 + 152) + 24))(*(a1 + 152), 1))
    {
      v9 = 0;
      goto LABEL_36;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v18, __p);
    v12 = fst::cerr(v11);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: 1st argument cannot match on output labels ", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "and 2nd argument cannot match on input labels (sort?).", 54);
  }

  fst::LogMessage::~LogMessage(&v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 3;
LABEL_36:
  *(a1 + 184) = v9;
}

void sub_903F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  operator delete();
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(**(a1 + 144) + 40))(*(a1 + 144), 0) & 4) != 0 || ((*(**(a1 + 152) + 40))(*(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 96) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v17 = *(v4 + 8);
  fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::SetState(v7, v5, v6, &v17);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v9 = a1[20];
    v8 = a1[21];
    v10 = a1[19];
    v11 = a1;
    v12 = a2;
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = a1[18];
    v11 = a1;
    v12 = a2;
    v13 = v5;
    v14 = v6;
    v15 = 0;
  }

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(**(a1 + 144) + 24))(*(a1 + 144), 0) == a3 && (*(**(a1 + 152) + 24))(*(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 96) + 12 * a2);
  v4 = *v3;
  v7 = (*(**(a1 + 144) + 96))(*(a1 + 144), v4);
  if (v7 != INFINITY)
  {
    v5 = v3[1];
    v7 = (*(**(a1 + 152) + 96))(*(a1 + 152), v5);
    if (v7 != INFINITY)
    {
      v6 = *(a1 + 136);
      LOBYTE(v7) = *(v3 + 8);
      fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::SetState(v6, v4, v5, &v7);
    }
  }
}

uint64_t fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(*a4 + 32))(a4);
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::ContextMatcher(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = off_276A30;
  *(a1 + 8) = (*(*a2 + 88))(a2, 0);
  *(a1 + 20) = -1;
  *(a1 + 44) = 0;
  if (a3 != 1)
  {
    goto LABEL_20;
  }

  v6 = (*(*a2 + 72))(a2);
  boost::filesystem::path::path(__p, "context");
  v7 = *(v6 + 23);
  if (v7 >= 0)
  {
    v8 = *(v6 + 23);
  }

  else
  {
    v8 = *(v6 + 8);
  }

  v9 = v17;
  v10 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v9 = __p[1];
  }

  if (v8 == v9)
  {
    if (v7 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if ((v17 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = memcmp(v11, v12, v8) == 0;
    if (v10 < 0)
    {
LABEL_19:
      operator delete(__p[0]);
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v13 = 0;
    if (v17 < 0)
    {
      goto LABEL_19;
    }
  }

  if (!v13)
  {
LABEL_20:
    v14 = 3;
    goto LABEL_21;
  }

LABEL_18:
  v14 = 1;
LABEL_21:
  *(a1 + 16) = v14;
  return a1;
}

void *fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::~ContextMatcher(void *a1)
{
  *a1 = off_276A30;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::~ContextMatcher(void *a1)
{
  *a1 = off_276A30;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Value_(uint64_t a1)
{
  if ((*(a1 + 44) & 1) == 0)
  {
    fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Value_();
  }

  return a1 + 28;
}

uint64_t fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Next_(uint64_t result)
{
  if ((*(result + 44) & 1) == 0)
  {
    fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Next_();
  }

  *(result + 44) = 0;
  return result;
}

uint64_t fst::MatcherBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Priority_(uint64_t a1)
{
  v1 = *(*(*(*a1 + 32))(a1) + 40);

  return v1();
}

void fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::SetState(uint64_t a1, int a2)
{
  if (*(a1 + 16) == 3)
  {
    boost::filesystem::path::path(__p, "FATAL");
    v4 = fst::LogMessage::LogMessage(&v8, __p);
    v5 = fst::cerr(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ContextMatcher: bad match type", 30);
    fst::LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 24) = a2;
}

void sub_90FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Find(uint64_t a1, int a2)
{
  v3 = *(a1 + 24);
  if (v3 == -1)
  {
    fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Find();
  }

  if (a2)
  {
    if (a2 == -1)
    {
      result = 0;
      *(a1 + 44) = 0;
      return result;
    }

    result = fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::CreateArc(*(*(a1 + 8) + 8), v3, a2, (a1 + 28));
  }

  else
  {
    *(a1 + 28) = 0xFFFFFFFF00000000;
    *(a1 + 36) = 0;
    *(a1 + 40) = v3;
    result = 1;
  }

  *(a1 + 44) = result;
  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = off_2769B8;
  v2 = a1[17];
  if (v2)
  {
    fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::~SequenceComposeFilter(v2);
    operator delete();
  }

  v3 = a1[22];
  if (v3)
  {
    v4 = *(v3 + 96);
    if (v4)
    {
      *(v3 + 104) = v4;
      operator delete(v4);
    }

    std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,fst::PoolAllocator<int>>::~__hash_table(v3 + 24);
    operator delete();
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(a1);
}

uint64_t *fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::~SequenceComposeFilter(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::SequenceComposeFilter(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = (*(**a2 + 16))(*a2, a3);
  *(a1 + 8) = (*(*a2[1] + 16))(a2[1], a3);
  *(a1 + 16) = (*(**a1 + 32))();
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

void fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::SetState(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (*(a1 + 24) != a2 || *(a1 + 28) != a3 || *a4 != *(a1 + 32))
  {
    *(a1 + 24) = a2;
    *(a1 + 28) = a3;
    *(a1 + 32) = *a4;
    v6 = (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
    v7 = (*(**(a1 + 16) + 56))(*(a1 + 16), a2);
    v9 = (*(**(a1 + 16) + 32))(*(a1 + 16), a2) == INFINITY && v6 == v7;
    *(a1 + 33) = v9;
    *(a1 + 34) = v7 == 0;
  }
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(**(a1 + 144) + 104))(*(a1 + 144));
  v8 = (*(**(a1 + 152) + 104))(*(a1 + 152), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_91618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::SetState(a7, a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a1, a2);
}

void sub_91828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a10);
  }

  else
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(uint64_t a1, int a2, uint64_t a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Find(a3, *(a4 + v10));
  if (result && *(a3 + 44) == 1)
  {
    v12 = *(a3 + 28);
    v24 = *a4;
    v25 = v12;
    if (a5)
    {
      v13 = *(a1 + 136);
      if (DWORD1(v24) != -1)
      {
        if (v25 == -1)
        {
          v17 = v13[32];
          if (v17)
          {
            v18 = -1;
          }

          else
          {
            v18 = 0;
          }

          v23 = v18;
          if (v17)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (DWORD1(v24))
          {
            v14 = 0;
          }

          else
          {
            v14 = -1;
          }

          v23 = v14;
          if (!DWORD1(v24))
          {
            goto LABEL_35;
          }
        }

        goto LABEL_28;
      }

      if ((v13[33] & 1) == 0)
      {
        v23 = v13[34] ^ 1;
LABEL_28:
        v19 = &v24;
        v20 = &v25;
LABEL_34:
        result = fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v19, v20, &v23);
      }

LABEL_35:
      if ((*(a3 + 44) & 1) == 0)
      {
        fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Next_();
      }

      *(a3 + 44) = 0;
      return result;
    }

    v15 = *(a1 + 136);
    if (DWORD1(v25) == -1)
    {
      if (v15[33])
      {
        goto LABEL_35;
      }

      v23 = v15[34] ^ 1;
    }

    else if (v24 == -1)
    {
      v21 = v15[32];
      if (v21)
      {
        v22 = -1;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      if (v21)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (DWORD1(v25))
      {
        v16 = 0;
      }

      else
      {
        v16 = -1;
      }

      v23 = v16;
      if (!DWORD1(v25))
      {
        goto LABEL_35;
      }
    }

    v19 = &v25;
    v20 = &v24;
    goto LABEL_34;
  }

  return result;
}

void *fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, char *a5)
{
  v7 = *(a4 + 12);
  LODWORD(v17) = a3[3];
  HIDWORD(v17) = v7;
  v18 = *a5;
  v8 = *a3;
  v9 = *(a4 + 4);
  v10 = *(a3 + 2);
  v11 = NAN;
  if (v10 != -INFINITY)
  {
    v12 = *(a4 + 8);
    if (v12 != -INFINITY)
    {
      if (v12 == INFINITY || v10 == INFINITY)
      {
        v11 = INFINITY;
      }

      else
      {
        v11 = v10 + v12;
      }
    }
  }

  Id = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(a1 + 176), &v17, 1);
  *&v16 = __PAIR64__(v9, v8);
  *(&v16 + 1) = __PAIR64__(Id, LODWORD(v11));
  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::PushArc(a1, a2, &v16);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = off_276AC8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  *(a1 + 32) = (*(**(a3 + 144) + 16))(*(a3 + 144), 0);
  *(a1 + 40) = (*(**(a3 + 152) + 16))(*(a3 + 152), 0);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_2121E0;
  *(a1 + 84) = 0;
  if (a4 == 1)
  {
    *(a1 + 52) = 0xFFFFFFFF00000000;
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  operator delete();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(**(a1 + 32) + 24))(*(a1 + 32));
  if (result != 3)
  {
    result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != 4 || (result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2), result != 4))
      {
        if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) == 4 && (*(**(a1 + 40) + 24))(*(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != *(a1 + 28) || (result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2), result != 4))
        {
          if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t a1, int a2)
{
  if (*(a1 + 24) != a2)
  {
    *(a1 + 24) = a2;
    v3 = (*(*(*(a1 + 16) + 176) + 96) + 12 * a2);
    v4 = v3[1];
    fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::SetState(*(a1 + 32), *v3);
    fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::SetState(*(a1 + 40), v4);
    *(a1 + 64) = *(a1 + 24);
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, int a2)
{
  *(a1 + 48) = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 32;
  if (*(a1 + 28))
  {
    v3 = 32;
  }

  else
  {
    v3 = 40;
  }

  if (*(a1 + 28))
  {
    v2 = 40;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if (*(a1 + 48) & 1) != 0 || (*(*(a1 + 32) + 44))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(*(a1 + 40) + 44) ^ 1;
  }

  return v1 & 1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else
  {
    if (*(result + 28))
    {
      v2 = *(result + 32);
      v1 = *(result + 40);
    }

    else
    {
      v1 = *(result + 32);
      v2 = *(result + 40);
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = off_276AC8;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_276AC8;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = (*(**(a2 + 32) + 16))(*(a2 + 32), a3);
  *(a1 + 40) = (*(**(a2 + 40) + 16))(*(a2 + 40), a3);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_2121E0;
  *(a1 + 84) = *(a2 + 84);
  if (a3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v11, __p);
    v7 = fst::cerr(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ComposeFstMatcher: safe copy not supported", 42);
    fst::LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 84) = 1;
  }

  if (*(a1 + 28) == 1)
  {
    *(a1 + 52) = vrev64_s32(*(a1 + 52));
  }

  return a1;
}

void sub_921B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Find(a3, a2);
  if (result)
  {
    v8 = *(a3 + 44);
    if (*(a1 + 28))
    {
      if ((*(a3 + 44) & 1) == 0)
      {
        fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Value_();
      }

      v9 = 28;
    }

    else
    {
      if ((*(a3 + 44) & 1) == 0)
      {
        fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Value_();
      }

      v9 = 32;
    }

    fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Find(a4, *(a3 + v9));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + 28);
  v7 = (a3 + 28);
  LOBYTE(v8) = *(a3 + 44);
  while ((*(a2 + 44) & 1) != 0)
  {
    if ((v8 & 1) == 0)
    {
      *(a2 + 44) = 0;
    }

LABEL_6:
    while (1)
    {
      v8 = *(a3 + 44);
      if (v8 != 1)
      {
        break;
      }

      if ((*(a2 + 44) & 1) == 0)
      {
        fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Value_();
      }

      *(a3 + 44) = 0;
      v9 = *(a1 + 28);
      v10 = v9 == 0;
      if (v9)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

      v12 = *v11;
      v13 = v11[1];
      if (v10)
      {
        v14 = v7;
      }

      else
      {
        v14 = v6;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v12, v13, *v14, v14[1]))
      {
        return 1;
      }
    }
  }

  if (v8)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 136);
  if (a3 >= 0xFFFFFFFF00000000)
  {
    if ((v7[33] & 1) == 0)
    {
      LOBYTE(v7) = (v7[34] & 1) == 0;
      goto LABEL_10;
    }

    return 0;
  }

  if (a5 == -1)
  {
    LODWORD(v7) = v7[32];
    if (v7)
    {
      return 0;
    }
  }

  else
  {
    if (!HIDWORD(a3))
    {
      return 0;
    }

    LOBYTE(v7) = 0;
  }

LABEL_10:
  v12 = __PAIR64__(HIDWORD(a6), HIDWORD(a4));
  v13 = v7;
  *(a1 + 68) = a3;
  *(a1 + 72) = HIDWORD(a5);
  v9 = NAN;
  if (*&a4 != -INFINITY && *&a6 != -INFINITY)
  {
    v9 = INFINITY;
    if (*&a6 != INFINITY && *&a4 != INFINITY)
    {
      v9 = *&a4 + *&a6;
    }
  }

  *(a1 + 76) = v9;
  v8 = 1;
  *(a1 + 80) = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(v6 + 176), &v12, 1);
  return v8;
}

uint64_t fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, void *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 168))(a1, v6);
    if ((*(*a1 + 152))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(a2, v7);
        (*(*a1 + 232))(a1, v7, v8);
        for (i = a2[5]; ; a2[5] = i)
        {
          v10 = a2[2];
          if (i >= (a2[3] - v10) >> 4)
          {
            break;
          }

          (*(*a1 + 200))(a1, v7, v10 + 16 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(*a2, v7);
        (*(*a1 + 176))(a1, v7);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 152))(a1));
    }

    v11 = *(*a1 + 184);

    return v11(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 28) | 0x40000000, 0x3FFFFFFF0007);
  }

  return result;
}

double fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(void *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(v4, v5);
  v6 = *a1;
  v16 = 0;
  (*(*v6 + 136))(v6, a2, v14);
  while (1)
  {
    if (!v14[0])
    {
      if (v16 >= v14[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = (v14[1] + 16 * v16);
      goto LABEL_8;
    }

    if ((*(*v14[0] + 24))(v14[0]))
    {
      break;
    }

    if (!v14[0])
    {
      goto LABEL_7;
    }

    v8 = (*(*v14[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](v4, v8);
    if (v14[0])
    {
      (*(*v14[0] + 40))(v14[0]);
    }

    else
    {
      ++v16;
    }
  }

  if (v14[0])
  {
    (*(*v14[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v15)
  {
    --*v15;
  }

LABEL_15:
  v9 = a1[2];
  v10 = a1[3];
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(v9, v10, v14, v12, 1, v7).n128_u64[0];
  return result;
}

void sub_928B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a10);
  }

  else
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(&a10);
  }

  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = a2 - 1;
  v39 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        if (a2[-1].n128_u32[1] < v12->n128_u32[1])
        {
          v62 = *v12;
          *v12 = a2[-1];
          result = v62;
          a2[-1] = v62;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v37 = v12[1].n128_i32[1];
      v38 = v12[2].n128_i32[1];
      if (v37 >= v12->n128_u32[1])
      {
        if (v38 < v37)
        {
          result = v12[1];
          v12[1] = v12[2];
          v12[2] = result;
          if (v12[1].n128_u32[1] < v12->n128_u32[1])
          {
            v64 = *v12;
            *v12 = v12[1];
            result = v64;
            v12[1] = v64;
          }
        }
      }

      else
      {
        if (v38 < v37)
        {
          v63 = *v12;
          *v12 = v12[2];
          result = v63;
          goto LABEL_103;
        }

        v66 = *v12;
        *v12 = v12[1];
        result = v66;
        v12[1] = v66;
        if (v38 < v12[1].n128_u32[1])
        {
          result = v12[1];
          v12[1] = v12[2];
LABEL_103:
          v12[2] = result;
        }
      }

      if (a2[-1].n128_u32[1] >= v12[2].n128_u32[1])
      {
        return result;
      }

      result = v12[2];
      v12[2] = *v10;
      *v10 = result;
      if (v12[2].n128_u32[1] >= v12[1].n128_u32[1])
      {
        return result;
      }

      result = v12[1];
      v12[1] = v12[2];
      v12[2] = result;
LABEL_107:
      if (v12[1].n128_u32[1] < v12->n128_u32[1])
      {
        v67 = *v12;
        *v12 = v12[1];
        result = v67;
        v12[1] = v67;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = a2[-1].n128_i32[1];
    if (v15 >= 0x81)
    {
      v18 = v16->n128_i32[1];
      if (v18 >= v12->n128_u32[1])
      {
        if (v17 < v18)
        {
          v42 = *v16;
          *v16 = *v10;
          *v10 = v42;
          if (v16->n128_u32[1] < v12->n128_u32[1])
          {
            v43 = *v12;
            *v12 = *v16;
            *v16 = v43;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v40 = *v12;
          *v12 = *v10;
          goto LABEL_28;
        }

        v46 = *v12;
        *v12 = *v16;
        *v16 = v46;
        if (a2[-1].n128_u32[1] < v16->n128_u32[1])
        {
          v40 = *v16;
          *v16 = *v10;
LABEL_28:
          *v10 = v40;
        }
      }

      v20 = v16 - 1;
      v21 = v16[-1].n128_i32[1];
      v22 = a2[-2].n128_i32[1];
      if (v21 >= v12[1].n128_u32[1])
      {
        if (v22 < v21)
        {
          v47 = *v20;
          *v20 = *v39;
          *v39 = v47;
          if (v16[-1].n128_u32[1] < v12[1].n128_u32[1])
          {
            v48 = v12[1];
            v12[1] = *v20;
            *v20 = v48;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = v12[1];
          v24 = a2 - 2;
          v12[1] = *v39;
          goto LABEL_42;
        }

        v50 = v12[1];
        v12[1] = *v20;
        *v20 = v50;
        if (a2[-2].n128_u32[1] < v16[-1].n128_u32[1])
        {
          v51 = *v20;
          v24 = a2 - 2;
          *v20 = *v39;
          v23 = v51;
LABEL_42:
          *v24 = v23;
        }
      }

      v25 = v16[1].n128_i32[1];
      v26 = a2[-3].n128_i32[1];
      if (v25 >= v12[2].n128_u32[1])
      {
        if (v26 < v25)
        {
          v52 = v16[1];
          v16[1] = *v11;
          *v11 = v52;
          if (v16[1].n128_u32[1] < v12[2].n128_u32[1])
          {
            v53 = v12[2];
            v12[2] = v16[1];
            v16[1] = v53;
          }
        }
      }

      else
      {
        if (v26 < v25)
        {
          v27 = v12[2];
          v12[2] = *v11;
          goto LABEL_51;
        }

        v54 = v12[2];
        v12[2] = v16[1];
        v16[1] = v54;
        if (a2[-3].n128_u32[1] < v16[1].n128_u32[1])
        {
          v55 = v16[1];
          v16[1] = *v11;
          v27 = v55;
LABEL_51:
          *v11 = v27;
        }
      }

      v28 = v16->n128_i32[1];
      v29 = v16[1].n128_i32[1];
      if (v28 >= v16[-1].n128_u32[1])
      {
        if (v29 < v28)
        {
          v57 = *v16;
          *v16 = v16[1];
          v16[1] = v57;
          if (v16->n128_u32[1] < v16[-1].n128_u32[1])
          {
            v58 = *v20;
            *v20 = *v16;
            *v16 = v58;
          }
        }
      }

      else
      {
        if (v29 < v28)
        {
          v56 = *v20;
          *v20 = v16[1];
          goto LABEL_60;
        }

        v59 = *v20;
        *v20 = *v16;
        *v16 = v59;
        if (v16[1].n128_u32[1] < v16->n128_u32[1])
        {
          v56 = *v16;
          *v16 = v16[1];
LABEL_60:
          v16[1] = v56;
        }
      }

      v60 = *v12;
      *v12 = *v16;
      *v16 = v60;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v19 = v12->n128_i32[1];
    if (v19 < v16->n128_u32[1])
    {
      if (v17 < v19)
      {
        v41 = *v16;
        *v16 = *v10;
        goto LABEL_37;
      }

      v49 = *v16;
      *v16 = *v12;
      *v12 = v49;
      if (a2[-1].n128_u32[1] < v12->n128_u32[1])
      {
        v41 = *v12;
        *v12 = *v10;
LABEL_37:
        *v10 = v41;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v17 >= v19)
    {
      goto LABEL_38;
    }

    v44 = *v12;
    *v12 = *v10;
    *v10 = v44;
    if (v12->n128_u32[1] >= v16->n128_u32[1])
    {
      goto LABEL_38;
    }

    v45 = *v16;
    *v16 = *v12;
    *v12 = v45;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (v12[-1].n128_u32[1] >= v12->n128_u32[1])
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(v12, a2);
      goto LABEL_68;
    }

LABEL_63:
    v30 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(v12, a2);
    if ((v32 & 1) == 0)
    {
      goto LABEL_66;
    }

    v33 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v12, v30, v31);
    v12 = v30 + 1;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v30 + 1, a2, v34))
    {
      a4 = -v14;
      a2 = v30;
      if (v33)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v33)
    {
LABEL_66:
      std::__introsort<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(a1, v30, a3, -v14, a5 & 1);
      v12 = v30 + 1;
LABEL_68:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v35 = v12[1].n128_i32[1];
  v36 = a2[-1].n128_i32[1];
  if (v35 >= v12->n128_u32[1])
  {
    if (v36 >= v35)
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
    *v10 = result;
    goto LABEL_107;
  }

  if (v36 >= v35)
  {
    v65 = *v12;
    *v12 = v12[1];
    result = v65;
    v12[1] = v65;
    if (a2[-1].n128_u32[1] >= v12[1].n128_u32[1])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
  }

  else
  {
    v61 = *v12;
    *v12 = *v10;
    result = v61;
  }

  *v10 = result;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_i32[1];
  v7 = a3->n128_i32[1];
  if (v6 >= a1->n128_u32[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[1] < a1->n128_u32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_u32[1] < a2->n128_u32[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u32[1] < a3->n128_u32[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_u32[1] < a2->n128_u32[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[1] < a1->n128_u32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (a5->n128_u32[1] < a4->n128_u32[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (a4->n128_u32[1] < a3->n128_u32[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a3->n128_u32[1] < a2->n128_u32[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[1] < a1->n128_u32[1])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = (result + 16);
    if ((result + 16) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[5];
        if (v6 < v4[1])
        {
          v7 = *v5;
          v8 = *(v4 + 3);
          v9 = v3;
          while (1)
          {
            *(result + v9 + 16) = *(result + v9);
            if (!v9)
            {
              break;
            }

            v10 = *(result + v9 - 12);
            v9 -= 16;
            if (v6 >= v10)
            {
              v11 = result + v9 + 16;
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
          *(v11 + 4) = v6;
          *(v11 + 8) = v8;
        }

        v2 = v5 + 4;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 4 != a2);
    }
  }

  return result;
}

_DWORD *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = result[5];
      if (v4 < result[1])
      {
        v5 = *v3;
        v6 = *(result + 3);
        v7 = v3;
        do
        {
          *v7 = *(v7 - 1);
          v8 = *(v7 - 7);
          v7 -= 4;
        }

        while (v4 < v8);
        *v7 = v5;
        v7[1] = v4;
        *(v7 + 1) = v6;
      }

      v2 = v3 + 4;
      result = v3;
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(int *a1, _OWORD *a2)
{
  v2 = a1[1];
  if (v2 >= *(a2 - 3))
  {
    v6 = (a1 + 4);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 4);
      v6 += 16;
    }

    while (v2 >= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 4);
      v5 = v3[5];
      v3 += 4;
    }

    while (v2 >= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 1;
      v9 = *(a2-- - 3);
    }

    while (v2 < v9);
  }

  v10 = *a1;
  v11 = *(a1 + 1);
  while (v4 < v8)
  {
    v15 = *v4;
    *v4 = *v8;
    *v8 = v15;
    do
    {
      v12 = *(v4 + 20);
      v4 += 16;
    }

    while (v2 >= v12);
    do
    {
      v13 = *(v8-- - 3);
    }

    while (v2 < v13);
  }

  if ((v4 - 16) != a1)
  {
    *a1 = *(v4 - 16);
  }

  *(v4 - 16) = v10;
  *(v4 - 12) = v2;
  *(v4 - 8) = v11;
  return v4;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(int *a1, _OWORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  do
  {
    v6 = a1[v2 + 5];
    v2 += 4;
  }

  while (v6 < v4);
  v7 = &a1[v2];
  if (v2 == 4)
  {
    while (v7 < a2)
    {
      v8 = a2 - 1;
      v10 = *(a2-- - 3);
      if (v10 < v4)
      {
        goto LABEL_9;
      }
    }

    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 1;
      v9 = *(a2-- - 3);
    }

    while (v9 >= v4);
  }

LABEL_9:
  v11 = v7;
  if (v7 < v8)
  {
    v12 = v8;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      do
      {
        v14 = *(v11 + 20);
        v11 += 16;
      }

      while (v14 < v4);
      do
      {
        v15 = *(v12-- - 3);
      }

      while (v15 >= v4);
    }

    while (v11 < v12);
  }

  if ((v11 - 16) != a1)
  {
    *a1 = *(v11 - 16);
  }

  *(v11 - 16) = v3;
  *(v11 - 12) = v4;
  *(v11 - 8) = v5;
  return v11 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = a2 - 1;
      v6 = a1[1].n128_i32[1];
      v7 = a2[-1].n128_i32[1];
      if (v6 < a1->n128_u32[1])
      {
        if (v7 >= v6)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
          if (a2[-1].n128_u32[1] >= a1[1].n128_u32[1])
          {
            return 1;
          }

          v8 = a1[1];
          a1[1] = *v5;
        }

        else
        {
          v8 = *a1;
          *a1 = *v5;
        }

        *v5 = v8;
        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      v18 = a1[1];
      a1[1] = *v5;
      *v5 = v18;
LABEL_50:
      if (a1[1].n128_u32[1] < a1->n128_u32[1])
      {
        v37 = *a1;
        *a1 = a1[1];
        a1[1] = v37;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v14 = a1[1].n128_i32[1];
    v15 = a1->n128_i32[1];
    v16 = a1[2].n128_i32[1];
    if (v14 >= v15)
    {
      if (v16 < v14)
      {
        v21 = a1[1];
        a1[1] = a1[2];
        a1[2] = v21;
        if (a1[1].n128_u32[1] < v15)
        {
          v22 = *a1;
          *a1 = a1[1];
          a1[1] = v22;
        }
      }

      goto LABEL_47;
    }

    if (v16 >= v14)
    {
      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (v16 >= a1[1].n128_u32[1])
      {
        goto LABEL_47;
      }

      v17 = a1[1];
      a1[1] = a1[2];
    }

    else
    {
      v17 = *a1;
      *a1 = a1[2];
    }

    a1[2] = v17;
LABEL_47:
    if (a2[-1].n128_u32[1] >= a1[2].n128_u32[1])
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v35;
    if (a1[2].n128_u32[1] >= a1[1].n128_u32[1])
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_u32[1] < a1->n128_u32[1])
    {
      v4 = *a1;
      *a1 = a2[-1];
      a2[-1] = v4;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v10 = a1[1].n128_i32[1];
  v11 = a1->n128_i32[1];
  v12 = a1[2].n128_i32[1];
  if (v10 >= v11)
  {
    if (v12 < v10)
    {
      v19 = a1[1];
      a1[1] = *v9;
      *v9 = v19;
      if (a1[1].n128_u32[1] < v11)
      {
        v20 = *a1;
        *a1 = a1[1];
        a1[1] = v20;
      }
    }
  }

  else
  {
    if (v12 >= v10)
    {
      v24 = *a1;
      *a1 = a1[1];
      a1[1] = v24;
      if (v12 >= a1[1].n128_u32[1])
      {
        goto LABEL_33;
      }

      v13 = a1[1];
      a1[1] = *v9;
    }

    else
    {
      v13 = *a1;
      *a1 = *v9;
    }

    *v9 = v13;
  }

LABEL_33:
  v25 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v28 = v25->n128_i32[1];
    if (v28 < v9->n128_u32[1])
    {
      v29 = v25->n128_u32[0];
      v30 = v25->n128_u64[1];
      v31 = v26;
      while (1)
      {
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          break;
        }

        v32 = *(&a1[1].n128_i32[1] + v31);
        v31 -= 16;
        if (v28 >= v32)
        {
          v33 = &a1[3] + v31;
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      *v33 = v29;
      *(v33 + 4) = v28;
      *(v33 + 8) = v30;
      if (++v27 == 8)
      {
        return &v25[1] == a2;
      }
    }

    v9 = v25;
    v26 += 16;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (v12[1] < a1[1])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v24 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[4 * v14];
          v17 = v16 + 4;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v19 = v16[5];
            v20 = v16[9];
            v21 = v16 + 8;
            if (v19 >= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v21;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 4;
        if (v17 == v6)
        {
          *v17 = v24;
        }

        else
        {
          *v17 = *v6;
          *v6 = v24;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, (v17 + 4), a4, ((v17 + 4) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[1];
        v11 = v8[5];
        v8 += 4 * (v10 < v11);
        if (v10 < v11)
        {
          v7 = v9;
        }
      }

      v12 = a4[1];
      if (v8[1] >= v12)
      {
        v13 = *a4;
        v14 = *(a4 + 1);
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v17 = 2 * v7 + 2;
          if (v17 < a3)
          {
            v18 = v8[1];
            v19 = v8[5];
            v8 += 4 * (v18 < v19);
            if (v18 < v19)
            {
              v16 = v17;
            }
          }

          v7 = v16;
        }

        while (v8[1] >= v12);
        *a4 = v13;
        a4[1] = v12;
        *(a4 + 1) = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 16 * (v4 >> 1);
    v7 = *(a2 - 12);
    if (*(v6 + 4) < v7)
    {
      v10 = *(a2 - 16);
      v8 = a2 - 16;
      v9 = v10;
      v11 = *(v8 + 8);
      do
      {
        v12 = v8;
        v8 = v6;
        *v12 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 16 * v5;
      }

      while (*(v6 + 4) < v7);
      *v8 = v9;
      *(v8 + 4) = v7;
      *(v8 + 8) = v11;
    }
  }

  return result;
}

void *fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~TableMatcher(void *a1)
{
  *a1 = off_276B60;
  v2 = a1[1];
  v3 = v2[2] - 1;
  v2[2] = v3;
  if (!v3)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~TableMatcher(void *a1)
{
  *a1 = off_276B60;
  v1 = a1[1];
  v2 = v1[2] - 1;
  v1[2] = v2;
  if (!v2)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TableMatcherImpl(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  *a1 = off_276BF8;
  *(a1 + 8) = 1;
  *(a1 + 12) = a3;
  v8 = (*(*a2 + 88))(a2, 0);
  *(a1 + 64) = 0;
  *(a1 + 16) = v8;
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (a3)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 32) = v9;
  *(a1 + 36) = v10;
  *(a1 + 40) = 0xFFFFFFFF00000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = *a4;
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SortedMatcher(a1 + 96, a2, a3, 1);
}

void sub_93F5C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~TableMatcherImpl(uint64_t a1)
{
  fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~TableMatcherImpl(a1);

  operator delete();
}

uint64_t fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~TableMatcherImpl(uint64_t a1)
{
  *a1 = off_276BF8;
  if (*(a1 + 8))
  {
    __assert_rtn("~TableMatcherImpl", "table-matcher.h", 89, "RefCount() == 0");
  }

  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        v6 = v5 == 24;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        v7 = *v5;
        if (*v5)
        {
          *(v5 + 8) = v7;
          operator delete(v7);
        }

        operator delete();
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    if (*v8)
    {
      (*(**v8 + 8))(*v8);
    }

    else
    {
      v9 = v8[3];
      if (v9)
      {
        --*v9;
      }
    }

    operator delete();
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~SortedMatcher((a1 + 96));
  v11 = *(a1 + 64);
  if (v11)
  {
    *(a1 + 72) = v11;
    operator delete(v11);
  }

  return a1;
}

void *fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    else
    {
      v5 = v4[3];
      if (v5)
      {
        --*v5;
      }
    }

    operator delete();
  }

  if (*(a1 + 12) == 3)
  {
    boost::filesystem::path::path(&__p, "FATAL");
    v6 = fst::LogMessage::LogMessage(&v23, &__p);
    v7 = fst::cerr(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "TableMatcher: bad match type", 28);
    fst::LogMessage::~LogMessage(&v23);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = *(a1 + 64);
  *(a1 + 56) = a2;
  if (a2 >= ((*(a1 + 72) - v8) >> 3))
  {
    if ((a2 & 0x80000000) != 0)
    {
      fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetState();
    }

    __p = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 64), (a2 + 1), &__p);
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 8 * a2);
  if (v9)
  {
    if (v9 != 24)
    {
      goto LABEL_15;
    }

    return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(a1 + 96, a2);
  }

  v10 = (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
  v11 = v10;
  if (!v10 || *(a1 + 92) > v10)
  {
    *(v8 + 8 * a2) = 24;
    return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(a1 + 96, a2);
  }

  v13 = *(a1 + 16);
  v22 = 0;
  (*(*v13 + 136))(v13, a2, &__p);
  if (__p)
  {
    *(a1 + 12);
    (*(*__p + 80))();
    v14 = v11 - 1;
    if (__p)
    {
      (*(*__p + 64))(__p, v14);
      goto LABEL_25;
    }
  }

  else
  {
    v14 = v11 - 1;
  }

  v22 = v14;
LABEL_25:
  if (*(a1 + 12) == 1)
  {
    if (__p)
    {
      v15 = (*(*__p + 32))();
    }

    else
    {
      v15 = v19 + 16 * v22;
    }

    v16 = (v15 + 4);
  }

  else if (__p)
  {
    v16 = (*(*__p + 32))();
  }

  else
  {
    v16 = (v19 + 16 * v22);
  }

  v17 = *(a1 + 88) * (*v16 + 1);
  if (v17 <= v11)
  {
    operator new();
  }

  *(v8 + 8 * a2) = 24;
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(a1 + 96, a2);
  result = __p;
  if (__p)
  {
    result = (*(*__p + 8))(__p);
  }

  else if (v21)
  {
    --*v21;
  }

  if (v17 <= v11)
  {
LABEL_15:
    operator new();
  }

  return result;
}

void sub_9471C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, _DWORD *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  else if (a15)
  {
    --*a15;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(uint64_t a1, int a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    result = a2 == 0;
    *(a1 + 24) = result;
    if (a2 == -1)
    {
      v6 = 0;
    }

    else
    {
      v6 = a2;
    }

    *(a1 + 28) = v6;
    v8 = *(*(a1 + 64) + 8 * *(a1 + 56));
    v7 = *v8;
    if (v6 < ((v8[1] - *v8) >> 2))
    {
      v9 = *(v7 + 4 * v6);
      if (v9 != -1)
      {
        if (*v4)
        {
          (*(**v4 + 64))(*v4);
        }

        else
        {
          v4[4] = v9;
        }

        return 1;
      }
    }
  }

  else
  {
    v10 = a1 + 96;

    return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(v10, a2);
  }

  return result;
}

BOOL fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    if (*(a1 + 24))
    {
      return 0;
    }

    if (*v2)
    {
      if ((*(**v2 + 24))(*v2))
      {
        return 1;
      }
    }

    else if (v2[4] >= v2[2])
    {
      return 1;
    }

    v5 = *(a1 + 48);
    v6 = *v5;
    if (*(a1 + 12) == 1)
    {
      if (v6)
      {
        v7 = (*(*v6 + 32))(v6);
      }

      else
      {
        v7 = v5[1] + 16 * v5[4];
      }

      v8 = (v7 + 4);
    }

    else if (v6)
    {
      v8 = (*(*v6 + 32))(v6);
    }

    else
    {
      v8 = (v5[1] + 16 * v5[4]);
    }

    return *v8 != *(a1 + 28);
  }

  else
  {
    v4 = a1 + 96;

    return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(v4);
  }
}

uint64_t fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Value(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(a1 + 96);
  }

  if (*(a1 + 24) == 1)
  {
    return a1 + 32;
  }

  if (*v1)
  {
    return (*(**v1 + 32))();
  }

  return v1[1] + 16 * v1[4];
}

uint64_t fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Next(uint64_t result)
{
  v1 = *(result + 48);
  if (!v1)
  {
    return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Next(result + 96);
  }

  if (*(result + 24) == 1)
  {
    *(result + 24) = 0;
  }

  else
  {
    result = *v1;
    if (*v1)
    {
      return (*(*result + 40))();
    }

    else
    {
      ++v1[4];
    }
  }

  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComposeFstImplBase(a1, a2, a3, a4) = off_276C90;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(*v9.n128_u64[0] + 32))(v9.n128_u64[0], v9);
  *(a1 + 168) = (*(**(a1 + 152) + 32))(*(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(**(a1 + 144) + 40))(*(a1 + 144), v11);
  v14 = (*(**(a1 + 152) + 40))(*(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  operator delete();
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 96) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v9 = *(v4 + 8);
  fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::SetState(v7, v5, v6, &v9);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, a2, a1[21], v6, a1[20], v5, a1[19], 1);
  }

  else
  {
    return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(a1, a2, a1[20], v5, a1[21], v6, a1[18], 0);
  }
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(**(a1 + 144) + 24))(*(a1 + 144), 0) == a3 && (*(**(a1 + 152) + 24))(*(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 96) + 12 * a2);
  v4 = *v3;
  v7 = (*(**(a1 + 144) + 96))(*(a1 + 144), v4);
  if (v7 != INFINITY)
  {
    v5 = v3[1];
    v7 = (*(**(*(a1 + 152) + 8) + 32))(*(*(a1 + 152) + 8), v5);
    if (v7 != INFINITY)
    {
      v6 = *(a1 + 136);
      LOBYTE(v7) = *(v3 + 8);
      fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::SetState(v6, v4, v5, &v7);
    }
  }
}

uint64_t fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(*a4 + 32))(a4);
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = off_276C90;
  v2 = a1[17];
  if (v2)
  {
    fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::~SequenceComposeFilter(v2);
    operator delete();
  }

  v3 = a1[22];
  if (v3)
  {
    v4 = *(v3 + 96);
    if (v4)
    {
      *(v3 + 104) = v4;
      operator delete(v4);
    }

    std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,fst::PoolAllocator<int>>::~__hash_table(v3 + 24);
    operator delete();
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(a1);
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(**(a1 + 144) + 104))(*(a1 + 144));
  v8 = (*(**(*(a1 + 152) + 8) + 40))(*(*(a1 + 152) + 8), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_95604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(a7, a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a1, a2);
}

void sub_95814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a10);
  }

  else
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetState(*(a7 + 8), a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a1, a2);
}

void sub_95A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a10);
  }

  else
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, int a2, uint64_t a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(a3, *(a4 + v10));
  if (result)
  {
    result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(a3);
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(a3);
        v24 = *a4;
        v25 = v12;
        if (a5)
        {
          v13 = *(a1 + 136);
          if (DWORD1(v24) != -1)
          {
            if (v25 == -1)
            {
              v17 = v13[32];
              if (v17)
              {
                v18 = -1;
              }

              else
              {
                v18 = 0;
              }

              v23 = v18;
              if (v17)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (DWORD1(v24))
              {
                v14 = 0;
              }

              else
              {
                v14 = -1;
              }

              v23 = v14;
              if (!DWORD1(v24))
              {
                goto LABEL_35;
              }
            }

LABEL_28:
            v19 = &v24;
            v20 = &v25;
LABEL_34:
            fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v19, v20, &v23);
            goto LABEL_35;
          }

          if ((v13[33] & 1) == 0)
          {
            v23 = v13[34] ^ 1;
            goto LABEL_28;
          }
        }

        else
        {
          v15 = *(a1 + 136);
          if (DWORD1(v25) != -1)
          {
            if (v24 == -1)
            {
              v21 = v15[32];
              if (v21)
              {
                v22 = -1;
              }

              else
              {
                v22 = 0;
              }

              v23 = v22;
              if (v21)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (DWORD1(v25))
              {
                v16 = 0;
              }

              else
              {
                v16 = -1;
              }

              v23 = v16;
              if (!DWORD1(v25))
              {
                goto LABEL_35;
              }
            }

LABEL_33:
            v19 = &v25;
            v20 = &v24;
            goto LABEL_34;
          }

          if ((v15[33] & 1) == 0)
          {
            v23 = v15[34] ^ 1;
            goto LABEL_33;
          }
        }

LABEL_35:
        fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Next(a3);
        result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(a3);
      }

      while (!result);
    }
  }

  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(uint64_t a1, int a2, uint64_t a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(*(a3 + 8), *(a4 + v10));
  if (result)
  {
    result = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(*(a3 + 8));
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Value(*(a3 + 8));
        v24 = *a4;
        v25 = v12;
        if (a5)
        {
          v13 = *(a1 + 136);
          if (DWORD1(v24) != -1)
          {
            if (v25 == -1)
            {
              v17 = v13[32];
              if (v17)
              {
                v18 = -1;
              }

              else
              {
                v18 = 0;
              }

              v23 = v18;
              if (v17)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (DWORD1(v24))
              {
                v14 = 0;
              }

              else
              {
                v14 = -1;
              }

              v23 = v14;
              if (!DWORD1(v24))
              {
                goto LABEL_35;
              }
            }

LABEL_28:
            v19 = &v24;
            v20 = &v25;
LABEL_34:
            fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v19, v20, &v23);
            goto LABEL_35;
          }

          if ((v13[33] & 1) == 0)
          {
            v23 = v13[34] ^ 1;
            goto LABEL_28;
          }
        }

        else
        {
          v15 = *(a1 + 136);
          if (DWORD1(v25) != -1)
          {
            if (v24 == -1)
            {
              v21 = v15[32];
              if (v21)
              {
                v22 = -1;
              }

              else
              {
                v22 = 0;
              }

              v23 = v22;
              if (v21)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (DWORD1(v25))
              {
                v16 = 0;
              }

              else
              {
                v16 = -1;
              }

              v23 = v16;
              if (!DWORD1(v25))
              {
                goto LABEL_35;
              }
            }

LABEL_33:
            v19 = &v25;
            v20 = &v24;
            goto LABEL_34;
          }

          if ((v15[33] & 1) == 0)
          {
            v23 = v15[34] ^ 1;
            goto LABEL_33;
          }
        }

LABEL_35:
        fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Next(*(a3 + 8));
        result = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(*(a3 + 8));
      }

      while (!result);
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = off_276D08;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  *(a1 + 32) = (*(**(a3 + 144) + 16))(*(a3 + 144), 0);
  *(a1 + 40) = (*(**(a3 + 152) + 16))(*(a3 + 152), 0);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_2121E0;
  *(a1 + 84) = 0;
  if (a4 == 1)
  {
    *(a1 + 52) = 0xFFFFFFFF00000000;
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  operator delete();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 96) + 12 * a2);
    v4 = v3[1];
    fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetState(*(*(result + 32) + 8), *v3);
    result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(*(v2 + 40), v4);
    *(v2 + 64) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, int a2)
{
  *(a1 + 48) = a2 == 0;
  if (*(a1 + 28))
  {
    if (a2)
    {
      return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(a1, a2, *(a1 + 40), *(a1 + 32));
    }
  }

  else if (a2)
  {
    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, a2, *(a1 + 32), *(a1 + 40));
  }

  return 1;
}

BOOL fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(*(*(a1 + 32) + 8)))
  {
    return 0;
  }

  v2 = *(a1 + 40);

  return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(v2);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else if (*(result + 28))
  {
    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(result, *(result + 40), *(result + 32));
  }

  else
  {
    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(result, *(result + 32), *(result + 40));
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = off_276D08;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_276D08;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = (*(**(a2 + 32) + 16))(*(a2 + 32), a3);
  *(a1 + 40) = (*(**(a2 + 40) + 16))(*(a2 + 40), a3);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_2121E0;
  *(a1 + 84) = *(a2 + 84);
  if (a3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v11, __p);
    v7 = fst::cerr(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ComposeFstMatcher: safe copy not supported", 42);
    fst::LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 84) = 1;
  }

  if (*(a1 + 28) == 1)
  {
    *(a1 + 52) = vrev64_s32(*(a1 + 52));
  }

  return a1;
}

void sub_96208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(*(a3 + 8), a2);
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Value(*(a3 + 8));
    fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(a3, a2);
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(a3);
    fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(*(a4 + 8), *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (!fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(*(a2 + 8)) || !fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(a3))
  {
    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(a3))
    {
      fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Next(*(a2 + 8));
      while (!fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(*(a2 + 8)))
      {
        v6 = *(a1 + 28) == 0;
        v7 = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Value(*(a2 + 8));
        if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(a3, *(v7 + 4 * v6)))
        {
          break;
        }

        fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Next(*(a2 + 8));
      }
    }

    while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(a3))
    {
      v8 = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Value(*(a2 + 8));
      v9 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(a3);
      fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Next(a3);
      v10 = *(a1 + 28);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v12;
      v14 = v12[1];
      if (v11)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v13, v14, *v15, v15[1]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(a2) || !fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(*(a3 + 8)))
  {
    if (fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(*(a3 + 8)))
    {
      fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Next(a2);
      while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(a2))
      {
        v6 = *(a1 + 28) == 0;
        v7 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(a2);
        if (fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(*(a3 + 8), *(v7 + 4 * v6)))
        {
          break;
        }

        fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Next(a2);
      }
    }

    while (!fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(*(a3 + 8)))
    {
      v8 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(a2);
      v9 = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Value(*(a3 + 8));
      fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Next(*(a3 + 8));
      v10 = *(a1 + 28);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v12;
      v14 = v12[1];
      if (v11)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v13, v14, *v15, v15[1]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComposeFstImplBase(a1, a2, a3, a4) = off_276DA0;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(*v9.n128_u64[0] + 32))(v9.n128_u64[0], v9);
  *(a1 + 168) = (*(**(a1 + 152) + 32))(*(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(**(a1 + 144) + 40))(*(a1 + 144), v11);
  v14 = (*(**(a1 + 152) + 40))(*(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  operator delete();
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 96) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v9 = *(v4 + 8);
  fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::SetState(v7, v5, v6, &v9);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(a1, a2, a1[21], v6, a1[20], v5, a1[19], 1);
  }

  else
  {
    return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, a2, a1[20], v5, a1[21], v6, a1[18], 0);
  }
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(**(a1 + 144) + 24))(*(a1 + 144), 0) == a3 && (*(**(a1 + 152) + 24))(*(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 96) + 12 * a2);
  v4 = *v3;
  v7 = (*(**(*(a1 + 144) + 8) + 32))(*(*(a1 + 144) + 8), v4);
  if (v7 != INFINITY)
  {
    v5 = v3[1];
    v7 = (*(**(a1 + 152) + 96))(*(a1 + 152), v5);
    if (v7 != INFINITY)
    {
      v6 = *(a1 + 136);
      LOBYTE(v7) = *(v3 + 8);
      fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::SetState(v6, v4, v5, &v7);
    }
  }
}

uint64_t fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(*a4 + 32))(a4);
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = off_276DA0;
  v2 = a1[17];
  if (v2)
  {
    fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>::~SequenceComposeFilter(v2);
    operator delete();
  }

  v3 = a1[22];
  if (v3)
  {
    v4 = *(v3 + 96);
    if (v4)
    {
      *(v3 + 104) = v4;
      operator delete(v4);
    }

    std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,fst::PoolAllocator<int>>::~__hash_table(v3 + 24);
    operator delete();
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(a1);
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(**(*(a1 + 144) + 8) + 40))(*(*(a1 + 144) + 8));
  v8 = (*(**(a1 + 152) + 104))(*(a1 + 152), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_970D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = off_276E18;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  *(a1 + 32) = (*(**(a3 + 144) + 16))(*(a3 + 144), 0);
  *(a1 + 40) = (*(**(a3 + 152) + 16))(*(a3 + 152), 0);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_2121E0;
  *(a1 + 84) = 0;
  if (a4 == 1)
  {
    *(a1 + 52) = 0xFFFFFFFF00000000;
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  operator delete();
}

uint64_t *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t *result, int a2)
{
  if (*(result + 6) != a2)
  {
    v2 = result;
    *(result + 6) = a2;
    v3 = (*(*(result[2] + 176) + 96) + 12 * a2);
    v4 = v3[1];
    fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(result[4], *v3);
    result = fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetState(*(v2[5] + 8), v4);
    *(v2 + 16) = *(v2 + 6);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, int a2)
{
  *(a1 + 48) = a2 == 0;
  if (*(a1 + 28))
  {
    if (a2)
    {
      return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, a2, *(a1 + 40), *(a1 + 32));
    }
  }

  else if (a2)
  {
    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(a1, a2, *(a1 + 32), *(a1 + 40));
  }

  return 1;
}

BOOL fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(*(a1 + 32)))
  {
    return 0;
  }

  v2 = *(*(a1 + 40) + 8);

  return fst::TableMatcherImpl<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(v2);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else if (*(result + 28))
  {
    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(result, *(result + 40), *(result + 32));
  }

  else
  {
    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(result, *(result + 32), *(result + 40));
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = off_276E18;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_276E18;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = (*(**(a2 + 32) + 16))(*(a2 + 32), a3);
  *(a1 + 40) = (*(**(a2 + 40) + 16))(*(a2 + 40), a3);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_2121E0;
  *(a1 + 84) = *(a2 + 84);
  if (a3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v11, __p);
    v7 = fst::cerr(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ComposeFstMatcher: safe copy not supported", 42);
    fst::LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 84) = 1;
  }

  if (*(a1 + 28) == 1)
  {
    *(a1 + 52) = vrev64_s32(*(a1 + 52));
  }

  return a1;
}

void sub_975F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::Map<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(uint64_t a1, uint64_t a2)
{
  kaldi::ConstIntegerSet<int>::ConstIntegerSet(v3, a2);
  fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(a1, v3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    operator delete(v4);
  }
}

uint64_t fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::RemoveSomeInputSymbolsMapper(uint64_t a1, uint64_t *a2)
{
  v3 = kaldi::ConstIntegerSet<int>::ConstIntegerSet(a1, a2);
  if (kaldi::ConstIntegerSet<int>::count(v3, 0))
  {
    __assert_rtn("RemoveSomeInputSymbolsMapper", "factor-inl.h", 245, "to_remove_set_.count(0) == 0");
  }

  return a1;
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 272))(a1, 0);
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 152))(a1) >= 1)
    {
      v6 = 0;
      do
      {
        (*(*a1 + 288))(a1, v6, &v14);
        while (!(*(*v14 + 24))(v14))
        {
          v7 = (*(*v14 + 32))(v14);
          v8 = *v7;
          v9 = v7[1];
          v10 = kaldi::ConstIntegerSet<int>::count(a2, *v7);
          v11 = v8;
          if (v10)
          {
            v11 = 0;
          }

          v13[0] = v11 | v8 & 0xFFFFFFFF00000000;
          v13[1] = v9;
          (*(*v14 + 88))(v14, v13);
          (*(*v14 + 40))(v14);
        }

        if (v14)
        {
          (*(*v14 + 8))();
        }

        v12 = (*(*a1 + 32))(a1, v6);
        kaldi::ConstIntegerSet<int>::count(a2, 0);
        (*(*a1 + 176))(a1, v6, v12);
        v6 = (v6 + 1);
      }

      while (v6 < (*(*a1 + 152))(a1));
    }

    return (*(*a1 + 184))(a1, v5 & 0xFFFFFFFFCD70FFFFLL, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_97A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void fst::TableCompose<fst::ArcTpl<fst::TropicalWeightTpl<float>>>()
{
  __assert_rtn("TableCompose", "table-matcher.h", 378, "cache->opts.table_match_type == MATCH_INPUT");
}

{
  __assert_rtn("TableCompose", "table-matcher.h", 367, "cache != NULL");
}

{
  __assert_rtn("TableCompose", "table-matcher.h", 342, "opts.table_match_type == MATCH_INPUT");
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Output()
{
  __assert_rtn("Output", "determinize-star-inl.h", 214, "determinized_");
}

{
  __assert_rtn("Output", "determinize-star-inl.h", 228, "news == s");
}

void fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::Final()
{
  __assert_rtn("Final", "context-fst-inl.h", 151, "static_cast<size_t>(s) < state_seqs_.size()");
}

{
  __assert_rtn("Final", "context-fst-inl.h", 156, "static_cast<int32>(seq.size()) == N_-1");
}

uint64_t kaldi::FasterDecoder::FasterDecoder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *a1 = 0;
  *(a1 + 8) = xmmword_21A060;
  *(a1 + 80) = a2;
  v6 = *a3;
  v7 = *(a3 + 16);
  *(a1 + 112) = 0u;
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = -1;
  if (*(a1 + 108) < 1.0)
  {
    v10 = "config_.hash_ratio >= 1.0";
    v11 = (&stru_20 + 9);
    goto LABEL_8;
  }

  v8 = *(a1 + 92);
  if (v8 < 2)
  {
    v10 = "config_.max_active > 1";
    v11 = (&stru_20 + 10);
    goto LABEL_8;
  }

  if (*(a1 + 96) >= v8)
  {
    v10 = "config_.min_active >= 0 && config_.min_active < config_.max_active";
    v11 = &stru_20.segname[3];
LABEL_8:
    kaldi::KaldiAssertFailure_("FasterDecoder", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/faster-decoder.cc", v11, v10, a5);
  }

  kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::SetSize(a1, 0x3E8uLL, a3, a4, a5);
  return a1;
}

void sub_97E78(_Unwind_Exception *a1)
{
  v4 = v1[17];
  if (v4)
  {
    v1[18] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[15] = v5;
    operator delete(v5);
  }

  kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::~HashList(v1);
  _Unwind_Resume(a1);
}

void kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::SetSize(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  a1[2] = a2;
  if (*a1 || a1[1] != -1)
  {
    kaldi::KaldiAssertFailure_("SetSize", "../subproject/libquasar/libkaldi/src/util/hash-list-inl.h", &stru_20.segname[1], "list_head_ == NULL && bucket_list_tail_ == static_cast<size_t>(-1)", a5);
  }

  v6 = a1[3];
  v7 = a1[4];
  v5 = a1 + 3;
  if (a2 > (v7 - v6) >> 4)
  {
    v8 = 0uLL;
    std::vector<kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::HashBucket,std::allocator<kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::HashBucket>>::resize(v5, a2, &v8);
  }
}

void kaldi::FasterDecoder::InitDecoding(kaldi::FasterDecoder *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 1);
  if (v6 != -1)
  {
    v7 = *(this + 3);
    do
    {
      v8 = (v7 + 16 * v6);
      v8[1] = 0;
      v6 = *v8;
    }

    while (v6 != -1);
  }

  v9 = *this;
  *this = 0;
  *(this + 1) = -1;
  kaldi::FasterDecoder::ClearToks(this, v9, a3, a4, a5);
  if ((*(**(this + 10) + 24))(*(this + 10)) != -1)
  {
    operator new();
  }

  kaldi::KaldiAssertFailure_("InitDecoding", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/faster-decoder.cc", &stru_20.segname[12], "start_state != fst::kNoStateId", v10);
}

uint64_t kaldi::FasterDecoder::ClearToks(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2)
  {
    v5 = a2;
    v6 = result;
    do
    {
      result = *(v5 + 8);
      v7 = *(result + 24);
      v8 = __OFSUB__(v7, 1);
      v9 = v7 - 1;
      *(result + 24) = v9;
      if (!v9)
      {
        v10 = *(result + 16);
        operator delete();
      }

      if ((v9 < 0) ^ v8 | (v9 == 0))
      {
        kaldi::KaldiAssertFailure_("TokenDelete", "../subproject/libquasar/libkaldi/src/decoder/faster-decoder.h", &stru_68.nreloc + 3, "tok->ref_count_ > 0", a5);
      }

      v11 = *(v5 + 16);
      *(v5 + 16) = *(v6 + 48);
      *(v6 + 48) = v5;
      v5 = v11;
    }

    while (v11);
  }

  return result;
}

void kaldi::FasterDecoder::ProcessNonemitting(kaldi::FasterDecoder *this, double a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(this + 14);
  v7 = *(this + 15);
  v8 = (this + 112);
  if (v6 != v7)
  {
    kaldi::KaldiAssertFailure_("ProcessNonemitting", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/faster-decoder.cc", stru_108.sectname, "queue_.empty()", a6);
  }

  v11 = *this;
  if (*this)
  {
    do
    {
      std::vector<int>::push_back[abi:ne200100](v8, v11);
      v11 = *(v11 + 16);
    }

    while (v11);
    v6 = *(this + 14);
    v7 = *(this + 15);
  }

  if (v6 == v7)
  {
    return;
  }

  do
  {
    v13 = *(v7 - 4);
    v7 -= 4;
    v12 = v13;
    *(this + 15) = v7;
    v14 = *(this + 3);
    v15 = *(v14 + 16 * (v13 % *(this + 2)));
    v16 = this;
    if (v15 != -1)
    {
      v16 = (*(v14 + 16 * v15 + 8) + 16);
    }

      ;
    }

    v18 = *(i + 8);
    if (*(v18 + 32) > a2)
    {
      continue;
    }

    if (v12 != *(v18 + 12))
    {
      kaldi::KaldiAssertFailure_("ProcessNonemitting", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/faster-decoder.cc", &stru_108.sectname[11], "tok != NULL && state == tok->arc_.nextstate", a6);
    }

    v26 = 0;
    (*(**(this + 10) + 136))(*(this + 10));
    while (v22)
    {
      if ((*(*v22 + 24))())
      {
        (*(*v22 + 8))(v22, v19, v20);
        goto LABEL_27;
      }

      v21 = (*(*v22 + 32))(v22, v19, v20);
LABEL_19:
      if (!*v21)
      {
        operator new();
      }

      if (v22)
      {
        (*(*v22 + 40))();
      }

      else
      {
        ++v26;
      }
    }

    if (v26 < v24)
    {
      v21 = (v23 + 16 * v26);
      goto LABEL_19;
    }

    if (v25)
    {
      --*v25;
    }

LABEL_27:
    v6 = *(this + 14);
    v7 = *(this + 15);
  }

  while (v6 != v7);
}

void sub_98650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  else if (a15)
  {
    --*a15;
  }

  _Unwind_Resume(exception_object);
}

double kaldi::FasterDecoder::ProcessEmitting(kaldi::FasterDecoder *this, kaldi::DecodableInterface *a2, double a3)
{
  v5 = *(this + 40);
  v6 = *(this + 1);
  if (v6 != -1)
  {
    v7 = *(this + 3);
    do
    {
      v8 = (v7 + 16 * v6);
      v8[1] = 0;
      v6 = *v8;
    }

    while (v6 != -1);
  }

  v9 = *this;
  *this = 0;
  *(this + 1) = -1;
  v48 = 0;
  v47 = 0.0;
  v46 = 0;
  v10 = v9;
  v14 = kaldi::GetCutoffHelper<kaldi::FasterDecoder,kaldi::FasterDecoderOptions,kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::Elem>(this, this + 88, v9, &v48, &v47, &v46, 1, a3);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v41, "ProcessEmitting", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/faster-decoder.cc", 188, 3);
    v15 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " tokens active.", 15);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v41);
  }

  v16 = (*(this + 27) * v48);
  if (*(this + 2) < v16)
  {
    kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::SetSize(this, v16, v11, v12, v13);
  }

  if (!v46)
  {
    v20 = INFINITY;
    if (!v10)
    {
      goto LABEL_55;
    }

    goto LABEL_30;
  }

  v17 = *v46;
  v18 = *(v46 + 1);
  v19 = *(this + 10);
  v45 = 0;
  (*(*v19 + 136))(v19, v17, &v41);
  v20 = INFINITY;
  while (1)
  {
    if (!v41.__locale_)
    {
      if (v45 >= v43)
      {
        goto LABEL_25;
      }

LABEL_15:
      v21 = v42 + 16 * v45;
      goto LABEL_16;
    }

    if ((*(*v41.__locale_ + 24))(v41.__locale_))
    {
      break;
    }

    if (!v41.__locale_)
    {
      goto LABEL_15;
    }

    v21 = (*(*v41.__locale_ + 32))();
LABEL_16:
    if (*v21)
    {
      v22 = (**a2)(a2, v5);
      v23 = *(v18 + 32) + *(v21 + 8) - v22 + v47;
      if (v23 < v20)
      {
        v20 = v23;
      }
    }

    if (v41.__locale_)
    {
      (*(*v41.__locale_ + 40))(v41.__locale_);
    }

    else
    {
      ++v45;
    }
  }

  if (v41.__locale_)
  {
    (*(*v41.__locale_ + 8))();
    if (!v10)
    {
      goto LABEL_55;
    }

    goto LABEL_30;
  }

LABEL_25:
  if (v44)
  {
    --*v44;
  }

  if (!v10)
  {
    goto LABEL_55;
  }

LABEL_30:
  v24 = v10;
  v25 = v14;
  while (2)
  {
    v26 = *(v24 + 8);
    if (*(v26 + 32) >= v25)
    {
      goto LABEL_51;
    }

    v40 = v24;
    if (*v24 != *(v26 + 12))
    {
      kaldi::KaldiAssertFailure_("ProcessEmitting", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/faster-decoder.cc", &stru_B8.size + 2, "state == tok->arc_.nextstate", v13);
    }

    v27 = *(this + 10);
    v45 = 0;
    (*(*v27 + 136))(v27);
    while (2)
    {
      if (!v41.__locale_)
      {
        if (v45 >= v43)
        {
          goto LABEL_48;
        }

        goto LABEL_39;
      }

      if (!(*(*v41.__locale_ + 24))(v41.__locale_))
      {
        if (v41.__locale_)
        {
          v30 = (*(*v41.__locale_ + 32))(v41.__locale_, v28, v29);
          goto LABEL_40;
        }

LABEL_39:
        v30 = v42 + 16 * v45;
LABEL_40:
        if (*v30)
        {
          v31 = *(v30 + 8);
          v32 = *(v30 + 12);
          if (*(v26 + 32) + v31 + -(**a2)(a2, v5) < v20)
          {
            operator new();
          }
        }

        if (v41.__locale_)
        {
          (*(*v41.__locale_ + 40))(v41.__locale_);
        }

        else
        {
          ++v45;
        }

        continue;
      }

      break;
    }

    if (v41.__locale_)
    {
      (*(*v41.__locale_ + 8))(v41.__locale_, v28, v29);
      goto LABEL_50;
    }

LABEL_48:
    if (v44)
    {
      --*v44;
    }

LABEL_50:
    v24 = v40;
    v26 = *(v40 + 8);
LABEL_51:
    v33 = v24;
    v34 = *(v24 + 16);
    v35 = *(v26 + 24);
    v36 = __OFSUB__(v35, 1);
    v37 = v35 - 1;
    *(v26 + 24) = v37;
    if (!v37)
    {
      v38 = *(v26 + 16);
      operator delete();
    }

    if ((v37 < 0) ^ v36 | (v37 == 0))
    {
      kaldi::KaldiAssertFailure_("TokenDelete", "../subproject/libquasar/libkaldi/src/decoder/faster-decoder.h", &stru_68.nreloc + 3, "tok->ref_count_ > 0", v13);
    }

    *(v33 + 16) = *(this + 6);
    *(this + 6) = v33;
    v24 = v34;
    if (v34)
    {
      continue;
    }

    break;
  }

LABEL_55:
  ++*(this + 40);
  return v20;
}

void sub_98EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::FasterDecoder::ReachedFinal(kaldi::FasterDecoder *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  while (*(v1[1] + 32) == INFINITY || (*(**(this + 10) + 32))(*(this + 10), *v1) == INFINITY)
  {
    v1 = v1[2];
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t kaldi::FasterDecoder::GetBestPath(kaldi::FasterDecoder *a1, uint64_t a2, int a3)
{
  (*(*a2 + 216))(a2);
  v6 = kaldi::FasterDecoder::ReachedFinal(a1);
  v7 = *a1;
  if (v6)
  {
    if (v7)
    {
      v8 = 0;
      v9 = INFINITY;
      do
      {
        v10 = *(*(v7 + 1) + 32);
        v11 = v10 + (*(**(a1 + 10) + 32))(*(a1 + 10), *v7);
        if (v11 < v9 && v11 != INFINITY)
        {
          v8 = *(v7 + 1);
          v9 = v11;
        }

        v7 = *(v7 + 2);
      }

      while (v7);
      goto LABEL_17;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    if (!v8 || *(v8 + 32) > *(*(v7 + 1) + 32))
    {
      v8 = *(v7 + 1);
    }

    v7 = *(v7 + 2);
  }

  while (v7);
LABEL_17:
  if (!v8)
  {
    return 0;
  }

  v25 = 0;
  v26 = 0;
  v13 = v8;
  v27 = 0;
  do
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = *(v14 + 32);
    }

    else
    {
      v15 = 0.0;
    }

    v16 = *(v13 + 32) - v15;
    v17 = *(v13 + 8);
    v18 = *(v13 + 12);
    v28 = *v13;
    *&v29 = v17;
    *(&v29 + 1) = v16 - v17;
    LODWORD(v30) = v18;
    std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::push_back[abi:ne200100](&v25, &v28);
    v13 = *(v13 + 16);
  }

  while (v13);
  v19 = *(v26 - 1);
  if (v19 != (*(**(a1 + 10) + 24))(*(a1 + 10)))
  {
    kaldi::KaldiAssertFailure_("GetBestPath", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/faster-decoder.cc", &stru_68.addr + 4, "arcs_reverse.back().nextstate == fst_.Start()", v20);
  }

  v26 -= 20;
  v21 = (*(*a2 + 192))(a2);
  (*(*a2 + 168))(a2, v21);
  if (v26 - v25 >= 1)
  {
    v22 = (v26 - v25) / 0x14uLL + 1;
    v23 = 20 * ((v26 - v25) / 0x14uLL);
    do
    {
      v28 = *(v25 + v23 - 20);
      v29 = *(v25 + v23 - 12);
      LODWORD(v30) = *(v25 + v23 - 4);
      LODWORD(v30) = (*(*a2 + 192))(a2);
      (*(*a2 + 200))(a2, v21, &v28);
      v21 = v30;
      --v22;
      v23 -= 20;
    }

    while (v22 > 1);
  }

  if (v6 & a3)
  {
    v28 = COERCE_UNSIGNED_INT((*(**(a1 + 10) + 32))(*(a1 + 10), *(v8 + 12)));
  }

  else
  {
    v28 = 0;
  }

  (*(*a2 + 176))(a2, v21, &v28);
  fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsLocalClass(&v28, a2);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  return 1;
}

void sub_99444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float kaldi::GetCutoffHelper<kaldi::FasterDecoder,kaldi::FasterDecoderOptions,kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::Elem>(void *a1, uint64_t a2, uint64_t a3, void *a4, float *a5, void *a6, int a7, double a8)
{
  v9 = a3;
  v10 = *(a2 + 8);
  if (*(a2 + 12))
  {
    v10 = *(a2 + 12);
  }

  if (a7)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (*(a2 + 4) == 0x7FFFFFFF && v11 == 0)
  {
    v30 = 0;
    v31 = INFINITY;
    if (a3)
    {
      do
      {
        v32 = *(*(v9 + 8) + 32);
        if (v31 <= v32)
        {
          v33 = 1;
        }

        else
        {
          v31 = *(*(v9 + 8) + 32);
          v33 = a6 == 0;
        }

        if (!v33)
        {
          *a6 = v9;
          v31 = v32;
        }

        v9 = *(v9 + 16);
        ++v30;
      }

      while (v9);
    }

    if (a4)
    {
      *a4 = v30;
    }

    v34 = *a2;
    if (a5)
    {
      *a5 = v34;
    }

    return v31 + v34;
  }

  else
  {
    v47 = v11;
    v48 = *(a2 + 4);
    v14 = (a1 + 17);
    a1[18] = a1[17];
    v15 = 0;
    if (a3)
    {
      v16 = -INFINITY;
      v17 = INFINITY;
      do
      {
        a8 = *(*(v9 + 8) + 32);
        v18 = a8;
        v20 = a1[18];
        v19 = a1[19];
        if (v20 >= v19)
        {
          v22 = *v14;
          v23 = v20 - *v14;
          v24 = v23 >> 2;
          v25 = (v23 >> 2) + 1;
          if (v25 >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v26 = v19 - v22;
          if (v26 >> 1 > v25)
          {
            v25 = v26 >> 1;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v27 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v14, v27);
          }

          *(4 * v24) = v18;
          v21 = 4 * v24 + 4;
          memcpy(0, v22, v23);
          v28 = a1[17];
          a1[17] = 0;
          a1[18] = v21;
          a1[19] = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v20 = v18;
          v21 = (v20 + 1);
        }

        a1[18] = v21;
        if (v17 <= v18)
        {
          v29 = 1;
        }

        else
        {
          v17 = v18;
          v29 = a6 == 0;
        }

        if (!v29)
        {
          *a6 = v9;
          v17 = v18;
        }

        if (v16 < v18)
        {
          v16 = v18;
        }

        v9 = *(v9 + 16);
        ++v15;
      }

      while (v9);
    }

    else
    {
      v17 = INFINITY;
      v16 = -INFINITY;
    }

    if (a4)
    {
      *a4 = v15;
    }

    v36 = *a2;
    v35 = INFINITY;
    if (!*(a2 + 12))
    {
      v16 = INFINITY;
    }

    v37 = a1[17];
    v38 = a1[18];
    v39 = v38 - v37;
    if (v39 <= v48)
    {
      v41 = v47;
    }

    else
    {
      v40 = &v37[v48];
      v41 = v47;
      if (v40 != v38)
      {
        std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v37, v40, v38, *&a8);
        v37 = a1[17];
        v38 = a1[18];
        v39 = v38 - v37;
      }

      v35 = v37[v48];
    }

    v42 = v17 + v36;
    if (v39 > v41)
    {
      v43 = v17;
    }

    else
    {
      v43 = v16;
    }

    if (v41 && v39 > v41)
    {
      v44 = &v37[v41];
      if (v39 > v48)
      {
        v38 = &v37[v48];
      }

      if (v44 != v38)
      {
        std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v37, v44, v38, v43);
        v37 = *v14;
      }

      v43 = v37[v41];
    }

    if (v35 >= v42)
    {
      if (v43 <= v42)
      {
        *a5 = *a2;
        return v42;
      }

      else
      {
        if (a5)
        {
          *a5 = (v43 - v17) + *(a2 + 16);
        }

        return v43;
      }
    }

    else if (a5)
    {
      *a5 = (v35 - v17) + *(a2 + 16);
    }
  }

  return v35;
}

void *kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::~HashList(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = 0;
    do
    {
      ++v3;
      v2 = *(v2 + 16);
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[7];
  v5 = a1[8];
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v4[v6])
      {
        v8 = v4[v6];
        operator delete[]();
      }

      ++v6;
      v7 += 1024;
    }

    while (v6 < (v5 - v4) >> 3);
  }

  if (v3 != v7 && kaldi::g_kaldi_verbose_level > -2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14, "~HashList", "../subproject/libquasar/libkaldi/src/util/hash-list-inl.h", 123);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Possible memory leak: ", 22);
    v9 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " != ", 4);
    v10 = std::ostream::operator<<();
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": you might have forgotten to call Delete on ", 45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "some Elems", 10);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v14);
    v4 = a1[7];
  }

  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v12 = a1[3];
  if (v12)
  {
    a1[4] = v12;
    operator delete(v12);
  }

  return a1;
}

void std::vector<kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::HashBucket,std::allocator<kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::HashBucket>>::resize(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::HashBucket,std::allocator<kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::HashBucket>>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::HashBucket,std::allocator<kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::HashBucket>>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 16;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 4;
    v10 = v6 - *a1;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::HashBucket>>(a1, v11);
    }

    v14 = 16 * v9;
    v15 = 16 * v9 + 16 * a2;
    v16 = 16 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 16;
    }

    while (v16);
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::HashBucket>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t kaldi::HashList<int,kaldi::FasterDecoder::Token *,std::hash<int>,std::equal_to<int>>::New(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    operator new[]();
  }

  *(a1 + 48) = *(result + 16);
  return result;
}

void std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *a1, float *a2, float *a3, float a4)
{
  while (a3 != a2)
  {
    v4 = a3 - a1;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = a1[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(a1 + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(a1 + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *a1)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *a1;
      }

      if (v40 < *a1)
      {
        v40 = *a1;
      }

      *(a3 - 1) = v40;
      v42 = a1[1];
      if (v41 < v42)
      {
        v41 = a1[1];
      }

      else
      {
        *a1 = v42;
      }

      a1[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *a1;
      if (v43 < *a1)
      {
        *a1 = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(a1, a3, a4);
      return;
    }

    v5 = &a1[(a3 - a1) >> 3];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *a1;
    if (*v6 < *a1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *a1;
    }

    if (*v6 < *a1)
    {
      v14 = *a1;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *a1 = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *a1;
    if (*a1 >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != a1)
      {
        if (*v18 < v16)
        {
          *a1 = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = a1 + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *a1;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      a1 = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = a1 + 1;
      if (a1 + 1 >= v18)
      {
        v23 = a1 + 1;
      }

      else
      {
        v20 = a1 + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        a1 = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

float std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *a1, float *a2, float result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

kaldi::DecodableMatrixScaledMapped *kaldi::DecodableMatrixScaledMapped::DecodableMatrixScaledMapped(kaldi::DecodableMatrixScaledMapped *this, uint64_t a2, uint64_t a3, int a4, float a5)
{
  *this = &off_276EB0;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 6) = a5;
  *(this + 28) = 0;
  if (a4)
  {
    kaldi::DecodableMatrixScaledMapped::ValidateLikesAndPdfs(this);
  }

  return this;
}

uint64_t kaldi::DecodableMatrixScaledMapped::ValidateLikesAndPdfs(kaldi::ContextDependency **this)
{
  result = kaldi::ContextDependency::ContextWidth(this[2]);
  if (result != *(this[1] + 60))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "ValidateLikesAndPdfs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/decodable-matrix.cc", 143);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "DecodableMatrixScaledMapped: mismatch, matrix has ", 50);
    kaldi::ContextDependency::ContextWidth(this[2]);
    v3 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " columns but transition-model has ", 34);
    v4 = *(this[1] + 60);
    v5 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, " pdf-ids.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  return result;
}

BOOL kaldi::DecodableMatrixScaledMapped::IsLastFrame(kaldi::DecodableMatrixScaledMapped *this, int a2)
{
  if ((*(*this + 88))(this) <= a2)
  {
    kaldi::KaldiAssertFailure_("IsLastFrame", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/decodable-matrix.cc", &stru_68.offset, "frame < NumFrames()", v4);
  }

  return (*(*this + 88))(this) - 1 == a2;
}

BOOL kaldi::DecodableMatrixScaledMapped::IsLastFrameNoBlocking(kaldi::DecodableMatrixScaledMapped *this, int a2)
{
  if ((*(*this + 88))(this) <= a2)
  {
    kaldi::KaldiAssertFailure_("IsLastFrameNoBlocking", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/decodable-matrix.cc", &stru_68.align + 1, "frame < NumFrames()", v4);
  }

  return (*(*this + 88))(this) - 1 == a2;
}

float kaldi::DecodableMatrixScaledMapped::LogLikelihood(kaldi::DecodableMatrixScaledMapped *this, unsigned int a2, int a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 1);
  v6 = *(v5 + 96);
  if (a3 >= ((*(v5 + 104) - v6) >> 2))
  {
    kaldi::KaldiAssertFailure_("TransitionIdToPdf", "../subproject/libquasar/libkaldi/src/hmm/transition-model.h", stru_158.sectname, "static_cast<size_t>(trans_id) < tid2pdf_.size()", a5);
  }

  v7 = *(this + 6);
  return v7 * kaldi::MatrixBase<float>::operator()(*(this + 2), a2, *(v6 + 4 * a3), a4, a5);
}

void kaldi::DecodableMatrixScaledMapped::~DecodableMatrixScaledMapped(kaldi::DecodableMatrixScaledMapped *this)
{
  *this = &off_276EB0;
  if (*(this + 28) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      kaldi::Matrix<float>::~Matrix(v2);
      operator delete();
    }
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
}

{
  kaldi::DecodableMatrixScaledMapped::~DecodableMatrixScaledMapped(this);

  operator delete();
}

void kaldi::DecodableInterface::NumFramesReady(kaldi::DecodableInterface *this)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "NumFramesReady", "../subproject/libquasar/libkaldi/src/itf/decodable-itf.h", 112);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "NumFramesReady() not implemented for this decodable type.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_9A3DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::CuSubMatrix<float>::~CuSubMatrix(uint64_t a1)
{
  *a1 = off_276F40;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void *std::vector<kaldi::CuMatrix<float>>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<kaldi::CuMatrix<float>>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 48 * a2;
    if (v3 != v7)
    {
      v8 = v3 - 48;
      v9 = (v3 - 48);
      v10 = (v3 - 48);
      do
      {
        v11 = *v10;
        v10 -= 6;
        result = (*(v11 + 16))(v9);
        v8 -= 48;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    v2[1] = v7;
  }

  return result;
}

void kaldi::CuSubMatrix<float>::Read()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "Read", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 1029);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Function not implemented for this class");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::CuSubMatrix<float>::~CuSubMatrix(uint64_t a1)
{
  *a1 = off_276F40;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 48;
      v7 = v4 - 48;
      v8 = v4 - 48;
      do
      {
        v9 = *v8;
        v8 -= 48;
        (*(v9 + 16))(v7);
        v6 -= 48;
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

uint64_t std::vector<kaldi::CuMatrix<float>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 48 * a2;
      v11 = 48 * a2;
      v12 = *(result + 8);
      do
      {
        *(v4 + 24) = 0uLL;
        *(v4 + 8) = 0uLL;
        *v4 = off_276F88;
        *(v4 + 40) = 0;
        v4 += 48;
        v12 += 48;
        v11 -= 48;
      }

      while (v11);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v24 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>>(result, v9);
    }

    v13 = 48 * v6;
    v21 = 0;
    v22 = 48 * v6;
    *(&v23 + 1) = 0;
    v14 = 48 * a2;
    v15 = 48 * v6;
    v16 = 48 * v6;
    do
    {
      *(v16 + 24) = 0uLL;
      *(v16 + 8) = 0uLL;
      *v16 = off_276F88;
      *(v16 + 40) = 0;
      v16 += 48;
      v15 += 48;
      v14 -= 48;
    }

    while (v14);
    *&v23 = v13 + 48 * a2;
    v17 = *(result + 8);
    v18 = v13 + *result - v17;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>(result, *result, v17, v18);
    v19 = *v3;
    *v3 = v18;
    v20 = *(v3 + 16);
    *(v3 + 8) = v23;
    *&v23 = v19;
    *(&v23 + 1) = v20;
    v21 = v19;
    v22 = v19;
    return std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(&v21);
  }

  return result;
}

void sub_9A834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = kaldi::CuMatrix<float>::CuMatrix(a4 + v7, v8, 111);
      v8 += 6;
      v7 += 48;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 6;
        result = (*(v12 + 16))(v6);
        v10 += 6;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }

  return result;
}

void sub_9A950(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 48);
    *(a1 + 16) = i - 48;
    (*(v4 + 16))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t kaldi::CuSubMatrix<float>::CuSubMatrix(uint64_t result, uint64_t a2, int a3, int a4, const char *a5, int a6)
{
  v6 = *(a2 + 24);
  v7 = *(a2 + 28) - a5;
  *(result + 8) = *(a2 + 8) + 4 * v6 * a3 + 4 * a5;
  v8 = *(a2 + 32);
  *(result + 16) = a6;
  *(result + 20) = a4;
  *(result + 24) = v6;
  *(result + 28) = v7 - v6 * a3;
  *(result + 32) = v8;
  *result = off_276F40;
  if (((a5 | a3) & 0x80000000) != 0 || a4 + a3 > *(a2 + 20) || a6 + a5 > *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("CuSubMatrix", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_388.segname[3], "(row_offset >= 0) && (col_offset >= 0) && (row_offset + num_rows <= mat.num_rows_) && (col_offset + num_cols <= mat.num_cols_)", a5);
  }

  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>()
{
  OUTLINED_FUNCTION_0_4();
  do
  {
    v4 = *v3;
    v3 -= 6;
    result = (*(v4 + 16))(v1);
    v2 -= 48;
    v6 = v1 == v0;
    v1 = v3;
  }

  while (!v6);
  return result;
}

uint64_t kaldi::cu::RegularizeL1<float>(_DWORD *a1, uint64_t a2, float a3, float a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a1[5] != *(a2 + 20) || a1[4] != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("RegularizeL1", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-math.cc", &stru_20.segname[7], "SameDim(*weight, *grad)", a7);
  }

  result = kaldi::ContextDependency::CentralPosition((a1 + 2));
  if (result >= 1)
  {
    v13 = 0;
    v14 = -a4;
    do
    {
      if (kaldi::ContextDependency::ContextWidth((a1 + 2)) >= 1)
      {
        v17 = 0;
        do
        {
          if (*kaldi::MatrixBase<float>::operator()((a1 + 2), v13, v17, v15, v16) != 0.0)
          {
            if (*kaldi::MatrixBase<float>::operator()((a1 + 2), v13, v17, v18, v19) >= 0.0)
            {
              v22 = a3;
            }

            else
            {
              v22 = -a3;
            }

            v23 = *kaldi::MatrixBase<float>::operator()((a1 + 2), v13, v17, v20, v21);
            v26 = *kaldi::MatrixBase<float>::operator()((a1 + 2), v13, v17, v24, v25);
            v29 = (v26 + (v14 * *kaldi::MatrixBase<float>::operator()(a2 + 8, v13, v17, v27, v28))) > v22;
            v32 = kaldi::MatrixBase<float>::operator()((a1 + 2), v13, v17, v30, v31);
            if (v23 > 0.0 == v29)
            {
              *v32 = *v32 - v22;
            }

            else
            {
              *v32 = 0.0;
              *kaldi::MatrixBase<float>::operator()(a2 + 8, v13, v17, v33, v34) = 0;
            }
          }

          ++v17;
        }

        while (v17 < kaldi::ContextDependency::ContextWidth((a1 + 2)));
      }

      ++v13;
      result = kaldi::ContextDependency::CentralPosition((a1 + 2));
    }

    while (v13 < result);
  }

  return result;
}

uint64_t kaldi::cu::Splice<float>(_DWORD *a1, unsigned int *a2, _DWORD *a3, uint64_t a4, const char *a5)
{
  v5 = *a2;
  if (v5 * a1[4] != a3[4])
  {
    kaldi::KaldiAssertFailure_("Splice", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-math.cc", &stru_68.segname[7], "src.NumCols()*frame_offsets.Dim() == tgt->NumCols()", a5);
  }

  if (a1[5] != a3[5])
  {
    kaldi::KaldiAssertFailure_("Splice", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-math.cc", &stru_68.segname[8], "src.NumRows() == tgt->NumRows()", a5);
  }

  v8 = *(a2 + 1);
  result = kaldi::ContextDependency::CentralPosition((a3 + 2));
  if (result >= 1)
  {
    v10 = 0;
    do
    {
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          v12 = (*(v8 + 4 * i) + v10) & ~((*(v8 + 4 * i) + v10) >> 31);
          if (v12 >= kaldi::ContextDependency::CentralPosition((a1 + 2)))
          {
            v12 = kaldi::ContextDependency::CentralPosition((a1 + 2)) - 1;
          }

          if (a3[5] <= v10)
          {
            kaldi::KaldiAssertFailure_("RowData", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[4], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v13);
          }

          v14 = *(a3 + 1);
          v15 = a3[6];
          v16 = kaldi::ContextDependency::ContextWidth((a1 + 2));
          if (a1[5] <= v12)
          {
            kaldi::KaldiAssertFailure_("RowData", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v17);
          }

          v18 = (v14 + 4 * v15 * v10 + 4 * v16 * i);
          v19 = (*(a1 + 1) + 4 * a1[6] * v12);
          v20 = kaldi::ContextDependency::ContextWidth((a1 + 2));
          memcpy(v18, v19, 4 * v20);
        }
      }

      ++v10;
      result = kaldi::ContextDependency::CentralPosition((a3 + 2));
    }

    while (v10 < result);
  }

  return result;
}

uint64_t kaldi::cu::Copy<float>(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, const char *a5)
{
  v5 = *a2;
  if (v5 != a3[4])
  {
    kaldi::KaldiAssertFailure_("Copy", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-math.cc", &stru_68.align + 3, "copy_from_indices.Dim() == tgt->NumCols()", a5);
  }

  if (*(a1 + 20) != a3[5])
  {
    kaldi::KaldiAssertFailure_("Copy", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-math.cc", &stru_68.reloff, "src.NumRows() == tgt->NumRows()", a5);
  }

  v8 = *(a2 + 1);
  result = kaldi::ContextDependency::CentralPosition((a3 + 2));
  if (result >= 1)
  {
    v12 = 0;
    do
    {
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          v14 = kaldi::MatrixBase<float>::operator()(a1 + 8, v12, *(v8 + 4 * i), v10, v11);
          *kaldi::MatrixBase<float>::operator()((a3 + 2), v12, i, v15, v16) = v14;
        }
      }

      ++v12;
      result = kaldi::ContextDependency::CentralPosition((a3 + 2));
    }

    while (v12 < result);
  }

  return result;
}

unsigned int *kaldi::CuMatrixBase<float>::CopyFromMat<float>(unsigned int *result, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 20))
  {
    return kaldi::MatrixBase<float>::CopyFromMat<float>(result + 2, a2 + 8, a3, a4, a5);
  }

  return result;
}

uint64_t kaldi::CuMatrix<float>::~CuMatrix(uint64_t a1)
{
  *a1 = off_276F88;
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2 && (*(a1 + 40) & 1) == 0)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return a1;
}

{
  *a1 = off_276F88;
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2 && (*(a1 + 40) & 1) == 0)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return a1;
}

uint64_t kaldi::CuMatrix<float>::CuMatrix<float>(uint64_t a1, kaldi::ContextDependency *this, int a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  *a1 = off_276F88;
  *(a1 + 40) = 0;
  if (a3 == 111)
  {
    v7 = kaldi::ContextDependency::CentralPosition(this);
    v8 = kaldi::ContextDependency::ContextWidth(this);
  }

  else
  {
    v7 = kaldi::ContextDependency::ContextWidth(this);
    v8 = kaldi::ContextDependency::CentralPosition(this);
  }

  kaldi::CuMatrix<float>::Resize(a1, v7, v8, 1u, 0);
  kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 8), this, a3, v9, v10);
  return a1;
}

void kaldi::CuMatrix<float>::Resize(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5)
{
  if (a4 >= 4)
  {
    kaldi::KaldiAssertFailure_("Resize", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_20.fileoff + 1, "resize_type == kSetZero || resize_type == kUndefined || resize_type == kSetZeroIfNewMemory || resize_type == kCopyData", a5);
  }

  if (a3 * a2)
  {
    v9 = a4;
    if (a5)
    {
      v10 = *(a1 + 24) != a3;
    }

    else
    {
      v10 = 0;
    }

    if (a4 == 3)
    {
      if (*(a1 + 20) == a2 && ((*(a1 + 16) == a3) & ~v10) != 0)
      {
        return;
      }

      v9 = 0;
    }

    v11 = *(a1 + 24);
    if (v11 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a1 + 28) / v11;
    }

    if (v11 < a3)
    {
      goto LABEL_19;
    }

    if (v12 < a2)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
LABEL_19:
      if (v9 == 2)
      {
        v14 = *(a1 + 16);
        v13 = *(a1 + 20);
        if (v13 >= a2)
        {
          v15 = a2;
        }

        else
        {
          v15 = v13;
        }

        if (v14 >= a3)
        {
          v16 = a3;
        }

        else
        {
          v16 = v14;
        }

        kaldi::Matrix<float>::Matrix(&v27, a2, a3, 0, a5);
        kaldi::SubMatrix<float>::SubMatrix(v26, &v27, 0, v15, 0, v16);
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v24, a1, 0, v15, 0, v16);
        kaldi::MatrixBase<float>::CopyFromMat<float>(v26, &v25, 111, v17, v18);
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v26);
      }

      else
      {
        v20 = (a1 + 8);
        v19 = *(a1 + 8);
        if (v19 && (*(a1 + 40) & 1) == 0)
        {
          free(v19);
        }

        *v20 = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        kaldi::Matrix<float>::Matrix(&v27, a2, a3, v9, a5);
      }

      v21 = v27;
      v27 = *(a1 + 8);
      *(a1 + 8) = v21;
      v22 = v28;
      v28 = *(a1 + 16);
      *(a1 + 16) = v22;
      LOBYTE(v21) = v29;
      v29 = *(a1 + 40);
      *(a1 + 40) = v21;
      kaldi::Matrix<float>::~Matrix(&v27);
    }

    else
    {
      *(a1 + 16) = a3;
      *(a1 + 20) = a2;
      if (!v9)
      {
        v23 = a1 + 8;

        kaldi::MatrixBase<float>::SetZero(v23);
      }
    }
  }

  else
  {
    if (a3 | a2)
    {
      kaldi::KaldiAssertFailure_("Resize", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_20.fileoff + 7, "rows == 0 && cols == 0", a5);
    }

    *(a1 + 16) = 0;
  }
}

void sub_9B304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(va);
  kaldi::Matrix<float>::~Matrix(va1);
  _Unwind_Resume(a1);
}

void *kaldi::VectorBase<float>::CopyRowsFromMat(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 8) != a2[5] * a2[4])
  {
    kaldi::KaldiAssertFailure_("CopyRowsFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_798.nsects + 1, "dim_ == mat.NumCols() * mat.NumRows()", a5);
  }

  v6 = (a2 + 2);

  return kaldi::VectorBase<float>::CopyRowsFromMat(a1, v6);
}

uint64_t kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(uint64_t a1, unsigned int *a2)
{
  v4 = kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1, a2[5], a2[4]);
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v4, (a2 + 2));
  return a1;
}

uint64_t kaldi::QuantizedMatrix<short>::QuantizedMatrix(uint64_t a1, unsigned int *a2)
{
  v4 = kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1, a2[5], a2[4]);
  kaldi::QuantizedMatrixBase<short>::CopyFromMat(v4, (a2 + 2));
  return a1;
}

uint64_t kaldi::VectorwiseQuantizedMatrix<signed char>::~VectorwiseQuantizedMatrix(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    operator delete();
  }

  return a1;
}

void kaldi::QuantizedMatrixBase<signed char>::AddMat()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 2422);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::QuantizedMatrixBase<short>::AddMat()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 2422);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::CuMatrix<float>::CuMatrix(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, const char *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a5;
  *a1 = off_276F88;
  *(a1 + 40) = 0;
  kaldi::CuMatrix<float>::Resize(a1, a2, a3, a4, a6);
  return a1;
}

uint64_t kaldi::CuMatrix<float>::CuMatrix(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = off_276F88;
  *(a1 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  if (a3 == 111)
  {
    v7 = *(a2 + 16);
    v6 = *(a2 + 20);
    v8 = *(a2 + 24) == v7;
  }

  else
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 20);
    v8 = 0;
  }

  kaldi::CuMatrix<float>::Resize(a1, v6, v7, 1u, v8);
  if (*(a2 + 20))
  {
    kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 8), a2 + 8, a3, v9, v10);
  }

  return a1;
}

{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = off_276F88;
  *(a1 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  if (a3 == 111)
  {
    v7 = *(a2 + 16);
    v6 = *(a2 + 20);
  }

  else
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 20);
  }

  kaldi::CuMatrix<float>::Resize(a1, v6, v7, 1u, 0);
  if (*(a2 + 20))
  {
    kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 8), a2 + 8, a3, v8, v9);
  }

  return a1;
}

uint64_t kaldi::CuMatrix<float>::operator=(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 32))
  {
    *(a1 + 32) = *(a2 + 32);
  }

  kaldi::CuMatrix<float>::Resize(a1, *(a2 + 20), *(a2 + 16), 1u, 0);
  if (*(a2 + 20))
  {
    kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 8), a2 + 8, 111, v4, v5);
  }

  return a1;
}

uint64_t kaldi::CuMatrix<float>::operator=(uint64_t a1, kaldi::ContextDependency *this)
{
  v4 = kaldi::ContextDependency::CentralPosition(this);
  v5 = kaldi::ContextDependency::ContextWidth(this);
  kaldi::CuMatrix<float>::Resize(a1, v4, v5, 1u, 0);
  kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 8), this, 111, v6, v7);
  return a1;
}

uint64_t kaldi::CuMatrix<float>::Swap(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = *(result + 8);
  *(result + 8) = v2;
  LODWORD(v2) = *(a2 + 16);
  *(a2 + 16) = *(result + 16);
  *(result + 16) = v2;
  LODWORD(v2) = *(a2 + 20);
  *(a2 + 20) = *(result + 20);
  *(result + 20) = v2;
  LODWORD(v2) = *(a2 + 24);
  *(a2 + 24) = *(result + 24);
  *(result + 24) = v2;
  LODWORD(v2) = *(a2 + 28);
  *(a2 + 28) = *(result + 28);
  *(result + 28) = v2;
  v3 = *(a2 + 32);
  *(a2 + 32) = *(result + 32);
  *(result + 32) = v3;
  LOBYTE(v3) = *(a2 + 40);
  *(a2 + 40) = *(result + 40);
  *(result + 40) = v3;
  return result;
}

uint64_t kaldi::CuMatrix<float>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  kaldi::Matrix<float>::Matrix(&v12, *(a1 + 20), *(a1 + 16), 1, (*(a1 + 24) == *(a1 + 16)));
  kaldi::Matrix<float>::Read(&v12, a2, a3, 0, a4);
  v8 = *(a1 + 8);
  if (v8 && (*(a1 + 40) & 1) == 0)
  {
    free(v8);
  }

  *(a1 + 8) = v12;
  v9 = v13;
  v12 = 0;
  v13 = 0uLL;
  *(a1 + 16) = v9;
  v10 = v14;
  v14 = *(a1 + 40);
  *(a1 + 40) = v10;
  return kaldi::Matrix<float>::~Matrix(&v12);
}

void sub_9B954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::CuMatrix<float>::~CuMatrix(uint64_t a1)
{
  *a1 = off_276F88;
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2 && (*(a1 + 40) & 1) == 0)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;

  operator delete();
}

void *kaldi::CuArray<int>::CopyToVec(int *a1, std::vector<int> *this)
{
  begin = this->__begin_;
  v5 = (this->__end_ - this->__begin_) >> 2;
  v6 = *a1;
  if (v6 != v5)
  {
    std::vector<int>::resize(this, v6);
    begin = this->__begin_;
    LODWORD(v5) = *a1;
  }

  v7 = *(a1 + 1);

  return memcpy(begin, v7, 4 * v5);
}

unint64_t kaldi::CuMatrixBase<float>::CopyIndexedItems(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int a5)
{
  v7 = *a3;
  if (v7 != *a4)
  {
    kaldi::KaldiAssertFailure_("CopyIndexedItems", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_7E0.flags, "row_index.Dim() == col_index.Dim()", v7);
  }

  v8 = *(a3 + 1);
  v9 = *(a4 + 8);
  v10 = a1 + 8;
  v11 = (a2 + 8);

  return kaldi::MatrixBase<float>::CopyIndexedItems(v10, v11, v8, v9, v7, a5);
}

void kaldi::CuMatrixBase<float>::CopySelectedRows(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = *(a2 + 20);
  if (*(a1 + 20) < v5)
  {
    kaldi::KaldiAssertFailure_("CopySelectedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_830.segname[7], "num_rows_ >= src.NumRows()", a5);
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("CopySelectedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_830.segname[8], "num_cols_ == src.NumCols()", a5);
  }

  if (*(a3 + 16) != v5)
  {
    kaldi::KaldiAssertFailure_("CopySelectedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_830.segname[9], "selection.Dim() == src.NumRows()", a5);
  }

  v6 = a1 + 8;
  v7 = a2 + 8;
  v8 = a3 + 8;

  kaldi::MatrixBase<float>::CopySelectedRows(v6, v7, v8, a4, a5);
}

uint64_t kaldi::CuMatrixBase<float>::SetStride(uint64_t result, int a2)
{
  v2 = *(result + 24);
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      v11 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "SetStride", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 531);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "New stride (", 12);
      v3 = std::ostream::operator<<();
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ") must not be smaller than", 26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " the current stride (", 21);
      v5 = *(v11 + 24);
      v6 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, ").");
      goto LABEL_8;
    }

    if (a2 % v2)
    {
      v12 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "SetStride", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 536);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "New stride (", 12);
      v7 = std::ostream::operator<<();
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") must be a multiple of ", 24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "current stride (", 16);
      v9 = *(v12 + 24);
      v10 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, ").");
LABEL_8:
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
    }

    *(result + 20) = (*(result + 20) - 1) / (a2 / v2) + 1;
    *(result + 24) = a2;
  }

  return result;
}

void kaldi::CuMatrixBase<float>::Sigmoid(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1[5] != a2[5] || a1[4] != a2[4])
  {
    kaldi::KaldiAssertFailure_("Sigmoid", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_4C8.addr + 5, "SameDim(*this, src)", a5);
  }

  v7 = (a1 + 2);
  v8 = (a2 + 2);

  kaldi::MatrixBase<float>::Sigmoid(v7, v8, a3, a4, a5);
}

float *kaldi::CuMatrixBase<float>::GroupPnorm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  if (*(a2 + 16) % *(a1 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    kaldi::KaldiAssertFailure_("GroupPnorm", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_518.addr, "src.NumCols() == this->NumCols() * group_size && this->NumRows() == src.NumRows()", a5);
  }

  v7 = (a1 + 8);
  v8 = a2 + 8;

  return kaldi::MatrixBase<float>::GroupPnorm(v7, v8, a6, a3, a4, a5);
}

uint64_t kaldi::CuMatrixBase<float>::GroupPnormDeriv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  v6 = *(a3 + 16);
  if (v6 <= 0)
  {
    kaldi::KaldiAssertFailure_("GroupPnormDeriv", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_2E8.size, "src2.NumCols() > 0", a5);
  }

  if (*(a1 + 16) % v6)
  {
    kaldi::KaldiAssertFailure_("GroupPnormDeriv", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_2E8.size + 2, "this->NumCols() == src2.NumCols() * group_size", a5);
  }

  v7 = a1 + 8;
  v8 = a2 + 8;
  v9 = a3 + 8;

  return kaldi::MatrixBase<float>::GroupPnormDeriv(v7, v8, v9, a4, a5, a6);
}

void kaldi::CuMatrixBase<float>::Tanh(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1[5] != a2[5] || a1[4] != a2[4])
  {
    kaldi::KaldiAssertFailure_("Tanh", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_5B8.sectname[10], "SameDim(*this, src)", a5);
  }

  v7 = (a1 + 2);
  v8 = (a2 + 2);

  kaldi::MatrixBase<float>::Tanh(v7, v8, a3, a4, a5);
}

uint64_t *kaldi::CuMatrixBase<float>::DiffSigmoid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = *(a1 + 16);
  v6 = *(a1 + 20);
  v8 = v6 == *(a2 + 20) && v7 == *(a2 + 16);
  if (!v8 || (v6 == *(a3 + 20) ? (v9 = v7 == *(a3 + 16)) : (v9 = 0), !v9))
  {
    kaldi::KaldiAssertFailure_("DiffSigmoid", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_568.offset + 3, "SameDim(*this, value) && SameDim(*this, diff)", a5);
  }

  v10 = (a1 + 8);
  v11 = (a2 + 8);
  v12 = (a3 + 8);

  return kaldi::MatrixBase<float>::DiffSigmoid(v10, v11, v12, a4, a5);
}

uint64_t kaldi::CuMatrixBase<float>::DiffRelu(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(result + 16);
  v5 = *(result + 20);
  if (v5 != *(a2 + 20) || v6 != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("DiffRelu", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_568.flags + 1, "SameDim(*this, value)", a5);
  }

  if (v5 != *(a3 + 20) || v6 != *(a3 + 16))
  {
    kaldi::KaldiAssertFailure_("DiffRelu", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_568.flags + 2, "SameDim(*this, diff)", a5);
  }

  if (v5 >= 1)
  {
    v9 = 0;
    v10 = *(a3 + 8);
    v11 = *(a2 + 8);
    v12 = *(result + 8);
    v13 = 4 * *(result + 24);
    v14 = 4 * *(a3 + 24);
    v15 = 4 * *(a2 + 24);
    do
    {
      if (v6 >= 1)
      {
        result = 0;
        do
        {
          v16 = 0;
          if (*(v11 + result) > 0.0)
          {
            v16 = *(v10 + result);
          }

          *(v12 + result) = v16;
          result += 4;
        }

        while (4 * v6 != result);
      }

      ++v9;
      v12 += v13;
      v10 += v14;
      v11 += v15;
    }

    while (v9 != v5);
  }

  return result;
}

void kaldi::CuMatrixBase<float>::AddMatMat(uint64_t a1, uint64_t a2, CBLAS_TRANSPOSE a3, uint64_t a4, const char *a5, float a6, float a7)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 20);
  if (a5 == 112)
  {
    v9 = *(a4 + 20);
  }

  else
  {
    v9 = *(a4 + 16);
  }

  if (a5 == 112)
  {
    v7 = *(a4 + 16);
  }

  v11 = *(a2 + 16);
  v10 = *(a2 + 20);
  if (a3 == CblasTrans)
  {
    v12 = *(a2 + 20);
  }

  else
  {
    v12 = *(a2 + 16);
  }

  if (v9 != *(a1 + 16))
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_428.align, "m == NumCols()", a5);
  }

  if (a3 == CblasTrans)
  {
    v10 = *(a2 + 16);
  }

  if (v10 != *(a1 + 20))
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_428.align + 1, "n == NumRows()", a5);
  }

  if (v7 != v12)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_428.align + 2, "k == k1", a5);
  }

  if (v9)
  {
    v13 = a1 + 8;
    v14 = a2 + 8;
    v15 = a4 + 8;

    kaldi::MatrixBase<float>::AddMatMat(v13, v14, a3, v15, a5, a6, a7);
  }
}

_DWORD *kaldi::CuMatrixBase<float>::MaxoutForward(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) % a1[4] || a1[5] != *(a2 + 20))
  {
    kaldi::KaldiAssertFailure_("MaxoutForward", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_A60.reserved1 + 3, "input.NumCols() % this->NumCols() == 0 && this->NumRows() == input.NumRows()", a5);
  }

  v6 = a1 + 2;
  v7 = a2 + 8;

  return kaldi::MatrixBase<float>::MaxoutForward(v6, v7, a3, a4, a5);
}

uint64_t kaldi::CuMatrixBase<float>::MaxoutDerivative(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 16);
  if (v5 % *(a3 + 16) || (v6 = *(a1 + 20), v6 != *(a3 + 20)))
  {
    kaldi::KaldiAssertFailure_("MaxoutDerivative", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_AB0.cmdsize + 3, "this->NumCols() % output.NumCols() == 0 && this->NumRows() == output.NumRows()", a5);
  }

  if (v5 != *(a2 + 16) || v6 != *(a2 + 20))
  {
    kaldi::KaldiAssertFailure_("MaxoutDerivative", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_AB0.segname[1], "this->NumCols() == input.NumCols() && this->NumRows() == input.NumRows()", a5);
  }

  v7 = a1 + 8;
  v8 = a2 + 8;
  v9 = a3 + 8;

  return kaldi::MatrixBase<float>::MaxoutDerivative(v7, v8, v9, a4, a5);
}

uint64_t kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1[5] != *(a2 + 20) || a1[4] != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("ApplySoftMaxPerRow", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_568.addr, "SameDim(*this, src)", a5);
  }

  kaldi::MatrixBase<float>::CopyFromMat<float>(a1 + 2, a2 + 8, 111, a4, a5);
  result = kaldi::ContextDependency::CentralPosition((a1 + 2));
  if (result >= 1)
  {
    v9 = 0;
    do
    {
      kaldi::MatrixBase<float>::Row((a1 + 2), v9, v8, v11);
      kaldi::VectorBase<float>::ApplySoftMax(v11, v10);
      ++v9;
      result = kaldi::ContextDependency::CentralPosition((a1 + 2));
    }

    while (v9 < result);
  }

  return result;
}

void kaldi::CuMatrixBase<float>::ApplyMaxNorm(uint64_t a1, int a2, float a3)
{
  kaldi::CuMatrix<float>::CuMatrix(&v29, a1, 111);
  kaldi::MatrixBase<float>::MulElements(&v30, a1 + 8, v6, v7, v8);
  if (a2)
  {
    v11 = *(a1 + 20);
    v27 = 0;
    v28 = 0;
    v25 = off_277020;
    v26 = 0;
    kaldi::CuVector<float>::Resize(&v25, v11, 0, v9, v10);
    v28 = *(a1 + 32);
    kaldi::CuVectorBase<float>::AddColSumMat(&v25, &v29, 1.0, 0.0, v12, v13, v14);
    kaldi::CuVectorBase<float>::ApplyPow(&v25, 0.5);
    kaldi::CuVectorBase<float>::Scale(&v25, 1.0 / a3);
    kaldi::CuVectorBase<float>::ApplyFloor(&v25, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(&v25);
    kaldi::MatrixBase<float>::MulRowsVec(a1 + 8, &v26, v15, v16, v17);
  }

  else
  {
    v18 = *(a1 + 16);
    v27 = 0;
    v28 = 0;
    v25 = off_277020;
    v26 = 0;
    kaldi::CuVector<float>::Resize(&v25, v18, 0, v9, v10);
    v28 = *(a1 + 32);
    kaldi::CuVectorBase<float>::AddRowSumMat(&v25, &v29, 1.0, 0.0, v19, v20, v21);
    kaldi::CuVectorBase<float>::ApplyPow(&v25, 0.5);
    kaldi::CuVectorBase<float>::Scale(&v25, 1.0 / a3);
    kaldi::CuVectorBase<float>::ApplyFloor(&v25, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(&v25);
    kaldi::MatrixBase<float>::MulColsVec(a1 + 8, &v26, v22, v23, v24);
  }

  kaldi::CuVector<float>::~CuVector(&v25);
  v29 = off_276F88;
  if (v30)
  {
    if ((v31 & 1) == 0)
    {
      free(v30);
    }
  }
}

void sub_9C520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::CuMatrixBase<float>::FindRowMaxId(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!a2)
  {
    kaldi::KaldiAssertFailure_("FindRowMaxId", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_5B8.offset + 1, "id", a5);
  }

  kaldi::CuArray<int>::Resize(a2, *(a1 + 20), 0, a4, a5);
  if (*a2 >= 1)
  {
    v8 = 0;
    v9 = *(a2 + 1);
    do
    {
      *(v9 + 4 * v8++) = -1;
    }

    while (v8 < *a2);
  }

  v10 = *(a1 + 20);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 16);
    do
    {
      if (v11 >= *(a1 + 20))
      {
        kaldi::KaldiAssertFailure_("RowData", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v7);
      }

      if (v12 < 1)
      {
        v15 = -1;
      }

      else
      {
        v13 = 0;
        v15 = -1;
        v16 = -1.0e21;
        do
        {
          v14 = *(a1 + 8) + 4 * *(a1 + 24) * v11;
          if (v16 < *(v14 + 4 * v13))
          {
            v16 = *(v14 + 4 * v13);
            v15 = v13;
          }

          ++v13;
        }

        while (v12 != v13);
      }

      *(*(a2 + 1) + 4 * v11++) = v15;
    }

    while (v11 != v10);
  }
}

void kaldi::CuArray<int>::Resize(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const char *a5)
{
  v6 = a3 < 2 || a3 == 3;
  if ((a2 & 0x80000000) != 0 || !v6)
  {
    kaldi::KaldiAssertFailure_("Resize", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-array-inl.h", &stru_20.segname[4], "(resize_type == kSetZero || resize_type == kUndefined || resize_type == kSetZeroIfNewMemory) && dim >= 0", a5);
  }

  v7 = a3;
  if (a3 == 3)
  {
    v7 = *a1 >= a2;
  }

  if (*(a1 + 4) >= a2)
  {
    *a1 = a2;
    if (!a2 || v7)
    {
      return;
    }

    v12 = *(a1 + 8);
    v13 = 4 * a2;
    goto LABEL_21;
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (v10)
  {
    free(v10);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  if (a2)
  {
    v12 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
    *(a1 + 8) = v12;
    if (!v12)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "Resize", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-array-inl.h", 76);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Memory allocation failed when initializing CuVector ", 52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "with dimension ", 15);
      v15 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " object size in bytes: ", 23);
      std::ostream::operator<<();
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    *a1 = a2;
    *(a1 + 4) = a2;
    if (!v7)
    {
      v13 = 4 * a2;
LABEL_21:

      bzero(v12, v13);
    }
  }
}

void kaldi::CuMatrixBase<float>::MulRowsGroupMat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) <= 0)
  {
    kaldi::KaldiAssertFailure_("MulRowsGroupMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_2E8.segname[7], "src.NumCols() > 0", a5);
  }

  v6 = a1 + 8;
  v7 = a2 + 8;

  kaldi::MatrixBase<float>::MulRowsGroupMat(v6, v7, a3, a4, a5);
}

uint64_t *kaldi::CuMatrixBase<float>::AddVecToCols(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (*(a2 + 16) != *(a1 + 20))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "AddVecToCols", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 1062);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Non matching dimensions: Rows:", 30);
    v11 = *(a1 + 20);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " VectorDim:", 11);
    v13 = *(a2 + 16);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  if (a7 != 1.0)
  {
    kaldi::MatrixBase<float>::Scale(a1 + 8, a7);
  }

  return kaldi::MatrixBase<float>::AddVecToCols<float>((a1 + 8), (a2 + 8), a6, a3, a4, a5);
}

uint64_t *kaldi::CuMatrixBase<float>::AddVecToRows(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (*(a2 + 16) != *(a1 + 16))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "AddVecToRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 1084);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Non matching dimensions: Cols:", 30);
    v11 = *(a1 + 16);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " VectorDim:", 11);
    v13 = *(a2 + 16);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  if (a7 != 1.0)
  {
    kaldi::MatrixBase<float>::Scale(a1 + 8, a7);
  }

  return kaldi::MatrixBase<float>::AddVecToRows<float>((a1 + 8), (a2 + 8), a6, a3, a4, a5);
}

void kaldi::CuMatrixBase<float>::AddVecVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (*(a2 + 16) != *(a1 + 20))
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_3D8.nreloc, "vecA.Dim() == num_rows_", a5);
  }

  if (*(a3 + 16) != *(a1 + 16))
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_3D8.nreloc + 1, "vecB.Dim() == num_cols_", a5);
  }

  if (a7 != 1.0)
  {
    kaldi::MatrixBase<float>::Scale(a1 + 8, a7);
  }

  kaldi::MatrixBase<float>::AddVecVec<float>(a1 + 8, a2 + 8, a3 + 8, a6, a4, a5);
}

void kaldi::CuMatrixBase<float>::AddMatMatMasked(uint64_t a1, uint64_t a2, CBLAS_TRANSPOSE a3, uint64_t a4, const char *a5, uint64_t a6, float a7)
{
  v7 = *(a2 + 20);
  if (v7 != *(a6 + 20))
  {
    kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_388.segname[5], "A.num_rows_ == M.num_rows_", a5);
  }

  if (a3 == CblasTrans && a5 == 112)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 927);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "matrix A and B can not be transposed at the same time, not implemented yet");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  v8 = *(a1 + 20);
  if (a3 == CblasTrans)
  {
    if (v8 != *(a2 + 16) || *(a1 + 16) != *(a4 + 16))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_388.segname[9], "num_rows_ == A.num_cols_ && num_cols_ == B.num_cols_", a5);
    }

    if (v7 != *(a4 + 20))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_388.segname[10], "A.num_rows_ == B.num_rows_", a5);
    }

    if (v8 <= *(a6 + 16))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_388.segname[11], "A.num_cols_ > M.num_cols_", a5);
    }
  }

  else if (a5 == 112)
  {
    if (v8 != v7 || (v9 = *(a1 + 16), v9 != *(a4 + 20)))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_388.segname[13], "num_rows_ == A.num_rows_ && num_cols_ == B.num_rows_", a5);
    }

    if (*(a2 + 16) != *(a4 + 16))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_388.segname[14], "A.num_cols_ == B.num_cols_", a5);
    }

    if (v9 <= *(a6 + 16))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_388.segname[15], "B.num_rows_ > M.num_cols_", a5);
    }
  }

  else
  {
    if (v8 != v7 || *(a1 + 16) != *(a4 + 16))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_388.addr + 1, "num_rows_ == A.num_rows_ && num_cols_ == B.num_cols_", a5);
    }

    v10 = *(a2 + 16);
    if (v10 != *(a4 + 20))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_388.addr + 2, "A.num_cols_ == B.num_rows_", a5);
    }

    if (v10 <= *(a6 + 16))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_388.addr + 3, "A.num_cols_ > M.num_cols_", a5);
    }
  }

  v11 = a1 + 8;
  v12 = a2 + 8;
  v13 = a4 + 8;

  kaldi::MatrixBase<float>::AddMatMat(v11, v12, a3, v13, a5, a7, 1.0);
}

float kaldi::CuMatrixBase<float>::Sum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v14[1] = 0;
  v14[2] = 0;
  v14[0] = off_277020;
  v14[3] = v7;
  kaldi::CuVector<float>::Resize(v14, v6, 0, a4, a5);
  kaldi::CuVectorBase<float>::AddRowSumMat(v14, a1, 1.0, 0.0, v8, v9, v10);
  v11 = kaldi::CuVectorBase<float>::Sum(v14);
  v12 = *&v11;
  kaldi::CuVector<float>::~CuVector(v14);
  return v12;
}

void kaldi::CuMatrixBase<float>::SetRandn(uint64_t a1)
{
  if (*(a1 + 20))
  {
    kaldi::MatrixBase<float>::SetRandn(a1 + 8);
  }
}

uint64_t kaldi::CuMatrixBase<float>::Write(uint64_t a1, void *a2, int a3, int a4)
{
  kaldi::Matrix<float>::Matrix(v11, *(a1 + 20), *(a1 + 16), 1, 0);
  kaldi::MatrixBase<float>::CopyFromMat<float>(v11, a1 + 8, 111, v8, v9);
  kaldi::MatrixBase<float>::Write(v11, a2, a3, a4);
  return kaldi::Matrix<float>::~Matrix(v11);
}

void sub_9CF80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::CuMatrixBase<float>::EqualElementColMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a2 + 16);
  if (v6 != *(a1 + 16))
  {
    kaldi::KaldiAssertFailure_("EqualElementColMask", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_A60.segname[7], "vec.Dim() == NumCols()", a5);
  }

  if (!a3)
  {
    kaldi::KaldiAssertFailure_("EqualElementColMask", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_A60.segname[8], "mask != NULL", a5);
  }

  kaldi::CuMatrix<float>::Resize(a3, *(a1 + 20), v6, 0, 0);
  v10 = *(a1 + 20);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 16);
    v13 = *(a2 + 16);
    do
    {
      if (v12 >= 1)
      {
        v14 = 0;
        v15 = *(a2 + 8);
        do
        {
          if (v13 == v14)
          {
            kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_108.sectname[6], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", v9);
          }

          if (*(*(a1 + 8) + 4 * (v11 * *(a1 + 24)) + 4 * v14) == *(v15 + 4 * v14))
          {
            v16 = 1.0;
          }

          else
          {
            v16 = 0.0;
          }

          if (*(a3 + 20) <= v11 || v14 >= *(a3 + 16))
          {
            kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.size + 1, "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v9);
          }

          *(*(a3 + 8) + 4 * (v11 * *(a3 + 24)) + 4 * v14++) = v16;
        }

        while (v12 != v14);
      }

      ++v11;
    }

    while (v11 != v10);
  }
}

void kaldi::CuMatrixBase<float>::EqualElementMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a2 + 20);
  if (v6 != *(a1 + 20) || (v9 = *(a2 + 16), v9 != *(a1 + 16)))
  {
    kaldi::KaldiAssertFailure_("EqualElementMask", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_A60.size + 7, "mat.NumRows() == NumRows() && mat.NumCols() == NumCols()", a5);
  }

  if (!a3)
  {
    kaldi::KaldiAssertFailure_("EqualElementMask", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_A60.offset, "mask != NULL", a5);
  }

  kaldi::CuMatrix<float>::Resize(a3, v6, v9, 0, 0);
  v11 = *(a1 + 20);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(a2 + 20);
    v14 = v11 & ~(v11 >> 31);
    v15 = *(a1 + 16);
    do
    {
      if (v15 >= 1)
      {
        if (v13 > v12)
        {
          v16 = 0;
          v17 = *(a2 + 8) + 4 * (*(a2 + 24) * v12);
          while (v16 < *(a2 + 16))
          {
            if (*(*(a1 + 8) + 4 * (v12 * *(a1 + 24)) + 4 * v16) == *(v17 + 4 * v16))
            {
              v18 = 1.0;
            }

            else
            {
              v18 = 0.0;
            }

            if (*(a3 + 20) <= v12 || v16 >= *(a3 + 16))
            {
              kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.size + 1, "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v10);
            }

            *(*(a3 + 8) + 4 * (v12 * *(a3 + 24)) + 4 * v16++) = v18;
            if (v15 == v16)
            {
              goto LABEL_16;
            }
          }
        }

        kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.size + 7, "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v10);
      }

LABEL_16:
      ++v12;
    }

    while (v12 != v14);
  }
}

float *kaldi::CuMatrixBase<float>::ConcatenateVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 20) != *(a3 + 20))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_338.sectname[7], "num_rows_ == index.NumRows()", a5);
  }

  if (*(a1 + 16) != *(a2 + 16) * *(a3 + 16))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_338.sectname[8], "num_cols_ == index.NumCols() * vec_table.NumCols()", a5);
  }

  v5 = a1 + 8;
  v6 = a2 + 8;
  v7 = a3 + 8;

  return kaldi::MatrixBase<float>::ConcatenateVec(v5, v6, v7, a4, a5);
}

uint64_t kaldi::CuMatrixBase<float>::ConcatenateVec(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 20) != *(a3 + 20))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_338.segname[10], "num_rows_ == index.NumRows()", a5);
  }

  v5 = *a2;
  if (*a2)
  {
    LODWORD(v5) = *(v5 + 12);
  }

  if (*(a1 + 16) != v5 * *(a3 + 16))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_338.segname[11], "num_cols_ == index.NumCols() * vec_table.NumCols()", a5);
  }

  v6 = a1 + 8;
  v7 = a3 + 8;

  return kaldi::MatrixBase<float>::ConcatenateVec(v6, a2, v7, a4, a5);
}

void kaldi::CuMatrixBase<float>::SummarizeVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 20) != *(a3 + 20))
  {
    kaldi::KaldiAssertFailure_("SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_338.size + 5, "num_rows_ == index.NumRows()", a5);
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_338.size + 6, "num_cols_ == vec_table.NumCols()", a5);
  }

  v5 = a1 + 8;
  v6 = a2 + 8;
  v7 = a3 + 8;

  kaldi::MatrixBase<float>::SummarizeVec(v5, v6, v7, a4, a5);
}

void kaldi::CuMatrixBase<float>::DataUnowned()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "DataUnowned", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 219);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Function not implemented for this class");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

float *kaldi::Quant3Levels<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  if (a6 <= 0.0)
  {
    kaldi::KaldiAssertFailure_("Quant3Levels", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_AB0.fileoff + 3, "value > 0.0", a5);
  }

  v7 = (a1 + 8);
  v8 = a2 + 8;

  return kaldi::Quant3Levels<float>(v7, v8, a6, a3, a4, a5);
}

_DWORD *kaldi::ZeroSmallValues<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  if (a6 <= 0.0)
  {
    kaldi::KaldiAssertFailure_("ZeroSmallValues", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", &stru_AB0.maxprot + 2, "threshold > 0.0", a5);
  }

  v7 = (a1 + 8);
  v8 = a2 + 8;

  return kaldi::ZeroSmallValues<float>(v7, v8, a6, a3, a4, a5);
}

void kaldi::CuSubVector<float>::Read()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "Read", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", 517);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Function is not implemented for this class");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::CuSubVector<float>::~CuSubVector(uint64_t result)
{
  *result = &off_276FE0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void kaldi::CuSubVector<float>::~CuSubVector(uint64_t a1)
{
  *a1 = &off_276FE0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  operator delete();
}

uint64_t kaldi::Matrix<float>::Matrix<float>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  if (a3 == 111)
  {
    v10 = *(a2 + 20);
  }

  else
  {
    v10 = *(a2 + 16);
  }

  if (a3 == 111)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  kaldi::Matrix<float>::Init(a1, v10, v11, 0, a5);
  kaldi::MatrixBase<float>::CopyFromMat<float>(a1, a2 + 8, a3, v12, v13);
  return a1;
}

void kaldi::CuRandom::RandGauss<float>(int *a1, uint64_t a2, float a3, float a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    if ((a1[1] & 1) == 0)
    {
      v6 = *a1;
      a1[2] = *a1;
      v7 = 1;
      for (i = 3; i != 626; ++i)
      {
        v9 = 1812433253 * (v6 ^ (v6 >> 30));
        v6 = v9 + v7;
        a1[i] = i + v9 - 2;
        ++v7;
      }

      *(a1 + 313) = 0;
      *(a1 + 4) = 1;
      v4 = *(a2 + 16);
    }

    v10 = *(a2 + 8);
    v11 = __PAIR64__(LODWORD(a4), LODWORD(a3));
    v12 = 0;
    if (v4 >= 1)
    {
      do
      {
        *v10++ = std::normal_distribution<float>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v11, (a1 + 2), &v11);
        --v4;
      }

      while (v4);
    }
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v11, "RandGauss", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-rand.cc", 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "cannot write data to zero size vector", 37);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v11);
  }
}

void kaldi::CuRand<float>::BinarizeProbs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = *(a3 + 16);
    do
    {
      if (v7 >= 1)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = (kaldi::Rand(0) + 1.0) / 2147483650.0;
          if (kaldi::MatrixBase<float>::operator()(a2 + 8, v6, i, v10, v11) <= v9)
          {
            v14 = 0.0;
          }

          else
          {
            v14 = 1.0;
          }

          *kaldi::MatrixBase<float>::operator()(a3 + 8, v6, i, v12, v13) = v14;
          v7 = *(a3 + 16);
        }

        v3 = *(a3 + 20);
      }

      ++v6;
    }

    while (v6 < v3);
  }
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

float std::normal_distribution<float>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, float *a3)
{
  if (*(a1 + 12))
  {
    *(a1 + 12) = 0;
    v5 = *(a1 + 8);
  }

  else
  {
    do
    {
      do
      {
        v7 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this), 0x20uLL) * 2.0) + -1.0;
        v8 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this), 0x20uLL) * 2.0) + -1.0;
        v9 = (v8 * v8) + (v7 * v7);
      }

      while (v9 > 1.0);
    }

    while (v9 == 0.0);
    v10 = sqrtf((logf((v8 * v8) + (v7 * v7)) * -2.0) / v9);
    *(a1 + 8) = v8 * v10;
    *(a1 + 12) = 1;
    v5 = v7 * v10;
  }

  return *a3 + (v5 * a3[1]);
}

float kaldi::VecVec<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("VecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_20.cmd + 3, "a.Dim() == b.Dim()", a5);
  }

  v6 = a1 + 8;
  v7 = a2 + 8;

  return kaldi::VecVec<float>(v6, v7, a3, a4, a5);
}

{
  v7 = *(a1 + 8);
  if (v7 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("VecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_20.vmsize + 1, "adim == b.Dim()", a5);
  }

  v8 = *a2;
  v9 = *a1;

  return cblas_sdot(v7, v9, 1, v8, &dword_0 + 1);
}

void *kaldi::CuVector<float>::~CuVector(void *a1)
{
  *a1 = off_277020;
  v3 = a1 + 1;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  return a1;
}

{
  *a1 = off_277020;
  v3 = a1 + 1;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  return a1;
}

float kaldi::VecVec<float,signed char>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("VecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_20.vmsize + 2, "a.Dim() == b.Dim()", a5);
  }

  v6 = a1 + 8;

  return kaldi::VecVec<signed char>(v6, a2, a3, a4, a5);
}

float kaldi::VecVec<float,short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("VecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_20.vmsize + 2, "a.Dim() == b.Dim()", a5);
  }

  v6 = a1 + 8;

  return kaldi::VecVec<short>(v6, a2, a3, a4, a5);
}

_DWORD *kaldi::CuVectorBase<float>::CopyFromVec<float>(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a2 + 8);
  if (v6 != result[4])
  {
    kaldi::KaldiAssertFailure_("CopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_2E8.size, "src.Dim() == dim_", a5);
  }

  if (v6)
  {
    v7 = (result + 2);

    return kaldi::VectorBase<float>::CopyFromVec(v7, a2, a3, a4, a5);
  }

  return result;
}

_DWORD *kaldi::CuVectorBase<float>::CopyToVec<float>(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = result[4];
  if (v6 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("CopyToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_2E8.reserved1, "dim_ == dst->Dim()", a5);
  }

  if (v6)
  {

    return kaldi::VectorBase<float>::CopyFromVec(a2, (result + 2), a3, a4, a5);
  }

  return result;
}

void kaldi::CuVectorBase<float>::AddVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (*(a2 + 16) != *(a1 + 16))
  {
    kaldi::KaldiAssertFailure_("AddVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_428.reserved2, "vec.Dim() == Dim()", a5);
  }

  if (a7 != 1.0)
  {
    kaldi::VectorBase<float>::Scale(a1 + 8, a7);
  }

  kaldi::VectorBase<float>::AddVec<float>(a1 + 8, a2 + 8, a6, a3, a4, a5);
}

_DWORD *kaldi::CuVectorBase<float>::CopyFromVec(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a2 + 16);
  if (v6 != result[4])
  {
    kaldi::KaldiAssertFailure_("CopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_388.addr + 5, "src.Dim() == dim_", a5);
  }

  if (v6)
  {
    result = *(result + 1);
    if (result)
    {
      v7 = *(a2 + 8);

      return memcpy(result, v7, 4 * v6);
    }
  }

  return result;
}

float kaldi::CuVectorBase<float>::ReverseCopyFromVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a2 + 16);
  if (v6 != *(a1 + 16))
  {
    kaldi::KaldiAssertFailure_("ReverseCopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_388.offset + 3, "src.Dim() == dim_", a5);
  }

  if (v6)
  {
    v7 = a1 + 8;
    v8 = a2 + 8;

    return kaldi::VectorBase<float>::ReverseCopyFromVec(v7, v8, a3, a4, a5);
  }

  return result;
}

void *kaldi::CuVectorBase<float>::CopyRowsFromMat(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != a2[5] * a2[4])
  {
    kaldi::KaldiAssertFailure_("CopyRowsFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_68.segname[12], "dim_ == mat.NumCols() * mat.NumRows()", a5);
  }

  v6 = (a1 + 8);
  v7 = (a2 + 2);

  return kaldi::VectorBase<float>::CopyRowsFromMat(v6, v7);
}

void kaldi::CuVectorBase<float>::SetZero(uint64_t a1)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 8))
    {
      kaldi::VectorBase<float>::SetZero(a1 + 8);
    }
  }
}

void kaldi::CuVectorBase<float>::AddRowSumMat(uint64_t a1, _DWORD *a2, float a3, float a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2[4] != *(a1 + 16))
  {
    kaldi::KaldiAssertFailure_("AddRowSumMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_478.segname[12], "mat.NumCols() == Dim()", a7);
  }

  v11 = a2[5];
  memset(v14, 0, sizeof(v14));
  kaldi::Vector<float>::Resize(v14, v11, 1, a6, a7);
  v12.i32[0] = 1.0;
  kaldi::VectorBase<float>::Set(v14, v12);
  kaldi::VectorBase<float>::AddMatVec(a1 + 8, (a2 + 2), CblasTrans, v14, v13, a3, a4);
  kaldi::Vector<float>::Destroy(v14);
}

void sub_9DF10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::CuVectorBase<float>::AddColSumMat(uint64_t a1, unsigned int *a2, float a3, float a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2[5] != *(a1 + 16))
  {
    kaldi::KaldiAssertFailure_("AddColSumMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_478.size + 4, "mat.NumRows() == Dim()", a7);
  }

  v11 = a2[4];
  memset(v14, 0, sizeof(v14));
  kaldi::Vector<float>::Resize(v14, v11, 1, a6, a7);
  v12.i32[0] = 1.0;
  kaldi::VectorBase<float>::Set(v14, v12);
  kaldi::VectorBase<float>::AddMatVec(a1 + 8, (a2 + 2), CblasNoTrans, v14, v13, a3, a4);
  kaldi::Vector<float>::Destroy(v14);
}

void sub_9DFE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::CuVectorBase<float>::ApplyMaxNorm(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  kaldi::CuVector<float>::CuVector(&v12, a1, a4, a5, a6);
  kaldi::CuVectorBase<float>::MulElements(&v12, a1, v8, v9, v10);
  v11 = sqrtf(COERCE_FLOAT(COERCE_UNSIGNED_INT64(kaldi::VectorBase<float>::Sum(&v13))));
  if (v11 > a2)
  {
    kaldi::VectorBase<float>::Scale(a1 + 8, a2 / v11);
  }

  v12 = off_277020;
  if (v13)
  {
    free(v13);
  }
}

void sub_9E0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

float kaldi::CuVectorBase<float>::MulElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("MulElements", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_298.reloff + 2, "dim_ == v.dim_", a5);
  }

  v6 = a1 + 8;
  v7 = a2 + 8;

  return kaldi::VectorBase<float>::MulElements(v6, v7, a3, a4, a5);
}

uint64_t kaldi::CuVectorBase<float>::SetRandn(uint64_t result)
{
  if (*(result + 16))
  {
    v4 = 0u;
    v5 = 0u;
    memset(v1, 0, sizeof(v1));
    v2 = 0;
    v3 = off_276F88;
    v6 = 0;
    v7 = 0;
    kaldi::CuRand<float>::RandGaussian(v1, result);
    return kaldi::CuRand<float>::~CuRand(v1);
  }

  return result;
}

void kaldi::CuVectorBase<float>::Tanh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("Tanh", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_158.reserved3, "this->Dim() == src.Dim()", a5);
  }

  v6 = a1 + 8;
  v7 = a2 + 8;

  kaldi::VectorBase<float>::Tanh(v6, v7, a3, a4, a5);
}

void kaldi::CuVectorBase<float>::Sigmoid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("Sigmoid", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_158.nreloc + 3, "this->Dim() == src.Dim()", a5);
  }

  v6 = a1 + 8;
  v7 = a2 + 8;

  kaldi::VectorBase<float>::Sigmoid(v6, v7, a3, a4, a5);
}

void kaldi::CuVectorBase<float>::CopyColFromMat(uint64_t a1, _DWORD *a2, signed int a3, uint64_t a4, const char *a5)
{
  if (a2[4] <= a3)
  {
    kaldi::KaldiAssertFailure_("CopyColFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_20.filesize + 2, "col < mat.NumCols()", a5);
  }

  if (*(a1 + 16) != a2[5])
  {
    kaldi::KaldiAssertFailure_("CopyColFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_20.filesize + 3, "dim_ == mat.NumRows()", a5);
  }

  v5 = a1 + 8;
  v6 = (a2 + 2);

  kaldi::VectorBase<float>::CopyColFromMat<float>(v5, v6, a3);
}

void kaldi::CuVectorBase<float>::AddMatVec(uint64_t a1, _DWORD *a2, CBLAS_TRANSPOSE a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (a3 == CblasTrans)
  {
    if (a2[5] != *(a4 + 16))
    {
      goto LABEL_12;
    }

    v7 = a2[4];
  }

  else
  {
    if (a3 != CblasNoTrans || a2[4] != *(a4 + 16))
    {
LABEL_12:
      kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_1A8.align, "(trans == kNoTrans && M.NumCols() == v.dim_ && M.NumRows() == dim_) || (trans == kTrans && M.NumRows() == v.dim_ && M.NumCols() == dim_)", a5);
    }

    v7 = a2[5];
  }

  if (v7 != *(a1 + 16))
  {
    goto LABEL_12;
  }

  if (a4 == a1)
  {
    kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_1A8.align + 1, "&v != this", a5);
  }

  v8 = a1 + 8;
  v9 = (a2 + 2);
  v10 = a4 + 8;

  kaldi::VectorBase<float>::AddMatVec(v8, v9, a3, v10, a5, a6, a7);
}

void kaldi::CuVectorBase<float>::AddVecVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6, float a7)
{
  v7 = *(a1 + 16);
  if (v7 != *(a2 + 16) || v7 != *(a3 + 16))
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_1F8.size + 3, "(dim_ == v.dim_ && dim_ == r.dim_)", a5);
  }

  if (a1 == a2 || a1 == a3)
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_1F8.size + 4, "this != &v && this != &r", a5);
  }

  v9 = a1 + 8;
  v10 = a2 + 8;
  v11 = a3 + 8;

  kaldi::VectorBase<float>::AddVecVec(v9, v10, v11, a6, a7, a4, a5);
}

float kaldi::CuVectorBase<float>::DivElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("DivElements", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_298.reserved1 + 3, "dim_ == v.dim_", a5);
  }

  v6 = a1 + 8;
  v7 = a2 + 8;

  return kaldi::VectorBase<float>::DivElements(v6, v7, a3, a4, a5);
}

void kaldi::CuVectorBase<float>::Write(_DWORD *a1, void *a2, int a3, uint64_t a4, const char *a5)
{
  v8 = a1[4];
  memset(v12, 0, sizeof(v12));
  kaldi::Vector<float>::Resize(v12, v8, 1, a4, a5);
  kaldi::CuVectorBase<float>::CopyToVec<float>(a1, v12, v9, v10, v11);
  kaldi::VectorBase<float>::Write(v12, a2, a3);
  kaldi::Vector<float>::Destroy(v12);
}

void sub_9E580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::CuVector<float>::Resize(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if (a3 >= 2)
  {
    if (a3 != 3)
    {
      kaldi::KaldiAssertFailure_("Resize", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_338.addr + 6, "t == kSetZero || t == kUndefined || t == kSetZeroIfNewMemory", a5);
    }

    a3 = *(a1 + 16) >= a2;
  }

  if (*(a1 + 20) >= a2)
  {
    *(a1 + 16) = a2;
    if (a2 && !a3 && *(a1 + 8))
    {
      v11 = a1 + 8;

      kaldi::VectorBase<float>::SetZero(v11);
    }
  }

  else
  {
    if (*(a1 + 16))
    {
      v8 = (a1 + 8);
      v7 = *(a1 + 8);
      if (v7)
      {
        free(v7);
      }

      *v8 = 0;
      *(a1 + 16) = 0;
    }

    if (a2)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      kaldi::Vector<float>::Resize(&v12, a2, 0, a4, a5);
      v9 = v12;
      v12 = *(a1 + 8);
      *(a1 + 8) = v9;
      v10 = v13;
      v13 = *(a1 + 16);
      *(a1 + 16) = v10;
      kaldi::Vector<float>::Destroy(&v12);
    }
  }
}

uint64_t kaldi::CuVector<float>::CuVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_277020;
  *(a1 + 24) = *(a2 + 24);
  kaldi::CuVector<float>::Resize(a1, *(a2 + 16), 1u, a4, a5);
  kaldi::CuVectorBase<float>::CopyFromVec(a1, a2, v7, v8, v9);
  return a1;
}

{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_277020;
  *(a1 + 24) = a3;
  kaldi::CuVector<float>::Resize(a1, *(a2 + 8), 1u, a4, a5);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(a1, a2, v7, v8, v9);
  return a1;
}