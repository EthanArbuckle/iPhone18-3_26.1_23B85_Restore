void UsagePayload::UsagePayload(uint64_t a1, UsagePayload *this, int a3, int a4)
{
  *a1 = a3;
  *(a1 + 4) = a4;
  *(a1 + 1032) = 0;
  v6 = *(this + 23);
  if ((v6 & 0x8000000000000000) != 0 && (v6 = *(this + 1), v6 >= 0x401))
  {
    v8 = 0;
  }

  else
  {
    std::string::copy(this, (a1 + 8), v6, 0);
    v7 = *(this + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(this + 1);
    }

    *(a1 + 1032) = v7;
    v8 = 1;
  }

  *(a1 + 1040) = v8;
}

void *UsagePayload::UsagePayload(void *__dst, size_t __n, void *__src)
{
  __dst[129] = 0;
  *(__dst + 1040) = 0;
  if (__n - 1033 >= 0xFFFFFFFFFFFFFBFFLL)
  {
    memcpy(__dst, __src, __n);
    __dst[129] = __n - 8;
    *(__dst + 1040) = 1;
  }

  return __dst;
}

double UsagePayload::getArchiveArch@<D0>(UsagePayload *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 129);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v7) = *(this + 129);
  if (v3)
  {
    memcpy(&__dst, this + 8, v3);
  }

  *(&__dst + v3) = 0;
  *a2 = __dst;
  *(a2 + 16) = v7;
  result = *this;
  *(a2 + 24) = *this;
  return result;
}

void MTLArchiveUsageDB::store(unsigned int *a1, UsagePayload *a2, int a3, int a4, uint64_t a5)
{
  gettimeofday(&v12, 0);
  v11[1] = v12.tv_sec - a5;
  UsagePayload::UsagePayload(v13, a2, a3, a4);
  MTLVersionedDB::Transaction::Transaction(v11, a1);
  if (v11[0])
  {
    v10 = a1[2];
    operator new();
  }

  MTLVersionedDB::Transaction::~Transaction(v11);
}

void MTLArchiveUsageDB::prune(MTLArchiveUsageDB *this, uint64_t a2)
{
  gettimeofday(&v12, 0);
  tv_sec = v12.tv_sec;
  MTLVersionedDB::Transaction::Transaction(&v11, this);
  if (v11)
  {
    v10 = 0;
    v5 = mdb_cursor_open(v11, *(this + 2), &v10);
    if (v5)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v6 = mdb_strerror(v5);
        MTLArchiveUsageDB::prune(v6, buf);
      }
    }

    else
    {
      v7 = mdb_cursor_get(v10, buf, v9, 0);
      v8 = tv_sec - a2;
      while (v7 != -30798)
      {
        if (*buf[1] < v8)
        {
          mdb_cursor_del(v10, 32);
        }

        v7 = mdb_cursor_get(v10, buf, v9, 11);
      }
    }
  }

  MTLVersionedDB::Transaction::~Transaction(&v11);
}

void sub_100000FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MTLVersionedDB::Transaction::~Transaction(va);
  _Unwind_Resume(a1);
}

uint64_t MTLArchiveUsageDB::getPrioritizedList@<X0>(MTLArchiveUsageDB *this@<X0>, uint64_t a2@<X8>)
{
  v38 = 0u;
  v39 = 0u;
  v40 = 1065353216;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  MTLVersionedDB::Transaction::Transaction(&v37, this);
  if (v37)
  {
    v36 = 0;
    v4 = mdb_cursor_open(v37, *(this + 2), &v36);
    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v5 = mdb_strerror(v4);
        MTLArchiveUsageDB::prune(v5, __dst);
      }
    }

    else
    {
      for (i = mdb_cursor_get(v36, v35, v34, 0); i != -30798; i = mdb_cursor_get(v36, v35, v34, 8))
      {
        if (!MTLVersionedDB::isVersionEntry(this, v35[0], v35[1]))
        {
          v7 = v34[0];
          v46 = 0;
          v47 = 0;
          if (v34[0] - 1033 >= 0xFFFFFFFFFFFFFBFFLL)
          {
            memcpy(__dst, v34[1], v34[0]);
            v46 = v7 - 8;
            v47 = 1;
          }

          UsagePayload::getArchiveArch(__dst, &__p);
          p_p = &__p;
          v8 = std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__emplace_unique_key_args<std::tuple<std::string,unsigned int,unsigned int>,std::piecewise_construct_t const&,std::tuple<std::tuple<std::string,unsigned int,unsigned int>&&>,std::tuple<>>(&v38, &__p);
          ++*(v8 + 12);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      v32 = 0;
      v33 = 0;
      v31 = 0;
      v9 = 0;
      if (v39)
      {
        v10 = v39;
        do
        {
          ++v9;
          v10 = *v10;
        }

        while (v10);
      }

      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__init_with_size[abi:ne200100]<std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *> *>>,std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *> *>>>(&v31, v39, 0, v9);
      v11 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v32 - v31) >> 3));
      if (v32 == v31)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      std::__introsort<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,false>(v31, v32, v12, 1);
      v13 = v31;
      for (j = v32; v13 != j; v13 = (v13 + 40))
      {
        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,unsigned int,unsigned int>::__tuple_impl(&__p, v13);
        v15 = *(a2 + 8);
        v16 = *(a2 + 16);
        if (v15 >= v16)
        {
          v18 = (v15 - *a2) >> 5;
          v19 = v18 + 1;
          if ((v18 + 1) >> 59)
          {
            std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
          }

          v20 = v16 - *a2;
          if (v20 >> 4 > v19)
          {
            v19 = v20 >> 4;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFE0)
          {
            v21 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          __dst[4] = a2;
          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::string,unsigned int,unsigned int>>>(a2, v21);
          }

          v22 = 32 * v18;
          v23 = *&__p.__r_.__value_.__l.__data_;
          *(v22 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v22 = v23;
          memset(&__p, 0, sizeof(__p));
          *(v22 + 24) = v42;
          *(v22 + 28) = v43;
          v24 = 32 * v18 + 32;
          v25 = *(a2 + 8) - *a2;
          v26 = 32 * v18 - v25;
          memcpy((v22 - v25), *a2, v25);
          v27 = *a2;
          *a2 = v26;
          *(a2 + 8) = v24;
          v28 = *(a2 + 16);
          *(a2 + 16) = 0;
          __dst[2] = v27;
          __dst[3] = v28;
          __dst[0] = v27;
          __dst[1] = v27;
          std::__split_buffer<std::tuple<std::string,unsigned int,unsigned int>>::~__split_buffer(__dst);
          v29 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          *(a2 + 8) = v24;
          if (v29 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v17 = *&__p.__r_.__value_.__l.__data_;
          *(v15 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v15 = v17;
          memset(&__p, 0, sizeof(__p));
          *(v15 + 24) = v42;
          *(v15 + 28) = v43;
          *(a2 + 8) = v15 + 32;
        }
      }

      __dst[0] = &v31;
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__destroy_vector::operator()[abi:ne200100](__dst);
    }
  }

  MTLVersionedDB::Transaction::~Transaction(&v37);
  return std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(&v38);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<std::tuple<std::string,unsigned int,unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<std::string,unsigned int,unsigned int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::tuple<std::string,unsigned int,unsigned int>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__emplace_unique_key_args<std::tuple<std::string,unsigned int,unsigned int>,std::piecewise_construct_t const&,std::tuple<std::tuple<std::string,unsigned int,unsigned int>&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](v25, a2);
  v6 = *(a2 + 24);
  v5 = *(a2 + 28);
  v7 = v4 ^ (2 * v6);
  v8 = v7 ^ (4 * v5);
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_36;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7 ^ (4 * v5);
    if (v8 >= *&v9)
    {
      v12 = v8 % *&v9;
    }
  }

  else
  {
    v12 = v8 & (*&v9 - 1);
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_36:
    operator new();
  }

  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  if (v15 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  __s2 = v17;
  while (1)
  {
    v18 = v14[1];
    if (v18 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v18 >= *&v9)
      {
        v18 %= *&v9;
      }
    }

    else
    {
      v18 &= *&v9 - 1;
    }

    if (v18 != v12)
    {
      goto LABEL_36;
    }

LABEL_35:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_36;
    }
  }

  v19 = *(v14 + 39);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = v14[3];
  }

  if (v19 != v16)
  {
    goto LABEL_35;
  }

  v21 = v20 >= 0 ? v14 + 2 : v14[2];
  v22 = !memcmp(v21, __s2, v16) && *(v14 + 10) == v6;
  if (!v22 || *(v14 + 11) != v5)
  {
    goto LABEL_35;
  }

  return v14;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__init_with_size[abi:ne200100]<std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *> *>>,std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *> *>>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1000020E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>,std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *> *>>,std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *> *>>,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,unsigned int,unsigned int>::__tuple_impl(v4, v6 + 1);
      LODWORD(v4[1].__r_.__value_.__r.__words[1]) = *(v6 + 12);
      v6 = *v6;
      v4 = (v11 + 40);
      v11 = (v11 + 40);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,unsigned int,unsigned int>::__tuple_impl(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = *(a2 + 6);
  HIDWORD(this[1].__r_.__value_.__r.__words[0]) = *(a2 + 7);
  return this;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__introsort<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,false>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v128 = (a2 - 10);
    v129 = (a2 - 5);
    v127 = (a2 - 15);
    v7 = a1;
    v135 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = a2 - v7;
          v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v7) >> 3);
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, (a1 + 40), v129);
                return;
              case 4:
                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, (a1 + 40), (a1 + 80));
                if (*(a2 - 2) > *(a1 + 112))
                {
                  v56 = *(a1 + 80);
                  v57 = *(a1 + 96);
                  v58 = *(a2 - 3);
                  *(a1 + 80) = *(a2 - 5);
                  *(a1 + 96) = v58;
                  *(a2 - 3) = v57;
                  *(a2 - 5) = v56;
                  LODWORD(v57) = *(a1 + 104);
                  *(a1 + 104) = *(a2 - 4);
                  *(a2 - 4) = v57;
                  LODWORD(v57) = *(a1 + 108);
                  *(a1 + 108) = *(a2 - 3);
                  *(a2 - 3) = v57;
                  LODWORD(v57) = *(a1 + 112);
                  *(a1 + 112) = *(a2 - 2);
                  *(a2 - 2) = v57;
                  v59 = *(a1 + 112);
                  v60 = *(a1 + 72);
                  if (v59 > v60)
                  {
                    v61 = *(a1 + 56);
                    v62 = *(a1 + 40);
                    *(a1 + 40) = *(a1 + 80);
                    *(a1 + 56) = *(a1 + 96);
                    *(a1 + 80) = v62;
                    *(a1 + 96) = v61;
                    v63 = *(a1 + 104);
                    v64 = *(a1 + 108);
                    *&v62 = *(a1 + 64);
                    *(a1 + 64) = v63;
                    *(a1 + 68) = v64;
                    *(a1 + 104) = v62;
                    *(a1 + 72) = v59;
                    *(a1 + 112) = v60;
                    v65 = *(a1 + 32);
                    if (v59 > v65)
                    {
                      v153 = *(a1 + 16);
                      v144 = *a1;
                      *a1 = *(a1 + 40);
                      *(a1 + 16) = *(a1 + 56);
                      *(a1 + 40) = v144;
                      *(a1 + 56) = v153;
                      v66 = *(a1 + 24);
                      *(a1 + 24) = v63;
                      *(a1 + 28) = v64;
                      *(a1 + 64) = v66;
                      *(a1 + 32) = v59;
                      *(a1 + 72) = v65;
                    }
                  }
                }

                return;
              case 5:

                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, a1 + 40, a1 + 80, a1 + 120, v129);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 2) > *(a1 + 32))
              {
                v152 = *(a1 + 16);
                v143 = *a1;
                v52 = *(a2 - 5);
                *(a1 + 16) = *(a2 - 3);
                *a1 = v52;
                *(a2 - 3) = v152;
                *(a2 - 5) = v143;
                v53 = *(a1 + 24);
                *(a1 + 24) = *(a2 - 4);
                *(a2 - 4) = v53;
                v54 = *(a1 + 28);
                *(a1 + 28) = *(a2 - 3);
                *(a2 - 3) = v54;
                v55 = *(a1 + 32);
                *(a1 + 32) = *(a2 - 2);
                *(a2 - 2) = v55;
              }

              return;
            }
          }

          if (v8 <= 959)
          {
            v67 = (a1 + 40);
            v69 = a1 == a2 || v67 == a2;
            if (a4)
            {
              if (!v69)
              {
                v70 = 0;
                v71 = a1;
                do
                {
                  v72 = v67;
                  v73 = *(v71 + 72);
                  if (v73 > *(v71 + 32))
                  {
                    v74 = *v67;
                    *v145 = *(v71 + 48);
                    *&v145[7] = *(v71 + 55);
                    v75 = *(v71 + 63);
                    v67[1] = 0;
                    v67[2] = 0;
                    *v67 = 0;
                    v76 = *(v71 + 64);
                    v77 = v70;
                    while (1)
                    {
                      v78 = a1 + v77;
                      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1 + v77 + 40, (a1 + v77));
                      *(a1 + v77 + 72) = *(a1 + v77 + 32);
                      if (!v77)
                      {
                        break;
                      }

                      v77 -= 40;
                      if (v73 <= *(v78 - 8))
                      {
                        v79 = a1 + v77 + 40;
                        goto LABEL_91;
                      }
                    }

                    v79 = a1;
LABEL_91:
                    if (*(v79 + 23) < 0)
                    {
                      operator delete(*v79);
                    }

                    *v79 = v74;
                    *(v79 + 8) = *v145;
                    *(v79 + 15) = *&v145[7];
                    *(v79 + 23) = v75;
                    *(v79 + 24) = v76;
                    *(v79 + 32) = v73;
                  }

                  v67 = v72 + 5;
                  v70 += 40;
                  v71 = v72;
                }

                while (v72 + 5 != v135);
              }
            }

            else if (!v69)
            {
              v118 = (a1 + 72);
              do
              {
                v119 = v67;
                v120 = *(a1 + 72);
                if (v120 > *(a1 + 32))
                {
                  v121 = *v67;
                  *v148 = *(a1 + 48);
                  *&v148[7] = *(a1 + 55);
                  v122 = *(a1 + 63);
                  v67[1] = 0;
                  v67[2] = 0;
                  *v67 = 0;
                  v123 = *(a1 + 64);
                  v124 = v118;
                  do
                  {
                    v125 = v124;
                    std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>((v124 - 8), (v124 - 18));
                    v126 = *(v124 - 10);
                    v124 -= 10;
                    *v125 = v126;
                  }

                  while (v120 > *(v125 - 20));
                  if (*(v124 - 9) < 0)
                  {
                    operator delete(*(v124 - 4));
                  }

                  *(v124 - 4) = v121;
                  *(v124 - 17) = *&v148[7];
                  *(v124 - 3) = *v148;
                  *(v124 - 9) = v122;
                  *(v124 - 1) = v123;
                  *v124 = v120;
                }

                v67 = v119 + 5;
                v118 += 10;
                a1 = v119;
              }

              while (v119 + 5 != v135);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v80 = v10 >> 1;
              v81 = v10 >> 1;
              do
              {
                v82 = v81;
                if (v80 >= v81)
                {
                  v83 = (2 * v81) | 1;
                  v84 = (a1 + 40 * v83);
                  if (2 * v82 + 2 < v9)
                  {
                    v85 = v84[2].n128_u32[0];
                    v86 = v84[4].n128_u32[2];
                    v87 = v85 > v86;
                    v88 = v85 <= v86 ? 0 : 40;
                    v84 = (v84 + v88);
                    if (v87)
                    {
                      v83 = 2 * v82 + 2;
                    }
                  }

                  v89 = (a1 + 40 * v82);
                  v90 = v89[2].n128_u32[0];
                  if (v84[2].n128_u32[0] <= v90)
                  {
                    v133 = v89->n128_u64[0];
                    *&v146[7] = *(&v89->n128_u64[1] + 7);
                    *v146 = v89->n128_u64[1];
                    v130 = v89[1].n128_u8[7];
                    v89->n128_u64[0] = 0;
                    v89->n128_u64[1] = 0;
                    v89[1].n128_u64[0] = 0;
                    v91 = v89[1].n128_u64[1];
                    do
                    {
                      v92 = v89;
                      v89 = v84;
                      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v92, v84);
                      *(v92 + 32) = v89[2].n128_u32[0];
                      if (v80 < v83)
                      {
                        break;
                      }

                      v93 = (2 * v83) | 1;
                      v84 = (a1 + 40 * v93);
                      if (2 * v83 + 2 < v9)
                      {
                        v94 = v84[2].n128_u32[0];
                        v95 = v84[4].n128_u32[2];
                        v96 = v94 > v95;
                        v97 = v94 <= v95 ? 0 : 40;
                        v84 = (v84 + v97);
                        if (v96)
                        {
                          v93 = 2 * v83 + 2;
                        }
                      }

                      v83 = v93;
                    }

                    while (v84[2].n128_u32[0] <= v90);
                    if (v89[1].n128_i8[7] < 0)
                    {
                      operator delete(v89->n128_u64[0]);
                    }

                    v89->n128_u64[0] = v133;
                    v89->n128_u64[1] = *v146;
                    *(&v89->n128_u64[1] + 7) = *&v146[7];
                    v89[1].n128_u8[7] = v130;
                    v89[1].n128_u64[1] = v91;
                    v89[2].n128_u32[0] = v90;
                  }
                }

                v81 = v82 - 1;
              }

              while (v82);
              v98 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
              v99 = v135;
              do
              {
                v100 = 0;
                v101 = v99;
                v134 = *a1;
                *v139 = *(a1 + 8);
                *&v139[7] = *(a1 + 15);
                v136 = *(a1 + 23);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                v102 = *(a1 + 28);
                v131 = *(a1 + 24);
                v103 = a1;
                v104 = *(a1 + 32);
                do
                {
                  v105 = v103 + 40 * v100;
                  v106 = v105 + 40;
                  if (2 * v100 + 2 >= v98)
                  {
                    v100 = (2 * v100) | 1;
                  }

                  else
                  {
                    v107 = *(v105 + 72);
                    v108 = *(v105 + 112);
                    v109 = v105 + 80;
                    if (v107 <= v108)
                    {
                      v100 = (2 * v100) | 1;
                    }

                    else
                    {
                      v106 = v109;
                      v100 = 2 * v100 + 2;
                    }
                  }

                  std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v103, v106);
                  *(v103 + 32) = *(v106 + 32);
                  v103 = v106;
                }

                while (v100 <= ((v98 - 2) >> 1));
                v99 -= 5;
                if (v106 == v101 - 5)
                {
                  if (*(v106 + 23) < 0)
                  {
                    operator delete(*v106);
                  }

                  *v106 = v134;
                  *(v106 + 8) = *v139;
                  *(v106 + 15) = *&v139[7];
                  *(v106 + 23) = v136;
                  *(v106 + 24) = v131;
                  *(v106 + 28) = v102;
                  *(v106 + 32) = v104;
                }

                else
                {
                  std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v106, (v101 - 5));
                  *(v106 + 32) = *(v101 - 2);
                  if (*(v101 - 17) < 0)
                  {
                    operator delete(*v99);
                  }

                  *(v101 - 5) = v134;
                  *(v101 - 25) = *&v139[7];
                  *(v101 - 4) = *v139;
                  *(v101 - 17) = v136;
                  *(v101 - 4) = v131;
                  *(v101 - 3) = v102;
                  *(v101 - 2) = v104;
                  v110 = v106 + 40 - a1;
                  if (v110 >= 41)
                  {
                    v111 = (-2 - 0x3333333333333333 * (v110 >> 3)) >> 1;
                    v112 = (a1 + 40 * v111);
                    v113 = *(v106 + 32);
                    if (v112[2].n128_u32[0] > v113)
                    {
                      v114 = *v106;
                      *v147 = *(v106 + 8);
                      *&v147[7] = *(v106 + 15);
                      v115 = *(v106 + 23);
                      *(v106 + 8) = 0;
                      *(v106 + 16) = 0;
                      *v106 = 0;
                      v116 = *(v106 + 24);
                      do
                      {
                        v117 = v106;
                        v106 = v112;
                        std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v117, v112);
                        *(v117 + 32) = *(v106 + 32);
                        if (!v111)
                        {
                          break;
                        }

                        v111 = (v111 - 1) >> 1;
                        v112 = (a1 + 40 * v111);
                      }

                      while (v112[2].n128_u32[0] > v113);
                      if (*(v106 + 23) < 0)
                      {
                        operator delete(*v106);
                      }

                      *v106 = v114;
                      *(v106 + 8) = *v147;
                      *(v106 + 15) = *&v147[7];
                      *(v106 + 23) = v115;
                      *(v106 + 24) = v116;
                      *(v106 + 32) = v113;
                    }
                  }
                }

                v87 = v98-- <= 2;
              }

              while (!v87);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = a1 + 40 * (v9 >> 1);
          if (v8 < 0x1401)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(v12, a1, v129);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, v12, v129);
            v13 = 5 * v11;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>((a1 + 40), (a1 + 8 * v13 - 40), v128);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>((a1 + 80), (a1 + 40 + 8 * v13), v127);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>((a1 + 8 * v13 - 40), v12, (a1 + 40 + 8 * v13));
            v149 = *(a1 + 16);
            v140 = *a1;
            v14 = *(v12 + 16);
            *a1 = *v12;
            *(a1 + 16) = v14;
            *(v12 + 16) = v149;
            *v12 = v140;
            v15 = *(a1 + 24);
            *(a1 + 24) = *(v12 + 24);
            *(v12 + 24) = v15;
            LODWORD(v14) = *(a1 + 32);
            *(a1 + 32) = *(v12 + 32);
            *(v12 + 32) = v14;
          }

          --a3;
          a2 = v135;
          if (a4)
          {
            break;
          }

          v16 = *(a1 + 32);
          if (*(a1 - 8) > v16)
          {
            goto LABEL_17;
          }

          v36 = *a1;
          *v138 = *(a1 + 8);
          *&v138[7] = *(a1 + 15);
          v37 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          if (v16 <= *(v135 - 8))
          {
            v40 = a1 + 40;
            do
            {
              v7 = v40;
              if (v40 >= v135)
              {
                break;
              }

              v41 = *(v40 + 32);
              v40 += 40;
            }

            while (v16 <= v41);
          }

          else
          {
            v38 = a1;
            do
            {
              v7 = v38 + 40;
              v39 = *(v38 + 72);
              v38 += 40;
            }

            while (v16 <= v39);
          }

          v42 = v135;
          if (v7 < v135)
          {
            v43 = v135;
            do
            {
              v42 = v43 - 40;
              v44 = *(v43 - 8);
              v43 -= 40;
            }

            while (v16 > v44);
          }

          v45 = *(a1 + 24);
          while (v7 < v42)
          {
            v151 = *(v7 + 16);
            v142 = *v7;
            v46 = *v42;
            *(v7 + 16) = *(v42 + 16);
            *v7 = v46;
            *(v42 + 16) = v151;
            *v42 = v142;
            v47 = *(v7 + 24);
            *(v7 + 24) = *(v42 + 24);
            *(v42 + 24) = v47;
            v48 = *(v7 + 28);
            *(v7 + 28) = *(v42 + 28);
            *(v42 + 28) = v48;
            v49 = *(v7 + 32);
            *(v7 + 32) = *(v42 + 32);
            *(v42 + 32) = v49;
            do
            {
              v50 = *(v7 + 72);
              v7 += 40;
            }

            while (v16 <= v50);
            do
            {
              v51 = *(v42 - 8);
              v42 -= 40;
            }

            while (v16 > v51);
          }

          if (v7 - 40 != a1)
          {
            std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1, (v7 - 40));
            *(a1 + 32) = *(v7 - 8);
          }

          if (*(v7 - 17) < 0)
          {
            operator delete(*(v7 - 40));
          }

          a4 = 0;
          *(v7 - 40) = v36;
          *(v7 - 25) = *&v138[7];
          *(v7 - 32) = *v138;
          *(v7 - 17) = v37;
          *(v7 - 16) = v45;
          *(v7 - 8) = v16;
        }

        v16 = *(a1 + 32);
