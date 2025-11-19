void sub_26B50B928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::unique_ptr<fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>::~DefaultReplaceStateTable(v2);
    MEMORY[0x26D6787B0](v3, 0x10E0C4031FA3698);
  }

  return a1;
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ReplaceFstImpl(uint64_t a1)
{
  *a1 = &unk_287C082E0;
  v3 = (a1 + 240);
  std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 200);
  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1 + 176, *(a1 + 184));
  std::unique_ptr<fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>>::~unique_ptr[abi:ne200100]((a1 + 168));
  return fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(a1);
}

{
  *a1 = &unk_287C082E0;
  v4 = (a1 + 240);
  std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 200);
  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1 + 176, *(a1 + 184));
  std::unique_ptr<fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>>::~unique_ptr[abi:ne200100]((a1 + 168));
  v2 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(a1);
  return MEMORY[0x26D6787B0](v2, 0x10B3C4075DE3A39);
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Properties(void *a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    v4 = a1[30];
    if ((a1[31] - v4) >= 9)
    {
      v5 = 1;
      do
      {
        if ((*(**(v4 + 8 * v5) + 56))(*(v4 + 8 * v5), 4, 0))
        {
          a1[1] |= 4uLL;
        }

        ++v5;
        v4 = a1[30];
      }

      while (v5 < (a1[31] - v4) >> 3);
    }
  }

  return a1[1] & a2;
}

void fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>::DefaultReplaceStateTable(void *a1)
{
  fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::CompactHashBiTable(a1, 0, 0, 0);
}

{
  fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::CompactHashBiTable(a1, 0, 0, 0);
}

uint64_t *fst::CompactHashStateTable<fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>>::~CompactHashStateTable(uint64_t *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::~__hash_table((a1 + 4));
  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    MEMORY[0x26D6787B0](v3, 0xC400A2AC0F1);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    MEMORY[0x26D6787B0](v4, 0xC400A2AC0F1);
  }

  return a1;
}

void fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::CompactHashBiTable(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  *a1 = a3;
  if (!a4)
  {
    operator new();
  }

  a1[1] = a4;
  a1[2] = a1;
  a1[3] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::unordered_set();
}

void sub_26B50BCDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x26D6787B0](v3, 0xC400A2AC0F1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<fst::ReplaceStateTuple<int,long>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(result, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>(*(a1 + 32));
      v2[3] = *(v4 + 56);
      *(v4 + 56) = v2;
      v2 = v3;
    }

    while (v3);
  }

  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator((a1 + 32));

  return std::unique_ptr<std::__hash_node_base<std::__hash_node<int,void *> *> *[],std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>>::~unique_ptr[abi:ne200100](a1);
}

void fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::CompactHashBiTable(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  *a1 = a3;
  if (!a4)
  {
    operator new();
  }

  a1[1] = a4;
  a1[2] = a1;
  a1[3] = a1;
  std::unordered_set<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::unordered_set();
}

void sub_26B50C008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  *v10 = 0;
  if (v12)
  {
    MEMORY[0x26D6787B0](v12, 0xC400A2AC0F1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<fst::ReplaceStackPrefix<int,int>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unique_ptr<CMDPToken>>>>(result, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_26B50C138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::ReplaceStackPrefix<int,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node_base<std::__hash_node<long,void *> *> *[],std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>>::operator()[abi:ne200100](a1 + 8, v2);
  }

  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator((a1 + 16));
  return a1;
}

void fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::deallocate(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<2>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[2] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<1>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[1] = *(v4 + 56);
LABEL_22:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<4>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[4] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<8>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[8] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<16>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[16] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<32>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[32] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<64>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[64] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x40)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 9uLL);
    v1 = *v2;
  }

  if (!*(v1 + 64))
  {
    operator new();
  }

  return *(v1 + 64);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07BB8;
  a1[1] = &unk_287C07BE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07BB8;
  a1[1] = &unk_287C07BE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x80)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x11uLL);
    v1 = *v2;
  }

  if (!*(v1 + 128))
  {
    operator new();
  }

  return *(v1 + 128);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x100)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x21uLL);
    v1 = *v2;
  }

  if (!*(v1 + 256))
  {
    operator new();
  }

  return *(v1 + 256);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::__rehash<true>(uint64_t a1, size_t __n)
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
    v5 = vcvtps_u32_f32(*(a1 + 40) / *(a1 + 56));
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

      std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::allocate((a1 + 16), a2);
    v5 = *a1;
    *a1 = v4;
    if (v5)
    {
      std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>>::operator()[abi:ne200100](a1 + 8, v5);
    }

    v6 = 0;
    *(a1 + 8) = a2;
    do
    {
      *(*a1 + 8 * v6++) = 0;
    }

    while (a2 != v6);
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = v7[1];
      v9 = vcnt_s8(a2);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      *(*a1 + 8 * v8) = a1 + 24;
      v11 = *v7;
      if (*v7)
      {
        do
        {
          v12 = v11[1];
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= a2)
            {
              v12 %= a2;
            }
          }

          else
          {
            v12 &= a2 - 1;
          }

          if (v12 != v8)
          {
            v13 = *a1;
            if (!*(*a1 + 8 * v12))
            {
              v13[v12] = v7;
              goto LABEL_23;
            }

            *v7 = *v11;
            *v11 = *v13[v12];
            *v13[v12] = v11;
            v11 = v7;
          }

          v12 = v8;
LABEL_23:
          v7 = v11;
          v11 = *v11;
          v8 = v12;
        }

        while (v11);
      }
    }
  }

  else
  {
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>>::operator()[abi:ne200100](a1 + 8, v10);
    }

    *(a1 + 8) = 0;
  }
}

void *fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<24ul>::Allocate((v2 + 8), 1);
      result[2] = 0;
      return result;
    }

    v4 = result[2];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<16ul>::Allocate((v2 + 8), 1);
      result[1] = 0;
      return result;
    }

    v4 = result[1];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 61))
            {

              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<520ul>::Allocate((v2 + 8), 1);
            result[64] = 0;
            return result;
          }

          v4 = result[64];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<264ul>::Allocate((v2 + 8), 1);
            result[32] = 0;
            return result;
          }

          v4 = result[32];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::internal::MemoryArenaImpl<136ul>::Allocate((v2 + 8), 1);
          result[16] = 0;
          return result;
        }

        v4 = result[16];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::internal::MemoryArenaImpl<72ul>::Allocate((v2 + 8), 1);
        result[8] = 0;
        return result;
      }

      v4 = result[8];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<40ul>::Allocate((v2 + 8), 1);
      result[4] = 0;
      return result;
    }

    v4 = result[4];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<1>>(*(a1 + 32));
      v2[3] = *(v4 + 56);
      *(v4 + 56) = v2;
      v2 = v3;
    }

    while (v3);
  }

  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator((a1 + 32));

  return std::unique_ptr<std::__hash_node_base<std::__hash_node<long,void *> *> *[],std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>>>::~unique_ptr[abi:ne200100](a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC7)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x19uLL);
    v1 = *v2;
  }

  if (!*(v1 + 192))
  {
    operator new();
  }

  return *(v1 + 192);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C076F8;
  a1[1] = &unk_287C07720;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C076F8;
  a1[1] = &unk_287C07720;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x187)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x31uLL);
    v1 = *v2;
  }

  if (!*(v1 + 384))
  {
    operator new();
  }

  return *(v1 + 384);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x307)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x61uLL);
    v1 = *v2;
  }

  if (!*(v1 + 768))
  {
    operator new();
  }

  return *(v1 + 768);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C077F8;
  a1[1] = &unk_287C07820;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C077F8;
  a1[1] = &unk_287C07820;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x607)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0xC1uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1536))
  {
    operator new();
  }

  return *(v1 + 1536);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C078B8;
  a1[1] = &unk_287C078E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C078B8;
  a1[1] = &unk_287C078E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC07)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x181uLL);
    v1 = *v2;
  }

  if (!*(v1 + 3072))
  {
    operator new();
  }

  return *(v1 + 3072);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07978;
  a1[1] = &unk_287C079A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07978;
  a1[1] = &unk_287C079A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x300)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x301uLL);
    v1 = *v2;
  }

  if (!*(v1 + 6144))
  {
    operator new();
  }

  return *(v1 + 6144);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07A38;
  a1[1] = &unk_287C07A60;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07A38;
  a1[1] = &unk_287C07A60;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x600)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x601uLL);
    v1 = *v2;
  }

  if (!*(v1 + 12288))
  {
    operator new();
  }

  return *(v1 + 12288);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07AF8;
  a1[1] = &unk_287C07B20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07AF8;
  a1[1] = &unk_287C07B20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(v4, *v7, v7[1], (v7[1] - *v7) >> 3);
      v7 += 3;
      v4 = v13 + 3;
      v13 += 3;
    }

    while (v7 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      v8 = *v6;
      if (*v6)
      {
        v6[1] = v8;
        operator delete(v8);
      }

      v6 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B50E524(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<fst::ReplaceStackPrefix<int,int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<fst::ReplaceStackPrefix<int,int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<fst::ReplaceStackPrefix<int,int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<fst::ReplaceStackPrefix<int,int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<fst::ReplaceStackPrefix<int,int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<fst::ReplaceStackPrefix<int,int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::clear[abi:ne200100](void *result)
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

uint64_t *fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>::~DefaultReplaceStateTable(uint64_t *a1)
{
  v8 = (a1 + 30);
  std::vector<fst::ReplaceStackPrefix<int,int>>::__destroy_vector::operator()[abi:ne200100](&v8);
  std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::~__hash_table((a1 + 21));
  v2 = a1[18];
  a1[18] = 0;
  if (v2)
  {
    MEMORY[0x26D6787B0](v2, 0xC400A2AC0F1);
  }

  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    MEMORY[0x26D6787B0](v3, 0xC400A2AC0F1);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::~__hash_table((a1 + 4));
  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    MEMORY[0x26D6787B0](v5, 0xC400A2AC0F1);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    MEMORY[0x26D6787B0](v6, 0xC400A2AC0F1);
  }

  return a1;
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Start(uint64_t a1)
{
  if (*(a1 + 56))
  {
    return *(a1 + 60);
  }

  if ((*(*a1 + 24))(a1, 4))
  {
    *(a1 + 56) = 1;
    return *(a1 + 60);
  }

  if (*(a1 + 56))
  {
    return *(a1 + 60);
  }

  v3 = *(a1 + 240);
  if (*(a1 + 248) - v3 == 8)
  {
    result = 0xFFFFFFFFLL;
    *(a1 + 60) = -1;
    *(a1 + 56) = 1;
    if ((*(a1 + 64) & 0x80000000) != 0)
    {
      *(a1 + 64) = 0;
    }
  }

  else
  {
    v4 = *(v3 + 8 * *(a1 + 264));
    result = (*(*v4 + 16))(v4);
    if (result != -1)
    {
      v5 = result;
      memset(__p, 0, sizeof(__p));
      Id = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::FindId((*(a1 + 168) + 136), __p, 1);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v7 = *(a1 + 168);
      v8 = *(a1 + 264);
      __p[0] = Id;
      __p[1] = __PAIR64__(v5, v8);
      result = fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::FindId(v7, __p, 1);
      *(a1 + 60) = result;
      *(a1 + 56) = 1;
      if (*(a1 + 64) <= result)
      {
        *(a1 + 64) = result + 1;
      }
    }
  }

  return result;
}

void sub_26B50EE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::FindId(void *a1, uint64_t *a2, int a3)
{
  a1[16] = a2;
  if (!a3)
  {
    v5 = std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::find<long>((a1 + 4), &fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::kCurrentKey);
    if (!v5)
    {
      return -1;
    }

    return v5[2];
  }

  v5 = std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::__emplace_unique_key_args<long,long const&>((a1 + 4), &fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::kCurrentKey, &fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::kCurrentKey);
  if ((v6 & 1) == 0)
  {
    return v5[2];
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((a1[14] - a1[13]) >> 3);
  v5[2] = v7;
  std::vector<fst::ReplaceStackPrefix<int,int>>::push_back[abi:ne200100]((a1 + 13), a2);
  return v7;
}

uint64_t std::vector<fst::ReplaceStackPrefix<int,int>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<fst::ReplaceStackPrefix<int,int>>::__emplace_back_slow_path<fst::ReplaceStackPrefix<int,int> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::ReplaceStackPrefix<int,int>>::__construct_one_at_end[abi:ne200100]<fst::ReplaceStackPrefix<int,int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::__emplace_unique_key_args<long,long const&>(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc::operator()((a1 + 48), *a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            if (fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual::operator()((a1 + 64), v13[2], *a2))
            {
              return v13;
            }
          }

          else
          {
            if (v11 > 1)
            {
              if (v14 >= v9)
              {
                v14 %= v9;
              }
            }

            else
            {
              v14 &= v9 - 1;
            }

            if (v14 != v3)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v15 = fst::PoolAllocator<std::__hash_node<long,void *>>::allocate((a1 + 32), 1uLL);
  v27[0] = v15;
  v27[1] = a1 + 32;
  v27[2] = 1;
  *v15 = 0;
  v15[1] = v8;
  v15[2] = *a3;
  v16 = (*(a1 + 40) + 1);
  v17 = *(a1 + 56);
  if (!v9 || (v17 * v9) < v16)
  {
    v18 = 1;
    if (v9 >= 3)
    {
      v18 = (v9 & (v9 - 1)) != 0;
    }

    v19 = v18 | (2 * v9);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::__rehash<true>(a1, v21);
    v9 = *(a1 + 8);
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

  v22 = *a1;
  v23 = *(*a1 + 8 * v3);
  if (v23)
  {
    v13 = v27[0];
    *v27[0] = *v23;
    *v23 = v13;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 24);
    *(a1 + 24) = v24;
    *(v22 + 8 * v3) = a1 + 24;
    v13 = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
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

      *(*a1 + 8 * v25) = v27[0];
      v13 = v27[0];
    }
  }

  v27[0] = 0;
  ++*(a1 + 40);
  std::unique_ptr<std::__hash_node<long,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<long,void *>>>>::reset[abi:ne200100](v27, 0);
  return v13;
}

void sub_26B50F16C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<long,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<long,void *>>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc::operator()(uint64_t *a1, uint64_t a2)
{
  if (a2 < -1)
  {
    return 0;
  }

  v2 = *a1;
  v3 = a2 == -1 ? *(v2 + 128) : (*(v2 + 104) + 24 * a2);
  v4 = *v3;
  v5 = v3[1];
  if (v4 == v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    v7 = *v4;
    v8 = v4[1];
    v4 += 2;
    result += v7 + 7863 * v8;
  }

  while (v4 != v5);
  return result;
}

uint64_t fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual::operator()(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  result = 0;
  if (a2 >= -1 && a3 >= -1)
  {
    v5 = *a1;
    if (a2 == -1)
    {
      v6 = v5[16];
    }

    else
    {
      v6 = (v5[13] + 24 * a2);
    }

    if (a3 == -1)
    {
      v7 = v5[16];
    }

    else
    {
      v7 = (v5[13] + 24 * a3);
    }

    return std::equal_to<fst::ReplaceStackPrefix<int,int>>::operator()[abi:ne200100](v5[1], v6, v7);
  }

  return result;
}

uint64_t std::equal_to<fst::ReplaceStackPrefix<int,int>>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v5 == a3[1] - *a3)
  {
    if (v4 == v3)
    {
      return 1;
    }

    v6 = v5 >> 3;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = (*a3 + 4);
    for (i = (v3 + 4); *(i - 1) == *(v7 - 1) && *i == *v7; i += 2)
    {
      v7 += 2;
      if (!--v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

void *fst::PoolAllocator<std::__hash_node<long,void *>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<56ul>::Allocate((v2 + 8), 1);
      result[6] = 0;
      return result;
    }

    v4 = result[6];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<32ul>::Allocate((v2 + 8), 1);
      result[3] = 0;
      return result;
    }

    v4 = result[3];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (a2 < 0xAAAAAAAAAAAAAABLL)
            {

              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<1544ul>::Allocate((v2 + 8), 1);
            result[192] = 0;
            return result;
          }

          v4 = result[192];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<776ul>::Allocate((v2 + 8), 1);
            result[96] = 0;
            return result;
          }

          v4 = result[96];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::internal::MemoryArenaImpl<392ul>::Allocate((v2 + 8), 1);
          result[48] = 0;
          return result;
        }

        v4 = result[48];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::internal::MemoryArenaImpl<200ul>::Allocate((v2 + 8), 1);
        result[24] = 0;
        return result;
      }

      v4 = result[24];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<104ul>::Allocate((v2 + 8), 1);
      result[12] = 0;
      return result;
    }

    v4 = result[12];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<long,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<long,void *>>>>::reset[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    result = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<1>>(**(result + 8));
    *(v2 + 24) = *(result + 56);
    *(result + 56) = v2;
  }

  return result;
}

