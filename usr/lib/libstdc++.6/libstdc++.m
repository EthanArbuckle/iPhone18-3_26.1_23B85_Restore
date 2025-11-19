void *__gnu_cxx::__detail::__mini_vector<std::pair<__gnu_cxx::bitmap_allocator<char>::_Alloc_block *,__gnu_cxx::bitmap_allocator<char>::_Alloc_block *>>::__mini_vector(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void __gnu_cxx::__detail::__mini_vector<std::pair<__gnu_cxx::bitmap_allocator<char>::_Alloc_block *,__gnu_cxx::bitmap_allocator<char>::_Alloc_block *>>::insert(__int128 **a1, __int128 *a2, __int128 *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v9 = (v6 - *a1) >> 3;
    if (v7 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    v11 = operator new(16 * v10);
    v12 = *a1;
    v13 = *a1;
    v14 = v11;
    if (*a1 != a2)
    {
      v14 = v11;
      v13 = *a1;
      do
      {
        v15 = *v13++;
        *v14++ = v15;
      }

      while (v13 != a2);
    }

    *v14 = *a3;
    v16 = v14 + 1;
    while (v13 != a1[1])
    {
      v17 = *v13++;
      *v16++ = v17;
    }

    if (v12)
    {
      operator delete(v12);
    }

    *a1 = v11;
    a1[1] = v16;
    a1[2] = &v11[v10];
  }

  else
  {
    a1[1] = v6 + 1;
    if (v6 != a2)
    {
      v8 = v6 - a2;
      do
      {
        *v6 = *(v6 - 1);
        --v6;
        --v8;
      }

      while (v8);
    }

    *a2 = *a3;
  }
}

void __gnu_cxx::__detail::__mini_vector<std::pair<__gnu_cxx::bitmap_allocator<char>::_Alloc_block *,__gnu_cxx::bitmap_allocator<char>::_Alloc_block *>>::push_back(__int128 **a1, __int128 *a2)
{
  v3 = a1[1];
  if (a1[2] == v3)
  {
    __gnu_cxx::__detail::__mini_vector<std::pair<__gnu_cxx::bitmap_allocator<char>::_Alloc_block *,__gnu_cxx::bitmap_allocator<char>::_Alloc_block *>>::insert(a1, v3, a2);
  }

  else
  {
    *v3 = *a2;
    ++a1[1];
  }
}

uint64_t __gnu_cxx::__detail::__mini_vector<std::pair<__gnu_cxx::bitmap_allocator<char>::_Alloc_block *,__gnu_cxx::bitmap_allocator<char>::_Alloc_block *>>::erase(uint64_t result, uint64_t a2)
{
  for (i = (a2 + 16); ; ++i)
  {
    v3 = *(result + 8);
    if (i == v3)
    {
      break;
    }

    *(i - 1) = *i;
  }

  *(result + 8) = v3 - 1;
  return result;
}

void *__gnu_cxx::__detail::__mini_vector<std::pair<__gnu_cxx::bitmap_allocator<wchar_t>::_Alloc_block *,__gnu_cxx::bitmap_allocator<wchar_t>::_Alloc_block *>>::__mini_vector(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void __gnu_cxx::__detail::__mini_vector<std::pair<__gnu_cxx::bitmap_allocator<wchar_t>::_Alloc_block *,__gnu_cxx::bitmap_allocator<wchar_t>::_Alloc_block *>>::insert(__int128 **a1, __int128 *a2, __int128 *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v9 = (v6 - *a1) >> 3;
    if (v7 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    v11 = operator new(16 * v10);
    v12 = *a1;
    v13 = *a1;
    v14 = v11;
    if (*a1 != a2)
    {
      v14 = v11;
      v13 = *a1;
      do
      {
        v15 = *v13++;
        *v14++ = v15;
      }

      while (v13 != a2);
    }

    *v14 = *a3;
    v16 = v14 + 1;
    while (v13 != a1[1])
    {
      v17 = *v13++;
      *v16++ = v17;
    }

    if (v12)
    {
      operator delete(v12);
    }

    *a1 = v11;
    a1[1] = v16;
    a1[2] = &v11[v10];
  }

  else
  {
    a1[1] = v6 + 1;
    if (v6 != a2)
    {
      v8 = v6 - a2;
      do
      {
        *v6 = *(v6 - 1);
        --v6;
        --v8;
      }

      while (v8);
    }

    *a2 = *a3;
  }
}

void __gnu_cxx::__detail::__mini_vector<std::pair<__gnu_cxx::bitmap_allocator<wchar_t>::_Alloc_block *,__gnu_cxx::bitmap_allocator<wchar_t>::_Alloc_block *>>::push_back(__int128 **a1, __int128 *a2)
{
  v3 = a1[1];
  if (a1[2] == v3)
  {
    __gnu_cxx::__detail::__mini_vector<std::pair<__gnu_cxx::bitmap_allocator<wchar_t>::_Alloc_block *,__gnu_cxx::bitmap_allocator<wchar_t>::_Alloc_block *>>::insert(a1, v3, a2);
  }

  else
  {
    *v3 = *a2;
    ++a1[1];
  }
}

uint64_t __gnu_cxx::__detail::__mini_vector<std::pair<__gnu_cxx::bitmap_allocator<wchar_t>::_Alloc_block *,__gnu_cxx::bitmap_allocator<wchar_t>::_Alloc_block *>>::erase(uint64_t result, uint64_t a2)
{
  for (i = (a2 + 16); ; ++i)
  {
    v3 = *(result + 8);
    if (i == v3)
    {
      break;
    }

    *(i - 1) = *i;
  }

  *(result + 8) = v3 - 1;
  return result;
}

unint64_t *__gnu_cxx::free_list::_M_get(__gnu_cxx::free_list *this, unint64_t a2)
{
  mutex = __gnu_cxx::free_list::_M_get_mutex(this);
  free_list = __gnu_cxx::free_list::_M_get_free_list(this);
  v7 = *free_list;
  v6 = free_list[1];
  v8 = (v6 - *free_list) >> 3;
  if (v8 >= 1)
  {
    do
    {
      v9 = v8 >> 1;
      v10 = &v7[v8 >> 1];
      v12 = *v10;
      v11 = v10 + 1;
      v8 += ~(v8 >> 1);
      if (*v12 >= a2)
      {
        v8 = v9;
      }

      else
      {
        v7 = v11;
      }
    }

    while (v8 > 0);
  }

  if (v7 == v6 || (v13 = *v7, v14 = **v7, v14 < a2) || 100 * (v14 - a2) / v14 >= 0x24)
  {
    __gnu_cxx::__mutex::unlock(mutex);
    v13 = operator new(a2 + 8);
    *v13 = a2;
  }

  else
  {
    v15 = __gnu_cxx::free_list::_M_get_free_list(this);
    for (i = v7 + 1; ; ++i)
    {
      v17 = v15[1];
      if (i == v17)
      {
        break;
      }

      *(i - 1) = *i;
    }

    v15[1] = (v17 - 1);
    __gnu_cxx::__mutex::unlock(mutex);
  }

  return v13 + 1;
}

void sub_F08(_Unwind_Exception *exception_object, int a2)
{
  if (a2 < 0)
  {
    __cxa_call_unexpected(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *__gnu_cxx::__scoped_lock::__scoped_lock(void *a1, pthread_mutex_t *a2)
{
  *a1 = a2;
  if (pthread_mutex_lock(a2))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = off_5C330;
  }

  return a1;
}

uint64_t *__gnu_cxx::free_list::_M_get_mutex(__gnu_cxx::free_list *this)
{
  {
    __gnu_cxx::free_list::_M_get_mutex();
  }

  return &__gnu_cxx::free_list::_M_get_mutex(void)::_S_mutex;
}

uint64_t *__gnu_cxx::free_list::_M_get_free_list(__gnu_cxx::free_list *this)
{
  {
    __gnu_cxx::free_list::_M_get_free_list();
  }

  return &__gnu_cxx::free_list::_M_get_free_list(void)::_S_free_list;
}

uint64_t __gnu_cxx::__mutex::unlock(pthread_mutex_t *this)
{
  result = pthread_mutex_unlock(this);
  if (result)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = off_5C370;
  }

  return result;
}

uint64_t __gnu_cxx::free_list::_M_clear(__gnu_cxx::free_list *this)
{
  mutex = __gnu_cxx::free_list::_M_get_mutex(this);
  __gnu_cxx::__scoped_lock::__scoped_lock(&v7, mutex);
  free_list = __gnu_cxx::free_list::_M_get_free_list(this);
  v4 = *free_list;
  if (*free_list != free_list[1])
  {
    do
    {
      v5 = *v4++;
      operator delete(v5);
    }

    while (v4 != free_list[1]);
    v4 = *free_list;
  }

  free_list[1] = v4;
  return __gnu_cxx::__mutex::unlock(v7);
}

void __gnu_cxx::__concurrence_lock_error::~__concurrence_lock_error(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

void __cxx_global_var_init()
{
  {
    qword_600C8 = 0;
    unk_600D0 = 0;
    __gnu_cxx::bitmap_allocator<char>::_S_mem_blocks = 0;
  }
}

void __cxx_global_var_init_1()
{
  {
    __gnu_cxx::bitmap_allocator<char>::_S_last_request = &__gnu_cxx::bitmap_allocator<char>::_S_mem_blocks;
    unk_60108 = 0;
    qword_60118 = -1;
  }
}

{
  {
  }
}

double __cxx_global_var_init_2()
{
  {
    __gnu_cxx::bitmap_allocator<char>::_S_mut = 850045863;
    result = 0.0;
    unk_60168 = 0u;
    unk_60178 = 0u;
    unk_60188 = 0u;
    qword_60198 = 0;
  }

  return result;
}

void __cxx_global_var_init_3()
{
  {
    qword_600E0 = 0;
    unk_600E8 = 0;
    __gnu_cxx::bitmap_allocator<wchar_t>::_S_mem_blocks = 0;
  }
}

void __cxx_global_var_init_4()
{
  {
    __gnu_cxx::bitmap_allocator<wchar_t>::_S_last_request = &__gnu_cxx::bitmap_allocator<wchar_t>::_S_mem_blocks;
    unk_60128 = 0;
    qword_60138 = -1;
  }
}

double __cxx_global_var_init_5()
{
  {
    __gnu_cxx::bitmap_allocator<wchar_t>::_S_mut = 850045863;
    result = 0.0;
    unk_601A8 = 0u;
    unk_601B8 = 0u;
    unk_601C8 = 0u;
    qword_601D8 = 0;
  }

  return result;
}

void *__gnu_cxx::__pool_alloc_base::_M_refill(__gnu_cxx::__pool_alloc_base *this, size_t a2)
{
  v9 = 20;
  result = __gnu_cxx::__pool_alloc_base::_M_allocate_chunk(this, a2, &v9);
  v4 = v9;
  if (v9 != 1)
  {
    v5 = (result + a2);
    *(&__gnu_cxx::__pool_alloc_base::_S_free_list + ((a2 + 7) & 0xFFFFFFFFFFFFFFF8) - 8) = result + a2;
    v6 = v4 - 2;
    if (v6)
    {
      v8 = result + 2 * a2;
      do
      {
        v7 = (v5 + a2);
        *v5 = v8;
        v8 += a2;
        v5 = (v5 + a2);
        --v6;
      }

      while (v6);
    }

    else
    {
      v7 = (result + a2);
    }

    *v7 = 0;
  }

  return result;
}

void *__gnu_cxx::__pool_alloc_base::_M_allocate_chunk(__gnu_cxx::__pool_alloc_base *this, size_t a2, int *a3)
{
  v3 = *a3 * a2;
  v4 = __gnu_cxx::__pool_alloc_base::_S_end_free;
  result = __gnu_cxx::__pool_alloc_base::_S_start_free;
  v6 = __gnu_cxx::__pool_alloc_base::_S_end_free - __gnu_cxx::__pool_alloc_base::_S_start_free;
  if (__gnu_cxx::__pool_alloc_base::_S_end_free - __gnu_cxx::__pool_alloc_base::_S_start_free >= v3)
  {
LABEL_6:
    v10 = result + v3;
  }

  else
  {
    while (v6 < a2)
    {
      if (v4 != result)
      {
        v9 = &__gnu_cxx::__pool_alloc_base::_S_free_list + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
        *result = *(v9 - 1);
        *(v9 - 1) = __gnu_cxx::__pool_alloc_base::_S_start_free;
      }

      v6 = (((__gnu_cxx::__pool_alloc_base::_S_heap_size >> 4) + 7) & 0x1FFFFFFFFFFFFFF8) + 2 * v3;
      result = operator new(v6);
      __gnu_cxx::__pool_alloc_base::_S_start_free = result;
      __gnu_cxx::__pool_alloc_base::_S_heap_size += v6;
      v4 = result + v6;
      __gnu_cxx::__pool_alloc_base::_S_end_free = result + v6;
      v3 = *a3 * a2;
      if (v6 >= v3)
      {
        goto LABEL_6;
      }
    }

    *a3 = v6 / a2;
    v10 = result + (v6 / a2) * a2;
  }

  __gnu_cxx::__pool_alloc_base::_S_start_free = v10;
  return result;
}

void __gnu_cxx::__scoped_lock::~__scoped_lock(pthread_mutex_t **this)
{
  if (pthread_mutex_unlock(*this))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = off_5C370;
  }
}

void anonymous namespace::__freelist::~__freelist(_anonymous_namespace_::__freelist *this)
{
  if (*(this + 1))
  {
    pthread_key_delete(*(this + 3));
    operator delete(*(this + 1));
  }
}

void *__gnu_cxx::__pool<true>::_M_get_thread_id(uint64_t a1)
{
  v2 = pthread_getspecific(qword_620B0);
  if (!v2)
  {
    {
    }

    else
    {
      v2 = 0;
    }

    __gnu_cxx::__scoped_lock::~__scoped_lock(&v4);
    pthread_setspecific(qword_620B0, v2);
  }

  if (v2 >= *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

char *__gnu_cxx::__pool<true>::_M_reserve_block(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1[2] << *(a1[7] + 2 * a2)) + *a1;
  v6 = (a1[3] - 16) / v5;
  v7 = a1[9] + 40 * *(a1[7] + 2 * a2);
  v8 = *(v7 + 24);
  v9 = v8 + 8 * a1[4] + 4 * a3;
  v10 = *(v9 + 8);
  *(v8 + 8 * a3) -= v10;
  atomic_fetch_add((v9 + 8), -v10);
  pthread_mutex_lock(*(v7 + 32));
  v11 = **v7;
  if (v11)
  {
    *(*v7 + 8 * a3) = v11;
    v12 = *(v7 + 16);
    if (v6 >= *v12)
    {
      v12[a3] = *v12;
      *v12 = 0;
      v13 = *v7;
    }

    else
    {
      v12[a3] = v6;
      *v12 -= v6;
      v13 = *v7;
      do
      {
        v13 = *v13;
        --v6;
      }

      while (v6);
      **v7 = *v13;
    }

    *v13 = 0;
    pthread_mutex_unlock(*(v7 + 32));
  }

  else
  {
    v14 = operator new(a1[3]);
    v15 = *(v7 + 8);
    *v14 = v14;
    v14[1] = v15;
    *(v7 + 8) = v14;
    pthread_mutex_unlock(*(v7 + 32));
    v16 = v14 + 2;
    *(*(v7 + 16) + 8 * a3) = v6;
    *(*v7 + 8 * a3) = v14 + 2;
    v17 = v6 - 1;
    if (v6 == 1)
    {
      v18 = v14 + 2;
    }

    else
    {
      do
      {
        v18 = (v16 + v5);
        *v16 = v16 + v5;
        v16 = (v16 + v5);
        --v17;
      }

      while (v17);
    }

    *v18 = 0;
  }

  v19 = *(*v7 + 8 * a3);
  *(*v7 + 8 * a3) = *v19;
  *v19 = a3;
  v20 = *(v7 + 24);
  --*(*(v7 + 16) + 8 * a3);
  ++*(v20 + 8 * a3);
  return v19 + *a1;
}

void *__gnu_cxx::__pool<true>::_M_reclaim_block(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1[7] + 2 * a3);
  v5 = a1[9] + 40 * v4;
  v6 = (a2 - *a1);
  result = __gnu_cxx::__pool<true>::_M_get_thread_id(a1);
  v8 = result;
  v9 = a1[5];
  v10 = 100 * (a1[10] - v4) * v9;
  v11 = *(v5 + 24);
  v12 = *(*(v5 + 16) + 8 * result) * v9;
  v13 = v11 + 8 * a1[4] + 8;
  v14 = *(v13 + 4 * result);
  v15 = *(v11 + 8 * result) - v14;
  if (v14 >= 1025)
  {
    *(v11 + 8 * result) = v15;
    atomic_fetch_add((v13 + 4 * result), -v14);
  }

  v16 = v12 >= v15;
  v17 = v12 - v15;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 > v10 && v17 > *(*(v5 + 16) + 8 * result))
  {
    v18 = *(*v5 + 8 * result);
    v19 = v17 / a1[5];
    v20 = v18;
    v21 = v19 - 1;
    if (v19 != 1)
    {
      v20 = *(*v5 + 8 * result);
      do
      {
        v20 = *v20;
        --v21;
      }

      while (v21);
    }

    *(*v5 + 8 * result) = *v20;
    *(*(v5 + 16) + 8 * result) -= v19;
    pthread_mutex_lock(*(v5 + 32));
    *v20 = **v5;
    **v5 = v18;
    **(v5 + 16) += v19;
    result = pthread_mutex_unlock(*(v5 + 32));
  }

  if (*v6 == v8)
  {
    --*(*(v5 + 24) + 8 * v8);
  }

  else
  {
    atomic_fetch_add((v13 + 4 * *v6), 1u);
  }

  *v6 = *(*v5 + 8 * v8);
  *(*v5 + 8 * v8) = v6;
  ++*(*(v5 + 16) + 8 * v8);
  return result;
}

void __gnu_cxx::__pool<false>::_M_destroy(uint64_t a1)
{
  if (*(a1 + 64) == 1 && (*(a1 + 48) & 1) == 0)
  {
    if (*(a1 + 80))
    {
      v2 = 0;
      do
      {
        v3 = *(a1 + 72) + 16 * v2;
        v4 = *(v3 + 8);
        if (v4)
        {
          do
          {
            v5 = *(v4 + 8);
            operator delete(*v4);
            *(v3 + 8) = v5;
            v4 = v5;
          }

          while (v5);
        }

        operator delete(*v3);
        ++v2;
      }

      while (v2 < *(a1 + 80));
    }

    operator delete(*(a1 + 72));
    v6 = *(a1 + 56);

    operator delete(v6);
  }
}

void *__gnu_cxx::__pool<false>::_M_reclaim_block(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[9];
  v4 = 16 * *(result[7] + 2 * a3);
  v5 = (a2 - *result);
  *v5 = **(v3 + v4);
  **(v3 + v4) = v5;
  return result;
}

char *__gnu_cxx::__pool<false>::_M_reserve_block(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1[7] + 2 * a2);
  v6 = (a1[9] + 16 * v5);
  v8 = a1[2];
  v7 = a1[3];
  v9 = (v8 << v5) + *a1;
  v10 = (v7 - 16) / v9;
  v11 = operator new(v7);
  v13 = *v6;
  v12 = v6[1];
  *v11 = v11;
  v11[1] = v12;
  v6[1] = v11;
  v14 = v11 + 2;
  *(v13 + 8 * a3) = v11 + 2;
  v15 = v10 - 1;
  if (v10 == 1)
  {
    v16 = v11 + 2;
  }

  else
  {
    do
    {
      v16 = (v14 + v9);
      *v14 = v14 + v9;
      v14 = (v14 + v9);
      --v15;
    }

    while (v15);
  }

  *v16 = 0;
  v17 = *(*v6 + 8 * a3);
  *(*v6 + 8 * a3) = *v17;
  return v17 + *a1;
}

void *__gnu_cxx::__pool<false>::_M_initialize(void *result)
{
  v1 = result;
  if ((result[6] & 1) == 0)
  {
    v2 = result[1];
    v3 = result[2];
    if (v2 > v3)
    {
      v4 = result[10];
      do
      {
        v5 = v2 > 2 * v3;
        v3 *= 2;
        ++v4;
      }

      while (v5);
      result[10] = v4;
    }

    v6 = operator new(2 * v2 + 2);
    v7 = 0;
    v8 = 0;
    v1[7] = v6;
    v9 = *(v1 + 8);
    v10 = v1[1];
    do
    {
      v5 = v7 > v9;
      v9 <<= v5;
      if (v5)
      {
        ++v8;
      }

      *v6++ = v8;
      ++v7;
    }

    while (v10 >= v7);
    result = operator new(16 * v1[10]);
    v1[9] = result;
    if (v1[10])
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = (v1[9] + v11);
        result = operator new(8uLL);
        *v13 = result;
        *result = 0;
        v13[1] = 0;
        ++v12;
        v11 += 16;
      }

      while (v12 < v1[10]);
    }
  }

  *(v1 + 64) = 1;
  return result;
}

void __gnu_cxx::__pool<true>::_M_destroy(uint64_t a1)
{
  if (*(a1 + 64) == 1 && (*(a1 + 48) & 1) == 0)
  {
    if (*(a1 + 80))
    {
      v2 = 0;
      do
      {
        v3 = *(a1 + 72) + 40 * v2;
        v4 = *(v3 + 8);
        if (v4)
        {
          do
          {
            v5 = *(v4 + 8);
            operator delete(*v4);
            *(v3 + 8) = v5;
            v4 = v5;
          }

          while (v5);
        }

        operator delete(*v3);
        operator delete(*(v3 + 16));
        operator delete(*(v3 + 24));
        operator delete(*(v3 + 32));
        ++v2;
      }

      while (v2 < *(a1 + 80));
    }

    operator delete(*(a1 + 72));
    v6 = *(a1 + 56);

    operator delete(v6);
  }
}

void __gnu_cxx::__pool<true>::_M_initialize(uint64_t a1)
{
  if (*(a1 + 48))
  {
    goto LABEL_32;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 > v3)
  {
    v4 = *(a1 + 80);
    do
    {
      v5 = v2 > 2 * v3;
      v3 *= 2;
      ++v4;
    }

    while (v5);
    *(a1 + 80) = v4;
  }

  v6 = operator new(2 * v2 + 2);
  v7 = 0;
  v8 = 0;
  *(a1 + 56) = v6;
  v9 = *(a1 + 16);
  v10 = *(a1 + 8);
  do
  {
    if (v8 > v9)
    {
      ++v7;
    }

    v9 <<= v8 > v9;
    *v6++ = v7;
    ++v8;
  }

  while (v10 >= v8);
  *(a1 + 72) = operator new(40 * *(a1 + 80));
  if (!qword_620A0)
  {
    v11 = *(a1 + 32);
    goto LABEL_14;
  }

  v11 = *(a1 + 32);
  if (qword_620A8 < v11)
  {
LABEL_14:
    v12 = operator new(16 * v11);
    *(a1 + 88) = v12;
    v13 = *(a1 + 32);
    if (v13 < 2)
    {
      v13 = 1;
    }

    else
    {
      v14 = (v12 + 2);
      for (i = 1; i != v13; ++i)
      {
        *(v14 - 2) = v14;
        *(v14 - 1) = i;
        v14 += 16;
      }
    }

    v16 = &v12[2 * v13];
    *(v16 - 2) = 0;
    *(v16 - 1) = v13;
    v17 = qword_620A0;
    if (qword_620A0)
    {
      if (v18)
      {
        v19 = qword_620A8;
        do
        {
          if (*v18)
          {
            v20 = (*v18 - v17) >> 4;
          }

          else
          {
            v20 = v19;
          }

          v12[2 * v18[1] - 2] = &v12[2 * v20];
          v18 = *v18;
        }

        while (v18);
      }

      operator delete(v17);
      v21 = *(a1 + 88);
    }

    else
    {
      v21 = *(a1 + 88);
    }

    v22 = *(a1 + 32);
    qword_620A0 = v21;
    qword_620A8 = v22;
  }

  __gnu_cxx::__scoped_lock::~__scoped_lock(&v33);
  if (*(a1 + 80))
  {
    v23 = 0;
    v24 = 0;
    v25 = *(a1 + 32) + 1;
    v26 = 8 * v25;
    v27 = 12 * v25;
    do
    {
      v28 = (*(a1 + 72) + v23);
      v29 = operator new(v26);
      bzero(v29, v26);
      *v28 = v29;
      v28[1] = 0;
      v30 = operator new(v26);
      bzero(v30, v26);
      v28[2] = v30;
      v31 = operator new(v27);
      bzero(v31, v27);
      v28[3] = v31;
      v32 = operator new(0x40uLL);
      v28[4] = v32;
      *(v32 + 8) = 0u;
      *(v32 + 24) = 0u;
      *(v32 + 40) = 0u;
      *(v32 + 7) = 0;
      *v32 = 850045863;
      ++v24;
      v23 += 40;
    }

    while (v24 < *(a1 + 80));
  }

LABEL_32:
  *(a1 + 64) = 1;
}

{
  if (*(a1 + 48))
  {
    goto LABEL_32;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 > v3)
  {
    v4 = *(a1 + 80);
    do
    {
      v5 = v2 > 2 * v3;
      v3 *= 2;
      ++v4;
    }

    while (v5);
    *(a1 + 80) = v4;
  }

  v6 = operator new(2 * v2 + 2);
  v7 = 0;
  v8 = 0;
  *(a1 + 56) = v6;
  v9 = *(a1 + 16);
  v10 = *(a1 + 8);
  do
  {
    if (v8 > v9)
    {
      ++v7;
    }

    v9 <<= v8 > v9;
    *v6++ = v7;
    ++v8;
  }

  while (v10 >= v8);
  *(a1 + 72) = operator new(40 * *(a1 + 80));
  if (!qword_620A0)
  {
    v11 = *(a1 + 32);
    goto LABEL_14;
  }

  v11 = *(a1 + 32);
  if (qword_620A8 < v11)
  {
LABEL_14:
    v12 = operator new(16 * v11);
    *(a1 + 88) = v12;
    v13 = *(a1 + 32);
    if (v13 < 2)
    {
      v13 = 1;
    }

    else
    {
      v14 = (v12 + 2);
      for (i = 1; i != v13; ++i)
      {
        *(v14 - 2) = v14;
        *(v14 - 1) = i;
        v14 += 16;
      }
    }

    v16 = &v12[2 * v13];
    *(v16 - 2) = 0;
    *(v16 - 1) = v13;
    v17 = qword_620A0;
    if (qword_620A0)
    {
      if (v18)
      {
        v19 = qword_620A8;
        do
        {
          if (*v18)
          {
            v20 = (*v18 - v17) >> 4;
          }

          else
          {
            v20 = v19;
          }

          v12[2 * v18[1] - 2] = &v12[2 * v20];
          v18 = *v18;
        }

        while (v18);
      }

      operator delete(v17);
      v21 = *(a1 + 88);
    }

    else
    {
      v21 = *(a1 + 88);
    }

    v22 = *(a1 + 32);
    qword_620A0 = v21;
    qword_620A8 = v22;
  }

  __gnu_cxx::__scoped_lock::~__scoped_lock(&v33);
  if (*(a1 + 80))
  {
    v23 = 0;
    v24 = 0;
    v25 = *(a1 + 32) + 1;
    v26 = 8 * v25;
    v27 = 12 * v25;
    do
    {
      v28 = (*(a1 + 72) + v23);
      v29 = operator new(v26);
      bzero(v29, v26);
      *v28 = v29;
      v28[1] = 0;
      v30 = operator new(v26);
      bzero(v30, v26);
      v28[2] = v30;
      v31 = operator new(v27);
      bzero(v31, v27);
      v28[3] = v31;
      v32 = operator new(0x40uLL);
      v28[4] = v32;
      *(v32 + 8) = 0u;
      *(v32 + 24) = 0u;
      *(v32 + 40) = 0u;
      *(v32 + 7) = 0;
      *v32 = 850045863;
      ++v24;
      v23 += 40;
    }

    while (v24 < *(a1 + 80));
  }

LABEL_32:
  *(a1 + 64) = 1;
}