LABEL_17:
        v17 = 0;
        v18 = *a1;
        *v137 = *(a1 + 8);
        *&v137[7] = *(a1 + 15);
        v19 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v20 = *(a1 + 24);
        do
        {
          v21 = *(a1 + v17 + 72);
          v17 += 40;
        }

        while (v21 > v16);
        v22 = a1 + v17;
        v23 = v135;
        if (v17 == 40)
        {
          v26 = v135;
          while (v22 < v26)
          {
            v24 = v26 - 40;
            v27 = *(v26 - 8);
            v26 -= 40;
            if (v27 > v16)
            {
              goto LABEL_27;
            }
          }

          v24 = v26;
        }

        else
        {
          do
          {
            v24 = v23 - 40;
            v25 = *(v23 - 8);
            v23 -= 40;
          }

          while (v25 <= v16);
        }

LABEL_27:
        v7 = v22;
        if (v22 < v24)
        {
          v28 = v24;
          do
          {
            v150 = *(v7 + 16);
            v141 = *v7;
            v29 = *v28;
            *(v7 + 16) = *(v28 + 16);
            *v7 = v29;
            *(v28 + 16) = v150;
            *v28 = v141;
            v30 = *(v7 + 24);
            *(v7 + 24) = *(v28 + 24);
            *(v28 + 24) = v30;
            v31 = *(v7 + 28);
            *(v7 + 28) = *(v28 + 28);
            *(v28 + 28) = v31;
            v32 = *(v7 + 32);
            *(v7 + 32) = *(v28 + 32);
            *(v28 + 32) = v32;
            do
            {
              v33 = *(v7 + 72);
              v7 += 40;
            }

            while (v33 > v16);
            do
            {
              v34 = *(v28 - 8);
              v28 -= 40;
            }

            while (v34 <= v16);
          }

          while (v7 < v28);
        }

        if (v7 - 40 != a1)
        {
          std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1, (v7 - 40));
          *(a1 + 32) = *(v7 - 8);
        }

        if (*(v7 - 17) < 0)
        {
          operator delete(*(v7 - 40));
        }

        *(v7 - 40) = v18;
        *(v7 - 25) = *&v137[7];
        *(v7 - 32) = *v137;
        *(v7 - 17) = v19;
        *(v7 - 16) = v20;
        *(v7 - 8) = v16;
        if (v22 >= v24)
        {
          break;
        }

LABEL_40:
        std::__introsort<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,false>(a1, v7 - 40, a3, a4 & 1);
        a4 = 0;
      }

      v35 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *>(a1, v7 - 40);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *>(v7, v135))
      {
        break;
      }

      if (!v35)
      {
        goto LABEL_40;
      }
    }

    a2 = (v7 - 40);
    if (!v35)
    {
      continue;
    }

    break;
  }
}

__int128 *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(__int128 *result, __int128 *a2, __int128 *a3)
{
  v3 = (a2 + 2);
  v4 = *(a2 + 8);
  v5 = (result + 2);
  v6 = *(a3 + 8);
  if (v4 > *(result + 8))
  {
    if (v6 <= v4)
    {
      v18 = *(result + 2);
      v19 = *result;
      v20 = *(a2 + 2);
      *result = *a2;
      *(result + 2) = v20;
      *a2 = v19;
      *(a2 + 2) = v18;
      LODWORD(v18) = *(result + 6);
      *(result + 6) = *(a2 + 6);
      *(a2 + 6) = v18;
      v7 = a2 + 7;
      v21 = *(result + 7);
      *(result + 7) = *(a2 + 7);
      *(a2 + 7) = v21;
      LODWORD(v18) = *(result + 8);
      *(result + 8) = *(a2 + 8);
      *(a2 + 8) = v18;
      if (*(a3 + 8) <= v18)
      {
        return result;
      }

      v22 = *(a2 + 2);
      v23 = *a2;
      v24 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v24;
      *a3 = v23;
      *(a3 + 2) = v22;
      LODWORD(v22) = *(a2 + 6);
      *(a2 + 6) = *(a3 + 6);
      *(a3 + 6) = v22;
      v11 = a3 + 7;
      v5 = (a2 + 2);
    }

    else
    {
      v7 = result + 7;
      v8 = *(result + 2);
      v9 = *result;
      v10 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v10;
      *a3 = v9;
      *(a3 + 2) = v8;
      LODWORD(v8) = *(result + 6);
      *(result + 6) = *(a3 + 6);
      *(a3 + 6) = v8;
      v11 = a3 + 7;
    }

    v3 = (a3 + 2);
    goto LABEL_10;
  }

  if (v6 > v4)
  {
    v12 = *(a2 + 2);
    v13 = *a2;
    v14 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v14;
    *a3 = v13;
    *(a3 + 2) = v12;
    LODWORD(v12) = *(a2 + 6);
    *(a2 + 6) = *(a3 + 6);
    *(a3 + 6) = v12;
    v11 = a2 + 7;
    LODWORD(v12) = *(a2 + 7);
    *(a2 + 7) = *(a3 + 7);
    *(a3 + 7) = v12;
    LODWORD(v12) = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v12;
    if (*(a2 + 8) > *v5)
    {
      v15 = *(result + 2);
      v16 = *result;
      v17 = *(a2 + 2);
      *result = *a2;
      *(result + 2) = v17;
      *a2 = v16;
      *(a2 + 2) = v15;
      LODWORD(v15) = *(result + 6);
      *(result + 6) = *(a2 + 6);
      *(a2 + 6) = v15;
      v7 = result + 7;
LABEL_10:
      v25 = *v7;
      *v7 = *v11;
      *v11 = v25;
      v26 = *v5;
      *v5 = *v3;
      *v3 = v26;
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, a2, a3);
  if (*(a4 + 32) > *(a3 + 32))
  {
    v11 = *(a3 + 16);
    result = *a3;
    v12 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v12;
    *a4 = result;
    *(a4 + 16) = v11;
    LODWORD(v11) = *(a3 + 24);
    *(a3 + 24) = *(a4 + 24);
    *(a4 + 24) = v11;
    LODWORD(v11) = *(a3 + 28);
    *(a3 + 28) = *(a4 + 28);
    *(a4 + 28) = v11;
    LODWORD(v11) = *(a3 + 32);
    *(a3 + 32) = *(a4 + 32);
    *(a4 + 32) = v11;
    if (*(a3 + 32) > *(a2 + 32))
    {
      v13 = *(a2 + 16);
      result = *a2;
      v14 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v14;
      *a3 = result;
      *(a3 + 16) = v13;
      LODWORD(v13) = *(a2 + 24);
      *(a2 + 24) = *(a3 + 24);
      *(a3 + 24) = v13;
      LODWORD(v13) = *(a2 + 28);
      *(a2 + 28) = *(a3 + 28);
      *(a3 + 28) = v13;
      LODWORD(v13) = *(a2 + 32);
      *(a2 + 32) = *(a3 + 32);
      *(a3 + 32) = v13;
      if (*(a2 + 32) > *(a1 + 32))
      {
        v15 = *(a1 + 16);
        result = *a1;
        v16 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v16;
        *a2 = result;
        *(a2 + 16) = v15;
        LODWORD(v15) = *(a1 + 24);
        *(a1 + 24) = *(a2 + 24);
        *(a2 + 24) = v15;
        LODWORD(v15) = *(a1 + 28);
        *(a1 + 28) = *(a2 + 28);
        *(a2 + 28) = v15;
        LODWORD(v15) = *(a1 + 32);
        *(a1 + 32) = *(a2 + 32);
        *(a2 + 32) = v15;
      }
    }
  }

  if (*(a5 + 32) > *(a4 + 32))
  {
    v17 = *(a4 + 16);
    result = *a4;
    v18 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v18;
    *a5 = result;
    *(a5 + 16) = v17;
    LODWORD(v17) = *(a4 + 24);
    *(a4 + 24) = *(a5 + 24);
    *(a5 + 24) = v17;
    LODWORD(v17) = *(a4 + 28);
    *(a4 + 28) = *(a5 + 28);
    *(a5 + 28) = v17;
    LODWORD(v17) = *(a4 + 32);
    *(a4 + 32) = *(a5 + 32);
    *(a5 + 32) = v17;
    if (*(a4 + 32) > *(a3 + 32))
    {
      v19 = *(a3 + 16);
      result = *a3;
      v20 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v20;
      *a4 = result;
      *(a4 + 16) = v19;
      LODWORD(v19) = *(a3 + 24);
      *(a3 + 24) = *(a4 + 24);
      *(a4 + 24) = v19;
      LODWORD(v19) = *(a3 + 28);
      *(a3 + 28) = *(a4 + 28);
      *(a4 + 28) = v19;
      LODWORD(v19) = *(a3 + 32);
      *(a3 + 32) = *(a4 + 32);
      *(a4 + 32) = v19;
      if (*(a3 + 32) > *(a2 + 32))
      {
        v21 = *(a2 + 16);
        result = *a2;
        v22 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v22;
        *a3 = result;
        *(a3 + 16) = v21;
        LODWORD(v21) = *(a2 + 24);
        *(a2 + 24) = *(a3 + 24);
        *(a3 + 24) = v21;
        LODWORD(v21) = *(a2 + 28);
        *(a2 + 28) = *(a3 + 28);
        *(a3 + 28) = v21;
        LODWORD(v21) = *(a2 + 32);
        *(a2 + 32) = *(a3 + 32);
        *(a3 + 32) = v21;
        if (*(a2 + 32) > *(a1 + 32))
        {
          v23 = *(a1 + 16);
          result = *a1;
          v24 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v24;
          *a2 = result;
          *(a2 + 16) = v23;
          LODWORD(v23) = *(a1 + 24);
          *(a1 + 24) = *(a2 + 24);
          *(a2 + 24) = v23;
          LODWORD(v23) = *(a1 + 28);
          *(a1 + 28) = *(a2 + 28);
          *(a2 + 28) = v23;
          LODWORD(v23) = *(a1 + 32);
          *(a1 + 32) = *(a2 + 32);
          *(a2 + 32) = v23;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, (a1 + 40), (a2 - 40));
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, (a1 + 40), (a1 + 80));
        if (*(a2 - 8) > *(a1 + 112))
        {
          v19 = *(a1 + 96);
          v20 = *(a1 + 80);
          v21 = *(a2 - 24);
          *(a1 + 80) = *(a2 - 40);
          *(a1 + 96) = v21;
          *(a2 - 40) = v20;
          *(a2 - 24) = v19;
          LODWORD(v19) = *(a1 + 104);
          *(a1 + 104) = *(a2 - 16);
          *(a2 - 16) = v19;
          LODWORD(v19) = *(a1 + 108);
          *(a1 + 108) = *(a2 - 12);
          *(a2 - 12) = v19;
          LODWORD(v19) = *(a1 + 112);
          *(a1 + 112) = *(a2 - 8);
          *(a2 - 8) = v19;
          v22 = *(a1 + 112);
          v23 = *(a1 + 72);
          if (v22 > v23)
          {
            v24 = *(a1 + 56);
            v25 = *(a1 + 40);
            *(a1 + 40) = *(a1 + 80);
            *(a1 + 56) = *(a1 + 96);
            *(a1 + 80) = v25;
            *(a1 + 96) = v24;
            v26 = *(a1 + 104);
            v27 = *(a1 + 108);
            *&v25 = *(a1 + 64);
            *(a1 + 64) = v26;
            *(a1 + 68) = v27;
            *(a1 + 104) = v25;
            *(a1 + 72) = v22;
            *(a1 + 112) = v23;
            v28 = *(a1 + 32);
            if (v22 > v28)
            {
              v29 = *(a1 + 16);
              v30 = *a1;
              *a1 = *(a1 + 40);
              *(a1 + 16) = *(a1 + 56);
              *(a1 + 40) = v30;
              *(a1 + 56) = v29;
              *&v30 = *(a1 + 24);
              *(a1 + 24) = v26;
              *(a1 + 28) = v27;
              *(a1 + 64) = v30;
              *(a1 + 32) = v22;
              result = 1;
              *(a1 + 72) = v28;
              return result;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 8) > *(a1 + 32))
    {
      v5 = *(a1 + 16);
      v6 = *a1;
      v7 = *(a2 - 24);
      *a1 = *(a2 - 40);
      *(a1 + 16) = v7;
      *(a2 - 40) = v6;
      *(a2 - 24) = v5;
      LODWORD(v5) = *(a1 + 24);
      *(a1 + 24) = *(a2 - 16);
      *(a2 - 16) = v5;
      LODWORD(v5) = *(a1 + 28);
      *(a1 + 28) = *(a2 - 12);
      *(a2 - 12) = v5;
      LODWORD(v5) = *(a1 + 32);
      *(a1 + 32) = *(a2 - 8);
      *(a2 - 8) = v5;
    }

    return 1;
  }

LABEL_11:
  v8 = a1 + 80;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,MTLArchiveUsageDB::getPrioritizedList(void)::$_0 &,std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int> *,0>(a1, (a1 + 40), (a1 + 80));
  v9 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(v9 + 32);
    if (v12 > *(v8 + 32))
    {
      v13 = *v9;
      *v32 = *(v9 + 8);
      *&v32[7] = *(v9 + 15);
      v14 = *(v9 + 23);
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v15 = *(v9 + 24);
      v16 = v10;
      while (1)
      {
        v17 = a1 + v16;
        std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1 + v16 + 120, (a1 + v16 + 80));
        *(a1 + v16 + 152) = *(a1 + v16 + 112);
        if (v16 == -80)
        {
          break;
        }

        v16 -= 40;
        if (v12 <= *(v17 + 72))
        {
          v18 = a1 + v16 + 120;
          goto LABEL_19;
        }
      }

      v18 = a1;
LABEL_19:
      if (*(v18 + 23) < 0)
      {
        operator delete(*v18);
      }

      *v18 = v13;
      *(v18 + 8) = *v32;
      *(v18 + 15) = *&v32[7];
      *(v18 + 23) = v14;
      *(v18 + 24) = v15;
      *(v18 + 32) = v12;
      if (++v11 == 8)
      {
        return v9 + 40 == a2;
      }
    }

    v8 = v9;
    v10 += 40;
    v9 += 40;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

__n128 std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  *a1 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  *(a1 + 24) = a2[1].n128_u32[2];
  *(a1 + 28) = a2[1].n128_u32[3];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::string,unsigned int,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::tuple<std::string,unsigned int,unsigned int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::tuple<std::string,unsigned int,unsigned int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::tuple<std::string,unsigned int,unsigned int>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

const char *MTLAssetUpgraderD::archiveTypeToString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_100020630[a1];
  }
}

const char *MTLAssetUpgraderD::dynamicLibraryTypeToString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_100020658[a1];
  }
}

void MTLAssetUpgraderD::listPrioritizedAppLaunches(uint64_t a1@<X8>)
{
  context = objc_autoreleasePoolPush();
  v3 = BiomeLibrary();
  v4 = [v3 App];
  v5 = [v4 InFocus];
  v30 = [v5 publisher];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = ___ZN17MTLAssetUpgraderD26listPrioritizedAppLaunchesEv_block_invoke_2;
  v40[3] = &unk_100020568;
  v6 = objc_alloc_init(NSCountedSet);
  v41 = v6;
  v7 = [v30 sinkWithCompletion:&__block_literal_global receiveInput:v40];
  v8 = [v6 allObjects];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = ___ZN17MTLAssetUpgraderD26listPrioritizedAppLaunchesEv_block_invoke_3;
  v38[3] = &unk_100020590;
  v28 = v6;
  v39 = v28;
  v9 = [v8 sortedArrayUsingComparator:v38];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__first_) = 138412290;
    *(&buf.__first_ + 4) = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "sorted: %@", &buf, 0xCu);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v9;
  v10 = unk_1000247A8(obj, "countByEnumeratingWithState:objects:count:", &v34, v42, 16);
  if (v10)
  {
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, [*(*(&v34 + 1) + 8 * i) UTF8String]);
        v14 = *(a1 + 8);
        v13 = *(a1 + 16);
        if (v14 >= v13)
        {
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
          v17 = v16 + 1;
          if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
          }

          v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0x555555555555555)
          {
            v19 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v19 = v17;
          }

          buf.__end_cap_.__value_ = a1;
          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v19);
          }

          v20 = 24 * v16;
          v21 = *__p;
          *(v20 + 16) = v33;
          *v20 = v21;
          __p[1] = 0;
          v33 = 0;
          __p[0] = 0;
          v22 = 24 * v16 + 24;
          v23 = *(a1 + 8) - *a1;
          v24 = 24 * v16 - v23;
          memcpy((v20 - v23), *a1, v23);
          v25 = *a1;
          *a1 = v24;
          *(a1 + 8) = v22;
          v26 = *(a1 + 16);
          *(a1 + 16) = 0;
          buf.__end_ = v25;
          buf.__end_cap_.__value_ = v26;
          buf.__first_ = v25;
          buf.__begin_ = v25;
          std::__split_buffer<std::string>::~__split_buffer(&buf);
          v27 = SHIBYTE(v33);
          *(a1 + 8) = v22;
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v15 = *__p;
          *(v14 + 16) = v33;
          *v14 = v15;
          *(a1 + 8) = v14 + 24;
        }
      }

      v10 = unk_1000247B0(obj, "countByEnumeratingWithState:objects:count:", &v34, v42, 16);
    }

    while (v10);
  }

  objc_autoreleasePoolPop(context);
}

void sub_100003E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void ___ZN17MTLAssetUpgraderD26listPrioritizedAppLaunchesEv_block_invoke(id a1, BPSCompletion *a2)
{
  v2 = a2;
  if ([(BPSCompletion *)v2 state]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = [(BPSCompletion *)v2 error];
    v4 = [v3 description];
    ___ZN17MTLAssetUpgraderD26listPrioritizedAppLaunchesEv_block_invoke_cold_1([v4 UTF8String], &v5, v4, v3);
  }
}

void sub_100003FF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___ZN17MTLAssetUpgraderD26listPrioritizedAppLaunchesEv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10 = v3;
    v4 = [v3 eventBody];
    if ([v4 starting])
    {
      v5 = [v10 eventBody];
      v6 = [v5 bundleID];
      v7 = [v6 hasPrefix:@"com.apple."];

      v3 = v10;
      if (v7)
      {
        goto LABEL_6;
      }

      v8 = *(a1 + 32);
      v4 = [v10 eventBody];
      v9 = [v4 bundleID];
      [v8 addObject:v9];
    }

    v3 = v10;
  }

LABEL_6:
}

uint64_t ___ZN17MTLAssetUpgraderD26listPrioritizedAppLaunchesEv_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) countForObject:v5];
  if (v7 >= [*(a1 + 32) countForObject:v6])
  {
    v9 = [*(a1 + 32) countForObject:v5];
    if (v9 <= [*(a1 + 32) countForObject:v6])
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

id MTLAssetUpgraderD::getArchiveType(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v7 = [NSURL fileURLWithPath:v6];
  v11 = 0;
  v8 = [_MTLBinaryArchive archiveTypeAtURL:v7 device:v4 error:&v11];
  v9 = v11;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    MTLAssetUpgraderD::getArchiveType(v8, (a2 + 23), a2);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else if (!v9)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    MTLAssetUpgraderD::getArchiveType((a2 + 23), a2);
  }

LABEL_8:

  return v8;
}

id MTLAssetUpgraderD::getDynamicLibraryType(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v7 = [NSURL fileURLWithPath:v6];
  v11 = 0;
  v8 = [_MTLDynamicLibrary dynamicLibraryTypeAtURL:v7 device:v4 error:&v11];
  v9 = v11;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    MTLAssetUpgraderD::getDynamicLibraryType(v8, (a2 + 23), a2);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else if (!v9)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    MTLAssetUpgraderD::getArchiveType((a2 + 23), a2);
  }

LABEL_8:

  return v8;
}

uint64_t MTLAssetUpgraderD::addRecompilationWork(MTLAssetUpgraderD *a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  if (a7 | a6)
  {
    obj = MTLAssetUpgraderD::findDevice(a1, a6, a7);
    v59 = obj;
    v10 = [NSArray arrayWithObjects:&v59 count:1];
  }

  else
  {
    obj = MTLCreateSystemDefaultDevice();
    v60 = obj;
    v10 = [NSArray arrayWithObjects:&v60 count:1];
  }

  v11 = v10;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obja = v11;
  v12 = [obja countByEnumeratingWithState:&v47 objects:v58 count:16];
  v14 = v12;
  if (v12)
  {
    v43 = *v48;
    *&v13 = 136315650;
    v38 = v13;
    do
    {
      v15 = 0;
      do
      {
        if (*v48 != v43)
        {
          objc_enumerationMutation(obja);
        }

        v16 = *(*(&v47 + 1) + 8 * v15);
        ArchiveType = MTLAssetUpgraderD::getArchiveType(v12, a4, v16);
        v18 = ArchiveType;
        DynamicLibraryType = MTLAssetUpgraderD::getDynamicLibraryType(ArchiveType, a4, v16);
        if (a5 == 1 && v18 == 1)
        {
          v20 = MTLAssetUpgraderD::getCacheDirectory(3, a3);
          if (v20 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            v40 = *(a3 + 23);
            v39 = *a3;
            v33 = v20;
            v34 = [v20 fileSystemRepresentation];
            v35 = v39;
            if (v40 >= 0)
            {
              v35 = a3;
            }

            if (*(a4 + 23) >= 0)
            {
              v36 = a4;
            }

            else
            {
              v36 = *a4;
            }

            *__p = v38;
            *&__p[4] = v35;
            *&__p[12] = 2080;
            *&__p[14] = v34;
            v52 = 2080;
            v53 = v36;
            _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "addRecompilationWork: pruning (app = %s cache=%s archive=%s)", __p, 0x20u);
          }
        }

        v22 = v18 == 3 || (DynamicLibraryType & 0xFFFFFFFD) == 1;
        v23 = [v16 targetDeviceArchitecture];
        if (a5 == 0 && v22)
        {
          v24 = MTLAssetUpgraderD::getCacheDirectory(0, a3);
          v25 = [v24 URLByAppendingPathComponent:@"archiveMapping.db"];

          v26 = v25;
          std::string::basic_string[abi:ne200100]<0>(__p, [v25 fileSystemRepresentation]);
          MTLArchiveMapDB::MTLArchiveMapDB(v46, __p);
          if (SHIBYTE(v52) < 0)
          {
            operator delete(*__p);
          }

          [v23 cpuType];
          [v23 subType];
          MTLArchiveMapDB::read(v46, a4, __p);
          v27 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
          if (v27)
          {
            v32 = __p;
            if (v52 < 0)
            {
              v32 = *__p;
            }

            *buf = 138412546;
            v55 = v25;
            v56 = 2080;
            v57 = v32;
            _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "addRecompilationWork: remap(%@) -> '%s'", buf, 0x16u);
          }

          if (SHIBYTE(v52) < 0)
          {
            if (!*&__p[8])
            {
              operator delete(*__p);
LABEL_40:
              MTLVersionedDB::~MTLVersionedDB(v46);

LABEL_41:
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                MTLAssetUpgraderD::addRecompilationWork(&v44, v45);
              }

              RecompilationWork::RecompilationWork(__p, a3, a4, a5, [v23 cpuType], objc_msgSend(v23, "subType"));
              RecompilationWork::serialize(__p);
            }
          }

          else if (!HIBYTE(v52))
          {
            goto LABEL_40;
          }

          v28 = MTLAssetUpgraderD::getArchiveType(v27, __p, v16);
          v29 = v28;
          v30 = MTLAssetUpgraderD::getDynamicLibraryType(v28, a4, v16) & 0xFFFFFFFD;
          v22 = v29 == 3 || v30 == 1;
          if (SHIBYTE(v52) < 0)
          {
            operator delete(*__p);
          }

          MTLVersionedDB::~MTLVersionedDB(v46);
        }

        if (v22)
        {
          goto LABEL_41;
        }

        v15 = v15 + 1;
      }

      while (v14 != v15);
      v12 = [obja countByEnumeratingWithState:&v47 objects:v58 count:16];
      v14 = v12;
    }

    while (v12);
  }

  return 0;
}

