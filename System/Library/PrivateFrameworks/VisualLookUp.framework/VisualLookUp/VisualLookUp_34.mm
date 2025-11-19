faiss::BufferList *faiss::BufferList::add(faiss::BufferList *this, uint64_t a2, float a3)
{
  v3 = *(this + 4);
  if (v3 == *this)
  {
    faiss::BufferList::append_buffer(this);
  }

  v4 = *(this + 2);
  v6 = *(v4 - 16);
  v5 = *(v4 - 8);
  *(v6 + 8 * v3) = a2;
  *(v5 + 4 * v3) = a3;
  *(this + 4) = v3 + 1;
  return this;
}

void *faiss::BufferList::copy_range(void *this, unint64_t a2, unint64_t a3, char *__dst, float *a5)
{
  if (a3)
  {
    v7 = a3;
    v8 = this;
    v9 = a2 / *this;
    v10 = a2 % *this;
    do
    {
      if (v10 + v7 >= *v8)
      {
        v11 = *v8 - v10;
      }

      else
      {
        v11 = v7;
      }

      v12 = (v8[1] + 16 * v9);
      v13 = v12[1];
      memcpy(__dst, (*v12 + 8 * v10), 8 * v11);
      this = memcpy(a5, (v13 + 4 * v10), 4 * v11);
      v10 = 0;
      __dst += 8 * v11;
      ++v9;
      a5 += v11;
      v7 -= v11;
    }

    while (v7);
  }

  return this;
}

faiss::BufferList *faiss::RangeQueryResult::add(faiss::RangeQueryResult *this, float a2, uint64_t a3)
{
  v3 = *(this + 2);
  ++*(this + 1);
  return faiss::BufferList::add(v3, a3, a2);
}

void *faiss::RangeSearchPartialResult::RangeSearchPartialResult(void *this, faiss::RangeSearchResult *a2)
{
  v2 = *(a2 + 5);
  *this = v2;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  this[4] = v2;
  this[5] = a2;
  this[7] = 0;
  this[8] = 0;
  this[6] = 0;
  return this;
}

{
  v2 = *(a2 + 5);
  *this = v2;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  this[4] = v2;
  this[5] = a2;
  this[7] = 0;
  this[8] = 0;
  this[6] = 0;
  return this;
}

uint64_t faiss::RangeSearchPartialResult::new_result(faiss::RangeSearchPartialResult *this, uint64_t a2)
{
  v5 = *(this + 7);
  v4 = *(this + 8);
  if (v5 >= v4)
  {
    v7 = *(this + 6);
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::RangeQueryResult>>(this + 48, v11);
    }

    v12 = 24 * v8;
    *v12 = a2;
    *(v12 + 8) = 0;
    *(v12 + 16) = this;
    v6 = 24 * v8 + 24;
    v13 = *(this + 6);
    v14 = *(this + 7) - v13;
    v15 = v12 - v14;
    memcpy((v12 - v14), v13, v14);
    v16 = *(this + 6);
    *(this + 6) = v15;
    *(this + 7) = v6;
    *(this + 8) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v5[1] = 0;
    v6 = (v5 + 3);
    v5[2] = this;
  }

  *(this + 7) = v6;
  return v6 - 24;
}

void *faiss::RangeSearchPartialResult::finalize(faiss::RangeSearchPartialResult *this)
{
  v2 = *(this + 6);
  v3 = *(this + 7) - v2;
  if (v3)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    v5 = *(this + 5);
    v6 = *(v5 + 16);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v7 = (v2 + 8);
    do
    {
      *(v6 + 8 * *(v7 - 1)) = *v7;
      v7 += 3;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = *(this + 5);
  }

  (**v5)(v5);

  return faiss::RangeSearchPartialResult::copy_result(this, 0);
}

void *faiss::RangeSearchPartialResult::set_lims(void *this)
{
  v1 = this[6];
  v2 = this[7] - v1;
  if (v2)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
    v4 = *(this[5] + 16);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v5 = (v1 + 8);
    do
    {
      *(v4 + 8 * *(v5 - 1)) = *v5;
      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return this;
}

void *faiss::RangeSearchPartialResult::copy_result(void *this, int a2)
{
  v2 = this[6];
  if (this[7] != v2)
  {
    v4 = this;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v2 + v5);
      v9 = v4[5];
      v10 = *(v9[2] + 8 * *v8);
      this = faiss::BufferList::copy_range(v4, v7, v8[1], (v9[3] + 8 * v10), (v9[4] + 4 * v10));
      if (a2)
      {
        *(*(v4[5] + 16) + 8 * *v8) += v8[1];
      }

      v7 += v8[1];
      ++v6;
      v2 = v4[6];
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v4[7] - v2) >> 3) > v6);
  }

  return this;
}

uint64_t **faiss::RangeSearchPartialResult::merge(uint64_t **result, int a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = v2 - *result;
  if ((v4 >> 3))
  {
    v6 = result;
    v7 = *(*v3 + 40);
    v8 = *(v7 + 8);
    while (v3 != v2)
    {
      v9 = *v3;
      if (*v3)
      {
        v10 = *(v9 + 48);
        v11 = *(v9 + 56);
        if (v10 != v11)
        {
          v12 = *(v7 + 16);
          do
          {
            v13 = *v10;
            v14 = v10[1];
            v10 += 3;
            *(v12 + 8 * v13) += v14;
          }

          while (v10 != v11);
        }
      }

      ++v3;
    }

    result = (**v7)(v7);
    if ((v4 >> 3) >= 1)
    {
      v15 = 0;
      do
      {
        result = *(*v6 + 8 * v15);
        if (result)
        {
          result = faiss::RangeSearchPartialResult::copy_result(result, 1);
          if (a2)
          {
            v16 = *v6;
            v17 = *(*v6 + 8 * v15);
            if (v17)
            {
              v18 = *(v17 + 6);
              if (v18)
              {
                *(v17 + 7) = v18;
                operator delete(v18);
              }

              faiss::BufferList::~BufferList(v17);
              result = MEMORY[0x1DA73F410]();
              v16 = *v6;
            }

            *(v16 + 8 * v15) = 0;
          }
        }

        ++v15;
      }

      while (((v4 >> 3) & 0x7FFFFFFF) != v15);
    }

    v19 = *(v7 + 16);
    if (v8)
    {
      result = memmove(v19 + 1, *(v7 + 16), 8 * v8);
    }

    *v19 = 0;
  }

  return result;
}

void *faiss::IDSelectorRange::IDSelectorRange(void *this, uint64_t a2, uint64_t a3)
{
  *this = &unk_1F5536F80;
  this[1] = a2;
  this[2] = a3;
  return this;
}

{
  *this = &unk_1F5536F80;
  this[1] = a2;
  this[2] = a3;
  return this;
}

void *faiss::IDSelectorArray::IDSelectorArray(void *this, uint64_t a2, const uint64_t *a3)
{
  *this = &unk_1F5536FA8;
  this[1] = a2;
  this[2] = a3;
  return this;
}

{
  *this = &unk_1F5536FA8;
  this[1] = a2;
  this[2] = a3;
  return this;
}

BOOL faiss::IDSelectorArray::is_member(faiss::IDSelectorArray *this, uint64_t a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 2);
  if (*v3 == a2)
  {
    return 1;
  }

  v5 = 1;
  do
  {
    v6 = v5;
    if (v2 == v5)
    {
      break;
    }

    v7 = v3[v5++];
  }

  while (v7 != a2);
  return v6 < v2;
}

faiss::IDSelectorBatch *faiss::IDSelectorBatch::IDSelectorBatch(faiss::IDSelectorBatch *this, unint64_t a2, uint64_t *a3)
{
  v4 = a2;
  *this = &unk_1F5536FD0;
  *(this + 8) = 0u;
  v6 = (this + 8);
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v7 = 1;
  do
  {
    v8 = 1 << (v7++ - 1);
  }

  while (v8 < a2);
  *(this + 18) = v7 + 3;
  *(this + 10) = ~(-1 << (v7 + 3));
  v12 = 0;
  std::vector<unsigned char>::__append(this + 6, 1 << v7, &v12);
  for (; v4; --v4)
  {
    v9 = *a3++;
    v11 = v9;
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v6, &v11);
    v11 &= *(this + 10);
    *(*(this + 6) + (v11 >> 3)) |= 1 << (v11 & 7);
  }

  return this;
}

void sub_1D9C2A640(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

uint64_t *faiss::InterruptCallback::get_instance(faiss::InterruptCallback *this)
{
  if ((atomic_load_explicit(&qword_1ECB70E00, memory_order_acquire) & 1) == 0)
  {
    faiss::InterruptCallback::get_instance();
  }

  return &_MergedGlobals;
}

uint64_t *std::unique_ptr<faiss::InterruptCallback>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

std::mutex *faiss::InterruptCallback::get_lock(faiss::InterruptCallback *this)
{
  {
    faiss::InterruptCallback::get_lock();
  }

  return &faiss::InterruptCallback::get_lock(void)::lock;
}

uint64_t faiss::InterruptCallback::clear_instance(faiss::InterruptCallback *this)
{
  faiss::InterruptCallback::get_instance(this);
  result = _MergedGlobals;
  _MergedGlobals = 0;
  if (result)
  {
    v2 = *(*result + 16);

    return v2();
  }

  return result;
}

uint64_t *faiss::InterruptCallback::check(faiss::InterruptCallback *this)
{
  result = faiss::InterruptCallback::get_instance(this);
  if (_MergedGlobals)
  {
    faiss::InterruptCallback::get_instance(result);
    result = (**_MergedGlobals)(_MergedGlobals);
    if (result)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::__init(&v3, "computation interrupted", 0x17uLL);
      faiss::FaissException::FaissException(exception, &v3, "static void faiss::InterruptCallback::check()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/AuxIndexStructures.cpp", 279);
    }
  }

  return result;
}

void sub_1D9C2A8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t faiss::InterruptCallback::is_interrupted(faiss::InterruptCallback *this)
{
  instance = faiss::InterruptCallback::get_instance(this);
  if (!_MergedGlobals)
  {
    return 0;
  }

  faiss::InterruptCallback::get_lock(instance);
  std::mutex::lock(&faiss::InterruptCallback::get_lock(void)::lock);
  faiss::InterruptCallback::get_instance(v2);
  v3 = (**_MergedGlobals)();
  std::mutex::unlock(&faiss::InterruptCallback::get_lock(void)::lock);
  return v3;
}

unint64_t faiss::InterruptCallback::get_period_hint(faiss::InterruptCallback *this)
{
  faiss::InterruptCallback::get_instance(this);
  if (!_MergedGlobals)
  {
    return 0x40000000;
  }

  if (this + 1 > 0x5F5E100)
  {
    return 1;
  }

  return 0x5F5E100 / (this + 1);
}

void faiss::IDSelectorBatch::~IDSelectorBatch(faiss::IDSelectorBatch *this)
{
  faiss::IDSelectorBatch::~IDSelectorBatch(this);

  JUMPOUT(0x1DA73F410);
}

{
  *this = &unk_1F5536FD0;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(this + 8);
}

uint64_t std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::BufferList::Buffer>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::RangeQueryResult>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
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

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
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

        if (v8 != v5)
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

void faiss::InterruptCallback::get_instance()
{
  if (__cxa_guard_acquire(&qword_1ECB70E00))
  {
    __cxa_atexit(std::unique_ptr<faiss::InterruptCallback>::~unique_ptr[abi:ne200100], &_MergedGlobals, &dword_1D9962000);

    __cxa_guard_release(&qword_1ECB70E00);
  }
}

void faiss::InterruptCallback::get_lock()
{
  {
    __cxa_atexit(MEMORY[0x1E69E5328], &faiss::InterruptCallback::get_lock(void)::lock, &dword_1D9962000);
  }
}

void *faiss::FaissException::FaissException(void *a1, __int128 *a2)
{
  *a1 = &unk_1F5537060;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

uint64_t faiss::FaissException::FaissException(uint64_t a1, uint64_t a2, const char *a3, const char *a4, int a5)
{
  *a1 = &unk_1F5537060;
  *(a1 + 8) = 0;
  v10 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = snprintf(0, 0, "Error in %s at %s:%d: %s", a3, a4, a5, v11);
  std::string::resize(v10, v12 + 1, 0);
  v13 = *(a1 + 31);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v10 = *(a1 + 8);
    v13 = *(a1 + 16);
  }

  if (*(a2 + 23) >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  snprintf(v10, v13, "Error in %s at %s:%d: %s", a3, a4, a5, v14);
  return a1;
}

void sub_1D9C2B460(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

uint64_t faiss::FaissException::what(faiss::FaissException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

const std::exception_ptr **faiss::handleExceptions(const std::exception_ptr **result)
{
  v2 = result[1] - *result;
  if (v2 == 16)
  {
    v3.__ptr_ = std::exception_ptr::exception_ptr(&v10, *result + 1);
    std::rethrow_exception(v3);
    goto LABEL_7;
  }

  if (v2 >= 0x11)
  {
    v4 = result;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
    v1 = *v4;
    if (*v4 == v4[1])
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::stringbuf::str();
      faiss::FaissException::FaissException(exception, &v7);
    }

    while (1)
    {
      std::exception_ptr::exception_ptr(&v8, v1 + 1);
      v6.__ptr_ = &v8;
      std::rethrow_exception(v6);
LABEL_7:
      __break(1u);
    }
  }

  return result;
}

void sub_1D9C2B5B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception_ptr a12)
{
  std::exception_ptr::~exception_ptr(&a12);
  v21 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v22 = v21;
    if ((*(*v21 + 16))(v21))
    {
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v16 + 16), v14, 28);
      v28 = MEMORY[0x1DA73F200](v27, *v17);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v15, 2);
      v30 = (*(*v22 + 16))(v22);
      v31 = strlen(v30);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
    }

    else
    {
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v16 + 16), v12, 36);
      v24 = MEMORY[0x1DA73F200](v23, *v17);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v13, 1);
    __cxa_end_catch();
  }

  else
  {
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v16 + 16), v12, 36);
    v26 = MEMORY[0x1DA73F200](v25, *v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v13, 1);
    __cxa_end_catch();
  }

  if (v17 + 4 == v18)
  {
    JUMPOUT(0x1D9C2B530);
  }

  JUMPOUT(0x1D9C2B5A0);
}

void sub_1D9C2B6D4(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x1E69E54D8]);
  MEMORY[0x1DA73F390](va);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1D9C2B9DC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1DA73F390](v1);
  _Unwind_Resume(a1);
}

void faiss::demangle_cpp_symbol(faiss *this@<X0>, void *a2@<X8>)
{
  status = -1;
  v4 = __cxa_demangle(this, 0, 0, &status);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (!status)
  {
    MEMORY[0x1DA73F190](a2, v4);
  }

  free(v4);
}

void sub_1D9C2BA6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
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

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1DA73F320](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1D9C2BD9C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1DA73F1E0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1DA73F1F0](v13);
  return a1;
}

void sub_1D9C2C00C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1DA73F1F0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1D9C2BFECLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1D9C2C240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double faiss::SimulatedAnnealingParameters::SimulatedAnnealingParameters(faiss::SimulatedAnnealingParameters *this)
{
  result = 0.7;
  *this = xmmword_1D9C9F930;
  *(this + 1) = xmmword_1D9C9F940;
  *(this + 16) = 0;
  return result;
}

{
  result = 0.7;
  *this = xmmword_1D9C9F930;
  *(this + 1) = xmmword_1D9C9F940;
  *(this + 16) = 0;
  return result;
}

double faiss::PermutationObjective::cost_update(faiss::PermutationObjective *this, const int *a2, int a3, int a4)
{
  v8 = (**this)(this);
  std::vector<int>::vector[abi:ne200100](__p, *(this + 2));
  v9 = __p[0];
  if (*(this + 2) >= 1)
  {
    v10 = 0;
    do
    {
      v9[v10] = a2[v10];
      ++v10;
    }

    while (v10 < *(this + 2));
  }

  v9[a3] = a2[a4];
  v9[a4] = a2[a3];
  v11 = (**this)(this);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v11 - v8;
}

void sub_1D9C2C39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void faiss::SimulatedAnnealingOptimizer::SimulatedAnnealingOptimizer(faiss::SimulatedAnnealingOptimizer *this, faiss::PermutationObjective *a2, const faiss::SimulatedAnnealingParameters *a3)
{
  v3 = *a3;
  v4 = *(a3 + 1);
  *(this + 5) = *(a3 + 4);
  *(this + 6) = a2;
  *(this + 24) = v4;
  *(this + 8) = v3;
  *this = &unk_1F55370A0;
  *(this + 14) = *(a2 + 2);
  *(this + 8) = 0;
  operator new();
}

void sub_1D9C2C51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::SimulatedAnnealingOptimizer::~SimulatedAnnealingOptimizer(faiss::SimulatedAnnealingOptimizer *this)
{
  *this = &unk_1F55370A0;
  v1 = *(this + 9);
  if (v1)
  {
    MEMORY[0x1DA73F410](v1, 0x1000C407BAC9B3ELL);
  }
}

{
  *this = &unk_1F55370A0;
  v1 = *(this + 9);
  if (v1)
  {
    MEMORY[0x1DA73F410](v1, 0x1000C407BAC9B3ELL);
  }
}

{
  *this = &unk_1F55370A0;
  v1 = *(this + 9);
  if (v1)
  {
    MEMORY[0x1DA73F410](v1, 0x1000C407BAC9B3ELL);
  }

  JUMPOUT(0x1DA73F410);
}

double faiss::SimulatedAnnealingOptimizer::run_optimization(faiss::SimulatedAnnealingOptimizer *this, int *a2)
{
  if (*(this + 7) < 1)
  {
    return 1.0e30;
  }

  v4 = 0;
  v5 = 1.0e30;
  do
  {
    std::vector<int>::vector[abi:ne200100](__src, *(this + 14));
    LODWORD(v6) = *(this + 14);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = __src[0];
      do
      {
        v8[v7] = v7;
        ++v7;
      }

      while (v7 < *(this + 14));
      LODWORD(v6) = *(this + 14);
    }

    if (v6 >= 1 && (*(this + 41) & 1) != 0)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = faiss::RandomGenerator::rand_int(*(this + 9), v6 + v9);
        v12 = __src[0];
        v13 = *(__src[0] + v10);
        *(__src[0] + v10) = *(__src[0] + v10 + v11);
        v12[v10++ + v11] = v13;
        v6 = *(this + 14);
        --v9;
      }

      while (v10 < v6);
    }

    v14 = faiss::SimulatedAnnealingOptimizer::optimize(this, __src[0]);
    v15 = *(this + 8);
    if (v15)
    {
      fputc(10, v15);
    }

    v16 = v14;
    v17 = v16;
    if (*(this + 9) >= 2)
    {
      if (v5 <= v17)
      {
        v18 = "";
      }

      else
      {
        v18 = "keep";
      }

      printf("    optimization run %d: cost=%g %s\n", v4, v16, v18);
    }

    v19 = __src[0];
    if (v5 > v17)
    {
      memcpy(a2, __src[0], 4 * *(this + 14));
      v5 = v17;
    }

    if (v19)
    {
      __src[1] = v19;
      operator delete(v19);
    }

    ++v4;
  }

  while (v4 < *(this + 7));
  return v5;
}

void sub_1D9C2C838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double faiss::SimulatedAnnealingOptimizer::optimize(faiss::SimulatedAnnealingOptimizer *this, int *a2)
{
  v4 = (***(this + 6))(*(this + 6));
  *(this + 10) = v4;
  v5 = -1;
  do
  {
    ++v5;
  }

  while (*(this + 14) > 1 << v5);
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(this + 1);
    v10 = MEMORY[0x1E69E9858];
    do
    {
      v11 = *(this + 2);
      v12 = *(this + 40);
      v13 = faiss::RandomGenerator::rand_int(*(this + 9), *(this + 14));
      v14 = *(this + 9);
      if (v12 == 1)
      {
        v15 = (1 << faiss::RandomGenerator::rand_int(v14, v5)) ^ v13;
      }

      else
      {
        v16 = faiss::RandomGenerator::rand_int(v14, *(this + 14) - 1);
        if (v16 == v13)
        {
          v15 = v16 + 1;
        }

        else
        {
          v15 = v16;
        }
      }

      v9 = v9 * v11;
      v17 = (*(**(this + 6) + 8))(*(this + 6), a2, v13, v15);
      if (v17 < 0.0 || v9 > faiss::RandomGenerator::rand_float(*(this + 9)))
      {
        v18 = a2[v13];
        a2[v13] = a2[v15];
        a2[v15] = v18;
        v4 = v4 + v17;
        ++v8;
        if (v17 >= 0.0)
        {
          ++v7;
        }
      }

      v19 = *(this + 9);
      if (v19 > 2 || (10000 * (v6 / 0x2710u) == v6 ? (v20 = v19 == 2) : (v20 = 0), v20))
      {
        printf("      iteration %d cost %g temp %g n_swap %d (%d hot)     \r", v6, v4, v9, v8, v7);
        fflush(*v10);
      }

      v21 = *(this + 8);
      if (v21)
      {
        fprintf(v21, "%d %g %g %d %d\n", v6, v4, v9, v8, v7);
      }

      ++v6;
    }

    while (v6 < *(this + 6));
  }

  if (*(this + 9) > 1)
  {
    putchar(10);
  }

  return v4;
}