uint64_t std::vector<fst::ReplaceStackPrefix<int,int>>::__construct_one_at_end[abi:ne200100]<fst::ReplaceStackPrefix<int,int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<fst::ReplaceStackPrefix<int,int>>::__emplace_back_slow_path<fst::ReplaceStackPrefix<int,int> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unique_ptr<CMDPToken>>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  *&v16 = v16 + 24;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::ReplaceStackPrefix<int,int>>::~__split_buffer(&v14);
  return v13;
}

void sub_26B50F664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::ReplaceStackPrefix<int,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::find<long>(uint64_t a1, uint64_t *a2)
{
  v4 = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc::operator()((a1 + 48), *a2);
  v5 = *(a1 + 8);
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual::operator()((a1 + 64), v11[2], *a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::FindId(void *a1, _OWORD *a2, int a3)
{
  a1[16] = a2;
  if (a3)
  {
    v5 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__emplace_unique_key_args<int,int const&>((a1 + 4), &fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::kCurrentKey, &fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::kCurrentKey);
    if (v6)
    {
      v7 = a1[13];
      v8 = a1[14];
      v9 = a1[15];
      v10 = (v8 - v7) >> 4;
      *(v5 + 4) = v10;
      if (v8 >= v9)
      {
        v13 = v10 + 1;
        if ((v10 + 1) >> 60)
        {
          std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v7;
        if (v14 >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>((a1 + 13), v15);
        }

        *(16 * v10) = *a2;
        v11 = 16 * v10 + 16;
        v16 = a1[13];
        v17 = a1[14] - v16;
        v18 = (16 * v10 - v17);
        memcpy(v18, v16, v17);
        v19 = a1[13];
        a1[13] = v18;
        a1[14] = v11;
        a1[15] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8 = *a2;
        v11 = (v8 + 1);
      }

      a1[14] = v11;
    }

    else
    {
      return *(v5 + 4);
    }
  }

  else
  {
    v12 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::find<int>(a1 + 4, &fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::kCurrentKey);
    if (v12)
    {
      return *(v12 + 4);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v10;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2, _DWORD *a3)
{
  v7 = *a2;
  if (v7 < -1)
  {
    v10 = 0;
  }

  else
  {
    v8 = *(a1 + 48);
    if (v7 == -1)
    {
      v9 = *(v8 + 128);
    }

    else
    {
      v9 = *(v8 + 104) + 16 * v7;
    }

    v10 = *v9 + 7853 * *(v9 + 8) + 7867 * *(v9 + 12);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v3 = v10;
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v3);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual::operator()((a1 + 64), *(i + 4), *a2))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v17 = fst::PoolAllocator<std::__hash_node<int,void *>>::allocate((a1 + 32), 1uLL);
  v29[0] = v17;
  v29[1] = a1 + 32;
  v29[2] = 1;
  *v17 = 0;
  v17[1] = v10;
  *(v17 + 4) = *a3;
  v18 = (*(a1 + 40) + 1);
  v19 = *(a1 + 56);
  if (!v11 || (v19 * v11) < v18)
  {
    v20 = 1;
    if (v11 >= 3)
    {
      v20 = (v11 & (v11 - 1)) != 0;
    }

    v21 = v20 | (2 * v11);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__rehash<true>(a1, v23);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }

      else
      {
        v3 = v10;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v3);
  if (v25)
  {
    i = v29[0];
    *v29[0] = *v25;
    *v25 = i;
  }

  else
  {
    v26 = v29[0];
    *v29[0] = *(a1 + 24);
    *(a1 + 24) = v26;
    *(v24 + 8 * v3) = a1 + 24;
    i = v29[0];
    if (*v29[0])
    {
      v27 = *(*v29[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v27 >= v11)
        {
          v27 %= v11;
        }
      }

      else
      {
        v27 &= v11 - 1;
      }

      *(*a1 + 8 * v27) = v29[0];
      i = v29[0];
    }
  }

  v29[0] = 0;
  ++*(a1 + 40);
  std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](v29, 0);
  return i;
}

void sub_26B50FB58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

BOOL fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual::operator()(uint64_t *a1, int a2, int a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  result = 0;
  if (a2 >= -1 && a3 >= -1)
  {
    v5 = *a1;
    if (a2 == -1)
    {
      v6 = *(v5 + 128);
    }

    else
    {
      v6 = *(v5 + 104) + 16 * a2;
    }

    if (a3 == -1)
    {
      v7 = *(v5 + 128);
    }

    else
    {
      v7 = *(v5 + 104) + 16 * a3;
    }

    return *v6 == *v7 && *(v6 + 8) == *(v7 + 8) && *(v6 + 12) == *(v7 + 12);
  }

  return result;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::find<int>(void *a1, int *a2)
{
  v4 = *a2;
  if (v4 < -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[6];
    if (v4 == -1)
    {
      v6 = *(v5 + 128);
    }

    else
    {
      v6 = *(v5 + 104) + 16 * v4;
    }

    v7 = *v6 + 7853 * *(v6 + 8) + 7867 * *(v6 + 12);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v7)
    {
      if (fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual::operator()(a1 + 8, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

_DWORD *fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X8>)
{
  result = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasFinal(a1, a2);
  if (result)
  {
    v7 = *(a1 + 120);
    if (*(v7 + 92) == a2)
    {
      v8 = (v7 + 96);
    }

    else
    {
      v8 = (*(v7 + 8) + 8 * a2 + 8);
    }

    *a3 = **v8;
  }

  else
  {
    v9 = *(*(a1 + 168) + 104) + 16 * a2;
    v10 = fst::TropicalWeightTpl<float>::Zero();
    v11 = *v10;
    *a3 = *v10;
    if (!*v9)
    {
      v12 = *(v9 + 12);
      (*(**(*(a1 + 240) + 8 * *(v9 + 8)) + 24))(&v13);
      v11 = v13;
      *a3 = v13;
    }

    if ((*(a1 + 160) & 1) != 0 || (result = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2), result))
    {
      result = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(*(a1 + 120), a2);
      *result = v11;
      result[14] |= 9u;
    }
  }

  return result;
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumArcs(uint64_t a1, int a2)
{
  if (!fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2))
  {
    if (*(a1 + 160) != 1)
    {
      v9 = *(*(*(a1 + 168) + 104) + 16 * a2);
      if (HIDWORD(v9) == -1)
      {
        return 0;
      }

      v7 = *(*(a1 + 240) + 8 * SDWORD2(v9));
      v8 = (*(*v7 + 32))(v7);
      return v8 + fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(a1, &v9, 0, 15);
    }

    fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Expand(a1, a2);
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

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

void fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Expand(uint64_t *a1, int a2)
{
  v12 = *(*(a1[21] + 104) + 16 * a2);
  if (HIDWORD(v12) != -1)
  {
    v4 = *(a1[30] + 8 * SDWORD2(v12));
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    (*(*v4 + 120))(v4);
    if (fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(a1, &v12, v8, 15))
    {
      MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(a1[15], a2);
      std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::push_back[abi:ne200100](MutableState + 3, v8);
    }

    while (1)
    {
      if (v9)
      {
        if ((*(*v9 + 16))(v9))
        {
LABEL_15:
          fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a1, a2);
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          else if (*(&v10 + 1))
          {
            --**(&v10 + 1);
          }

          return;
        }

        if (v9)
        {
          v6 = (*(*v9 + 24))(v9);
          goto LABEL_8;
        }
      }

      else if (v11 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (*(&v9 + 1) + 16 * v11);
LABEL_8:
      if (fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeArc(a1, &v12, v6, v8, 15))
      {
        v7 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(a1[15], a2);
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::push_back[abi:ne200100](v7 + 3, v8);
      }

      if (v9)
      {
        (*(*v9 + 32))(v9);
      }

      else
      {
        ++v11;
      }
    }
  }

  fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a1, a2);
}

void sub_26B51016C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(uint64_t a1, uint64_t *a2, _DWORD *a3, char a4)
{
  if (*(a2 + 3) == -1)
  {
    return 0;
  }

  v8 = *(**(*(a1 + 240) + 8 * *(a2 + 2)) + 24);
  v9 = *(a2 + 3);
  v8(&v25);
  v10 = fst::TropicalWeightTpl<float>::Zero();
  LODWORD(v21) = v25;
  HIDWORD(v25) = *v10;
  v11.n128_u32[0] = v25;
  if (*&v25 == *(&v25 + 1))
  {
    return 0;
  }

  v12 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (a3)
  {
    v13 = *(a1 + 136);
    if ((v13 & 0xFFFFFFFD) == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 152);
    }

    *a3 = v14;
    if ((v13 - 1) >= 2)
    {
      v16 = *(a1 + 152);
    }

    else
    {
      v16 = 0;
    }

    a3[1] = v16;
    if ((a4 & 8) != 0)
    {
      v17 = (*(*(a1 + 168) + 240) + 24 * v12);
      v23 = 0;
      v24 = 0;
      __p = 0;
      std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(&__p, *v17, v17[1], (v17[1] - *v17) >> 3);
      v23 -= 8;
      Id = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::FindId((*(a1 + 168) + 136), &__p, 1);
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      v19 = v17[1];
      v20 = *(a1 + 168);
      *&v21 = Id;
      *(&v21 + 1) = *(v19 - 8);
      a3[3] = fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::FindId(v20, &v21, 1);
    }

    if ((a4 & 4) != 0)
    {
      (*(**(*(a1 + 240) + 8 * *(a2 + 2)) + 24))(&v21, v11);
      a3[2] = v21;
    }
  }

  return 1;
}

void sub_26B510394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeArc(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, int a5)
{
  v7 = (a5 & 0xFFFFFFFA) != 0 || (*(a1 + 132) & 0xFFFFFFFD) == 1;
  if (!v7)
  {
    *a4 = *a3;
    *(a4 + 8) = a3[2];
    Id = a3[3];
LABEL_21:
    *(a4 + 12) = Id;
    return 1;
  }

  v8 = a5;
  v12 = a3 + 1;
  v11 = a3[1];
  if (!v11 || v11 < *(*(a1 + 176) + 28))
  {
    goto LABEL_16;
  }

  v13 = a1 + 184;
  v14 = *(a1 + 184);
  if (v14)
  {
    do
    {
      v15 = v14;
      v14 = *(v14 + 8);
    }

    while (v14);
  }

  else
  {
    do
    {
      v15 = *(v13 + 16);
      v7 = *v15 == v13;
      v13 = v15;
    }

    while (v7);
  }

  if (v11 > *(v15 + 28) || (v16 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 200), a3 + 1)) == 0)
  {
LABEL_16:
    if ((v8 & 8) != 0)
    {
      v24 = *(a1 + 168);
      v25 = *(a2 + 8);
      v26 = a3[3];
      *&v46 = *a2;
      *(&v46 + 1) = __PAIR64__(v26, v25);
      Id = fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::FindId(v24, &v46, 1);
    }

    else
    {
      Id = -1;
    }

    v27 = *a3;
    v28 = a3[2];
    goto LABEL_20;
  }

  v17 = *(v16 + 5);
  v18 = (*(*(a1 + 168) + 240) + 24 * *a2);
  __p = 0;
  v44 = 0;
  v45 = 0;
  std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(&__p, *v18, v18[1], (v18[1] - *v18) >> 3);
  v19 = *(a2 + 8);
  v20 = a3[3];
  v21 = v44;
  if (v44 >= v45)
  {
    v30 = (v44 - __p) >> 3;
    if ((v30 + 1) >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v31 = (v45 - __p) >> 2;
    if (v31 <= v30 + 1)
    {
      v31 = v30 + 1;
    }

    if (v45 - __p >= 0x7FFFFFFFFFFFFFF8)
    {
      v32 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v32);
    }

    v33 = (8 * v30);
    *v33 = v19 | (v20 << 32);
    v22 = 8 * v30 + 8;
    v34 = v33 - (v44 - __p);
    memcpy(v34, __p, v44 - __p);
    v35 = __p;
    __p = v34;
    v44 = v22;
    v45 = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    *v44 = v19 | (v20 << 32);
    v22 = (v21 + 8);
  }

  v44 = v22;
  v36 = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::FindId((*(a1 + 168) + 136), &__p, 1);
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  v37 = *(*(a1 + 240) + 8 * v17);
  v38 = (*(*v37 + 16))(v37);
  if (v38 != -1)
  {
    if ((v8 & 8) != 0)
    {
      v39 = *(a1 + 168);
      *&v46 = v36;
      *(&v46 + 1) = __PAIR64__(v38, v17);
      Id = fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::FindId(v39, &v46, 1);
    }

    else
    {
      Id = -1;
    }

    v40 = 0;
    v41 = *(a1 + 132);
    if ((v41 & 0xFFFFFFFD) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = *a3;
    }

    if ((v41 - 1) >= 2)
    {
      v40 = *(a1 + 144);
      if (v40 == -1)
      {
        v40 = *v12;
      }
    }

    v28 = a3[2];
    v27 = v42 | (v40 << 32);
LABEL_20:
    *a4 = v27;
    *(a4 + 8) = v28;
    goto LABEL_21;
  }

  return 0;
}

void sub_26B5106A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumInputEpsilons(uint64_t *a1, int a2)
{
  if (!fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2))
  {
    if ((a1[20] & 1) == 0 && (*(*a1 + 24))(a1, 0x10000000))
    {
      v9 = *(*(a1[21] + 104) + 16 * a2);
      if (HIDWORD(v9) == -1)
      {
        return 0;
      }

      v4 = *(a1[30] + 8 * SDWORD2(v9));
      if ((*(a1 + 33) & 0xFFFFFFFD) == 1)
      {
        (*(*v4 + 120))(v4);
        v5 = 0;
      }

      else
      {
        v5 = (*(*v4 + 40))(v4);
      }

      if ((a1[17] & 0xFFFFFFFD) == 1)
      {
        v5 += fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(a1, &v9, 0, 15);
      }

      return v5;
    }

    fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Expand(a1, a2);
  }

  v6 = a1[15];
  if (*(v6 + 92) == a2)
  {
    v7 = v6 + 96;
  }

  else
  {
    v7 = *(v6 + 8) + 8 * a2 + 8;
  }

  return *(*v7 + 8);
}

void sub_26B5109AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(a9);
  }

  else
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(&a9);
  }

  _Unwind_Resume(a1);
}