id MTLAssetUpgraderD::findDevice(MTLAssetUpgraderD *this, int a2, int a3)
{
  v5 = MTLCreateSystemDefaultDevice();
  v20 = v5;
  v6 = [NSArray arrayWithObjects:&v20 count:1];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 targetDeviceArchitecture];
        if ([v12 cpuType] == a2 && objc_msgSend(v12, "subType") == a3)
        {
          v13 = v11;

          goto LABEL_12;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

id MTLAssetUpgraderD::getCacheDirectory(int a1, uint64_t *a2)
{
  v4 = objc_alloc_init(NSFileManager);
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [NSString stringWithUTF8String:v5];
  if (a1 == 2)
  {
    v36 = 0;
    v7 = [v4 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v36];
    v8 = v36;
    v10 = MTLAssetUpgraderD::resolveFileURL(v7, v9);
  }

  else
  {
    v35 = 0;
    v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v35];
    v8 = v35;
    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      [(MTLAssetUpgraderD *)v7 getDataContainerURL:&v34 error:&v33];
      v11 = v34;
      v12 = v33;
      v8 = v12;
      if (v11)
      {
        v14 = MTLAssetUpgraderD::resolveFileURL(v11, v13);

        v10 = [v14 URLByAppendingPathComponent:@"Library/Caches/"];
      }

      else
      {
        v32 = v12;
        v14 = [v4 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v32];
        v15 = v32;

        v10 = MTLAssetUpgraderD::resolveFileURL(v14, v16);
        v8 = v15;
      }
    }
  }

  if (!v8 && v10)
  {
    v8 = 0;
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 == 3)
        {
          v41[0] = v6;
          v41[1] = @"com.apple.metal";
          v21 = [NSArray arrayWithObjects:v41 count:2];
          v22 = [NSString pathWithComponents:v21];
          v23 = [v10 URLByAppendingPathComponent:v22];

          v31 = 0;
          v24 = [v23 checkResourceIsReachableAndReturnError:&v31];
          v8 = v31;
          if ((v24 & 1) == 0)
          {
            v20 = 0;
            v10 = v23;
            goto LABEL_34;
          }

          v10 = v23;
        }

        goto LABEL_29;
      }

      v26 = [v10 URLByAppendingPathComponent:@"com.apple.MTLAssetUpgraderD"];
      v17 = v10;
    }

    else
    {
      if (a1)
      {
        if (a1 != 1)
        {
          goto LABEL_29;
        }

        v42[0] = @"com.apple.metalassetupgrader";
        v42[1] = @"recompiled";
        v42[2] = v6;
        v17 = [NSArray arrayWithObjects:v42 count:3];
        v18 = [NSString pathWithComponents:v17];
        v19 = [v10 URLByAppendingPathComponent:v18];

        v10 = v19;
LABEL_28:

        v8 = 0;
LABEL_29:
        v30 = v8;
        v27 = [v4 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v30];
        v28 = v30;

        if (v27)
        {
          v10 = v10;
          v8 = v28;
          v20 = v10;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v38 = v10;
            v39 = 2112;
            v40 = v28;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Failed to create cache directory '%@': %@", buf, 0x16u);
          }

          v20 = 0;
          v8 = v28;
        }

        goto LABEL_34;
      }

      v25 = [v10 URLByAppendingPathComponent:@"com.apple.metalassetupgrader"];

      v17 = [v25 URLByAppendingPathComponent:@"recompiled"];

      v26 = [v17 URLByAppendingPathComponent:v6];
    }

    v10 = v26;
    goto LABEL_28;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [v8 userInfo];
    objc_claimAutoreleasedReturnValue();
    MTLAssetUpgraderD::getCacheDirectory();
  }

  v20 = 0;
LABEL_34:

  return v20;
}

void RecompilationWork::serialize(RecompilationWork *this)
{
  *(this + 13) = *(this + 3) + *(this + 4) + 40;
  if (*(this + 12))
  {
    v1 = *(this + 12);
    operator delete[]();
  }

  operator new[]();
}

uint64_t MTLWorkQueue<RecompilationWork>::push(unsigned int *a1)
{
  MTLVersionedDB::Transaction::Transaction(&v12, a1);
  if (v12)
  {
    v11 = 0;
    v2 = mdb_cursor_open(v12, a1[2], &v11);
    if (v2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v3 = mdb_strerror(v2);
        MTLWorkQueue<RecompilationWork>::push(v3, &v14);
      }

      goto LABEL_20;
    }

    for (i = mdb_cursor_get(v11, &v14, v10, 0); !i; i = mdb_cursor_get(v11, &v14, v10, 8))
    {
      if (!MTLVersionedDB::isVersionEntry(a1, v14, v15))
      {
        operator new();
      }
    }

    v5 = mdb_cursor_get(v11, &v14, v10, 6);
    if (!v5)
    {
      v5 = mdb_cursor_get(v11, &v14, v10, 12);
    }

    if (v5 == -30798)
    {
LABEL_17:
      v7 = a1[2];
      operator new();
    }

    if (!v5)
    {
      v6 = *v15 + 1;
      goto LABEL_17;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v8 = mdb_strerror(v5);
      MTLWorkQueue<RecompilationWork>::push(v8, &v13);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    MTLWorkQueue<RecompilationWork>::push();
  }

LABEL_20:
  MTLVersionedDB::Transaction::~Transaction(&v12);
  return 0;
}

void sub_10000560C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MTLVersionedDB::Transaction::~Transaction(va);
  _Unwind_Resume(a1);
}

void MTLAssetUpgraderD::processAppEvent(MTLAssetUpgraderD *a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 < 0)
  {
    v4 = *(a2 + 8);
  }

  v6 = (v5 + v4);
  if (v4 >= 10)
  {
    v7 = v5;
    do
    {
      v8 = memchr(v7, 99, v4 - 9);
      if (!v8)
      {
        break;
      }

      if (*v8 == 0x6C7070612E6D6F63 && v8[4] == 11877)
      {
        goto LABEL_15;
      }

      v7 = v8 + 1;
      v4 = v6 - v7;
    }

    while (v6 - v7 > 9);
  }

  v8 = v6;
LABEL_15:
  if ((v8 != v5 || v8 == v6) && a3 != 0)
  {
    v28 = MTLAssetUpgraderD::getAppBundleDirectory(a2);
    if (v28)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        MTLAssetUpgraderD::processAppEvent();
      }

      std::string::basic_string[abi:ne200100]<0>(__p, &unk_10001941F);
      v12 = MTLAssetUpgraderD::getCacheDirectory(2, __p);
      v27 = [v12 URLByAppendingPathComponent:@"upgraderWork.db"];

      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }

      v13 = v27;
      if (v27)
      {
        v14 = v27;
        std::string::basic_string[abi:ne200100]<0>(__p, [v27 fileSystemRepresentation]);
        MTLVersionedDB::MTLVersionedDB(v38, __p, 5, 1, 0);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(__p[0]);
        }

        v26 = objc_alloc_init(NSFileManager);
        v46 = NSURLNameKey;
        v15 = [NSArray arrayWithObjects:&v46 count:1];
        v16 = [v26 enumeratorAtURL:v28 includingPropertiesForKeys:v15 options:0 errorHandler:0];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v34 objects:v45 count:16];
        if (v18)
        {
          v19 = 0;
          v20 = *v35;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v35 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v34 + 1) + 8 * i);
              v23 = objc_autoreleasePoolPush();
              v33 = 0;
              [v22 getResourceValue:&v33 forKey:NSURLNameKey error:0];
              v24 = v33;
              if ([v24 hasSuffix:@".metallib"])
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                {
                  MTLAssetUpgraderD::processAppEvent(buf, v22, &v44);
                }

                if ([v22 getFileSystemRepresentation:__p maxLength:1024])
                {
                  std::string::basic_string[abi:ne200100]<0>(v31, __p);
                  v25 = MTLAssetUpgraderD::addRecompilationWork(a1, v38, a2, v31, 0, 0, 0);
                  if (v32 < 0)
                  {
                    operator delete(v31[0]);
                  }

                  v19 |= v25;
                }
              }

              objc_autoreleasePoolPop(v23);
            }

            v18 = [v17 countByEnumeratingWithState:&v34 objects:v45 count:16];
          }

          while (v18);

          if (v19)
          {
            __p[0] = _NSConcreteStackBlock;
            __p[1] = 3221225472;
            v40 = ___ZN17MTLAssetUpgraderD25kickRecompilationActivityEv_block_invoke;
            v41 = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
            v42 = a1;
            xpc_activity_register("com.apple.MTLAssetUpgraderD.recompilationActivity", XPC_ACTIVITY_CHECK_IN, __p);
          }
        }

        else
        {
        }

        MTLVersionedDB::~MTLVersionedDB(v38);
        v13 = v27;
      }
    }
  }
}

void sub_100005ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  MTLVersionedDB::~MTLVersionedDB(&a30);

  _Unwind_Resume(a1);
}

id MTLAssetUpgraderD::getAppBundleDirectory(uint64_t *a1)
{
  v2 = [LSApplicationRecord alloc];
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = [NSString stringWithUTF8String:v3];
  v9 = 0;
  v5 = [v2 initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v9];
  v6 = v9;

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 URL];
  }

  return v7;
}

void MTLAssetUpgraderD::kickRecompilationActivity(MTLAssetUpgraderD *this)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = ___ZN17MTLAssetUpgraderD25kickRecompilationActivityEv_block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = this;
  xpc_activity_register("com.apple.MTLAssetUpgraderD.recompilationActivity", XPC_ACTIVITY_CHECK_IN, handler);
}

void MTLAssetUpgraderD::setupAppHandler(NSObject **this)
{
  v1 = *this;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = ___ZN17MTLAssetUpgraderD15setupAppHandlerEv_block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = this;
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v1, handler);
}

void ___ZN17MTLAssetUpgraderD15setupAppHandlerEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v5 = xpc_copy_description(v3);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      ___ZN17MTLAssetUpgraderD15setupAppHandlerEv_block_invoke_cold_1();
    }

    free(v5);
  }

  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  v7 = string;
  if (string)
  {
    v8 = strcmp(string, "Application Installed");
    if (!v8 || !strcmp(v7, "Application Uninstalled"))
    {
      v9 = xpc_dictionary_get_value(v3, "UserInfo");
      v10 = v9;
      if (v9)
      {
        if (xpc_get_type(v9) == &_xpc_type_dictionary)
        {
          v12 = xpc_dictionary_get_BOOL(v10, "isPlaceholder");
          v13 = xpc_dictionary_get_array(v10, "bundleIDs");
          if (!v12)
          {
            for (i = 0; i < xpc_array_get_count(v13); ++i)
            {
              v15 = objc_autoreleasePoolPush();
              v16 = xpc_array_get_string(v13, i);
              std::string::basic_string[abi:ne200100]<0>(__p, v16);
              MTLAssetUpgraderD::processAppEvent(v4, __p, v8 == 0);
              if (v18 < 0)
              {
                operator delete(__p[0]);
              }

              objc_autoreleasePoolPop(v15);
            }
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          ___ZN17MTLAssetUpgraderD15setupAppHandlerEv_block_invoke_cold_3();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        ___ZN17MTLAssetUpgraderD15setupAppHandlerEv_block_invoke_cold_4();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      ___ZN17MTLAssetUpgraderD15setupAppHandlerEv_block_invoke_cold_2();
    }
  }

  else
  {
    v11 = xpc_copy_description(v3);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      ___ZN17MTLAssetUpgraderD15setupAppHandlerEv_block_invoke_cold_5();
    }

    free(v11);
  }
}

void MTLAssetUpgraderD::generateArchiveName(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  v12 = objc_alloc_init(NSFileManager);
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  mkdir(v4, 0x1EDu);
  do
  {
    v5 = +[NSUUID UUID];
    v6 = [v5 UUIDString];

    v7 = a1[23];
    v8 = *a1;
    v9 = [v6 UTF8String];
    if (v7 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = v8;
    }

    v11 = [NSString stringWithFormat:@"%s/%s.metallib", v10, v9];
    if ([v12 fileExistsAtPath:v11])
    {

      v11 = 0;
    }
  }

  while (!v11);
  std::string::basic_string[abi:ne200100]<0>(a2, [v11 UTF8String]);
}

id MTLAssetUpgraderD::resolveFileURL(MTLAssetUpgraderD *this, NSURL *a2)
{
  v2 = this;
  v3 = v2;
  if (v2 && ([(MTLAssetUpgraderD *)v2 isFileURL]& 1) != 0 && (v4 = realpath_DARWIN_EXTSN([(MTLAssetUpgraderD *)v3 fileSystemRepresentation], 0)) != 0)
  {
    v5 = [NSString stringWithUTF8String:v4];
    v6 = [NSURL fileURLWithPath:v5];

    free(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void MTLAssetUpgraderD::processPrune(MTLAssetUpgraderD *this)
{
  MTLAssetUpgraderD::listPrioritizedAppLaunches(&v10);
  v1 = v10;
  v2 = v11;
  if (v10 != v11)
  {
    while (1)
    {
      if (*(v1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v9, *v1, *(v1 + 1));
      }

      else
      {
        v3 = *v1;
        v9.__r_.__value_.__r.__words[2] = *(v1 + 2);
        *&v9.__r_.__value_.__l.__data_ = v3;
      }

      v4 = MTLAssetUpgraderD::getCacheDirectory(3, &v9);
      v5 = [v4 URLByAppendingPathComponent:@"archiveUsage.db"];

      if (!v5)
      {
        break;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, [v5 fileSystemRepresentation]);
      MTLArchiveUsageDB::MTLArchiveUsageDB(v8, __p);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      MTLArchiveUsageDB::prune(v8, 2419200);
      MTLVersionedDB::~MTLVersionedDB(v8);

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      v1 = (v1 + 24);
      if (v1 == v2)
      {
        goto LABEL_14;
      }
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

LABEL_14:
  v9.__r_.__value_.__r.__words[0] = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_100006390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  a18 = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t MTLAssetUpgraderD::getRecompilationType(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  if (*(a3 + 23) >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  v8 = [NSString stringWithUTF8String:v7];
  v9 = [NSURL fileURLWithPath:v8];
  v11 = MTLAssetUpgraderD::resolveFileURL(v9, v10);

  if (v11)
  {
    v24 = 0;
    if (v6)
    {
      v12 = +[NSFileManager defaultManager];
      v23 = 0;
      v13 = [v12 getRelationship:&v24 ofDirectoryAtURL:v6 toItemAtURL:v11 error:&v23];
      v14 = v23;

      if (v24)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        v16 = 1;
LABEL_21:

        goto LABEL_22;
      }

      v17 = v14;
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v17 = 0;
      if (!v5)
      {
LABEL_19:
        v14 = v17;
        goto LABEL_20;
      }
    }

    v18 = +[NSFileManager defaultManager];
    v22 = v17;
    v19 = [v18 getRelationship:&v24 ofDirectoryAtURL:v5 toItemAtURL:v11 error:&v22];
    v14 = v22;

    if (v24)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    if (v20)
    {
      v16 = 0;
      goto LABEL_21;
    }

LABEL_20:
    v16 = 2;
    goto LABEL_21;
  }

  v16 = 2;
LABEL_22:

  return v16;
}

uint64_t MTLAssetUpgraderD::getRecompilationType(uint64_t *a1, uint64_t *a2)
{
  v4 = MTLAssetUpgraderD::getAppBundleDirectory(a1);
  v5 = MTLAssetUpgraderD::getCacheDirectory(3, a1);
  RecompilationType = MTLAssetUpgraderD::getRecompilationType(v4, v5, a2);

  return RecompilationType;
}

void MTLAssetUpgraderD::processOSUpdate(MTLAssetUpgraderD *this)
{
  std::string::basic_string[abi:ne200100]<0>(&buf, &unk_10001941F);
  v27 = MTLAssetUpgraderD::getCacheDirectory(2, &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v1 = [v27 URLByAppendingPathComponent:@"upgraderWork.db"];
  if (v1)
  {
    v26 = v1;
    v2 = v1;
    std::string::basic_string[abi:ne200100]<0>(&buf, [v26 fileSystemRepresentation]);
    MTLVersionedDB::MTLVersionedDB(v39, &buf, 5, 1, 0);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    MTLAssetUpgraderD::listPrioritizedAppLaunches(&v37);
    v4 = v37;
    v29 = v38;
    if (v37 != v38)
    {
      v31 = 0;
      *&v3 = 136315394;
      v25 = v3;
      do
      {
        if (*(v4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v36, *v4, *(v4 + 1));
        }

        else
        {
          v5 = *v4;
          v36.__r_.__value_.__r.__words[2] = *(v4 + 2);
          *&v36.__r_.__value_.__l.__data_ = v5;
        }

        v6 = objc_autoreleasePoolPush();
        v7 = MTLAssetUpgraderD::getAppBundleDirectory(&v36);
        v8 = MTLAssetUpgraderD::getCacheDirectory(3, &v36);
        v9 = [v8 URLByAppendingPathComponent:@"archiveUsage.db"];
        v10 = v9;
        if (v7 && v9)
        {
          v35 = 0;
          v11 = [v9 checkResourceIsReachableAndReturnError:&v35];
          v12 = v35;
          if (v11)
          {
            v28 = v12;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v13 = &v36;
              if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v13 = v36.__r_.__value_.__r.__words[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
              *(buf.__r_.__value_.__r.__words + 4) = v13;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "processOSUpdate: updating bundleID %s", &buf, 0xCu);
            }

            v14 = v10;
            std::string::basic_string[abi:ne200100]<0>(&buf, [v10 fileSystemRepresentation]);
            MTLArchiveUsageDB::MTLArchiveUsageDB(v34, &buf);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            MTLArchiveUsageDB::getPrioritizedList(v34, v33);
            v15 = v33[0];
            v16 = v33[1];
            while (v15 != v16)
            {
              std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,unsigned int,unsigned int>::__tuple_impl(&buf, v15);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v32, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
              }

              else
              {
                v32 = buf;
              }

              v17 = +[NSFileManager defaultManager];
              if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v18 = &v32;
              }

              else
              {
                v18 = v32.__r_.__value_.__r.__words[0];
              }

              v19 = [NSString stringWithUTF8String:v18];
              v20 = [v17 fileExistsAtPath:v19];

              if (v20)
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = &v32;
                  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v21 = v32.__r_.__value_.__r.__words[0];
                  }

                  *v40 = 136315138;
                  v41 = v21;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "processOSUpdate: updating archive %s", v40, 0xCu);
                }

                RecompilationType = MTLAssetUpgraderD::getRecompilationType(v7, v8, &v32);
                if (RecompilationType == 2)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    v23 = &v36;
                    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v23 = v36.__r_.__value_.__r.__words[0];
                    }

                    v24 = &v32;
                    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v24 = v32.__r_.__value_.__r.__words[0];
                    }

                    *v40 = v25;
                    v41 = v23;
                    v42 = 2080;
                    v43 = v24;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "processOSUpdate: Invalid recompilation bundleID=%s archive=%s", v40, 0x16u);
                  }
                }

                else
                {
                  v31 |= MTLAssetUpgraderD::addRecompilationWork(this, v39, &v36, &v32, RecompilationType, v45, SHIDWORD(v45));
                }
              }

              if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v32.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              v15 += 2;
            }

            buf.__r_.__value_.__r.__words[0] = v33;
            std::vector<std::tuple<std::string,unsigned int,unsigned int>>::__destroy_vector::operator()[abi:ne200100](&buf);
            MTLVersionedDB::~MTLVersionedDB(v34);
            v12 = v28;
          }
        }

        objc_autoreleasePoolPop(v6);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        v4 = (v4 + 24);
      }

      while (v4 != v29);
      if (v31)
      {
        buf.__r_.__value_.__r.__words[0] = _NSConcreteStackBlock;
        buf.__r_.__value_.__l.__size_ = 3221225472;
        buf.__r_.__value_.__r.__words[2] = ___ZN17MTLAssetUpgraderD25kickRecompilationActivityEv_block_invoke;
        v45 = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
        v46 = this;
        xpc_activity_register("com.apple.MTLAssetUpgraderD.recompilationActivity", XPC_ACTIVITY_CHECK_IN, &buf);
      }
    }

    buf.__r_.__value_.__r.__words[0] = &v37;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&buf);
    MTLVersionedDB::~MTLVersionedDB(v39);
    v1 = v26;
  }
}

void sub_100006BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  __p = &a40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  MTLVersionedDB::~MTLVersionedDB((v40 - 192));

  _Unwind_Resume(a1);
}

void MTLAssetUpgraderD::setupXPCActivityHandler(MTLAssetUpgraderD *this)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = ___ZN17MTLAssetUpgraderD23setupXPCActivityHandlerEv_block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = this;
  xpc_activity_register("com.apple.MTLAssetUpgraderD.os-update", XPC_ACTIVITY_CHECK_IN, handler);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = ___ZN17MTLAssetUpgraderD23setupXPCActivityHandlerEv_block_invoke_91;
  v2[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v2[4] = this;
  xpc_activity_register("com.apple.MTLAssetUpgraderD.prune", XPC_ACTIVITY_CHECK_IN, v2);
}

void ___ZN17MTLAssetUpgraderD23setupXPCActivityHandlerEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    ___ZN17MTLAssetUpgraderD23setupXPCActivityHandlerEv_block_invoke_cold_1();
  }

  if (xpc_activity_get_state(v3))
  {
    MTLAssetUpgraderD::processOSUpdate(v4);
  }

  objc_autoreleasePoolPop(v5);
}