void sub_1F5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __gnu_cxx::__scoped_lock::~__scoped_lock(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::_M_destroy_thread_key(_anonymous_namespace_ *this, void *a2)
{
  v3 = qword_620A0 + 16 * this;
  __gnu_cxx::__scoped_lock::~__scoped_lock(&v4);
}

void sub_2270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __gnu_cxx::__scoped_lock::~__scoped_lock(va);
  _Unwind_Resume(a1);
}

double _GLOBAL__sub_I_mt_allocator_cc()
{
  result = 0.0;
  unk_620C0 = 0u;
  unk_620D0 = 0u;
  unk_620E0 = 0u;
  qword_620F0 = 0;
  return result;
}

void std::locale::_Impl::_M_remove_reference(atomic_uint *this)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (this && add == 1)
  {
    std::locale::_Impl::~_Impl(this);

    operator delete(v3);
  }
}

BOOL std::locale::_Impl::_M_check_same_name(std::locale::_Impl *this)
{
  v1 = *(this + 4);
  if (!v1[1])
  {
    return 1;
  }

  v2 = 0;
  v5 = *v1;
  v4 = v1 + 1;
  v3 = v5;
  do
  {
    v6 = v4[v2];
    v7 = strcmp(v3, v6);
    v8 = v7 == 0;
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v2 >= 4;
    }

    v3 = v6;
    ++v2;
  }

  while (!v9);
  return v8;
}

uint64_t std::ctype<char>::widen(_BYTE *a1, void *__src, uint64_t a3, void *__dst)
{
  if (a1[56])
  {
    if (a1[56] == 1)
    {
      memcpy(__dst, __src, a3 - __src);
      return a3;
    }
  }

  else
  {
    std::ctype<char>::_M_widen_init(a1);
  }

  v9 = *(*a1 + 56);

  return v9(a1, __src, a3, __dst);
}

uint64_t std::ctype<char>::_M_widen_init(_BYTE *a1)
{
  v2 = 0;
  v3 = xmmword_51D20;
  v4.i64[0] = 0x1010101010101010;
  v4.i64[1] = 0x1010101010101010;
  do
  {
    *&__s1[v2] = v3;
    v2 += 16;
    v3 = vaddq_s8(v3, v4);
  }

  while (v2 != 256);
  (*(*a1 + 56))(a1, __s1, &v8, a1 + 57, v3);
  result = memcmp(__s1, a1 + 57, 0x100uLL);
  if (result)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  a1[56] = v6;
  return result;
}

uint64_t std::ctype<char>::narrow(uint64_t a1, unsigned __int8 a2, int a3)
{
  v3 = a1 + 313;
  v4 = a2;
  v5 = *(a1 + 313 + a2);
  if (!v5)
  {
    v7 = (*(*a1 + 64))(a1);
    v5 = a3;
    if (v7 != a3)
    {
      *(v3 + v4) = v7;
      return v7;
    }
  }

  return v5;
}

BOOL std::ctype<char>::is(uint64_t a1, unint64_t a2, __darwin_ct_rune_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(v3 + 8 * a3);
    return (v4 & a2) != 0;
  }

  if ((a3 & 0x80000000) == 0)
  {
    v4 = _DefaultRuneLocale.__runetype[a3];
    return (v4 & a2) != 0;
  }

  return __maskrune(a3, a2) != 0;
}

unsigned __int8 *std::ctype<char>::scan_is(uint64_t a1, unint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = a3;
  v7 = *(a1 + 48);
  if (!v7)
  {
    if (a3 >= a4)
    {
      return v5;
    }

    while (1)
    {
      v9 = *v5;
      v10 = *(a1 + 48);
      if (v10)
      {
        v11 = *(v10 + 8 * v9);
      }

      else
      {
        if ((v9 & 0x80) != 0)
        {
          if (__maskrune(v9, a2))
          {
            return v5;
          }

          goto LABEL_12;
        }

        v11 = _DefaultRuneLocale.__runetype[v9];
      }

      if ((v11 & a2) != 0)
      {
        return v5;
      }

LABEL_12:
      if (++v5 == a4)
      {
        return a4;
      }
    }
  }

  if (a3 < a4)
  {
    while ((*(v7 + 8 * *v5) & a2) == 0)
    {
      if (++v5 == a4)
      {
        return a4;
      }
    }
  }

  return v5;
}

unsigned __int8 *std::ctype<char>::scan_not(uint64_t a1, unint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = a3;
  v7 = *(a1 + 48);
  if (!v7)
  {
    if (a3 >= a4)
    {
      return v5;
    }

    while (1)
    {
      v9 = *v5;
      v10 = *(a1 + 48);
      if (v10)
      {
        v11 = *(v10 + 8 * v9);
      }

      else
      {
        if ((v9 & 0x80) != 0)
        {
          if (!__maskrune(v9, a2))
          {
            return v5;
          }

          goto LABEL_12;
        }

        v11 = _DefaultRuneLocale.__runetype[v9];
      }

      if ((v11 & a2) == 0)
      {
        return v5;
      }

LABEL_12:
      if (++v5 == a4)
      {
        return a4;
      }
    }
  }

  if (a3 < a4)
  {
    while ((*(v7 + 8 * *v5) & a2) != 0)
    {
      if (++v5 == a4)
      {
        return a4;
      }
    }
  }

  return v5;
}

uint64_t std::codecvt<char,char,__mbstate_t>::codecvt(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5C398;
  *(a1 + 16) = std::locale::facet::_S_get_c_locale(a1, a2, a3, a4);
  return a1;
}

uint64_t std::codecvt<char,char,__mbstate_t>::codecvt(uint64_t a1, int **a2, uint64_t a3)
{
  v5 = a2;
  *(a1 + 8) = a3 != 0;
  *a1 = off_5C398;
  *(a1 + 16) = std::locale::facet::_S_clone_c_locale(&v5, a2);
  return a1;
}

void std::codecvt<char,char,__mbstate_t>::~codecvt(std::locale::facet *a1, int **a2)
{
  *a1 = off_5C398;
  std::locale::facet::_S_destroy_c_locale(a1 + 2, a2);

  std::locale::facet::~facet(a1);
}

{
  std::codecvt<char,char,__mbstate_t>::~codecvt(a1, a2);

  operator delete(v2);
}

uint64_t std::codecvt<char,char,__mbstate_t>::do_out(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  *a5 = a3;
  *a8 = a6;
  return 3;
}

uint64_t std::codecvt<char,char,__mbstate_t>::do_in(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  *a5 = a3;
  *a8 = a6;
  return 3;
}

unint64_t std::codecvt<char,char,__mbstate_t>::do_length(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a4 - a3 >= a5)
  {
    return a5;
  }

  else
  {
    return a4 - a3;
  }
}

uint64_t std::codecvt<wchar_t,char,__mbstate_t>::codecvt(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5C3F0;
  *(a1 + 16) = std::locale::facet::_S_get_c_locale(a1, a2, a3, a4);
  return a1;
}

uint64_t std::codecvt<wchar_t,char,__mbstate_t>::codecvt(uint64_t a1, int **a2, uint64_t a3)
{
  v5 = a2;
  *(a1 + 8) = a3 != 0;
  *a1 = off_5C3F0;
  *(a1 + 16) = std::locale::facet::_S_clone_c_locale(&v5, a2);
  return a1;
}

void std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(std::locale::facet *a1, int **a2)
{
  *a1 = off_5C3F0;
  std::locale::facet::_S_destroy_c_locale(a1 + 2, a2);

  std::locale::facet::~facet(a1);
}

{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(a1, a2);

  operator delete(v2);
}

std::istream *std::istream::ignore(std::istream *this, uint64_t a2)
{
  if (a2 == 1)
  {

    return std::istream::ignore(this);
  }

  else
  {
    *(this + 1) = 0;
    std::istream::sentry::sentry(&v15, this, 1);
    if (a2 >= 1 && (v15 & 1) != 0)
    {
      v5 = *(this + *(*this - 24) + 232);
      v6 = v5[2];
      if (v6 >= v5[3])
      {
        v7 = (*(*v5 + 72))(*(this + *(*this - 24) + 232));
      }

      else
      {
        v7 = *v6;
      }

      v8 = 0;
      for (i = *(this + 1); ; i = *(this + 1))
      {
        while (i >= a2)
        {
          v14 = v7 == -1;
          if (a2 != 0x7FFFFFFFFFFFFFFFLL || v7 == -1)
          {
            goto LABEL_24;
          }

          i = 0x8000000000000000;
          *(this + 1) = 0x8000000000000000;
          v8 = 1;
        }

        if (v7 == -1)
        {
          break;
        }

        v11 = v5[2];
        v10 = v5[3];
        v12 = v10 - v11;
        if (a2 - i < (v10 - v11))
        {
          v12 = a2 - i;
        }

        if (v12 < 2)
        {
          *(this + 1) = i + 1;
          v7 = std::streambuf::snextc(v5);
        }

        else
        {
          v13 = (v11 + v12);
          v5[2] = v13;
          *(this + 1) = v12 + i;
          if (v13 >= v10)
          {
            v7 = (*(*v5 + 72))(v5);
          }

          else
          {
            v7 = *v13;
          }
        }
      }

      v14 = 1;
LABEL_24:
      if (v8)
      {
        *(this + 1) = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        std::ios::clear(this + *(*this - 24), *(this + *(*this - 24) + 32) | 2);
      }
    }

    return this;
  }
}

void sub_2CAC(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2C64);
  }

  __cxa_rethrow();
}

uint64_t *std::wistream::ignore(uint64_t *a1, uint64_t a2)
{
  if (a2 == 1)
  {

    return std::wistream::ignore(a1);
  }

  else
  {
    a1[1] = 0;
    std::wistream::sentry::sentry(&v15, a1, 1);
    if (a2 >= 1 && (v15 & 1) != 0)
    {
      v5 = *(a1 + *(*a1 - 24) + 232);
      v6 = v5[2];
      if (v6 >= v5[3])
      {
        v7 = (*(*v5 + 72))(*(a1 + *(*a1 - 24) + 232));
      }

      else
      {
        v7 = *v6;
      }

      v8 = 0;
      for (i = a1[1]; ; i = a1[1])
      {
        while (i >= a2)
        {
          v14 = v7 == -1;
          if (a2 != 0x7FFFFFFFFFFFFFFFLL || v7 == -1)
          {
            goto LABEL_25;
          }

          i = 0x8000000000000000;
          a1[1] = 0x8000000000000000;
          v8 = 1;
        }

        if (v7 == -1)
        {
          break;
        }

        v11 = v5[2];
        v10 = v5[3];
        if (a2 - i >= (v10 - v11) >> 2)
        {
          v12 = (v10 - v11) >> 2;
        }

        else
        {
          v12 = a2 - i;
        }

        if (v12 < 2)
        {
          a1[1] = i + 1;
          v7 = std::wstreambuf::snextc(v5);
        }

        else
        {
          v13 = (v11 + 4 * v12);
          v5[2] = v13;
          a1[1] = v12 + i;
          if (v13 >= v10)
          {
            v7 = (*(*v5 + 72))(v5);
          }

          else
          {
            v7 = *v13;
          }
        }
      }

      v14 = 1;
LABEL_25:
      if (v8)
      {
        a1[1] = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 2);
      }
    }

    return a1;
  }
}

void sub_2EF8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2EB0);
  }

  __cxa_rethrow();
}

std::istream *std::operator>><float,char,std::char_traits<char>>(std::istream *a1, _DWORD *a2)
{
  std::operator>><char,std::char_traits<char>>(a1, &v8);
  if (v8 != 40)
  {
    std::istream::putback(a1, v8);
    std::istream::_M_extract<float>(a1, &v10);
    goto LABEL_7;
  }

  v4 = std::istream::_M_extract<float>(a1, &v10);
  std::operator>><char,std::char_traits<char>>(v4, &v8);
  if (v8 == 41)
  {
LABEL_7:
    *a2 = v10;
    a2[1] = 0;
    return a1;
  }

  if (v8 == 44 && (v5 = std::istream::_M_extract<float>(a1, &v9), std::operator>><char,std::char_traits<char>>(v5, &v8), v8 == 41))
  {
    v6 = v9;
    *a2 = v10;
    a2[1] = v6;
  }

  else
  {
    std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

std::ostream *std::operator<<<float,char,std::char_traits<char>>(std::ostream *a1, float *a2)
{
  std::ostringstream::basic_ostringstream(&v16, 16);
  v4 = v16;
  v5 = *a1;
  *&v17[*(v16 - 24) + 16] = *(a1 + *(*a1 - 24) + 24);
  v6 = *(v4 - 24);
  std::locale::locale(&v14, (a1 + *(v5 - 24) + 208));
  std::ios::imbue(&v17[v6 - 8], &v14, &v15);
  std::locale::~locale(&v15);
  std::locale::~locale(&v14);
  *&v17[*(v16 - 24)] = *(a1 + *(*a1 - 24) + 8);
  LOBYTE(v14) = 40;
  v7 = std::__ostream_insert<char,std::char_traits<char>>(&v16, &v14, 1);
  v8 = std::ostream::_M_insert<double>(v7, *a2);
  LOBYTE(v14) = 44;
  v9 = std::__ostream_insert<char,std::char_traits<char>>(v8, &v14, 1);
  v10 = std::ostream::_M_insert<double>(v9, a2[1]);
  LOBYTE(v14) = 41;
  std::__ostream_insert<char,std::char_traits<char>>(v10, &v14, 1);
  std::stringbuf::str(v17, &v14);
  v11 = std::__ostream_insert<char,std::char_traits<char>>(a1, v14, *(v14 - 3));
  v12 = v14 - 6;
  if (v14 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v14 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v12);
  }

  std::ostringstream::~ostringstream(&v16);
  return v11;
}

void sub_323C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if ((a3 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a3 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a3 - 24));
  }

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

std::istream *std::operator>><double,char,std::char_traits<char>>(std::istream *a1, void *a2)
{
  std::operator>><char,std::char_traits<char>>(a1, &v8);
  if (v8 != 40)
  {
    std::istream::putback(a1, v8);
    std::istream::_M_extract<double>(a1, &v10);
    goto LABEL_7;
  }

  v4 = std::istream::_M_extract<double>(a1, &v10);
  std::operator>><char,std::char_traits<char>>(v4, &v8);
  if (v8 == 41)
  {
LABEL_7:
    *a2 = v10;
    a2[1] = 0;
    return a1;
  }

  if (v8 == 44 && (v5 = std::istream::_M_extract<double>(a1, &v9), std::operator>><char,std::char_traits<char>>(v5, &v8), v8 == 41))
  {
    v6 = v9;
    *a2 = v10;
    a2[1] = v6;
  }

  else
  {
    std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

std::ostream *std::operator<<<double,char,std::char_traits<char>>(std::ostream *a1, double *a2)
{
  std::ostringstream::basic_ostringstream(&v16, 16);
  v4 = v16;
  v5 = *a1;
  *&v17[*(v16 - 24) + 16] = *(a1 + *(*a1 - 24) + 24);
  v6 = *(v4 - 24);
  std::locale::locale(&v14, (a1 + *(v5 - 24) + 208));
  std::ios::imbue(&v17[v6 - 8], &v14, &v15);
  std::locale::~locale(&v15);
  std::locale::~locale(&v14);
  *&v17[*(v16 - 24)] = *(a1 + *(*a1 - 24) + 8);
  LOBYTE(v14) = 40;
  v7 = std::__ostream_insert<char,std::char_traits<char>>(&v16, &v14, 1);
  v8 = std::ostream::_M_insert<double>(v7, *a2);
  LOBYTE(v14) = 44;
  v9 = std::__ostream_insert<char,std::char_traits<char>>(v8, &v14, 1);
  v10 = std::ostream::_M_insert<double>(v9, a2[1]);
  LOBYTE(v14) = 41;
  std::__ostream_insert<char,std::char_traits<char>>(v10, &v14, 1);
  std::stringbuf::str(v17, &v14);
  v11 = std::__ostream_insert<char,std::char_traits<char>>(a1, v14, *(v14 - 3));
  v12 = v14 - 6;
  if (v14 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v14 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v12);
  }

  std::ostringstream::~ostringstream(&v16);
  return v11;
}

void sub_3584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if ((a3 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a3 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a3 - 24));
  }

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

std::istream *std::operator>><long double,char,std::char_traits<char>>(std::istream *a1, void *a2)
{
  std::operator>><char,std::char_traits<char>>(a1, &v8);
  if (v8 != 40)
  {
    std::istream::putback(a1, v8);
    std::istream::_M_extract<long double>(a1, &v10);
    goto LABEL_7;
  }

  v4 = std::istream::_M_extract<long double>(a1, &v10);
  std::operator>><char,std::char_traits<char>>(v4, &v8);
  if (v8 == 41)
  {
LABEL_7:
    *a2 = v10;
    a2[1] = 0;
    return a1;
  }

  if (v8 == 44 && (v5 = std::istream::_M_extract<long double>(a1, &v9), std::operator>><char,std::char_traits<char>>(v5, &v8), v8 == 41))
  {
    v6 = v9;
    *a2 = v10;
    a2[1] = v6;
  }

  else
  {
    std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

std::ostream *std::operator<<<long double,char,std::char_traits<char>>(std::ostream *a1, double *a2)
{
  std::ostringstream::basic_ostringstream(&v16, 16);
  v4 = v16;
  v5 = *a1;
  *&v17[*(v16 - 24) + 16] = *(a1 + *(*a1 - 24) + 24);
  v6 = *(v4 - 24);
  std::locale::locale(&v14, (a1 + *(v5 - 24) + 208));
  std::ios::imbue(&v17[v6 - 8], &v14, &v15);
  std::locale::~locale(&v15);
  std::locale::~locale(&v14);
  *&v17[*(v16 - 24)] = *(a1 + *(*a1 - 24) + 8);
  LOBYTE(v14) = 40;
  v7 = std::__ostream_insert<char,std::char_traits<char>>(&v16, &v14, 1);
  v8 = std::ostream::_M_insert<long double>(v7, *a2);
  LOBYTE(v14) = 44;
  v9 = std::__ostream_insert<char,std::char_traits<char>>(v8, &v14, 1);
  v10 = std::ostream::_M_insert<long double>(v9, a2[1]);
  LOBYTE(v14) = 41;
  std::__ostream_insert<char,std::char_traits<char>>(v10, &v14, 1);
  std::stringbuf::str(v17, &v14);
  v11 = std::__ostream_insert<char,std::char_traits<char>>(a1, v14, *(v14 - 3));
  v12 = v14 - 6;
  if (v14 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v14 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v12);
  }

  std::ostringstream::~ostringstream(&v16);
  return v11;
}

void sub_38CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if ((a3 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a3 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a3 - 24));
  }

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::operator>><float,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, _DWORD *a2)
{
  std::operator>><wchar_t,std::char_traits<wchar_t>>(a1, &v8);
  if (v8 != 40)
  {
    std::wistream::putback(a1, v8);
    std::wistream::_M_extract<float>(a1, &v10);
    goto LABEL_7;
  }

  v4 = std::wistream::_M_extract<float>(a1, &v10);
  std::operator>><wchar_t,std::char_traits<wchar_t>>(v4, &v8);
  if (v8 == 41)
  {
LABEL_7:
    *a2 = v10;
    a2[1] = 0;
    return a1;
  }

  if (v8 == 44 && (v5 = std::wistream::_M_extract<float>(a1, &v9), std::operator>><wchar_t,std::char_traits<wchar_t>>(v5, &v8), v8 == 41))
  {
    v6 = v9;
    *a2 = v10;
    a2[1] = v6;
  }

  else
  {
    std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

uint64_t *std::operator<<<float,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, float *a2)
{
  std::wostringstream::basic_ostringstream(&v17, 16);
  v4 = v17;
  v5 = *a1;
  *&v18[*(v17 - 24) + 16] = *(a1 + *(*a1 - 24) + 24);
  v6 = *(v4 - 24);
  std::locale::locale(&v15, (a1 + *(v5 - 24) + 208));
  std::wios::imbue(&v18[v6 - 8], &v15, &v16);
  std::locale::~locale(&v16);
  std::locale::~locale(&v15);
  v7 = v17;
  *&v18[*(v17 - 24)] = *(a1 + *(*a1 - 24) + 8);
  LODWORD(v15) = std::wios::widen(&v18[*(v7 - 24) - 8]);
  v8 = std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(&v17, &v15, 1);
  v9 = std::wostream::_M_insert<double>(v8, *a2);
  LODWORD(v15) = std::wios::widen(v9 + *(*v9 - 24));
  v10 = std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(v9, &v15, 1);
  v11 = std::wostream::_M_insert<double>(v10, a2[1]);
  LODWORD(v15) = std::wios::widen(v11 + *(*v11 - 24));
  std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(v11, &v15, 1);
  std::wstringbuf::str(v18, &v15);
  v12 = std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(a1, v15, *(v15 - 3));
  v13 = v15 - 6;
  if (v15 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v15 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v13);
  }

  std::wostringstream::~wostringstream(&v17);
  return v12;
}

void sub_3C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if ((a3 - 24) != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add((a3 - 8), 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy((a3 - 24));
  }

  std::wostringstream::~wostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::operator>><double,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, void *a2)
{
  std::operator>><wchar_t,std::char_traits<wchar_t>>(a1, &v8);
  if (v8 != 40)
  {
    std::wistream::putback(a1, v8);
    std::wistream::_M_extract<double>(a1, &v10);
    goto LABEL_7;
  }

  v4 = std::wistream::_M_extract<double>(a1, &v10);
  std::operator>><wchar_t,std::char_traits<wchar_t>>(v4, &v8);
  if (v8 == 41)
  {
LABEL_7:
    *a2 = v10;
    a2[1] = 0;
    return a1;
  }

  if (v8 == 44 && (v5 = std::wistream::_M_extract<double>(a1, &v9), std::operator>><wchar_t,std::char_traits<wchar_t>>(v5, &v8), v8 == 41))
  {
    v6 = v9;
    *a2 = v10;
    a2[1] = v6;
  }

  else
  {
    std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

uint64_t *std::operator<<<double,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, double *a2)
{
  std::wostringstream::basic_ostringstream(&v17, 16);
  v4 = v17;
  v5 = *a1;
  *&v18[*(v17 - 24) + 16] = *(a1 + *(*a1 - 24) + 24);
  v6 = *(v4 - 24);
  std::locale::locale(&v15, (a1 + *(v5 - 24) + 208));
  std::wios::imbue(&v18[v6 - 8], &v15, &v16);
  std::locale::~locale(&v16);
  std::locale::~locale(&v15);
  v7 = v17;
  *&v18[*(v17 - 24)] = *(a1 + *(*a1 - 24) + 8);
  LODWORD(v15) = std::wios::widen(&v18[*(v7 - 24) - 8]);
  v8 = std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(&v17, &v15, 1);
  v9 = std::wostream::_M_insert<double>(v8, *a2);
  LODWORD(v15) = std::wios::widen(v9 + *(*v9 - 24));
  v10 = std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(v9, &v15, 1);
  v11 = std::wostream::_M_insert<double>(v10, a2[1]);
  LODWORD(v15) = std::wios::widen(v11 + *(*v11 - 24));
  std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(v11, &v15, 1);
  std::wstringbuf::str(v18, &v15);
  v12 = std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(a1, v15, *(v15 - 3));
  v13 = v15 - 6;
  if (v15 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v15 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v13);
  }

  std::wostringstream::~wostringstream(&v17);
  return v12;
}

void sub_4064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if ((a3 - 24) != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add((a3 - 8), 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy((a3 - 24));
  }

  std::wostringstream::~wostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::operator>><long double,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, void *a2)
{
  std::operator>><wchar_t,std::char_traits<wchar_t>>(a1, &v8);
  if (v8 != 40)
  {
    std::wistream::putback(a1, v8);
    std::wistream::_M_extract<long double>(a1, &v10);
    goto LABEL_7;
  }

  v4 = std::wistream::_M_extract<long double>(a1, &v10);
  std::operator>><wchar_t,std::char_traits<wchar_t>>(v4, &v8);
  if (v8 == 41)
  {
LABEL_7:
    *a2 = v10;
    a2[1] = 0;
    return a1;
  }

  if (v8 == 44 && (v5 = std::wistream::_M_extract<long double>(a1, &v9), std::operator>><wchar_t,std::char_traits<wchar_t>>(v5, &v8), v8 == 41))
  {
    v6 = v9;
    *a2 = v10;
    a2[1] = v6;
  }

  else
  {
    std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

uint64_t *std::operator<<<long double,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, double *a2)
{
  std::wostringstream::basic_ostringstream(&v17, 16);
  v4 = v17;
  v5 = *a1;
  *&v18[*(v17 - 24) + 16] = *(a1 + *(*a1 - 24) + 24);
  v6 = *(v4 - 24);
  std::locale::locale(&v15, (a1 + *(v5 - 24) + 208));
  std::wios::imbue(&v18[v6 - 8], &v15, &v16);
  std::locale::~locale(&v16);
  std::locale::~locale(&v15);
  v7 = v17;
  *&v18[*(v17 - 24)] = *(a1 + *(*a1 - 24) + 8);
  LODWORD(v15) = std::wios::widen(&v18[*(v7 - 24) - 8]);
  v8 = std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(&v17, &v15, 1);
  v9 = std::wostream::_M_insert<long double>(v8, *a2);
  LODWORD(v15) = std::wios::widen(v9 + *(*v9 - 24));
  v10 = std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(v9, &v15, 1);
  v11 = std::wostream::_M_insert<long double>(v10, a2[1]);
  LODWORD(v15) = std::wios::widen(v11 + *(*v11 - 24));
  std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(v11, &v15, 1);
  std::wstringbuf::str(v18, &v15);
  v12 = std::__ostream_insert<wchar_t,std::char_traits<wchar_t>>(a1, v15, *(v15 - 3));
  v13 = v15 - 6;
  if (v15 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v15 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v13);
  }

  std::wostringstream::~wostringstream(&v17);
  return v12;
}