double faiss::ReproduceDistancesObjective::compute_cost(faiss::ReproduceDistancesObjective *this, const int *a2)
{
  v2 = *(this + 2);
  if (v2 < 1)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = *(this + 6);
  v5 = *(this + 7);
  v6 = 8 * v2;
  result = 0.0;
  v8 = *(this + 3);
  do
  {
    v9 = v2;
    v10 = a2;
    v11 = v4;
    v12 = v5;
    do
    {
      v13 = *v11++;
      v14 = v13;
      v15 = *v12++;
      v16 = v15;
      LODWORD(v15) = *v10++;
      v17 = *(v8 + 8 * (a2[v3] * v2 + LODWORD(v15)));
      result = result + v16 * ((v14 - v17) * (v14 - v17));
      --v9;
    }

    while (v9);
    ++v3;
    v5 = (v5 + v6);
    v4 = (v4 + v6);
  }

  while (v3 != v2);
  return result;
}

double faiss::ReproduceDistancesObjective::cost_update(faiss::ReproduceDistancesObjective *this, const int *a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 2);
  if (v4 < 1)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = a3;
  v7 = a3;
  v8 = 8 * v4 * a4;
  v9 = 8 * v4 * a3;
  result = 0.0;
  do
  {
    if (v5 == v6)
    {
      v11 = 0;
      v12 = *(this + 3);
      do
      {
        v13 = *(*(this + 6) + v9 + 8 * v11);
        v14 = v13 - *(v12 + 8 * (a2[v6] * v4 + a2[v11]));
        v15 = v14 * v14;
        if (a4 == v11)
        {
          v16 = v6;
        }

        else
        {
          v16 = v11;
        }

        if (v6 == v11)
        {
          v16 = a4;
        }

        v17 = *(v12 + 8 * (a2[a4] * v4 + a2[v16]));
        result = result - *(*(this + 7) + v9 + 8 * v11) * v15 + *(*(this + 7) + v9 + 8 * v11) * ((v13 - v17) * (v13 - v17));
        ++v11;
      }

      while (v4 != v11);
    }

    else
    {
      v18 = *(this + 6);
      if (v5 == a4)
      {
        v19 = 0;
        v20 = *(this + 3);
        v21 = v18 + v8;
        do
        {
          v22 = *(v21 + 8 * v19);
          v23 = v22 - *(v20 + 8 * (a2[a4] * v4 + a2[v19]));
          v24 = v23 * v23;
          if (a4 == v19)
          {
            v25 = v6;
          }

          else
          {
            v25 = v19;
          }

          if (v6 == v19)
          {
            v25 = a4;
          }

          v26 = *(v20 + 8 * (a2[v7] * v4 + a2[v25]));
          result = result - *(*(this + 7) + v8 + 8 * v19) * v24 + *(*(this + 7) + v8 + 8 * v19) * ((v22 - v26) * (v22 - v26));
          ++v19;
        }

        while (v4 != v19);
      }

      else
      {
        v27 = v5 * v4 + v7;
        v28 = *(v18 + 8 * v27);
        v29 = *(this + 7);
        v30 = *(v29 + 8 * v27);
        LODWORD(v27) = a2[v5] * v4;
        v31 = *(this + 3);
        v32 = *(v31 + 8 * (v27 + a2[v7]));
        v33 = *(v31 + 8 * (a2[a4] + v27));
        v34 = v5 * v4 + a4;
        result = result - v30 * ((v28 - v32) * (v28 - v32)) + v30 * ((v28 - v33) * (v28 - v33)) - *(v29 + 8 * v34) * ((*(v18 + 8 * v34) - v33) * (*(v18 + 8 * v34) - v33)) + *(v29 + 8 * v34) * ((*(v18 + 8 * v34) - v32) * (*(v18 + 8 * v34) - v32));
      }
    }

    ++v5;
  }

  while (v5 != v4);
  return result;
}

faiss::ReproduceDistancesObjective *faiss::ReproduceDistancesObjective::ReproduceDistancesObjective(faiss::ReproduceDistancesObjective *this, int a2, double *a3, const double *a4, double a5)
{
  *this = &unk_1F55370C0;
  *(this + 2) = a5;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a4;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 2) = a2;
  faiss::ReproduceDistancesObjective::set_affine_target_dis(this, a3);
  return this;
}

void sub_1D9C2CD78(_Unwind_Exception *exception_object)
{
  v4 = v2;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 64) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void faiss::ReproduceDistancesObjective::set_affine_target_dis(faiss::ReproduceDistancesObjective *this, double *a2)
{
  v2 = a2;
  v4 = *(this + 2);
  LODWORD(v5) = v4 * v4;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (v4)
  {
    v9 = a2;
    v10 = (v4 * v4);
    do
    {
      v11 = *v9++;
      v8 = v8 + v11;
      v7 = v7 + v11 * v11;
      --v10;
    }

    while (v10);
  }

  v12 = v5;
  v13 = v8 / v5;
  v14 = sqrt(v7 / v5 - v13 * v13);
  v15 = 0.0;
  if (v4)
  {
    v16 = *(this + 6);
    v17 = (v4 * v4);
    v6 = 0.0;
    do
    {
      v18 = *v16++;
      v15 = v15 + v18;
      v6 = v6 + v18 * v18;
      --v17;
    }

    while (v17);
  }

  v19 = v15 / v12;
  v20 = sqrt(v6 / v12 - v19 * v19);
  printf("map mean %g std %g -> mean %g std %g\n", v13, v14, v15 / v12, v20);
  std::vector<long long>::resize(this + 3, (v4 * v4));
  std::vector<long long>::resize(this + 7, (v4 * v4));
  if (v4)
  {
    v21 = *(this + 3);
    v22 = *(this + 6);
    v23 = *(this + 7);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v5;
    }

    do
    {
      v24 = *v2++;
      *v21++ = v19 + (v24 - v13) / v14 * v20;
      v25 = *v22++;
      *v23++ = exp(-(*(this + 2) * v25));
      --v5;
    }

    while (v5);
  }
}

double faiss::ReproduceDistancesObjective::compute_mean_stdev(faiss::ReproduceDistancesObjective *this, const double *a2, double *a3, double *a4, double *a5)
{
  if (a2)
  {
    v5 = 0.0;
    v6 = a2;
    v7 = 0.0;
    do
    {
      v8 = *this;
      this = (this + 8);
      v5 = v5 + v8;
      v7 = v7 + v8 * v8;
      v6 = (v6 - 1);
    }

    while (v6);
  }

  else
  {
    v7 = 0.0;
    v5 = 0.0;
  }

  result = v5 / a2;
  *a3 = result;
  *a4 = sqrt(v7 / a2 - result * result);
  return result;
}

double faiss::PolysemousTraining::PolysemousTraining(faiss::PolysemousTraining *this)
{
  *this = xmmword_1D9C9F930;
  *(this + 1) = xmmword_1D9C9F940;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *&result = 1;
  *(this + 36) = 1;
  *(this + 6) = 0x3FE62E42FEFA39EFLL;
  *(this + 7) = 0x500000000;
  *(this + 8) = 0;
  return result;
}

{
  *this = xmmword_1D9C9F930;
  *(this + 1) = xmmword_1D9C9F940;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *&result = 1;
  *(this + 36) = 1;
  *(this + 6) = 0x3FE62E42FEFA39EFLL;
  *(this + 7) = 0x500000000;
  *(this + 8) = 0;
  return result;
}

unint64_t faiss::PolysemousTraining::optimize_reproduce_distances(faiss::PolysemousTraining *this, faiss::ProductQuantizer *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 3);
  v41 = *(a2 + 5);
  v39 = *(a2 + 4);
  result = faiss::PolysemousTraining::memory_usage_per_thread(this, a2);
  v6 = *(this + 7);
  v38 = this;
  if (result >= v6)
  {
    v32 = result;
    memset(__str, 0, 24);
    v33 = snprintf(0, 0, "Error: '%s' failed: Polysemous training will use %zd bytes per thread, while the max is set to %zd", "mem1 < max_memory", result, v6);
    std::string::resize(__str, v33 + 1, 0);
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = __str;
    }

    else
    {
      v34 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str[0].__r_.__value_.__l.__size_;
    }

    snprintf(v34, size, "Error: '%s' failed: Polysemous training will use %zd bytes per thread, while the max is set to %zd", "mem1 < max_memory", v32, *(this + 7));
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, __str, "void faiss::PolysemousTraining::optimize_reproduce_distances(ProductQuantizer &) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/PolysemousTraining.cpp", 789);
  }

  if (*(a2 + 1))
  {
    v7 = v4;
    v8 = 1 << v39 << v39;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v40 = (1 << v39 << v39);
    v10 = v8;
    v11 = 4 * v4;
    v37 = v9;
    v12 = 8 * v9;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v13 = *(a2 + 13);
    if (v41 >= 1)
    {
      v14 = 0;
      v15 = *(a2 + 13);
      do
      {
        v16 = v41 & 0x7FFFFFFF;
        v17 = v15;
        do
        {
          *&__str[0].__r_.__value_.__l.__data_ = faiss::fvec_L2sqr((v13 + 4 * v14 * v7), v17, v7);
          std::vector<double>::push_back[abi:ne200100](&v49, __str);
          v17 = (v17 + v11);
          --v16;
        }

        while (v16);
        ++v14;
      }

      while (v14 != (v41 & 0x7FFFFFFF));
    }

    std::vector<int>::vector[abi:ne200100](&__p, v41);
    v18 = *(v38 + 6);
    v43 = &unk_1F5537180;
    v46 = v18;
    memset(v47, 0, sizeof(v47));
    v45 = v39;
    v44 = 1 << v39;
    v19 = v49;
    if (v40 == (v50 - v49) >> 3)
    {
      v20 = 0.0;
      v21 = v37;
      v22 = 0.0;
      do
      {
        v23 = *v19++;
        v20 = v20 + v23;
        v22 = v22 + v23 * v23;
        --v21;
      }

      while (v21);
      std::vector<long long>::resize(v47, v40);
      v24 = 0;
      v25 = v20 / v10;
      v26 = sqrt(v22 / v10 - v25 * v25);
      do
      {
        v27 = (v45 / 2) + (*(v49 + v24) - v25) / v26 * sqrt((v45 / 4));
        *(*&v47[0] + v24) = v27;
        __str[0].__r_.__value_.__r.__words[0] = exp(-(v46 * v27));
        std::vector<double>::push_back[abi:ne200100](&v47[1] + 1, __str);
        v24 += 8;
      }

      while (v12 != v24);
      faiss::SimulatedAnnealingOptimizer::SimulatedAnnealingOptimizer(v42, &v43, v38);
    }

    memset(__str, 0, 24);
    v28 = snprintf(0, 0, "Error: '%s' failed", "dis_table.size() == n * n");
    std::string::resize(__str, v28 + 1, 0);
    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = __str;
    }

    else
    {
      v29 = __str[0].__r_.__value_.__r.__words[0];
    }

    if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = __str[0].__r_.__value_.__l.__size_;
    }

    snprintf(v29, v30, "Error: '%s' failed", "dis_table.size() == n * n");
    v31 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v31, __str, "faiss::(anonymous namespace)::ReproduceWithHammingObjective::ReproduceWithHammingObjective(int, const std::vector<double> &, double)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/PolysemousTraining.cpp", 276);
  }

  return result;
}

void sub_1D9C2D6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  __cxa_free_exception(v62);
  if (a62 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::PolysemousTraining::memory_usage_per_thread(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 36);
  if (result)
  {
    v3 = *(a2 + 40);
    if (result == 2)
    {
      return 4 * v3 * v3 * v3;
    }

    else
    {
      if (result != 1)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::string::__init(&v5, "Invalid optmization type", 0x18uLL);
        faiss::FaissException::FaissException(exception, &v5, "size_t faiss::PolysemousTraining::memory_usage_per_thread(const ProductQuantizer &) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/PolysemousTraining.cpp", 985);
      }

      return 24 * v3 * v3;
    }
  }

  return result;
}

void sub_1D9C2D8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void faiss::anonymous namespace::ReproduceWithHammingObjective::~ReproduceWithHammingObjective(faiss::_anonymous_namespace_::ReproduceWithHammingObjective *this)
{
  *this = &unk_1F5537180;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{

  JUMPOUT(0x1DA73F410);
}

void faiss::PolysemousTraining::optimize_ranking(faiss::PolysemousTraining *this, faiss::ProductQuantizer *a2, unint64_t a3, const float *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 3);
  std::vector<unsigned char>::vector[abi:ne200100](v29, *(a2 + 4) * a3);
  faiss::ProductQuantizer::compute_codes(a2, a4, v29[0], a3);
  if (*(a2 + 2) != 8)
  {
    memset(__p, 0, 24);
    v20 = snprintf(0, 0, "Error: '%s' failed", "pq.nbits == 8");
    std::string::resize(__p, v20 + 1, 0);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0].__r_.__value_.__r.__words[0];
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p[0].__r_.__value_.__l.__size_;
    }

    snprintf(v21, size, "Error: '%s' failed", "pq.nbits == 8");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, __p, "void faiss::PolysemousTraining::optimize_ranking(ProductQuantizer &, size_t, const float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/PolysemousTraining.cpp", 859);
  }

  if (!a3)
  {
    faiss::ProductQuantizer::compute_sdc_table(a2);
  }

  v25 = a4;
  if (*(a2 + 1))
  {
    v26 = a3 - (a3 >> 2);
    memset(&v28, 0, sizeof(v28));
    memset(&v27, 0, sizeof(v27));
    if (a3)
    {
      std::vector<float>::vector[abi:ne200100](__p, v7 * a3);
      v8 = 0;
      v9 = 0;
      do
      {
        memcpy((__p[0].__r_.__value_.__r.__words[0] + v8), &v25[*a2 * v9++], 4 * v7);
        v8 += 4 * v7;
      }

      while (a3 != v9);
      std::vector<float>::resize(&v28, a3);
      v10 = *(a2 + 4);
      v11 = v29[0];
      v12 = a3;
      begin = v28.__begin_;
      do
      {
        *begin++ = *v11;
        v11 += v10;
        --v12;
      }

      while (v12);
      v14 = __p[0].__r_.__value_.__r.__words[0];
      std::vector<float>::resize(&v27, v26 * (a3 >> 2));
      faiss::pairwise_L2sqr(v7, a3 >> 2, v14, v26, v14 + v7 * (a3 >> 2), v27.__begin_, 0xFFFFFFFFFFFFFFFFLL, -1, -1, v24);
      v15 = __p[0].__r_.__value_.__r.__words[0];
      if (__p[0].__r_.__value_.__r.__words[0])
      {
        __p[0].__r_.__value_.__l.__size_ = __p[0].__r_.__value_.__r.__words[0];
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v16 = *(a2 + 5);
      std::vector<float>::resize(&v28, 2 * v16);
      if (v16)
      {
        v17 = 0;
        v18 = v28.__begin_;
        v19 = &v28.__begin_[v16];
        do
        {
          v19[v17] = v17;
          v18[v17] = v17;
          ++v17;
        }

        while (v16 != v17);
      }

      std::vector<float>::resize(&v27, v16 * v16);
      v15 = memcpy(v27.__begin_, *(a2 + 16), 4 * v16 * v16);
    }

    faiss::getmillisecs(v15);
    operator new();
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }
}

void sub_1D9C2E18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  __cxa_free_exception(v57);
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a49)
  {
    operator delete(a49);
  }

  _Unwind_Resume(a1);
}

void faiss::PolysemousTraining::optimize_pq_for_hamming(faiss::PolysemousTraining *this, faiss::ProductQuantizer *a2, unint64_t a3, const float *a4)
{
  v5 = *(this + 9);
  if (v5)
  {
    if (v5 == 1)
    {
      faiss::PolysemousTraining::optimize_reproduce_distances(this, a2);
    }

    else
    {
      faiss::PolysemousTraining::optimize_ranking(this, a2, a3, a4);
    }
  }

  faiss::ProductQuantizer::compute_sdc_table(a2);
}

void faiss::ReproduceDistancesObjective::~ReproduceDistancesObjective(faiss::ReproduceDistancesObjective *this)
{
  faiss::ReproduceDistancesObjective::~ReproduceDistancesObjective(this);

  JUMPOUT(0x1DA73F410);
}

{
  *this = &unk_1F55370C0;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

double faiss::anonymous namespace::ReproduceWithHammingObjective::compute_cost(faiss::_anonymous_namespace_::ReproduceWithHammingObjective *this, const int *a2)
{
  v2 = *(this + 2);
  if (v2 < 1)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = *(this + 3);
  v5 = *(this + 6);
  v6 = 8 * v2;
  result = 0.0;
  do
  {
    v8 = *(this + 2);
    v9 = a2;
    v10 = v4;
    v11 = v5;
    do
    {
      v12 = *v10++;
      v13 = v12;
      v14 = *v11++;
      v15 = v14;
      LODWORD(v14) = *v9++;
      v16 = vcnt_s8((LODWORD(v14) ^ a2[v3]));
      v16.i16[0] = vaddlv_u8(v16);
      result = result + v15 * ((v13 - v16.u32[0]) * (v13 - v16.u32[0]));
      --v8;
    }

    while (v8);
    ++v3;
    v5 = (v5 + v6);
    v4 = (v4 + v6);
  }

  while (v3 != v2);
  return result;
}

double faiss::anonymous namespace::ReproduceWithHammingObjective::cost_update(faiss::_anonymous_namespace_::ReproduceWithHammingObjective *this, const int *a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 2);
  if (v4 < 1)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = a4;
  v7 = a3;
  v8 = a3;
  v9 = a4;
  v10 = 8 * v4 * a4;
  v11 = 8 * v4 * a3;
  result = 0.0;
  do
  {
    if (v5 == v7)
    {
      for (i = 0; i != v4; ++i)
      {
        v14 = *(*(this + 3) + v11 + 8 * i);
        v15 = vcnt_s8((a2[i] ^ a2[v7]));
        v15.i16[0] = vaddlv_u8(v15);
        v16 = (v14 - v15.u32[0]) * (v14 - v15.u32[0]);
        if (v6 == i)
        {
          v17 = v7;
        }

        else
        {
          v17 = i;
        }

        if (v7 == i)
        {
          v17 = v6;
        }

        v18 = vcnt_s8((a2[v17] ^ a2[v9]));
        v18.i16[0] = vaddlv_u8(v18);
        result = result - *(*(this + 6) + v11 + 8 * i) * v16 + *(*(this + 6) + v11 + 8 * i) * ((v14 - v18.u32[0]) * (v14 - v18.u32[0]));
      }
    }

    else if (v5 == v6)
    {
      for (j = 0; j != v4; ++j)
      {
        v20 = *(*(this + 3) + v10 + 8 * j);
        v21 = vcnt_s8((a2[j] ^ a2[v6]));
        v21.i16[0] = vaddlv_u8(v21);
        v22 = (v20 - v21.u32[0]) * (v20 - v21.u32[0]);
        if (v6 == j)
        {
          v23 = v7;
        }

        else
        {
          v23 = j;
        }

        if (v7 == j)
        {
          v23 = v6;
        }

        v24 = vcnt_s8((a2[v23] ^ a2[v8]));
        v24.i16[0] = vaddlv_u8(v24);
        result = result - *(*(this + 6) + v10 + 8 * j) * v22 + *(*(this + 6) + v10 + 8 * j) * ((v20 - v24.u32[0]) * (v20 - v24.u32[0]));
      }
    }

    else
    {
      v25 = v5 * v4 + v8;
      v26 = *(this + 3);
      v27 = *(v26 + 8 * v25);
      v28 = *(this + 6);
      v29 = *(v28 + 8 * v25);
      LODWORD(v25) = a2[v5];
      v30 = vcnt_s8((a2[v8] ^ v25));
      v30.i16[0] = vaddlv_u8(v30);
      v31 = v30.u32[0];
      v32 = vcnt_s8((a2[v9] ^ v25));
      v32.i16[0] = vaddlv_u8(v32);
      v33 = v32.u32[0];
      v34 = v5 * v4 + v9;
      result = result - v29 * ((v27 - v31) * (v27 - v31)) + v29 * ((v27 - v33) * (v27 - v33)) - *(v28 + 8 * v34) * ((*(v26 + 8 * v34) - v33) * (*(v26 + 8 * v34) - v33)) + *(v28 + 8 * v34) * ((*(v26 + 8 * v34) - v31) * (*(v26 + 8 * v34) - v31));
    }

    ++v5;
  }

  while (v5 != v4);
  return result;
}

faiss::RankingScore2 *faiss::RankingScore2::RankingScore2(faiss::RankingScore2 *this, int a2, int a3, int a4, const unsigned int *a5, const unsigned int *a6, const float *a7)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_1F55371C8;
  *(this + 10) = a2;
  *(this + 11) = a3;
  *(this + 12) = a4;
  *(this + 7) = a5;
  *(this + 8) = a6;
  *(this + 9) = a7;
  *(this + 2) = 1 << a2;
  *(this + 3) = 1 << a2;
  std::vector<float>::resize((this + 16), 1 << a2 << a2 << a2);
  faiss::RankingScore2::init_n_gt(this);
  return this;
}