BOOL fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::IsNonTerminal(void *a1, int a2)
{
  v7 = a2;
  if (*(a1[22] + 28) > a2)
  {
    return 0;
  }

  v2 = a1 + 23;
  v3 = a1[23];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 8);
    }

    while (v3);
  }

  else
  {
    do
    {
      v4 = v2[2];
      v5 = *v4 == v2;
      v2 = v4;
    }

    while (v5);
  }

  return *(v4 + 28) >= a2 && std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1 + 25, &v7) != 0;
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumOutputEpsilons(uint64_t *a1, int a2)
{
  if (!fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2))
  {
    if ((a1[20] & 1) == 0 && (*(*a1 + 24))(a1, 0x40000000))
    {
      v9 = *(*(a1[21] + 104) + 16 * a2);
      if (HIDWORD(v9) == -1)
      {
        return 0;
      }

      v4 = *(a1[30] + 8 * SDWORD2(v9));
      if ((*(a1 + 33) - 1) >= 2)
      {
        v5 = (*(*v4 + 48))(v4);
      }

      else
      {
        (*(*v4 + 120))(v4);
        v5 = 0;
      }

      if ((*(a1 + 34) - 1) <= 1)
      {
        v5 += fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(a1, &v9, 0, 15);
      }

      return v5;
    }

    fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Expand(a1, a2);
  }

  v6 = a1[15];
  if (*(v6 + 92) == a2)
  {
    v7 = v6 + 96;
  }

  else
  {
    v7 = *(v6 + 8) + 8 * a2 + 8;
  }

  return *(*v7 + 16);
}

void sub_26B510D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(a9);
  }

  else
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(&a9);
  }

  _Unwind_Resume(a1);
}

void *fst::ImplToFst<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ImplToFst(void *a1, uint64_t a2, int a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C086A8;
  if (a3)
  {
    v4 = *(a2 + 8);
    std::allocate_shared[abi:ne200100]<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,std::allocator<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>&,0>();
  }

  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v7 = a1[2];
    a1[1] = v6;
    a1[2] = v5;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    a1[1] = v6;
    a1[2] = 0;
  }

  return a1;
}

void sub_26B510E18(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__shared_ptr_emplace[abi:ne200100]<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>&,std::allocator<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C08290;
  fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReplaceFstImpl((a1 + 3), a2);
}

void sub_26B511248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v17 + 200);
  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v17 + 176, *(v17 + 184));
  std::unique_ptr<fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>>::~unique_ptr[abi:ne200100]((v17 + 168));
  fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(v17);
  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>>(result, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_26B5114A0(_Unwind_Exception *a1)
{
  std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::~__hash_table((v2 + 4));
  v4 = v2[1];
  v2[1] = 0;
  if (v4)
  {
    MEMORY[0x26D6787B0](v4, v1);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    MEMORY[0x26D6787B0](v5, v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::ReplaceStackPrefix<int,int>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>*,fst::ReplaceStackPrefix<int,int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ReplaceStackPrefix<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B511568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::ReplaceStackPrefix<int,int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<fst::ReplaceStackPrefix<int,int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unique_ptr<CMDPToken>>>>(a1, a2);
  }

  std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*,fst::ReplaceStackPrefix<int,int>*,fst::ReplaceStackPrefix<int,int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void *std::set<int>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<int>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<int>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t std::unordered_map<int,int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int const,int> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int const,int> const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t fst::CacheStateIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 64))
  {
    return 0;
  }

  v5 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 64))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ArcIterator(v15, *(a1 + 8), v6);
    fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFlags(v15, 15, 31);
    v7 = v16;
    v8 = v17;
    while (v7 < v8)
    {
      v9 = *(a1 + 16);
      v10 = fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Value(v15)[3];
      if (*(v9 + 64) <= v10)
      {
        *(v9 + 64) = v10 + 1;
      }

      v8 = v17;
      v7 = ++v16;
    }

    fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetExpandedState(*(a1 + 16), v6);
    v11 = *(a1 + 24);
    v12 = *(a1 + 16);
    v13 = *(v12 + 64);
    v4 = v11 >= v13;
    if (v18)
    {
      --*v18;
    }

    if (v19)
    {
      --*v19;
    }

    if (v11 < v13)
    {
      break;
    }

    v6 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MinUnexpandedState(v12);
  }

  while (v6 < *(*(a1 + 16) + 64));
  return v4;
}

void sub_26B511DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26)
{
  if (a22)
  {
    --*a22;
  }

  if (a26)
  {
    --*a26;
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFlags(int *a1, int a2, int a3)
{
  v3 = a2;
  v5 = a1[14] & ~a3;
  result = *(*a1 + 8);
  if (*(result + 160))
  {
    v7 = 15;
  }

  else
  {
    v7 = 31;
  }

  v8 = v7 & a2 | v5;
  a1[14] = v8;
  if ((v8 & 0x10) == 0 && a1[38] != 15)
  {
    result = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(result, a1[2]);
    if ((result & 1) == 0)
    {
      a1[38] = 0;
    }
  }

  if ((v3 & 0x10) != 0 && !a1[38])
  {

    return fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Init(a1);
  }

  return result;
}

unsigned int *fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Value(void *a1)
{
  v2 = *(a1 + 38);
  if (v2)
  {
    v3 = a1[5];
    v4 = v2 ^ 0xF;
  }

  else
  {
    if ((a1[7] & 0x10) != 0)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      LogMessage::LogMessage(&v11, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "ReplaceFst: Inconsistent arc iterator flags", 43);
      LogMessage::~LogMessage(&v11);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    (*(**a1 + 120))(*a1, *(a1 + 2), a1 + 10);
    v4 = 0;
    v3 = 0;
    a1[18] = a1[11];
    *(a1 + 38) = 15;
    a1[5] = 0;
  }

  v5 = a1[4] - v3;
  if (v5 < 0)
  {
    v7 = *(a1 + 14);
    if (((*(a1 + 43) ^ 0xF) & v7) != 0)
    {
      fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(*(*a1 + 8), a1 + 2, a1 + 39, v7 & 0xF);
      *(a1 + 43) = a1[7] & 0xF;
    }

    return a1 + 39;
  }

  else
  {
    v6 = (a1[18] + 16 * v5);
    if ((v4 & a1[7]) != 0)
    {
      fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeArc(*(*a1 + 8), (a1 + 2), v6, a1 + 60, a1[7] & 0xF);
      return a1 + 15;
    }
  }

  return v6;
}

void sub_26B512040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  a1[2] = -1;
  v4 = a1 + 2;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = -1;
  *(a1 + 14) = 15;
  *(a1 + 5) = 0u;
  v5 = a1 + 10;
  *(a1 + 7) = 0u;
  v6 = a1 + 14;
  *(a1 + 43) = 0;
  *(a1 + 6) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 140) = 0u;
  v7 = *(a2 + 8);
  if (*(v7 + 160) == 1)
  {
    HasArcs = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(v7, a3);
    a2 = *a1;
    a3 = *(a1 + 2);
    if ((HasArcs & 1) == 0)
    {
      fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Expand(*(a2 + 8), *(a1 + 2));
      a2 = *a1;
      a3 = *(a1 + 2);
    }
  }

  v9 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(*(a2 + 8), a3);
  v10 = *a1;
  v11 = *(*a1 + 8);
  if (v9)
  {
    fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitArcIterator(v11, *(a1 + 2), v5);
    v12 = a1[11];
    a1[6] = a1[12];
    a1[18] = v12;
    *(a1 + 38) = 15;
  }

  else
  {
    *v4 = *(*(*(v11 + 168) + 104) + 16 * *(a1 + 2));
    v13 = *(a1 + 7);
    if (v13 == -1)
    {
      a1[6] = 0;
    }

    else
    {
      v14 = *(*(*(v10 + 8) + 240) + 8 * *(a1 + 6));
      (*(*v14 + 120))(v14, v13, v6);
      a1[18] = a1[15];
      v15 = fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(*(*a1 + 8), v4, a1 + 39, 7);
      *(a1 + 43) = 7;
      v16 = a1[16] + v15;
      a1[5] = v15;
      a1[6] = v16;
      *(a1 + 38) = 0;
    }
  }

  return a1;
}

uint64_t fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Init(uint64_t result)
{
  v1 = result;
  if ((*(result + 56) & 0x10) != 0)
  {
    v5 = *(result + 128);
    *(result + 144) = *(result + 120);
    if ((*(*(*result + 8) + 132) & 0xFFFFFFFD) == 1)
    {
      v6 = 4;
    }

    else
    {
      v6 = 5;
    }

    *(result + 152) = v6;
    v4 = *(result + 48) - v5;
  }

  else
  {
    v2 = *result;
    v3 = *(v1 + 8);
    result = (*(**v1 + 120))();
    v4 = 0;
    *(v1 + 144) = *(v1 + 88);
    *(v1 + 152) = 15;
  }

  *(v1 + 40) = v4;
  return result;
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitArcIterator(uint64_t *a1, int a2, void *a3)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Expand(a1, a2);
  }

  return fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReplaceFstMatcher(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_287C087F0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = -1;
  *(a1 + 72) = a3;
  *(a1 + 77) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = -1;
  v4 = *fst::TropicalWeightTpl<float>::One();
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 120) = v4;
  *(a1 + 124) = -1;
  if (*(a1 + 72) == 2)
  {
    *(a1 + 112) = 0xFFFFFFFF00000000;
  }

  fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitMatchers(a1);
  return a1;
}

void sub_26B5123B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v14 = *(v10 + 8);
  *(v10 + 8) = 0;
  if (v14)
  {
    fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReplaceFstMatcher(v14);
  }

  _Unwind_Resume(a1);
}

void fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitMatchers(uint64_t a1)
{
  v2 = *(a1 + 24);
  std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::resize((a1 + 40), (*(v2 + 248) - *(v2 + 240)) >> 3);
  v3 = *(v2 + 240);
  if (*(v2 + 248) != v3)
  {
    v4 = 0;
    do
    {
      if (*(v3 + 8 * v4))
      {
        v5 = *(a1 + 40);
        operator new();
      }

      ++v4;
      v3 = *(v2 + 240);
    }

    while (v4 < (*(v2 + 248) - v3) >> 3);
  }
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ReplaceFstMatcher(uint64_t a1)
{
  *a1 = &unk_287C087F0;
  v4 = (a1 + 40);
  std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  *a1 = &unk_287C087F0;
  v4 = (a1 + 40);
  std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return MEMORY[0x26D6787B0](a1, 0x10E1C40A5BE1C0BLL);
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Type(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (v2 == 4)
  {
    return 4;
  }

  if (v2 == 1)
  {
    v6 = 0x10000000;
  }

  else
  {
    v6 = 0x40000000;
  }

  v7 = *(a1 + 16);
  if (v2 == 1)
  {
    v8 = 805306368;
  }

  else
  {
    v8 = 3221225472;
  }

  v9 = (*(*v7 + 56))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 72);
  }

  v10 = 0x80000000;
  if (v2 == 1)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(uint64_t result, int a2)
{
  if (*(result + 64) != a2)
  {
    v2 = result;
    *(result + 64) = a2;
    *(result + 80) = *(*(*(*(result + 24) + 168) + 104) + 16 * a2);
    v3 = *(result + 92);
    if (v3 == -1)
    {
      *(result + 76) = 1;
    }

    else
    {
      v4 = *(*(result + 40) + 8 * *(result + 88));
      *(result + 32) = v4;
      result = (*(**(*v4 + 8) + 32))(*(*v4 + 8), v3);
      v4[18] = v3;
      *(v2 + 124) = *(v2 + 64);
      *(v2 + 78) = 0;
    }
  }

  return result;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 68) = a2;
  if (a2 == -1)
  {
    v3 = 0;
  }

  else
  {
    if (a2)
    {
      v13 = *(a1 + 32);

      return fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(v13, a2);
    }

    v3 = 1;
    *(a1 + 77) = 1;
  }

  *(a1 + 78) = fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(*(a1 + 24), (a1 + 80), 0, 15);
  v4 = *(a1 + 32);
  v5 = (v4 + 24);
  *(v4 + 48) = v4 + 24;
  *(v4 + 56) = 0;
  if (*(v4 + 8))
  {
    v8 = *(v4 + 16);
    while (1)
    {
      *(v4 + 48) = v8;
      if (v8 == v5)
      {
        break;
      }

      v9 = (*(**(*v4 + 8) + 40))(*(*v4 + 8), *(v8 + 7));
      v10 = *(v4 + 48);
      if (v9)
      {
        if (v10 == v5)
        {
          break;
        }

        *(v4 + 76) = 0;
        goto LABEL_7;
      }

      v11 = v10[1];
      if (v11)
      {
        do
        {
          v8 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v8 = v10[2];
          v12 = *v8 == v10;
          v10 = v8;
        }

        while (!v12);
      }
    }
  }

  v6 = (*(**(*v4 + 8) + 40))(*(*v4 + 8), 0xFFFFFFFFLL);
  *(v4 + 76) = v6 ^ 1;
  if (v6)
  {
LABEL_7:
    v7 = 1;
  }

  else
  {
    v7 = v3 | *(a1 + 78);
  }

  return v7 & 1;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(uint64_t a1)
{
  if (*(a1 + 77) & 1) != 0 || (*(a1 + 78))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(*(a1 + 32) + 76);
  }

  return v1 & 1;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(uint64_t a1)
{
  if (*(a1 + 77) == 1)
  {
    return a1 + 112;
  }

  if (*(a1 + 78) == 1)
  {
    v2 = a1 + 96;
    fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(*(a1 + 24), (a1 + 80), (a1 + 96), 15);
  }

  else
  {
    v3 = *(a1 + 32);
    if (*(v3 + 56) == 1)
    {
      v4 = v3 + 15;
    }

    else
    {
      v4 = (*(**(*v3 + 8) + 56))(*(*v3 + 8));
    }

    v2 = a1 + 96;
    fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeArc(*(a1 + 24), a1 + 80, v4, a1 + 96, 15);
  }

  return v2;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Next(uint64_t result)
{
  if (*(result + 77) == 1)
  {
    *(result + 77) = 0;
  }

  else if (*(result + 78) == 1)
  {
    *(result + 78) = 0;
  }

  else
  {
    return fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Next(*(result + 32));
  }

  return result;
}

void std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::reset[abi:ne200100](--v3, 0);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__append(a1, v5);
  }
}