void sub_442C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if ((a3 - 24) != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add((a3 - 8), 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy((a3 - 24));
  }

  std::wostringstream::~wostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::ctype<char>::ctype(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(a1 + 8) = a5 != 0;
  *a1 = off_5C488;
  if (a3)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a3;
  bzero((a1 + 56), 0x202uLL);
  return a1;
}

{
  *(a1 + 8) = a5 != 0;
  *a1 = off_5C488;
  if (a3)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a3;
  bzero((a1 + 56), 0x202uLL);
  return a1;
}

uint64_t std::ctype<char>::ctype(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(a1 + 8) = a4 != 0;
  *a1 = off_5C488;
  if (a2)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  bzero((a1 + 56), 0x202uLL);
  return a1;
}

{
  *(a1 + 8) = a4 != 0;
  *a1 = off_5C488;
  if (a2)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  bzero((a1 + 56), 0x202uLL);
  return a1;
}

_BYTE *std::ctype<char>::do_toupper(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    do
    {
      *v4 = __toupper(*v4);
      ++v4;
    }

    while (v4 != a3);
  }

  return a3;
}

_BYTE *std::ctype<char>::do_tolower(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    do
    {
      *v4 = __tolower(*v4);
      ++v4;
    }

    while (v4 != a3);
  }

  return a3;
}

void std::ctype<char>::~ctype(uint64_t a1, int **a2)
{
  *a1 = off_5C488;
  std::locale::facet::_S_destroy_c_locale((a1 + 16), a2);
  if (*(a1 + 24) == 1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  std::locale::facet::~facet(a1);
}

{
  std::ctype<char>::~ctype(a1, a2);

  operator delete(v2);
}

uint64_t std::ctype<wchar_t>::ctype(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5C4E8;
  *(a1 + 16) = std::locale::facet::_S_get_c_locale(a1, a2, a3, a4);
  *(a1 + 24) = 0;
  std::ctype<wchar_t>::_M_initialize_ctype(a1);
  return a1;
}

uint64_t std::ctype<wchar_t>::ctype(uint64_t a1, int **a2, uint64_t a3)
{
  v5 = a2;
  *(a1 + 8) = a3 != 0;
  *a1 = off_5C4E8;
  *(a1 + 16) = std::locale::facet::_S_clone_c_locale(&v5, a2);
  *(a1 + 24) = 0;
  std::ctype<wchar_t>::_M_initialize_ctype(a1);
  return a1;
}

void std::ctype<wchar_t>::~ctype(std::locale::facet *a1, int **a2)
{
  *a1 = off_5C4E8;
  std::locale::facet::_S_destroy_c_locale(a1 + 2, a2);

  std::locale::facet::~facet(a1);
}

{
  std::ctype<wchar_t>::~ctype(a1, a2);

  operator delete(v2);
}

uint64_t std::ctype_byname<wchar_t>::ctype_byname(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *std::ctype<wchar_t>::ctype(a1, a3, a3, a4) = off_5F960;
  if (*a2 != 67 || *(a2 + 1))
  {
    if (strcmp(a2, "POSIX"))
    {
      std::locale::facet::_S_destroy_c_locale((a1 + 16), v6);
      std::locale::facet::_S_create_c_locale((a1 + 16), a2, 0, v7);
      std::ctype<wchar_t>::_M_initialize_ctype(a1);
    }
  }

  return a1;
}

BOOL std::ctype<wchar_t>::do_is(int a1, unint64_t a2, unsigned int a3)
{
  if (a3 <= 0x7F)
  {
    return (_DefaultRuneLocale.__runetype[a3] & a2) != 0;
  }

  else
  {
    return __maskrune(a3, a2) != 0;
  }
}

unint64_t std::ctype<wchar_t>::do_is(uint64_t a1, __darwin_ct_rune_t *a2, unint64_t a3, void *a4)
{
  if (a2 < a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6++;
      *a4++ = __maskrune(v7, 0x5F700uLL);
    }

    while (v6 < a3);
  }

  return a3;
}

unsigned int *std::ctype<wchar_t>::do_scan_is(int a1, unint64_t a2, unsigned int *a3, unint64_t a4)
{
  for (i = a3; i < a4; ++i)
  {
    v7 = *i;
    if (v7 <= 0x7F)
    {
      if ((_DefaultRuneLocale.__runetype[v7] & a2) != 0)
      {
        return i;
      }
    }

    else if (__maskrune(v7, a2))
    {
      return i;
    }
  }

  return i;
}

unsigned int *std::ctype<wchar_t>::do_scan_not(int a1, unint64_t a2, unsigned int *a3, unint64_t a4)
{
  for (i = a3; i < a4; ++i)
  {
    v7 = *i;
    if (v7 <= 0x7F)
    {
      if ((_DefaultRuneLocale.__runetype[v7] & a2) == 0)
      {
        return i;
      }
    }

    else if (!__maskrune(v7, a2))
    {
      return i;
    }
  }

  return i;
}

void __gnu_debug::_Safe_sequence_base::_M_detach_all(__gnu_debug::_Safe_sequence_base *this)
{
  v2 = *this;
  if (*this)
  {
    do
    {
      v3 = *(v2 + 24);
      __gnu_debug::_Safe_iterator_base::_M_detach_single(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    do
    {
      v5 = *(v4 + 24);
      __gnu_debug::_Safe_iterator_base::_M_detach_single(v4);
      v4 = v5;
    }

    while (v5);
  }

  __gnu_cxx::__scoped_lock::~__scoped_lock(&v6);
}

uint64_t __gnu_debug::_Safe_iterator_base::_M_detach_single(uint64_t this)
{
  v1 = *this;
  if (*this)
  {
    v3 = *(this + 16);
    v2 = *(this + 24);
    if (v3)
    {
      *(v3 + 24) = v2;
    }

    if (v2)
    {
      *(v2 + 16) = v3;
    }

    if (v1[1] == this)
    {
      v1[1] = v2;
    }

    if (*v1 == this)
    {
      *v1 = v2;
    }
  }

  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void __gnu_debug::_Safe_sequence_base::_M_detach_singular(__gnu_debug::_Safe_sequence_base *this)
{
  v2 = *this;
  if (*this)
  {
    do
    {
      v3 = *(v2 + 24);
      if (!*v2 || *(v2 + 8) != *(*v2 + 16))
      {
        __gnu_debug::_Safe_iterator_base::_M_detach_single(v2);
      }

      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    do
    {
      v5 = *(v4 + 24);
      if (!*v4 || *(v4 + 8) != *(*v4 + 16))
      {
        __gnu_debug::_Safe_iterator_base::_M_detach_single(v4);
      }

      v4 = v5;
    }

    while (v5);
  }

  __gnu_cxx::__scoped_lock::~__scoped_lock(&v6);
}

void __gnu_debug::_Safe_sequence_base::_M_revalidate_singular(__gnu_debug::_Safe_sequence_base *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 4);
    do
    {
      *(v2 + 8) = v3;
      v2 = *(v2 + 24);
    }

    while (v2);
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(this + 4);
    do
    {
      *(v4 + 8) = v5;
      v4 = *(v4 + 24);
    }

    while (v4);
  }

  __gnu_cxx::__scoped_lock::~__scoped_lock(&v6);
}

void __gnu_debug::_Safe_sequence_base::_M_swap(__gnu_debug::_Safe_sequence_base *this, __gnu_debug::_Safe_sequence_base *a2)
{
  v4 = *this;
  *this = *a2;
  *a2 = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  LODWORD(v5) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *this;
  if (*this)
  {
    do
    {
      *v6 = this;
      v6 = v6[3];
    }

    while (v6);
  }

  v7 = *a2;
  if (*a2)
  {
    do
    {
      *v7 = a2;
      v7 = v7[3];
    }

    while (v7);
  }

  for (i = *(this + 1); i; i = i[3])
  {
    *i = this;
  }

  for (j = *(a2 + 1); j; j = j[3])
  {
    *j = a2;
  }

  __gnu_cxx::__scoped_lock::~__scoped_lock(&v10);
}

void __gnu_debug::_Safe_iterator_base::_M_attach(__gnu_debug::_Safe_iterator_base *this, __gnu_debug::_Safe_sequence_base *a2, int a3)
{
  __gnu_debug::_Safe_iterator_base::_M_attach_single(this, a2, a3);
  __gnu_cxx::__scoped_lock::~__scoped_lock(&v6);
}

uint64_t __gnu_debug::_Safe_iterator_base::_M_attach_single(__gnu_debug::_Safe_iterator_base *this, __gnu_debug::_Safe_sequence_base *a2, int a3)
{
  result = __gnu_debug::_Safe_iterator_base::_M_detach_single(this);
  if (a2)
  {
    *this = a2;
    *(this + 2) = *(a2 + 4);
    *(this + 2) = 0;
    if (a3)
    {
      v8 = *(a2 + 1);
      a2 = (a2 + 8);
      v7 = v8;
    }

    else
    {
      v7 = *a2;
    }

    *(this + 3) = v7;
    if (v7)
    {
      *(v7 + 16) = this;
    }

    *a2 = this;
  }

  return result;
}

void __gnu_debug::_Safe_iterator_base::_M_detach(__gnu_debug::_Safe_iterator_base *this)
{
  __gnu_debug::_Safe_iterator_base::_M_detach_single(this);
  __gnu_cxx::__scoped_lock::~__scoped_lock(&v2);
}

BOOL __gnu_debug::_Safe_iterator_base::_M_can_compare(__gnu_debug::_Safe_iterator_base *this, const __gnu_debug::_Safe_iterator_base *a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  if (*(this + 2) != *(v2 + 16))
  {
    return 0;
  }

  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  return v2 == v3 && *(a2 + 2) == *(v3 + 16);
}

unint64_t __gnu_debug::_Error_formatter::_Parameter::_M_print_field(__gnu_debug::_Error_formatter::_Parameter *this, const __gnu_debug::_Error_formatter *a2, const char *__s1)
{
  v3 = *this;
  if (!*this)
  {
    __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
  }

  if (v3 > 2)
  {
    if (v3 == 3)
    {
      if (strcmp(__s1, "name"))
      {
        __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
      }

      v8 = *(this + 1);
      if (!v8)
      {
        __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
      }

      goto LABEL_39;
    }

    if (v3 == 4)
    {
      if (strcmp(__s1, "name"))
      {
        __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
      }

      v8 = *(this + 1);
      if (!v8)
      {
        __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
      }

      goto LABEL_39;
    }

LABEL_47:
    __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
  }

  if (v3 == 1)
  {
    if (!strcmp(__s1, "name"))
    {
      v8 = *(this + 1);
      if (!v8)
      {
        __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
      }

      goto LABEL_39;
    }

    if (strcmp(__s1, "address"))
    {
      if (!strcmp(__s1, "type"))
      {
        v7 = *(this + 3);
        if (!v7)
        {
          __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
        }

        goto LABEL_35;
      }

      if (!strcmp(__s1, "constness"))
      {
        v11 = __gnu_debug::_Error_formatter::_Parameter::_M_print_field(__gnu_debug::_Error_formatter const*,char const*)const::__constness_names;
        v12 = *(this + 8);
      }

      else
      {
        if (strcmp(__s1, "state"))
        {
          if (strcmp(__s1, "sequence"))
          {
            if (strcmp(__s1, "seq_type"))
            {
              __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
            }

            v7 = *(this + 6);
            if (!v7)
            {
              __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
            }

            goto LABEL_35;
          }

          v9 = *(this + 5);
          if (!v9)
          {
            __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
          }

LABEL_33:
          snprintf(__str, 0x40uLL, "%p", v9);
          return __gnu_debug::_Error_formatter::_M_print_word(a2, __str);
        }

        v11 = __gnu_debug::_Error_formatter::_Parameter::_M_print_field(__gnu_debug::_Error_formatter const*,char const*)const::__state_names;
        v12 = *(this + 9);
      }

      v8 = v11[v12];
      goto LABEL_39;
    }

    v9 = *(this + 2);
    goto LABEL_33;
  }

  if (v3 != 2)
  {
    goto LABEL_47;
  }

  if (!strcmp(__s1, "name"))
  {
    v8 = *(this + 1);
    if (!v8)
    {
      __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
    }

    goto LABEL_39;
  }

  if (!strcmp(__s1, "address"))
  {
    v9 = *(this + 2);
    if (!v9)
    {
      __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
    }

    goto LABEL_33;
  }

  if (strcmp(__s1, "type"))
  {
    __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
  }

  v7 = *(this + 3);
  if (!v7)
  {
    __gnu_debug::_Error_formatter::_Parameter::_M_print_field();
  }

LABEL_35:
  v8 = (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL);
LABEL_39:

  return __gnu_debug::_Error_formatter::_M_print_word(a2, v8);
}

unint64_t __gnu_debug::_Error_formatter::_M_print_word(__gnu_debug::_Error_formatter *this, const char *a2)
{
  if (*(this + 553) == 1)
  {
    while (1)
    {
      result = strlen(a2);
      if (!result)
      {
        break;
      }

      v5 = result;
      v6 = *(this + 68);
      v7 = *(this + 67);
      if (v6 + result < v7)
      {
        if (v6 == 1)
        {
LABEL_13:
          if ((*(this + 552) & 1) == 0)
          {
            strcpy(v10, "    ");
            fputs(v10, __stderrp);
            *(this + 68) += 4;
          }
        }

        result = fputs(a2, __stderrp);
        *(this + 68) += v5;
        if (a2[v5 - 1] == 10)
        {
          *(this + 552) = 0;
          *(this + 68) = 1;
        }

        return result;
      }

      if (v6 == 1 && result >= v7)
      {
        goto LABEL_13;
      }

      *(this + 68) = 1;
      __gnu_debug::_Error_formatter::_M_print_word(this, "\n");
      if ((*(this + 553) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = __stderrp;

    return fputs(a2, v9);
  }

  return result;
}

_DWORD *__gnu_debug::_Error_formatter::_Parameter::_M_print_description(_DWORD *this, const __gnu_debug::_Error_formatter *a2)
{
  v3 = this;
  if (*this == 2)
  {
    __gnu_debug::_Error_formatter::_M_print_word(a2, "sequence ");
    if (*(v3 + 8))
    {
      snprintf(__str, 0x80uLL, "%s ", *(v3 + 8));
      __gnu_debug::_Error_formatter::_M_print_word(a2, __str);
    }

    snprintf(__str, 0x80uLL, "@ 0x%p {\n", *(v3 + 16));
    __gnu_debug::_Error_formatter::_M_print_word(a2, __str);
    if (!*(v3 + 24))
    {
      goto LABEL_20;
    }

    __gnu_debug::_Error_formatter::_M_print_word(a2, "  type = ");
    __gnu_debug::_Error_formatter::_Parameter::_M_print_field(v3, a2, "type");
    v4 = ";\n";
    goto LABEL_19;
  }

  if (*this != 1)
  {
    return this;
  }

  __gnu_debug::_Error_formatter::_M_print_word(a2, "iterator ");
  if (*(v3 + 8))
  {
    snprintf(__str, 0x80uLL, "%s ", *(v3 + 8));
    __gnu_debug::_Error_formatter::_M_print_word(a2, __str);
  }

  snprintf(__str, 0x80uLL, "@ 0x%p {\n", *(v3 + 16));
  __gnu_debug::_Error_formatter::_M_print_word(a2, __str);
  if (*(v3 + 24))
  {
    __gnu_debug::_Error_formatter::_M_print_word(a2, "type = ");
    __gnu_debug::_Error_formatter::_Parameter::_M_print_field(v3, a2, "type");
    if (*(v3 + 32))
    {
      __gnu_debug::_Error_formatter::_M_print_word(a2, " (");
      __gnu_debug::_Error_formatter::_Parameter::_M_print_field(v3, a2, "constness");
      __gnu_debug::_Error_formatter::_M_print_word(a2, " iterator)");
    }

    __gnu_debug::_Error_formatter::_M_print_word(a2, ";\n");
  }

  if (*(v3 + 36))
  {
    __gnu_debug::_Error_formatter::_M_print_word(a2, "  state = ");
    __gnu_debug::_Error_formatter::_Parameter::_M_print_field(v3, a2, "state");
    __gnu_debug::_Error_formatter::_M_print_word(a2, ";\n");
  }

  if (*(v3 + 40))
  {
    __gnu_debug::_Error_formatter::_M_print_word(a2, "  references sequence ");
    if (*(v3 + 48))
    {
      __gnu_debug::_Error_formatter::_Parameter::_M_print_field(v3, a2, "seq_type");
      __gnu_debug::_Error_formatter::_M_print_word(a2, "' ");
    }

    snprintf(__str, 0x80uLL, "@ 0x%p\n", *(v3 + 16));
    v4 = __str;
LABEL_19:
    __gnu_debug::_Error_formatter::_M_print_word(a2, v4);
  }

LABEL_20:

  return __gnu_debug::_Error_formatter::_M_print_word(a2, "}\n");
}

void __gnu_debug::_Error_formatter::_M_error(const char **this)
{
  this[68] = (&dword_0 + 1);
  *(this + 553) = 0;
  if (*this)
  {
    snprintf(__str, 0x80uLL, "%s:", *this);
    __gnu_debug::_Error_formatter::_M_print_word(this, __str);
    this[68] += strlen(__str);
  }

  if (this[1])
  {
    snprintf(__str, 0x80uLL, "%u:", this[1]);
    __gnu_debug::_Error_formatter::_M_print_word(this, __str);
    this[68] += strlen(__str);
  }

  *(this + 553) = 1;
  __gnu_debug::_Error_formatter::_M_print_word(this, "error: ");
  v2 = this[66];
  if (v2)
  {
    __gnu_debug::_Error_formatter::_M_print_string(this, v2);
    __gnu_debug::_Error_formatter::_M_print_word(this, ".\n");
    *(this + 553) = 0;
    v3 = this[65];
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = &this[7 * v4 + 2];
        if ((*v7 - 1) <= 1)
        {
          if ((v5 & 1) == 0)
          {
            *(this + 552) = 1;
            __gnu_debug::_Error_formatter::_M_print_word(this, "\nObjects involved in the operation:\n");
          }

          __gnu_debug::_Error_formatter::_Parameter::_M_print_description(v7, this);
          v3 = this[65];
          v5 = 1;
        }

        v4 = v6;
      }

      while (v3 > v6++);
    }

    abort();
  }

  __assert_rtn("_M_error", "debug.cc", 502, "_M_text");
}

unint64_t __gnu_debug::_Error_formatter::_M_print_string(unint64_t this, const char *a2)
{
  v3 = this;
  v4 = this + 16;
  while (1)
  {
    v5 = *a2;
    if (!*a2)
    {
      break;
    }

    while (v5 != 37)
    {
      v6 = 0;
      do
      {
        v7 = a2[v6];
        if (v7 < 0)
        {
          v8 = __maskrune(v7, 0x500uLL);
        }

        else
        {
          v8 = _DefaultRuneLocale.__runetype[v7] & 0x500;
        }

        ++v6;
      }

      while (v8);
      v9 = v6 == 1;
      if (v6 == 1)
      {
        v10 = a2 + 1;
      }

      else
      {
        v10 = a2;
      }

      v11 = v10[v6 - 1];
      if (v11 < 0)
      {
        v12 = __maskrune(v11, 0x4000uLL);
      }

      else
      {
        v12 = _DefaultRuneLocale.__runetype[v11] & 0x4000;
      }

      v13 = v12 != 0;
      if (v12)
      {
        v14 = v9 + 1;
      }

      else
      {
        v14 = v6 == 1;
      }

      v15 = v14 + v6 - 1;
      if (v15 >= 128)
      {
        __gnu_debug::_Error_formatter::_M_print_string();
      }

      v16 = &a2[v14];
      memcpy(__dst, a2, v15);
      __s1[v9 + 15 + v13 + v6] = 0;
      this = __gnu_debug::_Error_formatter::_M_print_word(v3, __dst);
      do
      {
        v5 = v16[v6 - 1];
        ++v16;
      }

      while (v5 == 32);
      a2 = &v16[v6 - 2];
      if (!v5)
      {
        return this;
      }
    }

    v17 = *(a2 + 1);
    if (v17 == 37)
    {
      this = __gnu_debug::_Error_formatter::_M_print_word(v3, "%");
      a2 += 2;
    }

    else
    {
      if (!a2[1])
      {
        __gnu_debug::_Error_formatter::_M_print_string();
      }

      if ((v17 - 58) <= 0xFFFFFFF6)
      {
        __gnu_debug::_Error_formatter::_M_print_string();
      }

      v18 = v17 - 49;
      if (v18 >= *(v3 + 65))
      {
        __gnu_debug::_Error_formatter::_M_print_string();
      }

      v19 = *(a2 + 2);
      if (v19 == 46)
      {
        for (i = 0; ; ++i)
        {
          v21 = a2[i + 3];
          if (v21 == 59)
          {
            break;
          }

          if (!a2[i + 3])
          {
            __gnu_debug::_Error_formatter::_M_print_string();
          }

          if (i == 15)
          {
            __gnu_debug::_Error_formatter::_M_print_string();
          }

          __s1[i] = v21;
        }

        a2 += i + 4;
        __s1[i] = 0;
        this = __gnu_debug::_Error_formatter::_Parameter::_M_print_field((v4 + 56 * v18), v3, __s1);
      }

      else
      {
        if (v19 != 59)
        {
          __gnu_debug::_Error_formatter::_M_print_string();
        }

        a2 += 3;
        __dst[0] = 0;
        v22 = v4 + 56 * v18;
        if (*v22 == 4)
        {
          this = __gnu_debug::_Error_formatter::_M_print_string(v3, *(v22 + 16));
        }

        else if (*v22 == 3)
        {
          snprintf(__dst, 0x80uLL, "%ld", *(v22 + 16));
          this = __gnu_debug::_Error_formatter::_M_print_word(v3, __dst);
        }
      }
    }
  }

  return this;
}

void *std::__norm::_List_node_base::swap(void *result, void *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result == result)
  {
    if (v3 != a2)
    {
      v5 = a2[1];
      *result = v3;
      result[1] = v5;
      *v5 = result;
      *(*result + 8) = result;
      *a2 = a2;
      a2[1] = a2;
    }
  }

  else if (v3 == a2)
  {
    v6 = result[1];
    *a2 = v2;
    a2[1] = v6;
    *v6 = a2;
    *(*a2 + 8) = a2;
    *result = result;
    result[1] = result;
  }

  else
  {
    *result = v3;
    *a2 = v2;
    v4 = result[1];
    result[1] = a2[1];
    a2[1] = v4;
    *result[1] = result;
    *(*result + 8) = result;
    *a2[1] = a2;
    *(*a2 + 8) = a2;
  }

  return result;
}

uint64_t std::__norm::_List_node_base::transfer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a3)
  {
    v3 = *(a3 + 8);
    *v3 = result;
    **(a2 + 8) = a3;
    v4 = *(result + 8);
    *v4 = a2;
    *(result + 8) = v3;
    *(a3 + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return result;
}

__n128 std::__norm::_List_node_base::reverse(int8x16_t *this)
{
  v1 = this;
  do
  {
    result = *v1;
    *v1 = vextq_s8(*v1, *v1, 8uLL);
    v1 = result.n128_u64[0];
  }

  while (result.n128_u64[0] != this);
  return result;
}

void *std::__norm::_List_node_base::hook(void *this, std::__norm::_List_node_base *a2)
{
  v2 = *(a2 + 1);
  *this = a2;
  this[1] = v2;
  *v2 = this;
  *(a2 + 1) = this;
  return this;
}

uint64_t *std::__norm::_List_node_base::unhook(uint64_t *this)
{
  v1 = *this;
  v2 = this[1];
  *v2 = *this;
  *(v1 + 8) = v2;
  return this;
}

void std::__throw_bad_exception(void)
{
  exception = __cxa_allocate_exception(8uLL);
}

void std::__throw_bad_alloc(void)
{
  exception = __cxa_allocate_exception(8uLL);
}

void std::__throw_bad_cast(void)
{
  exception = __cxa_allocate_exception(8uLL);
}

void std::__throw_bad_typeid(void)
{
  exception = __cxa_allocate_exception(8uLL);
}

void std::__throw_logic_error(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::string::string(v4, a1, &v3);
  std::logic_error::logic_error(exception, v4);
}

void sub_5F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a11 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a11 - 24));
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_domain_error(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::string::string(v4, a1, &v3);
  std::domain_error::domain_error(exception, v4);
}

void sub_5FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a11 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a11 - 24));
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_invalid_argument(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::string::string(v4, a1, &v3);
  std::invalid_argument::invalid_argument(exception, v4);
}

void sub_6098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a11 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a11 - 24));
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::string::string(v4, a1, &v3);
  std::length_error::length_error(exception, v4);
}

void sub_6160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a11 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a11 - 24));
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_out_of_range(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::string::string(v4, a1, &v3);
  std::out_of_range::out_of_range(exception, v4);
}

void sub_6228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a11 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a11 - 24));
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_runtime_error(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::string::string(v4, a1, &v3);
  std::runtime_error::runtime_error(exception, v4);
}

void sub_62F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a11 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a11 - 24));
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_range_error(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::string::string(v4, a1, &v3);
  std::range_error::range_error(exception, v4);
}

void sub_63B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a11 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a11 - 24));
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_overflow_error(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::string::string(v4, a1, &v3);
  std::overflow_error::overflow_error(exception, v4);
}

void sub_6480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a11 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a11 - 24));
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_underflow_error(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::string::string(v4, a1, &v3);
  std::underflow_error::underflow_error(exception, v4);
}

void sub_6548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a11 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a11 - 24));
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_ios_failure(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::string::string(v5, a1, &v4);
  v3 = std::ios_base::failure::failure(exception, v5);
}

void sub_6600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a11 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a11 - 24));
  }

  _Unwind_Resume(exception_object);
}

std::ios_base *std::ios_base::ios_base(std::ios_base *this)
{
  *this = off_5C5C8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  *(this + 48) = 8;
  *(this + 25) = this + 64;
  std::locale::locale((this + 208));
  return this;
}

{
  *this = off_5C5C8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  *(this + 48) = 8;
  *(this + 25) = this + 64;
  std::locale::locale((this + 208));
  return this;
}

void std::ios_base::~ios_base(std::ios_base *this)
{
  *this = off_5C5C8;
  std::ios_base::_M_call_callbacks(this, 0);
  std::ios_base::_M_dispose_callbacks(this);
  v2 = *(this + 25);
  if (v2 != this + 64)
  {
    if (v2)
    {
      operator delete[](v2);
    }

    *(this + 25) = 0;
  }

  std::locale::~locale((this + 208));
}