void ___ZN17MTLAssetUpgraderD23setupXPCActivityHandlerEv_block_invoke_91(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    ___ZN17MTLAssetUpgraderD23setupXPCActivityHandlerEv_block_invoke_91_cold_1();
  }

  state = xpc_activity_get_state(v2);
  if (state)
  {
    MTLAssetUpgraderD::processPrune(state);
  }

  objc_autoreleasePoolPop(v3);
}

void MTLAssetUpgraderD::popCurrentWorkItem(MTLAssetUpgraderD *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, &unk_10001941F);
  v1 = MTLAssetUpgraderD::getCacheDirectory(2, __p);
  v2 = [v1 URLByAppendingPathComponent:@"upgraderWork.db"];

  if (v5 < 0)
  {
    operator delete(__p[0]);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else if (!v2)
  {
    goto LABEL_8;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, [v2 fileSystemRepresentation]);
  MTLVersionedDB::MTLVersionedDB(v3, __p, 5, 1, 0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  MTLWorkQueue<RecompilationWork>::pop(v3);
  MTLVersionedDB::~MTLVersionedDB(v3);
LABEL_8:
}

void sub_100006FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  MTLVersionedDB::~MTLVersionedDB(&a10);

  _Unwind_Resume(a1);
}

void MTLWorkQueue<RecompilationWork>::pop(unsigned int *a1)
{
  MTLVersionedDB::Transaction::Transaction(&v10, a1);
  if (!v10)
  {
    goto LABEL_15;
  }

  v9 = 0;
  v2 = mdb_cursor_open(v10, a1[2], &v9);
  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v3 = mdb_strerror(v2);
      MTLWorkQueue<RecompilationWork>::push(v3, v12);
    }

    goto LABEL_15;
  }

  v4 = mdb_cursor_get(v9, v12, v8, 0);
  if (!v4)
  {
    if (!MTLVersionedDB::isVersionEntry(a1, v12[0], v12[1]))
    {
LABEL_10:
      v5 = mdb_cursor_del(v9, 0);
      if (v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v6 = mdb_strerror(v5);
        MTLWorkQueue<RecompilationWork>::pop(v6, v11);
      }

      goto LABEL_15;
    }

    v4 = mdb_cursor_get(v9, v12, v8, 8);
  }

  if (v4 == -30798)
  {
    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = mdb_strerror(v4);
    MTLWorkQueue<RecompilationWork>::push(v7, v11);
  }

LABEL_15:
  MTLVersionedDB::Transaction::~Transaction(&v10);
}

void sub_1000071A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MTLVersionedDB::Transaction::~Transaction(va);
  _Unwind_Resume(a1);
}

void MTLAssetUpgraderD::remapTemporary(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (*(v4 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *(v4 + 48), *(v4 + 56));
  }

  else
  {
    v36 = *(v4 + 48);
  }

  v5 = MTLAssetUpgraderD::getCacheDirectory(1, &v36);
  v6 = v5;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if (!v6)
    {
      goto LABEL_70;
    }
  }

  else if (!v5)
  {
    goto LABEL_70;
  }

  v7 = v6;
  std::string::basic_string[abi:ne200100]<0>(&v36, [v6 fileSystemRepresentation]);
  MTLAssetUpgraderD::generateArchiveName(&v36, __p);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v8 = __p;
    if (v34 < 0)
    {
      v8 = __p[0];
    }

    LODWORD(v36.__r_.__value_.__l.__data_) = 136315138;
    *(v36.__r_.__value_.__r.__words + 4) = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "recompilation: rename bundle temporary to %s", &v36, 0xCu);
  }

  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v34 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (renamex_np(v9, v10, 0x10u))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      if (v34 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      v12 = __error();
      v13 = strerror(*v12);
      MTLAssetUpgraderD::remapTemporary(v13, &v36, v11, a2);
    }

    v14 = 0;
    goto LABEL_67;
  }

  v15 = *(a1 + 8);
  if (*(v15 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *(v15 + 48), *(v15 + 56));
  }

  else
  {
    v36 = *(v15 + 48);
  }

  v16 = MTLAssetUpgraderD::getCacheDirectory(0, &v36);
  v17 = [v16 URLByAppendingPathComponent:@"archiveMapping.db"];

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if (v17)
    {
LABEL_34:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        LODWORD(v36.__r_.__value_.__l.__data_) = 138412290;
        *(v36.__r_.__value_.__r.__words + 4) = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "recompilation: storing bundle archive map %@", &v36, 0xCu);
      }

      v18 = v17;
      std::string::basic_string[abi:ne200100]<0>(&v36, [v17 fileSystemRepresentation]);
      MTLArchiveMapDB::MTLArchiveMapDB(v32, &v36);
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      v19 = *(a1 + 8);
      if (*(v19 + 95) < 0)
      {
        std::string::__init_copy_ctor_external(&v35, *(v19 + 72), *(v19 + 80));
        v19 = *(a1 + 8);
      }

      else
      {
        v35 = *(v19 + 72);
      }

      v20 = *(v19 + 12);
      v21 = *(v19 + 16);
      MTLArchiveMapDB::read(v32, &v35, &v36);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      v22 = *(a1 + 8);
      if (*(v22 + 95) < 0)
      {
        std::string::__init_copy_ctor_external(&v35, *(v22 + 72), *(v22 + 80));
        v22 = *(a1 + 8);
      }

      else
      {
        v35 = *(v22 + 72);
      }

      MTLArchiveMapDB::store(v32, &v35, __p, *(v22 + 12), *(v22 + 16));
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!v36.__r_.__value_.__l.__size_)
        {
          v14 = 0;
LABEL_63:
          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
          }

          goto LABEL_65;
        }
      }

      else if (!*(&v36.__r_.__value_.__s + 23))
      {
        v14 = 0;
LABEL_65:
        MTLVersionedDB::~MTLVersionedDB(v32);
        goto LABEL_66;
      }

      v23 = +[NSFileManager defaultManager];
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v36;
      }

      else
      {
        v24 = v36.__r_.__value_.__r.__words[0];
      }

      v25 = [NSString stringWithUTF8String:v24];
      v31 = 0;
      [v23 removeItemAtPath:v25 error:&v31];
      v14 = v31;

      if (v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v26 = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
        v27 = v36.__r_.__value_.__r.__words[0];
        v28 = [v14 userInfo];
        v29 = v28;
        v30 = &v36;
        if (v26 < 0)
        {
          v30 = v27;
        }

        LODWORD(v35.__r_.__value_.__l.__data_) = 136315394;
        *(v35.__r_.__value_.__r.__words + 4) = v30;
        WORD2(v35.__r_.__value_.__r.__words[1]) = 2112;
        *(&v35.__r_.__value_.__r.__words[1] + 6) = v28;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "recompilation: removal of replaced binary archive '%s' failed: %@", &v35, 0x16u);
      }

      goto LABEL_63;
    }
  }

  else if (v17)
  {
    goto LABEL_34;
  }

  v14 = 0;
LABEL_66:

LABEL_67:
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_70:
}

void sub_10000769C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  MTLVersionedDB::~MTLVersionedDB(&a10);

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

BOOL MTLAssetUpgraderD::recompileSingleStep(MTLAssetUpgraderD *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_10001941F);
  v2 = MTLAssetUpgraderD::getCacheDirectory(2, &__p.st_dev);
  v3 = [v2 URLByAppendingPathComponent:@"upgraderWork.db"];

  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
    if (v3)
    {
LABEL_3:
      v4 = v3;
      std::string::basic_string[abi:ne200100]<0>(&__p, [v3 fileSystemRepresentation]);
      MTLVersionedDB::MTLVersionedDB(v152, &__p.st_dev, 5, 1, 0);
      if (SHIBYTE(__p.st_gid) < 0)
      {
        operator delete(*&__p.st_dev);
      }

      MTLWorkQueue<RecompilationWork>::peek(v152, &v151);
      v5 = v151 != 0;
      if (!v151)
      {
        goto LABEL_69;
      }

      if (*(v151 + 40) == 1)
      {
        v6 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          if (*(v151 + 95) < 0)
          {
            std::string::__init_copy_ctor_external(v154, *(v151 + 72), *(v151 + 80));
          }

          else
          {
            *v154 = *(v151 + 72);
            *&v154[16] = *(v151 + 88);
          }

          MTLAssetUpgraderD::recompileSingleStep();
        }

LABEL_65:

LABEL_66:
        MTLWorkQueue<RecompilationWork>::pop(v152);
LABEL_67:
        v28 = v151;
        v151 = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

LABEL_69:
        MTLVersionedDB::~MTLVersionedDB(v152);
        goto LABEL_70;
      }

      MTLWorkQueue<RecompilationWork>::setState(v152);
      if (*(v151 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v151 + 48), *(v151 + 56));
      }

      else
      {
        *&__p.st_dev = *(v151 + 48);
        *&__p.st_uid = *(v151 + 64);
      }

      st_gid_high = SHIBYTE(__p.st_gid);
      v8 = *&__p.st_dev;
      if ((__p.st_gid & 0x80000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = *&__p.st_dev;
      }

      if ((__p.st_gid & 0x80000000) == 0)
      {
        st_ino = SHIBYTE(__p.st_gid);
      }

      else
      {
        st_ino = __p.st_ino;
      }

      v11 = (p_p + st_ino);
      if (st_ino >= 10)
      {
        v12 = p_p;
        do
        {
          v13 = memchr(v12, 99, st_ino - 9);
          if (!v13)
          {
            break;
          }

          if (*&v13->st_dev == 0x6C7070612E6D6F63 && LOWORD(v13->st_ino) == 11877)
          {
            goto LABEL_30;
          }

          v12 = (&v13->st_dev + 1);
          st_ino = v11 - v12;
        }

        while (v11 - v12 > 9);
      }

      v13 = v11;
LABEL_30:
      v16 = v13 != v11 && v13 == p_p;
      if (st_gid_high < 0)
      {
        operator delete(v8);
        if (v16)
        {
LABEL_38:
          v17 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            if (*(v151 + 71) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(v151 + 48), *(v151 + 56));
            }

            else
            {
              *&__p.st_dev = *(v151 + 48);
              *&__p.st_uid = *(v151 + 64);
            }

            MTLAssetUpgraderD::recompileSingleStep();
          }

          goto LABEL_65;
        }
      }

      else if (v16)
      {
        goto LABEL_38;
      }

      v18 = v151;
      if (*(v151 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v151 + 48), *(v151 + 56));
        v18 = v151;
      }

      else
      {
        *&__p.st_dev = *(v151 + 48);
        *&__p.st_uid = *(v151 + 64);
      }

      if (*(v18 + 95) < 0)
      {
        std::string::__init_copy_ctor_external(v154, *(v18 + 72), *(v18 + 80));
      }

      else
      {
        *v154 = *(v18 + 72);
        *&v154[16] = *(v18 + 88);
      }

      RecompilationType = MTLAssetUpgraderD::getRecompilationType(&__p.st_dev, v154);
      v20 = RecompilationType;
      v21 = *(v151 + 8);
      if ((v154[23] & 0x80000000) != 0)
      {
        operator delete(*v154);
      }

      if (SHIBYTE(__p.st_gid) < 0)
      {
        operator delete(*&__p.st_dev);
      }

      if (v20 != v21)
      {
        v27 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v51 = v151;
          if (*(v151 + 71) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(v151 + 48), *(v151 + 56));
            v51 = v151;
          }

          else
          {
            *&__p.st_dev = *(v151 + 48);
            *&__p.st_uid = *(v151 + 64);
          }

          if ((__p.st_gid & 0x80000000) == 0)
          {
            v52 = &__p;
          }

          else
          {
            v52 = *&__p.st_dev;
          }

          if (*(v51 + 95) < 0)
          {
            std::string::__init_copy_ctor_external(v154, *(v51 + 72), *(v51 + 80));
          }

          else
          {
            *v154 = *(v51 + 72);
            *&v154[16] = *(v51 + 88);
          }

          v53 = v154;
          if (v154[23] < 0)
          {
            v53 = *v154;
          }

          LODWORD(v156.__r_.__value_.__l.__data_) = 136315394;
          *(v156.__r_.__value_.__r.__words + 4) = v52;
          WORD2(v156.__r_.__value_.__r.__words[1]) = 2080;
          *(&v156.__r_.__value_.__r.__words[1] + 6) = v53;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "recompilation: invalid archive for recompilation bundleID=%s archivePath=%s", &v156, 0x16u);
          if ((v154[23] & 0x80000000) != 0)
          {
            operator delete(*v154);
          }

          if (SHIBYTE(__p.st_gid) < 0)
          {
            operator delete(*&__p.st_dev);
          }
        }

        goto LABEL_65;
      }

      v22 = MTLAssetUpgraderD::findDevice(RecompilationType, *(v151 + 12), *(v151 + 16));
      v23 = *(this + 2);
      *(this + 2) = v22;

      if (!*(this + 2))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v31 = *(v151 + 12);
          v30 = *(v151 + 16);
          __p.st_dev = 67109376;
          *&__p.st_mode = v31;
          LOWORD(__p.st_ino) = 1024;
          *(&__p.st_ino + 2) = v30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "recompilation: couldn't find device for (%08X %08X)", &__p, 0xEu);
        }

        goto LABEL_66;
      }

      v25 = this + 8;
      v24 = *(this + 1);
      v26 = v151;
      v151 = 0;
      *(this + 1) = v26;
      if (v24)
      {
        (*(*v24 + 8))(v24);
        v26 = *v25;
      }

      if (*(v26 + 95) < 0)
      {
        std::string::__init_copy_ctor_external(&v156, *(v26 + 72), *(v26 + 80));
      }

      else
      {
        v156 = *(v26 + 72);
      }

      v32 = objc_opt_new();
      if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v156;
      }

      else
      {
        v33 = v156.__r_.__value_.__r.__words[0];
      }

      v34 = [NSString stringWithUTF8String:v33];
      v35 = [NSURL fileURLWithPath:v34];
      [v32 setUrl:v35];

      [v32 setOptions:{objc_msgSend(v32, "options") | 0x18}];
      v36 = [v32 url];
      v37 = v36;
      LOBYTE(v35) = stat([v36 fileSystemRepresentation], &__p) == 0;

      if ((v35 & 1) == 0)
      {
        v38 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v38)
        {
          [v32 url];
          objc_claimAutoreleasedReturnValue();
          MTLAssetUpgraderD::recompileSingleStep();
        }

        MTLAssetUpgraderD::popCurrentWorkItem(v38);
        v39 = 0;
        goto LABEL_191;
      }

      std::string::basic_string[abi:ne200100]<0>(v154, &unk_10001941F);
      v40 = MTLAssetUpgraderD::getCacheDirectory(2, v154);
      if ((v154[23] & 0x80000000) != 0)
      {
        operator delete(*v154);
      }

      v134 = v40;
      v135 = [v40 URLByAppendingPathComponent:@"temp"];
      v41 = +[NSFileManager defaultManager];
      v150 = 0;
      v42 = [v41 createDirectoryAtURL:v135 withIntermediateDirectories:1 attributes:0 error:&v150];
      v39 = v150;

      if ((v42 & 1) == 0)
      {
        v50 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v50)
        {
          MTLAssetUpgraderD::recompileSingleStep();
        }

        MTLAssetUpgraderD::popCurrentWorkItem(v50);
        goto LABEL_190;
      }

      v43 = v135;
      std::string::basic_string[abi:ne200100]<0>(v154, [v135 fileSystemRepresentation]);
      MTLAssetUpgraderD::generateArchiveName(v154, v148);
      if ((v154[23] & 0x80000000) != 0)
      {
        operator delete(*v154);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v44 = v148;
        if (v149 < 0)
        {
          v44 = v148[0];
        }

        *v154 = 136315138;
        *&v154[4] = v44;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "recompilation: bundle temporary location %s", v154, 0xCu);
      }

      v45 = [v32 url];
      v46 = *(this + 2);
      v147 = v39;
      v47 = [_MTLBinaryArchive archiveTypeAtURL:v45 device:v46 error:&v147];
      v48 = v147;

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        if (v47 > 4)
        {
          v49 = "Unknown";
        }

        else
        {
          v49 = off_100020630[v47];
        }

        v54 = [v32 url];
        *v154 = 136315394;
        *&v154[4] = v49;
        *&v154[12] = 2112;
        *&v154[14] = v54;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "recompilation: %s - %@", v154, 0x16u);
      }

      if (v47 != 3)
      {
        v58 = [v32 url];
        v59 = *(this + 2);
        v146 = v48;
        v60 = [_MTLDynamicLibrary dynamicLibraryTypeAtURL:v58 device:v59 error:&v146];
        v61 = v146;

        v62 = v61;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          if (v60 > 4)
          {
            v63 = "Unknown";
          }

          else
          {
            v63 = off_100020658[v60];
          }

          v70 = [v32 url];
          *v154 = 136315394;
          *&v154[4] = v63;
          *&v154[12] = 2112;
          *&v154[14] = v70;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "recompilation: %s - %@", v154, 0x16u);
        }

        if ((v60 & 0xFFFFFFFD) != 1)
        {
          v76 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
          if (v76)
          {
            v77 = [v32 url];
            *v154 = 138412290;
            *&v154[4] = v77;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "recompilation: %@ has unexpected dylib type", v154, 0xCu);
          }

          MTLAssetUpgraderD::popCurrentWorkItem(v76);
          goto LABEL_187;
        }

        v71 = *(this + 2);
        v72 = [v32 url];
        v145 = 0;
        v133 = [v71 newDynamicLibraryWithURL:v72 error:&v145];
        v56 = v145;

        if (v56)
        {
          v73 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v73)
          {
            v74 = [v32 url];
            v75 = [v56 userInfo];
            MTLAssetUpgraderD::recompileSingleStep(v74, v75, v154);
          }

          MTLAssetUpgraderD::popCurrentWorkItem(v73);
          goto LABEL_186;
        }

        if (v149 >= 0)
        {
          v78 = v148;
        }

        else
        {
          v78 = v148[0];
        }

        v79 = [NSString stringWithUTF8String:v78];
        v80 = [NSURL fileURLWithPath:v79];
        v144 = 0;
        [v133 serializeToURL:v80 error:&v144];
        v56 = v144;

        if (v56)
        {
          v81 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v81)
          {
            [v32 url];
            objc_claimAutoreleasedReturnValue();
            MTLAssetUpgraderD::recompileSingleStep();
          }

          MTLAssetUpgraderD::popCurrentWorkItem(v81);
          goto LABEL_186;
        }

        MTLAssetUpgraderD::remapTemporary(this, v148);
        goto LABEL_185;
      }

      v55 = *(this + 2);
      v143 = v48;
      v133 = [v55 newBinaryArchiveWithDescriptor:v32 error:&v143];
      v56 = v143;

      if (v56)
      {
        v57 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v57)
        {
          v95 = SHIBYTE(v156.__r_.__value_.__r.__words[2]);
          v96 = v156.__r_.__value_.__r.__words[0];
          v97 = [v56 userInfo];
          v98 = v97;
          v99 = &v156;
          if (v95 < 0)
          {
            v99 = v96;
          }

          *v154 = 136315394;
          *&v154[4] = v99;
          *&v154[12] = 2112;
          *&v154[14] = v97;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "recompilation: failed open of archive '%s': %@", v154, 0x16u);
        }

        MTLAssetUpgraderD::popCurrentWorkItem(v57);
LABEL_186:

        v62 = v56;
        goto LABEL_187;
      }

      if (v149 >= 0)
      {
        v64 = v148;
      }

      else
      {
        v64 = v148[0];
      }

      v65 = [NSString stringWithUTF8String:v64];
      v66 = [NSURL fileURLWithPath:v65];
      v142 = 0;
      v67 = [v133 recompileToArchiveWithURL:v66 error:&v142];
      v56 = v142;

      v68 = *v25;
      v69 = *(*v25 + 8);
      if (!v69)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v82 = v148;
          if (v149 < 0)
          {
            v82 = v148[0];
          }

          *v154 = 136315138;
          *&v154[4] = v82;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "recompilation: serialize bundle temporary %s", v154, 0xCu);
        }

        if ((v67 & 1) == 0)
        {
          v83 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v83)
          {
            v113 = SHIBYTE(v156.__r_.__value_.__r.__words[2]);
            v114 = v156.__r_.__value_.__r.__words[0];
            v115 = v149;
            v116 = v148[0];
            v117 = [v56 userInfo];
            v118 = v117;
            v119 = v148;
            if (v115 < 0)
            {
              v119 = v116;
            }

            *v154 = 136315650;
            v120 = &v156;
            if (v113 < 0)
            {
              v120 = v114;
            }

            *&v154[4] = v120;
            *&v154[12] = 2080;
            *&v154[14] = v119;
            *&v154[22] = 2112;
            *&v154[24] = v117;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "recompilation: recompilation failed for archive '%s' to '%s' : %@", v154, 0x20u);
          }

          MTLAssetUpgraderD::popCurrentWorkItem(v83);
          goto LABEL_186;
        }

        MTLAssetUpgraderD::remapTemporary(this, v148);
        goto LABEL_185;
      }

      if (v69 != 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          MTLAssetUpgraderD::recompileSingleStep(this + 8);
        }

        goto LABEL_185;
      }

      if (*(v68 + 95) < 0)
      {
        std::string::__init_copy_ctor_external(&v141, *(v68 + 72), *(v68 + 80));
      }

      else
      {
        v141 = *(v68 + 72);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v84 = v148;
        if (v149 < 0)
        {
          v84 = v148[0];
        }

        *v154 = 136315138;
        *&v154[4] = v84;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "recompilation: serialize cache temporary %s", v154, 0xCu);
      }

      if (v67)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v85 = &v141;
          if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v85 = v141.__r_.__value_.__r.__words[0];
          }

          *v154 = 136315138;
          *&v154[4] = v85;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "recompilation: rename cache temporary to %s", v154, 0xCu);
        }

        if (v149 >= 0)
        {
          v86 = v148;
        }

        else
        {
          v86 = v148[0];
        }

        if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v87 = &v141;
        }

        else
        {
          v87 = v141.__r_.__value_.__r.__words[0];
        }

        if (!renamex_np(v86, v87, 0x10u))
        {
          v132 = objc_opt_new();
          if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v100 = &v141;
          }

          else
          {
            v100 = v141.__r_.__value_.__r.__words[0];
          }

          v101 = [NSString stringWithUTF8String:v100];
          v102 = [NSURL fileURLWithPath:v101];
          [v132 setUrl:v102];

          v103 = *(this + 2);
          v140 = v56;
          v130 = [v103 newBinaryArchiveWithDescriptor:v132 error:&v140];
          v131 = v140;

          if (v131)
          {
            v104 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
            if (v104)
            {
              [v131 userInfo];
              objc_claimAutoreleasedReturnValue();
              MTLAssetUpgraderD::recompileSingleStep();
            }

            MTLAssetUpgraderD::popCurrentWorkItem(v104);
          }

          else
          {
            v129 = [v130 archiveFunctionIds];
            v105 = objc_alloc_init(NSMutableArray);
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v106 = v129;
            v107 = [v106 countByEnumeratingWithState:&v136 objects:v153 count:16];
            if (v107)
            {
              v108 = *v137;
              do
              {
                for (i = 0; i != v107; i = i + 1)
                {
                  if (*v137 != v108)
                  {
                    objc_enumerationMutation(v106);
                  }

                  v110 = [*(*(&v136 + 1) + 8 * i) pointerValue];
                  v111 = *(v110 + 40);
                  *v154 = *(v110 + 24);
                  *&v154[16] = v111;
                  v112 = [NSData dataWithBytes:v154 length:32];
                  [v105 addObject:v112];
                }

                v107 = [v106 countByEnumeratingWithState:&v136 objects:v153 count:16];
              }

              while (v107);
            }
          }

          v56 = v131;
          v93 = v131 == 0;