void sub_1D9C2E738(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void faiss::RankingScore2::init_n_gt(faiss::RankingScore2 *this)
{
  LODWORD(v1) = *(this + 11);
  if (v1 >= 1)
  {
    v3 = 0;
    do
    {
      v5 = *(this + 8);
      v4 = *(this + 9);
      v6 = *(this + 12);
      v7 = *(*(this + 7) + 4 * v3);
      v8 = *(this + 3);
      v9 = *(this + 2);
      printf("init gt for q=%d/%d    \r", v3, v1);
      fflush(*MEMORY[0x1E69E9858]);
      std::vector<int>::vector[abi:ne200100](__p, *(this + 12));
      v10 = __p[0];
      std::vector<std::vector<int>>::vector[abi:ne200100](v42, *(this + 3));
      v11 = *(this + 12);
      if (v11 < 1)
      {
        v14 = v11;
      }

      else
      {
        v12 = 0;
        do
        {
          v10[v12] = v12;
          ++v12;
          v13 = *(this + 12);
        }

        while (v12 < v13);
        v14 = v13;
        v11 = *(this + 12);
      }

      v40 = v9;
      v41 = v8;
      v15 = &v10[v14];
      v44 = v4 + 4 * v6 * v3;
      v16 = 126 - 2 * __clz(v14);
      if (v11)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *,false>(v10, v15, &v44, v17, 1);
      if (*(this + 12) >= 1)
      {
        v18 = 0;
        do
        {
          v19 = v42[0] + 24 * *(v5 + 4 * v10[v18]);
          v21 = *(v19 + 8);
          v20 = *(v19 + 16);
          if (v21 >= v20)
          {
            v23 = *v19;
            v24 = v21 - *v19;
            v25 = v24 >> 2;
            v26 = (v24 >> 2) + 1;
            if (v26 >> 62)
            {
              std::vector<long long>::__throw_length_error[abi:ne200100]();
            }

            v27 = v20 - v23;
            if (v27 >> 1 > v26)
            {
              v26 = v27 >> 1;
            }

            v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
            v29 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v28)
            {
              v29 = v26;
            }

            if (v29)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v42[0] + 24 * *(v5 + 4 * v10[v18]), v29);
            }

            *(4 * v25) = v18;
            v22 = 4 * v25 + 4;
            memcpy(0, v23, v24);
            v30 = *v19;
            *v19 = 0;
            *(v19 + 8) = v22;
            *(v19 + 16) = 0;
            if (v30)
            {
              operator delete(v30);
            }
          }

          else
          {
            *v21 = v18;
            v22 = (v21 + 1);
          }

          *(v19 + 8) = v22;
          ++v18;
        }

        while (v18 < *(this + 12));
      }

      v31 = *(this + 3);
      if (v31 >= 1)
      {
        v32 = 0;
        v33 = v40 + 4 * (v41 * v7 * v41);
        do
        {
          if (v31 <= 0)
          {
            v39 = v31;
          }

          else
          {
            v34 = 0;
            v35 = 0;
            v36 = (v42[0] + 24 * v32);
            do
            {
              v37 = faiss::RankingScore2::accum_gt_weight_diff(this, v36, (v42[0] + v34));
              v31 = *(this + 3);
              v38 = v35 + v32 * v31;
              *&v37 = v37 + *(v33 + 4 * v38);
              *(v33 + 4 * v38) = LODWORD(v37);
              ++v35;
              v34 += 24;
            }

            while (v35 < v31);
            v39 = v31;
          }

          ++v32;
        }

        while (v32 < v39);
      }

      v45 = v42;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v45);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v3;
      v1 = *(this + 11);
    }

    while (v3 < v1);
  }
}

void sub_1D9C2EA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void faiss::RankingScore2::~RankingScore2(faiss::RankingScore2 *this)
{
  *this = &unk_1F5537228;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F5537228;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1DA73F410);
}

void faiss::Score3Computer<float,double>::~Score3Computer(void *a1)
{
  *a1 = &unk_1F5537228;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1DA73F410);
}

double faiss::RankingScore2::accum_gt_weight_diff(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1] - *a2;
  if ((v3 >> 2) < 1)
  {
    return 0.0;
  }

  v4 = 0;
  LODWORD(v5) = 0;
  v6 = *a3;
  v7 = (a3[1] - *a3) >> 2;
  v8 = (v3 >> 2) & 0x7FFFFFFF;
  result = 0.0;
  do
  {
    v10 = *(*a2 + 4 * v4);
    if (v5 < v7)
    {
      v11 = (v6 + 4 * v5);
      v12 = v7 - v5;
      while (1)
      {
        v13 = *v11++;
        if (v10 < v13)
        {
          break;
        }

        LODWORD(v5) = v5 + 1;
        if (!--v12)
        {
          v5 = (a3[1] - *a3) >> 2;
          break;
        }
      }
    }

    v14 = 0.0;
    if (v7 > v5)
    {
      v15 = v5;
      do
      {
        v14 = v14 + 1.0 / (*(v6 + 4 * v15++) - v10 + 1);
      }

      while (v7 > v15);
    }

    result = result + 1.0 / (v10 + 1) * v14;
    ++v4;
  }

  while (v4 != v8);
  return result;
}

void *std::vector<std::vector<int>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, a2);
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<int>>::clear[abi:ne200100](uint64_t *a1)
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