{
  std::ios_base::~ios_base(this);

  operator delete(v1);
}

uint64_t std::ios_base::_M_call_callbacks(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v4 = result;
    do
    {
      result = (v2[1])(a2, v4, *(v2 + 4));
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

atomic_uint *std::ios_base::_M_dispose_callbacks(std::ios_base *this)
{
  result = *(this + 5);
  if (result)
  {
    do
    {
      if (atomic_fetch_add(result + 5, 0xFFFFFFFF))
      {
        break;
      }

      v3 = *result;
      operator delete(result);
      result = v3;
    }

    while (v3);
  }

  *(this + 5) = 0;
  return result;
}

void *std::ios_base::register_callback(uint64_t a1, uint64_t a2, int a3)
{
  result = operator new(0x18uLL);
  *result = *(a1 + 40);
  result[1] = a2;
  *(result + 4) = a3;
  *(result + 5) = 0;
  *(a1 + 40) = result;
  return result;
}

char *std::ios_base::_M_grow_words(std::ios_base *this, int a2, int a3)
{
  v5 = this + 64;
  if (a2 < 8)
  {
    v8 = 8;
    v9 = this + 64;
LABEL_7:
    *(this + 25) = v9;
    *(this + 48) = v8;
    return &v9[16 * a2];
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = a2 + 1;
    v9 = operator new[](16 * (a2 + 1));
    bzero(v9, 16 * (a2 + 1));
    v11 = *(this + 48);
    v12 = *(this + 25);
    if (v11 >= 1)
    {
      v13 = *(this + 25);
      v14 = v9;
      do
      {
        v15 = *v13++;
        *v14++ = v15;
        --v11;
      }

      while (v11);
    }

    if (v12 && v12 != v5)
    {
      operator delete[](v12);
      *(this + 25) = 0;
    }

    goto LABEL_7;
  }

  v6 = *(this + 7);
  v7 = *(this + 8) | 1;
  *(this + 8) = v7;
  if ((v6 & v7) != 0)
  {
    std::__throw_ios_failure("ios_base::_M_grow_words is not valid");
  }

  if (a3)
  {
    *(this + 7) = 0;
  }

  else
  {
    *(this + 6) = 0;
  }

  return this + 48;
}

void sub_6A24(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = *(v1 + 28);
  v4 = *(v1 + 32) | 1;
  *(v1 + 32) = v4;
  if ((v3 & v4) == 0)
  {
    if (v2)
    {
      *(v1 + 56) = 0;
    }

    else
    {
      *(v1 + 48) = 0;
    }

    __cxa_end_catch();
    JUMPOUT(0x69FCLL);
  }

  std::__throw_ios_failure("ios_base::_M_grow_words allocation failed");
}

std::ios_base::failure *std::ios_base::failure::failure(std::ios_base::failure *this, const std::string *a2)
{
  *this = off_5C5F8;
  std::string::string((this + 8), a2);
  return this;
}

void std::ios_base::failure::~failure(std::exception *this)
{
  this->__vftable = off_5C5F8;
  v2 = this[1].__vftable;
  if (&v2[-1] != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(&v2[-1].what, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(&v2[-1]);
  }

  std::exception::~exception(this);
}

{
  std::ios_base::failure::~failure(this);

  operator delete(v1);
}

std::ios_base::Init *std::ios_base::Init::Init(std::ios_base::Init *this)
{
  if (atomic_fetch_or(&std::ios_base::Init::_S_refcount, 0))
  {
    atomic_fetch_add(&std::ios_base::Init::_S_refcount, 1u);
  }

  else
  {
    pthread_mutex_lock(&std::get_mut(void)::mut);
    if (std::ios_base::Init::_S_refcount)
    {
      v2 = std::ios_base::Init::_S_refcount + 1;
    }

    else
    {
      std::ios_base::Init::_S_synced_with_stdio = 1;
      v3 = __stdoutp;
      __gnu_internal::buf_cout_sync = off_5EE88;
      unk_60FF8 = 0u;
      unk_61008 = 0u;
      unk_61018 = 0u;
      std::locale::locale(&unk_61028);
      __gnu_internal::buf_cout_sync = off_5E3C8;
      qword_61030 = v3;
      dword_61038 = -1;
      v4 = __stdinp;
      __gnu_internal::buf_cin_sync = off_5EE88;
      *algn_61048 = 0u;
      *&algn_61048[16] = 0u;
      *&algn_61048[32] = 0u;
      std::locale::locale(&algn_61048[48]);
      __gnu_internal::buf_cin_sync = off_5E3C8;
      qword_61080 = v4;
      dword_61088 = -1;
      v5 = __stderrp;
      __gnu_internal::buf_cerr_sync = off_5EE88;
      unk_61098 = 0u;
      unk_610A8 = 0u;
      unk_610B8 = 0u;
      std::locale::locale(&unk_610C8);
      __gnu_internal::buf_cerr_sync = off_5E3C8;
      qword_610D0 = v5;
      dword_610D8 = -1;
      std::ostream::ostream(&std::cout, &__gnu_internal::buf_cout_sync);
      std::istream::istream(std::cin, &__gnu_internal::buf_cin_sync);
      std::ostream::ostream(std::cerr, &__gnu_internal::buf_cerr_sync);
      std::ostream::ostream(&std::clog, &__gnu_internal::buf_cerr_sync);
      *(&std::cin[27] + *(std::cin[0] - 24)) = &std::cout;
      v6 = std::cerr[0];
      *(&std::cerr[3] + *(std::cerr[0] - 24)) = 0x2000;
      *(&std::cerr[27] + *(v6 - 24)) = &std::cout;
      v7 = __stdoutp;
      __gnu_internal::buf_wcout_sync = off_5EF08;
      unk_61838 = 0u;
      unk_61848 = 0u;
      unk_61858 = 0u;
      std::locale::locale(&unk_61868);
      __gnu_internal::buf_wcout_sync = off_5E448;
      qword_61870 = v7;
      dword_61878 = -1;
      v8 = __stdinp;
      __gnu_internal::buf_wcin_sync = off_5EF08;
      *algn_61888 = 0u;
      *&algn_61888[16] = 0u;
      *&algn_61888[32] = 0u;
      std::locale::locale(&algn_61888[48]);
      __gnu_internal::buf_wcin_sync = off_5E448;
      qword_618C0 = v8;
      dword_618C8 = -1;
      v9 = __stderrp;
      __gnu_internal::buf_wcerr_sync = off_5EF08;
      unk_618D8 = 0u;
      unk_618E8 = 0u;
      unk_618F8 = 0u;
      std::locale::locale(&unk_61908);
      __gnu_internal::buf_wcerr_sync = off_5E448;
      qword_61910 = v9;
      dword_61918 = -1;
      std::wostream::basic_ostream(&std::wcout, &__gnu_internal::buf_wcout_sync);
      std::wistream::basic_istream(std::wcin, &__gnu_internal::buf_wcin_sync);
      std::wostream::basic_ostream(std::wcerr, &__gnu_internal::buf_wcerr_sync);
      std::wostream::basic_ostream(&std::wclog, &__gnu_internal::buf_wcerr_sync);
      *(&std::wcin[27] + *(std::wcin[0] - 24)) = &std::wcout;
      v10 = std::wcerr[0];
      *(&std::wcerr[3] + *(std::wcerr[0] - 24)) = 0x2000;
      *(&std::wcerr[27] + *(v10 - 24)) = &std::wcout;
      v2 = 2;
    }

    std::ios_base::Init::_S_refcount = v2;
    pthread_mutex_unlock(&std::get_mut(void)::mut);
  }

  return this;
}

void sub_7040(void *a1)
{
  __cxa_begin_catch(a1);
  pthread_mutex_unlock(&std::get_mut(void)::mut);
  __cxa_rethrow();
}

void std::ios_base::Init::~Init(std::ios_base::Init *this)
{
  if (atomic_fetch_add(&std::ios_base::Init::_S_refcount, 0xFFFFFFFF) == 2)
  {
    std::ostream::flush(std::cout);
    std::ostream::flush(std::cerr);
    std::ostream::flush(std::clog);
    std::wostream::flush(std::wcout);
    std::wostream::flush(std::wcerr);
    std::wostream::flush(std::wclog);
  }
}

void sub_70F4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x70E4);
}

uint64_t std::ios_base::sync_with_stdio(std::ios_base *this)
{
  v1 = std::ios_base::Init::_S_synced_with_stdio;
  if ((this & 1) == 0 && std::ios_base::Init::_S_synced_with_stdio)
  {
    std::ios_base::Init::Init(&v3);
    std::ios_base::Init::_S_synced_with_stdio = 0;
    __gnu_internal::buf_cout_sync = off_5EE88;
    std::locale::~locale(&unk_61028);
    __gnu_internal::buf_cin_sync = off_5EE88;
    std::locale::~locale(&algn_61048[48]);
    __gnu_internal::buf_cerr_sync = off_5EE88;
    std::locale::~locale(&unk_610C8);
    __gnu_internal::buf_wcout_sync = off_5EF08;
    std::locale::~locale(&unk_61868);
    __gnu_internal::buf_wcin_sync = off_5EF08;
    std::locale::~locale(&algn_61888[48]);
    __gnu_internal::buf_wcerr_sync = off_5EF08;
    std::locale::~locale(&unk_61908);
    __gnu_cxx::stdio_filebuf<char>::stdio_filebuf(&__gnu_internal::buf_cout, __stdoutp, 16, 1024);
    __gnu_cxx::stdio_filebuf<char>::stdio_filebuf(&__gnu_internal::buf_cin, __stdinp, 8, 1024);
    __gnu_cxx::stdio_filebuf<char>::stdio_filebuf(&__gnu_internal::buf_cerr, __stderrp, 16, 1024);
    std::ios::rdbuf(std::cout + *(std::cout[0] - 24), &__gnu_internal::buf_cout);
    std::ios::rdbuf(std::cin + *(std::cin[0] - 24), &__gnu_internal::buf_cin);
    std::ios::rdbuf(std::cerr + *(std::cerr[0] - 24), &__gnu_internal::buf_cerr);
    std::ios::rdbuf(std::clog + *(std::clog[0] - 24), &__gnu_internal::buf_cerr);
    __gnu_cxx::stdio_filebuf<wchar_t>::stdio_filebuf(&__gnu_internal::buf_wcout, __stdoutp, 16, 1024);
    __gnu_cxx::stdio_filebuf<wchar_t>::stdio_filebuf(&__gnu_internal::buf_wcin, __stdinp, 8, 1024);
    __gnu_cxx::stdio_filebuf<wchar_t>::stdio_filebuf(&__gnu_internal::buf_wcerr, __stderrp, 16, 1024);
    std::wios::rdbuf(std::wcout + *(std::wcout[0] - 24), &__gnu_internal::buf_wcout);
    std::wios::rdbuf(std::wcin + *(std::wcin[0] - 24), &__gnu_internal::buf_wcin);
    std::wios::rdbuf(std::wcerr + *(std::wcerr[0] - 24), &__gnu_internal::buf_wcerr);
    std::wios::rdbuf(std::wclog + *(std::wclog[0] - 24), &__gnu_internal::buf_wcerr);
    std::ios_base::Init::~Init(&v3);
  }

  return v1;
}

void std::ios_base::_M_init(std::ios_base *this)
{
  *(this + 8) = xmmword_51EB0;
  *(this + 6) = 4098;
  std::locale::locale(&v2);
  std::locale::operator=(this + 26, &v2);
  std::locale::~locale(&v2);
}

uint64_t std::ios_base::imbue@<X0>(atomic_uint **this@<X0>, atomic_uint *volatile *a2@<X1>, atomic_uint **a3@<X8>)
{
  std::locale::locale(a3, this + 26);
  std::locale::operator=(this + 26, a2);

  return std::ios_base::_M_call_callbacks(this, 1);
}

void *std::_List_node_base::swap(void *result, void *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result == result)
  {
    if (v3 != a2)
    {
      v5 = a2[1];
      *result = v3;
      result[1] = v5;
      *v5 = result;
      *(*result + 8) = result;
      *a2 = a2;
      a2[1] = a2;
    }
  }

  else if (v3 == a2)
  {
    v6 = result[1];
    *a2 = v2;
    a2[1] = v6;
    *v6 = a2;
    *(*a2 + 8) = a2;
    *result = result;
    result[1] = result;
  }

  else
  {
    *result = v3;
    *a2 = v2;
    v4 = result[1];
    result[1] = a2[1];
    a2[1] = v4;
    *result[1] = result;
    *(*result + 8) = result;
    *a2[1] = a2;
    *(*a2 + 8) = a2;
  }

  return result;
}

uint64_t std::_List_node_base::transfer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a3)
  {
    v3 = *(a3 + 8);
    *v3 = result;
    **(a2 + 8) = a3;
    v4 = *(result + 8);
    *v4 = a2;
    *(result + 8) = v3;
    *(a3 + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return result;
}

__n128 std::_List_node_base::reverse(int8x16_t *this)
{
  v1 = this;
  do
  {
    result = *v1;
    *v1 = vextq_s8(*v1, *v1, 8uLL);
    v1 = result.n128_u64[0];
  }

  while (result.n128_u64[0] != this);
  return result;
}

void *std::_List_node_base::hook(void *this, std::_List_node_base *a2)
{
  v2 = *(a2 + 1);
  *this = a2;
  this[1] = v2;
  *v2 = this;
  *(a2 + 1) = this;
  return this;
}

uint64_t *std::_List_node_base::unhook(uint64_t *this)
{
  v1 = *this;
  v2 = this[1];
  *v2 = *this;
  *(v1 + 8) = v2;
  return this;
}

atomic_uint **std::locale::locale(atomic_uint **result, atomic_uint **a2)
{
  v2 = *a2;
  *result = *a2;
  atomic_fetch_add(v2, 1u);
  return result;
}

{
  v2 = *a2;
  *result = *a2;
  atomic_fetch_add(v2, 1u);
  return result;
}

void *std::locale::locale(void *this, std::locale::_Impl *a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void std::locale::~locale(atomic_uint **this)
{
  v1 = *this;
  add = atomic_fetch_add(v1, 0xFFFFFFFF);
  if (v1)
  {
    v3 = add == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    std::locale::_Impl::~_Impl(v1);
    operator delete(v4);
  }
}

uint64_t std::locale::operator==(std::locale *a1, std::locale *a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  v3 = *(*a1 + 32);
  result = *v3;
  if (!*v3)
  {
    return result;
  }

  v6 = *(*a2 + 32);
  if (!*v6 || strcmp(result, *v6))
  {
    return 0;
  }

  if (!v3[1] && !*(v6 + 8))
  {
    return 1;
  }

  std::locale::name(a1, &v18);
  std::locale::name(a2, &v17);
  v7 = v17;
  v8 = *(v18 - 3);
  v9 = v17 - 6;
  v10 = *(v17 - 3);
  if (v10 >= v8)
  {
    v11 = *(v18 - 3);
  }

  else
  {
    v11 = *(v17 - 3);
  }

  v12 = memcmp(v18, v17, v11);
  result = v8 == v10 && v12 == 0;
  if (v9 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v7 - 2, 0xFFFFFFFF) <= 0)
  {
    v16 = result;
    std::string::_Rep::_M_destroy(v9);
    result = v16;
  }

  v14 = v18 - 6;
  if (v18 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v18 - 2, 0xFFFFFFFF) <= 0)
  {
    v15 = result;
    std::string::_Rep::_M_destroy(v14);
    return v15;
  }

  return result;
}

void sub_77EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if ((a11 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a11 - 24));
  }

  __cxa_call_unexpected(a1);
}

int **std::locale::name@<X0>(std::locale *this@<X0>, int **a2@<X8>)
{
  *a2 = &unk_60620;
  v3 = *(*this + 32);
  v4 = *v3;
  if (!*v3)
  {
    return std::string::_M_replace_aux(a2, 0, std::string::_Rep::_S_empty_rep_storage, 1uLL, 42);
  }

  if (!*(v3 + 8))
  {
    goto LABEL_10;
  }

  v6 = 0;
  v7 = v3 + 8;
  v8 = *v3;
  do
  {
    v9 = *(v7 + 8 * v6);
    v10 = strcmp(v8, v9);
    if (v6 > 3)
    {
      break;
    }

    ++v6;
    v8 = v9;
  }

  while (!v10);
  if (v10)
  {
    std::string::reserve(a2, 0x80uLL);
    v11 = strlen("LC_CTYPE");
    std::string::append(a2, "LC_CTYPE", v11);
    std::string::push_back(a2, 61);
    v12 = strlen(**(*this + 32));
    std::string::append(a2, **(*this + 32), v12);
    for (i = 1; i != 6; ++i)
    {
      std::string::push_back(a2, 59);
      v14 = strlen(__gnu_cxx::category_names[i]);
      std::string::append(a2, __gnu_cxx::category_names[i], v14);
      std::string::push_back(a2, 61);
      v15 = strlen(*(*(*this + 32) + i * 8));
      result = std::string::append(a2, *(*(*this + 32) + i * 8), v15);
    }
  }

  else
  {
LABEL_10:
    v17 = strlen(v4);
    return std::string::assign(a2, v4, v17);
  }

  return result;
}

void sub_79D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v16 = (*v13 - 24);
  if (v16 != v14 && atomic_fetch_add((*v13 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v16);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **std::locale::operator=(atomic_uint **a1, atomic_uint *volatile *a2)
{
  atomic_fetch_add(*a2, 1u);
  v4 = *a1;
  add = atomic_fetch_add(v4, 0xFFFFFFFF);
  if (v4)
  {
    v6 = add == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    std::locale::_Impl::~_Impl(v4);
    operator delete(v7);
  }

  *a1 = *a2;
  return a1;
}

uint64_t std::locale::_S_normalize_category(uint64_t this)
{
  if (this && (this > 0x3F || (this & 0x3F) == 0))
  {
    if (this >= 7)
    {
      std::__throw_runtime_error("locale::_S_normalize_category category not found");
    }

    return dword_522D4[this - 1];
  }

  return this;
}

uint64_t std::locale::facet::_S_get_c_locale(std::locale::facet *this, uint64_t a2, uint64_t a3, int *a4)
{
  result = std::locale::facet::_S_c_locale;
  if (!std::locale::facet::_S_c_locale)
  {
    std::locale::facet::_S_create_c_locale(&std::locale::facet::_S_c_locale, &std::locale::facet::_S_c_name, 0, a4);
    return std::locale::facet::_S_c_locale;
  }

  return result;
}

void std::locale::_Impl::~_Impl(std::locale::_Impl *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (!*(this + 2))
    {
      goto LABEL_9;
    }

    v3 = 0;
    do
    {
      v4 = *(*(this + 1) + 8 * v3);
      if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 8))(v4);
      }

      ++v3;
    }

    while (v3 < *(this + 2));
    v2 = *(this + 1);
    if (v2)
    {
LABEL_9:
      operator delete[](v2);
    }
  }

  v5 = *(this + 3);
  if (v5)
  {
    if (!*(this + 2))
    {
      goto LABEL_18;
    }

    v6 = 0;
    do
    {
      v7 = *(*(this + 3) + 8 * v6);
      if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v7 + 8))(v7);
      }

      ++v6;
    }

    while (v6 < *(this + 2));
    v5 = *(this + 3);
    if (v5)
    {
LABEL_18:
      operator delete[](v5);
    }
  }

  if (*(this + 4))
  {
    for (i = 0; i != 48; i += 8)
    {
      v9 = *(*(this + 4) + i);
      if (v9)
      {
        operator delete[](v9);
      }
    }

    v10 = *(this + 4);
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

std::locale::_Impl *std::locale::_Impl::_Impl(std::locale::_Impl *this, const std::locale::_Impl *a2, int a3)
{
  *this = a3;
  v5 = *(a2 + 2);
  *(this + 3) = 0;
  v6 = (this + 24);
  *(this + 1) = 0;
  *(this + 2) = v5;
  if (v5 >> 61)
  {
    v7 = -1;
  }

  else
  {
    v7 = 8 * v5;
  }

  *(this + 4) = 0;
  *(this + 1) = operator new[](v7);
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      *(*(this + 1) + 8 * i) = *(*(a2 + 1) + 8 * i);
      v9 = *(*(this + 1) + 8 * i);
      if (v9)
      {
        atomic_fetch_add((v9 + 8), 1u);
        v5 = *(this + 2);
      }
    }

    if (v5 >> 61)
    {
      v10 = -1;
    }

    else
    {
      v10 = 8 * v5;
    }
  }

  else
  {
    v10 = 0;
  }

  *v6 = operator new[](v10);
  if (v5)
  {
    for (j = 0; j < v5; ++j)
    {
      *(*v6 + j) = *(*(a2 + 3) + 8 * j);
      v12 = *(*v6 + j);
      if (v12)
      {
        atomic_fetch_add((v12 + 8), 1u);
        v5 = *(this + 2);
      }
    }
  }

  v13 = operator new[](0x30uLL);
  v14 = 0;
  *(this + 4) = v13;
  do
  {
    *(*(this + 4) + v14) = 0;
    v14 += 8;
  }

  while (v14 != 48);
  for (k = 0; k != 48; k += 8)
  {
    v16 = *(*(a2 + 4) + k);
    if (!v16)
    {
      break;
    }

    v17 = strlen(v16);
    *(*(this + 4) + k) = operator new[](v17 + 1);
    memcpy(*(*(this + 4) + k), *(*(a2 + 4) + k), v17 + 1);
  }

  return this;
}

void sub_7DE0(void *a1)
{
  __cxa_begin_catch(a1);
  std::locale::_Impl::~_Impl(v1);
  __cxa_rethrow();
}

std::locale::_Impl *std::locale::_Impl::_M_replace_category(std::locale::_Impl *this, const std::locale::_Impl *a2, const std::locale::id **a3)
{
  v4 = *a3;
  if (v4)
  {
    v6 = this;
    v7 = a3 + 1;
    do
    {
      this = std::locale::_Impl::_M_replace_facet(v6, a2, v4);
      v8 = *v7++;
      v4 = v8;
    }

    while (v8);
  }

  return this;
}

uint64_t std::locale::_Impl::_M_replace_facet(std::locale::_Impl *this, const std::locale::_Impl *a2, const std::locale::id *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    v4 = (atomic_fetch_add(&std::locale::id::_S_refcount, 1u) + 1);
    *a3 = v4;
  }

  v5 = v4 - 1;
  if (v5 > *(a2 + 2) - 1 || (v6 = *(*(a2 + 1) + 8 * v5)) == 0)
  {
    std::__throw_runtime_error("locale::_Impl::_M_replace_facet");
  }

  return std::locale::_Impl::_M_install_facet(this, a3, v6);
}

uint64_t std::locale::id::_M_id(std::locale::id *this)
{
  v1 = *this;
  if (!*this)
  {
    v1 = (atomic_fetch_add(&std::locale::id::_S_refcount, 1u) + 1);
    *this = v1;
  }

  return v1 - 1;
}

uint64_t std::locale::_Impl::_M_install_facet(uint64_t this, const std::locale::id *a2, atomic_uint *a3)
{
  if (a3)
  {
    v4 = this;
    v5 = *a2;
    if (!*a2)
    {
      v5 = (atomic_fetch_add(&std::locale::id::_S_refcount, 1u) + 1);
      *a2 = v5;
    }

    v6 = v5 - 1;
    v7 = *(this + 16);
    if (v5 - 1 > v7 - 1)
    {
      v8 = v5 + 3;
      v9 = *(this + 8);
      v10 = 8 * (v5 + 3);
      if (v8 >> 61)
      {
        v11 = -1;
      }

      else
      {
        v11 = v10;
      }

      v12 = operator new[](v11);
      v13 = v12;
      v14 = 0;
      do
      {
        v12[v14] = v9[v14];
        ++v14;
      }

      while (v7 != v14);
      if (v8 > v7)
      {
        bzero(&v12[v7], 8 * (v8 - v7));
      }

      v15 = v4[3];
      v16 = operator new[](v11);
      v17 = v16;
      v18 = 0;
      do
      {
        v16[v18] = v15[v18];
        ++v18;
      }

      while (v7 != v18);
      if (v8 > v7)
      {
        bzero(&v16[v7], 8 * (v8 - v7));
      }

      v4[1] = v13;
      v4[2] = v8;
      v4[3] = v17;
      if (v9)
      {
        operator delete[](v9);
      }

      operator delete[](v15);
    }

    atomic_fetch_add(a3 + 2, 1u);
    v19 = v4[1];
    this = *(v19 + 8 * v6);
    if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
    {
      this = (*(*this + 8))(this);
    }

    *(v19 + 8 * v6) = a3;
    v20 = v4[2];
    if (v20)
    {
      for (i = 0; i < v20; ++i)
      {
        this = *(v4[3] + 8 * i);
        if (this)
        {
          if (atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
          {
            this = (*(*this + 8))(this);
          }

          v20 = v4[2];
          *(v4[3] + 8 * i) = 0;
        }
      }
    }
  }

  return this;
}

void sub_80E4(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete[](v1);
  __cxa_rethrow();
}

void std::locale::_Impl::_M_install_cache(std::locale::_Impl *this, atomic_uint *a2, uint64_t a3)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = off_5C330;
  }

  if (*(*(this + 3) + 8 * a3))
  {
    if (a2)
    {
      (*(*a2 + 8))(a2);
    }
  }

  else
  {
    atomic_fetch_add(a2 + 2, 1u);
    *(*(this + 3) + 8 * a3) = a2;
  }

  __gnu_cxx::__scoped_lock::~__scoped_lock(&v7);
}

std::locale *std::locale::locale(std::locale *this)
{
  *this = 0;
  v2 = std::locale::_S_initialize(this);
  __gnu_cxx::__scoped_lock::__scoped_lock(&v4, &qword_63438);
  atomic_fetch_add(std::locale::_S_global, 1u);
  *this = std::locale::_S_global;
  __gnu_cxx::__scoped_lock::~__scoped_lock(&v4);
  return this;
}

uint64_t std::locale::_S_initialize(std::locale *this)
{
  result = pthread_once(&std::locale::_S_once, std::locale::_S_initialize_once);
  if (!std::locale::_S_classic)
  {
  }

  return result;
}

void anonymous namespace::get_locale_mutex(_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
  }
}

void *std::locale::global@<X0>(std::locale *this@<X0>, void *a2@<X8>)
{
  v5 = std::locale::_S_initialize(this);
  __gnu_cxx::__scoped_lock::__scoped_lock(&v10, &qword_63438);
  v6 = std::locale::_S_global;
  atomic_fetch_add(*this, 1u);
  std::locale::_S_global = *this;
  std::locale::name(this, &v9);
  if (std::string::compare(&v9, "*"))
  {
    setlocale(0, v9);
  }

  v7 = v9 - 24;
  if (v9 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v9 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v7);
  }

  __gnu_cxx::__scoped_lock::~__scoped_lock(&v10);
  return std::locale::locale(a2, v6);
}