uint64_t std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MultiEpsMatcher(result);

    JUMPOUT(0x26D6787B0);
  }

  return result;
}

void fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddMultiEpsLabel(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = a1 + 16;

    fst::CompactSet<int,-1>::Insert(v2, a2);
  }

  else
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    LogMessage::LogMessage(&v5, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "MultiEpsMatcher: Bad multi-eps label: 0", 39);
    LogMessage::~LogMessage(&v5);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_26B512C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MultiEpsMatcher(uint64_t a1)
{
  if (*(a1 + 12) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[1];
      v2[1] = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      v4 = *v2;
      *v2 = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      MEMORY[0x26D6787B0](v2, 0x60C405C6656D0);
    }
  }

  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MultiEpsMatcher(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, char a6)
{
  if (!a5)
  {
    operator new();
  }

  *a1 = a5;
  *(a1 + 8) = a4;
  *(a1 + 12) = a6;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  if (a3 == 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  if (a3 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  *(a1 + 60) = v7;
  *(a1 + 64) = v8;
  *(a1 + 68) = *fst::TropicalWeightTpl<float>::One();
  *(a1 + 72) = -1;
  return a1;
}

uint64_t *fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Matcher(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 72))(a2, 0);
  *a1 = v5;
  v6 = (*(*v5 + 128))(v5, a3);
  a1[1] = v6;
  if (!v6)
  {
    operator new();
  }

  return a1;
}

void sub_26B5130EC(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v2, 0x10E1C4054F459C6);
  v4 = v1[1];
  v1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *fst::CompactSet<int,-1>::Insert(uint64_t a1, int a2)
{
  v9 = a2;
  result = std::__tree<int>::__emplace_unique_key_args<int,int const&>(a1, &v9);
  v4 = *(a1 + 24);
  v5 = v9;
  if (v4 == -1 || v9 < v4)
  {
    *(a1 + 24) = v9;
  }

  v7 = *(a1 + 28);
  if (v7 == -1 || v7 < v5)
  {
    *(a1 + 28) = v5;
  }

  return result;
}

void std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReplaceFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_287C087F0;
  v5 = (*(**(a2 + 16) + 72))(*(a2 + 16), a3);
  *(a1 + 16) = v5;
  v6 = *(v5 + 8);
  *(a1 + 40) = 0;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = -1;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 77) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = -1;
  v7 = *fst::TropicalWeightTpl<float>::One();
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 120) = v7;
  *(a1 + 124) = -1;
  if (*(a1 + 72) == 2)
  {
    *(a1 + 112) = 0xFFFFFFFF00000000;
  }

  fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitMatchers(a1);
  return a1;
}

void sub_26B513358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__destroy_vector::operator()[abi:ne200100](va);
  v4 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v4)
  {
    fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReplaceFstMatcher(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(uint64_t a1, int a2)
{
  v3 = (a1 + 24);
  *(a1 + 48) = a1 + 24;
  *(a1 + 56) = 0;
  if (a2 == -1)
  {
    if (*(a1 + 8))
    {
      v6 = *(a1 + 16);
      while (1)
      {
        *(a1 + 48) = v6;
        if (v6 == v3)
        {
          break;
        }

        v7 = (*(**(*a1 + 8) + 40))(*(*a1 + 8), *(v6 + 7));
        v8 = *(a1 + 48);
        if (v7)
        {
          if (v8 == v3)
          {
            break;
          }

          result = 1;
          goto LABEL_11;
        }

        v9 = v8[1];
        if (v9)
        {
          do
          {
            v6 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v6 = v8[2];
            v10 = *v6 == v8;
            v8 = v6;
          }

          while (!v10);
        }
      }
    }

    v4 = *(**(*a1 + 8) + 40);
    goto LABEL_10;
  }

  if (!a2)
  {
    v4 = *(**(*a1 + 8) + 40);
LABEL_10:
    result = v4();
    goto LABEL_11;
  }

  if ((*(a1 + 8) & 2) == 0 || v3 == fst::CompactSet<int,-1>::Find(a1 + 16, a2))
  {
    v4 = *(**(*a1 + 8) + 40);
    goto LABEL_10;
  }

  result = 1;
  *(a1 + 56) = 1;
LABEL_11:
  *(a1 + 76) = result ^ 1;
  return result;
}

uint64_t fst::CompactSet<int,-1>::Find(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  v3 = v2 != -1 && v2 <= a2;
  if (!v3 || *(a1 + 28) < a2)
  {
    return a1 + 8;
  }

  v7 = *(a1 + 8);
  v5 = a1 + 8;
  v6 = v7;
  if (!v7)
  {
    return v5;
  }

  v4 = v5;
  do
  {
    if (*(v6 + 28) >= a2)
    {
      v4 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < a2));
  }

  while (v6);
  if (v4 == v5 || *(v4 + 28) > a2)
  {
    return v5;
  }

  return v4;
}

uint64_t fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Next(uint64_t result)
{
  v1 = result;
  if (*(result + 56))
  {
    v2 = 1;
LABEL_19:
    v1[76] = v2;
  }

  else
  {
    (*(**(*result + 8) + 64))(*(*result + 8));
    result = (*(**(*v1 + 8) + 48))(*(*v1 + 8));
    v1[76] = result;
    if (result)
    {
      v3 = v1 + 24;
      v4 = *(v1 + 6);
      if (v4 != (v1 + 24))
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

        while (1)
        {
          *(v1 + 6) = v6;
          if (v6 == v3)
          {
            goto LABEL_18;
          }

          result = (*(**(*v1 + 8) + 40))(*(*v1 + 8), *(v6 + 7));
          v8 = *(v1 + 6);
          if (result)
          {
            break;
          }

          v9 = v8[1];
          if (v9)
          {
            do
            {
              v6 = v9;
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            do
            {
              v6 = v8[2];
              v7 = *v6 == v8;
              v8 = v6;
            }

            while (!v7);
          }
        }

        if (v8 == v3)
        {
LABEL_18:
          result = (*(**(*v1 + 8) + 40))(*(*v1 + 8), 0xFFFFFFFFLL);
          v2 = result ^ 1;
          goto LABEL_19;
        }

        v1[76] = 0;
      }
    }
  }

  return result;
}

void fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CyclicDependencies(uint64_t a1)
{
  v2[0] = *(a1 + 264);
  v2[1] = 0x100000002;
  v2[2] = 0;
  fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceUtil(v1, (a1 + 240), a1 + 200, v2);
}

void sub_26B513768(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~ReplaceUtil(va);
  _Unwind_Resume(a1);
}

void fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceUtil(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = a4[1];
  v8 = a4[2];
  *(a1 + 24) = 0u;
  *(a1 + 4) = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  std::vector<int>::vector[abi:ne200100]((a1 + 72), (a2[1] - *a2) >> 3);
  std::unordered_map<int,int>::unordered_map(a1 + 96, a3);
  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFst();
}

void sub_26B5138DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v2[31];
  if (v6)
  {
    v2[32] = v6;
    operator delete(v6);
  }

  std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__destroy_vector::operator()[abi:ne200100](va);
  v7 = v2[23];
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v2[21] = v8;
    operator delete(v8);
  }

  v2[17] = &unk_287C06060;
  v9 = v2[19];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((v2 + 12));
  v10 = *(v3 + 48);
  if (v10)
  {
    v2[10] = v10;
    operator delete(v10);
  }

  v11 = v2[6];
  if (v11)
  {
    v2[7] = v11;
    operator delete(v11);
  }

  v12 = *v3;
  if (*v3)
  {
    v2[4] = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void std::vector<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::allocator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_26B513ACC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 24;
    do
    {
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v5, *(v5 + 8));
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v5 - 24, *(v5 - 16));
      v6 = v5 - 56;
      v5 -= 80;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats::~ReplaceStats(uint64_t a1)
{
  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1 + 56, *(a1 + 64));
  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1 + 32, *(a1 + 40));
  return a1;
}

uint64_t fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::GetDependencies(uint64_t result, int a2)
{
  v2 = a2;
  v3 = result;
  if (((*(*(result + 144) + 64) - *(*(result + 144) + 56)) >> 3) < 1)
  {
    *(result + 216) = a2;
    v4 = (result + 216);
    if (!a2)
    {
LABEL_7:
      if (*(v3 + 32) != *(v3 + 24))
      {
        fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddState(v3 + 136);
      }

      fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetStart(v3 + 136, *(v3 + 4));
      v36 = 0;
      v6 = *(v3 + 24);
      v5 = *(v3 + 32);
      if (v5 == v6)
      {
LABEL_49:
        *&v24 = v3 + 160;
        *(&v24 + 1) = v3 + 184;
        *&v25 = 0;
        *(&v25 + 1) = v3 + 208;
        v27 = 0u;
        v28 = 0u;
        fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(v3 + 136, &v24);
      }

      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = *(v6 + 8 * v8);
        if (!v9)
        {
          goto LABEL_48;
        }

        v33 = 0;
        v34 = 0;
        v35 = 0;
        (*(*v9 + 112))(v9, &v33);
LABEL_13:
        if (!v33)
        {
          break;
        }

        if (!(*(*v33 + 16))(v33))
        {
          if (v33)
          {
            v10 = (*(*v33 + 24))();
            goto LABEL_19;
          }

LABEL_18:
          v10 = v35;
LABEL_19:
          if (*v4 == 1)
          {
            ++*(*(v3 + 224) + 80 * v36);
            (*(*v9 + 24))(&v32, v9, v10);
            v11 = fst::TropicalWeightTpl<float>::Zero();
            *&v24 = v32;
            LODWORD(v29) = *v11;
            if (v32 != *&v29)
            {
              v12 = *(v3 + 224) + 80 * v36;
              ++*(v12 + 4);
            }
          }

          v26 = 0;
          v24 = 0u;
          v25 = 0u;
          (*(*v9 + 120))(v9, v10, &v24);
          while (1)
          {
            if (v24)
            {
              if ((*(*v24 + 16))(v24))
              {
                if (v24)
                {
                  (*(*v24 + 8))(v24);
                }

                else
                {
LABEL_40:
                  if (*(&v25 + 1))
                  {
                    --**(&v25 + 1);
                  }
                }

                if (v33)
                {
                  (*(*v33 + 32))(v33);
                }

                else
                {
                  ++v35;
                }

                goto LABEL_13;
              }
            }

            else if (v26 >= v25)
            {
              goto LABEL_40;
            }

            if (*v4 == 1)
            {
              v13 = *(v3 + 224) + 80 * v36;
              ++*(v13 + 8);
            }

            if (v24)
            {
              v14 = (*(*v24 + 24))(v24);
            }

            else
            {
              v14 = *(&v24 + 1) + 16 * v26;
            }

            v15 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((v3 + 96), (v14 + 4));
            if (v15)
            {
              v32 = *(v15 + 5);
              v16 = v36;
              v17 = *(v14 + 4);
              v18 = *fst::TropicalWeightTpl<float>::One();
              LODWORD(v29) = v17;
              HIDWORD(v29) = v17;
              v30 = v18;
              v31 = v32;
              fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(v3 + 136);
              fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(*(v3 + 144), v16, &v29);
              if (*v4 == 1)
              {
                v19 = *(v3 + 224);
                ++*(v19 + 80 * v36 + 16);
                v20 = v19 + 80 * SLODWORD(v32);
                ++*(v20 + 24);
                v29 = &v36;
                v21 = std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v20 + 32, &v36);
                ++v21[5];
                v22 = *(v3 + 224) + 80 * v36;
                v29 = &v32;
                v23 = std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v22 + 56, &v32);
                ++v23[5];
              }
            }

            if (v24)
            {
              (*(*v24 + 32))(v24);
            }

            else
            {
              ++v26;
            }
          }
        }

        if (v33)
        {
          (*(*v33 + 8))();
        }

LABEL_47:
        v7 = v36;
        v6 = *(v3 + 24);
        v5 = *(v3 + 32);
LABEL_48:
        v36 = ++v7;
        v8 = v7;
        if (v7 >= ((v5 - v6) >> 3))
        {
          goto LABEL_49;
        }
      }

      if (v35 >= v34)
      {
        goto LABEL_47;
      }

      goto LABEL_18;
    }

LABEL_6:
    std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::reserve((v3 + 224), (*(v3 + 32) - *(v3 + 24)) >> 3);
    goto LABEL_7;
  }

  if (a2)
  {
    v4 = (result + 216);
    if ((*(result + 216) & 1) == 0)
    {
      fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteStates(result + 136);
      std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__base_destruct_at_end[abi:ne200100](v3 + 224, *(v3 + 224));
      *(v3 + 208) = 0;
      *(v3 + 256) = *(v3 + 248);
      *(v3 + 216) = v2;
      goto LABEL_6;
    }
  }

  return result;
}

void *std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>(result, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_26B514440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::construct[abi:ne200100]<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,0>(a1, a4, v7);
      v7 += 80;
      a4 = v14 + 80;
      v14 += 80;
    }

    while (v7 != a3);
    v12 = 1;
    if (a2 != a3)
    {
      v8 = a2 + 32;
      do
      {
        std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v8 + 24, *(v8 + 32));
        std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v8, *(v8 + 8));
        v9 = v8 + 48;
        v8 += 80;
      }

      while (v9 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator_traits<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::construct[abi:ne200100]<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a3 + 32);
  v4 = (a3 + 40);
  v5 = *(a3 + 40);
  *(a2 + 40) = v5;
  v6 = a2 + 40;
  v7 = *(a3 + 48);
  *(a2 + 48) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a3 + 32) = v4;
    *v4 = 0;
    *(a3 + 48) = 0;
  }

  else
  {
    *(a2 + 32) = v6;
  }

  *(a2 + 56) = *(a3 + 56);
  v8 = (a3 + 64);
  v9 = *(a3 + 64);
  *(a2 + 64) = v9;
  v10 = a2 + 64;
  v11 = *(a3 + 72);
  *(a2 + 72) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(a3 + 56) = v8;
    *v8 = 0;
    *(a3 + 72) = 0;
  }

  else
  {
    *(a2 + 56) = v10;
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>,std::reverse_iterator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>,std::reverse_iterator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>,std::reverse_iterator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>,std::reverse_iterator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3 - 24;
    do
    {
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v6, *(v6 + 8));
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v6 - 24, *(v6 - 16));
      v7 = v6 - 56;
      v6 -= 80;
    }

    while (v7 != a5);
  }
}