LABEL_182:
          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
          }

          if (!v93)
          {
            goto LABEL_186;
          }

LABEL_185:

          MTLAssetUpgraderD::popCurrentWorkItem(v94);
          v62 = v56;
LABEL_187:
          if (v149 < 0)
          {
            operator delete(v148[0]);
          }

          v39 = v62;
LABEL_190:

LABEL_191:
          if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v156.__r_.__value_.__l.__data_);
          }

          goto LABEL_67;
        }

        v88 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v88)
        {
          if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v89 = &v141;
          }

          else
          {
            v89 = v141.__r_.__value_.__r.__words[0];
          }

          if (v149 >= 0)
          {
            v90 = v148;
          }

          else
          {
            v90 = v148[0];
          }

          v91 = __error();
          v92 = strerror(*v91);
          MTLAssetUpgraderD::remapTemporary(v92, v154, v89, v90);
        }
      }

      else
      {
        v88 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v88)
        {
          v121 = SHIBYTE(v156.__r_.__value_.__r.__words[2]);
          v122 = v156.__r_.__value_.__r.__words[0];
          v123 = v149;
          v124 = v148[0];
          v125 = [v56 userInfo];
          v126 = v125;
          v127 = v148;
          if (v123 < 0)
          {
            v127 = v124;
          }

          *v154 = 136315650;
          v128 = &v156;
          if (v121 < 0)
          {
            v128 = v122;
          }

          *&v154[4] = v128;
          *&v154[12] = 2080;
          *&v154[14] = v127;
          *&v154[22] = 2112;
          *&v154[24] = v125;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "recompilation: recompilation failed for archive '%s' to '%s' : %@", v154, 0x20u);
        }
      }

      MTLAssetUpgraderD::popCurrentWorkItem(v88);
      v93 = 0;
      goto LABEL_182;
    }
  }

  else if (v3)
  {
    goto LABEL_3;
  }

  v5 = 0;
LABEL_70:

  return v5;
}

void sub_100008A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  if (a46)
  {
    (*(*a46 + 8))(a46);
  }

  MTLVersionedDB::~MTLVersionedDB(&a47);

  _Unwind_Resume(a1);
}

void MTLWorkQueue<RecompilationWork>::peek(unsigned int *a1@<X0>, void *a2@<X8>)
{
  MTLVersionedDB::Transaction::Transaction(&v10, a1);
  if (!v10)
  {
    goto LABEL_13;
  }

  v9 = 0;
  v4 = mdb_cursor_open(v10, a1[2], &v9);
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = mdb_strerror(v4);
      MTLWorkQueue<RecompilationWork>::push(v5, v12);
    }

    goto LABEL_13;
  }

  v6 = mdb_cursor_get(v9, v12, v8, 0);
  if (!v6)
  {
    if (!MTLVersionedDB::isVersionEntry(a1, v12[0], v12[1]))
    {
      goto LABEL_10;
    }

    v6 = mdb_cursor_get(v9, v12, v8, 8);
  }

  if (v6 == -30798)
  {
    goto LABEL_13;
  }

  if (!v6)
  {
LABEL_10:
    operator new();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = mdb_strerror(v6);
    MTLWorkQueue<RecompilationWork>::push(v7, v11);
  }

LABEL_13:
  *a2 = 0;
  MTLVersionedDB::Transaction::~Transaction(&v10);
}

void sub_100008F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MTLVersionedDB::Transaction::~Transaction(va);
  _Unwind_Resume(a1);
}

void MTLWorkQueue<RecompilationWork>::setState(unsigned int *a1)
{
  MTLVersionedDB::Transaction::Transaction(&v8, a1);
  if (!v8)
  {
    goto LABEL_13;
  }

  v7 = 0;
  v2 = mdb_cursor_open(v8, a1[2], &v7);
  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v3 = mdb_strerror(v2);
      MTLWorkQueue<RecompilationWork>::push(v3, v10);
    }

    goto LABEL_13;
  }

  v4 = mdb_cursor_get(v7, v10, v6, 0);
  if (!v4)
  {
    if (!MTLVersionedDB::isVersionEntry(a1, v10[0], v10[1]))
    {
      goto LABEL_10;
    }

    v4 = mdb_cursor_get(v7, v10, v6, 8);
  }

  if (v4 == -30798)
  {
    goto LABEL_13;
  }

  if (!v4)
  {
LABEL_10:
    operator new();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = mdb_strerror(v4);
    MTLWorkQueue<RecompilationWork>::push(v5, &v9);
  }

LABEL_13:
  MTLVersionedDB::Transaction::~Transaction(&v8);
}

void sub_100009220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MTLVersionedDB::Transaction::~Transaction(va);
  _Unwind_Resume(a1);
}

void ___ZN17MTLAssetUpgraderD25kickRecompilationActivityEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    state = xpc_activity_get_state(v3);
    ___ZN17MTLAssetUpgraderD25kickRecompilationActivityEv_block_invoke_cold_1(state, buf);
  }

  if (xpc_activity_get_state(v3))
  {
    v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    do
    {
      if (!MTLAssetUpgraderD::recompileSingleStep(v4))
      {
        goto LABEL_22;
      }
    }

    while (std::chrono::steady_clock::now().__d_.__rep_ - v6.__d_.__rep_ < 2501000000 || !xpc_activity_should_defer(v3));
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      ___ZN17MTLAssetUpgraderD25kickRecompilationActivityEv_block_invoke_cold_2();
    }

    std::string::basic_string[abi:ne200100]<0>(__p, &unk_10001941F);
    v7 = MTLAssetUpgraderD::getCacheDirectory(2, __p);
    empty = [v7 URLByAppendingPathComponent:@"upgraderWork.db"];

    if (v12 < 0)
    {
      operator delete(__p[0]);
      if (!empty)
      {
LABEL_18:
        if (!xpc_activity_set_state(v3, 3) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          ___ZN17MTLAssetUpgraderD25kickRecompilationActivityEv_block_invoke_cold_3();
        }

        goto LABEL_21;
      }
    }

    else if (!empty)
    {
      goto LABEL_18;
    }

    v9 = empty;
    std::string::basic_string[abi:ne200100]<0>(__p, [empty fileSystemRepresentation]);
    MTLVersionedDB::MTLVersionedDB(v10, __p, 5, 1, 0);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    MTLWorkQueue<RecompilationWork>::setState(v10);
    MTLVersionedDB::~MTLVersionedDB(v10);
    goto LABEL_18;
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(empty, XPC_ACTIVITY_DELAY, 5);
  xpc_activity_set_criteria(v3, empty);
LABEL_21:

LABEL_22:
}

void sub_1000094C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  MTLVersionedDB::~MTLVersionedDB(&a10);

  _Unwind_Resume(a1);
}

void MTLAssetUpgraderD::run(id *this)
{
  objc_storeStrong(this, &_dispatch_main_q);
  MTLAssetUpgraderD::setupAppHandler(this);
  MTLAssetUpgraderD::setupXPCActivityHandler(this);
  MTLAssetUpgraderD::kickRecompilationActivity(this);
  dispatch_main();
}

int main(int argc, const char **argv, const char **envp)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v3[0]) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MTLAssetUpgraderD startup", v3, 2u);
  }

  memset(v3, 0, 24);
  MTLAssetUpgraderD::run(v3);
}

uint64_t RecompilationWork::RecompilationWork(uint64_t a1, __int128 *a2, __int128 *a3, int a4, int a5, int a6)
{
  *a1 = off_1000205E0;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 37) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 64) = *(a2 + 2);
    *(a1 + 48) = v9;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(a1 + 88) = *(a3 + 2);
    *(a1 + 72) = v10;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v11 = *(a2 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 1);
  }

  *(a1 + 24) = v11;
  v12 = *(a3 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a3 + 1);
  }

  *(a1 + 32) = v12;
  return a1;
}

void sub_1000096F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void RecompilationWork::~RecompilationWork(RecompilationWork *this)
{
  RecompilationWork::~RecompilationWork(this);

  operator delete();
}

{
  *this = off_1000205E0;
  if (*(this + 12))
  {
    operator delete[]();
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }
}

double RecompilationWork::deserialize(uint64_t a1, void *a2)
{
  if (*a2 >= 0x28uLL)
  {
    v13 = v2;
    v14 = v3;
    v6 = a2[1];
    v7 = *v6;
    v8 = v6[1];
    *(a1 + 40) = *(v6 + 4);
    *(a1 + 24) = v8;
    *(a1 + 8) = v7;
    v9 = *(a1 + 24);
    if (*a2 == v9 + *(a1 + 32) + 40)
    {
      std::string::basic_string[abi:ne200100](&__dst, (a2[1] + 40), v9);
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      *(a1 + 48) = __dst;
      *(a1 + 64) = v12;
      std::string::basic_string[abi:ne200100](&__dst, (a2[1] + *(a1 + 24) + 40), *(a1 + 32));
      if (*(a1 + 95) < 0)
      {
        operator delete(*(a1 + 72));
      }

      *&v7 = __dst;
      *(a1 + 72) = __dst;
      *(a1 + 88) = v12;
    }
  }

  return *&v7;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void MTLAssetUpgraderD::~MTLAssetUpgraderD(id *this)
{
  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

BOOL operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = *(a2 + 71);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 56);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 48) : *(a1 + 48);
  v9 = v7 >= 0 ? (a2 + 48) : *(a2 + 48);
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  v10 = *(a1 + 95);
  if (v10 >= 0)
  {
    v11 = *(a1 + 95);
  }

  else
  {
    v11 = *(a1 + 80);
  }

  v12 = *(a2 + 95);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 80);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v16 = *(a1 + 72);
  v15 = (a1 + 72);
  v14 = v16;
  if (v10 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v20 = *(a2 + 72);
  v19 = (a2 + 72);
  v18 = v20;
  if (v13 >= 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v18;
  }

  return memcmp(v17, v21, v11) == 0;
}

{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
}

{
  return *(a1 + 1088) == 1 && *(a2 + 1088) == 1 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  *a2 = a5;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2080;
  *(a2 + 14) = a4;
  *(a2 + 22) = 2080;
  *(a2 + 24) = result;
  return result;
}

char *OUTLINED_FUNCTION_8@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  if (*result < 0)
  {
    v4 = *a2;
  }

  return result;
}

void OUTLINED_FUNCTION_9(uint64_t a1, char *a2, uint64_t *a3)
{
  if (*a2 < 0)
  {
    v3 = *a3;
  }
}

uint64_t *OUTLINED_FUNCTION_10(uint64_t *result)
{
  if (*(result + 23) < 0)
  {
    v1 = *result;
  }

  return result;
}

void FileSignature::FileSignature(FileSignature *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
}

uint64_t FileSignature::FileSignature(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (!stat(v4, &v11))
  {
    *a1 = v11.st_dev;
    *(a1 + 8) = v11.st_ino;
  }

  v10 = 0;
  v9 = xmmword_1000187CC;
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (!getattrlist(v5, &v9, v7, 8uLL, 0x20u))
  {
    *(a1 + 16) = v8;
  }

  return a1;
}

uint64_t ArchivePayload::ArchivePayload(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *a1 = a4;
  *(a1 + 4) = a5;
  FileSignature::FileSignature(a1 + 8, a2);
  FileSignature::FileSignature(a1 + 32, a3);
  *(a1 + 1080) = 0;
  v7 = *(a3 + 23);
  if ((v7 & 0x8000000000000000) != 0 && (v7 = *(a3 + 8), v7 >= 0x401))
  {
    v9 = 0;
  }

  else
  {
    std::string::copy(a3, (a1 + 56), v7, 0);
    v8 = *(a3 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a3 + 8);
    }

    *(a1 + 1080) = v8;
    v9 = 1;
  }

  *(a1 + 1088) = v9;
  return a1;
}

_DWORD *ArchivePayload::ArchivePayload(_DWORD *__dst, size_t __n, void *__src)
{
  __dst[2] = 0;
  *(__dst + 2) = 0;
  __dst[6] = 0;
  __dst[8] = 0;
  *(__dst + 5) = 0;
  __dst[12] = 0;
  *(__dst + 135) = 0;
  *(__dst + 1088) = 0;
  if (__n - 1081 >= 0xFFFFFFFFFFFFFBFFLL)
  {
    memcpy(__dst, __src, __n);
    *(__dst + 135) = __n - 56;
    *(__dst + 1088) = 1;
  }

  return __dst;
}

void *ArchivePayload::getRecompiledArchive@<X0>(void *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = this[135];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    this = memcpy(a2, this + 7, v3);
  }

  a2[v3] = 0;
  return this;
}

BOOL ArchivePayload::matchesCurrent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1088) != 1)
  {
    return 0;
  }

  ArchivePayload::getRecompiledArchive(a1, __p);
  ArchivePayload::ArchivePayload(v7, a2, __p, 0, 0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return operator==(v7, a1);
}

void sub_10000A140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLArchiveMapDB::remove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *a3, *(a3 + 8));
  }

  else
  {
    v8 = *a3;
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = v8;
  }

  v7 = 0;
  v5 = mdb_cursor_open(a2, *(a1 + 8), &v7);
  if (!v5)
  {
    operator new();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = mdb_strerror(v5);
    MTLArchiveUsageDB::prune(v6, buf);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void MTLArchiveMapDB::read(unsigned int *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  MTLVersionedDB::Transaction::Transaction(&v11, a1);
  if (v11)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
    }

    else
    {
      v9 = *a2;
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v10 = v9;
    }

    v8 = 0;
    v5 = mdb_cursor_open(v11, a1[2], &v8);
    if (!v5)
    {
      operator new();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v6 = mdb_strerror(v5);
      MTLArchiveUsageDB::prune(v6, buf);
    }

    std::string::basic_string[abi:ne200100]<0>(a3, &unk_10001941F);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a3, &unk_10001941F);
  }

  MTLVersionedDB::Transaction::~Transaction(&v11);
}

void MTLArchiveMapDB::store(unsigned int *a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  MTLVersionedDB::Transaction::Transaction(&v13, a1);
  if (v13)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v12 = __p;
    }

    ArchivePayload::ArchivePayload(v14, a2, a3, a4, a5);
    if (v14[1088])
    {
      MTLArchiveMapDB::remove(a1, v13, a2);
      v10 = a1[2];
      operator new();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTLArchiveMapDB::store((a2 + 23), a2, a3);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  MTLVersionedDB::Transaction::~Transaction(&v13);
}

void sub_10000AC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  MTLVersionedDB::Transaction::~Transaction(&a22);
  _Unwind_Resume(a1);
}

BOOL MTLVersionedDB::isVersionEntry(uint64_t a1, uint64_t a2, char *__s1)
{
  if (*(a1 + 12) == 1)
  {
    if (a2 == 8)
    {
      return *__s1 == 0xFFFFFFFFLL;
    }
  }

  else if (a2 == 12)
  {
    return strncmp(__s1, "_DB_VERSION_", 0xCuLL) == 0;
  }

  return 0;
}

void MTLVersionedDB::getOrSetVersion(MTLVersionedDB *this, int a2)
{
  v8 = a2;
  v6 = 4;
  v7 = &v8;
  v5 = 0xFFFFFFFFLL;
  strcpy(__p, "_DB_VERSION_");
  v4 = 12;
  v2 = *(this + 12);
  operator new();
}

void MTLVersionedDB::openDB(uint64_t *a1, uint64_t a2, int a3, _BYTE *a4, _BYTE *a5)
{
  *a4 = 1;
  *a5 = 1;
  v9 = mdb_env_create(a1);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTLVersionedDB::openDB(v10);
    }
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    mkdir(v11, 0x1EDu);
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    v13 = mdb_env_open(*a1, v12, 0, 420);
    if (!v13)
    {
      MTLVersionedDB::getOrSetVersion(a1, a3);
    }

    v14 = v13;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTLVersionedDB::openDB((a2 + 23), a2, v14);
    }

    mdb_env_close(*a1);
    *a4 = 0;
  }

  *a1 = 0;
}

void **MTLVersionedDB::MTLVersionedDB(void **a1, uint64_t *a2, int a3, char a4, char a5)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 12) = a4;
  *(a1 + 13) = a5;
  v11 = 0;
  MTLVersionedDB::openDB(a1, a2, a3, &v11 + 1, &v11);
  if (HIBYTE(v11) != 1 || (v11 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTLVersionedDB::MTLVersionedDB();
    }

    if (*a1)
    {
      MTLVersionedDB::Transaction::Transaction(&v10, a1);
      if (v10)
      {
        mdb_drop(v10, *(a1 + 2), 0);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        MTLVersionedDB::MTLVersionedDB(a2);
      }

      MTLVersionedDB::Transaction::~Transaction(&v10);
      v8 = *a1;
    }

    else
    {
      v8 = 0;
    }

    mdb_env_close(v8);
    MTLVersionedDB::openDB(a1, a2, a3, &v11 + 1, &v11);
    if (HIBYTE(v11) != 1 || (v11 & 1) == 0)
    {
      if (*a1)
      {
        mdb_env_close(*a1);
      }

      *a1 = 0;
    }
  }

  return a1;
}

MTLVersionedDB::Transaction *MTLVersionedDB::Transaction::Transaction(MTLVersionedDB::Transaction *this, MTLVersionedDB *a2)
{
  *this = 0;
  if (*a2)
  {
    v4 = mdb_txn_begin(*a2, 0, 0, this);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        MTLVersionedDB::Transaction::Transaction(v5);
      }

LABEL_15:
      *this = 0;
      return this;
    }

    if (*(a2 + 13))
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    if (*(a2 + 12))
    {
      v7 = 262152;
    }

    else
    {
      v7 = 0x40000;
    }

    v8 = mdb_dbi_open(*this, 0, v7 | v6, a2 + 2);
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        MTLVersionedDB::Transaction::Transaction(v9);
      }

      mdb_txn_abort(*this);
      goto LABEL_15;
    }
  }

  return this;
}

void MTLVersionedDB::Transaction::~Transaction(MTLVersionedDB::Transaction *this)
{
  v1 = *this;
  if (v1)
  {
    v2 = mdb_txn_commit(v1);
    if (v2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v3 = mdb_strerror(v2);
        MTLVersionedDB::Transaction::~Transaction(v3, v4);
      }
    }
  }
}

void sub_10000B308(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void MTLVersionedDB::~MTLVersionedDB(MTLVersionedDB *this)
{
  v2 = *this;
  if (v2)
  {
    mdb_dbi_close(v2, *(this + 2));
    mdb_env_close(*this);
  }
}

void MTLVersionedDB::dumpTable(MTLVersionedDB *this)
{
  MTLVersionedDB::Transaction::Transaction(&v9, this);
  if (v9)
  {
    v8 = 0;
    v2 = mdb_cursor_open(v9, *(this + 2), &v8);
    if (v2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v3 = mdb_strerror(v2);
        MTLArchiveUsageDB::prune(v3, buf);
      }
    }

    else
    {
      v4 = mdb_cursor_get(v8, v7, v6, 0);
      v5 = 0;
      while (v4 != -30798)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67110144;
          v11 = v5;
          v12 = 2048;
          v13 = v7[0];
          v14 = 2048;
          v15 = v7[1];
          v16 = 2048;
          v17 = v6[0];
          v18 = 2048;
          v19 = v6[1];
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%d: key(%zu,%p) data(%zu,%p)", buf, 0x30u);
          ++v5;
        }

        v4 = mdb_cursor_get(v8, v7, v6, 8);
      }
    }
  }

  MTLVersionedDB::Transaction::~Transaction(&v9);
}

void sub_10000B4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MTLVersionedDB::Transaction::~Transaction(va);
  _Unwind_Resume(a1);
}

char *mdb_strerror(int a1)
{
  if (!a1)
  {
    return "Successful return: 0";
  }

  if ((a1 + 30799) > 0x14)
  {
    return strerror(a1);
  }

  return mdb_errstr[a1 + 30799];
}

uint64_t mdb_dcmp(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v4 = *(*(a1 + 80) + 48 * a2 + 24);
  if (v4 == mdb_cmp_int)
  {
    if (*a3 == 8)
    {
      return mdb_cmp_cint(a3, a4);
    }

    v4 = mdb_cmp_int;
  }

  return v4(a3, a4);
}