void sub_8410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __gnu_cxx::__scoped_lock::~__scoped_lock(va);
  _Unwind_Resume(a1);
}

void *std::locale::_S_initialize_once(std::locale *this)
{
}

std::locale::_Impl *std::locale::_Impl::_Impl(std::locale::_Impl *this, int a2)
{
  v3 = 0;
  *this = a2;
  *(this + 2) = 28;
  *(this + 4) = 0;
  do
  {
    *(*(this + 3) + v3) = 0;
    *(*(this + 1) + v3) = 0;
    v3 += 8;
  }

  while (v3 != 224);
  for (i = 8; i != 48; i += 8)
  {
    *(*(this + 4) + i) = 0;
  }

  dword_62590 = 1;
  byte_62610 = 0;
  qword_62598 = 0;
  unk_625A0 = 0;
  byte_625A8 = 0;
  unk_625B0 = 0u;
  unk_625C0 = 0u;
  word_625D0 = 0;
  dword_62638 = 1;
  dword_62648 = 1;
  dword_62670 = 1;
  byte_626D7 = 0;
  qword_62678 = 0;
  unk_62680 = 0;
  unk_62687 = 0;
  unk_62690 = 0u;
  unk_626A0 = 0u;
  unk_626B0 = 0u;
  unk_626BC = 0u;
  dword_626F8 = 1;
  byte_6275F = 0;
  qword_62700 = 0;
  unk_62708 = 0;
  unk_6270F = 0;
  unk_62718 = 0u;
  unk_62728 = 0u;
  unk_62738 = 0u;
  unk_62744 = 0u;
  dword_62780 = 1;
  dword_62790 = 1;
  dword_627A0 = 1;
  xmmword_627A8 = 0u;
  unk_627B8 = 0u;
  xmmword_627C8 = 0u;
  unk_627D8 = 0u;
  xmmword_627E8 = 0u;
  unk_627F8 = 0u;
  xmmword_62808 = 0u;
  unk_62818 = 0u;
  xmmword_62828 = 0u;
  unk_62838 = 0u;
  xmmword_62848 = 0u;
  unk_62858 = 0u;
  xmmword_62868 = 0u;
  unk_62878 = 0u;
  xmmword_62888 = 0u;
  unk_62898 = 0u;
  xmmword_628A8 = 0u;
  unk_628B8 = 0u;
  xmmword_628C8 = 0u;
  unk_628D8 = 0u;
  xmmword_628E8 = 0u;
  unk_628F8 = 0u;
  xmmword_62908 = 0u;
  *(&xmmword_62908 + 9) = 0u;
  dword_62958 = 1;
  dword_62968 = 1;
  dword_62F10 = 1;
  byte_63050 = 0;
  qword_62F18 = 0;
  unk_62F20 = 0;
  byte_62F28 = 0;
  unk_62F30 = 0u;
  unk_62F40 = 0u;
  qword_62F50 = 0;
  dword_63078 = 1;
  dword_63088 = 1;
  dword_630B0 = 1;
  dword_630CC = 0;
  unk_630D0 = 0;
  byte_63140 = 0;
  qword_630B8 = 0;
  unk_630C0 = 0;
  byte_630C8 = 0;
  xmmword_630D8 = 0u;
  unk_630E8 = 0u;
  xmmword_630F8 = 0u;
  *(&xmmword_630F8 + 12) = 0u;
  dword_63168 = 1;
  dword_63184 = 0;
  unk_63188 = 0;
  byte_631F8 = 0;
  qword_63170 = 0;
  unk_63178 = 0;
  byte_63180 = 0;
  xmmword_63190 = 0u;
  unk_631A0 = 0u;
  xmmword_631B0 = 0u;
  *(&xmmword_631B0 + 12) = 0u;
  dword_63220 = 1;
  dword_63230 = 1;
  dword_63240 = 1;
  xmmword_63248 = 0u;
  unk_63258 = 0u;
  xmmword_63268 = 0u;
  unk_63278 = 0u;
  xmmword_63288 = 0u;
  unk_63298 = 0u;
  xmmword_632A8 = 0u;
  unk_632B8 = 0u;
  xmmword_632C8 = 0u;
  unk_632D8 = 0u;
  xmmword_632E8 = 0u;
  unk_632F8 = 0u;
  xmmword_63308 = 0u;
  unk_63318 = 0u;
  xmmword_63328 = 0u;
  unk_63338 = 0u;
  xmmword_63348 = 0u;
  unk_63358 = 0u;
  xmmword_63368 = 0u;
  unk_63378 = 0u;
  xmmword_63388 = 0u;
  unk_63398 = 0u;
  xmmword_633A8 = 0u;
  *(&xmmword_633A8 + 9) = 0u;
  dword_633F8 = 1;
  dword_63408 = 1;
  v9 = *(this + 3);
  v10 = *(this + 3);
  v11 = *(this + 3);
  v12 = *(this + 3);
  v13 = *(this + 3);
  v14 = *(this + 3);
  v15 = *(this + 3);
  v16 = *(this + 3);
  return this;
}

uint64_t std::__num_base::_S_format_float(uint64_t this, const std::ios_base *a2, char *a3)
{
  v3 = *(this + 24);
  *a2 = 37;
  v4 = a2 + 1;
  if ((v3 & 0x800) != 0)
  {
    v4 = a2 + 2;
    *(a2 + 1) = 43;
  }

  if ((v3 & 0x400) != 0)
  {
    *v4++ = 35;
  }

  *v4 = 10798;
  v5 = v4 + 2;
  if (a3)
  {
    v5 = v4 + 3;
    v4[2] = a3;
  }

  v6 = v3 & 0x104;
  v7 = (v3 & 0x4000) == 0;
  if ((v3 & 0x4000) != 0)
  {
    v8 = 71;
  }

  else
  {
    v8 = 103;
  }

  if (v7)
  {
    v9 = 101;
  }

  else
  {
    v9 = 69;
  }

  if (v6 == 256)
  {
    v8 = v9;
  }

  if (v6 == 4)
  {
    v8 = 102;
  }

  *v5 = v8;
  v5[1] = 0;
  return this;
}

std::locale *std::locale::locale(std::locale *this, char *a2)
{
  *this = 0;
  if (!a2)
  {
    std::__throw_runtime_error("locale::locale NULL not valid");
  }

  v2 = a2;
  std::locale::_S_initialize(this);
  v4 = *v2;
  if (v4 == 67)
  {
    if (!v2[1] || !strcmp(v2, "POSIX"))
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (!strcmp(v2, "POSIX"))
  {
LABEL_14:
    v8 = std::locale::_S_classic;
    *this = std::locale::_S_classic;
    atomic_fetch_add(v8, 1u);
    return this;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  v7 = getenv("LC_ALL");
  if (v7)
  {
    v2 = v7;
    if (*v7)
    {
      if (*v7 == 67 && !v7[1] || !strcmp(v7, "POSIX"))
      {
        goto LABEL_14;
      }

LABEL_8:
      v5 = operator new(0x28uLL);
      std::locale::_Impl::_Impl(v5, v2, 1, v6);
      *this = v5;
      return this;
    }
  }

  v37 = &unk_60620;
  v10 = getenv("LANG");
  if (v10 && (v11 = v10, *v10) && (*v10 != 67 || v10[1]) && strcmp(v10, "POSIX"))
  {
    v12 = strlen(v11);
  }

  else
  {
    v11 = "C";
    v12 = 1;
  }

  std::string::assign(&v37, v11, v12);
  v13 = 0;
  if (!std::string::compare(&v37, "C"))
  {
    do
    {
      v16 = getenv(__gnu_cxx::category_names[v13]);
      if (v16)
      {
        v15 = v16;
        if (*v16)
        {
          if (*v16 != 67 || v16[1])
          {
            if (strcmp(v16, "POSIX"))
            {
              goto LABEL_38;
            }
          }
        }
      }

      ++v13;
    }

    while (v13 != 6);
LABEL_35:
    if (!std::string::compare(&v37, "C"))
    {
      v19 = std::locale::_S_classic;
      *this = std::locale::_S_classic;
      atomic_fetch_add(v19, 1u);
    }

    else
    {
      v17 = operator new(0x28uLL);
      std::locale::_Impl::_Impl(v17, v37, 1, v18);
      *this = v17;
    }
  }

  else
  {
    while (1)
    {
      v14 = getenv(__gnu_cxx::category_names[v13]);
      if (v14)
      {
        v15 = v14;
        if (*v14)
        {
          if (std::string::compare(&v37, v14))
          {
            break;
          }
        }
      }

      if (++v13 == 6)
      {
        goto LABEL_35;
      }
    }

LABEL_38:
    v36 = &unk_60620;
    std::string::reserve(&v36, 0x80uLL);
    if (v13)
    {
      v20 = __gnu_cxx::category_names;
      v21 = v13;
      do
      {
        v22 = strlen(*v20);
        std::string::append(&v36, *v20, v22);
        std::string::push_back(&v36, 61);
        std::string::append(&v36, &v37);
        std::string::push_back(&v36, 59);
        ++v20;
        --v21;
      }

      while (v21);
    }

    v23 = strlen(__gnu_cxx::category_names[v13]);
    std::string::append(&v36, __gnu_cxx::category_names[v13], v23);
    std::string::push_back(&v36, 61);
    v24 = strlen(v15);
    std::string::append(&v36, v15, v24);
    std::string::push_back(&v36, 59);
    if (v13 <= 4)
    {
      v25 = v13;
      while (1)
      {
        v26 = off_583B8[v25];
        v27 = getenv(v26);
        v28 = strlen(v26);
        std::string::append(&v36, v26, v28);
        if (!v27)
        {
          break;
        }

        if (*v27 == 67)
        {
          if (!v27[1])
          {
            goto LABEL_51;
          }
        }

        else if (!*v27)
        {
          break;
        }

        if (!strcmp(v27, "POSIX"))
        {
LABEL_51:
          std::string::append(&v36, "=C;", 3uLL);
          goto LABEL_52;
        }

        std::string::push_back(&v36, 61);
        v29 = strlen(v27);
        std::string::append(&v36, v27, v29);
LABEL_50:
        std::string::push_back(&v36, 59);
LABEL_52:
        if (++v25 == 5)
        {
          goto LABEL_53;
        }
      }

      std::string::push_back(&v36, 61);
      std::string::append(&v36, &v37);
      goto LABEL_50;
    }

LABEL_53:
    v30 = v36;
    if ((*(v36 - 2) & 0x80000000) == 0)
    {
      std::string::_M_leak_hard(&v36);
      v30 = v36;
    }

    std::string::_M_mutate(&v36, *(v30 - 3) - 1, 1, 0);
    v31 = v36;
    *(v36 - 2) = -1;
    v32 = operator new(0x28uLL);
    std::locale::_Impl::_Impl(v32, v31, 1, v33);
    *this = v32;
    v34 = v36 - 6;
    if (v36 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v36 - 2, 0xFFFFFFFF) <= 0)
    {
      std::string::_Rep::_M_destroy(v34);
    }
  }

  v35 = (v37 - 3);
  if (v37 - 3 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v37 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v35);
  }

  return this;
}

void sub_93E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a10 - 24 != v15 && atomic_fetch_add((a10 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a10 - 24));
  }

  if (a11 - 24 != v15 && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a11 - 24));
  }

  _Unwind_Resume(exception_object);
}

std::locale *std::locale::locale(std::locale *this, const std::locale::_Impl **a2, char *a3, std::locale *a4)
{
  *this = 0;
  std::locale::locale(&v8, a3);
  std::locale::_M_coalesce(this, a2, &v8, a4);
  std::locale::~locale(&v8);
  return this;
}

void sub_9518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::locale::~locale(va);
  _Unwind_Resume(a1);
}

void std::locale::_M_coalesce(std::locale *this, const std::locale::_Impl **a2, const std::locale::_Impl **a3, std::locale *a4)
{
  v7 = std::locale::_S_normalize_category(a4);
  v8 = operator new(0x28uLL);
  std::locale::_Impl::_Impl(v8, *a2, 1uLL);
  *this = v8;
  std::locale::_Impl::_M_replace_categories(v8, *a3, v7);
}

void sub_959C(void *a1)
{
  __cxa_begin_catch(a1);
  std::locale::_Impl::_M_remove_reference(*v1);
  __cxa_rethrow();
}

std::locale *std::locale::locale(std::locale *this, const std::locale::_Impl **a2, const std::locale::_Impl **a3, std::locale *a4)
{
  *this = 0;
  std::locale::_M_coalesce(this, a2, a3, a4);
  return this;
}

{
  *this = 0;
  std::locale::_M_coalesce(this, a2, a3, a4);
  return this;
}

void std::locale::_Impl::_M_replace_categories(std::locale::_Impl *this, const std::locale::_Impl *a2, int a3)
{
  if (**(this + 4))
  {
    v6 = **(a2 + 4) != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  v8 = 1;
  v19 = v6;
  do
  {
    if ((v8 & a3) != 0)
    {
      std::locale::_Impl::_M_replace_category(this, a2, std::locale::_Impl::_S_facet_categories[v7]);
      if (v6)
      {
        v9 = *(this + 4);
        if (!*(v9 + 8))
        {
          v10 = strlen(*v9);
          for (i = 8; i != 48; i += 8)
          {
            *(*(this + 4) + i) = operator new[](v10 + 1);
            memcpy(*(*(this + 4) + i), **(this + 4), v10 + 1);
          }
        }

        if ((v7 & 6) == 2)
        {
          v12 = 5 - v7;
        }

        else
        {
          v12 = v7;
        }

        v13 = *(a2 + 4);
        v14 = v13[v12];
        if (!v14)
        {
          v14 = *v13;
        }

        v15 = strlen(v14);
        v16 = operator new[](v15 + 1);
        memcpy(v16, v14, v15 + 1);
        v17 = *(this + 4);
        v18 = *(v17 + 8 * v12);
        if (v18)
        {
          operator delete[](v18);
          v17 = *(this + 4);
        }

        *(v17 + 8 * v12) = v16;
        v6 = v19;
      }
    }

    ++v7;
    v8 *= 2;
  }

  while (v7 != 6);
}

std::locale::_Impl *std::locale::_Impl::_Impl(std::locale::_Impl *this, int **a2, int a3, int *a4)
{
  *this = a3;
  *(this + 1) = 0;
  *(this + 2) = 28;
  *(this + 3) = 0;
  v6 = (this + 24);
  *(this + 4) = 0;
  std::locale::facet::_S_create_c_locale(&v49, a2, 0, a4);
  v7 = *(this + 2);
  if (v7 >> 61)
  {
    v8 = -1;
  }

  else
  {
    v8 = 8 * v7;
  }

  *(this + 1) = operator new[](v8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      *(*(this + 1) + 8 * i) = 0;
    }
  }

  *v6 = operator new[](v8);
  if (v7)
  {
    for (j = 0; j != v7; ++j)
    {
      *(*v6 + j) = 0;
    }
  }

  v11 = operator new[](0x30uLL);
  v12 = 0;
  *(this + 4) = v11;
  do
  {
    *(*(this + 4) + v12) = 0;
    v12 += 8;
  }

  while (v12 != 48);
  v13 = strlen(a2);
  if (memchr(a2, 59, v13))
  {
    v14 = 0;
    v15 = a2 + v13;
    v16 = a2;
    do
    {
      v17 = strchr(v16 + 1, 61) + 1;
      v18 = strchr(v17, 59);
      if (v18)
      {
        v16 = v18;
      }

      else
      {
        v16 = v15;
      }

      *(*(this + 4) + v14) = operator new[](v16 - v17 + 1);
      memcpy(*(*(this + 4) + v14), v17, v16 - v17);
      *(*(*(this + 4) + v14) + v16 - v17) = 0;
      v14 += 8;
    }

    while (v14 != 48);
  }

  else
  {
    **(this + 4) = operator new[](v13 + 1);
    memcpy(**(this + 4), a2, v13 + 1);
  }

  v19 = operator new(0x240uLL);
  std::ctype<char>::ctype(v19, v49, 0, 0, 0);
  std::locale::_Impl::_M_install_facet(this, &std::ctype<char>::id, v19);
  v20 = operator new(0x18uLL);
  std::codecvt<char,char,__mbstate_t>::codecvt(v20, v49, 0);
  std::locale::_Impl::_M_install_facet(this, &std::codecvt<char,char,__mbstate_t>::id, v20);
  v21 = operator new(0x18uLL);
  std::numpunct<char>::numpunct(v21, v49, 0);
  std::locale::_Impl::_M_install_facet(this, &std::numpunct<char>::id, v21);
  v22 = operator new(0x10uLL);
  v22[2] = 0;
  *v22 = off_5DBD8;
  std::locale::_Impl::_M_install_facet(this, &std::num_get<char,std::istreambuf_iterator<char>>::id, v22);
  v23 = operator new(0x10uLL);
  v23[2] = 0;
  *v23 = off_5DC50;
  std::locale::_Impl::_M_install_facet(this, &std::num_put<char,std::ostreambuf_iterator<char>>::id, v23);
  v24 = operator new(0x18uLL);
  std::collate<char>::collate(v24, v49, 0);
  std::locale::_Impl::_M_install_facet(this, &std::collate<char>::id, v24);
  v25 = operator new(0x18uLL);
  std::moneypunct<char,false>::moneypunct(v25, v49, a2, 0);
  std::locale::_Impl::_M_install_facet(this, &std::moneypunct<char,false>::id, v25);
  v26 = operator new(0x18uLL);
  std::moneypunct<char,true>::moneypunct(v26, v49, a2, 0);
  std::locale::_Impl::_M_install_facet(this, &std::moneypunct<char,true>::id, v26);
  v27 = operator new(0x10uLL);
  v27[2] = 0;
  *v27 = off_5DAC8;
  std::locale::_Impl::_M_install_facet(this, &std::money_get<char,std::istreambuf_iterator<char>>::id, v27);
  v28 = operator new(0x10uLL);
  v28[2] = 0;
  *v28 = off_5DAF8;
  std::locale::_Impl::_M_install_facet(this, &std::money_put<char,std::ostreambuf_iterator<char>>::id, v28);
  v29 = operator new(0x28uLL);
  std::__timepunct<char>::__timepunct(v29, v49, a2, 0);
  std::locale::_Impl::_M_install_facet(this, &std::__timepunct<char>::id, v29);
  v30 = operator new(0x10uLL);
  v30[2] = 0;
  *v30 = off_5DD40;
  std::locale::_Impl::_M_install_facet(this, &std::time_get<char,std::istreambuf_iterator<char>>::id, v30);
  v31 = operator new(0x10uLL);
  v31[2] = 0;
  *v31 = off_5DCF0;
  std::locale::_Impl::_M_install_facet(this, &std::time_put<char,std::ostreambuf_iterator<char>>::id, v31);
  v32 = operator new(0x20uLL);
  std::messages<char>::messages(v32, v49, a2, 0);
  std::locale::_Impl::_M_install_facet(this, &std::messages<char>::id, v32);
  v33 = operator new(0x560uLL);
  std::ctype<wchar_t>::ctype(v33, v49, 0);
  std::locale::_Impl::_M_install_facet(this, &std::ctype<wchar_t>::id, v33);
  v34 = operator new(0x18uLL);
  std::codecvt<wchar_t,char,__mbstate_t>::codecvt(v34, v49, 0);
  std::locale::_Impl::_M_install_facet(this, &std::codecvt<wchar_t,char,__mbstate_t>::id, v34);
  v35 = operator new(0x18uLL);
  std::numpunct<wchar_t>::numpunct(v35, v49, 0);
  std::locale::_Impl::_M_install_facet(this, &std::numpunct<wchar_t>::id, v35);
  v36 = operator new(0x10uLL);
  v36[2] = 0;
  *v36 = off_5F298;
  std::locale::_Impl::_M_install_facet(this, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id, v36);
  v37 = operator new(0x10uLL);
  v37[2] = 0;
  *v37 = off_5F310;
  std::locale::_Impl::_M_install_facet(this, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id, v37);
  v38 = operator new(0x18uLL);
  std::collate<wchar_t>::collate(v38, v49, 0);
  std::locale::_Impl::_M_install_facet(this, &std::collate<wchar_t>::id, v38);
  v39 = operator new(0x18uLL);
  std::moneypunct<wchar_t,false>::moneypunct(v39, v49, a2, 0);
  std::locale::_Impl::_M_install_facet(this, &std::moneypunct<wchar_t,false>::id, v39);
  v40 = operator new(0x18uLL);
  std::moneypunct<wchar_t,true>::moneypunct(v40, v49, a2, 0);
  std::locale::_Impl::_M_install_facet(this, &std::moneypunct<wchar_t,true>::id, v40);
  v41 = operator new(0x10uLL);
  v41[2] = 0;
  *v41 = off_5F188;
  std::locale::_Impl::_M_install_facet(this, &std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id, v41);
  v42 = operator new(0x10uLL);
  v42[2] = 0;
  *v42 = off_5F1B8;
  std::locale::_Impl::_M_install_facet(this, &std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id, v42);
  v43 = operator new(0x28uLL);
  std::__timepunct<wchar_t>::__timepunct(v43, v49, a2, 0);
  std::locale::_Impl::_M_install_facet(this, &std::__timepunct<wchar_t>::id, v43);
  v44 = operator new(0x10uLL);
  v44[2] = 0;
  *v44 = off_5F400;
  std::locale::_Impl::_M_install_facet(this, &std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id, v44);
  v45 = operator new(0x10uLL);
  v45[2] = 0;
  *v45 = off_5F3B0;
  std::locale::_Impl::_M_install_facet(this, &std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id, v45);
  v46 = operator new(0x20uLL);
  std::messages<wchar_t>::messages(v46, v49, a2, 0);
  std::locale::_Impl::_M_install_facet(this, &std::messages<wchar_t>::id, v46);
  std::locale::facet::_S_destroy_c_locale(&v49, v47);
  return this;
}

void sub_9F00(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  std::locale::facet::_S_destroy_c_locale(&a10, v13);
  std::locale::_Impl::~_Impl(v10);
  __cxa_rethrow();
}

std::logic_error *std::logic_error::logic_error(std::logic_error *this, const std::string *a2)
{
  std::string::string(&this->__imp_, a2);
  return this;
}

std::logic_error *std::domain_error::domain_error(std::domain_error *this, const std::string *a2)
{
  result = std::logic_error::logic_error(this, a2);
  return result;
}

{
  result = std::logic_error::logic_error(this, a2);
  return result;
}

std::logic_error *std::invalid_argument::invalid_argument(std::invalid_argument *this, const std::string *a2)
{
  result = std::logic_error::logic_error(this, a2);
  return result;
}

{
  result = std::logic_error::logic_error(this, a2);
  return result;
}

std::logic_error *std::length_error::length_error(std::length_error *this, const std::string *a2)
{
  result = std::logic_error::logic_error(this, a2);
  return result;
}

{
  result = std::logic_error::logic_error(this, a2);
  return result;
}

std::logic_error *std::out_of_range::out_of_range(std::out_of_range *this, const std::string *a2)
{
  result = std::logic_error::logic_error(this, a2);
  return result;
}

{
  result = std::logic_error::logic_error(this, a2);
  return result;
}

std::runtime_error *std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  std::string::string(&this->__imp_, a2);
  return this;
}

std::runtime_error *std::range_error::range_error(std::range_error *this, const std::string *a2)
{
  result = std::runtime_error::runtime_error(this, a2);
  return result;
}

{
  result = std::runtime_error::runtime_error(this, a2);
  return result;
}

std::runtime_error *std::overflow_error::overflow_error(std::overflow_error *this, const std::string *a2)
{
  result = std::runtime_error::runtime_error(this, a2);
  return result;
}

{
  result = std::runtime_error::runtime_error(this, a2);
  return result;
}

std::runtime_error *std::underflow_error::underflow_error(std::underflow_error *this, const std::string *a2)
{
  result = std::runtime_error::runtime_error(this, a2);
  return result;
}

{
  result = std::runtime_error::runtime_error(this, a2);
  return result;
}

std::strstreambuf *std::strstreambuf::strstreambuf(std::strstreambuf *this, int64_t a2)
{
  *this = off_5EE88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::locale::locale((this + 56));
  *this = off_5C668;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 80) = *(this + 80) & 0xF8 | 1;
  if (a2 <= 16)
  {
    a2 = 16;
  }

  v4 = operator new[](a2);
  *(this + 5) = v4;
  *(this + 6) = &v4[a2];
  *(this + 1) = v4;
  *(this + 2) = v4;
  *(this + 3) = v4;
  *(this + 4) = v4;
  return this;
}

void sub_A3D8(_Unwind_Exception *a1)
{
  *v1 = v2;
  std::locale::~locale((v1 + 7));
  _Unwind_Resume(a1);
}

void *std::strstreambuf::_M_alloc(std::strstreambuf *this, size_t __sz)
{
  v2 = *(this + 8);
  if (v2)
  {
    return v2(__sz);
  }

  else
  {
    return operator new[](__sz);
  }
}

std::strstreambuf *std::strstreambuf::strstreambuf(std::strstreambuf *this, void *(*a2)(unint64_t), void (*a3)(void *))
{
  *this = off_5EE88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::locale::locale((this + 56));
  *this = off_5C668;
  *(this + 8) = a2;
  *(this + 9) = a3;
  *(this + 80) = *(this + 80) & 0xF8 | 1;
  if (a2)
  {
    v6 = a2(16uLL);
    if (!v6)
    {
      return this;
    }
  }

  else
  {
    v6 = operator new[](0x10uLL);
  }

  *(this + 5) = v6;
  *(this + 6) = v6 + 16;
  *(this + 1) = v6;
  *(this + 2) = v6;
  *(this + 3) = v6;
  *(this + 4) = v6;
  return this;
}

void sub_A4D4(_Unwind_Exception *a1)
{
  *v1 = v2;
  std::locale::~locale((v1 + 7));
  _Unwind_Resume(a1);
}

std::strstreambuf *std::strstreambuf::strstreambuf(std::strstreambuf *this, char *a2, uint64_t a3, char *a4)
{
  *this = off_5EE88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::locale::locale((this + 56));
  *this = off_5C668;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 80) &= 0xF8u;
  std::strstreambuf::_M_setup(this, a2, a4, a3);
  return this;
}

{
  *this = off_5EE88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::locale::locale((this + 56));
  *this = off_5C668;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 80) &= 0xF8u;
  std::strstreambuf::_M_setup(this, a2, a4, a3);
  return this;
}