uint64_t std::__split_buffer<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats> &>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(i - 24, *(i - 16));
    std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(i - 48, *(i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__emplace_back_slow_path<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  std::allocator_traits<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::construct[abi:ne200100]<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,0>(a1, 80 * v2, a2);
  v15 = 80 * v2 + 80;
  v7 = a1[1];
  v8 = 80 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats> &>::~__split_buffer(&v13);
  return v12;
}

void sub_26B514840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~ReplaceUtil(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(a1 + 24);
        v2 = *(a1 + 32);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = *(a1 + 248);
  if (v6)
  {
    *(a1 + 256) = v6;
    operator delete(v6);
  }

  v14 = (a1 + 224);
  std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v7 = *(a1 + 184);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    *(a1 + 168) = v8;
    operator delete(v8);
  }

  *(a1 + 136) = &unk_287C06060;
  v9 = *(a1 + 152);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 96);
  v10 = *(a1 + 72);
  if (v10)
  {
    *(a1 + 80) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(a1 + 56) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 24);
  if (v12)
  {
    *(a1 + 32) = v12;
    operator delete(v12);
  }

  return a1;
}

void fst::RmEpsilon<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>(void *a1, void *a2, uint64_t a3)
{
  v61 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1) == -1)
  {
    goto LABEL_64;
  }

  v6 = (*(*a1 + 136))(a1);
  LOBYTE(v32[0]) = 0;
  std::vector<BOOL>::vector(&v31, v6);
  v7 = (*(*a1 + 16))(a1);
  v8 = 0;
  *(v31 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
LABEL_3:
  if (v8 < (*(*a1 + 136))(a1))
  {
    v34 = 0;
    *v32 = 0u;
    v33 = 0u;
    (*(*a1 + 120))(a1, v8, v32);
    while (1)
    {
      if (v32[0])
      {
        if ((*(*v32[0] + 16))(v32[0]))
        {
          if (v32[0])
          {
            (*(*v32[0] + 8))();
            goto LABEL_20;
          }

LABEL_18:
          if (*(&v33 + 1))
          {
            --**(&v33 + 1);
          }

LABEL_20:
          ++v8;
          goto LABEL_3;
        }

        if (v32[0])
        {
          v9 = (*(*v32[0] + 24))();
          goto LABEL_11;
        }
      }

      else if (v34 >= v33)
      {
        goto LABEL_18;
      }

      v9 = v32[1] + 16 * v34;
LABEL_11:
      if (*v9)
      {
        *(v31 + ((*(v9 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v9 + 3);
      }

      if (v32[0])
      {
        (*(*v32[0] + 32))(v32[0]);
      }

      else
      {
        ++v34;
      }
    }
  }

  memset(&v30, 0, sizeof(v30));
  v10 = (*(*a1 + 136))(a1);
  std::vector<int>::reserve(&v30, v10);
  if (((*(*a1 + 56))(a1, 0x4000000000, 0) & 0x4000000000) == 0)
  {
    if (((*(*a1 + 56))(a1, 0x800000000, 0) & 0x800000000) == 0)
    {
      v29 = 0;
      v56 = 0;
      p_p = 0;
      v58 = 0;
      v32[1] = 0;
      *&v33 = 0;
      v32[0] = &v56;
      *(&v33 + 1) = &v29;
      v38 = 0u;
      v39 = 0u;
      fst::DfsVisit<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, v32);
    }

    v32[0] = 0;
    v32[1] = 0;
    *&v33 = 0;
    LOBYTE(__p) = 0;
    v56 = v32;
    p_p = &__p;
    v58 = 0;
    fst::DfsVisit<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::TopOrderVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
  }

  for (i = 0; i < (*(*a1 + 136))(a1); ++i)
  {
    LODWORD(v32[0]) = i;
    std::vector<int>::push_back[abi:ne200100](&v30.__begin_, v32);
  }

  v32[0] = a1;
  v32[1] = a2;
  *&v33 = a1;
  v12 = *a3;
  *(&v33 + 1) = a2;
  v34 = v12;
  v35 = *(a3 + 16);
  v36 = *(a3 + 20);
  v37 = 1;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  a2[1] = *a2;
  v44 = 0u;
  v45 = 0u;
  v46 = 1065353216;
  v55 = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  while (v30.__begin_ != v30.__end_)
  {
    v13 = *--v30.__end_;
    if (((*(v31 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      if (*(a3 + 21))
      {
        continue;
      }

      v16 = fst::TropicalWeightTpl<float>::Zero();
      LODWORD(v56) = *(a3 + 24);
      LODWORD(__p) = *v16;
      if (*&v56 != *&__p || *(a3 + 28) != -1)
      {
        continue;
      }
    }

    fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Expand(v32, v13);
    LODWORD(v56) = v54;
    (*(*a1 + 160))(a1, v13, &v56);
    (*(*a1 + 216))(a1, v13);
    (*(*a1 + 232))(a1, v13, (*(&v52 + 1) - v52) >> 4);
    v14 = *(&v52 + 1);
    v15 = v52;
    while (v15 != v14)
    {
      (*(*a1 + 184))(a1, v13, v14 - 16);
      v15 = v52;
      v14 = *(&v52 + 1) - 16;
      *(&v52 + 1) -= 16;
    }
  }

  if ((*(a3 + 21) & 1) != 0 || (v19 = fst::TropicalWeightTpl<float>::Zero(), LODWORD(v56) = *(a3 + 24), LODWORD(__p) = *v19, *&v56 != *&__p) || *(a3 + 28) != -1)
  {
    for (j = 0; j < (*(*a1 + 136))(a1); ++j)
    {
      if (((*(v31 + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) >> j) & 1) == 0)
      {
        (*(*a1 + 216))(a1, j);
      }
    }
  }

  if (v43[20] == 1)
  {
    (*(*a1 + 168))(a1, 4, 4);
  }

  v20 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  v21 = fst::RmEpsilonProperties(v20, 0);
  (*(*a1 + 168))(a1, v21, 0xFFFFFFFF0007);
  v22 = fst::TropicalWeightTpl<float>::Zero();
  v23 = *(a3 + 24);
  *&v56 = v23;
  LODWORD(__p) = *v22;
  v24 = *(a3 + 28);
  if (v23 != *&__p || v24 != -1)
  {
    v56 = __PAIR64__(v24, LODWORD(v23));
    v58 = 0;
    v59 = 981467136;
    v60 = 0;
    fst::Prune<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,(void *)0>(a1, &v56);
  }

  if (*(a3 + 21) == 1)
  {
    v26 = fst::TropicalWeightTpl<float>::Zero();
    LODWORD(v56) = *(a3 + 24);
    LODWORD(__p) = *v26;
    if (*&v56 == *&__p && *(a3 + 28) == -1)
    {
      fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1);
    }
  }

  fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::~RmEpsilonState(v32);
  if (v30.__begin_)
  {
    v30.__end_ = v30.__begin_;
    operator delete(v30.__begin_);
  }

  if (v31)
  {
    operator delete(v31);
  }

LABEL_64:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_26B5154F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v30 = *(v28 + 344);
  *(v28 + 344) = 0;
  if (v30)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](v27 + 16, v30);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08888;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  v3 = (a1 + 48);
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0;
  v4 = (*(*a2 + 56))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 16))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      if ((v4 & 0x200000000) == 0)
      {
        v8 = 0;
        __p[0] = v3;
        __p[1] = 0;
        __p[2] = 0;
        __p[3] = &v8;
        v6 = 0u;
        v7 = 0u;
        fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a2, __p);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_26B516158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  LogMessage::~LogMessage(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    MEMORY[0x26D6787B0](v30, 0x60C405BB7FD7CLL);
  }

  if (a10)
  {
    MEMORY[0x26D6787B0](a10, 0xC400A2AC0F1);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~SccVisitor(&a23);
  v33 = *v29;
  if (*v29)
  {
    *(v28 + 56) = v33;
    operator delete(v33);
  }

  std::vector<std::unique_ptr<fst::QueueBase<int>>>::__destroy_vector::operator()[abi:ne200100](&a23);
  v34 = *v31;
  *v31 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

void sub_26B516B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a3, 4 * v12);
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  (*(*a1 + 112))(a1, &v31);
  while (1)
  {
    result = v31;
    if (!v31)
    {
      if (v33 >= v32)
      {
        return result;
      }

LABEL_11:
      v15 = v33;
      goto LABEL_12;
    }

    v14 = (*(*v31 + 16))(v31);
    result = v31;
    if (v14)
    {
      break;
    }

    if (!v31)
    {
      goto LABEL_11;
    }

    v15 = (*(*v31 + 24))();
LABEL_12:
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    (*(*a1 + 120))(a1, v15, &v28);
    while (1)
    {
      if (!v28)
      {
        if (v30 >= v29)
        {
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if ((*(*v28 + 16))(v28))
      {
        break;
      }

      if (v28)
      {
        v17 = (*(*v28 + 24))();
        goto LABEL_19;
      }

LABEL_18:
      v17 = *(&v28 + 1) + 16 * v30;
LABEL_19:
      if (*v17)
      {
        goto LABEL_29;
      }

      v18 = *(*a2 + 4 * v15);
      if (v18 == *(*a2 + 4 * *(v17 + 12)))
      {
        v19 = *a3;
        if (!a4 || (v20 = fst::TropicalWeightTpl<float>::One(), v21 = (v17 + 8), fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(a4, (v17 + 8), v20)))
        {
          v22 = 1;
          goto LABEL_24;
        }

        if ((v19[v18] | 2) == 2)
        {
          v25 = fst::TropicalWeightTpl<float>::Zero();
          v35 = *v21;
          v34 = *v25;
          if (v35 == v34 || (v26 = fst::TropicalWeightTpl<float>::One(), v35 = *v21, v34 = *v26, v35 == v34))
          {
            v22 = 2;
          }

          else
          {
            v22 = 3;
          }

LABEL_24:
          v19[v18] = v22;
        }

        *a5 = 0;
      }

      v23 = fst::TropicalWeightTpl<float>::Zero();
      v35 = *(v17 + 8);
      v34 = *v23;
      v16.n128_f32[0] = v35;
      if (v35 != v34)
      {
        v24 = fst::TropicalWeightTpl<float>::One();
        v35 = *(v17 + 8);
        v34 = *v24;
        v16.n128_f32[0] = v35;
        if (v35 != v34)
        {
          *a6 = 0;
        }
      }

LABEL_29:
      if (v28)
      {
        (*(*v28 + 32))(v28, v16);
      }

      else
      {
        ++v30;
      }
    }

    if (v28)
    {
      (*(*v28 + 8))();
      goto LABEL_41;
    }

LABEL_39:
    if (*(&v29 + 1))
    {
      --**(&v29 + 1);
    }

LABEL_41:
    if (v31)
    {
      (*(*v31 + 32))(v31);
    }

    else
    {
      ++v33;
    }
  }

  if (v31)
  {
    return (*(*v31 + 8))();
  }

  return result;
}

void sub_26B517024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<fst::QueueBase<int>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<fst::QueueBase<int>>>::__append(a1, v5);
  }
}

void fst::AutoQueue<int>::~AutoQueue(uint64_t a1)
{
  fst::AutoQueue<int>::~AutoQueue(a1);

  JUMPOUT(0x26D6787B0);
}

void *fst::StateOrderQueue<int>::~StateOrderQueue(void *a1)
{
  *a1 = &unk_287C08900;
  v2 = a1[3];
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void fst::StateOrderQueue<int>::~StateOrderQueue(void *a1)
{
  *a1 = &unk_287C08900;
  v1 = a1[3];
  if (v1)
  {
    operator delete(v1);
  }

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::StateOrderQueue<int>::Enqueue(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 16);
  v4 = *(result + 20);
  if (v3 > v4)
  {
    *(result + 20) = a2;
LABEL_3:
    *(result + 16) = a2;
    goto LABEL_7;
  }

  if (v4 >= a2)
  {
    if (v3 > a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(result + 20) = a2;
  }

LABEL_7:
  v5 = a2;
  if (*(result + 32) <= a2)
  {
    do
    {
      v6 = 0;
      result = std::vector<BOOL>::push_back(v2 + 24, &v6);
    }

    while (*(v2 + 32) <= v5);
  }

  *(*(v2 + 24) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
  return result;
}

uint64_t fst::StateOrderQueue<int>::Dequeue(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 20);
  v3 = *(result + 16);
  *(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v3);
  if (v3 <= v2)
  {
    v4 = v2 - v3 + 1;
    v5 = v3 + 1;
    do
    {
      if ((*(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        break;
      }

      ++v3;
      *(result + 16) = v5++;
      --v4;
    }

    while (v4);
  }

  return result;
}

double fst::StateOrderQueue<int>::Clear(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 16);
  if (v2 <= v1)
  {
    v3 = *(a1 + 24);
    v4 = v1 - v2 + 1;
    do
    {
      *(v3 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v2);
      ++v2;
      --v4;
    }

    while (v4);
  }

  result = NAN;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  return result;
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08968;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = 0;
  v1 = a1 + 24;
  v2 = &v4;
  v3 = 0;
  fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::TopOrderVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
}

void sub_26B517620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](v23 + 16, a21);
  }

  v25 = v21[6];
  if (v25)
  {
    v21[7] = v25;
    operator delete(v25);
  }

  v26 = *v22;
  if (*v22)
  {
    v21[4] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B517EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v3, __x);
  }
}