uint64_t mdb_cmp_int(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  v3 = **(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t mdb_cmp_cint(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *a1 - 2;
  v4 = (v2 + v3);
  v5 = (*(a2 + 8) + v3);
  v6 = v4;
  do
  {
    v8 = *v6--;
    v7 = v8;
    v9 = *v5--;
    result = (v7 - v9);
    v11 = v7 == v9 && v4 > v2;
    v4 = v6;
  }

  while (v11);
  return result;
}

uint64_t mdb_env_sync0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 12);
  if ((v3 & 0x20000) != 0)
  {
    return 13;
  }

  if (!a2 && (v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x80000) == 0)
  {
    result = fsync(*a1);
    if (!result)
    {
      return result;
    }

    return *__error();
  }

  if (((a2 == 0) & ((v3 & 0x100000u) >> 20)) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 16;
  }

  result = msync(*(a1 + 56), *(a1 + 16) * a3, v5);
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t mdb_txn_renew(uint64_t a1)
{
  if (!a1 || (~*(a1 + 124) & 0x20001) != 0)
  {
    return 22;
  }

  else
  {
    return mdb_txn_renew0(a1);
  }
}

uint64_t mdb_txn_renew0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4 = *(a1 + 124);
  if ((v4 & 0x20000) != 0)
  {
    if (!v3)
    {
      v7 = *(v2 + 72 + 8 * ((*(v2 + 12) >> 25) & 1 ^ (*(*(v2 + 72) + 128) < *(*(v2 + 80) + 128))));
      *(a1 + 24) = *(v7 + 128);
      *(a1 + 72) = 0;
      goto LABEL_14;
    }

    if ((*(v2 + 14) & 0x20) != 0)
    {
      v8 = *(a1 + 72);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = pthread_getspecific(*(v2 + 160));
      if (v8)
      {
LABEL_8:
        if (*(v8 + 2) != *(v2 + 40) || *v8 != -1)
        {
          return 4294936513;
        }

        goto LABEL_48;
      }
    }

    v22 = *(v2 + 40);
    v23 = pthread_self();
    v24 = *(v2 + 64);
    if (!*(v2 + 224))
    {
      v5 = mdb_reader_pid(v2, 8, v22);
      if (v5)
      {
        return v5;
      }

      *(v2 + 224) = 1;
    }

    v5 = pthread_mutex_lock((v24 + 24));
    if (v5)
    {
      return v5;
    }

    v25 = *(v3 + 16);
    v8 = (v3 + 192);
    if (v25)
    {
      v26 = 0;
      v27 = (v3 + 200);
      while (1)
      {
        v28 = *v27;
        v27 += 16;
        if (!v28)
        {
          break;
        }

        if (v25 == ++v26)
        {
          v26 = *(v3 + 16);
          break;
        }
      }

      if (v26 != *(v2 + 24))
      {
        v8 += 64 * v26;
        *(v8 + 2) = 0;
        v29 = (v8 + 8);
        *v8 = -1;
        *(v8 + 2) = v23;
        if (v26 != v25)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    else if (*(v2 + 24))
    {
      *(v3 + 200) = 0;
      v29 = (v3 + 200);
      *(v3 + 192) = -1;
      *(v3 + 208) = v23;
LABEL_44:
      *(v3 + 16) = ++v25;
LABEL_45:
      *(v2 + 28) = v25;
      *v29 = v22;
      pthread_mutex_unlock((v24 + 24));
      v31 = *(v2 + 12);
      if ((v31 & 0x200000) != 0)
      {
        v33 = v31 & 0x200000;
        goto LABEL_49;
      }

      v32 = pthread_setspecific(*(v2 + 160), v8);
      if (v32)
      {
        v9 = v32;
        *v29 = 0;
        return v9;
      }

LABEL_48:
      v33 = 0;
      do
      {
LABEL_49:
        *v8 = *(v3 + 8);
      }

      while (*v8 != *(v3 + 8));
      v34 = *v8;
      *(a1 + 24) = *v8;
      *(a1 + 72) = v8;
      v7 = *(v2 + 8 * (v34 & 1) + 72);
      v12 = v33 | 5;
      goto LABEL_15;
    }

    pthread_mutex_unlock((v24 + 24));
    return 4294936506;
  }

  if (!v3)
  {
    v7 = *(v2 + 72 + 8 * ((*(v2 + 12) >> 25) & 1 ^ (*(*(v2 + 72) + 128) < *(*(v2 + 80) + 128))));
    v6 = *(v7 + 128);
    goto LABEL_12;
  }

  v5 = pthread_mutex_lock((v3 + 128));
  if (v5)
  {
    return v5;
  }

  v6 = *(v3 + 8);
  v7 = *(v2 + 8 * (v6 & 1) + 72);
LABEL_12:
  *(a1 + 24) = v6 + 1;
  *(a1 + 8) = 0;
  *(a1 + 56) = 0;
  *(a1 + 128) = 0x1FFFF;
  v10 = *(v2 + 208);
  *(a1 + 72) = v10;
  *v10 = 0;
  v11 = *(v2 + 200);
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *v11 = 0;
  *(a1 + 64) = 0;
  *(v2 + 96) = a1;
  memcpy(*(a1 + 96), *(v2 + 152), 4 * *(v2 + 36));
LABEL_14:
  v12 = 5;
LABEL_15:
  v13 = *(a1 + 88);
  v14 = *(v7 + 40);
  *v13 = *(v7 + 24);
  v13[1] = v14;
  v15 = *(v7 + 56);
  v16 = *(v7 + 72);
  v17 = *(v7 + 104);
  v13[4] = *(v7 + 88);
  v13[5] = v17;
  v13[2] = v15;
  v13[3] = v16;
  *(a1 + 16) = *(v7 + 120) + 1;
  LODWORD(v13) = *(v2 + 32);
  *(a1 + 120) = v13;
  *(a1 + 124) = v4 & 0x20000;
  if (v13 >= 3)
  {
    v18 = 2;
    v19 = 100;
    do
    {
      v20 = *(*(v2 + 144) + 2 * v18);
      *(*(a1 + 88) + v19) = *(*(v2 + 144) + 2 * v18) & 0x7FFF;
      if (v20 < 0)
      {
        v21 = 26;
      }

      else
      {
        v21 = 0;
      }

      *(*(a1 + 112) + v18++) = v21;
      v19 += 48;
    }

    while (v18 < *(a1 + 120));
  }

  *(*(a1 + 112) + 1) = 24;
  **(a1 + 112) = 8;
  if ((*(v2 + 12) & 0x80000000) != 0)
  {
    v9 = 4294936501;
  }

  else
  {
    if (*(v2 + 128) >= *(a1 + 16))
    {
      return 0;
    }

    v9 = 4294936511;
  }

  mdb_txn_end(a1, v12);
  return v9;
}

uint64_t mdb_txn_begin(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v4 = *(a1 + 12);
  if ((v4 & ~a3 & 0x20000) != 0)
  {
    return 13;
  }

  v10 = v4 & 0x80000 | a3 & 0x70000;
  if (a2)
  {
    v11 = *(a2 + 124);
    v10 |= v11;
    if ((v10 & 0xA0013) != 0)
    {
      if ((v11 & 0x20000) != 0)
      {
        return 22;
      }

      else
      {
        return 4294936514;
      }
    }

    v13 = 152;
    v14 = 57;
    v15 = 19;
  }

  else
  {
    if ((a3 & 0x20000) == 0)
    {
      v12 = *(a1 + 104);
      goto LABEL_28;
    }

    v15 = 17;
    v14 = 49;
    v13 = 136;
  }

  v16 = v13 + *(a1 + 36) * v14;
  v17 = malloc_type_calloc(1uLL, v16, 0xF0727416uLL);
  if (!v17)
  {
    return 12;
  }

  v12 = v17;
  v17[10] = *(a1 + 136);
  v17[11] = &v17[v15];
  v18 = *(a1 + 36);
  v17[14] = v17 + v16 - v18;
  *(v17 + 31) = v10;
  v17[4] = a1;
  if (a2)
  {
    v17[12] = *(a2 + 96);
    v17[13] = &v17[6 * v18 + v15];
    v19 = malloc_type_malloc(0x200000uLL, 0x108004057E67DB5uLL);
    *(v12 + 72) = v19;
    if (v19)
    {
      v20 = mdb_midl_alloc(0x1FFFF);
      *(v12 + 40) = v20;
      v19 = *(v12 + 72);
      if (v20)
      {
        *(v12 + 128) = *(a2 + 128);
        *v19 = 0;
        *(v12 + 64) = 0;
        v21 = *(a2 + 24);
        *(v12 + 16) = *(a2 + 16);
        *(v12 + 24) = v21;
        v22 = *(a2 + 120);
        *(a2 + 124) |= 0x10u;
        *(a2 + 8) = v12;
        *v12 = a2;
        *(v12 + 120) = v22;
        memcpy(*(v12 + 88), *(a2 + 88), 48 * v22);
        if (*(v12 + 120))
        {
          v23 = 0;
          do
          {
            *(*(v12 + 112) + v23) = *(*(a2 + 112) + v23) & 0xFB;
            ++v23;
          }

          while (v23 < *(v12 + 120));
        }

        *(v12 + 136) = *(a1 + 176);
        v24 = *(a1 + 176);
        if (v24)
        {
          v25 = *v24;
          v26 = mdb_midl_alloc(*v24);
          *(a1 + 176) = v26;
          if (!v26)
          {
            v5 = 12;
LABEL_31:
            mdb_txn_end(v12, 6);
            goto LABEL_32;
          }

          memcpy(v26, *(v12 + 136), 8 * v25 + 8);
        }

        v5 = mdb_cursor_shadow(a2, v12);
        if (!v5)
        {
          goto LABEL_29;
        }

        goto LABEL_31;
      }
    }

    free(v19);
    free(v12);
    return 12;
  }

  v17[12] = *(a1 + 152);
LABEL_28:
  v5 = mdb_txn_renew0(v12);
  if (!v5)
  {
LABEL_29:
    v5 = 0;
    *(v12 + 124) |= v10;
    *a4 = v12;
    return v5;
  }

LABEL_32:
  if (v12 != *(a1 + 104))
  {
    free(v12);
  }

  return v5;
}

uint64_t mdb_cursor_shadow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 120);
  if (v2 < 1)
  {
    return 0;
  }

  while (1)
  {
    v5 = v2 - 1;
    v6 = *(*(a1 + 104) + 8 * (v2 - 1));
    if (v6)
    {
      break;
    }

LABEL_10:
    if (v2-- <= 1)
    {
      return 0;
    }
  }

  if (v6[2])
  {
    v7 = 888;
  }

  else
  {
    v7 = 392;
  }

  while (1)
  {
    v8 = malloc_type_malloc(v7, 0xE979B0FDuLL);
    if (!v8)
    {
      return 12;
    }

    v9 = v8;
    memcpy(v8, v6, 0x188uLL);
    v6[1] = v9;
    v6[5] = a2[11] + 48 * v5;
    v6[3] = a2;
    v6[7] = a2[14] + v5;
    v10 = v6[2];
    if (v10)
    {
      memcpy(v9 + 49, v6[2], 0x1F0uLL);
      *(v10 + 24) = a2;
    }

    v11 = a2[13];
    *v6 = *(v11 + 8 * v5);
    *(v11 + 8 * v5) = v6;
    v6 = *v9;
    if (!*v9)
    {
      goto LABEL_10;
    }
  }
}

void mdb_txn_end(unsigned int *a1, int a2)
{
  v4 = *(a1 + 4);
  v5 = a1[30];
  if (v5 >= 3)
  {
    v6 = 48 * v5;
    v7 = *(a1 + 14) - 1;
    v8 = a1[30];
    do
    {
      if ((*(v7 + v8) & 4) != 0)
      {
        if ((a2 & 0x10) != 0)
        {
          *(*(v4 + 144) + 2 * v8 - 2) = *(*(a1 + 11) + v6 - 44) | 0x8000;
        }

        else
        {
          v9 = *(v4 + 136) + v6;
          v10 = *(v9 - 40);
          if (v10)
          {
            *(v9 - 48) = 0;
            *(v9 - 40) = 0;
            v11 = *(v4 + 152);
            *(*(v4 + 144) + 2 * v8 - 2) = 0;
            ++*(v11 + 4 * v8 - 4);
            free(v10);
          }
        }
      }

      --v8;
      v6 -= 48;
    }

    while ((v8 + 1) > 3);
  }

  if ((a2 & 0x10) != 0 && *(v4 + 32) < v5)
  {
    *(v4 + 32) = v5;
  }

  v12 = a1[31];
  if ((v12 & 0x20000) != 0)
  {
    v21 = *(a1 + 9);
    if (v21)
    {
      *v21 = -1;
      if ((*(v4 + 14) & 0x20) == 0)
      {
LABEL_31:
        *(a1 + 9) = 0;
        goto LABEL_32;
      }

      if ((a2 & 0x200000) != 0)
      {
        *(*(a1 + 9) + 8) = 0;
        goto LABEL_31;
      }
    }

LABEL_32:
    v22 = a1[31] | 1;
    a1[30] = 0;
    a1[31] = v22;
LABEL_33:
    if ((a2 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v12)
  {
    goto LABEL_33;
  }

  v14 = (v4 + 176);
  v13 = *(v4 + 176);
  if ((a2 & 0x10) == 0)
  {
    mdb_cursors_close(a1, 0);
  }

  if ((*(v4 + 14) & 8) == 0)
  {
    v15 = *(a1 + 9);
    v16 = *v15;
    if (*v15)
    {
      v17 = *(a1 + 4);
      v18 = 1;
      do
      {
        v19 = *&v15[4 * v18 + 2];
        if ((*(v19 + 5) & 4) != 0 && *(v19 + 3) != 1)
        {
          free(v19);
        }

        else
        {
          *v19 = *(v17 + 192);
          *(v17 + 192) = v19;
        }

        ++v18;
      }

      while (v18 <= v16);
    }

    *v15 = 0;
  }

  *(a1 + 15) = &_mh_execute_header;
  v20 = *a1;
  if (*a1)
  {
    *(v20 + 8) = 0;
    *(v20 + 124) &= ~0x10u;
    *v14 = *(a1 + 34);
    mdb_midl_free(*(a1 + 5));
    free(*(a1 + 9));
  }

  else
  {
    mdb_midl_shrink(a1 + 5);
    *(v4 + 200) = *(a1 + 5);
    *(v4 + 96) = 0;
    *v14 = 0;
    *(v4 + 184) = 0;
    v23 = *(v4 + 64);
    if (v23)
    {
      pthread_mutex_unlock(v23 + 2);
    }

    LOBYTE(a2) = 0;
  }

  mdb_midl_free(*(a1 + 8));
  mdb_midl_free(v13);
  if ((a2 & 0x20) != 0)
  {
LABEL_39:

    free(a1);
  }
}

uint64_t mdb_txn_env(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t mdb_txn_id(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void mdb_txn_reset(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 126) & 2) != 0)
    {
      mdb_txn_end(a1, 3);
    }
  }
}

void mdb_txn_abort(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      mdb_txn_abort();
    }

    mdb_txn_end(a1, 2097186);
  }
}

uint64_t mdb_txn_commit(uint64_t a1)
{
  if (!a1)
  {
    return 22;
  }

  if (*(a1 + 8))
  {
    appended = mdb_txn_commit();
    if (appended)
    {
      goto LABEL_4;
    }
  }

  v4 = 2097201;
  v5 = *(a1 + 124);
  if ((v5 & 0x20000) != 0)
  {
    goto LABEL_54;
  }

  v6 = *a1;
  if ((v5 & 3) == 0)
  {
    if (v6)
    {
      appended = mdb_midl_append_list((v6 + 40), *(a1 + 40));
      if (!appended)
      {
        mdb_midl_free(*(a1 + 40));
        *(v6 + 16) = *(a1 + 16);
        *(v6 + 124) = *(a1 + 124);
        mdb_cursors_close(a1, 1);
        memcpy(*(v6 + 88), *(a1 + 88), 48 * *(a1 + 120));
        *(v6 + 120) = *(a1 + 120);
        **(v6 + 112) = **(a1 + 112);
        *(*(v6 + 112) + 1) = *(*(a1 + 112) + 1);
        if (*(a1 + 120) >= 3u)
        {
          v7 = 2;
          do
          {
            *(*(v6 + 112) + v7) = *(*(a1 + 112) + v7) | *(*(v6 + 112) + v7) & 4;
            ++v7;
          }

          while (v7 < *(a1 + 120));
        }

        v8 = *(v6 + 64);
        v10 = *(v6 + 72);
        v9 = (v6 + 64);
        v11 = *(a1 + 72);
        if (v8)
        {
          v12 = *v8;
          if (*v8)
          {
            *v8 = -1;
            v13 = *v11;
            if (*v11)
            {
              if (v13 + 1 > 2)
              {
                v14 = v13 + 1;
              }

              else
              {
                v14 = 2;
              }

              v15 = 1;
              v16 = v12;
              v17 = v12;
              do
              {
                v18 = 2 * *&v11[4 * v15];
                do
                {
                  v19 = v17;
                  v20 = *&v8[2 * v17--];
                }

                while (v18 > v20);
                if (v18 == v20)
                {
                  *&v8[2 * v19] = 1;
                  v16 = v17;
                }

                else
                {
                  ++v17;
                }

                ++v15;
              }

              while (v15 != v14);
            }

            else
            {
              v16 = v12;
            }

            for (i = v16 + 1; i <= v12; ++i)
            {
              v29 = *&v8[2 * i];
              if ((v29 & 1) == 0)
              {
                *&v8[2 * ++v16] = v29;
              }
            }

            *v8 = v16;
          }
        }

        v30 = *(a1 + 64);
        if (v30 && *v30)
        {
          v31 = 1;
          do
          {
            v32 = v30[v31];
            if ((v32 & 1) == 0)
            {
              v33 = v32 >> 1;
              v34 = mdb_mid2l_search(v10, v32 >> 1);
              if (*v10 >= v34)
              {
                v35 = v34;
                v36 = &v10[4 * v34];
                if (*v36 == v33)
                {
                  free(*(v36 + 1));
                  v37 = *v10;
                  if (*v10 > v35)
                  {
                    v38 = v35 + 1;
                    do
                    {
                      *&v10[4 * v35] = *&v10[4 * v38];
                      v35 = v38;
                      v37 = *v10;
                    }

                    while (*v10 > v38++);
                  }

                  *v10 = v37 - 1;
                }
              }
            }

            v31 = (v31 + 1);
            v30 = *(a1 + 64);
          }

          while (*v30 >= v31);
        }

        v40 = *v10;
        *v10 = 0;
        if (*v6)
        {
          v41 = *v11 + v40;
          v42 = mdb_mid2l_search(v11, *&v10[4 * v40] + 1);
          v43 = v42 - 1;
          if (v42 != 1 && v40 != 0)
          {
            v45 = v40;
            do
            {
              v46 = *&v11[4 * v43];
              v47 = v45 + 1;
              do
              {
                v48 = *&v10[4 * --v47];
              }

              while (v46 < v48);
              v49 = v46 == v48;
              v41 -= v49;
              if (!--v43)
              {
                break;
              }

              v45 = v47 - v49;
            }

            while (v45);
          }
        }

        else
        {
          v41 = 0x1FFFF - *(a1 + 128);
        }

        v50 = *v11;
        if (*v11)
        {
          v51 = v41;
          do
          {
            v52 = &v11[4 * v50];
            v53 = *v52;
            v54 = &v10[4 * v40];
            v55 = *v54;
            if (*v52 >= *v54)
            {
              v56 = v40;
            }

            else
            {
              do
              {
                *&v10[4 * v51--] = *v54;
                v40 = (v40 - 1);
                v54 = &v10[4 * v40];
                v55 = *v54;
              }

              while (v53 < *v54);
              v56 = v40;
            }

            if (v53 == v55)
            {
              LODWORD(v40) = v40 - 1;
              free(*&v10[4 * v56 + 2]);
            }

            *&v10[4 * v51--] = *v52;
            --v50;
          }

          while (v50);
        }

        *v10 = v41;
        free(*(a1 + 72));
        *(v6 + 128) = *(a1 + 128);
        v57 = *(a1 + 64);
        if (v57)
        {
          if (*v9)
          {
            v3 = mdb_midl_append_list((v6 + 64), v57);
            if (v3)
            {
              *(v6 + 124) |= 2u;
            }

            mdb_midl_free(*(a1 + 64));
            mdb_midl_sort(*v9);
          }

          else
          {
            v3 = 0;
            *v9 = v57;
          }
        }

        else
        {
          v3 = 0;
        }

        v58 = v6;
        do
        {
          v59 = v58;
          v58 = *(v58 + 48);
        }

        while (v58);
        *(v59 + 48) = *(a1 + 48);
        *(v6 + 56) += *(a1 + 56);
        *(v6 + 8) = 0;
        mdb_midl_free(*(a1 + 136));
        free(a1);
        return v3;
      }

LABEL_4:
      v3 = appended;
      goto LABEL_10;
    }

    v21 = *(a1 + 32);
    if (*(v21 + 96) != a1)
    {
      v3 = 22;
      goto LABEL_10;
    }

    mdb_cursors_close(a1, 0);
    if (**(a1 + 72) || (*(a1 + 124) & 0xC) != 0)
    {
      if (*(a1 + 120) >= 3u)
      {
        v62 = 0;
        memset(v61, 0, sizeof(v61));
        v60 = xmmword_100018800;
        mdb_cursor_init(v61, a1, 1u, 0);
        v22 = *(a1 + 120);
        if (v22 >= 3)
        {
          v23 = 2;
          v24 = 96;
          do
          {
            if (*(*(a1 + 112) + v23))
            {
              if (*(*(a1 + 96) + 4 * v23) != *(*(*(a1 + 32) + 152) + 4 * v23))
              {
                v3 = 4294936516;
                goto LABEL_10;
              }

              v25 = *(a1 + 80);
              *(&v60 + 1) = *(a1 + 88) + v24;
              appended = mdb_cursor_put(v61, (v25 + v24), &v60, 2);
              if (appended)
              {
                goto LABEL_4;
              }

              v22 = *(a1 + 120);
            }

            ++v23;
            v24 += 48;
          }

          while (v23 < v22);
        }
      }

      appended = mdb_freelist_save(a1);
      if (appended)
      {
        goto LABEL_4;
      }

      mdb_midl_free(*(v21 + 176));
      *(v21 + 176) = 0;
      mdb_midl_shrink((a1 + 40));
      appended = mdb_page_flush(a1, 0);
      if (appended)
      {
        goto LABEL_4;
      }

      if ((*(a1 + 126) & 1) == 0)
      {
        appended = mdb_env_sync0(v21, 0, *(a1 + 16));
        if (appended)
        {
          goto LABEL_4;
        }
      }

      appended = mdb_env_write_meta(a1);
      if (appended)
      {
        goto LABEL_4;
      }

      v26 = *(v21 + 12);
      if ((v26 & 0x2000000) != 0)
      {
        if ((v26 & 0x400000) == 0)
        {
          appended = mdb_env_share_locks(v21, v61);
          if (appended)
          {
            goto LABEL_4;
          }

          v26 = *(v21 + 12);
        }

        *(v21 + 12) = v26 ^ 0x2000000;
      }

      v4 = 16;
    }

LABEL_54:
    mdb_txn_end(a1, v4);
    return 0;
  }

  if (v6)
  {
    *(v6 + 124) |= 2u;
  }

  v3 = 4294936514;
LABEL_10:
  mdb_txn_abort(a1);
  return v3;
}

void mdb_cursors_close(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (v2 >= 1)
  {
    v4 = *(a1 + 104);
    do
    {
      v5 = *(v4 + 8 * (v2 - 1));
      while (v5)
      {
        v6 = v5;
        v5 = *v5;
        v7 = v6[1];
        if (v7)
        {
          if (a2)
          {
            *v6 = *v7;
            v8 = v7[3];
            v6[3] = v8;
            v6[5] = v7[5];
            v6[7] = v7[7];
            v9 = v6[2];
            if (v9)
            {
              *(v9 + 24) = v8;
            }
          }

          else
          {
            memcpy(v6, v6[1], 0x188uLL);
            v10 = v6[2];
            if (v10)
            {
              memcpy(v10, v7 + 49, 0x1F0uLL);
            }
          }
        }

        else
        {
          v7 = v6;
        }

        free(v7);
      }

      *(v4 + 8 * (v2 - 1)) = 0;
    }

    while (v2-- > 1);
  }
}

uint64_t mdb_cursor_init(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 32) = a3;
  *(result + 24) = a2;
  v4 = *(a2 + 80) + 48 * a3;
  *(result + 40) = *(a2 + 88) + 48 * a3;
  *(result + 48) = v4;
  v5 = (*(a2 + 112) + a3);
  *(result + 56) = v5;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 328) = 0;
  v6 = *(a2 + 124) & 0xA0000;
  *(result + 68) = v6;
  if ((*(*(a2 + 88) + 48 * a3 + 4) & 4) != 0)
  {
    *(result + 16) = a4;
    *(a4 + 16) = 0;
    *(a4 + 24) = a2;
    *(a4 + 40) = a4 + 392;
    *(a4 + 48) = a4 + 440;
    *(a4 + 32) = a3;
    *(a4 + 56) = a4 + 488;
    *(a4 + 64) = 0;
    *(a4 + 68) = v6 | 4;
    *(a4 + 440) = 0;
    *(a4 + 448) = 0;
    v7 = *(result + 48);
    v5 = *(result + 56);
    v9 = *(v7 + 24);
    v8 = *(v7 + 32);
    *(a4 + 456) = v9;
    *(a4 + 464) = 0;
    *(a4 + 472) = v8;
  }

  else
  {
    *(result + 16) = 0;
  }

  if ((*v5 & 2) != 0)
  {
    return mdb_page_search(result, 0, 2);
  }

  return result;
}