size_t std::strstreambuf::_M_setup(size_t this, char *__s, char *a3, uint64_t a4)
{
  if (__s)
  {
    v5 = __s;
    v6 = this;
    if (a4 <= 0)
    {
      if (!a4)
      {
        this = strlen(__s);
        a4 = this;
        if (a3)
        {
          goto LABEL_6;
        }

        goto LABEL_8;
      }

      a4 = 0x7FFFFFFFLL;
    }

    if (a3)
    {
LABEL_6:
      v6[1] = v5;
      v6[2] = v5;
      v7 = 6;
      v8 = 4;
      v9 = 5;
      v5 = a3;
      v6[3] = a3;
LABEL_9:
      v6[v9] = v5;
      v6[v8] = v5;
      v6[v7] = &v5[a4];
      return this;
    }

LABEL_8:
    v7 = 3;
    v8 = 2;
    v9 = 1;
    goto LABEL_9;
  }

  return this;
}

std::strstreambuf *std::strstreambuf::strstreambuf(std::strstreambuf *this, signed __int8 *a2, uint64_t a3, signed __int8 *a4)
{
  *this = off_5EE88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::locale::locale((this + 56));
  *this = off_5C668;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 80) &= 0xF8u;
  std::strstreambuf::_M_setup(this, a2, a4, a3);
  return this;
}

std::strstreambuf *std::strstreambuf::strstreambuf(std::strstreambuf *this, const char *a2, int64_t a3)
{
  *this = off_5EE88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::locale::locale((this + 56));
  *this = off_5C668;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 80) = *(this + 80) & 0xF8 | 4;
  if (a2)
  {
    if (a3 <= 0)
    {
      if (a3)
      {
        a3 = 0x7FFFFFFFLL;
      }

      else
      {
        a3 = strlen(a2);
      }
    }

    *(this + 1) = a2;
    *(this + 2) = a2;
    *(this + 3) = &a2[a3];
  }

  return this;
}

{
  *this = off_5EE88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::locale::locale((this + 56));
  *this = off_5C668;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 80) = *(this + 80) & 0xF8 | 4;
  if (a2)
  {
    if (a3 <= 0)
    {
      if (a3)
      {
        a3 = 0x7FFFFFFFLL;
      }

      else
      {
        a3 = strlen(a2);
      }
    }

    *(this + 1) = a2;
    *(this + 2) = a2;
    *(this + 3) = &a2[a3];
  }

  return this;
}

std::strstreambuf *std::strstreambuf::strstreambuf(std::strstreambuf *this, const signed __int8 *a2, int64_t a3)
{
  *this = off_5EE88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::locale::locale((this + 56));
  *this = off_5C668;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 80) = *(this + 80) & 0xF8 | 4;
  if (a2)
  {
    if (a3 <= 0)
    {
      if (a3)
      {
        a3 = 0x7FFFFFFFLL;
      }

      else
      {
        a3 = strlen(a2);
      }
    }

    *(this + 1) = a2;
    *(this + 2) = a2;
    *(this + 3) = &a2[a3];
  }

  return this;
}

void std::strstreambuf::~strstreambuf(std::strstreambuf *this)
{
  *this = off_5C668;
  if (*(this + 80) & 2) == 0 && (*(this + 80))
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(this + 9);
      if (v3)
      {
        v3();
      }

      else
      {
        operator delete[](v2);
      }
    }
  }

  *this = off_5EE88;
  std::locale::~locale((this + 56));
}

{
  std::strstreambuf::~strstreambuf(this);

  operator delete(v1);
}

void std::strstreambuf::_M_free(std::strstreambuf *this, char *__p)
{
  if (__p)
  {
    v2 = *(this + 9);
    if (v2)
    {
      v2(__p);
    }

    else
    {
      operator delete[](__p);
    }
  }
}

uint64_t std::strstreambuf::freeze(uint64_t this, int a2)
{
  if (*(this + 80))
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(this + 80) = *(this + 80) & 0xFD | v2;
  }

  return this;
}

uint64_t std::strstreambuf::str(std::strstreambuf *this)
{
  if (*(this + 80))
  {
    *(this + 80) |= 2u;
  }

  return *(this + 1);
}

uint64_t std::strstreambuf::pcount(std::strstreambuf *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return (v1 - *(this + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t std::strstreambuf::overflow(std::strstreambuf *this, uint64_t a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2;
  v4 = *(this + 5);
  if (v4 == *(this + 6) && (*(this + 80) & 6) == 0 && (*(this + 80) & 1) != 0)
  {
    v6 = *(this + 4);
    v7 = v4 - v6;
    v8 = 2 * (v4 - v6);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = *(this + 8);
    if (!v10)
    {
      v12 = operator new[](v9);
      goto LABEL_17;
    }

    v11 = v10(v9);
    if (v11)
    {
      v12 = v11;
      v6 = *(this + 4);
LABEL_17:
      memcpy(v12, v6, v7);
      v14 = *(this + 4);
      v15 = *(this + 2);
      if (v15)
      {
        v16 = v15 - *(this + 1);
        v17 = &v12[v16];
        if (v16 <= v7)
        {
          v16 = v7;
        }

        *(this + 1) = v12;
        *(this + 2) = v17;
        *(this + 3) = &v12[v16];
      }

      *(this + 6) = &v12[v9];
      *(this + 4) = v12;
      *(this + 5) = &v12[v7];
      if (v14)
      {
        v18 = *(this + 9);
        if (v18)
        {
          v18();
        }

        else
        {
          operator delete[](v14);
        }
      }
    }
  }

  v5 = *(this + 5);
  if (v5 == *(this + 6))
  {
    return 0xFFFFFFFFLL;
  }

  *v5 = v2;
  ++*(this + 5);
  return v2;
}

uint64_t std::strstreambuf::pbackfail(std::strstreambuf *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (v2 == *(this + 1))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = (v2 - 1);
  if (a2 == -1)
  {
    a2 = 0;
    goto LABEL_8;
  }

  if (*v3 == a2)
  {
LABEL_8:
    *(this + 2) = v3;
    return a2;
  }

  if ((*(this + 80) & 4) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 2) = v3;
  *v3 = a2;
  return a2;
}

uint64_t std::strstreambuf::underflow(std::strstreambuf *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3);
  if (v1 == v2)
  {
    v2 = *(this + 5);
    if (v2 <= v1)
    {
      return 0xFFFFFFFFLL;
    }

    *(this + 3) = v2;
  }

  if (v1 != v2)
  {
    return *v1;
  }

  return 0xFFFFFFFFLL;
}

double std::strstreambuf::seekoff@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a3 & 0xFFFFFFFD | ~a4 & 0x18;
  v6 = v5 == 0;
  if (v5)
  {
    if ((a4 & 8) != 0)
    {
      v7 = 0;
      v6 = 1;
      goto LABEL_8;
    }

    if ((a4 & 0x10) == 0)
    {
      goto LABEL_21;
    }
  }

  if (!a1[5])
  {
    goto LABEL_21;
  }

  v7 = 1;
LABEL_8:
  v8 = a1[2];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = a1[6];
  v10 = v9;
  if (!v9)
  {
    v10 = a1[3];
  }

  v11 = a1[1];
  if (!a3)
  {
    v12 = 0;
    goto LABEL_19;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      v12 = v10 - v11;
      goto LABEL_19;
    }

LABEL_21:
    v12 = -1;
    goto LABEL_22;
  }

  if (v7)
  {
    v8 = a1[5];
  }

  v12 = v8 - v11;
LABEL_19:
  v13 = v12 + a2;
  if (v12 + a2 < 0 || v13 > (v10 - v11))
  {
    goto LABEL_21;
  }

  if (v7)
  {
    v15 = a1[4];
    if (v11 + v13 >= v15)
    {
      v16 = v13 + v11 - v15;
    }

    else
    {
      a1[4] = v11;
      v16 = v12 + a2;
      v15 = v11;
    }

    a1[5] = v15 + v16;
  }

  if (v6)
  {
    if (v13 <= (a1[3] - v11))
    {
      a1[2] = v11 + v13;
    }

    else
    {
      v17 = a1[5];
      a1[2] = v11 + v13;
      if (v13 <= (v17 - v11))
      {
        a1[3] = v17;
      }

      else
      {
        a1[3] = v9;
      }
    }
  }

LABEL_22:
  *a5 = v12;
  result = 0.0;
  *(a5 + 8) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  return result;
}

std::istrstream *std::istrstream::istrstream(std::istrstream *this, char *a2, char *a3)
{
  v6 = std::istream::istream(this, a2 + 1, 0);
  v7 = *a2;
  *v6 = *a2;
  *(this + *(v7 - 24)) = *(a2 + 3);
  std::strstreambuf::strstreambuf((this + 16), a3, 0, 0);
  std::ios::init(this + *(*this - 24), this + 16);
  return this;
}

void sub_AF68(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v1 + 2));
  v4 = *(v2 + 8);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

std::istrstream *std::istrstream::istrstream(std::istrstream *this, char *a2)
{
  std::ios_base::ios_base((this + 104));
  *(this + 13) = off_5D458;
  *(this + 40) = 0;
  *(this + 164) = 0;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  std::istream::istream(this, off_5C730, 0);
  *this = off_5C6F0;
  *(this + 13) = off_5C718;
  std::strstreambuf::strstreambuf((this + 16), a2, 0, 0);
  std::ios::init(this + *(*this - 24), this + 16);
  return this;
}

void sub_B0E4(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v2 + 2));
  *v2 = off_5C8B0;
  v2[1] = 0;
  v2[13] = off_5C8D8;
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

std::istrstream *std::istrstream::istrstream(std::istrstream *this, const char *a2, const char *a3)
{
  v6 = std::istream::istream(this, a2 + 1, 0);
  v7 = *a2;
  *v6 = *a2;
  *(this + *(v7 - 24)) = *(a2 + 3);
  std::strstreambuf::strstreambuf((this + 16), a3, 0);
  std::ios::init(this + *(*this - 24), this + 16);
  return this;
}

void sub_B234(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v1 + 2));
  v4 = *(v2 + 8);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

std::istrstream *std::istrstream::istrstream(std::istrstream *this, const char *a2)
{
  std::ios_base::ios_base((this + 104));
  *(this + 13) = off_5D458;
  *(this + 40) = 0;
  *(this + 164) = 0;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  std::istream::istream(this, off_5C730, 0);
  *this = off_5C6F0;
  *(this + 13) = off_5C718;
  std::strstreambuf::strstreambuf((this + 16), a2, 0);
  std::ios::init(this + *(*this - 24), this + 16);
  return this;
}

void sub_B3AC(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v2 + 2));
  *v2 = off_5C8B0;
  v2[1] = 0;
  v2[13] = off_5C8D8;
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

std::istrstream *std::istrstream::istrstream(std::istrstream *this, char *a2, char *a3, uint64_t a4)
{
  v8 = std::istream::istream(this, a2 + 1, 0);
  v9 = *a2;
  *v8 = *a2;
  *(this + *(v9 - 24)) = *(a2 + 3);
  std::strstreambuf::strstreambuf((this + 16), a3, a4, 0);
  std::ios::init(this + *(*this - 24), this + 16);
  return this;
}

void sub_B50C(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v1 + 2));
  v4 = *(v2 + 8);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

std::istrstream *std::istrstream::istrstream(std::istrstream *this, char *a2, uint64_t a3)
{
  std::ios_base::ios_base((this + 104));
  *(this + 13) = off_5D458;
  *(this + 40) = 0;
  *(this + 164) = 0;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  std::istream::istream(this, off_5C730, 0);
  *this = off_5C6F0;
  *(this + 13) = off_5C718;
  std::strstreambuf::strstreambuf((this + 16), a2, a3, 0);
  std::ios::init(this + *(*this - 24), this + 16);
  return this;
}

void sub_B68C(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v2 + 2));
  *v2 = off_5C8B0;
  v2[1] = 0;
  v2[13] = off_5C8D8;
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

std::istrstream *std::istrstream::istrstream(std::istrstream *this, const char *a2, const char *a3, int64_t a4)
{
  v8 = std::istream::istream(this, a2 + 1, 0);
  v9 = *a2;
  *v8 = *a2;
  *(this + *(v9 - 24)) = *(a2 + 3);
  std::strstreambuf::strstreambuf((this + 16), a3, a4);
  std::ios::init(this + *(*this - 24), this + 16);
  return this;
}

void sub_B7E8(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v1 + 2));
  v4 = *(v2 + 8);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

std::istrstream *std::istrstream::istrstream(std::istrstream *this, const char *a2, int64_t a3)
{
  std::ios_base::ios_base((this + 104));
  *(this + 13) = off_5D458;
  *(this + 40) = 0;
  *(this + 164) = 0;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  std::istream::istream(this, off_5C730, 0);
  *this = off_5C6F0;
  *(this + 13) = off_5C718;
  std::strstreambuf::strstreambuf((this + 16), a2, a3);
  std::ios::init(this + *(*this - 24), this + 16);
  return this;
}

void sub_B964(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v2 + 2));
  *v2 = off_5C8B0;
  v2[1] = 0;
  v2[13] = off_5C8D8;
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

void std::istrstream::~istrstream(std::istrstream *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  std::strstreambuf::~strstreambuf((this + 16));
  v5 = a2[1];
  *this = v5;
  *(this + *(v5 - 24)) = a2[2];
  *(this + 1) = 0;
}

void std::istrstream::~istrstream(std::istrstream *this)
{
  std::ios_base::~ios_base((v1 + 104));
}

{
  std::ios_base::~ios_base((v2 + 104));

  operator delete(this);
}

void virtual thunk tostd::istrstream::~istrstream(std::istrstream *this)
{
  v2 = (v1 + 104);

  std::ios_base::~ios_base(v2);
}

{
  std::istrstream::~istrstream((this + *(*this - 24)));
}

uint64_t std::istrstream::str(std::istrstream *this)
{
  if (*(this + 96))
  {
    *(this + 96) |= 2u;
  }

  return *(this + 3);
}

std::ostrstream *std::ostrstream::ostrstream(std::ostrstream *this, uint64_t *a2)
{
  v4 = a2[1];
  *this = v4;
  *(this + *(v4 - 24)) = a2[2];
  std::ios::init(this + *(*this - 24), 0);
  v5 = *a2;
  *this = *a2;
  *(this + *(v5 - 24)) = a2[3];
  std::strstreambuf::strstreambuf((this + 8), 0);
  std::ios::init(this + *(*this - 24), this + 8);
  return this;
}

std::ostrstream *std::ostrstream::ostrstream(std::ostrstream *this)
{
  v2 = std::ios_base::ios_base((this + 96));
  *(this + 39) = 0;
  *(this + 160) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *this = off_5C918;
  *(this + 12) = off_5C940;
  std::ios::init(v2, 0);
  *this = off_5C760;
  *(this + 12) = off_5C788;
  std::strstreambuf::strstreambuf((this + 8), 0);
  std::ios::init(this + *(*this - 24), this + 8);
  return this;
}

void sub_BE84(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v2 + 8));
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::ostrstream::ostrstream(uint64_t *a1, uint64_t *a2, char *a3, int a4, char a5)
{
  v10 = a2[1];
  *a1 = v10;
  *(a1 + *(v10 - 24)) = a2[2];
  std::ios::init(a1 + *(*a1 - 24), 0);
  v11 = *a2;
  *a1 = *a2;
  *(a1 + *(v11 - 24)) = a2[3];
  v12 = a3;
  if (a5)
  {
    v12 = &a3[strlen(a3)];
  }

  std::strstreambuf::strstreambuf((a1 + 1), a3, a4, v12);
  std::ios::init(a1 + *(*a1 - 24), (a1 + 1));
  return a1;
}

uint64_t std::ostrstream::ostrstream(uint64_t a1, char *a2, int a3, char a4)
{
  v8 = std::ios_base::ios_base((a1 + 96));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *a1 = off_5C918;
  *(a1 + 96) = off_5C940;
  std::ios::init(v8, 0);
  *a1 = off_5C760;
  *(a1 + 96) = off_5C788;
  v9 = a2;
  if (a4)
  {
    v9 = &a2[strlen(a2)];
  }

  std::strstreambuf::strstreambuf((a1 + 8), a2, a3, v9);
  std::ios::init(a1 + *(*a1 - 24), a1 + 8);
  return a1;
}

void sub_C18C(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v2 + 8));
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

void std::ostrstream::~ostrstream(std::ostrstream *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 24)) = a2[3];
  std::strstreambuf::~strstreambuf((this + 8));
}

void std::ostrstream::~ostrstream(std::ostrstream *this)
{
  *this = off_5C760;
  v1 = (this + 96);
  *(this + 12) = off_5C788;
  std::strstreambuf::~strstreambuf((this + 8));
  std::ios_base::~ios_base(v1);
}

{
  *this = off_5C760;
  v2 = (this + 96);
  *(this + 12) = off_5C788;
  std::strstreambuf::~strstreambuf((this + 8));
  std::ios_base::~ios_base(v2);

  operator delete(this);
}

void virtual thunk tostd::ostrstream::~ostrstream(std::ostrstream *this)
{
  v1 = (this + *(*this - 24));
  *v1 = off_5C760;
  v2 = (v1 + 12);
  v1[12] = off_5C788;
  std::strstreambuf::~strstreambuf((v1 + 1));

  std::ios_base::~ios_base(v2);
}

{
  std::ostrstream::~ostrstream((this + *(*this - 24)));
}

uint64_t std::ostrstream::freeze(uint64_t this, int a2)
{
  if (*(this + 88))
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(this + 88) = *(this + 88) & 0xFD | v2;
  }

  return this;
}

uint64_t std::ostrstream::str(std::ostrstream *this)
{
  if (*(this + 88))
  {
    *(this + 88) |= 2u;
  }

  return *(this + 2);
}

uint64_t std::ostrstream::pcount(std::ostrstream *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return (v1 - *(this + 10));
  }

  else
  {
    return 0;
  }
}

std::strstream *std::strstream::strstream(std::strstream *this, uint64_t *a2)
{
  v4 = std::iostream::iostream(this, a2 + 1, 0);
  v5 = *a2;
  *v4 = *a2;
  *(this + *(v5 - 24)) = a2[8];
  *(this + 2) = a2[9];
  std::strstreambuf::strstreambuf((this + 24), 0);
  std::ios::init(this + *(*this - 24), this + 24);
  return this;
}

void sub_C578(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v1 + 3));
  v4 = *(v2 + 16);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 24);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

std::strstream *std::strstream::strstream(std::strstream *this)
{
  std::ios_base::ios_base((this + 112));
  *(this + 14) = off_5D458;
  *(this + 41) = 0;
  *(this + 168) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  std::iostream::iostream(this, off_5C838, 0);
  *this = off_5C7D0;
  *(this + 14) = off_5C820;
  *(this + 2) = off_5C7F8;
  std::strstreambuf::strstreambuf((this + 24), 0);
  std::ios::init(this + *(*this - 24), this + 24);
  return this;
}

void sub_C714(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v2 + 3));
  *v2 = off_5C9F8;
  v2[1] = 0;
  v2[14] = off_5CA20;
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::strstream::strstream(uint64_t *a1, uint64_t *a2, char *a3, int a4, char a5)
{
  v10 = std::iostream::iostream(a1, a2 + 1, 0);
  v11 = *a2;
  *v10 = *a2;
  *(a1 + *(v11 - 24)) = a2[8];
  a1[2] = a2[9];
  v12 = a3;
  if (a5)
  {
    v12 = &a3[strlen(a3)];
  }

  std::strstreambuf::strstreambuf((a1 + 3), a3, a4, v12);
  std::ios::init(a1 + *(*a1 - 24), (a1 + 3));
  return a1;
}

void sub_C8C8(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v1 + 3));
  v4 = *(v2 + 16);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 24);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::strstream::strstream(uint64_t a1, char *a2, int a3, char a4)
{
  std::ios_base::ios_base((a1 + 112));
  *(a1 + 112) = off_5D458;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  std::iostream::iostream(a1, off_5C838, 0);
  *a1 = off_5C7D0;
  *(a1 + 112) = off_5C820;
  *(a1 + 16) = off_5C7F8;
  v8 = a2;
  if (a4)
  {
    v8 = &a2[strlen(a2)];
  }

  std::strstreambuf::strstreambuf((a1 + 24), a2, a3, v8);
  std::ios::init(a1 + *(*a1 - 24), a1 + 24);
  return a1;
}

void sub_CA8C(_Unwind_Exception *a1)
{
  std::strstreambuf::~strstreambuf((v2 + 3));
  *v2 = off_5C9F8;
  v2[1] = 0;
  v2[14] = off_5CA20;
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

void std::strstream::~strstream(std::strstream *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[8];
  *(this + 2) = a2[9];
  std::strstreambuf::~strstreambuf((this + 24));
  v5 = a2[2];
  *this = v5;
  *(this + *(v5 - 24)) = a2[3];
  *(this + 1) = 0;
}

void std::strstream::~strstream(std::strstream *this)
{
  std::ios_base::~ios_base((v1 + 112));
}

{
  std::ios_base::~ios_base((v2 + 112));

  operator delete(this);
}

void non-virtual thunk tostd::strstream::~strstream(std::strstream *this)
{

  std::ios_base::~ios_base((this + 96));
}

{
  std::strstream::~strstream((this - 16));
}

void virtual thunk tostd::strstream::~strstream(std::strstream *this)
{
  v2 = (v1 + 112);

  std::ios_base::~ios_base(v2);
}

{
  std::strstream::~strstream((this + *(*this - 24)));
}

uint64_t std::strstream::freeze(uint64_t this, int a2)
{
  if (*(this + 104))
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(this + 104) = *(this + 104) & 0xFD | v2;
  }

  return this;
}

uint64_t std::strstream::pcount(std::strstream *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return (v1 - *(this + 14));
  }

  else
  {
    return 0;
  }
}

uint64_t std::strstream::str(std::strstream *this)
{
  if (*(this + 104))
  {
    *(this + 104) |= 2u;
  }

  return *(this + 4);
}

uint64_t std::_Rb_tree_increment(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    do
    {
      result = v1;
      v1 = *(v1 + 16);
    }

    while (v1);
  }

  else
  {
    do
    {
      v2 = result;
      result = *(result + 8);
    }

    while (v2 == *(result + 24));
    if (*(v2 + 24) == result)
    {
      return v2;
    }
  }

  return result;
}

{
  v1 = *(result + 24);
  if (v1)
  {
    do
    {
      result = v1;
      v1 = *(v1 + 16);
    }

    while (v1);
  }

  else
  {
    do
    {
      v2 = result;
      result = *(result + 8);
    }

    while (v2 == *(result + 24));
    if (*(v2 + 24) == result)
    {
      return v2;
    }
  }

  return result;
}

uint64_t std::_Rb_tree_decrement(uint64_t a1)
{
  if (!*a1 && *(*(a1 + 8) + 8) == a1)
  {
    return *(a1 + 24);
  }

  v1 = *(a1 + 16);
  if (v1)
  {
    do
    {
      v2 = v1;
      v1 = *(v1 + 24);
    }

    while (v1);
  }

  else
  {
    do
    {
      v2 = *(a1 + 8);
      v3 = a1 == *(v2 + 16);
      a1 = v2;
    }

    while (v3);
  }

  return v2;
}

uint64_t std::_Rb_tree_rotate_left(uint64_t result, void *a2)
{
  v2 = *(result + 24);
  v3 = *(v2 + 16);
  *(result + 24) = v3;
  if (v3)
  {
    *(v3 + 8) = result;
  }

  v4 = *(result + 8);
  *(v2 + 8) = v4;
  if (*a2 != result)
  {
    v6 = *(v4 + 16);
    v5 = (v4 + 16);
    if (v6 == result)
    {
      a2 = v5;
    }

    else
    {
      a2 = v5 + 1;
    }
  }

  *a2 = v2;
  *(v2 + 16) = result;
  *(result + 8) = v2;
  return result;
}

uint64_t std::_Rb_tree_rotate_right(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  v3 = *(v2 + 24);
  *(result + 16) = v3;
  if (v3)
  {
    *(v3 + 8) = result;
  }

  v4 = *(result + 8);
  *(v2 + 8) = v4;
  if (*a2 != result)
  {
    v6 = *(v4 + 24);
    v5 = (v4 + 24);
    if (v6 == result)
    {
      a2 = v5;
    }

    else
    {
      a2 = v5 - 1;
    }
  }

  *a2 = v2;
  *(v2 + 24) = result;
  *(result + 8) = v2;
  return result;
}