void fst::TopOrderQueue<int>::~TopOrderQueue(void *a1)
{
  fst::TopOrderQueue<int>::~TopOrderQueue(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::TopOrderQueue<int>::Enqueue(uint64_t result, int a2)
{
  v2 = *(result + 16);
  v3 = *(result + 20);
  v4 = *(result + 24);
  v5 = *(v4 + 4 * a2);
  if (v2 <= v3)
  {
    if (v5 > v3)
    {
      *(result + 20) = v5;
      goto LABEL_7;
    }

    if (v5 >= v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(result + 20) = v5;
  }

  *(result + 16) = v5;
LABEL_7:
  *(*(result + 48) + 4 * *(v4 + 4 * a2)) = a2;
  return result;
}

uint64_t fst::TopOrderQueue<int>::Dequeue(uint64_t result)
{
  v1 = *(result + 48);
  *(v1 + 4 * *(result + 16)) = -1;
  v2 = *(result + 20);
  v3 = *(result + 16);
  if (v3 <= v2)
  {
    v4 = (v1 + 4 * v3);
    v5 = v2 - v3 + 1;
    v6 = v3 + 1;
    do
    {
      v7 = *v4++;
      if (v7 != -1)
      {
        break;
      }

      *(result + 16) = v6++;
      --v5;
    }

    while (v5);
  }

  return result;
}

double fst::TopOrderQueue<int>::Clear(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= *(a1 + 20))
  {
    v2 = v1 - 1;
    v3 = (*(a1 + 48) + 4 * v1);
    do
    {
      *v3++ = -1;
      ++v2;
    }

    while (v2 < *(a1 + 20));
  }

  result = NAN;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  return result;
}

void fst::TopOrderVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::FinishVisit(uint64_t **a1)
{
  if (*a1[1])
  {
    (*a1)[1] = **a1;
    v3 = a1 + 2;
    v2 = a1[2];
    if (v2[1] == *v2)
    {
      goto LABEL_13;
    }

    v4 = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](*a1, &fst::kNoStateId);
      ++v4;
      v2 = a1[2];
      v5 = (v2[1] - *v2) >> 2;
    }

    while (v5 > v4);
    if (!v5)
    {
LABEL_13:
      *v3 = 0;
      goto LABEL_14;
    }

    v6 = 0;
    v7 = **a1;
    *v2;
    v8 = (v2[1] - 4);
    do
    {
      v9 = *v8--;
      *(v7 + 4 * v9) = v6++;
    }

    while (v5 != v6);
  }

  else
  {
    v2 = a1[2];
  }

  a1[2] = 0;
  v10 = a1 + 2;
  if (!v2)
  {
    return;
  }

  v3 = v10;
LABEL_14:

  std::default_delete<std::vector<int>>::operator()[abi:ne200100](v3, v2);
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_26B548380)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_26B548370)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_26B548380)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_26B548370)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *fst::TopOrderQueue<int>::~TopOrderQueue(void *a1)
{
  *a1 = &unk_287C08968;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void *fst::LifoQueue<int>::~LifoQueue(void *a1)
{
  *a1 = &unk_287C089D0;
  std::deque<int>::~deque[abi:ne200100](a1 + 2);
  return a1;
}

void fst::LifoQueue<int>::~LifoQueue(void *a1)
{
  *a1 = &unk_287C089D0;
  std::deque<int>::~deque[abi:ne200100](a1 + 2);

  JUMPOUT(0x26D6787B0);
}

void fst::LifoQueue<int>::Clear(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[7] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[4];
      v2 = (a1[3] + 8);
      a1[3] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 1024;
  }

  a1[6] = v6;
}

uint64_t std::deque<int>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::~__split_buffer(a1);
}

const void **std::deque<int>::push_front(const void **result, _DWORD *a2)
{
  v3 = result;
  v4 = result[4];
  if (!v4)
  {
    result = std::deque<int>::__add_front_capacity(result);
    v4 = v3[4];
  }

  v5 = v3[1];
  v6 = &v5[8 * (v4 >> 10)];
  if (v3[2] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 4 * (v4 & 0x3FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 4) = *a2;
  v8 = v3[5] + 1;
  v3[4] = (v4 - 1);
  v3[5] = v8;
  return result;
}

const void **std::deque<int>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 7) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x400)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 1024;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<int *>::emplace_front<int *&>(a1, v11);
}

void sub_26B5189A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::__split_buffer<int *>::emplace_front<int *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<int *>::emplace_back<int *>(void *result, void *a2)
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
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

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
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<int>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

void *std::vector<fst::QueueType>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26B518E14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(uint64_t a1, float *a2, float *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 == *a3)
  {
    return 0;
  }

  if (v3 == -INFINITY || v4 >= -INFINITY && v4 <= -INFINITY)
  {
    v4 = *fst::TropicalWeightTpl<float>::NoWeight();
    v3 = *a2;
  }

  else if (v3 < v4)
  {
    v4 = *a2;
  }

  return v4 == v3;
}

uint64_t fst::TopOrderQueue<int>::TopOrderQueue(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08968;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 24, *a2, a2[1], (a2[1] - *a2) >> 2);
  std::vector<int>::vector[abi:ne200100]((a1 + 48), (a2[1] - *a2) >> 2);
  return a1;
}

void sub_26B518F74(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<fst::QueueBase<int>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<fst::QueueBase<int>>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<fst::QueueBase<int>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<fst::QueueBase<int>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<fst::QueueBase<int>>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void fst::ShortestFirstQueue<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>,false>::~ShortestFirstQueue(void *a1)
{
  fst::ShortestFirstQueue<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>,false>::~ShortestFirstQueue(a1);

  JUMPOUT(0x26D6787B0);
}

void *fst::ShortestFirstQueue<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>,false>::~ShortestFirstQueue(void *a1)
{
  *a1 = &unk_287C08A38;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[5] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t fst::Heap<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>>::Insert(uint64_t a1, int *a2)
{
  v4 = *(a1 + 88);
  v5 = (a1 + 88);
  v8 = *(a1 + 64);
  v6 = (a1 + 64);
  v7 = v8;
  if (v4 >= (*(v5 - 2) - v8) >> 2)
  {
    std::vector<int>::push_back[abi:ne200100](v6, a2);
    std::vector<int>::push_back[abi:ne200100]((a1 + 16), v5);
    std::vector<int>::push_back[abi:ne200100]((a1 + 40), v5);
    LODWORD(v9) = *(a1 + 88);
  }

  else
  {
    *(v7 + 4 * v4) = *a2;
    v9 = *(a1 + 88);
    *(*(a1 + 16) + 4 * *(*(a1 + 40) + 4 * v9)) = v9;
  }

  *(a1 + 88) = v9 + 1;

  return fst::Heap<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>>::Insert(a1, a2, v9);
}

uint64_t fst::Heap<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>>::Insert(uint64_t a1, int *a2, int a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = *(a1 + 64);
    while (1)
    {
      v7 = v3 - 1;
      v8 = (v3 - 1) >> 1;
      if (fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(*(a1 + 8), (**a1 + 4 * *(v6 + 4 * v8)), (**a1 + 4 * *a2)))
      {
        break;
      }

      v9 = *(a1 + 40);
      v10 = *(v9 + 4 * v3);
      v11 = *(v9 + 4 * v8);
      *(v9 + 4 * v3) = v11;
      v12 = *(a1 + 16);
      *(v12 + 4 * v11) = v3;
      *(v9 + 4 * v8) = v10;
      *(v12 + 4 * v10) = v8;
      v6 = *(a1 + 64);
      LODWORD(v10) = *(v6 + 4 * v3);
      *(v6 + 4 * v3) = *(v6 + 4 * v8);
      *(v6 + 4 * v8) = v10;
      v3 = v7 >> 1;
      if (v7 <= 1)
      {
        return *(*(a1 + 40) + 4 * v8);
      }
    }
  }

  v8 = v3;
  return *(*(a1 + 40) + 4 * v8);
}

uint64_t fst::Heap<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>>::Pop(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *v1;
  v3 = *(a1 + 88) - 1;
  v4 = *(a1 + 40);
  v5 = *v4;
  v6 = v4[v3];
  *v4 = v6;
  v7 = *(a1 + 16);
  *(v7 + 4 * v6) = 0;
  v4[v3] = v5;
  *(v7 + 4 * v5) = v3;
  LODWORD(v4) = *v1;
  *v1 = v1[v3];
  v1[v3] = v4;
  --*(a1 + 88);
  fst::Heap<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>>::Heapify(a1, 0);
  return v2;
}

BOOL fst::Heap<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>>::Heapify(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = (2 * a2) | 1u;
    if (v4 >= *(v3 + 88) || !(result = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(*(v3 + 8), (**v3 + 4 * *(*(v3 + 64) + 4 * v4)), (**v3 + 4 * *(*(v3 + 64) + 4 * a2)))))
    {
      v4 = a2;
    }

    v5 = 2 * a2 + 2;
    if (v5 < *(v3 + 88))
    {
      result = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(*(v3 + 8), (**v3 + 4 * *(*(v3 + 64) + 4 * v5)), (**v3 + 4 * *(*(v3 + 64) + 4 * v4)));
      if (result)
      {
        v4 = v5;
      }

      else
      {
        v4 = v4;
      }
    }

    if (v4 == a2)
    {
      break;
    }

    v6 = *(v3 + 40);
    v7 = *(v6 + 4 * a2);
    v8 = *(v6 + 4 * v4);
    *(v6 + 4 * a2) = v8;
    v9 = *(v3 + 16);
    *(v9 + 4 * v8) = a2;
    *(v6 + 4 * v4) = v7;
    *(v9 + 4 * v7) = v4;
    v10 = *(v3 + 64);
    LODWORD(v7) = *(v10 + 4 * a2);
    *(v10 + 4 * a2) = *(v10 + 4 * v4);
    *(v10 + 4 * v4) = v7;
    a2 = v4;
  }

  return result;
}

void *fst::FifoQueue<int>::~FifoQueue(void *a1)
{
  *a1 = &unk_287C08AA0;
  std::deque<int>::~deque[abi:ne200100](a1 + 2);
  return a1;
}

void fst::FifoQueue<int>::~FifoQueue(void *a1)
{
  *a1 = &unk_287C08AA0;
  std::deque<int>::~deque[abi:ne200100](a1 + 2);

  JUMPOUT(0x26D6787B0);
}

void fst::FifoQueue<int>::Clear(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[7] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[4];
      v2 = (a1[3] + 8);
      a1[3] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 1024;
  }

  a1[6] = v6;
}

uint64_t std::deque<int>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *fst::SccQueue<int,fst::QueueBase<int>>::~SccQueue(void *a1)
{
  *a1 = &unk_287C08B08;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return a1;
}

void fst::SccQueue<int,fst::QueueBase<int>>::~SccQueue(void *a1)
{
  *a1 = &unk_287C08B08;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Head(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 <= *(a1 + 36))
  {
    while (1)
    {
      v4 = *(**(a1 + 16) + 8 * v2);
      if (v4)
      {
        v5 = (*(*v4 + 48))(v4);
        v3 = *(a1 + 32);
        if (v5)
        {
          goto LABEL_10;
        }

        v6 = v3;
        if (*(**(a1 + 16) + 8 * v3))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v6 = v2;
        v3 = v2;
      }

      v7 = *(a1 + 40);
      if (v6 < (*(a1 + 48) - v7) >> 2 && *(v7 + 4 * v6) != -1)
      {
        goto LABEL_11;
      }

LABEL_10:
      v2 = v3 + 1;
      *(a1 + 32) = v3 + 1;
      if (v3++ >= *(a1 + 36))
      {
        goto LABEL_11;
      }
    }
  }

  v3 = *(a1 + 32);
LABEL_11:
  v9 = *(**(a1 + 16) + 8 * v3);
  if (!v9)
  {
    return *(*(a1 + 40) + 4 * v3);
  }

  v10 = *(*v9 + 16);

  return v10();
}