uint64_t mdb_cursor_put(uint64_t a1, size_t *a2, uint64_t a3, int a4)
{
  v124 = 0;
  result = 22;
  if (!a1 || !a2)
  {
    return result;
  }

  v122 = 0;
  v123 = 0;
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v117 = 0u;
  memset(v116, 0, sizeof(v116));
  v9 = *(a1 + 24);
  v10 = *(v9 + 32);
  if ((a4 & 0x80000) != 0)
  {
    v11 = *(a3 + 16);
    *(a3 + 16) = 0;
    if ((*(*(a1 + 40) + 4) & 0x10) == 0)
    {
      return 4294936512;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 + 124);
  if ((v12 & 0x20013) != 0)
  {
    if ((v12 & 0x20000) != 0)
    {
      return 13;
    }

    else
    {
      return 4294936514;
    }
  }

  if (*a2 - 512 < 0xFFFFFFFFFFFFFE01)
  {
    return 4294936515;
  }

  v13 = *(a1 + 40);
  v14 = 511;
  if ((*(v13 + 4) & 4) == 0)
  {
    v14 = 0xFFFFFFFFLL;
  }

  if (*a3 > v14)
  {
    return 4294936515;
  }

  v120 = 0;
  if ((a4 & 0x40) != 0)
  {
    v17 = *(a1 + 68);
    if ((v17 & 1) == 0)
    {
      return result;
    }

    LODWORD(v16) = 0;
  }

  else if (*(v13 + 40) == -1)
  {
    v17 = *(a1 + 68) & 0xFFFFFFFE;
    *(a1 + 64) = 0;
    *(a1 + 68) = v17;
    LODWORD(v16) = -30769;
  }

  else
  {
    v115 = 0;
    v114 = 0uLL;
    if ((a4 & 0x20000) != 0)
    {
      v113[0] = 0;
      v113[1] = 0;
      v16 = mdb_cursor_last(a1, v113, &v114);
      if (!v16)
      {
        if ((*(*(a1 + 48) + 16))(a2, v113) < 1)
        {
          v16 = 4294936497;
        }

        else
        {
          v18 = a1 + 2 * *(a1 + 66);
          ++*(v18 + 328);
          v16 = 4294936498;
        }
      }
    }

    else
    {
      v15 = mdb_cursor_set(a1, a2, &v114, 15, &v115);
      v16 = v15;
      if ((a4 & 0x10) != 0 && !v15)
      {
        *a3 = v114;
        return 4294936497;
      }
    }

    if (v16 != -30798 && v16)
    {
      return v16;
    }

    v17 = *(a1 + 68);
  }

  if ((v17 & 8) != 0)
  {
    *(a1 + 68) = v17 & 0xFFFFFFF7;
  }

  if ((a4 & 0x8000) == 0)
  {
    v19 = a3;
    if ((a4 & 0x80000) != 0)
    {
      v122 = *a3 * v11;
      v19 = &v122;
    }

    result = mdb_page_spill(a1, a2, v19);
    if (result)
    {
      return result;
    }
  }

  v20 = a4 & 0xFFFF7FFF;
  if (v16 == -30769)
  {
    *&v114 = 0;
    result = mdb_page_new(a1, 2, 1, &v114);
    if (result)
    {
      return result;
    }

    v21 = v114;
    v22 = *(a1 + 64);
    if (v22 < 0x20)
    {
      *(a1 + 64) = v22 + 1;
      *(a1 + 66) = v22;
      *(a1 + 8 * v22 + 72) = v21;
      *(a1 + 2 * v22 + 328) = 0;
    }

    else
    {
      *(*(a1 + 24) + 124) |= 2u;
    }

    v24 = *(a1 + 40);
    *(v24 + 40) = *v21;
    ++*(v24 + 6);
    **(a1 + 56) |= 1u;
    v23 = *(*(a1 + 40) + 4);
    if ((v23 & 0x14) == 0x10)
    {
      *(v21 + 10) |= 0x20u;
    }

    *(a1 + 68) |= 1u;
LABEL_51:
    if ((v23 & 4) != 0 && *a2 + *a3 + 8 > *(v10 + 220))
    {
      v108 = 0;
      v25 = *(v10 + 88);
      *(v25 + 4) = *a3;
      *(v25 + 3) = 1048592;
      v118 = 16;
      v26 = 18;
      goto LABEL_113;
    }

    v107 = 0;
    v108 = 0;
    v27 = 0;
    goto LABEL_105;
  }

  result = mdb_cursor_touch(a1);
  if (result)
  {
    return result;
  }

  if (v16)
  {
    v23 = *(*(a1 + 40) + 4);
    goto LABEL_51;
  }

  v28 = *(a1 + 66);
  v29 = *(a1 + 8 * v28 + 72);
  v30 = *(a1 + 40);
  if ((*(v29 + 10) & 0x20) != 0)
  {
    v31 = *v30;
    v32 = *a2;
    if (*a2 == v31)
    {
      v33 = a2[1];
      v34 = (v29 + v31 * *(a1 + 2 * v28 + 328) + 16);
LABEL_59:
      memcpy(v34, v33, v32);
      v35 = *(a1 + 66);
      if (*(a1 + 66))
      {
        v36 = a1 + 328;
        if (!*(a1 + 328 + 2 * v35))
        {
          v37 = v35 - 1;
          *(a1 + 66) = v35 - 1;
          if (v35 == 1)
          {
            v37 = 0;
            LOWORD(v35) = 1;
          }

          else
          {
            v38 = 1;
            while (!*(v36 + 2 * v37))
            {
              *(a1 + 66) = --v37;
              ++v38;
              if (!v37)
              {
                v37 = 0;
                goto LABEL_68;
              }
            }

            LOWORD(v35) = v38;
          }

LABEL_68:
          if (*(v36 + 2 * v37))
          {
            result = mdb_update_key(a1, a2);
            *(a1 + 66) += v35;
            if (result)
            {
              return result;
            }
          }

          else
          {
            *(a1 + 66) = v37 + v35;
          }
        }
      }

      return 0;
    }

    return 4294936515;
  }

  v111 = a4 & 0xFFFF7FFF;
  v107 = 0;
  v108 = 0;
  v27 = 0;
  while (1)
  {
    v39 = *(a1 + 8 * v28 + 72);
    v40 = (v39 + *(v39 + *(a1 + 2 * v28 + 328) + 8));
    v118 = *v40;
    v119 = v40 + *(v40 + 3) + 8;
    if ((v30[1] & 4) != 0)
    {
      v41 = *(v10 + 88);
      v123 = v41;
      v124 = v41;
      *v41 = *v39;
      v42 = *(v40 + 2);
      if ((v42 & 4) != 0)
      {
        v105 = v27;
        if ((v42 & 2) != 0)
        {
          v106 = 0;
          v20 = v111 | 6;
          goto LABEL_163;
        }

        v25 = v119;
        if (v111 == 64)
        {
LABEL_85:
          v106 = 0;
          *(v119 + 5) |= 0x10u;
          *v25 = *v41;
          *(v25 + 1) = *(v41 + 1);
          *(v25 + 2) = *(v41 + 2);
          *(v25 + 3) = *(v41 + 3);
          *(*(a1 + 16) + 72) = v25;
          v20 = v111 | 4;
          goto LABEL_163;
        }

        if ((*(*(a1 + 40) + 4) & 0x10) != 0)
        {
          v63 = *(v119 + 4);
          if (v63 <= (*(v119 + 7) - *(v119 + 6)))
          {
            goto LABEL_85;
          }

          v49 = 4 * v63;
        }

        else
        {
          v49 = (*a3 + 11) & 0xFFFFFFFE;
        }

        v61 = v118;
        v62 = v118 + v49;
        v122 = v62;
        v26 = *(v119 + 5);
        goto LABEL_111;
      }

      if (v111 != 64)
      {
        v43 = *(*(a1 + 48) + 24);
        if (v118 == 8 && v43 == mdb_cmp_int)
        {
          v43 = mdb_cmp_cint;
        }

        if (v43(a3, &v118))
        {
          v45 = v118;
          v120 = v118;
          memcpy(v41 + 24, v119, v118);
          v121 = v41 + 24;
          *(v41 + 5) = 82;
          *(v41 + 6) = 16;
          v46 = *a3;
          v47 = v45 + *a3 + 16;
          if ((*(*(a1 + 40) + 4) & 0x10) != 0)
          {
            v26 = 114;
            *(v41 + 5) = 114;
            *(v41 + 4) = v46;
            v48 = 2 * v46;
          }

          else
          {
            v48 = ((*a3 & 1) + (v45 & 1)) | 0x14;
            v26 = 82;
          }

          LOWORD(v49) = 0;
          v61 = v48 + v47;
          v122 = v61;
          *(v41 + 7) = v61;
          v118 = v61;
          v62 = v61;
          v25 = v41;
LABEL_111:
          if (*(v40 + 3) + v62 + 8 <= *(v10 + 220))
          {
            LODWORD(v16) = 0;
          }

          else
          {
            LODWORD(v16) = 0;
            v26 &= ~0x40u;
            v20 = v111;
LABEL_113:
            v64 = *(a1 + 40);
            if ((*(v64 + 4) & 0x10) != 0)
            {
              v26 |= 0x20u;
              LODWORD(v116[0]) = *(v25 + 4);
              WORD2(v116[0]) = 16;
              if ((*(v64 + 4) & 0x20) != 0)
              {
                v65 = 24;
              }

              else
              {
                v65 = 16;
              }

              WORD2(v116[0]) = v65;
            }

            else
            {
              LODWORD(v116[0]) = 0;
              WORD2(v116[0]) = 0;
            }

            WORD3(v116[0]) = 1;
            *(v116 + 8) = xmmword_100018810;
            *(&v116[1] + 1) = 0;
            *&v117 = (*(v25 + 6) - 16) >> 1;
            v122 = 48;
            v123 = v116;
            result = mdb_page_alloc(a1, 1, &v124);
            if (result)
            {
              return result;
            }

            v61 = v118;
            v49 = *(v10 + 16) - v118;
            v111 = v20 | 6;
            v41 = v124;
            *(&v117 + 1) = *v124;
            v107 = v124;
          }

          if (v41 != v25)
          {
            *(v41 + 5) = v26 | 0x10;
            *(v41 + 4) = *(v25 + 4);
            *(v41 + 6) = *(v25 + 6);
            v66 = *(v25 + 7) + v49;
            *(v41 + 7) = v66;
            if ((v26 & 0x20) != 0)
            {
              memcpy(v41 + 16, v25 + 16, ((*(v25 + 6) - 16) >> 1) * *(v25 + 4));
            }

            else
            {
              memcpy(&v41[v66], &v25[*(v25 + 7)], v61 - *(v25 + 7));
              memcpy(v41 + 16, v25 + 16, (*(v25 + 6) - 16) & 0xFFFFFFFE);
              if ((*(v25 + 6) & 0xFFFE) != 0x10)
              {
                v67 = 0;
                do
                {
                  *&v41[2 * v67++ + 16] += v49;
                }

                while (v67 < (*(v25 + 6) - 16) >> 1);
              }
            }
          }

          v20 = v111 | 4;
          v60 = &v122;
          v27 = 1;
          if (!v16)
          {
            mdb_node_del(a1, 0);
            v60 = &v122;
          }

          goto LABEL_130;
        }

        if ((v111 & 0x40020) != 0)
        {
          return 4294936497;
        }
      }
    }

    v50 = *(v40 + 2);
    v20 = v111;
    if (((v111 ^ v50) & 2) != 0)
    {
      return 4294936512;
    }

    if ((v50 & 1) == 0)
    {
      v51 = *a3;
      if (*a3 == v118)
      {
        if ((v111 & 0x10000) != 0)
        {
          result = 0;
          v103 = v119;
LABEL_217:
          *(a3 + 8) = v103;
          return result;
        }

        if ((*(a1 + 68) & 4) == 0)
        {
          v52 = v119;
          v53 = *(a3 + 8);
LABEL_219:
          memcpy(v52, v53, v51);
          return 0;
        }

        v32 = *a2;
        v33 = a2[1];
        v34 = v40 + 2;
        goto LABEL_59;
      }

      goto LABEL_104;
    }

    v54 = v27;
    v113[0] = 0;
    v115 = 0;
    v55 = *a3;
    v56 = *(v10 + 16);
    v109 = *v119;
    result = mdb_page_get(a1, *v119, v113, &v115);
    if (result)
    {
      return result;
    }

    v57 = (v55 + 15) / v56 + 1;
    v58 = v113[0];
    v59 = *(v113[0] + 3);
    if (v59 >= v57)
    {
      if ((*(v113[0] + 5) & 0x10) != 0)
      {
        break;
      }

      if (v115 || (*(v10 + 14) & 8) != 0)
      {
        result = mdb_page_unspill(*(a1 + 24), v113[0], v113);
        if (result)
        {
          return result;
        }

        v115 = 0;
        v58 = v113[0];
        if ((*(v113[0] + 5) & 0x10) != 0)
        {
          break;
        }
      }
    }

    result = mdb_ovpage_free(a1, v58);
    v27 = v54;
    if (result)
    {
      return result;
    }

LABEL_104:
    mdb_node_del(a1, 0);
    LODWORD(v16) = 0;
LABEL_105:
    v60 = a3;
LABEL_130:
    v68 = *(a1 + 66);
    v69 = *(a1 + 72 + 8 * v68);
    v70 = *a2;
    if ((v69[5] & 0x20) == 0)
    {
      v71 = v70 + *v60 + 8;
      v72 = v70 + 16;
      if (v71 <= *(v10 + 220))
      {
        v72 = v71;
      }

      v70 = (v72 + 3) & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v70 <= (v69[7] - v69[6]))
    {
      result = mdb_node_add(a1, *(a1 + 328 + 2 * v68), a2, v60, 0, v20 & 0x30006);
      if (result)
      {
        goto LABEL_207;
      }

      v75 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
      if (v75)
      {
        v76 = *(a1 + 66);
        v77 = *(a1 + 72 + 8 * v76);
        v78 = *(a1 + 68);
        do
        {
          v79 = v75;
          if ((v78 & 4) != 0)
          {
            v79 = v75[2];
          }

          if (v79 != a1 && *(v79 + 32) >= *(a1 + 64) && v79[v76 + 9] == v77)
          {
            v80 = *(v79 + v76 + 164);
            if (v16 && v80 >= *(a1 + 328 + 2 * v76))
            {
              LOWORD(v80) = v80 + 1;
              *(v79 + v76 + 164) = v80;
            }

            v81 = v79[2];
            if (v81)
            {
              if ((*(v81 + 68) & 1) != 0 && (*(v77 + 12) - 16) >> 1 > v80)
              {
                v82 = v77 + *(v77 + 16 + 2 * v80);
                if ((*(v82 + 4) & 6) == 4)
                {
                  *(v81 + 72) = v82 + *(v82 + 6) + 8;
                }
              }
            }
          }

          v75 = *v75;
        }

        while (v75);
      }
    }

    else
    {
      if ((v20 & 6) == 4)
      {
        v73 = v20 & 0x10004;
      }

      else
      {
        v73 = v20 & 0x30006;
      }

      if (v16)
      {
        v74 = v73;
      }

      else
      {
        v74 = v73 | 0x40000;
      }

      result = mdb_page_split(a1, a2, v60, 0xFFFFFFFFFFFFFFFFLL, v74);
      if (result)
      {
        goto LABEL_207;
      }
    }

    if (!v27)
    {
      result = 0;
      v96 = v16;
      goto LABEL_194;
    }

    v105 = 1;
    v106 = v16;
LABEL_163:
    v122 = 0;
    v123 = &unk_10001941F;
    v110 = *(a1 + 72 + 8 * *(a1 + 66)) + *(*(a1 + 72 + 8 * *(a1 + 66)) + 2 * *(a1 + 328 + 2 * *(a1 + 66)) + 16);
    v83 = 32832;
    if ((v20 & 0x40040) != 0x40)
    {
      mdb_xcursor_init1(a1, v110);
      if ((v20 & 0x20) != 0)
      {
        v83 = 32784;
      }

      else
      {
        v83 = 0x8000;
      }
    }

    v112 = v20;
    if (v107)
    {
      *(*(a1 + 16) + 72) = v107;
    }

    v104 = v120;
    if (v120)
    {
      LODWORD(result) = mdb_cursor_put(*(a1 + 16), &v120, &v122, v83);
      if (result)
      {
        goto LABEL_204;
      }

      v120 = 0;
    }

    if (v107 || (*(v110 + 4) & 2) == 0)
    {
      v84 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
      if (v84)
      {
        v85 = *(a1 + 16);
        v86 = *(a1 + 66);
        v87 = *(a1 + 72 + 8 * v86);
        do
        {
          if (v84 != a1 && *(v84 + 64) >= *(a1 + 64) && (*(v84 + 68) & 1) != 0 && *(v84 + 8 * v86 + 72) == v87)
          {
            v88 = *(v84 + 2 * v86 + 328);
            if (v88 == *(a1 + 328 + 2 * v86))
            {
              mdb_xcursor_init2(v84, v85, v104);
            }

            else if (!v106)
            {
              v89 = *(v84 + 16);
              if (v89)
              {
                if ((*(v89 + 68) & 1) != 0 && v88 < (*(v87 + 12) - 16) >> 1)
                {
                  v90 = v87 + *(v87 + 16 + 2 * *(v84 + 2 * v86 + 328));
                  if ((*(v90 + 4) & 6) == 4)
                  {
                    *(v89 + 72) = v90 + *(v90 + 6) + 8;
                  }
                }
              }
            }
          }

          v84 = *v84;
        }

        while (v84);
      }
    }

    v91 = *(a1 + 16);
    v92 = *(v91 + 424);
    v20 = v112;
    result = mdb_cursor_put(v91, a3, &v122, v83 | (v112 >> 1) & 0x20000);
    if ((v112 & 2) != 0)
    {
      v93 = v110 + *(v110 + 6);
      v95 = *(*(a1 + 16) + 408);
      v94 = *(*(a1 + 16) + 424);
      *(v93 + 8) = *(*(a1 + 16) + 392);
      *(v93 + 24) = v95;
      *(v93 + 40) = v94;
    }

    v96 = *(*(a1 + 16) + 424) - v92;
    v27 = v105;
    LODWORD(v16) = v106;
LABEL_194:
    if (v96)
    {
      ++*(*(a1 + 40) + 32);
    }

    if (v16)
    {
      if (result)
      {
LABEL_204:
        if (result == -30799)
        {
          result = 4294936517;
        }

        else
        {
          result = result;
        }

LABEL_207:
        *(*(a1 + 24) + 124) |= 2u;
        return result;
      }

      *(a1 + 68) |= 1u;
    }

    if ((v20 & 0x80000) == 0 || result)
    {
      return result;
    }

    v97 = (v108 + 1);
    *(a3 + 16) = v97;
    if (v97 >= v11)
    {
      return 0;
    }

    ++v108;
    v111 = v20;
    *(a3 + 8) += *a3;
    v28 = *(a1 + 66);
    v30 = *(a1 + 40);
  }

  if (v115 <= 1)
  {
    v102 = v111 & 0x10000;
    v100 = v58;
    goto LABEL_215;
  }

  v98 = *(v10 + 16);
  v99 = mdb_page_malloc(*(a1 + 24), v59);
  if (v99)
  {
    v100 = v99;
    v101 = v98 * v59;
    *&v114 = v109;
    *(&v114 + 1) = v99;
    mdb_mid2l_insert(*(*(a1 + 24) + 72), &v114);
    v102 = v111 & 0x10000;
    if ((v111 & 0x10000) == 0)
    {
      memcpy(&v100[(*a3 & 0xFFFFFFFFFFFFFFF8) + 16], &v58[(*a3 & 0xFFFFFFFFFFFFFFF8) + 16], v101 - ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16));
      v101 = 16;
    }

    memcpy(v100, v58, v101);
LABEL_215:
    v51 = *a3;
    *v40 = *a3;
    v103 = v100 + 16;
    if (v102)
    {
      result = 0;
      goto LABEL_217;
    }

    v53 = *(a3 + 8);
    v52 = v100 + 16;
    goto LABEL_219;
  }

  return 12;
}