uint64_t std::_Rb_tree_insert_and_rebalance(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v4 = (a4 + 1);
  *(a2 + 8) = a3;
  if (result)
  {
    a3[2] = a2;
    if (a3 == a4)
    {
      a4[1] = a2;
      v5 = a4 + 3;
LABEL_8:
      *v5 = a2;
      goto LABEL_9;
    }

    v7 = a4[2];
    v5 = a4 + 2;
    v6 = v7;
  }

  else
  {
    a3[3] = a2;
    v8 = a4[3];
    v5 = a4 + 3;
    v6 = v8;
  }

  if (v6 == a3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v9 = *v4;
  if (*v4 != a2)
  {
    v10 = *(a2 + 8);
    if (!*v10)
    {
      while (1)
      {
        v11 = *(v10 + 8);
        v12 = *(v11 + 16);
        if (v10 == v12)
        {
          v14 = *(v11 + 24);
          if (!v14 || *v14)
          {
            v15 = *(v10 + 24);
            if (a2 == v15)
            {
              v26 = *(v15 + 16);
              *(v10 + 24) = v26;
              v27 = v11;
              if (v26)
              {
                *(v26 + 8) = v10;
                v27 = *(v10 + 8);
              }

              *(v15 + 8) = v27;
              v28 = v4;
              if (*v4 != v10)
              {
                v30 = *(v27 + 16);
                v29 = (v27 + 16);
                if (v30 == v10)
                {
                  v28 = v29;
                }

                else
                {
                  v28 = v29 + 1;
                }
              }

              *v28 = v15;
              *(v15 + 16) = v10;
              *(v10 + 8) = v15;
              v12 = *(v11 + 16);
            }

            else
            {
              v15 = v10;
              v10 = a2;
            }

            *v15 = 1;
            *v11 = 0;
            v31 = *(v12 + 24);
            *(v11 + 16) = v31;
            if (v31)
            {
              *(v31 + 8) = v11;
            }

            v32 = *(v11 + 8);
            *(v12 + 8) = v32;
            v33 = v4;
            if (*v4 != v11)
            {
              v35 = *(v32 + 24);
              v34 = (v32 + 24);
              if (v35 == v11)
              {
                v33 = v34;
              }

              else
              {
                v33 = v34 - 1;
              }
            }

            *v33 = v12;
            *(v12 + 24) = v11;
            goto LABEL_49;
          }

          *v10 = 1;
          *v14 = 1;
        }

        else
        {
          if (!v12 || *v12)
          {
            v13 = *(v10 + 16);
            if (a2 == v13)
            {
              v16 = *(v13 + 24);
              *(v10 + 16) = v16;
              v17 = v11;
              if (v16)
              {
                *(v16 + 8) = v10;
                v17 = *(v10 + 8);
              }

              *(v13 + 8) = v17;
              v18 = v4;
              if (*v4 != v10)
              {
                v20 = *(v17 + 24);
                v19 = (v17 + 24);
                if (v20 == v10)
                {
                  v18 = v19;
                }

                else
                {
                  v18 = v19 - 1;
                }
              }

              *v18 = v13;
              *(v13 + 24) = v10;
              *(v10 + 8) = v13;
            }

            else
            {
              v13 = v10;
              v10 = a2;
            }

            *v13 = 1;
            *v11 = 0;
            v12 = *(v11 + 24);
            v21 = *(v12 + 16);
            *(v11 + 24) = v21;
            if (v21)
            {
              *(v21 + 8) = v11;
            }

            v22 = *(v11 + 8);
            *(v12 + 8) = v22;
            v23 = v4;
            if (*v4 != v11)
            {
              v25 = *(v22 + 16);
              v24 = (v22 + 16);
              if (v25 == v11)
              {
                v23 = v24;
              }

              else
              {
                v23 = v24 + 1;
              }
            }

            *v23 = v12;
            *(v12 + 16) = v11;
LABEL_49:
            a2 = v10;
            *(v11 + 8) = v12;
            goto LABEL_52;
          }

          *v10 = 1;
          *v12 = 1;
        }

        a2 = v11;
        *v11 = 0;
LABEL_52:
        v9 = *v4;
        if (a2 != *v4)
        {
          v10 = *(a2 + 8);
          if (!*v10)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  *v9 = 1;
  return result;
}

int *std::_Rb_tree_rebalance_for_erase(int *result, void *a2)
{
  v2 = (a2 + 1);
  v4 = *(result + 2);
  v3 = *(result + 3);
  if (!v4)
  {
    v6 = result;
LABEL_16:
    v8 = *(v6 + 1);
    if (!v3)
    {
      v7 = 0;
      goto LABEL_20;
    }

    v4 = v3;
LABEL_18:
    *(v4 + 1) = v8;
    v7 = v4;
LABEL_20:
    v11 = (a2 + 1);
    if (*v2 != result)
    {
      v12 = *(result + 1);
      v13 = *(v12 + 16);
      v11 = (v12 + 16);
      if (v13 != result)
      {
        ++v11;
      }
    }

    *v11 = v7;
    if (a2[2] == result)
    {
      if (*(result + 3))
      {
        v14 = v7;
        do
        {
          v15 = v14;
          v14 = *(v14 + 2);
        }

        while (v14);
      }

      else
      {
        v15 = *(result + 1);
      }

      a2[2] = v15;
    }

    if (a2[3] == result)
    {
      if (*(result + 2))
      {
        v16 = v7;
        do
        {
          v17 = v16;
          v16 = *(v16 + 3);
        }

        while (v16);
      }

      else
      {
        v17 = *(result + 1);
      }

      a2[3] = v17;
    }

    result = v6;
    if (!*v6)
    {
      return result;
    }

    goto LABEL_42;
  }

  if (!v3)
  {
    v8 = *(result + 1);
    v6 = result;
    goto LABEL_18;
  }

  v5 = *(result + 3);
  do
  {
    v6 = v5;
    v5 = *(v5 + 2);
  }

  while (v5);
  v7 = *(v6 + 3);
  if (v6 == result)
  {
    v3 = *(v6 + 3);
    goto LABEL_16;
  }

  *(v4 + 1) = v6;
  *(v6 + 2) = v4;
  v8 = v6;
  if (v6 != v3)
  {
    v8 = *(v6 + 1);
    v9 = v8;
    if (v7)
    {
      *(v7 + 1) = v8;
      v9 = *(v6 + 1);
    }

    *(v9 + 2) = v7;
    *(v6 + 3) = v3;
    *(*(result + 3) + 8) = v6;
  }

  if (*v2 == result)
  {
    *v2 = v6;
    v10 = *(result + 1);
  }

  else
  {
    v10 = *(result + 1);
    if (*(v10 + 16) == result)
    {
      *(v10 + 16) = v6;
    }

    else
    {
      *(v10 + 24) = v6;
    }
  }

  *(v6 + 1) = v10;
  v18 = *v6;
  *v6 = *result;
  *result = v18;
  if (!v18)
  {
    return result;
  }

LABEL_42:
  if (v7 == *v2)
  {
    v19 = v7;
    goto LABEL_114;
  }

  while (1)
  {
    v19 = v7;
    v7 = v8;
    if (v19 && *v19 != 1)
    {
      v7 = v19;
      goto LABEL_115;
    }

    v20 = *(v8 + 2);
    if (v19 != v20)
    {
      if (!*v20)
      {
        *v20 = 1;
        *v7 = 0;
        v21 = *(v20 + 24);
        *(v7 + 2) = v21;
        if (v21)
        {
          *(v21 + 8) = v7;
        }

        v22 = *(v7 + 1);
        *(v20 + 8) = v22;
        v23 = a2 + 1;
        if (*v2 != v7)
        {
          v25 = *(v22 + 24);
          v24 = (v22 + 24);
          if (v25 == v7)
          {
            v23 = v24;
          }

          else
          {
            v23 = v24 - 1;
          }
        }

        *v23 = v20;
        *(v20 + 24) = v7;
        *(v7 + 1) = v20;
        v20 = *(v7 + 2);
      }

      v26 = *(v20 + 24);
      if (!v26 || *v26 == 1)
      {
        v27 = *(v20 + 16);
        if (v27 && *v27 != 1)
        {
          goto LABEL_85;
        }

        goto LABEL_71;
      }

      v27 = *(v20 + 16);
      if (v27 && *v27 != 1)
      {
LABEL_85:
        *v20 = *v7;
        *v7 = 1;
      }

      else
      {
        *v26 = 1;
        *v20 = 0;
        v35 = *(v26 + 16);
        *(v20 + 24) = v35;
        if (v35)
        {
          *(v35 + 8) = v20;
        }

        v36 = *(v20 + 8);
        *(v26 + 8) = v36;
        v37 = a2 + 1;
        if (*v2 != v20)
        {
          v39 = *(v36 + 16);
          v38 = (v36 + 16);
          if (v39 == v20)
          {
            v37 = v38;
          }

          else
          {
            v37 = v38 + 1;
          }
        }

        *v37 = v26;
        *(v26 + 16) = v20;
        *(v20 + 8) = v26;
        v20 = *(v7 + 2);
        v27 = *(v20 + 16);
        *v20 = *v7;
        *v7 = 1;
        if (!v27)
        {
          goto LABEL_87;
        }
      }

      *v27 = 1;
LABEL_87:
      v40 = *(v20 + 24);
      *(v7 + 2) = v40;
      if (v40)
      {
        *(v40 + 8) = v7;
      }

      v41 = *(v7 + 1);
      *(v20 + 8) = v41;
      if (*v2 != v7)
      {
        v43 = *(v41 + 24);
        v42 = (v41 + 24);
        if (v43 == v7)
        {
          v2 = v42;
        }

        else
        {
          v2 = v42 - 1;
        }
      }

      *v2 = v20;
      *(v20 + 24) = v7;
      goto LABEL_113;
    }

    v20 = *(v7 + 3);
    if (!*v20)
    {
      *v20 = 1;
      *v7 = 0;
      v28 = *(v20 + 16);
      *(v7 + 3) = v28;
      if (v28)
      {
        *(v28 + 8) = v7;
      }

      v29 = *(v7 + 1);
      *(v20 + 8) = v29;
      v30 = a2 + 1;
      if (*v2 != v7)
      {
        v32 = *(v29 + 16);
        v31 = (v29 + 16);
        if (v32 == v7)
        {
          v30 = v31;
        }

        else
        {
          v30 = v31 + 1;
        }
      }

      *v30 = v20;
      *(v20 + 16) = v7;
      *(v7 + 1) = v20;
      v20 = *(v7 + 3);
    }

    v33 = *(v20 + 16);
    if (v33)
    {
      if (*v33 != 1)
      {
        break;
      }
    }

    v34 = *(v20 + 24);
    if (v34 && *v34 != 1)
    {
      goto LABEL_104;
    }

LABEL_71:
    *v20 = 0;
    v8 = *(v7 + 1);
    if (v7 == *v2)
    {
      goto LABEL_115;
    }
  }

  v34 = *(v20 + 24);
  if (v34 && *v34 != 1)
  {
LABEL_104:
    *v20 = *v7;
    *v7 = 1;
  }

  else
  {
    *v33 = 1;
    *v20 = 0;
    v44 = *(v33 + 24);
    *(v20 + 16) = v44;
    if (v44)
    {
      *(v44 + 8) = v20;
    }

    v45 = *(v20 + 8);
    *(v33 + 8) = v45;
    v46 = a2 + 1;
    if (*v2 != v20)
    {
      v48 = *(v45 + 24);
      v47 = (v45 + 24);
      if (v48 == v20)
      {
        v46 = v47;
      }

      else
      {
        v46 = v47 - 1;
      }
    }

    *v46 = v33;
    *(v33 + 24) = v20;
    *(v20 + 8) = v33;
    v20 = *(v7 + 3);
    v34 = *(v20 + 24);
    *v20 = *v7;
    *v7 = 1;
    if (!v34)
    {
      goto LABEL_106;
    }
  }

  *v34 = 1;
LABEL_106:
  v49 = *(v20 + 16);
  *(v7 + 3) = v49;
  if (v49)
  {
    *(v49 + 8) = v7;
  }

  v50 = *(v7 + 1);
  *(v20 + 8) = v50;
  if (*v2 != v7)
  {
    v52 = *(v50 + 16);
    v51 = (v50 + 16);
    if (v52 == v7)
    {
      v2 = v51;
    }

    else
    {
      v2 = v51 + 1;
    }
  }

  *v2 = v20;
  *(v20 + 16) = v7;
LABEL_113:
  *(v7 + 1) = v20;
LABEL_114:
  v7 = v19;
  if (v19)
  {
LABEL_115:
    *v7 = 1;
  }

  return result;
}

unint64_t std::_Rb_tree_black_count(unint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = *result == 1;
    while (v2 != a2)
    {
      v2 = *(v2 + 8);
      if (*v2 == 1)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }
    }
  }

  return result;
}

__n128 std::filebuf::_M_create_pback(__n128 *a1)
{
  if ((a1[36].n128_u8[0] & 1) == 0)
  {
    result = a1[1];
    a1[35] = result;
    a1->n128_u64[1] = &a1[34].n128_u64[1] + 3;
    a1[1].n128_u64[0] = &a1[34].n128_u64[1] + 3;
    a1[1].n128_u64[1] = &a1[34].n128_u64[1] + 4;
    a1[36].n128_u8[0] = 1;
  }

  return result;
}

uint64_t std::filebuf::_M_destroy_pback(uint64_t result)
{
  if (*(result + 576) == 1)
  {
    v1 = *(result + 560);
    if (*(result + 16) != *(result + 8))
    {
      ++v1;
    }

    *(result + 560) = v1;
    v2 = *(result + 568);
    *(result + 8) = *(result + 536);
    *(result + 16) = v1;
    *(result + 24) = v2;
    *(result + 576) = 0;
  }

  return result;
}

uint64_t std::filebuf::basic_filebuf(uint64_t a1)
{
  *a1 = off_5EE88;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  *a1 = off_5CAA8;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  std::__basic_file<char>::__basic_file(a1 + 128);
  *(a1 + 152) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 544) = 1024;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0;
  v2 = std::locale::id::_M_id(&std::codecvt<char,char,__mbstate_t>::id);
  v3 = *(a1 + 56);
  if (v2 < *(v3 + 16) && *(*(v3 + 8) + 8 * v2))
  {
    v4 = std::locale::id::_M_id(&std::codecvt<char,char,__mbstate_t>::id);
    v5 = *(a1 + 56);
    if (v4 >= *(v5 + 16) || (v6 = *(*(v5 + 8) + 8 * v4)) == 0)
    {
      std::__throw_bad_cast();
    }

    *(a1 + 584) = v6;
  }

  return a1;
}

void sub_D864(_Unwind_Exception *a1)
{
  std::__basic_file<char>::~__basic_file((v1 + 128));
  *v1 = v2;
  std::locale::~locale((v1 + 56));
  _Unwind_Resume(a1);
}

void *std::filebuf::~filebuf(void *a1)
{
  *a1 = off_5CAA8;
  v2 = (a1 + 16);
  std::filebuf::close(a1);
  std::__basic_file<char>::~__basic_file(v2);
  *a1 = off_5EE88;
  std::locale::~locale((a1 + 7));
  return a1;
}

uint64_t std::filebuf::close(uint64_t a1)
{
  if (!std::__basic_file<char>::is_open((a1 + 128)))
  {
    return 0;
  }

  v2 = !std::filebuf::_M_terminate_output(a1);
  *(a1 + 144) = 0;
  *(a1 + 576) = 0;
  std::filebuf::_M_destroy_internal_buffer(a1);
  *(a1 + 553) = 0;
  v3 = *(a1 + 536);
  *(a1 + 8) = v3;
  *(a1 + 16) = v3;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = *(a1 + 232);
  *(a1 + 344) = *(a1 + 216);
  *(a1 + 360) = v4;
  v5 = *(a1 + 264);
  *(a1 + 376) = *(a1 + 248);
  *(a1 + 392) = v5;
  v6 = *(a1 + 168);
  *(a1 + 280) = *(a1 + 152);
  *(a1 + 296) = v6;
  v7 = *(a1 + 200);
  *(a1 + 312) = *(a1 + 184);
  *(a1 + 328) = v7;
  v8 = *(a1 + 232);
  *(a1 + 472) = *(a1 + 216);
  *(a1 + 488) = v8;
  v9 = *(a1 + 264);
  *(a1 + 504) = *(a1 + 248);
  *(a1 + 520) = v9;
  v10 = *(a1 + 168);
  *(a1 + 408) = *(a1 + 152);
  *(a1 + 424) = v10;
  v11 = *(a1 + 200);
  *(a1 + 440) = *(a1 + 184);
  *(a1 + 456) = v11;
  if (std::__basic_file<char>::close((a1 + 128)) == 0 || v2)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

void sub_D9F8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0xD934);
}

void std::filebuf::~filebuf(void *a1)
{
  v1 = std::filebuf::~filebuf(a1);

  operator delete(v1);
}

uint64_t std::filebuf::open(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  if (std::__basic_file<char>::is_open((a1 + 128)))
  {
    return 0;
  }

  std::__basic_file<char>::open(v5 + 128, a2, a3);
  if (!std::__basic_file<char>::is_open((v5 + 128)))
  {
    return 0;
  }

  v6 = *(v5 + 536);
  if ((*(v5 + 552) & 1) == 0 && !v6)
  {
    v6 = operator new[](*(v5 + 544));
    *(v5 + 536) = v6;
    *(v5 + 552) = 1;
  }

  *(v5 + 144) = a3;
  *(v5 + 553) = 0;
  *(v5 + 8) = v6;
  *(v5 + 16) = v6;
  *(v5 + 24) = v6;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  v7 = *(v5 + 232);
  *(v5 + 344) = *(v5 + 216);
  *(v5 + 360) = v7;
  v8 = *(v5 + 248);
  v9 = *(v5 + 168);
  *(v5 + 280) = *(v5 + 152);
  *(v5 + 296) = v9;
  v10 = *(v5 + 200);
  *(v5 + 312) = *(v5 + 184);
  *(v5 + 328) = v10;
  v11 = *(v5 + 264);
  *(v5 + 376) = v8;
  *(v5 + 392) = v11;
  v12 = *(v5 + 200);
  *(v5 + 440) = *(v5 + 184);
  *(v5 + 456) = v12;
  v13 = *(v5 + 168);
  *(v5 + 408) = *(v5 + 152);
  *(v5 + 424) = v13;
  v14 = *(v5 + 264);
  *(v5 + 504) = *(v5 + 248);
  *(v5 + 520) = v14;
  v15 = *(v5 + 232);
  *(v5 + 472) = *(v5 + 216);
  *(v5 + 488) = v15;
  if ((a3 & 2) != 0)
  {
    (*(*v5 + 32))(v17, v5, 0, 2, a3);
    if (v17[0] == -1)
    {
      std::filebuf::close(v5);
      return 0;
    }
  }

  return v5;
}

void sub_DBF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_call_unexpected(a1);
  }

  _Unwind_Resume(a1);
}

void *std::filebuf::_M_allocate_internal_buffer(void *result)
{
  if ((result[69] & 1) == 0)
  {
    v1 = result;
    if (!result[67])
    {
      result = operator new[](result[68]);
      v1[67] = result;
      *(v1 + 552) = 1;
    }
  }

  return result;
}

uint64_t std::filebuf::_M_set_buffer(uint64_t result, uint64_t a2)
{
  v2 = *(result + 144);
  if (a2 >= 1 && (v2 & 8) != 0)
  {
    v3 = *(result + 536);
    *(result + 8) = v3;
    *(result + 16) = v3;
    *(result + 24) = v3 + a2;
LABEL_4:
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    return result;
  }

  v4 = *(result + 536);
  *(result + 8) = v4;
  *(result + 16) = v4;
  *(result + 24) = v4;
  if (a2)
  {
    goto LABEL_4;
  }

  if ((v2 & 0x10) == 0)
  {
    goto LABEL_4;
  }

  v5 = *(result + 544);
  if (v5 < 2)
  {
    goto LABEL_4;
  }

  *(result + 32) = v4;
  *(result + 40) = v4;
  *(result + 48) = v4 + v5 - 1;
  return result;
}

BOOL std::filebuf::_M_terminate_output(uint64_t a1)
{
  v2 = *(a1 + 32) >= *(a1 + 40) || (*(*a1 + 104))(a1, 0xFFFFFFFFLL) != -1;
  if (*(a1 + 554) == 1)
  {
    v3 = *(a1 + 584);
    if (!v3)
    {
      std::__throw_bad_cast();
    }

    if (((*(*v3 + 48))(v3) & 1) == 0 && v2)
    {
      do
      {
        v4 = (*(**(a1 + 584) + 24))(*(a1 + 584), a1 + 280, v10, &v11, &v9);
        if (v4 == 2)
        {
          return 0;
        }

        v5 = v4;
        if (v4 > 1 || v9 - v10 <= 0)
        {
          if (!v2)
          {
            return 0;
          }

          return (*(*a1 + 104))(a1, 0xFFFFFFFFLL) != -1;
        }

        v6 = v9 - v10;
        v7 = std::__basic_file<char>::xsputn((a1 + 128), v10, v9 - v10) == v6 && v2;
        if (v5 != 1)
        {
          break;
        }

        LOBYTE(v2) = 1;
      }

      while ((v7 & 1) != 0);
      if (!v7)
      {
        return 0;
      }

      return (*(*a1 + 104))(a1, 0xFFFFFFFFLL) != -1;
    }
  }

  return v2;
}

double std::filebuf::_M_destroy_internal_buffer(uint64_t a1)
{
  if (*(a1 + 552) == 1)
  {
    v2 = *(a1 + 536);
    if (v2)
    {
      operator delete[](v2);
    }

    *(a1 + 536) = 0;
    *(a1 + 552) = 0;
  }

  v3 = *(a1 + 592);
  if (v3)
  {
    operator delete[](v3);
  }

  result = 0.0;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  return result;
}

uint64_t std::filebuf::showmanyc(uint64_t a1)
{
  if ((*(a1 + 144) & 8) == 0 || !std::__basic_file<char>::is_open((a1 + 128)))
  {
    return -1;
  }

  v2 = *(a1 + 584);
  if (!v2)
  {
    std::__throw_bad_cast();
  }

  v3 = *(a1 + 24) - *(a1 + 16);
  if (((*(*v2 + 40))(v2) & 0x80000000) == 0)
  {
    v4 = std::__basic_file<char>::showmanyc((a1 + 128));
    v3 += v4 / (*(**(a1 + 584) + 64))(*(a1 + 584));
  }

  return v3;
}

uint64_t std::filebuf::underflow(uint64_t a1)
{
  if (*(a1 + 144) & 8) == 0 || (*(a1 + 554))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 16);
  if (*(a1 + 576))
  {
    v20 = v3 == *(a1 + 8);
    v3 = *(a1 + 560);
    if (!v20)
    {
      ++v3;
    }

    *(a1 + 560) = v3;
    v4 = *(a1 + 568);
    *(a1 + 8) = *(a1 + 536);
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
    *(a1 + 576) = 0;
  }

  else
  {
    v4 = *(a1 + 24);
  }

  if (v3 >= v4)
  {
    v5 = *(a1 + 544);
    v6 = v5 > 1;
    v7 = v5 - 1;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 584);
    if (!v9)
    {
      std::__throw_bad_cast();
    }

    if ((*(*v9 + 48))(v9))
    {
      v10 = std::__basic_file<char>::xsgetn((a1 + 128), *(a1 + 8), v8);
      v11 = 0;
      v12 = v10 == 0;
    }

    else
    {
      v13 = (*(**(a1 + 584) + 40))(*(a1 + 584));
      if (v13 < 1)
      {
        v14 = v8 + (*(**(a1 + 584) + 64))(*(a1 + 584)) - 1;
        v15 = v8;
      }

      else
      {
        v14 = v8 * v13;
        v15 = v14;
      }

      v16 = *(a1 + 616);
      v17 = *(a1 + 608);
      v6 = v15 <= v16 - v17;
      v18 = v15 - (v16 - v17);
      if (v6)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      if (*(a1 + 553) == 1)
      {
        v20 = v16 != v17 && *(a1 + 24) == *(a1 + 8);
        if (v20)
        {
          v19 = 0;
        }
      }

      if (*(a1 + 600) >= v14)
      {
        if (v16 != v17)
        {
          memmove(*(a1 + 592), *(a1 + 608), v16 - v17);
        }
      }

      else
      {
        v21 = operator new[](v14);
        v22 = v21;
        if (v16 != v17)
        {
          memcpy(v21, v17, v16 - v17);
        }

        v23 = *(a1 + 592);
        if (v23)
        {
          operator delete[](v23);
        }

        *(a1 + 592) = v22;
        *(a1 + 600) = v14;
      }

      v24 = *(a1 + 592);
      *(a1 + 608) = v24;
      *(a1 + 616) = v24 + v16 - v17;
      v25 = *(a1 + 360);
      *(a1 + 472) = *(a1 + 344);
      *(a1 + 488) = v25;
      v26 = *(a1 + 392);
      *(a1 + 504) = *(a1 + 376);
      *(a1 + 520) = v26;
      v27 = *(a1 + 296);
      *(a1 + 408) = *(a1 + 280);
      *(a1 + 424) = v27;
      v28 = *(a1 + 328);
      *(a1 + 440) = *(a1 + 312);
      *(a1 + 456) = v28;
      do
      {
        v29 = *(a1 + 616);
        if (v19 < 1)
        {
          v12 = 0;
        }

        else
        {
          if (v19 + v29 - *(a1 + 592) > *(a1 + 600))
          {
            std::__throw_ios_failure("basic_filebuf::underflow codecvt::max_length() is not valid");
          }

          v30 = std::__basic_file<char>::xsgetn((a1 + 128), *(a1 + 616), v19);
          if (v30)
          {
            if (v30 == -1)
            {
              goto LABEL_66;
            }

            v12 = 0;
          }

          else
          {
            v12 = 1;
          }

          v29 = *(a1 + 616) + v30;
          *(a1 + 616) = v29;
        }

        v11 = (*(**(a1 + 584) + 32))(*(a1 + 584), a1 + 280, *(a1 + 608), v29, a1 + 608, *(a1 + 8), *(a1 + 8) + v8, &v34);
        if (v11 == 3)
        {
          v31 = *(a1 + 592);
          if (v8 >= *(a1 + 616) - v31)
          {
            v10 = *(a1 + 616) - v31;
          }

          else
          {
            v10 = v8;
          }

          memcpy(*(a1 + 8), v31, v10);
          *(a1 + 608) = *(a1 + 592) + v10;
        }

        else
        {
          v10 = v34 - *(a1 + 8);
        }

        v32 = v11 == 2;
        if (v11 != 2)
        {
          v19 = 1;
        }

        if (v10)
        {
          v32 = 1;
        }
      }

      while (!v32 && !v12);
    }

    if (v10 < 1)
    {
      if (!v12)
      {
        if (v11 == 2)
        {
          std::__throw_ios_failure("basic_filebuf::underflow invalid byte sequence in file");
        }

LABEL_66:
        std::__throw_ios_failure("basic_filebuf::underflow error reading the file");
      }

      v33 = *(a1 + 536);
      *(a1 + 8) = v33;
      *(a1 + 16) = v33;
      *(a1 + 24) = v33;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 553) = 0;
      if (v11 == 1)
      {
        std::__throw_ios_failure("basic_filebuf::underflow incomplete character in file");
      }

      return 0xFFFFFFFFLL;
    }

    std::filebuf::_M_set_buffer(a1, v10);
    *(a1 + 553) = 1;
    v3 = *(a1 + 16);
  }

  return *v3;
}