void fst::SccQueue<int,fst::QueueBase<int>>::Enqueue(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = **(a1 + 24);
  v7 = *(v6 + 4 * a2);
  if (v4 > v5)
  {
    *(a1 + 36) = v7;
LABEL_3:
    *(a1 + 32) = v7;
    goto LABEL_7;
  }

  if (v7 <= v5)
  {
    if (v7 < v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 36) = v7;
  }

LABEL_7:
  v8 = *(v6 + 4 * a2);
  v9 = *(**(a1 + 16) + 8 * v8);
  if (v9)
  {
    v10 = *(*v9 + 24);

    v10();
  }

  else
  {
    for (i = *(a1 + 40); v8 >= (*(a1 + 48) - i) >> 2; v8 = *(**(a1 + 24) + 4 * a2))
    {
      std::vector<int>::push_back[abi:ne200100]((a1 + 40), &fst::kNoStateId);
      i = *(a1 + 40);
    }

    *(i + 4 * v8) = a2;
  }
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Dequeue(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(**(a1 + 16) + 8 * v2);
  if (result)
  {
    return (*(*result + 32))();
  }

  v5 = a1 + 40;
  v4 = *(a1 + 40);
  if (v2 < (*(v5 + 8) - v4) >> 2)
  {
    *(v4 + 4 * v2) = -1;
  }

  return result;
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Update(uint64_t a1, int a2)
{
  result = *(**(a1 + 16) + 8 * *(**(a1 + 24) + 4 * a2));
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Empty(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 32);
  if (v2 < v1)
  {
    return 0;
  }

  if (v2 > v1)
  {
    return 1;
  }

  v4 = *(**(a1 + 16) + 8 * v2);
  if (v4)
  {
    return (*(*v4 + 48))(*(**(a1 + 16) + 8 * v2));
  }

  v5 = *(a1 + 40);
  if (v2 >= (*(a1 + 48) - v5) >> 2)
  {
    return 1;
  }

  return *(v5 + 4 * v2) == -1;
}

double fst::SccQueue<int,fst::QueueBase<int>>::Clear(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 <= *(a1 + 36))
  {
    do
    {
      v3 = *(**(a1 + 16) + 8 * v2);
      if (v3)
      {
        (*(*v3 + 56))(v3);
      }

      else
      {
        v4 = *(a1 + 40);
        if (v2 < (*(a1 + 48) - v4) >> 2)
        {
          *(v4 + 4 * v2) = -1;
        }
      }
    }

    while (v2++ < *(a1 + 36));
  }

  result = NAN;
  *(a1 + 32) = 0xFFFFFFFF00000000;
  return result;
}

void std::vector<std::unique_ptr<fst::QueueBase<int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<fst::QueueBase<int>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<fst::QueueBase<int>>>::clear[abi:ne200100](void *result)
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

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_26B51A564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

void sub_26B51AE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

int *fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Expand(uint64_t a1, int a2)
{
  v12 = a2;
  *(a1 + 312) = *fst::TropicalWeightTpl<float>::Zero();
  *(a1 + 296) = *(a1 + 288);
  result = fst::internal::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ShortestDistance((a1 + 16), a2);
  if ((*(a1 + 156) & 1) == 0)
  {
    std::deque<int>::push_back((a1 + 208), &v12);
    for (i = *(a1 + 248); i; i = *(a1 + 248))
    {
      v6 = i - 1;
      v7 = *(*(*(a1 + 216) + (((*(a1 + 240) + v6) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 240) + v6) & 0x3FF));
      *(a1 + 248) = v6;
      std::deque<int>::__maybe_remove_back_spare[abi:ne200100]((a1 + 208), 1);
      while (*(a1 + 264) <= v7)
      {
        LOBYTE(v11) = 0;
        std::vector<BOOL>::push_back(a1 + 256, &v11);
      }

      v8 = *(a1 + 256);
      v9 = *(v8 + 8 * (v7 >> 6));
      if ((v9 & (1 << v7)) == 0)
      {
        *(v8 + 8 * (v7 >> 6)) = v9 | (1 << v7);
        v10 = *(a1 + 280);
        operator new();
      }
    }

    for (result = *(a1 + 280); result; result = *(a1 + 280))
    {
      *(*(a1 + 256) + ((result[2] >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << result[2]);
      *(a1 + 280) = *result;
      operator delete(result);
    }

    ++*(a1 + 316);
  }

  return result;
}

void sub_26B51B454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _DWORD *a18)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  else if (a18)
  {
    --*a18;
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void *fst::MemoryPool<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *std::deque<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::emplace_back<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **&>(a1, &v10);
}

void sub_26B51B890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t fst::internal::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 16))(*a1) == -1)
  {
    result = (*(**a1 + 56))(*a1, 4, 0);
    if (!result)
    {
      return result;
    }

    v72 = a1 + 140;
LABEL_115:
    *v72 = 1;
    return result;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = a1[8];
    a1[12] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 16))();
  }

  v4 = a2;
  while (1)
  {
    v5 = a1[1];
    if (v4 < (v5[1] - *v5) >> 2)
    {
      break;
    }

    v6 = fst::TropicalWeightTpl<float>::Zero();
    v7 = v5[1];
    if (v7 >= v5[2])
    {
      v8 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v5, v6);
    }

    else
    {
      *v7 = *v6;
      v8 = (v7 + 1);
    }

    v5[1] = v8;
    v9 = *fst::TropicalWeightTpl<float>::Zero();
    LODWORD(v73) = v9;
    v10 = a1[6];
    if (v10 >= a1[7])
    {
      v11 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v73);
    }

    else
    {
      *v10 = v9;
      v11 = (v10 + 1);
    }

    a1[6] = v11;
    v12 = *fst::TropicalWeightTpl<float>::Zero();
    LODWORD(v73) = v12;
    v13 = a1[9];
    if (v13 >= a1[10])
    {
      v14 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v73);
    }

    else
    {
      *v13 = v12;
      v14 = (v13 + 1);
    }

    a1[9] = v14;
    LOBYTE(v73) = 0;
    std::vector<BOOL>::push_back((a1 + 11), &v73);
  }

  if (*(a1 + 33) == 1)
  {
    for (i = a1[14]; v4 >= (a1[15] - i) >> 2; i = a1[14])
    {
      std::vector<int>::push_back[abi:ne200100](a1 + 14, &fst::kNoStateId);
    }

    *(i + 4 * v4) = *(a1 + 34);
  }

  *(*a1[1] + 4 * v4) = *fst::TropicalWeightTpl<float>::One();
  v16 = a1[5];
  *(v16 + 4 * v4) = *fst::TropicalWeightTpl<float>::One();
  v17 = a1[8];
  *(v17 + 4 * v4) = *fst::TropicalWeightTpl<float>::One();
  *(a1[11] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v4);
  v72 = a1 + 140;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_114;
    }

    v19 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v20 = a1[1];
      if (v19 < ((v20[1] - *v20) >> 2))
      {
        break;
      }

      v21 = fst::TropicalWeightTpl<float>::Zero();
      v22 = v20[1];
      if (v22 >= v20[2])
      {
        v23 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v20, v21);
      }

      else
      {
        *v22 = *v21;
        v23 = (v22 + 1);
      }

      v20[1] = v23;
      v24 = *fst::TropicalWeightTpl<float>::Zero();
      LODWORD(v73) = v24;
      v25 = a1[6];
      if (v25 >= a1[7])
      {
        v26 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v73);
      }

      else
      {
        *v25 = v24;
        v26 = (v25 + 1);
      }

      a1[6] = v26;
      v27 = *fst::TropicalWeightTpl<float>::Zero();
      LODWORD(v73) = v27;
      v28 = a1[9];
      if (v28 >= a1[10])
      {
        v29 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v73);
      }

      else
      {
        *v28 = v27;
        v29 = (v28 + 1);
      }

      a1[9] = v29;
      LOBYTE(v73) = 0;
      std::vector<BOOL>::push_back((a1 + 11), &v73);
    }

    if (*(a1 + 32) == 1)
    {
      (*(**a1 + 24))(&v76);
      v30 = fst::TropicalWeightTpl<float>::Zero();
      LODWORD(v73) = v76;
      HIDWORD(v76) = *v30;
      v18.n128_u32[0] = v76;
      if (*&v76 != *(&v76 + 1))
      {
LABEL_114:
        ++*(a1 + 34);
        result = (*(**a1 + 56))(*a1, 4, 0, v18);
        if (!result)
        {
          return result;
        }

        goto LABEL_115;
      }
    }

    *(a1[11] + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v19);
    v31 = a1[8];
    v32 = *(v31 + 4 * v19);
    *(v31 + 4 * v19) = *fst::TropicalWeightTpl<float>::Zero();
    v33 = *a1;
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    (*(*v33 + 120))(v33, v19, &v73);
    while (1)
    {
      if (!v73)
      {
        if (v75 >= v74)
        {
LABEL_104:
          v70 = 1;
          goto LABEL_105;
        }

LABEL_44:
        v34 = *(&v73 + 1) + 16 * v75;
        goto LABEL_45;
      }

      if ((*(*v73 + 16))(v73))
      {
        goto LABEL_104;
      }

      if (!v73)
      {
        goto LABEL_44;
      }

      v34 = (*(*v73 + 24))(v73);
LABEL_45:
      if (!*v34)
      {
        v35 = a1[1];
        v36 = v35 + 1;
        for (j = *(v34 + 12); j >= (v35[1] - *v35) >> 2; j = *(v34 + 12))
        {
          v38 = fst::TropicalWeightTpl<float>::Zero();
          v39 = *v36;
          if (*v36 >= v35[2])
          {
            v40 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v35, v38);
          }

          else
          {
            *v39 = *v38;
            v40 = (v39 + 1);
          }

          *v36 = v40;
          v41 = *fst::TropicalWeightTpl<float>::Zero();
          HIDWORD(v76) = v41;
          v42 = a1[6];
          if (v42 >= a1[7])
          {
            v43 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v76 + 1);
          }

          else
          {
            *v42 = v41;
            v43 = (v42 + 1);
          }

          a1[6] = v43;
          v44 = *fst::TropicalWeightTpl<float>::Zero();
          HIDWORD(v76) = v44;
          v45 = a1[9];
          if (v45 >= a1[10])
          {
            v46 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v76 + 1);
          }

          else
          {
            *v45 = v44;
            v46 = (v45 + 1);
          }

          a1[9] = v46;
          BYTE4(v76) = 0;
          std::vector<BOOL>::push_back((a1 + 11), &v76 + 4);
          v35 = a1[1];
          v36 = v35 + 1;
        }

        if (*(a1 + 33) == 1)
        {
          while (1)
          {
            v47 = a1[14];
            LODWORD(j) = *(v34 + 12);
            if (j < ((a1[15] - v47) >> 2))
            {
              break;
            }

            std::vector<int>::push_back[abi:ne200100](a1 + 14, &fst::kNoStateId);
          }

          if (*(v47 + 4 * j) != *(a1 + 34))
          {
            v48 = fst::TropicalWeightTpl<float>::Zero();
            v49 = *(v34 + 12);
            *(*a1[1] + 4 * v49) = *v48;
            v50 = a1[5];
            *(v50 + 4 * v49) = *fst::TropicalWeightTpl<float>::Zero();
            v51 = *(v34 + 12);
            v52 = a1[8];
            *(v52 + 4 * v51) = *fst::TropicalWeightTpl<float>::Zero();
            v53 = *(v34 + 12);
            *(a1[11] + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v53);
            *(a1[14] + 4 * v53) = *(a1 + 34);
            LODWORD(j) = *(v34 + 12);
          }
        }

        v54 = *a1[1];
        v55 = a1[5];
        v56 = a1[8];
        if (v32 == -INFINITY || (v57 = *(v34 + 8), v57 >= -INFINITY) && v57 <= -INFINITY)
        {
          v58 = *fst::TropicalWeightTpl<float>::NoWeight();
        }

        else
        {
          v59 = v57 == INFINITY || v32 == INFINITY;
          v60 = v32 + v57;
          v58 = v59 ? INFINITY : v60;
        }

        v61 = *(v54 + 4 * j);
        if (v61 == -INFINITY || v58 >= -INFINITY && v58 <= -INFINITY)
        {
          v62 = *fst::TropicalWeightTpl<float>::NoWeight();
          v61 = *(v54 + 4 * j);
        }

        else
        {
          v62 = v61 >= v58 ? v58 : *(v54 + 4 * j);
        }

        v63 = *(a1 + 7);
        v64 = v62 + v63;
        v65 = v63 + v61;
        if (v61 > v64 || v62 > v65)
        {
          break;
        }
      }