uint64_t mdb_freelist_save(uint64_t a1)
{
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  v53 = 0;
  mdb_cursor_init(v54, a1, 0, 0);
  v4 = (v2 + 176);
  if (!*(v2 + 176))
  {
    goto LABEL_95;
  }

  result = mdb_page_search(v54, 0, 5);
  if (result && result != -30798)
  {
    return result;
  }

  if (!*v4)
  {
LABEL_95:
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(a1 + 72);
      result = mdb_midl_need((a1 + 40), *(a1 + 56));
      if (result)
      {
        return result;
      }

      do
      {
        v8 = *(a1 + 40);
        v9 = *v8 + 1;
        *v8 = v9;
        v10 = *v6;
        v8[v9] = *v6;
        if ((*(a1 + 126) & 8) != 0)
        {
          if (*v7)
          {
            v11 = 1;
            do
            {
              if (*(v7 + 16 * v11) == v10)
              {
                break;
              }

              v11 = (v11 + 1);
            }

            while (*v7 >= v11);
          }

          else
          {
            LODWORD(v11) = 1;
          }
        }

        else
        {
          LODWORD(v11) = mdb_mid2l_search(v7, v10);
          if ((*(v6 + 5) & 4) != 0 && *(v6 + 3) != 1)
          {
            free(v6);
          }

          else
          {
            *v6 = *(v2 + 192);
            *(v2 + 192) = v6;
          }
        }

        *(v7 + 16 * v11 + 8) = 0;
        v6 = v6[6];
      }

      while (v6);
      v12 = *v7;
      if (*(v7 + 24))
      {
        v13 = 1;
        while (v12 >= v13)
        {
          v13 = (v13 + 1);
          v14 = v13;
          if (!*(v7 + 16 * v13 + 8))
          {
            goto LABEL_27;
          }
        }

        v14 = v13;
      }

      else
      {
        v14 = 1;
        v13 = 1;
      }

LABEL_27:
      if (v12 >= v13)
      {
        LODWORD(v16) = v14;
        while (1)
        {
          do
          {
            v16 = (v16 + 1);
            v17 = v7 + 16 * v16;
            if (*(v17 + 8))
            {
              v18 = 0;
            }

            else
            {
              v18 = v12 >= v16;
            }
          }

          while (v18);
          if (v12 < v16)
          {
            break;
          }

          *(v7 + 16 * v14++) = *v17;
          v12 = *v7;
        }

        v15 = v14 - 1;
      }

      else
      {
        v15 = 0;
      }

      *v7 = v15;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = *(v2 + 12) & 0x1080000;
  v47 = 1;
  while (1)
  {
LABEL_39:
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    if (v19 < *(v2 + 184))
    {
      while (1)
      {
        result = mdb_cursor_first(v54, &v51, 0);
        if (result)
        {
          return result;
        }

        v19 = *v52;
        v53 = *v52;
        result = mdb_cursor_del(v54, 0);
        if (result)
        {
          return result;
        }

        if (v19 >= *(v2 + 184))
        {
          v21 = 0;
          v22 = 0;
          break;
        }
      }
    }

    if (v20 < **(a1 + 40))
    {
      if (v20 || (result = mdb_page_search(v54, 0, 9), !result) || result == -30798)
      {
        v24 = *(a1 + 40);
        v51 = 8;
        v52 = (a1 + 24);
        v25 = *v24;
        while (1)
        {
          v20 = v25;
          v49 = 8 * v25 + 8;
          result = mdb_cursor_put(v54, &v51, &v49, 0x10000);
          if (result)
          {
            break;
          }

          v26 = *(a1 + 40);
          v25 = *v26;
          if (v20 >= *v26)
          {
            mdb_midl_sort(*(a1 + 40));
            memcpy(v50, v26, v49);
            goto LABEL_39;
          }
        }
      }

      return result;
    }

    v27 = *v4;
    v28 = v23;
    v29 = *v4 ? *v27 : 0;
    v30 = *(a1 + 56);
    v31 = v29 + v30;
    if (v22 >= v29 + v30)
    {
      break;
    }

    v32 = v53;
    if (v21 >= v3 && v53 >= 2)
    {
      v21 = 0;
      v32 = --v53;
    }

LABEL_64:
    v34 = v22 - v21;
    v35 = v31 - (v22 - v21);
    if (v35 > v3 && v32 >= 2)
    {
      v21 = v3 + (v35 / v32) / (v3 + 1) * (v3 + 1);
    }

    else
    {
      v21 = v35 & ~(v35 >> 63);
    }

    v23 = v28;
    v51 = 8;
    v52 = &v53;
    v49 = 8 * v21 + 8;
    result = mdb_cursor_put(v54, &v51, &v49, 0x10000);
    if (result)
    {
      return result;
    }

    if (v21 > v3 && v23 == 0)
    {
      v38 = v21;
    }

    else
    {
      v38 = 0;
    }

    bzero(&v50[v38 & (v38 >> 63)], 8 * (v38 - (v38 & (v38 >> 63))) + 8);
    v22 = v21 + v34;
  }

  if (v22 != v29 + v30 && v47 >= 1)
  {
    --v47;
    v32 = v53;
    goto LABEL_64;
  }

  v39 = *(a1 + 48);
  if (v39)
  {
    v40 = v30;
    result = mdb_midl_need((v2 + 176), (2 * v30) | 1);
    if (result)
    {
      return result;
    }

    v27 = *v4;
    v41 = &(*v4)[*(*v4 - 1) - v40];
    v42 = 1;
    do
    {
      v43 = v42;
      *&v41[2 * v42] = *v39;
      v39 = v39[6];
      ++v42;
    }

    while (v39);
    *v41 = v43;
    mdb_midl_sort(v41);
    mdb_midl_xmerge(v27, v41);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v31 = *v27;
  }

  if (!v31)
  {
    return 0;
  }

  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  result = mdb_cursor_first(v54, &v51, &v49);
  if (!result)
  {
    v44 = &v27[v31];
    do
    {
      v48 = *v52;
      v45 = (v49 >> 3) - 1;
      v52 = &v48;
      if (v45 > v31)
      {
        v49 = 8 * v31 + 8;
        v45 = v31;
      }

      v44 -= v45;
      v50 = v44;
      v46 = *v44;
      *v44 = v45;
      result = mdb_cursor_put(v54, &v51, &v49, 64);
      *v44 = v46;
      if (result)
      {
        break;
      }

      v31 -= v45;
      if (!v31)
      {
        break;
      }

      result = mdb_cursor_next(v54, &v51, &v49, 8);
    }

    while (!result);
  }

  return result;
}

uint64_t mdb_page_flush(uint64_t a1, int a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 72);
  v5 = *v4;
  if ((*(v3 + 14) & 8) == 0)
  {
    v37 = *(a1 + 32);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *(v3 + 16);
    v13 = *v3;
    v41 = *(a1 + 72);
    v42 = v5;
    v38 = v5 + 1;
    v14 = 1;
    v39 = 1 - v5;
    v40 = *v4;
    v35 = a2;
    v15 = a2;
    while (1)
    {
      if (v15 >= v5)
      {
        v19 = 0;
        LODWORD(v20) = v15++;
      }

      else
      {
        v16 = v15 + 1;
        v17 = &v4[2 * v16];
        v8 = v17[1];
        v18 = *(v8 + 10);
        if (v18 >= 0x4000)
        {
          v16 = 0;
          while (1)
          {
            *(v8 + 10) = v18 & 0x7FFF;
            *v17 = 0;
            if (!(v39 + v15 + v16))
            {
              break;
            }

            v8 = v17[3];
            v18 = *(v8 + 10);
            v17 += 2;
            ++v16;
            if (v18 < 0x4000)
            {
              v21 = v15 + v16;
              v19 = v21 < v42;
              LODWORD(v20) = v15 + v16;
              LODWORD(v16) = v21 + 1;
              goto LABEL_11;
            }
          }

          v19 = v15 + v16 + 1 < v42;
          LODWORD(v20) = v15 + v16 + 1;
          v15 = v38;
        }

        else
        {
          v19 = 1;
          LODWORD(v20) = v15;
LABEL_11:
          v15 = v16;
          v22 = *v17;
          *(v8 + 10) = v18 & 0x3FEF;
          v7 = v22 * v12;
          if ((v18 & 4) != 0)
          {
            v6 = *(v8 + 12) * v12;
          }

          else
          {
            v6 = v12;
          }
        }
      }

      if (v7 != v14 || v11 == 64 || v6 + v9 >= 0x40000001)
      {
        if (v11)
        {
          v43 = v19;
          v23 = v12;
          while (1)
          {
            if (v11 == 1)
            {
              v24 = pwrite(v13, __buf[0].iov_base, v9, v10);
            }

            else
            {
              while (lseek(v13, v10, 0) == -1)
              {
                result = *__error();
                if (result != 4)
                {
                  return result;
                }
              }

              v24 = writev(v13, __buf, v11);
            }

            LODWORD(v5) = v40;
            v4 = v41;
            v12 = v23;
            v19 = v43;
            if (v24 == v9)
            {
              break;
            }

            if ((v24 & 0x8000000000000000) == 0)
            {
              return 5;
            }

            result = *__error();
            if (result != 4)
            {
              return result;
            }
          }
        }

        if (!v19)
        {
          if ((*(v37 + 14) & 8) != 0)
          {
            v27 = v35;
          }

          else
          {
            v27 = v35;
            if (v5 <= v35)
            {
              LODWORD(v20) = v35;
            }

            else
            {
              v31 = v4 + 2;
              v32 = v35;
              do
              {
                v20 = v32;
                v33 = &v31[2 * v32];
                while (1)
                {
                  v34 = v33[1];
                  if (!*v33)
                  {
                    break;
                  }

                  if ((*(v34 + 5) & 4) != 0 && *(v34 + 3) != 1)
                  {
                    free(v34);
                    LODWORD(v5) = v40;
                    v4 = v41;
                  }

                  else
                  {
                    *v34 = *(v37 + 192);
                    *(v37 + 192) = v34;
                  }

                  ++v20;
                  v33 += 2;
                  if (v20 >= v42)
                  {
                    goto LABEL_59;
                  }
                }

                v32 = v20 + 1;
                *&v4[2 * ++v27] = *v33;
                v4[2 * v27] = *v34;
              }

              while (v20 + 1 < v5);
              LODWORD(v20) = v20 + 1;
            }
          }

LABEL_59:
          v2 = a1;
          goto LABEL_41;
        }

        v9 = 0;
        v11 = 0;
        v10 = v7;
      }

      v26 = &__buf[v11];
      v26->iov_base = v8;
      v26->iov_len = v6;
      v14 = v7 + v6;
      v9 += v6;
      ++v11;
    }
  }

  if (v5 <= a2)
  {
    LODWORD(v20) = a2;
    v27 = a2;
  }

  else
  {
    v27 = a2;
    do
    {
      v20 = a2;
      v28 = &v4[2 * a2 + 3];
      while (1)
      {
        v29 = *v28;
        v30 = *(*v28 + 10);
        if (v30 >= 0x4000)
        {
          break;
        }

        ++v20;
        *(v29 + 10) = v30 & 0x3FEF;
        v28 += 16;
        if (v20 >= v5)
        {
          goto LABEL_41;
        }
      }

      a2 = v20 + 1;
      *(v29 + 10) = v30 & 0x7FFF;
      *&v4[2 * ++v27] = *(v28 - 8);
    }

    while (v20 + 1 < v5);
    LODWORD(v20) = v20 + 1;
  }

LABEL_41:
  result = 0;
  *(v2 + 128) += v20 - v27;
  *v4 = v27;
  return result;
}

uint64_t mdb_env_write_meta(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(v3 + 12) | *(a1 + 124);
  v5 = *(v3 + 72 + 8 * (v2 & 1));
  v6 = *(*(v3 + 72 + 8 * !(v2 & 1)) + 16);
  if (v6 <= *(v3 + 112))
  {
    v6 = *(v3 + 112);
  }

  if ((v4 & 0x80000) == 0)
  {
    v29 = *(v5 + 128);
    v7 = *(v5 + 120);
    v30 = v6;
    v8 = *(a1 + 88);
    v9 = *v8;
    v10 = v8[2];
    v32 = v8[1];
    v33 = v10;
    v31 = v9;
    v12 = v8[4];
    v11 = v8[5];
    v34 = v8[3];
    v35 = v12;
    v36 = v11;
    v37 = *(a1 + 16) - 1;
    v38 = v2;
    v13 = v5 - *(v3 + 56);
    v14 = *(v3 + 8 * ((v4 & 0x50000) == 0));
    while (1)
    {
      v15 = pwrite(v14, &v30, 0x78uLL, v13 + 16);
      if (v15 == 120)
      {
        goto LABEL_10;
      }

      if ((v15 & 0x80000000) == 0)
      {
        v16 = 5;
LABEL_19:
        v37 = v7;
        v38 = v29;
        pwrite(*v3, &v30, 0x78uLL, v13 + 16);
        goto LABEL_20;
      }

      v16 = *__error();
      if (v16 != 4)
      {
        goto LABEL_19;
      }
    }
  }

  *(v5 + 16) = v6;
  v17 = *(a1 + 88);
  v18 = *v17;
  v19 = v17[1];
  *(v5 + 56) = v17[2];
  *(v5 + 40) = v19;
  *(v5 + 24) = v18;
  v20 = *(a1 + 88);
  v21 = v20[3];
  v22 = v20[4];
  *(v5 + 104) = v20[5];
  *(v5 + 88) = v22;
  *(v5 + 72) = v21;
  v23 = *(a1 + 24);
  *(v5 + 120) = *(a1 + 16) - 1;
  *(v5 + 128) = v23;
  if ((v4 & 0x50000) != 0 || ((*(v3 + 12) & 0x100000) != 0 ? (v25 = 1) : (v25 = 16), v26 = v5 - 16, v27 = (*(v3 + 20) - 1) & (v26 - *(v3 + 56)), !msync((v26 - v27), (v27 + *(v3 + 16)), v25)))
  {
LABEL_10:
    v24 = *(v3 + 64);
    v16 = 0;
    if (v24)
    {
      *(v24 + 8) = *(a1 + 24);
    }

    return v16;
  }

  v16 = *__error();
LABEL_20:
  *(v3 + 12) |= 0x80000000;
  return v16;
}

uint64_t mdb_cmp_long(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  v3 = **(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t mdb_get(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v9 = 0;
  result = 22;
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (*(a1 + 120) > a2)
        {
          v12 = 0;
          memset(v11, 0, sizeof(v11));
          memset(v10, 0, sizeof(v10));
          if ((*(*(a1 + 112) + a2) & 0x10) != 0)
          {
            if ((*(a1 + 124) & 0x13) != 0)
            {
              return 4294936514;
            }

            else
            {
              mdb_cursor_init(v11, a1, a2, v10);
              return mdb_cursor_set(v11, a3, a4, 15, &v9);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mdb_cursor_set(uint64_t a1, void *a2, void *a3, int a4, int *a5)
{
  if (!*a2)
  {
    return 4294936515;
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    *(v10 + 68) &= 0xFFFFFFFC;
  }

  if ((*(a1 + 68) & 1) == 0)
  {
    *(a1 + 72) = 0;
LABEL_6:
    result = mdb_page_search(a1, a2, 0);
    if (result)
    {
      return result;
    }

    v12 = *(a1 + 8 * *(a1 + 66) + 72);
    goto LABEL_8;
  }

  v38 = 0uLL;
  v15 = *(a1 + 66);
  v12 = *(a1 + 8 * v15 + 72);
  if ((v12[6] & 0xFFFE) == 0x10)
  {
    *(a1 + 2 * v15 + 328) = 0;
    return 4294936498;
  }

  if ((v12[5] & 0x20) != 0)
  {
    v14 = 0;
    v16 = **(a1 + 40);
    v17 = v12 + 8;
  }

  else
  {
    v14 = v12 + v12[8];
    v16 = *(v14 + 6);
    v17 = (v14 + 8);
  }

  *&v38 = v16;
  *(&v38 + 1) = v17;
  v18 = (*(*(a1 + 48) + 16))(a2, &v38);
  if (!v18)
  {
    *(a1 + 2 * *(a1 + 66) + 328) = 0;
    goto LABEL_27;
  }

  if (v18 <= 0)
  {
    LODWORD(v24) = *(a1 + 66);
    goto LABEL_41;
  }

  v19 = v12[6] - 16;
  v20 = v19 >> 1;
  if (v19 < 4)
  {
LABEL_33:
    v26 = a1 + 328;
    v24 = *(a1 + 66);
    if (*(a1 + 66))
    {
      v27 = 0;
      while (((*(*(v26 + 8 * v27 - 256) + 12) - 16) >> 1) - 1 <= *(v26 + 2 * v27))
      {
        if (v24 == ++v27)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      LODWORD(v27) = 0;
    }

    if (v27 == v24)
    {
LABEL_40:
      *(v26 + 2 * v24) = v20;
      return 4294936498;
    }

LABEL_41:
    if (!v24)
    {
      *(a1 + 328) = 0;
      if (a4 != 17 || a5)
      {
        return 4294936498;
      }

      goto LABEL_46;
    }

    goto LABEL_6;
  }

  v21 = v12 + 8;
  v22 = v20 - 1;
  if ((v12[5] & 0x20) != 0)
  {
    v23 = v21 + v38 * v22;
  }

  else
  {
    v14 = v12 + v21[v22];
    *&v38 = *(v14 + 6);
    v23 = v14 + 8;
  }

  *(&v38 + 1) = v23;
  v25 = (*(*(a1 + 48) + 16))(a2, &v38);
  if (!v25)
  {
    *(a1 + 2 * *(a1 + 66) + 328) = v20 - 1;
    goto LABEL_27;
  }

  if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v36 = *(a1 + 2 * *(a1 + 66) + 328);
  if (v36 < (v12[6] - 16) >> 1)
  {
    if ((v12[5] & 0x20) != 0)
    {
      v37 = v21 + v38 * v36;
    }

    else
    {
      v14 = v12 + v21[v36];
      *&v38 = *(v14 + 6);
      v37 = v14 + 8;
    }

    *(&v38 + 1) = v37;
    if (!(*(*(a1 + 48) + 16))(a2, &v38))
    {
LABEL_27:
      if (a5)
      {
        *a5 = 1;
      }

      goto LABEL_46;
    }
  }

  *(a1 + 68) &= ~2u;
LABEL_8:
  v13 = mdb_node_search(a1, a2, a5);
  v14 = v13;
  if (a5 && !*a5)
  {
    return 4294936498;
  }

  if (!v13)
  {
    result = mdb_cursor_sibling(a1, 1);
    if (result)
    {
      *(a1 + 68) |= 2u;
      return result;
    }

    v12 = *(a1 + 8 * *(a1 + 66) + 72);
    v14 = v12 + v12[8];
  }

LABEL_46:
  *(a1 + 68) = *(a1 + 68) & 0xFFFFFFFC | 1;
  if ((v12[5] & 0x20) != 0)
  {
    result = 0;
    if ((a4 & 0xFFFFFFFE) == 0x10)
    {
      v33 = **(a1 + 40);
      *a2 = v33;
      a2[1] = v12 + *(a1 + 2 * *(a1 + 66) + 328) * v33 + 16;
    }

    return result;
  }

  if ((*(v14 + 4) & 4) != 0)
  {
    mdb_xcursor_init1(a1, v14);
    if ((a4 - 15) > 2)
    {
      LODWORD(v38) = 0;
      if (a4 == 2)
      {
        v34 = &v38;
      }

      else
      {
        v34 = 0;
      }

      result = mdb_cursor_set(*(a1 + 16), a3, 0, 17, v34);
      if (!result)
      {
        goto LABEL_79;
      }

      return result;
    }

    result = mdb_cursor_first(*(a1 + 16), a3, 0);
LABEL_79:
    if ((a4 & 0xFFFFFFFE) == 0x10)
    {
      *a2 = *(v14 + 6);
      a2[1] = v14 + 8;
    }

    return result;
  }

  if (!a3)
  {
    result = 0;
    goto LABEL_79;
  }

  if ((a4 & 0xFFFFFFFE) == 2)
  {
    v38 = 0uLL;
    result = mdb_node_read(a1, v14, &v38);
    if (result)
    {
      return result;
    }

    v28 = *(*(a1 + 48) + 24);
    if (v38 == 8 && v28 == mdb_cmp_int)
    {
      v28 = mdb_cmp_cint;
    }

    v30 = v28(a3, &v38);
    v32 = a4 == 2 || v30 > 0;
    if (!v30 || !v32)
    {
      result = 0;
      *a3 = v38;
      goto LABEL_79;
    }

    return 4294936498;
  }

  v35 = *(a1 + 16);
  if (v35)
  {
    *(v35 + 68) &= 0xFFFFFFFC;
  }

  result = mdb_node_read(a1, v14, a3);
  if (!result)
  {
    goto LABEL_79;
  }

  return result;
}

uint64_t mdb_cursor_get(uint64_t a1, void *a2, void *a3, int a4)
{
  v29 = 0;
  if (!a1)
  {
    return 22;
  }

  if ((*(*(a1 + 24) + 124) & 0x13) != 0)
  {
    return 4294936514;
  }

  v7 = mdb_cursor_first;
  switch(a4)
  {
    case 0:
      result = mdb_cursor_first(a1, a2, a3);
      break;
    case 1:
      goto LABEL_32;
    case 2:
    case 3:
      if (!a3)
      {
        goto LABEL_58;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_47;
      }

LABEL_10:
      if (!a2)
      {
        goto LABEL_58;
      }

      if (a4 == 17)
      {
        v8 = 0;
      }

      else
      {
        v8 = &v29;
      }

      result = mdb_cursor_set(a1, a2, a3, a4, v8);
      break;
    case 4:
      if ((*(a1 + 68) & 1) == 0)
      {
        goto LABEL_58;
      }

      v10 = *(a1 + 66);
      v11 = *(a1 + 8 * v10 + 72);
      v12 = *(v11 + 12) - 16;
      v13 = v12 >> 1;
      v14 = a1 + 2 * v10;
      if (v12 < 2 || (v15 = *(v14 + 328), v13 <= v15))
      {
        *(v14 + 328) = v13;
        goto LABEL_56;
      }

      if ((*(v11 + 10) & 0x20) != 0)
      {
        result = 0;
        v28 = **(a1 + 40);
        *a2 = v28;
        a2[1] = v11 + v28 * v15 + 16;
      }

      else
      {
        v16 = v11 + *(v11 + 2 * v15 + 16);
        if (a2)
        {
          *a2 = *(v16 + 6);
          a2[1] = v16 + 8;
        }

        if (a3)
        {
          if ((*(v16 + 4) & 4) == 0)
          {
            goto LABEL_39;
          }

          result = mdb_cursor_get(*(a1 + 16), a3, 0, 4);
        }

        else
        {
LABEL_44:
          result = 0;
        }
      }

      break;
    case 5:
      if (!a3 || (*(a1 + 68) & 1) == 0)
      {
        goto LABEL_58;
      }

      if ((*(*(a1 + 40) + 4) & 0x10) == 0)
      {
        goto LABEL_47;
      }

      v9 = *(a1 + 16);
      if ((*(v9 + 68) & 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_54;
    case 6:
      result = mdb_cursor_last(a1, a2, a3);
      break;
    case 7:
      v7 = mdb_cursor_last;
LABEL_32:
      if (!a3)
      {
        goto LABEL_58;
      }

      v17 = *(a1 + 68);
      if ((v17 & 1) == 0)
      {
        goto LABEL_58;
      }

      v18 = *(a1 + 16);
      if (!v18)
      {
        goto LABEL_47;
      }

      v19 = *(a1 + 66);
      v20 = *(a1 + 328 + 2 * v19);
      v21 = *(a1 + 8 * v19 + 72);
      v22 = *(v21 + 12) - 16;
      if (v20 >= v22 >> 1)
      {
        *(a1 + 328 + 2 * v19) = v22 >> 1;
        goto LABEL_56;
      }

      *(a1 + 68) = v17 & 0xFFFFFFFD;
      v16 = v21 + *(v21 + 2 * v20 + 16);
      if ((*(v16 + 4) & 4) != 0)
      {
        if (*(v18 + 68))
        {
          result = v7();
        }

        else
        {
LABEL_58:
          result = 22;
        }
      }

      else
      {
        if (a2)
        {
          *a2 = *(v16 + 6);
          a2[1] = v16 + 8;
        }

LABEL_39:
        result = mdb_node_read(a1, v16, a3);
      }

      break;
    case 8:
    case 9:
    case 11:
      result = mdb_cursor_next(a1, a2, a3, a4);
      break;
    case 10:
      if (!a3)
      {
        goto LABEL_58;
      }

      if ((*(*(a1 + 40) + 4) & 0x10) == 0)
      {
        goto LABEL_47;
      }

      result = mdb_cursor_next(a1, a2, a3, 9);
      if (result)
      {
        break;
      }

      v9 = *(a1 + 16);
      if ((*(v9 + 68) & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    case 12:
    case 13:
    case 14:
      result = mdb_cursor_prev(a1, a2, a3, a4);
      break;
    case 15:
    case 16:
    case 17:
      goto LABEL_10;
    case 18:
      if (!a3)
      {
        goto LABEL_58;
      }

      if ((*(*(a1 + 40) + 4) & 0x10) != 0)
      {
        if ((*(a1 + 68) & 1) != 0 || (result = mdb_cursor_last(a1, a2, a3), !result))
        {
          v23 = *(a1 + 16);
          if (*(v23 + 68))
          {
            result = mdb_cursor_sibling(v23, 0);
            if (!result)
            {
              v9 = *(a1 + 16);
LABEL_54:
              result = 0;
              v24 = *(v9 + 66);
              v25 = v9 + 8 * v24;
              v26 = *(v25 + 72);
              *a3 = ((*(v26 + 12) - 16) >> 1) * **(v9 + 40);
              a3[1] = v26 + 16;
              *(v9 + 2 * v24 + 328) = ((*(*(v25 + 72) + 12) + 131056) >> 1) - 1;
            }
          }

          else
          {
LABEL_56:
            result = 4294936498;
          }
        }
      }

      else
      {
LABEL_47:
        result = 4294936512;
      }

      break;
    default:
      goto LABEL_58;
  }

  v27 = *(a1 + 68);
  if ((v27 & 8) != 0)
  {
    *(a1 + 68) = v27 & 0xFFFFFFF7;
  }

  return result;
}