int *std::__introsort<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *,false>(int *result, int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v70 = *(a2 - 1);
        v63 = *v9;
        if (*(*a3 + 4 * v70) >= *(*a3 + 4 * v63))
        {
          return result;
        }

        *v9 = v70;
LABEL_102:
        *(a2 - 1) = v63;
        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v71 = v9 + 1;
      v72 = v9[1];
      v73 = v9 + 2;
      v74 = v9[2];
      v75 = *v9;
      v76 = *a3;
      v77 = *(*a3 + 4 * v72);
      v78 = *(*a3 + 4 * *v9);
      v79 = v74;
      v80 = *(*a3 + 4 * v74);
      if (v77 >= v78)
      {
        if (v80 < v77)
        {
          v81 = v72;
          *v71 = v74;
          *v73 = v72;
          v82 = v9;
          v83 = v9 + 1;
          v79 = v72;
          if (v80 < v78)
          {
            goto LABEL_104;
          }

LABEL_106:
          v87 = *(a2 - 1);
          if (*(v76 + 4 * v87) < *(v76 + 4 * v79))
          {
            *v73 = v87;
            *(a2 - 1) = v72;
            v88 = *v73;
            v89 = *v71;
            v90 = *(v76 + 4 * v88);
            if (v90 < *(v76 + 4 * v89))
            {
              v9[1] = v88;
              v9[2] = v89;
              v91 = *v9;
              if (v90 < *(v76 + 4 * v91))
              {
                *v9 = v88;
                v9[1] = v91;
              }
            }
          }

          return result;
        }
      }

      else
      {
        v81 = v75;
        if (v80 < v77)
        {
          v82 = v9;
          v83 = v9 + 2;
          v72 = *v9;
          goto LABEL_104;
        }

        *v9 = v72;
        v9[1] = v75;
        v82 = v9 + 1;
        v83 = v9 + 2;
        v72 = v75;
        if (v80 < v78)
        {
LABEL_104:
          *v82 = v74;
          *v83 = v75;
          v79 = v81;
          goto LABEL_106;
        }
      }

      v72 = v74;
      goto LABEL_106;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *,int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *a3;
    v16 = *(a2 - 1);
    v17 = *(*a3 + 4 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v9;
      v20 = *(v15 + 4 * v18);
      v21 = *(v15 + 4 * v19);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *(a2 - 1) = v18;
          v26 = *v13;
          v27 = *v9;
          if (*(v15 + 4 * v26) < *(v15 + 4 * v27))
          {
            *v9 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v9 = v16;
          goto LABEL_29;
        }

        *v9 = v18;
        *v13 = v19;
        v30 = *(a2 - 1);
        if (*(v15 + 4 * v30) < v21)
        {
          *v13 = v30;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v31 = v13 - 1;
      v32 = *(v13 - 1);
      v33 = v9[1];
      v34 = *(v15 + 4 * v32);
      v35 = *(v15 + 4 * v33);
      v36 = *(a2 - 2);
      v37 = *(v15 + 4 * v36);
      if (v34 >= v35)
      {
        if (v37 < v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v9[1];
          if (*(v15 + 4 * v38) < *(v15 + 4 * v39))
          {
            v9[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          v9[1] = v36;
          goto LABEL_43;
        }

        v9[1] = v32;
        *v31 = v33;
        v41 = *(a2 - 2);
        if (*(v15 + 4 * v41) < v35)
        {
          *v31 = v41;
LABEL_43:
          *(a2 - 2) = v33;
        }
      }

      v44 = v13[1];
      v42 = v13 + 1;
      v43 = v44;
      v45 = v9[2];
      v46 = *(v15 + 4 * v44);
      v47 = *(v15 + 4 * v45);
      v48 = *(a2 - 3);
      v49 = *(v15 + 4 * v48);
      if (v46 >= v47)
      {
        if (v49 < v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v9[2];
          if (*(v15 + 4 * v50) < *(v15 + 4 * v51))
          {
            v9[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 < v46)
        {
          v9[2] = v48;
          goto LABEL_52;
        }

        v9[2] = v43;
        *v42 = v45;
        v52 = *(a2 - 3);
        if (*(v15 + 4 * v52) < v47)
        {
          *v42 = v52;
LABEL_52:
          *(a2 - 3) = v45;
        }
      }

      v53 = *v14;
      v54 = *v31;
      v55 = *(v15 + 4 * v53);
      v56 = *(v15 + 4 * v54);
      v57 = *v42;
      v58 = *(v15 + 4 * v57);
      if (v55 >= v56)
      {
        if (v58 < v55)
        {
          *v14 = v57;
          *v42 = v53;
          v42 = v14;
          LODWORD(v53) = v54;
          if (v58 < v56)
          {
            goto LABEL_59;
          }

          LODWORD(v53) = v57;
        }
      }

      else
      {
        if (v58 >= v55)
        {
          *v31 = v53;
          *v14 = v54;
          v31 = v14;
          LODWORD(v53) = v57;
          if (v58 >= v56)
          {
            LODWORD(v53) = v54;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v31 = v57;
        *v42 = v54;
      }

LABEL_60:
      v59 = *v9;
      *v9 = v53;
      *v14 = v59;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v22 = *v9;
    v23 = *v13;
    v24 = *(v15 + 4 * v22);
    v25 = *(v15 + 4 * v23);
    if (v24 < v25)
    {
      if (v17 < v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      *v9 = v23;
      v40 = *(a2 - 1);
      if (*(v15 + 4 * v40) < v25)
      {
        *v9 = v40;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 >= v24)
    {
      goto LABEL_39;
    }

    *v9 = v16;
    *(a2 - 1) = v22;
    v28 = *v9;
    v29 = *v14;
    if (*(v15 + 4 * v28) >= *(v15 + 4 * v29))
    {
      goto LABEL_39;
    }

    *v14 = v28;
    *v9 = v29;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v15 + 4 * *(v9 - 1)) >= *(v15 + 4 * *v9))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,faiss::IndirectSort &>(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v60 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,int *,faiss::IndirectSort &>(v9, a2, a3);
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    v62 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(v9, v60, a3);
    v9 = v60 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(v60 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v60;
      if (v62)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v62)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *,false>(v8, v60, a3, -v11, a5 & 1);
      v9 = v60 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v63 = *v9;
  v64 = v9[1];
  v65 = *a3;
  v66 = *(*a3 + 4 * v64);
  v67 = *(*a3 + 4 * v63);
  v68 = *(a2 - 1);
  v69 = *(*a3 + 4 * v68);
  if (v66 < v67)
  {
    if (v69 >= v66)
    {
      *v9 = v64;
      v9[1] = v63;
      v86 = *(a2 - 1);
      if (*(v65 + 4 * v86) >= v67)
      {
        return result;
      }

      v9[1] = v86;
    }

    else
    {
      *v9 = v68;
    }

    goto LABEL_102;
  }

  if (v69 < v66)
  {
    v9[1] = v68;
    *(a2 - 1) = v64;
    v85 = *v9;
    v84 = v9[1];
    if (*(v65 + 4 * v84) < *(v65 + 4 * v85))
    {
      *v9 = v84;
      v9[1] = v85;
    }
  }

  return result;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *,0>(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *a6;
  v9 = *(*a6 + 4 * *a2);
  v10 = *(*a6 + 4 * *result);
  v11 = *a3;
  v12 = *(*a6 + 4 * *a3);
  if (v9 >= v10)
  {
    if (v12 >= v9)
    {
      v13 = v11;
      goto LABEL_13;
    }

    *a2 = v11;
    *a3 = v6;
    v14 = *a2;
    v15 = *result;
    if (*(v8 + 4 * v14) >= *(v8 + 4 * v15))
    {
      v13 = v6;
      v11 = v6;
      goto LABEL_13;
    }

    *result = v14;
    *a2 = v15;
    v11 = *a3;
    goto LABEL_11;
  }

  v13 = v7;
  if (v12 >= v9)
  {
    *result = v6;
    *a2 = v7;
    v11 = *a3;
    if (*(v8 + 4 * *a3) < v10)
    {
      *a2 = v11;
      goto LABEL_9;
    }

LABEL_11:
    v13 = v11;
    goto LABEL_13;
  }

  *result = v11;
LABEL_9:
  *a3 = v7;
  v11 = v7;
LABEL_13:
  v16 = *a4;
  if (*(v8 + 4 * v16) < *(v8 + 4 * v13))
  {
    *a3 = v16;
    *a4 = v11;
    v17 = *a3;
    v18 = *a2;
    if (*(v8 + 4 * v17) < *(v8 + 4 * v18))
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *result;
      if (*(v8 + 4 * v19) < *(v8 + 4 * v20))
      {
        *result = v19;
        *a2 = v20;
      }
    }
  }

  v21 = *a5;
  v22 = *a4;
  if (*(v8 + 4 * v21) < *(v8 + 4 * v22))
  {
    *a4 = v21;
    *a5 = v22;
    v23 = *a4;
    v24 = *a3;
    if (*(v8 + 4 * v23) < *(v8 + 4 * v24))
    {
      *a3 = v23;
      *a4 = v24;
      v25 = *a3;
      v26 = *a2;
      if (*(v8 + 4 * v25) < *(v8 + 4 * v26))
      {
        *a2 = v25;
        *a3 = v26;
        v27 = *a2;
        v28 = *result;
        if (*(v8 + 4 * v27) < *(v8 + 4 * v28))
        {
          *result = v27;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(int *result, int *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *a3;
      v6 = result;
      do
      {
        v8 = *v6;
        v7 = v6[1];
        v6 = v3;
        v9 = *(v5 + 4 * v7);
        if (v9 < *(v5 + 4 * v8))
        {
          v10 = v4;
          while (1)
          {
            *(result + v10 + 4) = v8;
            if (!v10)
            {
              break;
            }

            v8 = *(result + v10 - 4);
            v10 -= 4;
            if (v9 >= *(v5 + 4 * v8))
            {
              v11 = (result + v10 + 4);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
        }

        v3 = v6 + 1;
        v4 += 4;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(int *result, int *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3;
      do
      {
        v6 = *result;
        v5 = result[1];
        result = v3;
        v7 = *(v4 + 4 * v5);
        if (v7 < *(v4 + 4 * v6))
        {
          do
          {
            *v3 = v6;
            v6 = *(v3 - 2);
            --v3;
          }

          while (v7 < *(v4 + 4 * v6));
          *v3 = v5;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,faiss::IndirectSort &>(int *a1, int *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a3;
  v5 = *(*a3 + 4 * v3);
  if (v5 >= *(*a3 + 4 * *(a2 - 1)))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 >= *(v4 + 4 * *v6));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 >= *(v4 + 4 * v7));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 < *(v4 + 4 * v9));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 >= *(v4 + 4 * v12));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 < *(v4 + 4 * v13));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,int *,faiss::IndirectSort &>(int *a1, int *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a3;
  v6 = *(*a3 + 4 * v4);
  do
  {
    v7 = a1[++v3];
  }

  while (*(v5 + 4 * v7) < v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (*(v5 + 4 * v11) >= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (*(v5 + 4 * v10) >= v6);
  }

  if (v8 < a2)
  {
    v12 = *a2;
    v13 = v7;
    v14 = v8;
    v15 = a2;
    do
    {
      *v14 = v12;
      *v15 = v13;
      do
      {
        v16 = v14[1];
        ++v14;
        v13 = v16;
      }

      while (*(v5 + 4 * v16) < v6);
      do
      {
        v17 = *--v15;
        v12 = v17;
      }

      while (*(v5 + 4 * v17) >= v6);
    }

    while (v14 < v15);
    v9 = v14 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(int *a1, int *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *a3;
      v8 = *(*a3 + 4 * v6);
      v9 = *(*a3 + 4 * v5);
      v10 = *(a2 - 1);
      v11 = *(*a3 + 4 * v10);
      if (v8 >= v9)
      {
        if (v11 < v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v6;
          v36 = *a1;
          v35 = a1[1];
          if (*(v7 + 4 * v35) < *(v7 + 4 * v36))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v11 < v8)
      {
        *a1 = v10;
        goto LABEL_42;
      }

      *a1 = v6;
      a1[1] = v5;
      v46 = *(a2 - 1);
      if (*(v7 + 4 * v46) < v9)
      {
        a1[1] = v46;
        goto LABEL_42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    v27 = *a3;
    v28 = *(*a3 + 4 * v23);
    v29 = *(*a3 + 4 * *a1);
    v30 = v25;
    v31 = *(*a3 + 4 * v25);
    if (v28 >= v29)
    {
      if (v31 < v28)
      {
        v32 = v23;
        *v22 = v25;
        *v24 = v23;
        v33 = a1;
        v34 = a1 + 1;
        v30 = v23;
        if (v31 >= v29)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v32 = v26;
      if (v31 < v28)
      {
        v33 = a1;
        v34 = a1 + 2;
        v23 = *a1;
LABEL_44:
        *v33 = v25;
        *v34 = v26;
        v30 = v32;
LABEL_46:
        v47 = *(a2 - 1);
        if (*(v27 + 4 * v47) < *(v27 + 4 * v30))
        {
          *v24 = v47;
          *(a2 - 1) = v23;
          v48 = *v24;
          v49 = *v22;
          v50 = *(v27 + 4 * v48);
          if (v50 < *(v27 + 4 * v49))
          {
            a1[1] = v48;
            a1[2] = v49;
            v51 = *a1;
            if (v50 < *(v27 + 4 * v51))
            {
              *a1 = v48;
              a1[1] = v51;
            }
          }
        }

        return 1;
      }

      *a1 = v23;
      a1[1] = v26;
      v33 = a1 + 1;
      v34 = a1 + 2;
      v23 = v26;
      if (v31 < v29)
      {
        goto LABEL_44;
      }
    }

    v23 = v25;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) < *(*a3 + 4 * v5))
    {
      *a1 = v4;
LABEL_42:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *a3;
  v16 = *(*a3 + 4 * v14);
  v17 = *a1;
  v18 = *(*a3 + 4 * v17);
  v19 = *(*a3 + 4 * v12);
  if (v16 < v18)
  {
    v20 = a1;
    v21 = a1 + 2;
    if (v19 >= v16)
    {
      *a1 = v14;
      a1[1] = v17;
      v20 = a1 + 1;
      v21 = a1 + 2;
      if (v19 >= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v20 = v12;
    *v21 = v17;
    goto LABEL_26;
  }

  if (v19 < v16)
  {
    a1[1] = v12;
    *v13 = v14;
    v20 = a1;
    v21 = a1 + 1;
    if (v19 < v18)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 12; ; i += 4)
  {
    v40 = *v37;
    v41 = *v13;
    v42 = *(v15 + 4 * v40);
    if (v42 < *(v15 + 4 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 4;
        if (v43 == 4)
        {
          break;
        }

        v41 = *(a1 + v43 - 8);
        v43 -= 4;
        if (v42 >= *(v15 + 4 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_34;
        }
      }

      v45 = a1;
LABEL_34:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v13 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *,int *>(int *a1, int *a2, int *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(a1, a4, v8, v11--);
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
        v13 = *v12;
        v14 = *a1;
        if (*(*a4 + 4 * v13) < *(*a4 + 4 * v14))
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        v16 = *a1;
        v17 = *a4;
        v18 = a1;
        do
        {
          v19 = v18;
          v20 = &v18[v15];
          v18 = v20 + 1;
          v21 = 2 * v15;
          v15 = (2 * v15) | 1;
          v22 = v21 + 2;
          if (v22 < v8)
          {
            v24 = v20[2];
            v23 = v20 + 2;
            if (*(v17 + 4 * *(v23 - 1)) < *(v17 + 4 * v24))
            {
              v18 = v23;
              v15 = v22;
            }
          }

          *v19 = *v18;
        }

        while (v15 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v16;
        }

        else
        {
          *v18 = *v6;
          *v6 = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(a1, (v18 + 1), a4, v18 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(uint64_t result, uint64_t *a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 2)
    {
      v5 = (a4 - result) >> 1;
      v6 = v5 + 1;
      v7 = (result + 4 * (v5 + 1));
      v8 = v5 + 2;
      v9 = *a2;
      if (v8 < a3 && *(v9 + 4 * *v7) < *(v9 + 4 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *v7;
      v11 = *a4;
      v12 = *(v9 + 4 * v11);
      if (*(v9 + 4 * v10) >= v12)
      {
        do
        {
          v13 = v7;
          *a4 = v10;
          if (v4 < v6)
          {
            break;
          }

          v14 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 4 * v6);
          v15 = v14 + 2;
          if (v15 < a3 && *(v9 + 4 * *v7) < *(v9 + 4 * v7[1]))
          {
            ++v7;
            v6 = v15;
          }

          v10 = *v7;
          a4 = v13;
        }

        while (*(v9 + 4 * v10) >= v12);
        *v13 = v11;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,faiss::IndirectSort &,int *>(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 4 * v4);
    v6 = *v5;
    v9 = *(a2 - 4);
    v7 = (a2 - 4);
    v8 = v9;
    v10 = *a3;
    v11 = *(*a3 + 4 * v9);
    if (*(*a3 + 4 * v6) < v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 4 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (*(v10 + 4 * v6) < v11);
      *v12 = v8;
    }
  }

  return result;
}

double faiss::Score3Computer<float,double>::compute(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2 < 1)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = 4 * (v2 - 1);
  result = 0.0;
  do
  {
    v7 = 0;
    v8 = *(a2 + 4 * v3);
    v9 = v4;
    do
    {
      v10 = 0;
      v11 = vcnt_s8((*(a2 + 4 * v7) ^ v8));
      v11.i16[0] = vaddlv_u8(v11);
      v12 = v11.u32[0];
      do
      {
        v13 = vcnt_s8((*(a2 + v10) ^ v8));
        v13.i16[0] = vaddlv_u8(v13);
        if (v12 < v13.u32[0])
        {
          result = result + *(v9 + v10);
        }

        v10 += 4;
      }

      while (4 * v2 != v10);
      v9 += v5 + 4;
      ++v7;
    }

    while (v7 != v2);
    v4 += (v5 + 8) * (v2 - 1) + 4;
    ++v3;
  }

  while (v3 != v2);
  return result;
}

double faiss::Score3Computer<float,double>::compute_update(uint64_t a1, const float *a2, unsigned int a3, unsigned int a4)
{
  if (a3 == a4)
  {
    faiss::Score3Computer<float,double>::compute_update();
  }

  if (a3 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  if (a3 <= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  if (*(a1 + 12) < 1)
  {
    return 0.0;
  }

  v8 = 0;
  v9 = *(a1 + 16);
  v10 = 0.0;
  do
  {
    v11 = LODWORD(a2[v8]);
    if (v6 == v8)
    {
      v12 = v5;
    }

    else
    {
      v12 = v8;
    }

    if (v5 == v8)
    {
      v12 = v6;
    }

    v13 = LODWORD(a2[v12]);
    v10 = v10 + faiss::Score3Computer<float,double>::update_i_cross(a1, a2, v5, v6, LODWORD(a2[v8]), v13, v9);
    if (v13 != v11)
    {
      v10 = v10 + faiss::Score3Computer<float,double>::update_i_plane(a1, a2, v5, v6, v11, v13, v9);
    }

    v14 = *(a1 + 12);
    v9 += (v14 * v14);
    ++v8;
  }

  while (v8 < v14);
  return v10;
}

double faiss::Score3Computer<float,double>::update_i_cross(uint64_t a1, const float *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, float *a7)
{
  v7 = *(a1 + 12);
  if (v7 < 1)
  {
    return 0.0;
  }

  v14 = 0;
  v15 = a4;
  v16 = a3;
  v17 = a4;
  v18 = 0.0;
  v19 = a3;
  v44 = a4;
  v45 = a4;
  do
  {
    v20 = LODWORD(a2[v14]);
    if (v15 == v14)
    {
      v21 = v19;
    }

    else
    {
      v21 = v14;
    }

    if (v19 == v14)
    {
      v21 = v15;
    }

    v22 = LODWORD(a2[v21]);
    v23 = a2[v16];
    v24 = a2[v17];
    v25 = vcnt_s8((v22 ^ a6));
    v25.i16[0] = vaddlv_u8(v25);
    v26 = v25.u32[0];
    v27 = vcnt_s8((LODWORD(v24) ^ a6));
    v27.i16[0] = vaddlv_u8(v27);
    v28 = v27.u32[0];
    v29 = a7[v16];
    v30 = v29 + 0.0;
    if (v26 >= v28)
    {
      v30 = 0.0;
    }

    v31 = vcnt_s8((v20 ^ a5));
    v31.i16[0] = vaddlv_u8(v31);
    v32 = v31.u32[0];
    v33 = vcnt_s8((LODWORD(v23) ^ a5));
    v33.i16[0] = vaddlv_u8(v33);
    v34 = v30 - v29;
    if (v32 >= v33.u32[0])
    {
      v34 = v30;
    }

    v35 = v18 + v34;
    v36 = vcnt_s8((LODWORD(v23) ^ a6));
    v36.i16[0] = vaddlv_u8(v36);
    v37 = v36.u32[0];
    v38 = a7[v17];
    v39 = v38 + 0.0;
    if (v26 >= v37)
    {
      v39 = 0.0;
    }

    v40 = vcnt_s8((LODWORD(v24) ^ a5));
    v40.i16[0] = vaddlv_u8(v40);
    v41 = v39 - v38;
    if (v32 >= v40.u32[0])
    {
      v41 = v39;
    }

    v18 = v41 + v35;
    if (v22 != v20)
    {
      updated = faiss::Score3Computer<float,double>::update_j_line(a1, a2, a3, a4, a5, a6, v20, v22, a7);
      v15 = v44;
      v17 = v45;
      v18 = v18 + updated;
      v7 = *(a1 + 12);
    }

    a7 += v7;
    ++v14;
  }

  while (v14 < v7);
  return v18;
}

double faiss::Score3Computer<float,double>::update_i_plane(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6, uint64_t a7)
{
  v7 = *(a1 + 12);
  if (v7 < 1)
  {
    return 0.0;
  }

  v8 = 0;
  v9.i64[0] = a5;
  v9.i64[1] = a6;
  v10 = v9;
  v11 = 4 * v7;
  result = 0.0;
  do
  {
    if (v8 != a3 && v8 != a4)
    {
      v13 = 0;
      v14 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(vdupq_n_s64(*(a2 + 4 * v8)), v10)))));
      do
      {
        if (4 * a3 != v13 && 4 * a4 != v13)
        {
          v15 = *(a7 + v13);
          v16 = vmovn_s64(vcgtq_u64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(vdupq_n_s64(*(a2 + v13)), v10))))), v14));
          if (v16.i8[4])
          {
            result = result + v15;
          }

          v17 = result - v15;
          if (v16.i8[0])
          {
            result = v17;
          }
        }

        v13 += 4;
      }

      while (v11 != v13);
    }

    ++v8;
    a7 += v11;
  }

  while (v8 != v7);
  return result;
}

double faiss::Score3Computer<float,double>::update_j_line(uint64_t a1, const float *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, float *a9)
{
  v9 = *(a1 + 12);
  if (v9 < 1)
  {
    return 0.0;
  }

  v11 = veor_s8(__PAIR64__(a8, a7), __PAIR64__(a6, a5));
  v12.i64[0] = v11.i32[0];
  v12.i64[1] = v11.i32[1];
  v13 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v12))));
  v14 = a4;
  v15 = a3;
  result = 0.0;
  do
  {
    if (v15 && v14)
    {
      v17 = *a9;
      v18 = vld1_dup_f32(a2);
      v19 = veor_s8(v18, __PAIR64__(a6, a5));
      v20.i64[0] = v19.i32[0];
      v20.i64[1] = v19.i32[1];
      v21 = vmovn_s64(vcgtq_u64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v20)))), v13));
      if (v21.i8[4])
      {
        result = result + v17;
      }

      v22 = result - v17;
      if (v21.i8[0])
      {
        result = v22;
      }
    }

    --v15;
    ++a9;
    ++a2;
    --v14;
    --v9;
  }

  while (v9);
  return result;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1D9C30520(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

faiss::ProductQuantizer *faiss::ProductQuantizer::ProductQuantizer(faiss::ProductQuantizer *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  faiss::ClusteringParameters::ClusteringParameters((this + 56));
  *(this + 18) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  faiss::ProductQuantizer::set_derived_values(this);
  return this;
}

void sub_1D9C30604(_Unwind_Exception *exception_object)
{
  v3 = v1[16];
  if (v3)
  {
    v1[17] = v3;
    operator delete(v3);
  }

  v4 = v1[13];
  if (v4)
  {
    v1[14] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void faiss::ProductQuantizer::set_derived_values(faiss::ProductQuantizer *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (*this % v2)
  {
    memset(&v10, 0, sizeof(v10));
    v6 = snprintf(0, 0, "Error: '%s' failed: The dimension of the vector (d) should be a multiple of the number of subquantizers (M)", "d % M == 0");
    std::string::resize(&v10, v6 + 1, 0);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v10;
    }

    else
    {
      v7 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    snprintf(v7, size, "Error: '%s' failed: The dimension of the vector (d) should be a multiple of the number of subquantizers (M)", "d % M == 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v10, "void faiss::ProductQuantizer::set_derived_values()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/ProductQuantizer.cpp", 186);
  }

  v4 = *(this + 2);
  *(this + 3) = *this / v2;
  *(this + 4) = (v4 * v2 + 7) >> 3;
  v5 = 1 << v4;
  *(this + 5) = v5;
  std::vector<float>::resize((this + 104), v1 * v5);
  *(this + 48) = 0;
  *(this + 13) = 0;
}

void sub_1D9C30754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

faiss::ProductQuantizer *faiss::ProductQuantizer::ProductQuantizer(faiss::ProductQuantizer *this)
{
  return faiss::ProductQuantizer::ProductQuantizer(this, 0, 1, 0);
}

{
  return faiss::ProductQuantizer::ProductQuantizer(this, 0, 1, 0);
}

void faiss::ProductQuantizer::train(faiss::ProductQuantizer *this, int a2, const float *a3)
{
  v4 = *(this + 13);
  if ((v4 - 3) < 2)
  {
    v5 = *(this + 3);
    if (v5 < *(this + 2))
    {
      printf("cannot train hypercube: nbits=%zd > log2(d=%zd)\n", *(this + 2), v5);
    }

LABEL_16:
    operator new[]();
  }

  if (v4 != 2)
  {
    goto LABEL_16;
  }

  faiss::Clustering::Clustering(&v14, *(this + 6), *(this + 10), (this + 56));
  if (*(this + 48) == 1)
  {
    v15 = 1;
    puts("Training all PQ slices at once");
  }

  faiss::IndexFlat::IndexFlat(v11, *(this + 3), 1);
  v11[0] = &unk_1F5537258;
  if (*(this + 12))
  {
    v6 = *(this + 12);
  }

  else
  {
    v6 = v11;
  }

  faiss::Clustering::train(&v14, *(this + 1) * a2, a3, v6, 0);
  if (*(this + 1))
  {
    v7 = 0;
    do
    {
      v8 = *(this + 3) * *(this + 5);
      memcpy((*(this + 13) + 4 * v8 * v7++), __src, 4 * v8);
    }

    while (*(this + 1) > v7);
  }

  v11[0] = &unk_1F5538898;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  faiss::Index::~Index(v11);
  faiss::Clustering::~Clustering(&v14);
}

void sub_1D9C30E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  faiss::IndexFlatL2::~IndexFlatL2(&a18);
  faiss::Clustering::~Clustering(&a32);
  _Unwind_Resume(a1);
}

void faiss::IndexFlatL2::~IndexFlatL2(faiss::IndexFlatL2 *this)
{
  *this = &unk_1F5538898;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  faiss::Index::~Index(this);
}

{
  *this = &unk_1F5538898;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  faiss::Index::~Index(this);

  JUMPOUT(0x1DA73F410);
}

void faiss::ProductQuantizer::compute_code(uint64_t this, uint64_t a2, _BYTE *a3)
{
  v3 = *(this + 16);
  if (v3 == 16)
  {
    faiss::compute_code<faiss::PQEncoder16>(this, a2, a3);
  }

  else if (v3 == 8)
  {
    faiss::compute_code<faiss::PQEncoder8>(this, a2, a3);
  }

  else
  {
    faiss::compute_code<faiss::PQEncoderGeneric>(this, a2, a3);
  }
}

void faiss::compute_code<faiss::PQEncoder8>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  std::vector<float>::vector[abi:ne200100](__p, *(a1 + 40));
  if (*(a1 + 16) != 8)
  {
    __assert_rtn("PQEncoder8", "ProductQuantizer-inl.h", 47, "8 == nbits");
  }

  if (*(a1 + 8))
  {
    v6 = 0;
    do
    {
      faiss::fvec_L2sqr_ny(__p[0], (a2 + 4 * *(a1 + 24) * v6), (*(a1 + 104) + 4 * *(a1 + 24) * v6 * *(a1 + 40)), *(a1 + 24), *(a1 + 40));
      v7 = *(a1 + 40);
      if (v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = 1.0e20;
        do
        {
          if (*(__p[0] + v8) < v10)
          {
            v10 = *(__p[0] + v8);
            v9 = v8;
          }

          ++v8;
        }

        while (v7 != v8);
      }

      else
      {
        v9 = 0;
      }

      *a3++ = v9;
      ++v6;
    }

    while (v6 < *(a1 + 8));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1D9C31044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void faiss::compute_code<faiss::PQEncoder16>(uint64_t a1, uint64_t a2, _WORD *a3)
{
  std::vector<float>::vector[abi:ne200100](__p, *(a1 + 40));
  if (*(a1 + 16) != 16)
  {
    __assert_rtn("PQEncoder16", "ProductQuantizer-inl.h", 56, "16 == nbits");
  }

  if (*(a1 + 8))
  {
    v6 = 0;
    v7 = *(a1 + 40);
    do
    {
      faiss::fvec_L2sqr_ny(__p[0], (a2 + 4 * *(a1 + 24) * v6), (*(a1 + 104) + 4 * *(a1 + 24) * v6 * v7), *(a1 + 24), v7);
      v7 = *(a1 + 40);
      if (v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = 1.0e20;
        do
        {
          if (*(__p[0] + v8) < v10)
          {
            v10 = *(__p[0] + v8);
            v9 = v8;
          }

          ++v8;
        }

        while (v7 != v8);
      }

      else
      {
        v9 = 0;
      }

      *a3++ = v9;
      ++v6;
    }

    while (v6 < *(a1 + 8));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1D9C31178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void faiss::compute_code<faiss::PQEncoderGeneric>(void *a1, uint64_t a2, _BYTE *a3)
{
  std::vector<float>::vector[abi:ne200100](__p, a1[5]);
  v6 = a1[2];
  if (v6 > 64)
  {
    __assert_rtn("PQEncoderGeneric", "ProductQuantizer-inl.h", 15, "nbits <= 64");
  }

  if (a1[1])
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      faiss::fvec_L2sqr_ny(__p[0], (a2 + 4 * a1[3] * v7), (a1[13] + 4 * a1[3] * v7 * a1[5]), a1[3], a1[5]);
      v10 = a1[5];
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = 1.0e20;
        do
        {
          if (*(__p[0] + v11) < v13)
          {
            v13 = *(__p[0] + v11);
            v12 = v11;
          }

          ++v11;
        }

        while (v10 != v11);
      }

      else
      {
        v12 = 0;
      }

      v9 |= v12 << v8;
      if ((v6 + v8) < 8)
      {
        v8 += v6;
      }

      else
      {
        v14 = v12 >> (8 - v8);
        *a3++ = v9;
        v15 = v6 - 8 + v8;
        if (v15 >= 8)
        {
          v16 = v15 >> 3;
          do
          {
            *a3++ = v14;
            v14 >>= 8;
            --v16;
          }

          while (v16);
        }

        v8 = (v8 + v6) & 7;
        v9 = v14;
      }

      ++v7;
    }

    while (v7 < a1[1]);
    if (v8)
    {
      *a3 = v9;
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

_DWORD *faiss::ProductQuantizer::decode(_DWORD *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 2);
  if (v3 == 16)
  {
    return faiss::decode<faiss::PQDecoder16>(this, a2, a3);
  }

  if (v3 == 8)
  {
    return faiss::decode<faiss::PQDecoder8>(this, a2, a3);
  }

  return faiss::decode<faiss::PQDecoderGeneric>(this, a2, a3);
}

_DWORD *faiss::decode<faiss::PQDecoder8>(_DWORD *result, uint64_t a2, uint64_t a3)
{
  if (result[4] != 8)
  {
    faiss::decode<faiss::PQDecoder8>();
  }

  v3 = result;
  if (*(result + 1))
  {
    v6 = 0;
    do
    {
      result = memcpy((a3 + 4 * v3[3] * v6), (v3[13] + 4 * (*(a2 + v6) + v3[5] * v6) * v3[3]), 4 * v3[3]);
      ++v6;
    }

    while (v6 < v3[1]);
  }

  return result;
}

_DWORD *faiss::decode<faiss::PQDecoder16>(_DWORD *result, uint64_t a2, uint64_t a3)
{
  if (result[4] != 16)
  {
    faiss::decode<faiss::PQDecoder16>();
  }

  v3 = result;
  if (*(result + 1))
  {
    v6 = 0;
    do
    {
      result = memcpy((a3 + 4 * v3[3] * v6), (v3[13] + 4 * (*(a2 + 2 * v6) + v3[5] * v6) * v3[3]), 4 * v3[3]);
      ++v6;
    }

    while (v6 < v3[1]);
  }

  return result;
}

void *faiss::decode<faiss::PQDecoderGeneric>(void *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = result[2];
  if (v3 > 64)
  {
    faiss::decode<faiss::PQDecoderGeneric>();
  }

  v4 = result;
  if (result[1])
  {
    v7 = 0;
    LOBYTE(v8) = 0;
    LODWORD(v9) = 0;
    do
    {
      if (!v8)
      {
        LODWORD(v9) = *a2;
      }

      v10 = v9 >> v8;
      v11 = v3 + v8;
      v12 = v11 - 8;
      if (v11 < 8)
      {
        LOBYTE(v8) = v3 + v8;
      }

      else
      {
        v13 = 8 - v8;
        v14 = a2 + 1;
        if (v11 < 0x10)
        {
          ++a2;
        }

        else
        {
          v15 = v12 >> 3;
          v16 = (v12 >> 3) - 1;
          do
          {
            v17 = *v14++;
            v10 |= v17 << v13;
            v13 += 8;
            --v15;
          }

          while (v15);
          a2 += v16 + 2;
        }

        v8 = (v8 + v3) & 7;
        if (v8)
        {
          v9 = *a2;
          v10 |= v9 << v13;
        }
      }

      result = memcpy((a3 + 4 * v4[3] * v7), (v4[13] + 4 * ((v10 & ~(-1 << v3)) + v4[5] * v7) * v4[3]), 4 * v4[3]);
      ++v7;
    }

    while (v7 < v4[1]);
  }

  return result;
}

_DWORD *faiss::ProductQuantizer::decode(_DWORD *this, const unsigned __int8 *a2, float *a3, uint64_t a4)
{
  if (a4)
  {
    v7 = this;
    for (i = 0; i != a4; ++i)
    {
      this = faiss::ProductQuantizer::decode(v7, &a2[*(v7 + 32) * i], &a3[*v7 * i]);
    }
  }

  return this;
}

void *faiss::ProductQuantizer::compute_code_from_distance_table(void *this, const float *a2, unsigned __int8 *a3)
{
  v3 = this[2];
  if (v3 > 64)
  {
    faiss::ProductQuantizer::compute_code_from_distance_table();
  }

  v4 = this[1];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = this[5];
      if (v8)
      {
        v9 = 0;
        v10 = 0;
        v11 = 1.0e20;
        do
        {
          if (a2[v9] < v11)
          {
            v11 = a2[v9];
            v10 = v9;
          }

          ++v9;
        }

        while (v8 != v9);
        a2 += v8;
      }

      else
      {
        v10 = 0;
      }

      v7 |= v10 << v6;
      if ((v3 + v6) < 8)
      {
        v6 += v3;
      }

      else
      {
        v12 = v10 >> (8 - v6);
        *a3++ = v7;
        v13 = v3 - 8 + v6;
        if (v13 >= 8)
        {
          v14 = v13 >> 3;
          do
          {
            *a3++ = v12;
            v12 >>= 8;
            --v14;
          }

          while (v14);
        }

        v6 = (v6 + v3) & 7;
        v4 = this[1];
        v7 = v12;
      }

      ++v5;
    }

    while (v5 < v4);
    if (v6)
    {
      *a3 = v7;
    }
  }

  return this;
}

void *faiss::ProductQuantizer::compute_codes_with_assign_index(void *this, const float *a2, unsigned __int8 *a3)
{
  v3 = this[12];
  if (!v3 || (v4 = this, this[3] != *(v3 + 8)))
  {
    memset(&v9, 0, sizeof(v9));
    v5 = snprintf(0, 0, "Error: '%s' failed", "assign_index && assign_index->d == dsub");
    std::string::resize(&v9, v5 + 1, 0);
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }

    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v9.__r_.__value_.__l.__size_;
    }

    snprintf(v6, size, "Error: '%s' failed", "assign_index && assign_index->d == dsub");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v9, "void faiss::ProductQuantizer::compute_codes_with_assign_index(const float *, uint8_t *, size_t)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/ProductQuantizer.cpp", 424);
  }

  if (this[1])
  {
    (*(*this[12] + 64))(this[12]);
    (*(*v4[12] + 24))(v4[12]);
    operator new[]();
  }

  return this;
}

void sub_1D9C31C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __cxa_free_exception(v18);
  if (*(v19 - 81) < 0)
  {
    operator delete(*(v19 - 104));
  }

  _Unwind_Resume(a1);
}

void faiss::ProductQuantizer::compute_distance_tables(faiss::ProductQuantizer *this, uint64_t a2, const float *a3, float *a4, int32x4_t a5, int32x4_t a6, int32x4_t a7, int32x4_t a8, int32x4_t a9, int32x4_t a10, int32x4_t a11, int32x4_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, size_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int32x4_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v64 = *(this + 3);
  if (v64 == 2)
  {
    if (*(this + 2) <= 7uLL)
    {
      v65 = *this;
      v66 = *(this + 5);
      v67 = *(this + 13);

      faiss::compute_PQ_dis_tables_dsub2(v65, v66, v67, a2, a3, 0, a4, a5, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a6, a7, a8, a9, a10, a11, a12, a56, a57, a58, a59, a60);
      return;
    }

    goto LABEL_7;
  }

  if (v64 < 0x10)
  {
LABEL_7:
    if (a2)
    {
      for (i = 0; i != a2; ++i)
      {
        faiss::ProductQuantizer::compute_distance_table(this, &a3[*this * i], &a4[*(this + 5) * i * *(this + 1)]);
      }
    }

    return;
  }

  v69 = *(this + 1);
  if (v69)
  {
    for (j = 0; j < v69; ++j)
    {
      faiss::pairwise_L2sqr(*(this + 3), a2, &a3[*(this + 3) * j], *(this + 5), (*(this + 13) + 4 * *(this + 3) * j * *(this + 5)), &a4[*(this + 5) * j], *this, *(this + 3), *(this + 5) * v69, v71);
      v69 = *(this + 1);
    }
  }
}

void faiss::ProductQuantizer::compute_distance_table(faiss::ProductQuantizer *this, const float *a2, float *a3)
{
  if (*(this + 1))
  {
    v6 = 0;
    do
    {
      faiss::fvec_L2sqr_ny(&a3[*(this + 5) * v6], &a2[*(this + 3) * v6], (*(this + 13) + 4 * *(this + 5) * v6 * *(this + 3)), *(this + 3), *(this + 5));
      ++v6;
    }

    while (v6 < *(this + 1));
  }
}

uint64_t faiss::ProductQuantizer::compute_inner_prod_table(uint64_t this, const float *a2, float *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(this + 8))
  {
    v8 = this;
    v9 = 0;
    do
    {
      this = faiss::fvec_inner_products_ny(&a3[*(v8 + 40) * v9], &a2[*(v8 + 24) * v9], (*(v8 + 104) + 4 * *(v8 + 40) * v9 * *(v8 + 24)), *(v8 + 24), *(v8 + 40), a6);
      ++v9;
    }

    while (v9 < *(v8 + 8));
  }

  return this;
}

unint64_t faiss::ProductQuantizer::compute_inner_prod_tables(unint64_t this, uint64_t a2, const float *a3, float *a4, uint64_t a5, unint64_t a6, int32x4_t a7, int32x4_t a8, int32x4_t a9, int32x4_t a10, int32x4_t a11, int32x4_t a12, int32x4_t a13, int32x4_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, size_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int32x4_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = this;
  v64 = *(this + 24);
  if (v64 == 2)
  {
    if (*(this + 16) <= 7uLL)
    {
      v65 = *this;
      v66 = v63[5];
      v67 = v63[13];

      return faiss::compute_PQ_dis_tables_dsub2(v65, v66, v67, a2, a3, 1, a4, a7, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a8, a9, a10, a11, a12, a13, a14, a56, a57, a58, a59, a60);
    }

    goto LABEL_7;
  }

  if (v64 < 0x10)
  {
LABEL_7:
    if (a2)
    {
      for (i = 0; i != a2; ++i)
      {
        this = faiss::ProductQuantizer::compute_inner_prod_table(v63, &a3[*v63 * i], &a4[v63[5] * i * v63[1]], a4, a5, a6);
      }
    }

    return this;
  }

  v69 = *(this + 8);
  if (v69)
  {
    for (j = 0; j < v69; ++j)
    {
      v71 = v63[5];
      n = a2;
      v80 = v71 * v69;
      v72 = v63[3];
      lda = v72;
      m = v71;
      v73 = *v63;
      alpha = 1.0;
      ldb = v73;
      v74 = 0;
      this = sgemm_("Transposed", "Not transposed", &m, &n, &lda, &alpha, (v63[13] + 4 * v72 * j * v71), &lda, &a3[v72 * j], &ldb, &v74, &a4[v71 * j], &v80);
      v69 = v63[1];
    }
  }

  return this;
}

void sub_1D9C32AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  __cxa_free_exception(v20);
  if (*(v21 - 89) < 0)
  {
    operator delete(*(v21 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_1D9C33384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  __cxa_free_exception(v20);
  if (*(v21 - 89) < 0)
  {
    operator delete(*(v21 - 112));
  }

  _Unwind_Resume(a1);
}

void faiss::ProductQuantizer::compute_sdc_table(faiss::ProductQuantizer *this)
{
  std::vector<float>::resize((this + 128), *(this + 5) * *(this + 1) * *(this + 5));
  v2 = *(this + 1);
  if (*(this + 3) >= 4uLL)
  {
    if (v2)
    {
      v10 = 0;
      do
      {
        v11 = *(this + 5);
        v12 = *(this + 3);
        v13 = (*(this + 13) + 4 * v11 * v10 * v12);
        faiss::pairwise_L2sqr(v12, v11, v13, v11, v13, (*(this + 16) + 4 * v11 * v10++ * v11), v12, v12, v11, v14);
      }

      while (*(this + 1) > v10);
    }
  }

  else
  {
    v3 = *(this + 5);
    if (v3 * v2)
    {
      v4 = 0;
      v5 = 1;
      do
      {
        v6 = v4 / v3 * v3;
        v7 = *(this + 3);
        v8 = (*(this + 13) + 4 * v6 * v7);
        faiss::fvec_L2sqr_ny((*(this + 16) + 4 * v6 * v3 + 4 * v4 % v3 * v3), &v8[v7 * (v4 % v3)], v8, v7, v3);
        v4 = v5;
        v3 = *(this + 5);
      }

      while (v3 * *(this + 1) > v5++);
    }
  }
}

void *faiss::ProductQuantizer::search_sdc(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  if (result[5] * result[1] * result[5] != (result[17] - result[16]) >> 2)
  {
    memset(&v73, 0, sizeof(v73));
    v57 = snprintf(0, 0, "Error: '%s' failed", "sdc_table.size() == M * ksub * ksub");
    std::string::resize(&v73, v57 + 1, 0);
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v73;
    }

    else
    {
      v58 = v73.__r_.__value_.__r.__words[0];
    }

    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v73.__r_.__value_.__l.__size_;
    }

    snprintf(v58, size, "Error: '%s' failed", "sdc_table.size() == M * ksub * ksub");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v73, "void faiss::ProductQuantizer::search_sdc(const uint8_t *, size_t, const uint8_t *, const size_t, float_maxheap_array_t *, BOOL) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/ProductQuantizer.cpp", 751);
  }

  v7 = result;
  if (result[2] != 8)
  {
    memset(&v73, 0, sizeof(v73));
    v61 = snprintf(0, 0, "Error: '%s' failed", "nbits == 8");
    std::string::resize(&v73, v61 + 1, 0);
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = &v73;
    }

    else
    {
      v62 = v73.__r_.__value_.__r.__words[0];
    }

    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v63 = v73.__r_.__value_.__l.__size_;
    }

    snprintf(v62, v63, "Error: '%s' failed", "nbits == 8");
    v64 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v64, &v73, "void faiss::ProductQuantizer::search_sdc(const uint8_t *, size_t, const uint8_t *, const size_t, float_maxheap_array_t *, BOOL) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/ProductQuantizer.cpp", 752);
  }

  if (!a3)
  {
    return result;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = a6[1];
  if (v12)
  {
    v13 = a7;
  }

  else
  {
    v13 = 0;
  }

  v68 = a7;
  v66 = a3;
  v67 = a6;
  v65 = v13;
  do
  {
    v15 = a6[2];
    v14 = a6[3];
    v16 = v7[4];
    if (v13)
    {
      v17 = (v15 + v10);
      v18 = (v14 + v9);
      v19 = v12;
      do
      {
        *v18++ = 2139095039;
        *v17++ = -1;
        --v19;
      }

      while (v19);
    }

    v71 = v15;
    v72 = v14;
    v20 = (v15 + 8 * v11 * v12);
    result = (v14 + 4 * v11 * v12);
    if (!a5)
    {
      goto LABEL_33;
    }

    v21 = 0;
    v22 = v7[16];
    v23 = v7[1];
    v24 = result - 4;
    v25 = v20 - 1;
    v26 = a4;
    do
    {
      if (v23)
      {
        v27 = 0;
        v28 = v7[5];
        v29 = 0.0;
        v30 = v22;
        do
        {
          v29 = v29 + *(v30 + 4 * (*(v26 + v27) + v28 * *(a2 + v16 * v11 + v27)));
          ++v27;
          v30 += 4 * v28 * v28;
        }

        while (v23 != v27);
      }

      else
      {
        v29 = 0.0;
      }

      if (v29 >= *result)
      {
        goto LABEL_32;
      }

      if (v12 < 2)
      {
        v31 = 1;
        goto LABEL_31;
      }

      v32 = 3;
      v33 = 2;
      v34 = 1;
      while (1)
      {
        if (v33 == v12)
        {
          v35 = *&v24[4 * v12];
          goto LABEL_25;
        }

        v35 = *&v24[4 * v33];
        v36 = *&result[v33 / 2];
        if (v35 <= v36)
        {
          break;
        }

LABEL_25:
        v36 = v35;
        v37 = v20 - 1;
        v32 = v33;
        if (v35 < v29)
        {
          goto LABEL_30;
        }

LABEL_28:
        *&v24[4 * v34] = v36;
        v25[v34] = v37[v33];
        v31 = v32;
        v33 = 2 * v32;
        v32 = (2 * v32) | 1;
        v34 = v31;
        if (v33 > v12)
        {
          goto LABEL_31;
        }
      }

      v37 = v20;
      if (v36 >= v29)
      {
        goto LABEL_28;
      }

LABEL_30:
      v31 = v34;
LABEL_31:
      *&v24[4 * v31] = v29;
      v25[v31] = v21;
LABEL_32:
      v26 += v16;
      ++v21;
    }

    while (v21 != a5);
LABEL_33:
    if ((a7 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v12)
    {
      v39 = 0;
      goto LABEL_54;
    }

    v38 = 0;
    v39 = 0;
    v40 = result - 4;
    v41 = v20 - 1;
    while (2)
    {
      v42 = *result;
      v43 = *v20;
      v44 = v12 - v38;
      v45 = *&v40[4 * (v12 - v38)];
      if (v12 - v38 < 2)
      {
        v46 = 1;
        goto LABEL_49;
      }

      v47 = 3;
      v48 = 2;
      v49 = 1;
      while (2)
      {
        if (v48 == v44)
        {
          v50 = *&v40[4 * v44];
LABEL_42:
          v51 = v50;
          v52 = v20 - 1;
          v47 = v48;
          if (v45 > v50)
          {
            break;
          }

          goto LABEL_45;
        }

        v50 = *&v40[4 * v48];
        v51 = *&result[v48 / 2];
        if (v50 > v51)
        {
          goto LABEL_42;
        }

        v52 = v20;
        if (v45 <= v51)
        {
LABEL_45:
          *&v40[4 * v49] = v51;
          v41[v49] = v52[v48];
          v46 = v47;
          v48 = 2 * v47;
          v47 = (2 * v47) | 1;
          v49 = v46;
          if (v48 > v44)
          {
            goto LABEL_48;
          }

          continue;
        }

        break;
      }

      v46 = v49;
LABEL_48:
      v45 = *&v40[4 * v44];
LABEL_49:
      *&v40[4 * v46] = v45;
      v41[v46] = v41[v44];
      v53 = v12 + ~v39;
      *(result + v53) = v42;
      v20[v53] = v43;
      if (v43 != -1)
      {
        ++v39;
      }

      if (++v38 != v12)
      {
        continue;
      }

      break;
    }

LABEL_54:
    memmove(result, result + 4 * v12 + -4 * v39, 4 * v39);
    result = memmove(v20, &v20[v12 - v39], 8 * v39);
    v54 = v12 - v39;
    LOBYTE(a7) = v68;
    a3 = v66;
    a6 = v67;
    v13 = v65;
    if (v12 > v39)
    {
      v55 = v71 + 8 * v39;
      v56 = v72 + 4 * v39;
      do
      {
        *(v56 + v9) = 2139095039;
        *(v55 + v10) = -1;
        v55 += 8;
        v56 += 4;
        --v54;
      }

      while (v54);
    }

LABEL_57:
    ++v11;
    v10 += 8 * v12;
    v9 += 4 * v12;
  }

  while (v11 != a3);
  return result;
}

void sub_1D9C339C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __cxa_free_exception(v25);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::PCAMatrix::~PCAMatrix(faiss::PCAMatrix *this)
{
  *this = &unk_1F5539480;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  faiss::LinearTransform::~LinearTransform(this);
}

{
  *this = &unk_1F5539480;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  faiss::LinearTransform::~LinearTransform(this);

  JUMPOUT(0x1DA73F410);
}

void faiss::LinearTransform::~LinearTransform(faiss::LinearTransform *this)
{
  *this = &unk_1F5539448;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  faiss::LinearTransform::~LinearTransform(this);

  JUMPOUT(0x1DA73F410);
}

void faiss::Clustering::~Clustering(faiss::Clustering *this)
{
  *this = &unk_1F5537B68;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }
}

{
  faiss::Clustering::~Clustering(this);

  JUMPOUT(0x1DA73F410);
}

unsigned __int8 *faiss::pq_estimators_from_tables_M4<unsigned char,faiss::CMax<float,long long>>(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, float *a6, uint64_t a7)
{
  if (!a2)
  {
    return result;
  }

  v7 = 0;
  v8 = a6 - 1;
  v9 = a7 - 8;
  do
  {
    v10 = ((*(a3 + 4 * *result) + *(a3 + 4 * a4 + 4 * result[1])) + *(a3 + 4 * a4 + 4 * a4 + 4 * result[2])) + *(a3 + 4 * a4 + 4 * a4 + 4 * a4 + 4 * result[3]);
    if (*a6 <= v10)
    {
      goto LABEL_17;
    }

    if (a5 < 2)
    {
      v11 = 1;
      goto LABEL_16;
    }

    v12 = 3;
    v13 = 2;
    v14 = 1;
    while (1)
    {
      if (v13 == a5)
      {
        v15 = v8[a5];
        goto LABEL_10;
      }

      v15 = v8[v13];
      v16 = a6[v13];
      if (v15 <= v16)
      {
        break;
      }

LABEL_10:
      v16 = v15;
      v17 = a7 - 8;
      v12 = v13;
      if (v15 < v10)
      {
        goto LABEL_15;
      }

LABEL_13:
      v8[v14] = v16;
      *(v9 + 8 * v14) = *(v17 + 8 * v13);
      v11 = v12;
      v13 = 2 * v12;
      v12 = (2 * v12) | 1;
      v14 = v11;
      if (v13 > a5)
      {
        goto LABEL_16;
      }
    }

    v17 = a7;
    if (v16 >= v10)
    {
      goto LABEL_13;
    }

LABEL_15:
    v11 = v14;
LABEL_16:
    v8[v11] = v10;
    *(v9 + 8 * v11) = v7;
LABEL_17:
    result += 4;
    ++v7;
  }

  while (v7 != a2);
  return result;
}

uint64_t faiss::pq_estimators_from_tables_Mmul4<unsigned char,faiss::CMax<float,long long>>(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, float *a7, uint64_t a8)
{
  if (!a3)
  {
    return result;
  }

  v8 = 0;
  v9 = a7 - 1;
  v10 = a8 - 8;
  v11 = 16 * a5;
  v12 = 12 * a5;
  v13 = 8 * a5;
  v14 = 4 * a5;
  do
  {
    if (result)
    {
      v15 = 0;
      v16 = 0.0;
      v17 = a4;
      do
      {
        v18 = a2 + 4;
        v16 = v16 + (((*(v17 + 4 * *a2) + *(v17 + v14 + 4 * a2[1])) + *(v17 + v13 + 4 * a2[2])) + *(v17 + v12 + 4 * a2[3]));
        v15 += 4;
        v17 += v11;
        a2 += 4;
      }

      while (v15 < result);
      a2 = v18;
    }

    else
    {
      v16 = 0.0;
    }

    if (*a7 <= v16)
    {
      goto LABEL_22;
    }

    if (a6 < 2)
    {
      v19 = 1;
      goto LABEL_21;
    }

    v20 = 3;
    v21 = 2;
    v22 = 1;
    while (1)
    {
      if (v21 == a6)
      {
        v23 = v9[a6];
        goto LABEL_15;
      }

      v23 = v9[v21];
      v24 = a7[v21];
      if (v23 <= v24)
      {
        break;
      }

LABEL_15:
      v24 = v23;
      v25 = a8 - 8;
      v20 = v21;
      if (v23 < v16)
      {
        goto LABEL_20;
      }

LABEL_18:
      v9[v22] = v24;
      *(v10 + 8 * v22) = *(v25 + 8 * v21);
      v19 = v20;
      v21 = 2 * v20;
      v20 = (2 * v20) | 1;
      v22 = v19;
      if (v21 > a6)
      {
        goto LABEL_21;
      }
    }

    v25 = a8;
    if (v24 >= v16)
    {
      goto LABEL_18;
    }

LABEL_20:
    v19 = v22;
LABEL_21:
    v9[v19] = v16;
    *(v10 + 8 * v19) = v8;
LABEL_22:
    ++v8;
  }

  while (v8 != a3);
  return result;
}

unsigned __int16 *faiss::pq_estimators_from_tables_M4<unsigned short,faiss::CMax<float,long long>>(unsigned __int16 *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, float *a6, uint64_t a7)
{
  if (!a2)
  {
    return result;
  }

  v7 = 0;
  v8 = a6 - 1;
  v9 = a7 - 8;
  do
  {
    v10 = ((*(a3 + 4 * *result) + *(a3 + 4 * a4 + 4 * result[1])) + *(a3 + 4 * a4 + 4 * a4 + 4 * result[2])) + *(a3 + 4 * a4 + 4 * a4 + 4 * a4 + 4 * result[3]);
    if (*a6 <= v10)
    {
      goto LABEL_17;
    }

    if (a5 < 2)
    {
      v11 = 1;
      goto LABEL_16;
    }

    v12 = 3;
    v13 = 2;
    v14 = 1;
    while (1)
    {
      if (v13 == a5)
      {
        v15 = v8[a5];
        goto LABEL_10;
      }

      v15 = v8[v13];
      v16 = a6[v13];
      if (v15 <= v16)
      {
        break;
      }

LABEL_10:
      v16 = v15;
      v17 = a7 - 8;
      v12 = v13;
      if (v15 < v10)
      {
        goto LABEL_15;
      }

LABEL_13:
      v8[v14] = v16;
      *(v9 + 8 * v14) = *(v17 + 8 * v13);
      v11 = v12;
      v13 = 2 * v12;
      v12 = (2 * v12) | 1;
      v14 = v11;
      if (v13 > a5)
      {
        goto LABEL_16;
      }
    }

    v17 = a7;
    if (v16 >= v10)
    {
      goto LABEL_13;
    }

LABEL_15:
    v11 = v14;
LABEL_16:
    v8[v11] = v10;
    *(v9 + 8 * v11) = v7;
LABEL_17:
    result += 4;
    ++v7;
  }

  while (v7 != a2);
  return result;
}

uint64_t faiss::pq_estimators_from_tables_Mmul4<unsigned short,faiss::CMax<float,long long>>(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, float *a7, uint64_t a8)
{
  if (!a3)
  {
    return result;
  }

  v8 = 0;
  v9 = a7 - 1;
  v10 = a8 - 8;
  v11 = 16 * a5;
  v12 = 12 * a5;
  v13 = 8 * a5;
  v14 = 4 * a5;
  do
  {
    if (result)
    {
      v15 = 0;
      v16 = 0.0;
      v17 = a4;
      do
      {
        v18 = a2 + 4;
        v16 = v16 + (((*(v17 + 4 * *a2) + *(v17 + v14 + 4 * a2[1])) + *(v17 + v13 + 4 * a2[2])) + *(v17 + v12 + 4 * a2[3]));
        v15 += 4;
        v17 += v11;
        a2 += 4;
      }

      while (v15 < result);
      a2 = v18;
    }

    else
    {
      v16 = 0.0;
    }

    if (*a7 <= v16)
    {
      goto LABEL_22;
    }

    if (a6 < 2)
    {
      v19 = 1;
      goto LABEL_21;
    }

    v20 = 3;
    v21 = 2;
    v22 = 1;
    while (1)
    {
      if (v21 == a6)
      {
        v23 = v9[a6];
        goto LABEL_15;
      }

      v23 = v9[v21];
      v24 = a7[v21];
      if (v23 <= v24)
      {
        break;
      }

LABEL_15:
      v24 = v23;
      v25 = a8 - 8;
      v20 = v21;
      if (v23 < v16)
      {
        goto LABEL_20;
      }

LABEL_18:
      v9[v22] = v24;
      *(v10 + 8 * v22) = *(v25 + 8 * v21);
      v19 = v20;
      v21 = 2 * v20;
      v20 = (2 * v20) | 1;
      v22 = v19;
      if (v21 > a6)
      {
        goto LABEL_21;
      }
    }

    v25 = a8;
    if (v24 >= v16)
    {
      goto LABEL_18;
    }

LABEL_20:
    v19 = v22;
LABEL_21:
    v9[v19] = v16;
    *(v10 + 8 * v19) = v8;
LABEL_22:
    ++v8;
  }

  while (v8 != a3);
  return result;
}

unsigned __int8 *faiss::pq_estimators_from_tables_M4<unsigned char,faiss::CMin<float,long long>>(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, float *a6, uint64_t a7)
{
  if (!a2)
  {
    return result;
  }

  v7 = 0;
  v8 = a6 - 1;
  v9 = a7 - 8;
  do
  {
    v10 = ((*(a3 + 4 * *result) + *(a3 + 4 * a4 + 4 * result[1])) + *(a3 + 4 * a4 + 4 * a4 + 4 * result[2])) + *(a3 + 4 * a4 + 4 * a4 + 4 * a4 + 4 * result[3]);
    if (*a6 >= v10)
    {
      goto LABEL_17;
    }

    if (a5 < 2)
    {
      v11 = 1;
      goto LABEL_16;
    }

    v12 = 3;
    v13 = 2;
    v14 = 1;
    while (1)
    {
      if (v13 == a5)
      {
        v15 = v8[a5];
        goto LABEL_10;
      }

      v15 = v8[v13];
      v16 = a6[v13];
      if (v15 >= v16)
      {
        break;
      }

LABEL_10:
      v16 = v15;
      v17 = a7 - 8;
      v12 = v13;
      if (v15 > v10)
      {
        goto LABEL_15;
      }

LABEL_13:
      v8[v14] = v16;
      *(v9 + 8 * v14) = *(v17 + 8 * v13);
      v11 = v12;
      v13 = 2 * v12;
      v12 = (2 * v12) | 1;
      v14 = v11;
      if (v13 > a5)
      {
        goto LABEL_16;
      }
    }

    v17 = a7;
    if (v16 <= v10)
    {
      goto LABEL_13;
    }

LABEL_15:
    v11 = v14;
LABEL_16:
    v8[v11] = v10;
    *(v9 + 8 * v11) = v7;
LABEL_17:
    result += 4;
    ++v7;
  }

  while (v7 != a2);
  return result;
}

uint64_t faiss::pq_estimators_from_tables_Mmul4<unsigned char,faiss::CMin<float,long long>>(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, float *a7, uint64_t a8)
{
  if (!a3)
  {
    return result;
  }

  v8 = 0;
  v9 = a7 - 1;
  v10 = a8 - 8;
  v11 = 16 * a5;
  v12 = 12 * a5;
  v13 = 8 * a5;
  v14 = 4 * a5;
  do
  {
    if (result)
    {
      v15 = 0;
      v16 = 0.0;
      v17 = a4;
      do
      {
        v18 = a2 + 4;
        v16 = v16 + (((*(v17 + 4 * *a2) + *(v17 + v14 + 4 * a2[1])) + *(v17 + v13 + 4 * a2[2])) + *(v17 + v12 + 4 * a2[3]));
        v15 += 4;
        v17 += v11;
        a2 += 4;
      }

      while (v15 < result);
      a2 = v18;
    }

    else
    {
      v16 = 0.0;
    }

    if (*a7 >= v16)
    {
      goto LABEL_22;
    }

    if (a6 < 2)
    {
      v19 = 1;
      goto LABEL_21;
    }

    v20 = 3;
    v21 = 2;
    v22 = 1;
    while (1)
    {
      if (v21 == a6)
      {
        v23 = v9[a6];
        goto LABEL_15;
      }

      v23 = v9[v21];
      v24 = a7[v21];
      if (v23 >= v24)
      {
        break;
      }

LABEL_15:
      v24 = v23;
      v25 = a8 - 8;
      v20 = v21;
      if (v23 > v16)
      {
        goto LABEL_20;
      }

LABEL_18:
      v9[v22] = v24;
      *(v10 + 8 * v22) = *(v25 + 8 * v21);
      v19 = v20;
      v21 = 2 * v20;
      v20 = (2 * v20) | 1;
      v22 = v19;
      if (v21 > a6)
      {
        goto LABEL_21;
      }
    }

    v25 = a8;
    if (v24 <= v16)
    {
      goto LABEL_18;
    }

LABEL_20:
    v19 = v22;
LABEL_21:
    v9[v19] = v16;
    *(v10 + 8 * v19) = v8;
LABEL_22:
    ++v8;
  }

  while (v8 != a3);
  return result;
}

unsigned __int16 *faiss::pq_estimators_from_tables_M4<unsigned short,faiss::CMin<float,long long>>(unsigned __int16 *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, float *a6, uint64_t a7)
{
  if (!a2)
  {
    return result;
  }

  v7 = 0;
  v8 = a6 - 1;
  v9 = a7 - 8;
  do
  {
    v10 = ((*(a3 + 4 * *result) + *(a3 + 4 * a4 + 4 * result[1])) + *(a3 + 4 * a4 + 4 * a4 + 4 * result[2])) + *(a3 + 4 * a4 + 4 * a4 + 4 * a4 + 4 * result[3]);
    if (*a6 >= v10)
    {
      goto LABEL_17;
    }

    if (a5 < 2)
    {
      v11 = 1;
      goto LABEL_16;
    }

    v12 = 3;
    v13 = 2;
    v14 = 1;
    while (1)
    {
      if (v13 == a5)
      {
        v15 = v8[a5];
        goto LABEL_10;
      }

      v15 = v8[v13];
      v16 = a6[v13];
      if (v15 >= v16)
      {
        break;
      }

LABEL_10:
      v16 = v15;
      v17 = a7 - 8;
      v12 = v13;
      if (v15 > v10)
      {
        goto LABEL_15;
      }

LABEL_13:
      v8[v14] = v16;
      *(v9 + 8 * v14) = *(v17 + 8 * v13);
      v11 = v12;
      v13 = 2 * v12;
      v12 = (2 * v12) | 1;
      v14 = v11;
      if (v13 > a5)
      {
        goto LABEL_16;
      }
    }

    v17 = a7;
    if (v16 <= v10)
    {
      goto LABEL_13;
    }

LABEL_15:
    v11 = v14;
LABEL_16:
    v8[v11] = v10;
    *(v9 + 8 * v11) = v7;
LABEL_17:
    result += 4;
    ++v7;
  }

  while (v7 != a2);
  return result;
}

uint64_t faiss::pq_estimators_from_tables_Mmul4<unsigned short,faiss::CMin<float,long long>>(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, float *a7, uint64_t a8)
{
  if (!a3)
  {
    return result;
  }

  v8 = 0;
  v9 = a7 - 1;
  v10 = a8 - 8;
  v11 = 16 * a5;
  v12 = 12 * a5;
  v13 = 8 * a5;
  v14 = 4 * a5;
  do
  {
    if (result)
    {
      v15 = 0;
      v16 = 0.0;
      v17 = a4;
      do
      {
        v18 = a2 + 4;
        v16 = v16 + (((*(v17 + 4 * *a2) + *(v17 + v14 + 4 * a2[1])) + *(v17 + v13 + 4 * a2[2])) + *(v17 + v12 + 4 * a2[3]));
        v15 += 4;
        v17 += v11;
        a2 += 4;
      }

      while (v15 < result);
      a2 = v18;
    }

    else
    {
      v16 = 0.0;
    }

    if (*a7 >= v16)
    {
      goto LABEL_22;
    }

    if (a6 < 2)
    {
      v19 = 1;
      goto LABEL_21;
    }

    v20 = 3;
    v21 = 2;
    v22 = 1;
    while (1)
    {
      if (v21 == a6)
      {
        v23 = v9[a6];
        goto LABEL_15;
      }

      v23 = v9[v21];
      v24 = a7[v21];
      if (v23 >= v24)
      {
        break;
      }

LABEL_15:
      v24 = v23;
      v25 = a8 - 8;
      v20 = v21;
      if (v23 > v16)
      {
        goto LABEL_20;
      }

LABEL_18:
      v9[v22] = v24;
      *(v10 + 8 * v22) = *(v25 + 8 * v21);
      v19 = v20;
      v21 = 2 * v20;
      v20 = (2 * v20) | 1;
      v22 = v19;
      if (v21 > a6)
      {
        goto LABEL_21;
      }
    }

    v25 = a8;
    if (v24 <= v16)
    {
      goto LABEL_18;
    }

LABEL_20:
    v19 = v22;
LABEL_21:
    v9[v19] = v16;
    *(v10 + 8 * v19) = v8;
LABEL_22:
    ++v8;
  }

  while (v8 != a3);
  return result;
}

float faiss::fvec_L2sqr_ref(faiss *this, float *a2, const float *a3)
{
  for (result = 0.0; a3; a3 = (a3 - 1))
  {
    v4 = *this;
    this = (this + 4);
    v5 = v4;
    v6 = *a2++;
    result = result + ((v5 - v6) * (v5 - v6));
  }

  return result;
}

float faiss::fvec_L1_ref(faiss *this, float *a2, const float *a3)
{
  for (result = 0.0; a3; a3 = (a3 - 1))
  {
    v4 = *this;
    this = (this + 4);
    v5 = v4;
    v6 = *a2++;
    result = result + vabds_f32(v5, v6);
  }

  return result;
}

float faiss::fvec_Linf_ref(faiss *this, float *a2, const float *a3)
{
  for (result = 0.0; a3; a3 = (a3 - 1))
  {
    v4 = *this;
    this = (this + 4);
    v5 = v4;
    v6 = *a2++;
    result = fmaxf(result, vabds_f32(v5, v6));
  }

  return result;
}

float faiss::fvec_inner_product_ref(faiss *this, float *a2, const float *a3)
{
  for (result = 0.0; a3; a3 = (a3 - 1))
  {
    v4 = *this;
    this = (this + 4);
    v5 = v4;
    v6 = *a2++;
    result = result + (v5 * v6);
  }

  return result;
}

double faiss::fvec_norm_L2sqr_ref(faiss *this, const float *a2)
{
  if (!a2)
  {
    return 0.0;
  }

  result = 0.0;
  do
  {
    v3 = *this;
    this = (this + 4);
    result = result + (v3 * v3);
    a2 = (a2 - 1);
  }

  while (a2);
  *&result = result;
  return result;
}

void faiss::fvec_L2sqr_ny_ref(faiss *this, faiss *a2, const float *a3, unint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v5 = a5;
    v10 = 4 * a4;
    do
    {
      *this = faiss::fvec_L2sqr(a2, a3, a4);
      this = (this + 4);
      a3 = (a3 + v10);
      --v5;
    }

    while (v5);
  }
}

float faiss::fvec_L2sqr(faiss *this, const float *a2, unint64_t a3)
{
  v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
  if ((a3 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v4 = 0;
    v5 = 0uLL;
    v6 = this;
    v7 = a2;
    do
    {
      v8 = *v6;
      v6 = (v6 + 16);
      v9 = v8;
      v10 = *v7;
      v7 += 4;
      v11 = vsubq_f32(v9, v10);
      v5 = vmlaq_f32(v5, v11, v11);
      v4 += 4;
    }

    while (v4 < v3);
    v12 = ((v3 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  else
  {
    v12 = 0;
    v5 = 0uLL;
  }

  result = vaddv_f32(*&vpaddq_f32(v5, v5));
  v14 = (a3 - v12);
  if (a3 > v12)
  {
    v15 = &a2[v12];
    v16 = (this + 4 * v12);
    do
    {
      v17 = *v16++;
      v18 = v17;
      v19 = *v15++;
      result = result + ((v18 - v19) * (v18 - v19));
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t faiss::fvec_inner_products_ny_ref(uint64_t this, float *a2, const float *a3, unint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v7 = 0;
      if (v6)
      {
        v8 = 0;
        v9 = 0uLL;
        do
        {
          v9 = vmlaq_f32(v9, *(a3 + v7), *(a2 + v7));
          v8 += 4;
          v7 += 16;
        }

        while (v8 < v6);
        v7 = (((a4 & 0xFFFFFFFFFFFFFFFCLL) - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
      }

      else
      {
        v9 = 0uLL;
      }

      v10 = vaddv_f32(*&vpaddq_f32(v9, v9));
      if (v7 < a4)
      {
        do
        {
          v10 = v10 + (a2[v7] * a3[v7]);
          ++v7;
        }

        while (a4 != v7);
      }

      *(this + 4 * v5++) = v10;
      a3 += a4;
    }

    while (v5 != a5);
  }

  return this;
}

float faiss::fvec_inner_product(faiss *this, const float *a2, unint64_t a3)
{
  v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
  if ((a3 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v4 = 0;
    v5 = 0uLL;
    v6 = this;
    v7 = a2;
    do
    {
      v8 = *v6;
      v6 = (v6 + 16);
      v9 = v8;
      v10 = *v7;
      v7 += 4;
      v5 = vmlaq_f32(v5, v10, v9);
      v4 += 4;
    }

    while (v4 < v3);
    v11 = ((v3 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  else
  {
    v11 = 0;
    v5 = 0uLL;
  }

  result = vaddv_f32(*&vpaddq_f32(v5, v5));
  v13 = (a3 - v11);
  if (a3 > v11)
  {
    v14 = &a2[v11];
    v15 = (this + 4 * v11);
    do
    {
      v16 = *v15++;
      v17 = v16;
      v18 = *v14++;
      result = result + (v17 * v18);
      --v13;
    }

    while (v13);
  }

  return result;
}

float faiss::fvec_norm_L2sqr(faiss *this, unint64_t a2)
{
  v2 = 0;
  v3 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v4 = 0uLL;
    v5 = this;
    do
    {
      v6 = *v5;
      v5 = (v5 + 16);
      v4 = vmlaq_f32(v4, v6, v6);
      v2 += 4;
    }

    while (v2 < v3);
    v2 = ((v3 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  else
  {
    v4 = 0uLL;
  }

  result = vaddv_f32(*&vpaddq_f32(v4, v4));
  v8 = (a2 - v2);
  if (a2 > v2)
  {
    v9 = (this + 4 * v2);
    do
    {
      v10 = *v9++;
      result = result + (v10 * v10);
      --v8;
    }

    while (v8);
  }

  return result;
}

void faiss::fvec_L2sqr_ny(faiss *this, faiss *a2, const float *a3, unint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v5 = a5;
    v10 = 4 * a4;
    do
    {
      *this = faiss::fvec_L2sqr(a2, a3, a4);
      this = (this + 4);
      a3 = (a3 + v10);
      --v5;
    }

    while (v5);
  }
}

float faiss::fvec_L1(faiss *this, float *a2, const float *a3)
{
  for (result = 0.0; a3; a3 = (a3 - 1))
  {
    v4 = *this;
    this = (this + 4);
    v5 = v4;
    v6 = *a2++;
    result = result + vabds_f32(v5, v6);
  }

  return result;
}

float faiss::fvec_Linf(faiss *this, float *a2, const float *a3)
{
  for (result = 0.0; a3; a3 = (a3 - 1))
  {
    v4 = *this;
    this = (this + 4);
    v5 = v4;
    v6 = *a2++;
    result = fmaxf(result, vabds_f32(v5, v6));
  }

  return result;
}

uint64_t faiss::fvec_madd(uint64_t this, float *a2, float *a3, float a4, float *a5, float *a6)
{
  for (; this; --this)
  {
    v6 = *a2++;
    v7 = v6;
    v8 = *a3++;
    *a5++ = v7 + (a4 * v8);
  }

  return this;
}

uint64_t faiss::fvec_madd_and_argmin(uint64_t this, uint64_t a2, const float *a3, float a4, const float *a5, float *a6)
{
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = this;
  v7 = 0;
  LODWORD(this) = -1;
  v8 = 1.0e20;
  do
  {
    v9 = *(a2 + 4 * v7) + (a4 * a3[v7]);
    a5[v7] = v9;
    if (v9 >= v8)
    {
      this = this;
    }

    else
    {
      v8 = v9;
      this = v7;
    }

    ++v7;
  }

  while (v6 != v7);
  return this;
}

unint64_t faiss::compute_PQ_dis_tables_dsub2(unint64_t result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int32x4_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, size_t __na, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int32x4_t __dst, int32x4_t a50, int32x4_t a51, int32x4_t a52, int32x4_t a53, int32x4_t a54, int32x4_t a55, int32x4_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  a60 = *MEMORY[0x1E69E9840];
  if ((a2 & 7) != 0)
  {
    a18 = 0uLL;
    a19 = 0;
    v111 = snprintf(0, 0, "Error: '%s' failed", "ksub % 8 == 0");
    std::string::resize(&a18, v111 + 1, 0);
    if (a19 >= 0)
    {
      v112 = &a18;
    }

    else
    {
      v112 = a18;
    }

    if (a19 >= 0)
    {
      v113 = HIBYTE(a19);
    }

    else
    {
      v113 = *(&a18 + 1);
    }

    snprintf(v112, v113, "Error: '%s' failed", "ksub % 8 == 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &a18, "void faiss::compute_PQ_dis_tables_dsub2(size_t, size_t, const float *, size_t, const float *, BOOL, float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/distances_simd.cpp", 931);
  }

  if (result >= 2)
  {
    v118 = 0;
    v62 = 0;
    v63 = result >> 1;
    vars8 = 12 * a2;
    v125 = result;
    v64 = 8 * a2;
    v116 = 32 * a2;
    v65 = 4;
    v126 = a2;
    while (1)
    {
      v117 = v65;
      v66 = v65 >= v63 ? v63 : v65;
      v67 = v62 + 4;
      if (a2)
      {
        break;
      }

LABEL_41:
      v65 = v117 + 4;
      v118 -= 4;
      a3 = (a3 + v116);
      v62 = v67;
      if (v67 >= v63)
      {
        return result;
      }
    }

    vars0 = 0;
    v68 = v118 + v66;
    if (v67 >= v63)
    {
      v69 = v63;
    }

    else
    {
      v69 = v62 + 4;
    }

    v70 = v69;
    v71 = a5 + 8 * v62;
    v131 = v69 - v62;
    __n = 8 * ((v69 - v62) & 0x7FFFFFFF);
    v129 = v71;
    v72 = v69 - v62;
    v73 = a3;
    v121 = v69;
    v130 = v69;
    v127 = v62;
    while (1)
    {
      v74 = 0;
      v75 = v73;
      do
      {
        if (v62 < v69)
        {
          v76 = 0;
          v77 = v75;
          do
          {
            __dst.i64[v76++] = *v77;
            v77 = (v77 + v64);
          }

          while (v68 != v76);
          a8 = __dst;
        }

        v78 = a50;
        v79 = (&a18 + 2 * v74);
        *v79 = a8;
        v79[1] = v78;
        ++v74;
        ++v75;
      }

      while (v74 != 8);
      v122 = v73;
      if (a4)
      {
        break;
      }

LABEL_40:
      v73 = v122 + 8;
      vars0 += 8;
      LODWORD(v69) = v121;
      if (vars0 >= a2)
      {
        goto LABEL_41;
      }
    }

    v80 = 0;
    v81 = a7 + 4 * vars0;
    while (1)
    {
      if (v70 == v67)
      {
        v82 = (v71 + 4 * v80 * result);
        v84 = *v82;
        v83 = v82[1];
      }

      else
      {
        v83 = 0uLL;
        __dst = 0u;
        a50 = 0u;
        if (v131 < 1)
        {
          v84 = 0uLL;
        }

        else
        {
          memcpy(&__dst, (v71 + 4 * v80 * result), __n);
          v70 = v130;
          v81 = a7 + 4 * vars0;
          v71 = v129;
          a2 = v126;
          v62 = v127;
          result = v125;
          v84 = __dst;
          v83 = a50;
        }
      }

      v85 = (v81 + 4 * (v62 + v80 * v63) * a2);
      v86 = 0;
      v87 = &a21;
      if (a6)
      {
        do
        {
          v88 = vmulq_f32(v84, v87[-2]);
          v89 = vmulq_f32(v83, v87[-1]);
          v90 = *v87;
          v91 = v87[1];
          v87 += 4;
          v92 = &__dst.i8[v86];
          *v92 = vpaddq_f32(v88, vmulq_f32(v84, v90));
          v92[1] = vpaddq_f32(v89, vmulq_f32(v83, v91));
          v86 += 32;
        }

        while (v86 != 128);
      }

      else
      {
        do
        {
          v93 = vsubq_f32(v84, v87[-2]);
          v94 = vsubq_f32(v83, v87[-1]);
          v95 = *v87;
          v96 = v87[1];
          v87 += 4;
          v97 = vsubq_f32(v84, v95);
          v98 = vsubq_f32(v83, v96);
          v99 = &__dst.i8[v86];
          *v99 = vpaddq_f32(vmulq_f32(v93, v93), vmulq_f32(v97, v97));
          v99[1] = vpaddq_f32(vmulq_f32(v94, v94), vmulq_f32(v98, v98));
          v86 += 32;
        }

        while (v86 != 128);
      }

      a8 = __dst;
      v100 = a51;
      v101 = a53;
      v102 = a55;
      if (v72 <= 2)
      {
        break;
      }

      v103 = a50;
      v104 = a52;
      v105 = a54;
      v106 = a56;
      if (v72 == 3)
      {
        goto LABEL_36;
      }

      if (v72 == 4)
      {
        v107 = vuzp2q_s32(a54, a56);
        v108 = (v85 + vars8);
        *v108 = vuzp2q_s32(a50, a52);
        v108[1] = v107;
LABEL_36:
        v109 = (v85 + v64);
        *v109 = vuzp1q_s32(v103, v104);
        v109[1] = vuzp1q_s32(v105, v106);
LABEL_37:
        v110 = (v85 + 4 * a2);
        *v110 = vuzp2q_s32(a8, v100);
        v110[1] = vuzp2q_s32(v101, v102);
LABEL_38:
        a8 = vuzp1q_s32(a8, v100);
        *v85 = a8;
        v85[1] = vuzp1q_s32(v101, v102);
      }

LABEL_39:
      if (++v80 == a4)
      {
        goto LABEL_40;
      }
    }

    if (v72 != 1)
    {
      if (v72 != 2)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    goto LABEL_38;
  }

  return result;
}

void sub_1D9C34E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  __cxa_free_exception(v34);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *faiss::InvertedLists::InvertedLists(void *this, uint64_t a2, uint64_t a3)
{
  *this = &unk_1F5537318;
  this[1] = a2;
  this[2] = a3;
  return this;
}

uint64_t faiss::InvertedLists::get_single_id(faiss::InvertedLists *this, uint64_t a2, unint64_t a3)
{
  if ((**this)(this) <= a3)
  {
    faiss::InvertedLists::get_single_id();
  }

  return *((*(*this + 16))(this, a2) + 8 * a3);
}

unint64_t faiss::InvertedLists::get_single_code(faiss::InvertedLists *this, uint64_t a2, unint64_t a3)
{
  if ((**this)(this) <= a3)
  {
    faiss::InvertedLists::get_single_code();
  }

  return (*(*this + 8))(this, a2) + *(this + 2) * a3;
}

void *faiss::InvertedLists::reset(void *this)
{
  if (this[1])
  {
    v1 = this;
    v2 = 0;
    do
    {
      this = (*(*v1 + 96))(v1, v2++, 0);
    }

    while (v2 < v1[1]);
  }

  return this;
}

void faiss::InvertedLists::merge_from(faiss::InvertedLists *this, faiss::InvertedLists *a2, uint64_t a3)
{
  if (*(this + 1))
  {
    v6 = 0;
    do
    {
      v7 = (**a2)(a2, v6);
      v21 = a2;
      v8 = (*(*a2 + 16))(a2, v6);
      v22 = v8;
      v23 = v6;
      if (a3)
      {
        std::vector<long long>::vector[abi:ne200100](&__p, v7);
        v9 = __p;
        if (v7)
        {
          v10 = v22;
          v11 = __p;
          v12 = v7;
          do
          {
            v13 = *v10++;
            *v11++ = v13 + a3;
            --v12;
          }

          while (v12);
        }

        v15 = a2;
        v16 = (*(*a2 + 8))(a2, v6);
        v17 = v6;
        (*(*this + 72))(this, v6, v7, v9, v16);
        faiss::InvertedLists::ScopedCodes::~ScopedCodes(&v15);
        if (__p)
        {
          v19 = __p;
          operator delete(__p);
        }
      }

      else
      {
        v14 = v8;
        __p = a2;
        v19 = (*(*a2 + 8))(a2, v6);
        v20 = v6;
        (*(*this + 72))(this, v6, v7, v14, v19);
        faiss::InvertedLists::ScopedCodes::~ScopedCodes(&__p);
      }

      (*(*a2 + 96))(a2, v6, 0);
      faiss::InvertedLists::ScopedIds::~ScopedIds(&v21);
      ++v6;
    }

    while (v6 < *(this + 1));
  }
}

void sub_1D9C352CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  faiss::InvertedLists::ScopedCodes::~ScopedCodes(&__p);
  faiss::InvertedLists::ScopedIds::~ScopedIds(&a16);
  _Unwind_Resume(a1);
}

double faiss::InvertedLists::imbalance_factor(faiss::InvertedLists *this)
{
  std::vector<int>::vector[abi:ne200100](__p, *(this + 1));
  if (*(this + 1))
  {
    v3 = 0;
    do
    {
      v4 = (**this)(this, v3);
      v5 = __p[0];
      *(__p[0] + v3++) = v4;
      v6 = *(this + 1);
    }

    while (v3 < v6);
  }

  else
  {
    v6 = 0;
    v5 = __p[0];
  }

  v7 = faiss::imbalance_factor(v6, v5, v2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v7;
}

void sub_1D9C353D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void faiss::InvertedLists::print_stats(faiss::InvertedLists *this)
{
  std::vector<int>::vector[abi:ne200100](&v8, 0x28uLL);
  v2 = v8;
  if (*(this + 1))
  {
    v3 = 0;
    do
    {
      if (v9 != v2)
      {
        v4 = 0;
        while ((**this)(this, v3) >> v4)
        {
          ++v4;
          v2 = v8;
          if (v4 >= (v9 - v8) >> 2)
          {
            goto LABEL_9;
          }
        }

        v2 = v8;
        ++v8[v4];
      }

LABEL_9:
      ++v3;
    }

    while (v3 < *(this + 1));
  }

  v5 = v9;
  if (v9 != v2)
  {
    v6 = 0;
    do
    {
      v7 = v2[v6];
      if (v7)
      {
        printf("list size in < %d: %d instances\n", 1 << v6, v7);
        v2 = v8;
        v5 = v9;
      }

      ++v6;
    }

    while (v6 < (v5 - v2) >> 2);
  }

  if (v2)
  {
    v9 = v2;
    operator delete(v2);
  }
}

void sub_1D9C35510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t faiss::InvertedLists::compute_ntotal(faiss::InvertedLists *this)
{
  if (!*(this + 1))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v3 += (**this)(this, v2++);
  }

  while (v2 < *(this + 1));
  return v3;
}

faiss::ArrayInvertedLists *faiss::ArrayInvertedLists::ArrayInvertedLists(faiss::ArrayInvertedLists *this, unint64_t a2, uint64_t a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F55373A8;
  *(this + 24) = 0u;
  v5 = (this + 24);
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  std::vector<std::vector<long long>>::resize(this + 6, a2);
  std::vector<std::vector<long long>>::resize(v5, a2);
  return this;
}

void sub_1D9C35634(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<long long>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<long long>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t faiss::ArrayInvertedLists::add_entries(faiss::ArrayInvertedLists *this, unint64_t a2, uint64_t a3, const uint64_t *a4, const unsigned __int8 *a5)
{
  if (!a3)
  {
    return 0;
  }

  if (*(this + 1) <= a2)
  {
    faiss::ArrayInvertedLists::add_entries();
  }

  v10 = (*(this + 6) + 24 * a2);
  v11 = v10[1] - *v10;
  v12 = v11 >> 3;
  v13 = a3 + (v11 >> 3);
  std::vector<long long>::resize(v10, v13);
  memcpy((*(*(this + 6) + 24 * a2) + v11), a4, 8 * a3);
  v14 = *(this + 2);
  v15 = *(this + 3) + 24 * a2;
  v16 = *v15;
  v17 = *(v15 + 8) - *v15;
  if (v14 * v13 <= v17)
  {
    if (v14 * v13 < v17)
    {
      *(v15 + 8) = &v16[v14 * v13];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(v15, v14 * v13 - v17);
    v14 = *(this + 2);
    v16 = *(*(this + 3) + 24 * a2);
  }

  memcpy(&v16[v14 * v12], a5, v14 * a3);
  return v12;
}

uint64_t faiss::ArrayInvertedLists::list_size(faiss::ArrayInvertedLists *this, unint64_t a2)
{
  if (*(this + 1) <= a2)
  {
    faiss::ArrayInvertedLists::list_size();
  }

  return (*(*(this + 6) + 24 * a2 + 8) - *(*(this + 6) + 24 * a2)) >> 3;
}

uint64_t faiss::ArrayInvertedLists::get_codes(faiss::ArrayInvertedLists *this, unint64_t a2)
{
  if (*(this + 1) <= a2)
  {
    faiss::ArrayInvertedLists::get_codes();
  }

  return *(*(this + 3) + 24 * a2);
}

uint64_t faiss::ArrayInvertedLists::get_ids(faiss::ArrayInvertedLists *this, unint64_t a2)
{
  if (*(this + 1) <= a2)
  {
    faiss::ArrayInvertedLists::get_ids();
  }

  return *(*(this + 6) + 24 * a2);
}

void faiss::ArrayInvertedLists::resize(faiss::ArrayInvertedLists *this, uint64_t a2, unint64_t a3)
{
  v5 = 3 * a2;
  std::vector<long long>::resize((*(this + 6) + 24 * a2), a3);
  v6 = *(this + 3) + 8 * v5;
  v7 = *(this + 2) * a3;
  v8 = *(v6 + 8) - *v6;
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      *(v6 + 8) = *v6 + v7;
    }
  }

  else
  {

    std::vector<unsigned char>::__append(v6, v7 - v8);
  }
}

void *faiss::ArrayInvertedLists::update_entries(faiss::ArrayInvertedLists *this, unint64_t a2, uint64_t a3, uint64_t a4, void *__src, const unsigned __int8 *a6)
{
  if (*(this + 1) <= a2)
  {
    faiss::ArrayInvertedLists::update_entries();
  }

  v10 = *(*(this + 6) + 24 * a2);
  if (a4 + a3 > ((*(*(this + 6) + 24 * a2 + 8) - v10) >> 3))
  {
    faiss::ArrayInvertedLists::update_entries();
  }

  memcpy((v10 + 8 * a3), __src, 8 * a4);
  v12 = *(this + 2);
  v13 = (*(*(this + 3) + 24 * a2) + v12 * a3);

  return memcpy(v13, a6, v12 * a4);
}

void faiss::ArrayInvertedLists::~ArrayInvertedLists(faiss::ArrayInvertedLists *this)
{
  *this = &unk_1F55373A8;
  v1 = (this + 24);
  v2 = (this + 48);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_1F55373A8;
  v1 = (this + 24);
  v2 = (this + 48);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_1F55373A8;
  v2 = (this + 24);
  v3 = (this + 48);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x1DA73F410](this, 0x10A1C40A1EC57E1);
}

void faiss::ReadOnlyInvertedLists::add_entries(faiss::ReadOnlyInvertedLists *this, unint64_t a2, unint64_t a3, const uint64_t *a4, const unsigned __int8 *a5)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v6, "not implemented");
  faiss::FaissException::FaissException(exception, v6, "virtual size_t faiss::ReadOnlyInvertedLists::add_entries(size_t, size_t, const idx_t *, const uint8_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 191);
}

void sub_1D9C35B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
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

void faiss::ReadOnlyInvertedLists::update_entries(faiss::ReadOnlyInvertedLists *this, unint64_t a2, unint64_t a3, unint64_t a4, const uint64_t *a5, const unsigned __int8 *a6)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v7, "not implemented");
  faiss::FaissException::FaissException(exception, v7, "virtual void faiss::ReadOnlyInvertedLists::update_entries(size_t, size_t, size_t, const idx_t *, const uint8_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 200);
}

void sub_1D9C35D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void faiss::ReadOnlyInvertedLists::resize(faiss::ReadOnlyInvertedLists *this)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v2, "not implemented");
  faiss::FaissException::FaissException(exception, v2, "virtual void faiss::ReadOnlyInvertedLists::resize(size_t, size_t)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 204);
}

void sub_1D9C35DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

faiss::HStackInvertedLists *faiss::HStackInvertedLists::HStackInvertedLists(faiss::HStackInvertedLists *this, int a2, const faiss::InvertedLists **a3)
{
  v3 = a3;
  if (a2 < 1)
  {
    v5 = 0uLL;
  }

  else
  {
    v5 = *(*a3 + 8);
  }

  *(this + 8) = v5;
  *this = &unk_1F5537438;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (a2 < 1)
  {
    memset(&v16, 0, sizeof(v16));
    v12 = snprintf(0, 0, "Error: '%s' failed", "nil > 0");
    std::string::resize(&v16, v12 + 1, 0);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v16;
    }

    else
    {
      v13 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    snprintf(v13, size, "Error: '%s' failed", "nil > 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v16, "faiss::HStackInvertedLists::HStackInvertedLists(int, const InvertedLists **)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 215);
  }

  v6 = a2;
  do
  {
    std::vector<faiss::InvertedLists const*>::push_back[abi:ne200100](this + 24, v3);
    if (*(*v3 + 2) != *(this + 2) || *(*v3 + 1) != *(this + 1))
    {
      memset(&v16, 0, sizeof(v16));
      v8 = snprintf(0, 0, "Error: '%s' failed", "ils_in[i]->code_size == code_size && ils_in[i]->nlist == nlist");
      std::string::resize(&v16, v8 + 1, 0);
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v16;
      }

      else
      {
        v9 = v16.__r_.__value_.__r.__words[0];
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v10 = v16.__r_.__value_.__l.__size_;
      }

      snprintf(v9, v10, "Error: '%s' failed", "ils_in[i]->code_size == code_size && ils_in[i]->nlist == nlist");
      v11 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v11, &v16, "faiss::HStackInvertedLists::HStackInvertedLists(int, const InvertedLists **)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 219);
    }

    ++v3;
    --v6;
  }

  while (v6);
  return this;
}

void sub_1D9C36028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v19 = *v16;
  if (*v16)
  {
    *(v15 + 32) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void std::vector<faiss::InvertedLists const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::InvertedLists const*>>(a1, v10);
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

uint64_t faiss::HStackInvertedLists::list_size(faiss::HStackInvertedLists *this, uint64_t a2)
{
  v2 = *(this + 3);
  if (*(this + 4) == v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v6 += (***(v2 + 8 * v5))(*(v2 + 8 * v5), a2);
    ++v5;
    v2 = *(this + 3);
  }

  while (v5 < (*(this + 4) - v2) >> 3);
  return v6;
}

void faiss::HStackInvertedLists::get_single_code(faiss::HStackInvertedLists *this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(this + 3);
  if (*(this + 4) == v4)
  {
    v9 = a3;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = (***(v4 + 8 * v7))(*(v4 + 8 * v7), a2);
      v9 = v3 - v8;
      if (v3 < v8)
      {
        operator new[]();
      }

      ++v7;
      v4 = *(this + 3);
      v3 -= v8;
    }

    while (v7 < (*(this + 4) - v4) >> 3);
  }

  memset(&v14, 0, sizeof(v14));
  v10 = snprintf(0, 0, "offset %zd unknown", v9);
  std::string::resize(&v14, v10 + 1, 0);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v14;
  }

  else
  {
    v11 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  snprintf(v11, size, "offset %zd unknown", v9);
  exception = __cxa_allocate_exception(0x20uLL);
  faiss::FaissException::FaissException(exception, &v14, "virtual const uint8_t *faiss::HStackInvertedLists::get_single_code(size_t, size_t) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 260);
}

void sub_1D9C364E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::HStackInvertedLists::release_codes(faiss::HStackInvertedLists *this, unint64_t a2, const unsigned __int8 *a3)
{
  if (a3)
  {
    JUMPOUT(0x1DA73F3F0);
  }
}

uint64_t faiss::HStackInvertedLists::get_single_id(faiss::HStackInvertedLists *this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(this + 3);
  if (*(this + 4) == v4)
  {
    v10 = a3;
LABEL_5:
    memset(&v18, 0, sizeof(v18));
    v11 = v10;
    v12 = snprintf(0, 0, "offset %zd unknown", v10);
    std::string::resize(&v18, v12 + 1, 0);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v18;
    }

    else
    {
      v13 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    snprintf(v13, size, "offset %zd unknown", v11);
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v18, "virtual Index::idx_t faiss::HStackInvertedLists::get_single_id(size_t, size_t) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 291);
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v4 + 8 * v7);
    v9 = (**v8)(v8, a2);
    v10 = v3 - v9;
    if (v3 < v9)
    {
      break;
    }

    ++v7;
    v4 = *(this + 3);
    v3 -= v9;
    if (v7 >= (*(this + 4) - v4) >> 3)
    {
      goto LABEL_5;
    }
  }

  v16 = *(*v8 + 40);

  return v16(v8, a2, v3);
}

void sub_1D9C36804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::HStackInvertedLists::release_ids(faiss::HStackInvertedLists *this, unint64_t a2, const uint64_t *a3)
{
  if (a3)
  {
    JUMPOUT(0x1DA73F3F0);
  }
}

uint64_t faiss::HStackInvertedLists::prefetch_lists(uint64_t this, const uint64_t *a2, uint64_t a3)
{
  v3 = *(this + 24);
  if (*(this + 32) != v3)
  {
    v6 = this;
    v7 = 0;
    do
    {
      this = (*(**(v3 + 8 * v7) + 56))(*(v3 + 8 * v7), a2, a3);
      ++v7;
      v3 = *(v6 + 24);
    }

    while (v7 < (*(v6 + 32) - v3) >> 3);
  }

  return this;
}

void *faiss::SliceInvertedLists::SliceInvertedLists(void *this, const faiss::InvertedLists *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  this[1] = a4 - a3;
  this[2] = v4;
  *this = &unk_1F55374C8;
  this[3] = a2;
  this[4] = a3;
  this[5] = a4;
  return this;
}

{
  v4 = *(a2 + 2);
  this[1] = a4 - a3;
  this[2] = v4;
  *this = &unk_1F55374C8;
  this[3] = a2;
  this[4] = a3;
  this[5] = a4;
  return this;
}

uint64_t faiss::SliceInvertedLists::list_size(faiss::SliceInvertedLists *this, unint64_t a2)
{
  v2 = *(this + 3);
  v4 = **v2;

  return v4(v2, v3);
}

unint64_t faiss::anonymous namespace::translate_list_no(faiss::_anonymous_namespace_ *this, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0 || *(this + 1) <= a2)
  {
    memset(&v7, 0, sizeof(v7));
    v3 = snprintf(0, 0, "Error: '%s' failed", "list_no >= 0 && list_no < sil->nlist");
    std::string::resize(&v7, v3 + 1, 0);
    if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v7;
    }

    else
    {
      v4 = v7.__r_.__value_.__r.__words[0];
    }

    if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v7.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v7.__r_.__value_.__l.__size_;
    }

    snprintf(v4, size, "Error: '%s' failed", "list_no >= 0 && list_no < sil->nlist");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v7, "idx_t faiss::(anonymous namespace)::translate_list_no(const SliceInvertedLists *, idx_t)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 315);
  }

  return *(this + 4) + a2;
}

void sub_1D9C36A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::SliceInvertedLists::get_codes(faiss::SliceInvertedLists *this, unint64_t a2)
{
  v2 = *(this + 3);
  v4 = *(*v2 + 8);

  return v4(v2, v3);
}

uint64_t faiss::SliceInvertedLists::get_single_code(faiss::SliceInvertedLists *this, unint64_t a2, uint64_t a3)
{
  v4 = *(this + 3);
  v6 = *(*v4 + 48);

  return v6(v4, v5, a3);
}

uint64_t faiss::SliceInvertedLists::release_codes(faiss::SliceInvertedLists *this, unint64_t a2, const unsigned __int8 *a3)
{
  v4 = *(this + 3);
  v6 = *(*v4 + 24);

  return v6(v4, v5, a3);
}

uint64_t faiss::SliceInvertedLists::get_ids(faiss::SliceInvertedLists *this, unint64_t a2)
{
  v2 = *(this + 3);
  v4 = *(*v2 + 16);

  return v4(v2, v3);
}

uint64_t faiss::SliceInvertedLists::get_single_id(faiss::SliceInvertedLists *this, unint64_t a2, uint64_t a3)
{
  v4 = *(this + 3);
  v6 = *(*v4 + 40);

  return v6(v4, v5, a3);
}

uint64_t faiss::SliceInvertedLists::release_ids(faiss::SliceInvertedLists *this, unint64_t a2, const uint64_t *a3)
{
  v4 = *(this + 3);
  v6 = *(*v4 + 32);

  return v6(v4, v5, a3);
}

void faiss::SliceInvertedLists::prefetch_lists(faiss::SliceInvertedLists *this, unint64_t *a2, int a3)
{
  __src = 0;
  v19 = 0;
  v20 = 0;
  if (a3 >= 1)
  {
    v5 = a3;
    do
    {
      v7 = *a2++;
      v6 = v7;
      if ((v7 & 0x8000000000000000) == 0)
      {
        v9 = v19;
        if (v19 >= v20)
        {
          v11 = __src;
          v12 = v19 - __src;
          v13 = (v19 - __src) >> 3;
          v14 = v13 + 1;
          if ((v13 + 1) >> 61)
          {
            std::vector<long long>::__throw_length_error[abi:ne200100]();
          }

          v15 = v20 - __src;
          if ((v20 - __src) >> 2 > v14)
          {
            v14 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(&__src, v16);
          }

          *(8 * v13) = v8;
          v10 = 8 * v13 + 8;
          memcpy(0, v11, v12);
          v17 = __src;
          __src = 0;
          v19 = v10;
          v20 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v19 = v8;
          v10 = (v9 + 8);
        }

        v19 = v10;
      }

      --v5;
    }

    while (v5);
  }

  (*(**(this + 3) + 56))(*(this + 3));
}

void sub_1D9C36E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

faiss::VStackInvertedLists *faiss::VStackInvertedLists::VStackInvertedLists(faiss::VStackInvertedLists *this, int a2, const faiss::InvertedLists **a3)
{
  v3 = a3;
  if (a2 < 1)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 += *(a3[v6++] + 1);
    }

    while (a2 != v6);
    v8 = *(*a3 + 2);
  }

  *(this + 1) = v7;
  *(this + 2) = v8;
  *this = &unk_1F5537558;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (a2 <= 0)
  {
    memset(&v20, 0, sizeof(v20));
    v16 = snprintf(0, 0, "Error: '%s' failed", "nil > 0");
    std::string::resize(&v20, v16 + 1, 0);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v20;
    }

    else
    {
      v17 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    snprintf(v17, size, "Error: '%s' failed", "nil > 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v20, "faiss::VStackInvertedLists::VStackInvertedLists(int, const InvertedLists **)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 413);
  }

  std::vector<long long>::resize(this + 6, (a2 + 1));
  v9 = 0;
  v10 = 8 * a2;
  do
  {
    std::vector<faiss::InvertedLists const*>::push_back[abi:ne200100](this + 24, v3);
    if (*(*v3 + 2) != *(this + 2))
    {
      memset(&v20, 0, sizeof(v20));
      v12 = snprintf(0, 0, "Error: '%s' failed", "ils_in[i]->code_size == code_size");
      std::string::resize(&v20, v12 + 1, 0);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v20;
      }

      else
      {
        v13 = v20.__r_.__value_.__r.__words[0];
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = v20.__r_.__value_.__l.__size_;
      }

      snprintf(v13, v14, "Error: '%s' failed", "ils_in[i]->code_size == code_size");
      v15 = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(v15, &v20, "faiss::VStackInvertedLists::VStackInvertedLists(int, const InvertedLists **)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 417);
    }

    *(*(this + 6) + v9 + 8) = *(*v3++ + 1) + *(*(this + 6) + v9);
    v9 += 8;
  }

  while (v10 != v9);
  return this;
}

void sub_1D9C37128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v19 = v15[6];
  if (v19)
  {
    v15[7] = v19;
    operator delete(v19);
  }

  v20 = *v16;
  if (*v16)
  {
    v15[4] = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::VStackInvertedLists::list_size(faiss::VStackInvertedLists *this, uint64_t a2)
{

  return v2();
}

uint64_t faiss::anonymous namespace::translate_list_no(faiss::_anonymous_namespace_ *this, uint64_t a2)
{
  if (a2 < 0 || *(this + 1) <= a2)
  {
    memset(&v12, 0, sizeof(v12));
    v8 = snprintf(0, 0, "Error: '%s' failed", "list_no >= 0 && list_no < vil->nlist");
    std::string::resize(&v12, v8 + 1, 0);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v12;
    }

    else
    {
      v9 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    snprintf(v9, size, "Error: '%s' failed", "list_no >= 0 && list_no < vil->nlist");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v12, "int faiss::(anonymous namespace)::translate_list_no(const VStackInvertedLists *, idx_t)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 384);
  }

  v2 = (*(this + 4) - *(this + 3)) >> 3;
  v3 = *(this + 6);
  if (v2 < 2)
  {
    result = 0;
    v7 = 1;
  }

  else
  {
    LODWORD(result) = 0;
    do
    {
      v5 = (v2 + result) >> 1;
      v6 = *(v3 + 8 * v5);
      if (v6 <= a2)
      {
        result = v5;
      }

      else
      {
        result = result;
      }

      if (v6 > a2)
      {
        LODWORD(v2) = v5;
      }

      v7 = (result + 1);
    }

    while (v7 < v2);
  }

  if (*(v3 + 8 * result) > a2 || *(v3 + 8 * v7) <= a2)
  {
  }

  return result;
}

void sub_1D9C3735C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::VStackInvertedLists::get_codes(faiss::VStackInvertedLists *this, uint64_t a2)
{

  return v2();
}

uint64_t faiss::VStackInvertedLists::get_single_code(faiss::VStackInvertedLists *this, uint64_t a2)
{

  return v2();
}

uint64_t faiss::VStackInvertedLists::release_codes(faiss::VStackInvertedLists *this, uint64_t a2, const unsigned __int8 *a3)
{

  return v3();
}

uint64_t faiss::VStackInvertedLists::get_ids(faiss::VStackInvertedLists *this, uint64_t a2)
{

  return v2();
}

uint64_t faiss::VStackInvertedLists::get_single_id(faiss::VStackInvertedLists *this, uint64_t a2)
{

  return v2();
}

uint64_t faiss::VStackInvertedLists::release_ids(faiss::VStackInvertedLists *this, uint64_t a2, const uint64_t *a3)
{

  return v3();
}

void faiss::VStackInvertedLists::prefetch_lists(faiss::VStackInvertedLists *this, uint64_t *a2, int a3)
{
  LODWORD(v34[0]) = -1;
  std::vector<int>::vector[abi:ne200100](v35, a3);
  v6 = (*(this + 4) - *(this + 3)) >> 3;
  LODWORD(v32) = 0;
  std::vector<int>::vector[abi:ne200100](v34, v6);
  v7 = a3;
  if (a3 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = a2[v8];
      if ((v9 & 0x8000000000000000) == 0)
      {
        *(v35[0] + v8) = v10;
        ++*(v34[0] + v10);
      }

      ++v8;
    }

    while (a3 != v8);
  }

  v11 = (*(this + 4) - *(this + 3)) >> 3;
  LODWORD(__p[0]) = 0;
  std::vector<int>::vector[abi:ne200100](&v32, v11 + 1);
  v12 = *(this + 4) - *(this + 3);
  if (v12)
  {
    v13 = v12 >> 3;
    v14 = v34[0];
    if ((v12 >> 3) <= 1)
    {
      v13 = 1;
    }

    v15 = v32 + 4;
    v16 = *v32;
    do
    {
      v17 = *v14++;
      v16 += v17;
      *v15++ = v16;
      --v13;
    }

    while (v13);
  }

  std::vector<long long>::vector[abi:ne200100](__p, *(v33 - 1));
  if (a3 >= 1)
  {
    v18 = v35[0];
    v19 = v32;
    v20 = __p[0];
    do
    {
      v22 = *a2++;
      v21 = v22;
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = *v18;
        v24 = v19[v23];
        v25 = v21 - *(*(this + 6) + 8 * v23);
        v19[v23] = v24 + 1;
        v20[v24] = v25;
      }

      ++v18;
      --v7;
    }

    while (v7);
  }

  v27 = *(this + 3);
  v26 = *(this + 4);
  if (v26 != v27)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(v34[0] + v28);
      if (v30 >= 1)
      {
        (*(**(v27 + 8 * v28) + 56))(*(v27 + 8 * v28), __p[0] + 8 * v29, *(v34[0] + v28));
        v27 = *(this + 3);
        v26 = *(this + 4);
      }

      v29 += v30;
      ++v28;
    }

    while (v28 < (v26 - v27) >> 3);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }
}

void sub_1D9C37868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *faiss::MaskedInvertedLists::MaskedInvertedLists(void *this, const faiss::InvertedLists *a2, const faiss::InvertedLists *a3)
{
  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  this[1] = v4;
  this[2] = v3;
  *this = &unk_1F55375E8;
  this[3] = a2;
  this[4] = a3;
  if (*(a3 + 1) != v4)
  {
    memset(&v13, 0, sizeof(v13));
    v5 = snprintf(0, 0, "Error: '%s' failed", "il1->nlist == nlist");
    std::string::resize(&v13, v5 + 1, 0);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    snprintf(v6, size, "Error: '%s' failed", "il1->nlist == nlist");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v13, "faiss::MaskedInvertedLists::MaskedInvertedLists(const InvertedLists *, const InvertedLists *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 513);
  }

  if (*(a3 + 2) != v3)
  {
    memset(&v13, 0, sizeof(v13));
    v9 = snprintf(0, 0, "Error: '%s' failed", "il1->code_size == code_size");
    std::string::resize(&v13, v9 + 1, 0);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = v13.__r_.__value_.__l.__size_;
    }

    snprintf(v10, v11, "Error: '%s' failed", "il1->code_size == code_size");
    v12 = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(v12, &v13, "faiss::MaskedInvertedLists::MaskedInvertedLists(const InvertedLists *, const InvertedLists *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 514);
  }

  return this;
}

void sub_1D9C37A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::MaskedInvertedLists::list_size(faiss::MaskedInvertedLists *this)
{
  result = (***(this + 3))(*(this + 3));
  if (!result)
  {
    v3 = ***(this + 4);

    return v3();
  }

  return result;
}

uint64_t faiss::MaskedInvertedLists::get_codes(faiss::MaskedInvertedLists *this)
{
  v2 = (***(this + 3))(*(this + 3));
  v3 = 24;
  if (!v2)
  {
    v3 = 32;
  }

  v4 = *(**(this + v3) + 8);

  return v4();
}

uint64_t faiss::MaskedInvertedLists::get_ids(faiss::MaskedInvertedLists *this)
{
  v2 = (***(this + 3))(*(this + 3));
  v3 = 24;
  if (!v2)
  {
    v3 = 32;
  }

  v4 = *(**(this + v3) + 16);

  return v4();
}

uint64_t faiss::MaskedInvertedLists::release_codes(faiss::MaskedInvertedLists *this, unint64_t a2, const unsigned __int8 *a3)
{
  v4 = (***(this + 3))(*(this + 3));
  v5 = 24;
  if (!v4)
  {
    v5 = 32;
  }

  v6 = *(**(this + v5) + 24);

  return v6();
}

uint64_t faiss::MaskedInvertedLists::release_ids(faiss::MaskedInvertedLists *this, unint64_t a2, const uint64_t *a3)
{
  v4 = (***(this + 3))(*(this + 3));
  v5 = 24;
  if (!v4)
  {
    v5 = 32;
  }

  v6 = *(**(this + v5) + 32);

  return v6();
}

uint64_t faiss::MaskedInvertedLists::get_single_id(faiss::MaskedInvertedLists *this)
{
  v2 = (***(this + 3))(*(this + 3));
  v3 = 24;
  if (!v2)
  {
    v3 = 32;
  }

  v4 = *(**(this + v3) + 40);

  return v4();
}

uint64_t faiss::MaskedInvertedLists::get_single_code(faiss::MaskedInvertedLists *this)
{
  v2 = (***(this + 3))(*(this + 3));
  v3 = 24;
  if (!v2)
  {
    v3 = 32;
  }

  v4 = *(**(this + v3) + 48);

  return v4();
}

void faiss::MaskedInvertedLists::prefetch_lists(faiss::MaskedInvertedLists *this, uint64_t *a2, int a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  __p = 0;
  v10 = 0;
  v11 = 0;
  if (a3 >= 1)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      v8 = v6;
      if ((v6 & 0x8000000000000000) == 0)
      {
        if ((***(this + 3))(*(this + 3)))
        {
          p_p = &v12;
        }

        else
        {
          p_p = &__p;
        }

        std::vector<unsigned long>::push_back[abi:ne200100](p_p, &v8);
      }

      --v5;
    }

    while (v5);
  }

  (*(**(this + 3) + 56))(*(this + 3));
  (*(**(this + 4) + 56))(*(this + 4));
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_1D9C38060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

__n128 faiss::StopWordsInvertedLists::StopWordsInvertedLists(faiss::StopWordsInvertedLists *this, const faiss::InvertedLists *a2, uint64_t a3)
{
  result = *(a2 + 8);
  *(this + 8) = result;
  *this = &unk_1F5537678;
  *(this + 3) = a2;
  *(this + 4) = a3;
  return result;
}

{
  result = *(a2 + 8);
  *(this + 8) = result;
  *this = &unk_1F5537678;
  *(this + 3) = a2;
  *(this + 4) = a3;
  return result;
}

unint64_t faiss::StopWordsInvertedLists::list_size(faiss::StopWordsInvertedLists *this)
{
  result = (***(this + 3))(*(this + 3));
  if (result >= *(this + 4))
  {
    return 0;
  }

  return result;
}

uint64_t faiss::StopWordsInvertedLists::get_codes(faiss::StopWordsInvertedLists *this)
{
  if ((***(this + 3))(*(this + 3)) >= *(this + 4))
  {
    return 0;
  }

  v2 = *(**(this + 3) + 8);

  return v2();
}

uint64_t faiss::StopWordsInvertedLists::get_ids(faiss::StopWordsInvertedLists *this)
{
  if ((***(this + 3))(*(this + 3)) >= *(this + 4))
  {
    return 0;
  }

  v2 = *(**(this + 3) + 16);

  return v2();
}

unint64_t faiss::StopWordsInvertedLists::release_codes(faiss::StopWordsInvertedLists *this, unint64_t a2, const unsigned __int8 *a3)
{
  result = (***(this + 3))(*(this + 3));
  if (result < *(this + 4))
  {
    v5 = *(**(this + 3) + 24);

    return v5();
  }

  return result;
}

unint64_t faiss::StopWordsInvertedLists::release_ids(faiss::StopWordsInvertedLists *this, unint64_t a2, const uint64_t *a3)
{
  result = (***(this + 3))(*(this + 3));
  if (result < *(this + 4))
  {
    v5 = *(**(this + 3) + 32);

    return v5();
  }

  return result;
}

uint64_t faiss::StopWordsInvertedLists::get_single_id(faiss::StopWordsInvertedLists *this)
{
  if ((***(this + 3))(*(this + 3)) >= *(this + 4))
  {
    memset(&v8, 0, sizeof(v8));
    v4 = snprintf(0, 0, "Error: '%s' failed", "il0->list_size(list_no) < maxsize");
    std::string::resize(&v8, v4 + 1, 0);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v8;
    }

    else
    {
      v5 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    snprintf(v5, size, "Error: '%s' failed", "il0->list_size(list_no) < maxsize");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v8, "virtual idx_t faiss::StopWordsInvertedLists::get_single_id(size_t, size_t) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 610);
  }

  v2 = *(**(this + 3) + 40);

  return v2();
}

void sub_1D9C38538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::StopWordsInvertedLists::get_single_code(faiss::StopWordsInvertedLists *this)
{
  if ((***(this + 3))(*(this + 3)) >= *(this + 4))
  {
    memset(&v8, 0, sizeof(v8));
    v4 = snprintf(0, 0, "Error: '%s' failed", "il0->list_size(list_no) < maxsize");
    std::string::resize(&v8, v4 + 1, 0);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v8;
    }

    else
    {
      v5 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    snprintf(v5, size, "Error: '%s' failed", "il0->list_size(list_no) < maxsize");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v8, "virtual const uint8_t *faiss::StopWordsInvertedLists::get_single_code(size_t, size_t) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/invlists/InvertedLists.cpp", 617);
  }

  v2 = *(**(this + 3) + 48);

  return v2();
}

void sub_1D9C386C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::StopWordsInvertedLists::prefetch_lists(faiss::StopWordsInvertedLists *this, uint64_t *a2, int a3)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a3 >= 1)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      v7 = v6;
      if ((v6 & 0x8000000000000000) == 0 && (***(this + 3))(*(this + 3)) < *(this + 4))
      {
        std::vector<unsigned long>::push_back[abi:ne200100](&__p, &v7);
      }

      --v5;
    }

    while (v5);
  }

  (*(**(this + 3) + 56))(*(this + 3));
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_1D9C387D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void faiss::HStackInvertedLists::~HStackInvertedLists(faiss::HStackInvertedLists *this)
{
  *this = &unk_1F5537438;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F5537438;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1DA73F410);
}

void faiss::VStackInvertedLists::~VStackInvertedLists(faiss::VStackInvertedLists *this)
{
  *this = &unk_1F5537558;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_1F5537558;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1DA73F410);
}

void std::vector<std::vector<long long>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<long long>>::~__split_buffer(v18);
  }
}

uint64_t std::__split_buffer<std::vector<long long>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<long long>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<long long>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::InvertedLists const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void faiss::ArrayInvertedLists::update_entries()
{
  __assert_rtn("update_entries", "InvertedLists.cpp", 174, "list_no < nlist");
}

{
  __assert_rtn("update_entries", "InvertedLists.cpp", 175, "n_entry + offset <= ids[list_no].size()");
}

void faiss::pairwise_extra_distances(const float *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, int a6, float *a7, const float *a8, float a9, uint64_t a10, uint64_t a11)
{
  if (!a2 || !a4)
  {
    return;
  }

  v12 = a7;
  v16 = a10;
  v15 = a11;
  if (a8 == -1)
  {
    v17 = a1;
  }

  else
  {
    v17 = a8;
  }

  if (a10 == -1)
  {
    v16 = a1;
  }

  if (a11 == -1)
  {
    v15 = a4;
  }

  v73 = v17;
  v76 = v15;
  if (a6 <= 3)
  {
    switch(a6)
    {
      case 1:
        if (a2 >= 1)
        {
          v48 = 0;
          v79 = v15;
          v49 = 4 * v16;
          do
          {
            v50 = v12;
            if (a4 >= 1)
            {
              v51 = a5;
              v52 = v12;
              v53 = a4;
              do
              {
                *v52++ = faiss::fvec_L2sqr((a3 + 4 * v48 * v73), v51, a1);
                v51 = (v51 + v49);
                --v53;
              }

              while (v53);
            }

            ++v48;
            v12 = &v50[v79];
          }

          while (v48 != a2);
        }

        break;
      case 2:
        if (a2 >= 1)
        {
          v42 = 0;
          v78 = v15;
          v43 = 4 * v16;
          do
          {
            v44 = v12;
            if (a4 >= 1)
            {
              v45 = a5;
              v46 = v12;
              v47 = a4;
              do
              {
                *v46++ = faiss::fvec_L1((a3 + 4 * v42 * v73), v45, a1);
                v45 = (v45 + v43);
                --v47;
              }

              while (v47);
            }

            ++v42;
            v12 = &v44[v78];
          }

          while (v42 != a2);
        }

        break;
      case 3:
        if (a2 >= 1)
        {
          v25 = 0;
          v77 = v15;
          v26 = 4 * v16;
          do
          {
            v27 = v12;
            if (a4 >= 1)
            {
              v28 = a5;
              v29 = v12;
              v30 = a4;
              do
              {
                *v29++ = faiss::fvec_Linf((a3 + 4 * v25 * v73), v28, a1);
                v28 = (v28 + v26);
                --v30;
              }

              while (v30);
            }

            ++v25;
            v12 = &v27[v77];
          }

          while (v25 != a2);
        }

        break;
      default:
        goto LABEL_88;
    }
  }

  else if (a6 > 20)
  {
    if (a6 == 21)
    {
      if (a2 >= 1)
      {
        v61 = 0;
        v62 = 4 * v16;
        v63 = 4 * v17;
        do
        {
          if (a4 >= 1)
          {
            v64 = 0;
            v65 = a5;
            do
            {
              if (a1)
              {
                v66 = 0;
                v67 = 0.0;
                v68 = 0.0;
                do
                {
                  v69 = *(a3 + 4 * v66);
                  v70 = v65[v66];
                  v67 = v67 + vabds_f32(v69, v70);
                  v68 = v68 + fabsf(v69 + v70);
                  v66 = (v66 + 1);
                }

                while (a1 != v66);
                v71 = v67 / v68;
              }

              else
              {
                v71 = NAN;
              }

              a7[v61 * v76 + v64++] = v71;
              v65 = (v65 + v62);
            }

            while (v64 != a4);
          }

          ++v61;
          a3 += v63;
        }

        while (v61 != a2);
      }
    }

    else
    {
      if (a6 != 22)
      {
        goto LABEL_88;
      }

      if (a2 >= 1)
      {
        v31 = 0;
        v32 = 4 * v16;
        v74 = 4 * v17;
        do
        {
          if (a4 >= 1)
          {
            v33 = 0;
            v34 = a5;
            do
            {
              if (a1)
              {
                v35 = 0;
                v36 = 0.0;
                do
                {
                  v37 = *(a3 + 4 * v35);
                  v38 = v34[v35];
                  v39 = (v37 + v38) * 0.5;
                  v40 = logf(v39 / v37);
                  v36 = v36 + (-(v38 * logf(v39 / v38)) - (v37 * v40));
                  v35 = (v35 + 1);
                }

                while (a1 != v35);
                v41 = v36 * 0.5;
              }

              else
              {
                v41 = 0.0;
              }

              v12[v31 * v76 + v33++] = v41;
              v34 = (v34 + v32);
            }

            while (v33 != a4);
          }

          ++v31;
          a3 += v74;
        }

        while (v31 != a2);
      }
    }
  }

  else
  {
    if (a6 != 4)
    {
      if (a6 == 20)
      {
        if (a2 >= 1)
        {
          v18 = 0;
          v19 = 4 * v16;
          v20 = 4 * v17;
          do
          {
            if (a4 >= 1)
            {
              v21 = 0;
              v22 = a5;
              do
              {
                if (a1)
                {
                  v23 = 0;
                  v24 = 0.0;
                  do
                  {
                    v24 = v24 + (vabds_f32(*(a3 + 4 * v23), v22[v23]) / (fabsf(*(a3 + 4 * v23)) + fabsf(v22[v23])));
                    v23 = (v23 + 1);
                  }

                  while (a1 != v23);
                }

                else
                {
                  v24 = 0.0;
                }

                a7[v18 * v76 + v21++] = v24;
                v22 = (v22 + v19);
              }

              while (v21 != a4);
            }

            ++v18;
            a3 += v20;
          }

          while (v18 != a2);
        }

        return;
      }

LABEL_88:
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v82, "metric type not implemented");
      faiss::FaissException::FaissException(exception, v82, "void faiss::pairwise_extra_distances(int64_t, int64_t, const float *, int64_t, const float *, MetricType, float, float *, int64_t, int64_t, int64_t)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/extra_distances.cpp", 162);
    }

    if (a2 >= 1)
    {
      v55 = 0;
      v56 = 4 * v16;
      v75 = 4 * v17;
      do
      {
        if (a4 >= 1)
        {
          v57 = 0;
          v58 = a5;
          do
          {
            if (a1)
            {
              v59 = 0;
              v60 = 0.0;
              do
              {
                v60 = v60 + powf(vabds_f32(*(a3 + 4 * v59), v58[v59]), a9);
                v59 = (v59 + 1);
              }

              while (a1 != v59);
            }

            else
            {
              v60 = 0.0;
            }

            v12[v55 * v76 + v57++] = v60;
            v58 = (v58 + v56);
          }

          while (v57 != a4);
        }

        ++v55;
        a3 += v75;
      }

      while (v55 != a2);
    }
  }
}