LABEL_101:
      if (v73)
      {
        (*(*v73 + 32))(v73);
      }

      else
      {
        ++v75;
      }
    }

    v67 = *(v55 + 4 * j);
    if (v67 == -INFINITY || v58 >= -INFINITY && v58 <= -INFINITY)
    {
      v67 = *fst::TropicalWeightTpl<float>::NoWeight();
    }

    else if (v67 >= v58)
    {
      v67 = v58;
    }

    *(v55 + 4 * j) = v67;
    *(v54 + 4 * j) = v67;
    v68 = *(v56 + 4 * j);
    if (v68 == -INFINITY || v58 >= -INFINITY && v58 <= -INFINITY)
    {
      v68 = *fst::TropicalWeightTpl<float>::NoWeight();
    }

    else if (v68 >= v58)
    {
      v68 = v58;
    }

    *(v56 + 4 * j) = v68;
    if (*(v54 + 4 * j) != -INFINITY && v68 != -INFINITY)
    {
      v69 = **(a1[2] + 16);
      if ((*(a1[11] + ((*(v34 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v34 + 12)))
      {
        (*(v69 + 40))();
      }

      else
      {
        (*(v69 + 24))();
        *(a1[11] + ((*(v34 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v34 + 12);
      }

      goto LABEL_101;
    }

    v70 = 0;
    *v72 = 1;
LABEL_105:
    result = v73;
    if (v73)
    {
      result = (*(*v73 + 8))(v73);
    }

    else if (*(&v74 + 1))
    {
      --**(&v74 + 1);
    }
  }

  while ((v70 & 1) != 0);
  return result;
}

void sub_26B51C428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 2;
  v3 = v2 + 1;
  if ((v2 + 1) >> 62)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 1 > v3)
  {
    v3 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v7);
  }

  __p = 0;
  v11 = (4 * v2);
  *v11 = *a2;
  v12 = 4 * v2 + 4;
  v13 = 0;
  std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_26B51C584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int **std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(int **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 2;
  v3 = v2 + 1;
  if ((v2 + 1) >> 62)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 1 > v3)
  {
    v3 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v7);
  }

  __p = 0;
  v11 = (4 * v2);
  *v11 = *a2;
  v12 = 4 * v2 + 4;
  v13 = 0;
  std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_26B51C70C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<int>::push_back(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<int>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<int>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<int *>::emplace_back<int *>(a1, &v10);
}

void sub_26B51C954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>,std::__unordered_map_hasher<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::__hash_value_type<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>,fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::ElementHash,fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::ElementEqual,true>,std::__unordered_map_equal<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::__hash_value_type<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>,fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::ElementEqual,fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::ElementHash,true>,std::allocator<std::__hash_value_type<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>>>::__emplace_unique_key_args<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::pair<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>>(void *a1, int *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *a2;
  v5 = v2 + 7853 * *a2 + 7867 * v3;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v2 + 7853 * v4 + 7867 * v3;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
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
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (*(v10 + 4) != v4 || *(v10 + 20) != __PAIR64__(v2, v3))
  {
    goto LABEL_18;
  }

  return v10;
}

void fst::Prune<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,(void *)0>(uint64_t a1, uint64_t a2)
{
  v78[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 136))(a1);
  if (v4 < 1)
  {
    goto LABEL_12;
  }

  v5 = v4;
  fst::TropicalWeightTpl<float>::Zero();
  std::vector<fst::TropicalWeightTpl<float>>::vector[abi:ne200100](v73, v5);
  __p = 0;
  v71 = 0;
  v72 = 0;
  if (!*(a2 + 16))
  {
    std::vector<fst::TropicalWeightTpl<float>>::reserve(&__p, v5);
    v6 = *(a2 + 24);
    fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, &__p, 1);
  }

  v7 = *(a2 + 16);
  if (*(a2 + 4))
  {
    v8 = *(a2 + 16);
    v9 = *(v8 + 8);
    v10 = *v7;
    if ((*(*a1 + 16))(a1) < ((v9 - v10) >> 2))
    {
      v11 = (*(*a1 + 16))(a1);
      v12 = *v7;
      v13 = fst::TropicalWeightTpl<float>::Zero();
      LODWORD(v74[0]) = *(v12 + 4 * v11);
      LODWORD(v68) = *v13;
      if (*v74 != *&v68)
      {
        v74[0] = v73;
        v74[1] = v7;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        memset(v78, 0, 28);
        LOBYTE(v67[0]) = 0;
        std::vector<BOOL>::vector(&v68, v5);
        std::vector<unsigned long>::vector[abi:ne200100](v67, v5);
        v64 = 0;
        v65 = 0;
        v66 = 0;
        LODWORD(v57) = (*(*a1 + 176))(a1);
        std::vector<int>::push_back[abi:ne200100](&v64, &v57);
        v15 = (*(*a1 + 16))(a1);
        v62 = v15;
        if (*(a2 + 28) == 1)
        {
          v16 = *a2;
          if (*a2 == -INFINITY || (v17 = *(*v7 + 4 * v15), v17 >= -INFINITY) && v17 <= -INFINITY)
          {
LABEL_21:
            v18 = *fst::TropicalWeightTpl<float>::NoWeight();
LABEL_27:
            v61 = v18;
            if (fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(&v63, &v61, (*v7 + 4 * v62)))
            {
              v20 = 0;
            }

            else
            {
              *(v73[0] + v62) = *fst::TropicalWeightTpl<float>::One();
              v21 = fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Insert(v74, &v62);
              *(v67[0] + v62) = v21;
              v20 = 1;
            }

            while (LODWORD(v78[3]))
            {
              v62 = *v78[0];
              fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Pop(v74);
              v22 = v62;
              v23 = v62;
              *(v67[0] + v62) = -1;
              *(v68 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
              v24 = v73[0];
              (*(*a1 + 24))(v60, a1);
              v25 = v24[v23];
              if (v25 == -INFINITY || v60[0] >= -INFINITY && v60[0] <= -INFINITY)
              {
                v26 = *fst::TropicalWeightTpl<float>::NoWeight();
              }

              else
              {
                v27 = v60[0] == INFINITY || v25 == INFINITY;
                v26 = v25 + v60[0];
                if (v27)
                {
                  v26 = INFINITY;
                }
              }

              *&v57 = v26;
              if (fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(&v63, &v61, &v57))
              {
                v28 = v62;
                LODWORD(v57) = *fst::TropicalWeightTpl<float>::Zero();
                (*(*a1 + 160))(a1, v28, &v57);
              }

              (*(*a1 + 272))(a1, v62, v60);
              while (!(*(**v60 + 16))(*v60))
              {
                v29 = (*(**v60 + 24))(*v60);
                v57 = *v29;
                v30 = *(v29 + 8);
                v58 = v30;
                v31 = *(v29 + 12);
                v59 = v31;
                v32 = *(v73[0] + v62);
                if (v32 == -INFINITY || v30 >= -INFINITY && v30 <= -INFINITY)
                {
                  v33 = *fst::TropicalWeightTpl<float>::NoWeight();
                  v31 = v59;
                }

                else
                {
                  v34 = v32 == INFINITY || v30 == INFINITY;
                  v35 = v30 + v32;
                  if (v34)
                  {
                    v33 = INFINITY;
                  }

                  else
                  {
                    v33 = v35;
                  }
                }

                if (v31 >= ((*(v8 + 8) - *v7) >> 2))
                {
                  v36 = fst::TropicalWeightTpl<float>::Zero();
                }

                else
                {
                  v36 = (*v7 + 4 * v31);
                }

                if (v33 == -INFINITY || (v37 = *v36, *v36 >= -INFINITY) && *v36 <= -INFINITY)
                {
                  v38 = *fst::TropicalWeightTpl<float>::NoWeight();
                }

                else
                {
                  v39 = v37 == INFINITY || v33 == INFINITY;
                  v38 = v33 + v37;
                  if (v39)
                  {
                    v38 = INFINITY;
                  }
                }

                v56 = v38;
                if (fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(&v63, &v61, &v56))
                {
                  v59 = *v64;
                  (*(**v60 + 80))(*v60, &v57);
                }

                else
                {
                  v40 = v73[0];
                  v41 = *(v73[0] + v62);
                  if (v41 == -INFINITY || v58 >= -INFINITY && v58 <= -INFINITY)
                  {
                    v42 = *fst::TropicalWeightTpl<float>::NoWeight();
                    v40 = v73[0];
                  }

                  else
                  {
                    v43 = v58 == INFINITY || v41 == INFINITY;
                    v42 = v41 + v58;
                    if (v43)
                    {
                      v42 = INFINITY;
                    }
                  }

                  v55 = v42;
                  if (fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(&v63, &v55, &v40[v59]))
                  {
                    v44 = v73[0];
                    v45 = *(v73[0] + v62);
                    if (v45 == -INFINITY || v58 >= -INFINITY && v58 <= -INFINITY)
                    {
                      v46 = *fst::TropicalWeightTpl<float>::NoWeight();
                      v44 = v73[0];
                    }

                    else
                    {
                      v48 = v58 == INFINITY || v45 == INFINITY;
                      v46 = v45 + v58;
                      if (v48)
                      {
                        v46 = INFINITY;
                      }
                    }

                    v47 = v59;
                    v44[v59] = v46;
                  }

                  else
                  {
                    v47 = v59;
                  }

                  if (((*(v68 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
                  {
                    v49 = *(a2 + 4);
                    if (v49 == -1 || v20 < v49)
                    {
                      v50 = *(v67[0] + v47);
                      if (v50 == -1)
                      {
                        v51 = fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Insert(v74, &v59);
                        *(v67[0] + v59) = v51;
                        ++v20;
                      }

                      else
                      {
                        fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Update(v74, v50, &v59);
                      }
                    }
                  }
                }

                (*(**v60 + 32))(*v60);
              }

              if (*v60)
              {
                (*(**v60 + 8))(*v60);
              }
            }

            LODWORD(v57) = 0;
            v52 = v69;
            if (v69)
            {
              v53 = 0;
              v54 = 0;
              do
              {
                if (((*(v68 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
                {
                  std::vector<int>::push_back[abi:ne200100](&v64, &v57);
                  v53 = v57;
                  v52 = v69;
                }

                LODWORD(v57) = ++v53;
                v54 = v53;
              }

              while (v52 > v53);
            }

            (*(*a1 + 192))(a1, &v64);
            if (v64)
            {
              v65 = v64;
              operator delete(v64);
            }

            if (v67[0])
            {
              v67[1] = v67[0];
              operator delete(v67[0]);
            }

            if (v68)
            {
              operator delete(v68);
            }

            if (v78[0])
            {
              v78[1] = v78[0];
              operator delete(v78[0]);
            }

            if (*(&v76 + 1))
            {
              *&v77 = *(&v76 + 1);
              operator delete(*(&v76 + 1));
            }

            if (v75)
            {
              *(&v75 + 1) = v75;
              operator delete(v75);
            }

            goto LABEL_8;
          }
        }

        else
        {
          v16 = *(*v7 + 4 * v15);
          if (v16 == -INFINITY)
          {
            goto LABEL_21;
          }

          v17 = *a2;
          if (*a2 >= -INFINITY && *a2 <= -INFINITY)
          {
            goto LABEL_21;
          }
        }

        v19 = v17 == INFINITY || v16 == INFINITY;
        v18 = v16 + v17;
        if (v19)
        {
          v18 = INFINITY;
        }

        goto LABEL_27;
      }
    }
  }

  (*(*a1 + 200))(a1);
LABEL_8:
  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }

  if (v73[0])
  {
    v73[1] = v73[0];
    operator delete(v73[0]);
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_26B51D614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::~Heap(&a30);
  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void *std::vector<fst::TropicalWeightTpl<float>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(result, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_26B51D79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFst();
  }

  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(v3, a1);
}

void sub_26B51D998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Insert(uint64_t a1, int *a2)
{
  v4 = *(a1 + 96);
  v5 = (a1 + 96);
  v8 = *(a1 + 72);
  v6 = (a1 + 72);
  v7 = v8;
  if (v4 >= (*(v5 - 2) - v8) >> 2)
  {
    std::vector<int>::push_back[abi:ne200100](v6, a2);
    std::vector<int>::push_back[abi:ne200100]((a1 + 24), v5);
    std::vector<int>::push_back[abi:ne200100]((a1 + 48), v5);
    LODWORD(v9) = *(a1 + 96);
  }

  else
  {
    *(v7 + 4 * v4) = *a2;
    v9 = *(a1 + 96);
    *(*(a1 + 24) + 4 * *(*(a1 + 48) + 4 * v9)) = v9;
  }

  *(a1 + 96) = v9 + 1;

  return fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Insert(a1, a2, v9);
}

uint64_t fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Pop(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *v1;
  v3 = *(a1 + 96) - 1;
  v4 = *(a1 + 48);
  v5 = *v4;
  v6 = v4[v3];
  *v4 = v6;
  v7 = *(a1 + 24);
  *(v7 + 4 * v6) = 0;
  v4[v3] = v5;
  *(v7 + 4 * v5) = v3;
  LODWORD(v4) = *v1;
  *v1 = v1[v3];
  v1[v3] = v4;
  --*(a1 + 96);
  fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Heapify(a1, 0);
  return v2;
}

uint64_t fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Update(uint64_t a1, int a2, int *a3)
{
  v5 = *(*(a1 + 24) + 4 * a2);
  v6 = fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(a1, *a3, *(*(a1 + 72) + 4 * ((v5 - 1) / 2)));
  *(*(a1 + 72) + 4 * v5) = *a3;
  if (v6)
  {

    return fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Insert(a1, a3, v5);
  }

  else
  {

    return fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Heapify(a1, v5);
  }
}

void *fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::~Heap(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void *std::vector<fst::TropicalWeightTpl<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26B51DD20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 20);
  v9 = 0;
  *v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  *v13 = 0u;
  *__p = 0u;
  memset(v15, 0, sizeof(v15));
  a2[1] = *a2;
  fst::internal::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ShortestDistance(v6, *(a3 + 12));
  if (v15[20] == 1)
  {
    a2[1] = *a2;
    v4 = fst::TropicalWeightTpl<float>::NoWeight();
    std::vector<fst::TropicalWeightTpl<float>>::resize(a2, 1uLL, v4, v5);
  }

  if (__p[1])
  {
    *v15 = __p[1];
    operator delete(__p[1]);
  }

  if (v13[0])
  {
    operator delete(v13[0]);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }
}

uint64_t fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 200))(a2);
  v6 = (*(*a1 + 96))(a1);
  (*(*a2 + 256))(a2, v6);
  v7 = (*(*a1 + 104))(a1);
  (*(*a2 + 264))(a2, v7);
  if ((*(*a1 + 56))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1);
    (*(*a2 + 224))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 16))(a1);
  v49 = 0;
  if (a3)
  {
LABEL_31:
    v10 = (*(*a2 + 176))(a2);
    v19 = 1;
    goto LABEL_32;
  }

  *&v40 = 0;
  DWORD2(v40) = 0;
  LODWORD(v41) = 0;
  (*(*a1 + 112))(a1, &v40);
  v10 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v40)
    {
      v11 = (*(*v40 + 16))(v40);
      v12 = v40;
      if (v11)
      {
        goto LABEL_24;
      }

      if (v40)
      {
        v13 = (*(*v40 + 24))();
        goto LABEL_11;
      }
    }

    else if (v41 >= SDWORD2(v40))
    {
      goto LABEL_26;
    }

    v13 = v41;
LABEL_11:
    (*(*a1 + 24))(&v48, a1, v13);
    v14 = fst::TropicalWeightTpl<float>::Zero();
    *&v37 = v48;
    LODWORD(v45) = *v14;
    v15 = 2 * (v10 != -1);
    if (v10 == -1)
    {
      v16 = v13;
    }

    else
    {
      v16 = -1;
    }

    if (*&v37 == *&v45)
    {
      v15 = 4;
    }

    v10 = v48 == *&v45 ? v10 : v16;
    if ((v15 | 4) != 4)
    {
      break;
    }

    if (v40)
    {
      (*(*v40 + 32))(v40);
    }

    else
    {
      LODWORD(v41) = v41 + 1;
    }
  }

  v12 = v40;
LABEL_24:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_26:
  if (v10 == -1)
  {
    goto LABEL_31;
  }

  (*(*a1 + 24))(&v45, a1, v10);
  v17 = fst::TropicalWeightTpl<float>::One();
  LODWORD(v40) = v45;
  v18.n128_u32[0] = v45;
  if (*&v45 != *v17)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v40 = &v45;
    *&v41 = 0;
    *(&v41 + 1) = &v49;
    v43 = 0u;
    v44 = 0u;
    fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, &v40);
  }

  v19 = 0;
LABEL_32:
  v37 = 0;
  v38 = 0;
  LODWORD(v39) = 0;
  (*(*a1 + 112))(a1, &v37, v18);
  while (2)
  {
    if (!v37)
    {
      if (v39 >= v38)
      {
        goto LABEL_84;
      }

      goto LABEL_38;
    }

    if (!(*(*v37 + 16))(v37))
    {
      if (v37)
      {
        v20 = (*(*v37 + 24))();
LABEL_39:
        v21 = v20 + v19;
        while ((*(*a2 + 136))(a2) <= v21)
        {
          (*(*a2 + 176))(a2);
        }

        if (v20 == v9)
        {
          LODWORD(v40) = *fst::TropicalWeightTpl<float>::One();
          (*(*a2 + 160))(a2, (v20 + v19), &v40);
        }

        (*(*a1 + 24))(&v48, a1, v20);
        v22 = fst::TropicalWeightTpl<float>::Zero();
        *&v40 = v48;
        LODWORD(v45) = *v22;
        v23 = v19 ^ 1;
        if (v48 == *&v45)
        {
          v23 = 1;
        }

        if ((v23 & 1) == 0)
        {
          *&v40 = 0;
          *(&v40 + 2) = v48;
          HIDWORD(v40) = v20 + v19;
          (*(*a2 + 184))(a2, 0, &v40);
        }

        v42 = 0;
        v40 = 0u;
        v41 = 0u;
        (*(*a1 + 120))(a1, v20, &v40);
LABEL_49:
        if (v40)
        {
          if ((*(*v40 + 16))(v40))
          {
            if (v40)
            {
              (*(*v40 + 8))();
              goto LABEL_79;
            }

LABEL_77:
            if (*(&v41 + 1))
            {
              --**(&v41 + 1);
            }

LABEL_79:
            if (v37)
            {
              (*(*v37 + 32))(v37);
            }

            else
            {
              LODWORD(v39) = v39 + 1;
            }

            continue;
          }

          if (v40)
          {
            v24 = (*(*v40 + 24))();
LABEL_55:
            v25 = (*(v24 + 12) + v19);
            v26 = *(v24 + 8);
            if (v25 == v10)
            {
              v27 = v19;
            }

            else
            {
              v27 = 1;
            }

            if ((v27 & 1) == 0)
            {
              (*(*a1 + 24))(&v45, a1, v10);
              if (*&v45 == -INFINITY || v26 >= -INFINITY && v26 <= -INFINITY)
              {
                LODWORD(v26) = *fst::TropicalWeightTpl<float>::NoWeight();
              }

              else if (*&v45 == INFINITY || v26 == INFINITY)
              {
                v26 = INFINITY;
              }

              else
              {
                v26 = v26 + *&v45;
              }
            }

            v45 = *v24;
            v46 = __PAIR64__(v21, LODWORD(v26));
            while (1)
            {
              v29 = (*(*a2 + 136))(a2);
              v30 = *a2;
              if (v29 > v25)
              {
                break;
              }

              (*(v30 + 176))(a2);
            }

            (*(v30 + 184))(a2, v25, &v45);
            if (v40)
            {
              (*(*v40 + 32))(v40);
            }

            else
            {
              ++v42;
            }

            goto LABEL_49;
          }
        }

        else if (v42 >= v41)
        {
          goto LABEL_77;
        }

        v24 = *(&v40 + 1) + 16 * v42;
        goto LABEL_55;
      }

LABEL_38:
      v20 = v39;
      goto LABEL_39;
    }

    break;
  }

  if (v37)
  {
    (*(*v37 + 8))();
  }

LABEL_84:
  (*(*a2 + 152))(a2, v10);
  if (v10 == v9)
  {
    v31 = v19;
  }

  else
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    (*(*a1 + 24))(&v37, a1, v9);
    LODWORD(v40) = v37;
    (*(*a2 + 160))(a2, v9, &v40);
  }

  v32 = (*(*a1 + 56))(a1, 0xFFFFFFFF0004, 0);
  v33 = v49;
  v34 = (*(*a2 + 56))(a2, 0xFFFFFFFF0007, 0);
  v35 = fst::ReverseProperties(v33 | v32, v19);
  return (*(*a2 + 168))(a2, v34 | v35, 0xFFFFFFFF0007);
}