uint64_t std::filebuf::pbackfail(uint64_t result, uint64_t a2)
{
  if ((*(result + 144) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = result;
  if (*(result + 554))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(result + 576);
  v5 = *(result + 16);
  if (*(result + 8) < v5)
  {
    *(result + 16) = v5 - 1;
    LODWORD(result) = *(v5 - 1);
LABEL_9:
    if (a2 == -1)
    {
      return 0;
    }

    v6 = result == a2;
    if (result == a2)
    {
      result = a2;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    if (!v6 && (v4 & 1) == 0)
    {
      v7 = *(v2 + 16);
      if ((*(v2 + 576) & 1) == 0)
      {
        *(v2 + 560) = v7;
        *(v2 + 568) = *(v2 + 24);
        v7 = (v2 + 555);
        *(v2 + 8) = v2 + 555;
        *(v2 + 16) = v2 + 555;
        *(v2 + 24) = v2 + 556;
        *(v2 + 576) = 1;
      }

      *(v2 + 553) = 1;
      *v7 = a2;
      return a2;
    }

    return result;
  }

  (*(*result + 32))(v8, result, -1, 1, 24);
  if (v8[0] == -1)
  {
    return 0xFFFFFFFFLL;
  }

  result = (*(*v2 + 72))(v2);
  if (result != -1)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t std::filebuf::overflow(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) & 0x10) == 0 || (*(a1 + 553))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = (a1 + 32);
  if (v5 >= v6)
  {
    v11 = *(a1 + 544);
    if (v11 < 2)
    {
      v13 = v3;
      if (v3 == -1)
      {
        v3 = 0;
      }

      else if (!std::filebuf::_M_convert_to_external(a1, &v13, 1uLL))
      {
        return 0xFFFFFFFFLL;
      }

      *(a1 + 554) = 1;
      return v3;
    }

    v12 = *(a1 + 536);
    *(a1 + 8) = v12;
    *(a1 + 16) = v12;
    *(a1 + 24) = v12;
    *(a1 + 32) = v12;
    *(a1 + 40) = v12;
    *(a1 + 48) = &v12[v11 - 1];
    *(a1 + 554) = 1;
    if (v3 == -1)
    {
      return 0;
    }

    else
    {
      *v12 = v3;
      ++*(a1 + 40);
    }
  }

  else
  {
    if (v3 != -1)
    {
      *v6 = v3;
      v5 = *(a1 + 32);
      v6 = (*(a1 + 40) + 1);
      *(a1 + 40) = v6;
    }

    if (!std::filebuf::_M_convert_to_external(a1, v5, v6 - v5))
    {
      return 0xFFFFFFFFLL;
    }

    v8 = *(a1 + 144);
    v9 = *(a1 + 536);
    *(a1 + 8) = v9;
    *(a1 + 16) = v9;
    *(a1 + 24) = v9;
    if ((v8 & 0x10) != 0 && (v10 = *(a1 + 544), v10 >= 2))
    {
      *(a1 + 32) = v9;
      *(a1 + 40) = v9;
      *(a1 + 48) = v9 + v10 - 1;
    }

    else
    {
      *v7 = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }

    if (v3 == -1)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return v3;
}

BOOL std::filebuf::_M_convert_to_external(uint64_t a1, char *a2, size_t a3)
{
  v4 = *(a1 + 584);
  if (!v4)
  {
    std::__throw_bad_cast();
  }

  if ((*(*v4 + 48))(v4))
  {
    goto LABEL_12;
  }

  v7 = (*(**(a1 + 584) + 64))(*(a1 + 584)) * a3;
  off_5C2E8();
  v9 = &v17 - v8;
  bzero(&v17 - v8, v7);
  v10 = (*(**(a1 + 584) + 16))(*(a1 + 584), a1 + 280, a2, &a2[a3], &v18, v9, &v9[v7], &v19);
  v11 = v10;
  if (v10 >= 2)
  {
    if (v10 != 3)
    {
      goto LABEL_16;
    }

LABEL_12:
    v14 = (a1 + 128);
    v15 = a2;
    goto LABEL_13;
  }

  a3 = v19 - v9;
  v12 = std::__basic_file<char>::xsputn((a1 + 128), v9, v19 - v9);
  if (v11 == 1 && v12 == a3)
  {
    if ((*(**(a1 + 584) + 16))(*(a1 + 584), a1 + 280, v18, *(a1 + 40), &v18, v9, &v9[a3], &v19) != 2)
    {
      a3 = v19 - v9;
      v14 = (a1 + 128);
      v15 = v9;
LABEL_13:
      v12 = std::__basic_file<char>::xsputn(v14, v15, a3);
      return v12 == a3;
    }

LABEL_16:
    std::__throw_ios_failure("basic_filebuf::_M_convert_to_external conversion error");
  }

  return v12 == a3;
}

void *std::filebuf::setbuf(void *a1, uint64_t a2, uint64_t a3)
{
  if (!std::__basic_file<char>::is_open(a1 + 16))
  {
    if (!a2 && !a3)
    {
      a3 = 1;
LABEL_8:
      a1[68] = a3;
      return a1;
    }

    if (a2 && a3 >= 1)
    {
      a1[67] = a2;
      goto LABEL_8;
    }
  }

  return a1;
}

double std::filebuf::seekoff@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 584);
  if (v8)
  {
    v9 = (*(*v8 + 40))(v8);
  }

  else
  {
    v9 = 0;
  }

  *a4 = -1;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  if (std::__basic_file<char>::is_open((a1 + 128)) && (!a2 || v9 >= 1))
  {
    if (*(a1 + 576) == 1)
    {
      v11 = *(a1 + 560);
      if (*(a1 + 16) != *(a1 + 8))
      {
        ++v11;
      }

      *(a1 + 560) = v11;
      v12 = *(a1 + 568);
      *(a1 + 8) = *(a1 + 536);
      *(a1 + 16) = v11;
      *(a1 + 24) = v12;
      *(a1 + 576) = 0;
    }

    v13 = *(a1 + 232);
    v28 = *(a1 + 216);
    v29 = v13;
    v14 = *(a1 + 248);
    v15 = *(a1 + 168);
    v24 = *(a1 + 152);
    v25 = v15;
    v16 = *(a1 + 200);
    v26 = *(a1 + 184);
    v27 = v16;
    v17 = *(a1 + 264);
    v18 = (v9 & ~(v9 >> 31)) * a2;
    v30 = v14;
    v31 = v17;
    if (a3 == 1 && (*(a1 + 553) & 1) != 0)
    {
      if ((*(**(a1 + 584) + 48))(*(a1 + 584)))
      {
        v18 = v18 + *(a1 + 16) - *(a1 + 24);
      }

      else
      {
        v18 = v18 - *(a1 + 616) + *(a1 + 592) + (*(**(a1 + 584) + 56))(*(a1 + 584), a1 + 408, *(a1 + 592), *(a1 + 608), *(a1 + 16) - *(a1 + 8));
        v19 = *(a1 + 488);
        v28 = *(a1 + 472);
        v29 = v19;
        v20 = *(a1 + 520);
        v30 = *(a1 + 504);
        v31 = v20;
        v21 = *(a1 + 424);
        v24 = *(a1 + 408);
        v25 = v21;
        v22 = *(a1 + 456);
        v26 = *(a1 + 440);
        v27 = v22;
      }
    }

    v23[4] = v28;
    v23[5] = v29;
    v23[6] = v30;
    v23[7] = v31;
    v23[0] = v24;
    v23[1] = v25;
    v23[2] = v26;
    v23[3] = v27;
    *&result = std::filebuf::_M_seek(a1, v18, a3, v23, a4).n128_u64[0];
  }

  return result;
}

void sub_EAD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_call_unexpected(a1);
}

__n128 std::filebuf::_M_seek@<Q0>(uint64_t a1@<X0>, off_t a2@<X1>, int a3@<W2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = -1;
  *(a5 + 8) = 0u;
  v10 = (a5 + 8);
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  if (std::filebuf::_M_terminate_output(a1))
  {
    v12 = std::__basic_file<char>::seekoff((a1 + 128), a2, a3);
    result.n128_u64[0] = 0;
    *v10 = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 104) = 0u;
    *(a5 + 120) = 0u;
    *a5 = v12;
    if (v12 != -1)
    {
      *(a1 + 553) = 0;
      v13 = *(a1 + 592);
      *(a1 + 616) = v13;
      *(a1 + 608) = v13;
      v14 = *(a1 + 536);
      *(a1 + 8) = v14;
      *(a1 + 16) = v14;
      *(a1 + 24) = v14;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v15 = a4[3];
      v17 = *a4;
      v16 = a4[1];
      *(a1 + 312) = a4[2];
      *(a1 + 328) = v15;
      *(a1 + 280) = v17;
      *(a1 + 296) = v16;
      v18 = a4[7];
      v20 = a4[4];
      v19 = a4[5];
      *(a1 + 376) = a4[6];
      *(a1 + 392) = v18;
      *(a1 + 344) = v20;
      *(a1 + 360) = v19;
      v21 = *a4;
      v22 = a4[1];
      v23 = a4[3];
      *(a5 + 40) = a4[2];
      *(a5 + 56) = v23;
      *v10 = v21;
      *(a5 + 24) = v22;
      result = a4[4];
      v24 = a4[5];
      v25 = a4[7];
      *(a5 + 104) = a4[6];
      *(a5 + 120) = v25;
      *(a5 + 72) = result;
      *(a5 + 88) = v24;
    }
  }

  return result;
}

double std::filebuf::seekpos@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = -1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  if (std::__basic_file<char>::is_open((a1 + 128)))
  {
    if (*(a1 + 576) == 1)
    {
      v7 = *(a1 + 560);
      if (*(a1 + 16) != *(a1 + 8))
      {
        ++v7;
      }

      *(a1 + 560) = v7;
      v8 = *(a1 + 568);
      *(a1 + 8) = *(a1 + 536);
      *(a1 + 16) = v7;
      *(a1 + 24) = v8;
      *(a1 + 576) = 0;
    }

    v9 = *a2;
    v10 = *(a2 + 88);
    v14[4] = *(a2 + 72);
    v14[5] = v10;
    v11 = *(a2 + 120);
    v14[6] = *(a2 + 104);
    v14[7] = v11;
    v12 = *(a2 + 24);
    v14[0] = *(a2 + 8);
    v14[1] = v12;
    v13 = *(a2 + 56);
    v14[2] = *(a2 + 40);
    v14[3] = v13;
    *&result = std::filebuf::_M_seek(a1, v9, 0, v14, a3).n128_u64[0];
  }

  return result;
}

void sub_ED08(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_call_unexpected(a1);
}

__n128 std::fpos<__mbstate_t>::state(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(a1 + 56) = a2[3];
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 120) = a2[7];
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 72) = result;
  return result;
}

uint64_t std::filebuf::sync(void *a1)
{
  if (a1[4] >= a1[5])
  {
    return 0;
  }

  if ((*(*a1 + 104))(a1, 0xFFFFFFFFLL) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void std::filebuf::imbue(uint64_t a1, uint64_t a2)
{
  v4 = std::locale::id::_M_id(&std::codecvt<char,char,__mbstate_t>::id);
  if (v4 < *(*a2 + 16) && *(*(*a2 + 8) + 8 * v4))
  {
    v5 = std::locale::id::_M_id(&std::codecvt<char,char,__mbstate_t>::id);
    if (v5 >= *(*a2 + 16) || (v6 = *(*(*a2 + 8) + 8 * v5)) == 0)
    {
      std::__throw_bad_cast();
    }
  }

  else
  {
    v6 = 0;
  }

  is_open = std::__basic_file<char>::is_open((a1 + 128));
  std::filebuf::imbue(is_open, a1, v6);
}

uint64_t std::filebuf::xsgetn(uint64_t a1, char *__dst, uint64_t a3)
{
  v3 = a3;
  v4 = __dst;
  if (*(a1 + 576) != 1)
  {
    v7 = 0;
    goto LABEL_9;
  }

  if (a3 >= 1 && (v6 = *(a1 + 16), v6 == *(a1 + 8)))
  {
    *__dst = *v6;
    v4 = __dst + 1;
    ++*(a1 + 16);
    v7 = 1;
    v3 = a3 - 1;
    if ((*(a1 + 576) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 560);
  if (*(a1 + 16) != *(a1 + 8))
  {
    ++v8;
  }

  *(a1 + 560) = v8;
  v9 = *(a1 + 568);
  *(a1 + 8) = *(a1 + 536);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 576) = 0;
LABEL_9:
  v10 = *(a1 + 544);
  v11 = v10 > 1;
  v12 = v10 - 1;
  if (!v11)
  {
    v12 = 1;
  }

  if (v3 <= v12)
  {
    goto LABEL_18;
  }

  v13 = *(a1 + 584);
  if (!v13)
  {
    std::__throw_bad_cast();
  }

  v14 = *(a1 + 144) & 8;
  v15 = !(*(*v13 + 48))(v13) || v14 == 0;
  if (v15 || (*(a1 + 554) & 1) != 0)
  {
LABEL_18:
    v7 += std::streambuf::xsgetn(a1, v4, v3);
  }

  else
  {
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
    v19 = v18 - v17;
    if (v18 != v17)
    {
      if (v19 == 1)
      {
        *v4 = *v17;
      }

      else
      {
        memcpy(v4, v17, v18 - v17);
      }

      v4 += v19;
      *(a1 + 16) += v19;
      v7 += v19;
      v3 -= v19;
    }

    while (1)
    {
      v20 = std::__basic_file<char>::xsgetn((a1 + 128), v4, v3);
      if (!v20)
      {
        break;
      }

      if (v20 == -1)
      {
        std::__throw_ios_failure("basic_filebuf::xsgetn error reading the file");
      }

      v7 += v20;
      v3 -= v20;
      if (!v3)
      {
        goto LABEL_33;
      }

      v4 += v20;
    }

    if (v3)
    {
      v21 = *(a1 + 536);
      *(a1 + 8) = v21;
      *(a1 + 16) = v21;
      *(a1 + 24) = v21;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 553) = 0;
      return v7;
    }

LABEL_33:
    v22 = *(a1 + 144);
    v23 = *(a1 + 536);
    *(a1 + 8) = v23;
    *(a1 + 16) = v23;
    *(a1 + 24) = v23;
    if ((v22 & 0x10) != 0 && (v24 = *(a1 + 544), v24 >= 2))
    {
      *(a1 + 32) = v23;
      *(a1 + 40) = v23;
      *(a1 + 48) = v23 + v24 - 1;
    }

    else
    {
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }

    *(a1 + 553) = 1;
  }

  return v7;
}

uint64_t std::filebuf::xsputn(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a1 + 584);
  if (!v4)
  {
    std::__throw_bad_cast();
  }

  v7 = *(a1 + 144) & 0x10;
  if ((*(*v4 + 48))(v4))
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || (*(a1 + 553) & 1) != 0)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48) - v9;
  if ((*(a1 + 554) & 1) == 0)
  {
    v11 = *(a1 + 544);
    v12 = v11 > 1;
    v13 = v11 - 1;
    if (v12)
    {
      v10 = v13;
    }
  }

  if (v10 >= 1024)
  {
    v10 = 1024;
  }

  if (v10 > a3)
  {
LABEL_13:

    return std::streambuf::xsputn(a1, a2, a3);
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = v9 - v15;
    v17 = std::__basic_file<char>::xsputn_2((a1 + 128), v15, v9 - v15, a2, a3);
    if (v17 == v16 + a3)
    {
      v18 = *(a1 + 144);
      v19 = *(a1 + 536);
      *(a1 + 8) = v19;
      *(a1 + 16) = v19;
      *(a1 + 24) = v19;
      if ((v18 & 0x10) != 0 && (v20 = *(a1 + 544), v20 >= 2))
      {
        *(a1 + 32) = v19;
        *(a1 + 40) = v19;
        *(a1 + 48) = v19 + v20 - 1;
      }

      else
      {
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 554) = 1;
    }

    if (v17 <= v16)
    {
      return 0;
    }

    else
    {
      return v17 - v16;
    }
  }
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = v3;
  *(a1 + *(v3 - 24)) = a2[2];
  a1[1] = 0;
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  std::filebuf::basic_filebuf((a1 + 2));
  std::ios::init(a1 + *(*a1 - 24), (a1 + 2));
  return a1;
}

void sub_F308(_Unwind_Exception *a1)
{
  std::filebuf::~filebuf(v1 + 2);
  v4 = *(v2 + 8);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::ifstream::basic_ifstream(uint64_t a1)
{
  std::ios_base::ios_base((a1 + 640));
  *(a1 + 856) = 0;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *a1 = off_5CB30;
  *(a1 + 8) = 0;
  *(a1 + 640) = off_5CB58;
  std::filebuf::basic_filebuf(a1 + 16);
  std::ios::init(a1 + *(*a1 - 24), a1 + 16);
  return a1;
}

void sub_F450(_Unwind_Exception *a1)
{
  std::filebuf::~filebuf(v1 + 2);
  v1[80] = off_5CF40;
  *v1 = off_5CF18;
  v1[1] = 0;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2, const char *a3, int a4)
{
  v7 = a2[1];
  *a1 = v7;
  *(a1 + *(v7 - 24)) = a2[2];
  a1[1] = 0;
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 24)) = a2[3];
  std::filebuf::basic_filebuf((a1 + 2));
  std::ios::init(a1 + *(*a1 - 24), (a1 + 2));
  std::ifstream::open(a1, a3, a4);
  return a1;
}

void sub_F62C(_Unwind_Exception *exception_object)
{
  v3 = *(v2 + 8);
  *v1 = v3;
  *(v1 + *(v3 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(exception_object);
}

uint64_t std::ifstream::open(void *a1, const char *a2, int a3)
{
  v4 = std::filebuf::open((a1 + 2), a2, a3 | 8u);
  v5 = a1 + *(*a1 - 24);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 32) | 4;
  }

  return std::ios::clear(v5, v6);
}

uint64_t std::ifstream::basic_ifstream(uint64_t a1, const char *a2, int a3)
{
  std::ios_base::ios_base((a1 + 640));
  *(a1 + 856) = 0;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *a1 = off_5CB30;
  *(a1 + 8) = 0;
  *(a1 + 640) = off_5CB58;
  std::filebuf::basic_filebuf(a1 + 16);
  std::ios::init(a1 + *(*a1 - 24), a1 + 16);
  std::ifstream::open(a1, a2, a3);
  return a1;
}

void sub_F7F8(_Unwind_Exception *a1)
{
  v1[80] = off_5CF40;
  *v1 = off_5CF18;
  v1[1] = 0;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  std::filebuf::~filebuf(a1 + 2);
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  a1[1] = 0;
  return a1;
}

uint64_t *std::ifstream::~ifstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 80));
  return a1;
}

void virtual thunk tostd::ifstream::~ifstream(void *a1)
{

  std::ios_base::~ios_base(v1);
}

{
  std::ifstream::~ifstream((a1 + *(*a1 - 24)));
}

void std::ifstream::~ifstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 80));

  operator delete(a1);
}

BOOL std::ifstream::is_open(uint64_t a1)
{
  return std::__basic_file<char>::is_open((a1 + 144));
}

{
  return std::__basic_file<char>::is_open((a1 + 144));
}

uint64_t std::ifstream::close(void *a1)
{
  result = std::filebuf::close((a1 + 2));
  if (!result)
  {
    v3 = a1 + *(*a1 - 24);
    v4 = *(v3 + 32) | 4;

    return std::ios::clear(v3, v4);
  }

  return result;
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = v3;
  *(a1 + *(v3 - 24)) = a2[2];
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  std::filebuf::basic_filebuf((a1 + 1));
  std::ios::init(a1 + *(*a1 - 24), (a1 + 1));
  return a1;
}

uint64_t std::ofstream::basic_ofstream(uint64_t a1)
{
  std::ios_base::ios_base((a1 + 632));
  *(a1 + 848) = 0;
  *(a1 + 856) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *a1 = off_5CBA0;
  *(a1 + 632) = off_5CBC8;
  std::filebuf::basic_filebuf(a1 + 8);
  std::ios::init(a1 + *(*a1 - 24), a1 + 8);
  return a1;
}

void sub_FD34(_Unwind_Exception *a1)
{
  std::filebuf::~filebuf((v2 + 8));
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2, const char *a3, int a4)
{
  v7 = a2[1];
  *a1 = v7;
  *(a1 + *(v7 - 24)) = a2[2];
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 24)) = a2[3];
  std::filebuf::basic_filebuf((a1 + 1));
  std::ios::init(a1 + *(*a1 - 24), (a1 + 1));
  std::ofstream::open(a1, a3, a4);
  return a1;
}

uint64_t std::ofstream::open(void *a1, const char *a2, int a3)
{
  v4 = std::filebuf::open((a1 + 1), a2, a3 | 0x10u);
  v5 = a1 + *(*a1 - 24);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 32) | 4;
  }

  return std::ios::clear(v5, v6);
}

uint64_t std::ofstream::basic_ofstream(uint64_t a1, const char *a2, int a3)
{
  std::ios_base::ios_base((a1 + 632));
  *(a1 + 848) = 0;
  *(a1 + 856) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *a1 = off_5CBA0;
  *(a1 + 632) = off_5CBC8;
  std::filebuf::basic_filebuf(a1 + 8);
  std::ios::init(a1 + *(*a1 - 24), a1 + 8);
  std::ofstream::open(a1, a2, a3);
  return a1;
}

uint64_t *std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  std::filebuf::~filebuf(a1 + 1);
  return a1;
}

void *std::ofstream::~ofstream(void *a1)
{
  *a1 = off_5CBA0;
  v2 = (a1 + 79);
  a1[79] = off_5CBC8;
  std::filebuf::~filebuf(a1 + 1);
  std::ios_base::~ios_base(v2);
  return a1;
}

void virtual thunk tostd::ofstream::~ofstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_5CBA0;
  v2 = (v1 + 79);
  v1[79] = off_5CBC8;
  std::filebuf::~filebuf(v1 + 1);

  std::ios_base::~ios_base(v2);
}

{
  std::ofstream::~ofstream((a1 + *(*a1 - 24)));
}

void std::ofstream::~ofstream(void *a1)
{
  *a1 = off_5CBA0;
  v2 = (a1 + 79);
  a1[79] = off_5CBC8;
  std::filebuf::~filebuf(a1 + 1);
  std::ios_base::~ios_base(v2);

  operator delete(a1);
}

BOOL std::ofstream::is_open(uint64_t a1)
{
  return std::__basic_file<char>::is_open((a1 + 136));
}

{
  return std::__basic_file<char>::is_open((a1 + 136));
}

uint64_t std::ofstream::close(void *a1)
{
  result = std::filebuf::close((a1 + 1));
  if (!result)
  {
    v3 = a1 + *(*a1 - 24);
    v4 = *(v3 + 32) | 4;

    return std::ios::clear(v3, v4);
  }

  return result;
}

uint64_t *std::fstream::basic_fstream(uint64_t *a1, uint64_t *a2)
{
  v4 = std::iostream::iostream(a1, a2 + 1);
  v5 = *a2;
  *v4 = *a2;
  *(a1 + *(v5 - 24)) = a2[8];
  a1[2] = a2[9];
  std::filebuf::basic_filebuf((a1 + 3));
  std::ios::init(a1 + *(*a1 - 24), (a1 + 3));
  return a1;
}

void sub_10438(_Unwind_Exception *a1)
{
  std::filebuf::~filebuf(v1 + 3);
  v4 = *(v2 + 16);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 24);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::fstream::basic_fstream(uint64_t a1)
{
  std::ios_base::ios_base((a1 + 648));
  *(a1 + 648) = off_5D458;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  std::iostream::iostream(a1, off_5CC78);
  *a1 = off_5CC10;
  *(a1 + 648) = off_5CC60;
  *(a1 + 16) = off_5CC38;
  std::filebuf::basic_filebuf(a1 + 24);
  std::ios::init(a1 + *(*a1 - 24), a1 + 24);
  return a1;
}

void sub_105CC(_Unwind_Exception *a1)
{
  std::filebuf::~filebuf(v1 + 3);
  *v1 = off_5D060;
  v1[1] = 0;
  v1[81] = off_5D088;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::fstream::basic_fstream(uint64_t *a1, uint64_t *a2, const char *a3, uint64_t a4)
{
  v8 = std::iostream::iostream(a1, a2 + 1, 0);
  v9 = *a2;
  *v8 = *a2;
  *(a1 + *(v9 - 24)) = a2[8];
  a1[2] = a2[9];
  std::filebuf::basic_filebuf((a1 + 3));
  std::ios::init(a1 + *(*a1 - 24), (a1 + 3));
  std::fstream::open(a1, a3, a4);
  return a1;
}

void sub_10764(_Unwind_Exception *exception_object)
{
  v3 = *(v2 + 16);
  *v1 = v3;
  *(v1 + *(v3 - 24)) = *(v2 + 24);
  v1[1] = 0;
  _Unwind_Resume(exception_object);
}

uint64_t std::fstream::open(void *a1, const char *a2, uint64_t a3)
{
  v4 = std::filebuf::open((a1 + 3), a2, a3);
  v5 = a1 + *(*a1 - 24);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 32) | 4;
  }

  return std::ios::clear(v5, v6);
}

uint64_t std::fstream::basic_fstream(uint64_t a1, const char *a2, uint64_t a3)
{
  std::ios_base::ios_base((a1 + 648));
  *(a1 + 648) = off_5D458;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  std::iostream::iostream(a1, off_5CC78, 0);
  *a1 = off_5CC10;
  *(a1 + 648) = off_5CC60;
  *(a1 + 16) = off_5CC38;
  std::filebuf::basic_filebuf(a1 + 24);
  std::ios::init(a1 + *(*a1 - 24), a1 + 24);
  std::fstream::open(a1, a2, a3);
  return a1;
}

void sub_1097C(_Unwind_Exception *a1)
{
  *v2 = off_5D060;
  v2[1] = 0;
  v2[81] = off_5D088;
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::fstream::~fstream(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[8];
  a1[2] = a2[9];
  std::filebuf::~filebuf(a1 + 3);
  v5 = a2[2];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[3];
  a1[1] = 0;
  return a1;
}

uint64_t *std::fstream::~fstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 81));
  return a1;
}

void non-virtual thunk tostd::fstream::~fstream(uint64_t a1)
{

  std::ios_base::~ios_base((a1 + 632));
}

{
  std::fstream::~fstream((a1 - 16));
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{

  std::ios_base::~ios_base(v1);
}

{
  std::fstream::~fstream((a1 + *(*a1 - 24)));
}

void std::fstream::~fstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 81));

  operator delete(a1);
}

BOOL std::fstream::is_open(uint64_t a1)
{
  return std::__basic_file<char>::is_open((a1 + 152));
}

{
  return std::__basic_file<char>::is_open((a1 + 152));
}

uint64_t std::fstream::close(void *a1)
{
  result = std::filebuf::close((a1 + 3));
  if (!result)
  {
    v3 = a1 + *(*a1 - 24);
    v4 = *(v3 + 32) | 4;

    return std::ios::clear(v3, v4);
  }

  return result;
}

__n128 std::wfilebuf::_M_create_pback(__n128 *a1)
{
  if ((a1[36].n128_u8[0] & 1) == 0)
  {
    result = a1[1];
    a1[35] = result;
    a1->n128_u64[1] = &a1[34].n128_u64[1] + 4;
    a1[1].n128_u64[0] = &a1[34].n128_u64[1] + 4;
    a1[1].n128_u64[1] = a1[35].n128_u64;
    a1[36].n128_u8[0] = 1;
  }

  return result;
}

uint64_t std::wfilebuf::_M_destroy_pback(uint64_t result)
{
  if (*(result + 576) == 1)
  {
    v1 = *(result + 560) + 4 * (*(result + 16) != *(result + 8));
    *(result + 560) = v1;
    v2 = *(result + 568);
    *(result + 8) = *(result + 536);
    *(result + 16) = v1;
    *(result + 24) = v2;
    *(result + 576) = 0;
  }

  return result;
}

uint64_t std::wfilebuf::basic_filebuf(uint64_t a1)
{
  *a1 = off_5EF08;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  *a1 = off_5CCD0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  std::__basic_file<char>::__basic_file(a1 + 128);
  *(a1 + 152) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 544) = 1024;
  *(a1 + 552) = 0;
  *(a1 + 554) = 0;
  *(a1 + 556) = 0u;
  *(a1 + 569) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0;
  v2 = std::locale::id::_M_id(&std::codecvt<wchar_t,char,__mbstate_t>::id);
  v3 = *(a1 + 56);
  if (v2 < *(v3 + 16) && *(*(v3 + 8) + 8 * v2))
  {
    v4 = std::locale::id::_M_id(&std::codecvt<wchar_t,char,__mbstate_t>::id);
    v5 = *(a1 + 56);
    if (v4 >= *(v5 + 16) || (v6 = *(*(v5 + 8) + 8 * v4)) == 0)
    {
      std::__throw_bad_cast();
    }

    *(a1 + 584) = v6;
  }

  return a1;
}