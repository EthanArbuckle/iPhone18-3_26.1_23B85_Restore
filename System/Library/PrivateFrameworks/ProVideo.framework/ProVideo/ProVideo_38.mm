void sub_25FCAEF0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 18;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 36;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::~Pool(uint64_t a1, HGPool::BasePool *a2)
{
  *a1 = &unk_28721B6B0;
  HGPool::unregisterPool(a1, a2);
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if ((*(a1 + 343) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    operator delete(*(a1 + 320));
    goto LABEL_3;
  }

  if (*(a1 + 343) < 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  std::mutex::~mutex((a1 + 256));
  HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::~List((a1 + 152));
  std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>>::~deque[abi:ne200100](a1 + 80);
  v3 = *(a1 + 72);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 56);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 40);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 24);
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

uint64_t HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::service(int64x2_t *a1, uint64_t a2)
{
  if (!a1[1].i64[0] || !a1[4].i64[1])
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = atomic_load(&a1[5]);
    if (v5 <= (*(*a1[1].i64[0] + 16))(a1[1].i64[0], a2))
    {
      v6 = atomic_load(&a1[5].u64[1]);
      if (v6 <= (*(*a1[1].i64[0] + 24))(a1[1].i64[0], a2))
      {
        v7 = a1[4].u64[0];
        v8 = *(a1[2].i64[1] + 8 * (v7 / 0x24));
        v9 = std::chrono::steady_clock::now().__d_.__rep_ - *(v8 + 112 * (v7 % 0x24) + 88);
        if (v9 <= (*(*a1[1].i64[0] + 32))(a1[1].i64[0], a2))
        {
          break;
        }
      }
    }

    HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::_pop_front(a1);
    ++v4;
  }

  while (a1[4].i64[1]);
  return v4;
}

void HGPool::EntryTrace<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::trace(uint64_t a1)
{
  HGPool::DescriptorString<HGMetalTextureWrapperInfinipool::Descriptor>::str(a1 + 16);
  if (*(a1 + 104) == 1)
  {
    if (v3 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    std::chrono::steady_clock::now();
    if (v3 < 0)
    {
LABEL_6:
      operator delete(__p);
    }
  }
}

void sub_25FCAF3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,true>::log(void *a1, HGLogger *a2)
{
  if (a1[9])
  {
    HGLogger::indent(1);
    v4 = a1[5];
    if (a1[6] != v4)
    {
      v5 = a1[8];
      v6 = (v4 + 8 * (v5 / 0x24));
      v7 = (*v6 + 112 * (v5 % 0x24));
      v8 = *(v4 + 8 * ((a1[9] + v5) / 0x24)) + 112 * ((a1[9] + v5) % 0x24);
      while (v7 != v8)
      {
        v9 = *v7;
        v10 = v7[2];
        v22 = v7[1];
        v23 = v10;
        *__p = v9;
        v11 = v7[3];
        v12 = v7[4];
        v13 = v7[6];
        v26 = v7[5];
        v27 = v13;
        v24 = v11;
        v25 = v12;
        HGPool::EntryLog<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::log(__p, a2, 3);
        v7 += 7;
        if ((v7 - *v6) == 4032)
        {
          v14 = v6[1];
          ++v6;
          v7 = v14;
        }
      }
    }

    HGLogger::indent(0xFFFFFFFFLL);
    v15 = atomic_load(a1 + 11);
    HGLoggerUtils::bytesPrettyString(v15);
    v18 = atomic_load(HGLogger::_enabled);
    if (v18)
    {
      if ((SBYTE7(v22) & 0x80u) == 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      v20 = atomic_load(a1 + 10);
      HGLogger::log(a2, 2, "total : %s (%lu)\n", v16, v17, v19, v20);
    }

    if (SBYTE7(v22) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25FCAF570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::log(void *a1, HGLogger *a2)
{
  if (a1[9])
  {
    HGLogger::indent(1);
    v4 = a1[5];
    if (a1[6] != v4)
    {
      v5 = a1[8];
      v6 = (v4 + 8 * (v5 / 0x24));
      v7 = (*v6 + 112 * (v5 % 0x24));
      v8 = *(v4 + 8 * ((a1[9] + v5) / 0x24)) + 112 * ((a1[9] + v5) % 0x24);
      while (v7 != v8)
      {
        v9 = *v7;
        v10 = v7[2];
        v22 = v7[1];
        v23 = v10;
        *__p = v9;
        v11 = v7[3];
        v12 = v7[4];
        v13 = v7[6];
        v26 = v7[5];
        v27 = v13;
        v24 = v11;
        v25 = v12;
        HGPool::EntryLog<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::log(__p, a2, 3);
        v7 += 7;
        if ((v7 - *v6) == 4032)
        {
          v14 = v6[1];
          ++v6;
          v7 = v14;
        }
      }
    }

    HGLogger::indent(0xFFFFFFFFLL);
    v15 = atomic_load(a1 + 11);
    HGLoggerUtils::bytesPrettyString(v15);
    v18 = atomic_load(HGLogger::_enabled);
    if (v18)
    {
      if ((SBYTE7(v22) & 0x80u) == 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      v20 = atomic_load(a1 + 10);
      HGLogger::log(a2, 2, "total : %s (%lu)\n", v16, v17, v19, v20);
    }

    if (SBYTE7(v22) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25FCAF708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGPool::EntryLog<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::log(uint64_t *a1, HGLogger *a2, const char *a3)
{
  v6 = *a1;
  HGLoggerUtils::bytesPrettyString(a1[3]);
  HGPool::DescriptorString<HGMetalTextureWrapperInfinipool::Descriptor>::str((a1 + 2));
  if (*(a1 + 104) == 1)
  {
    v9 = atomic_load(HGLogger::_enabled);
    if (v9)
    {
      v10 = v23;
      if (v24 < 0)
      {
        v10 = v23[0];
      }

      v11 = v21;
      if (v22 < 0)
      {
        v11 = v21[0];
      }

      HGLogger::log(a2, a3, "%p %10s  %4lu   %s\n", v7, v8, v6, v10, a1[12], v11);
    }

    goto LABEL_17;
  }

  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  HGLoggerUtils::timePrettyString((v12.__d_.__rep_ - a1[11]));
  v15 = atomic_load(HGLogger::_enabled);
  if (v15)
  {
    v16 = v23;
    if (v24 < 0)
    {
      v16 = v23[0];
    }

    p_p = &__p;
    if (v20 < 0)
    {
      p_p = __p;
    }

    v18 = v21;
    if (v22 < 0)
    {
      v18 = v21[0];
    }

    HGLogger::log(a2, a3, "%p %10s  %4lu  %10s   %s\n", v13, v14, v6, v16, a1[12], p_p, v18);
  }

  if ((v20 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  operator delete(__p);
  if ((v22 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v24 & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(v23[0]);
    return;
  }

LABEL_21:
  operator delete(v21[0]);
  if (v24 < 0)
  {
    goto LABEL_22;
  }
}

void sub_25FCAF8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v25 - 33) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  if ((*(v25 - 33) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v25 - 56));
  _Unwind_Resume(exception_object);
}

void HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::retrieveObject(uint64_t a1, __int128 *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2[3];
  v15 = a2[2];
  v16 = v2;
  v3 = *(a2 + 8);
  v12 = 0;
  v17 = v3;
  v4 = a2[1];
  v13 = *a2;
  v14 = v4;
  v5 = 0;
  v8 = v15;
  v9 = v2;
  v10 = v3;
  v7 = v4;
  v6 = v13;
  v11 = 0;
  operator new();
}

void sub_25FCAFC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(&a23);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(&a10);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(&a27);
  _Unwind_Resume(a1);
}

void sub_25FCAFC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(&a10);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(&a27);
  _Unwind_Resume(a1);
}

void **HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::_retrieve@<X0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  *(a3 + 96) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 104) = 1;
  v5 = a1[4].u64[0];
  v6 = v5 + a1[4].i64[1];
  v7 = v6 / 0x24;
  v8 = a1[2].i64[1];
  if (a1[3].i64[0] != v8)
  {
    v9 = *(v8 + 8 * (v6 / 0x24)) + 112 * (v6 % 0x24);
    v10 = *(v8 + 8 * (v5 / 0x24)) + 112 * (v5 % 0x24);
    v11 = v9;
    v12 = *(a2 + 24);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    v29 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  v11 = 0;
  v10 = 0;
  v12 = *(a2 + 24);
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v12 == a2)
  {
    v29 = v28;
    (*(*v12 + 24))(v12, v28);
  }

  else
  {
    v29 = (*(*v12 + 16))(v12);
  }

LABEL_8:
  v13 = (v8 + 8 * v7);
  if (v11 != v10)
  {
    v16 = *v13;
    do
    {
      v17 = v9;
      if (v9 == v16)
      {
        v17 = *(v13 - 1) + 4032;
      }

      if (!v29)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v29 + 6))(v29, v17 - 112))
      {
        break;
      }

      v16 = *v13;
      if (v9 == *v13)
      {
        v18 = *--v13;
        v16 = v18;
        v9 = v18 + 4032;
      }

      v9 -= 112;
    }

    while (v10 != v9);
  }

  result = v29;
  if (v29 == v28)
  {
    result = (*(*v29 + 4))(v29);
    v15 = a1[2].i64[1];
    if (a1[3].i64[0] != v15)
    {
      goto LABEL_13;
    }

LABEL_24:
    if (!v9)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v29)
  {
    result = (*(*v29 + 5))();
  }

  v15 = a1[2].i64[1];
  if (a1[3].i64[0] == v15)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (*(v15 + 8 * (a1[4].i64[0] / 0x24uLL)) + 112 * (a1[4].i64[0] % 0x24uLL) == v9)
  {
    return result;
  }

LABEL_25:
  v19 = v9 - *v13;
  v20 = 0x6DB6DB6DB6DB6DB7 * (v19 >> 4);
  if (v19 < 113)
  {
    v24 = 36 - v20;
    v22 = &v13[-(v24 / 0x24)];
    v23 = *v22 + 112 * (36 * (v24 / 0x24) - v24) + 3920;
  }

  else
  {
    v21 = v20 - 1;
    v22 = &v13[v21 / 0x24];
    v23 = *v22 + 112 * (v21 % 0x24);
  }

  v25 = *(v23 + 80);
  *(a3 + 64) = *(v23 + 64);
  *(a3 + 80) = v25;
  *(a3 + 89) = *(v23 + 89);
  v26 = *(v23 + 16);
  *a3 = *v23;
  *(a3 + 16) = v26;
  v27 = *(v23 + 48);
  *(a3 + 32) = *(v23 + 32);
  *(a3 + 48) = v27;
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -*(a3 + 24));
  return std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>>::erase(a1 + 2, v22, v23);
}

void sub_25FCAFFDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_25FCAFFF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void **std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>>::erase(int64x2_t *a1, void *a2, char *a3)
{
  v6 = a1[2].u64[0];
  v7 = a1->i64[1];
  v8 = a1[1].i64[0];
  v9 = (v7 + 8 * (v6 / 0x24));
  if (v8 == v7)
  {
    v10 = 0;
    if (!a3)
    {
LABEL_3:
      v11 = 0;
      v12 = 1;
      v13 = (v7 + 8 * (v6 / 0x24));
      v14 = a3 - *v9;
      v15 = 0x6DB6DB6DB6DB6DB7 * (v14 >> 4);
      if (v14 < -111)
      {
        goto LABEL_12;
      }

LABEL_10:
      v22 = v15 + 1;
      v23 = &v13[v22 / 0x24];
      v24 = *v23 + 112 * (v22 % 0x24);
      goto LABEL_13;
    }
  }

  else
  {
    v10 = *v9 + 112 * (v6 % 0x24);
    if (a3 == v10)
    {
      goto LABEL_3;
    }
  }

  v16 = 36 * (a2 - v9) + 0x6DB6DB6DB6DB6DB7 * (&a3[-*a2] >> 4);
  v17 = *v9;
  v18 = (v10 - *v9) >> 4;
  v11 = v16 - 0x6DB6DB6DB6DB6DB7 * v18;
  v12 = v16 == 0x6DB6DB6DB6DB6DB7 * v18;
  if (!v11)
  {
    a3 = v10;
    v13 = (v7 + 8 * (v6 / 0x24));
    v25 = v10 - v17;
    v15 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v17) >> 4);
    if (v25 >= -111)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v16 < 1)
  {
    v13 = &v9[-((35 - v16) / 0x24uLL)];
    v19 = *v13;
    a3 = *v13 + 112 * (36 * ((35 - v16) / 0x24uLL) - (35 - v16)) + 3920;
    v20 = a1[2].i64[1];
    if (v11 <= (v20 - 1) >> 1)
    {
LABEL_9:
      v21 = a3 - v19;
      v15 = 0x6DB6DB6DB6DB6DB7 * ((a3 - v19) >> 4);
      if (v21 >= -111)
      {
        goto LABEL_10;
      }

LABEL_12:
      v26 = 34 - v15;
      v23 = &v13[-(v26 / 0x24)];
      v24 = *v23 + 112 * (36 * (v26 / 0x24) - v26) + 3920;
LABEL_13:
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,HGMetalTextureWrapperInfinipool::Descriptor*,HGMetalTextureWrapperInfinipool::Descriptor&,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>*,long,36l>,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>*,0>(v9, v10, v13, a3, v23, v24, v46);
      v27 = vaddq_s64(a1[2], xmmword_260342880);
      a1[2] = v27;
      v28 = v27.i64[0];
      v29 = a1->i64[1];
      if (v27.i64[0] >= 0x48uLL)
      {
        operator delete(*v29);
        v29 = (a1->i64[1] + 8);
        a1->i64[1] = v29;
        v28 = a1[2].i64[0] - 36;
        a1[2].i64[0] = v28;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v13 = &v9[v16 / 0x24uLL];
    v19 = *v13;
    a3 = *v13 + 112 * (v16 % 0x24uLL);
    v20 = a1[2].i64[1];
    if (v11 <= (v20 - 1) >> 1)
    {
      goto LABEL_9;
    }
  }

  v33 = a3 - v19;
  v34 = 0x6DB6DB6DB6DB6DB7 * ((a3 - v19) >> 4);
  if (v33 < -111)
  {
    v42 = 34 - v34;
    v36 = &v13[-(v42 / 0x24)];
    v37 = *v36 + 112 * (36 * (v42 / 0x24) - v42) + 3920;
    v38 = v20 + v6;
    v39 = (v20 + v6) / 0x24;
    v40 = (v7 + 8 * v39);
    if (v8 != v7)
    {
      goto LABEL_25;
    }

LABEL_27:
    v41 = 0;
    goto LABEL_28;
  }

  v35 = v34 + 1;
  v36 = &v13[v35 / 0x24];
  v37 = *v36 + 112 * (v35 % 0x24);
  v38 = v20 + v6;
  v39 = (v20 + v6) / 0x24;
  v40 = (v7 + 8 * v39);
  if (v8 == v7)
  {
    goto LABEL_27;
  }

LABEL_25:
  v41 = (*v40 + 112 * (v38 - 36 * v39));
LABEL_28:
  v46[0] = v13;
  v46[1] = a3;
  std::__for_each_segment[abi:ne200100]<std::__deque_iterator<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,HGMetalTextureWrapperInfinipool::Descriptor*,HGMetalTextureWrapperInfinipool::Descriptor&,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>*,long,36l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>*,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>*>>(v36, v37, v40, v41, v46);
  v29 = a1->i64[1];
  v43 = a1[1].i64[0];
  v44 = 36 * (v43 - v29) - 1;
  v28 = a1[2].u64[0];
  v45 = a1[2].i64[1];
  a1[2].i64[1] = v45 - 1;
  if (v43 == v29)
  {
    v44 = 0;
  }

  if (v44 - (v45 + v28) + 1 >= 0x48)
  {
    operator delete(*(v43 - 1));
    v12 = 0;
    v29 = a1->i64[1];
    a1[1].i64[0] -= 8;
    v28 = a1[2].u64[0];
  }

  else
  {
    v12 = 0;
  }

LABEL_15:
  result = &v29[v28 / 0x24];
  if (a1[1].i64[0] == v29)
  {
    v31 = 0;
    if (v12)
    {
      return result;
    }
  }

  else
  {
    v31 = *result + 112 * (v28 % 0x24);
    if (v12)
    {
      return result;
    }
  }

  v32 = v11 + 0x6DB6DB6DB6DB6DB7 * ((v31 - *result) >> 4);
  if (v32 < 1)
  {
    result -= (35 - v32) / 0x24uLL;
  }

  else
  {
    result += v32 / 0x24uLL;
  }

  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,HGMetalTextureWrapperInfinipool::Descriptor*,HGMetalTextureWrapperInfinipool::Descriptor&,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>*,long,36l>,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>*,0>@<X0>(const void **a1@<X1>, char *a2@<X2>, const void **a3@<X3>, char *a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ***a7@<X8>)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (a1 == a3)
  {
    if (a2 != a4)
    {
      v12 = a7;
      v13 = *a5;
      v14 = a4;
      while (1)
      {
        v16 = 0x6DB6DB6DB6DB6DB7 * (&a6[-v13] >> 4);
        if (0x6DB6DB6DB6DB6DB7 * ((v14 - a2) >> 4) < v16)
        {
          v16 = 0x6DB6DB6DB6DB6DB7 * ((v14 - a2) >> 4);
        }

        v14 -= 112 * v16;
        a6 -= 112 * v16;
        if (v16)
        {
          result = memmove(a6, v14, 112 * v16 - 7);
        }

        if (v14 == a2)
        {
          break;
        }

        v18 = *--v8;
        v13 = v18;
        a6 = (v18 + 4032);
      }

      if (*v8 + 4032 == a6)
      {
        v38 = v8[1];
        ++v8;
        a6 = v38;
      }

      v9 = a4;
      a7 = v12;
    }
  }

  else
  {
    v39 = a7;
    v20 = *a3;
    if (*a3 != a4)
    {
      v21 = *a5;
      v22 = a4;
      while (1)
      {
        v23 = 0x6DB6DB6DB6DB6DB7 * (&a6[-v21] >> 4);
        if (0x6DB6DB6DB6DB6DB7 * ((v22 - v20) >> 4) < v23)
        {
          v23 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v20) >> 4);
        }

        v22 -= 112 * v23;
        a6 -= 112 * v23;
        if (v23)
        {
          result = memmove(a6, v22, 112 * v23 - 7);
        }

        if (v22 == v20)
        {
          break;
        }

        v24 = *--v8;
        v21 = v24;
        a6 = (v24 + 4032);
      }

      if (*v8 + 4032 == a6)
      {
        v25 = v8[1];
        ++v8;
        a6 = v25;
      }
    }

    v26 = a3 - 1;
    if (a3 - 1 != a1)
    {
      v27 = *v8;
      do
      {
        while (1)
        {
          v28 = *v26;
          v29 = *v26 + 4032;
          while (1)
          {
            v30 = 0x6DB6DB6DB6DB6DB7 * ((a6 - v27) >> 4);
            if (0x6DB6DB6DB6DB6DB7 * ((v29 - v28) >> 4) < v30)
            {
              v30 = 0x6DB6DB6DB6DB6DB7 * ((v29 - v28) >> 4);
            }

            v29 -= 112 * v30;
            a6 -= 112 * v30;
            if (v30)
            {
              result = memmove(a6, v29, 112 * v30 - 7);
            }

            if (v29 == v28)
            {
              break;
            }

            v31 = *--v8;
            v27 = v31;
            a6 = v31 + 4032;
          }

          v27 = *v8;
          if (*v8 + 4032 == a6)
          {
            break;
          }

          if (--v26 == a1)
          {
            goto LABEL_32;
          }
        }

        v32 = v8[1];
        ++v8;
        v27 = v32;
        a6 = v32;
        --v26;
      }

      while (v26 != a1);
    }

LABEL_32:
    v33 = *v26 + 4032;
    if (v33 != a2)
    {
      v34 = *v8;
      while (1)
      {
        v35 = 0x6DB6DB6DB6DB6DB7 * (&a6[-v34] >> 4);
        if (0x6DB6DB6DB6DB6DB7 * ((v33 - a2) >> 4) < v35)
        {
          v35 = 0x6DB6DB6DB6DB6DB7 * ((v33 - a2) >> 4);
        }

        v33 -= 112 * v35;
        a6 -= 112 * v35;
        if (v35)
        {
          result = memmove(a6, v33, 112 * v35 - 7);
        }

        if (v33 == a2)
        {
          break;
        }

        v36 = *--v8;
        v34 = v36;
        a6 = (v36 + 4032);
      }

      if (*v8 + 4032 == a6)
      {
        v37 = v8[1];
        ++v8;
        a6 = v37;
      }
    }

    a7 = v39;
    v10 = a3;
  }

  *a7 = v10;
  a7[1] = v9;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}

void *std::__for_each_segment[abi:ne200100]<std::__deque_iterator<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,HGMetalTextureWrapperInfinipool::Descriptor*,HGMetalTextureWrapperInfinipool::Descriptor&,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>*,long,36l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>*,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>*>>(void *result, _BYTE *__src, void *a3, _BYTE *a4, uint64_t a5)
{
  v7 = __src;
  if (result == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (__src != a4)
    {
      v11 = *v9++;
      v10 = v11;
      while (1)
      {
        v12 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v8 + 4032) >> 4);
        if (0x6DB6DB6DB6DB6DB7 * ((a4 - v7) >> 4) < v12)
        {
          v12 = 0x6DB6DB6DB6DB6DB7 * ((a4 - v7) >> 4);
        }

        v13 = 112 * v12;
        if (v12)
        {
          result = memmove(v8, v7, v13 - 7);
        }

        v7 += v13;
        if (v7 == a4)
        {
          break;
        }

        v14 = *v9++;
        v10 = v14;
        v8 = v14;
      }

      v8 += v13;
      if (*(v9 - 1) + 4032 != v8)
      {
        *a5 = v9 - 1;
        goto LABEL_50;
      }

      v8 = *v9;
    }

    *a5 = v9;
    goto LABEL_50;
  }

  v15 = result;
  v16 = (*result + 4032);
  v17 = *a5;
  v8 = *(a5 + 8);
  if (v16 == __src)
  {
    goto LABEL_20;
  }

  v19 = *v17++;
  v18 = v19;
  while (1)
  {
    v20 = 0x6DB6DB6DB6DB6DB7 * ((v18 - v8 + 4032) >> 4);
    if (0x6DB6DB6DB6DB6DB7 * ((v16 - v7) >> 4) < v20)
    {
      v20 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v7) >> 4);
    }

    v21 = 112 * v20;
    if (v20)
    {
      result = memmove(v8, v7, v21 - 7);
    }

    v7 += v21;
    if (v7 == v16)
    {
      break;
    }

    v22 = *v17++;
    v18 = v22;
    v8 = v22;
  }

  v8 += v21;
  if (*(v17 - 1) + 4032 != v8)
  {
    --v17;
LABEL_20:
    *a5 = v17;
    *(a5 + 8) = v8;
    for (i = v15 + 1; i != a3; ++i)
    {
LABEL_23:
      while (1)
      {
        v24 = 0;
        v25 = *i;
        v27 = *v17++;
        v26 = v27;
        while (1)
        {
          v28 = 0x6DB6DB6DB6DB6DB7 * ((v26 - v8 + 4032) >> 4);
          if (0x6DB6DB6DB6DB6DB7 * ((4032 - v24) >> 4) < v28)
          {
            v28 = 0x6DB6DB6DB6DB6DB7 * ((4032 - v24) >> 4);
          }

          v29 = 112 * v28;
          if (v28)
          {
            result = memmove(v8, &v25[v24], v29 - 7);
          }

          v24 += v29;
          if (v24 == 4032)
          {
            break;
          }

          v30 = *v17++;
          v26 = v30;
          v8 = v30;
        }

        v8 += v29;
        v31 = v17 - 1;
        if (*(v17 - 1) + 4032 != v8)
        {
          break;
        }

        v8 = *v17;
        *a5 = v17;
        *(a5 + 8) = v8;
        if (++i == a3)
        {
          goto LABEL_32;
        }
      }

      --v17;
      *a5 = v31;
      *(a5 + 8) = v8;
    }

    goto LABEL_32;
  }

  v8 = *v17;
  *a5 = v17;
  *(a5 + 8) = v8;
  i = v15 + 1;
  if (v15 + 1 != a3)
  {
    goto LABEL_23;
  }

LABEL_32:
  v32 = *i;
  if (*i != a4)
  {
    v34 = *v17++;
    v33 = v34;
    while (1)
    {
      v35 = 0x6DB6DB6DB6DB6DB7 * ((v33 - v8 + 4032) >> 4);
      if (0x6DB6DB6DB6DB6DB7 * ((a4 - v32) >> 4) < v35)
      {
        v35 = 0x6DB6DB6DB6DB6DB7 * ((a4 - v32) >> 4);
      }

      v36 = 112 * v35;
      if (v35)
      {
        result = memmove(v8, v32, v36 - 7);
      }

      v32 += v36;
      if (v32 == a4)
      {
        break;
      }

      v37 = *v17++;
      v33 = v37;
      v8 = v37;
    }

    v8 += v36;
    if (*(v17 - 1) + 4032 == v8)
    {
      v8 = *v17;
    }

    else
    {
      --v17;
    }
  }

  *a5 = v17;
LABEL_50:
  *(a5 + 8) = v8;
  return result;
}

void *std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,std::allocator<HGMetalTextureWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTextureWrapperInfinipool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28721B7D8;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,std::allocator<HGMetalTextureWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTextureWrapperInfinipool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28721B7D8;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2666E9F00);
}

__n128 std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,std::allocator<HGMetalTextureWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTextureWrapperInfinipool> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28721B7D8;
  v4 = a2 + 8;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 == a1 + 8)
    {
      *(a2 + 32) = v4;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      *(a2 + 32) = (*(*v5 + 16))(v5, v4);
    }
  }

  else
  {
    *(a2 + 32) = 0;
  }

  *(a2 + 40) = *(a1 + 40);
  result = *(a1 + 56);
  v7 = *(a1 + 72);
  v8 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v8;
  *(a2 + 72) = v7;
  *(a2 + 56) = result;
  return result;
}

uint64_t std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,std::allocator<HGMetalTextureWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTextureWrapperInfinipool> const&)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,std::allocator<HGMetalTextureWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTextureWrapperInfinipool> const&)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,std::allocator<HGMetalTextureWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTextureWrapperInfinipool> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N6HGPool16MatchDescriptionIPU21objcproto10MTLTexture11objc_objectN31HGMetalTextureWrapperInfinipool10DescriptorEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N6HGPool16MatchDescriptionIPU21objcproto10MTLTexture11objc_objectN31HGMetalTextureWrapperInfinipool10DescriptorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N6HGPool16MatchDescriptionIPU21objcproto10MTLTexture11objc_objectN31HGMetalTextureWrapperInfinipool10DescriptorEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N6HGPool16MatchDescriptionIPU21objcproto10MTLTexture11objc_objectN31HGMetalTextureWrapperInfinipool10DescriptorEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void HGPool::EntryEventHandler<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::reused(void *a1)
{
  HGPool::DescriptorString<HGMetalTextureWrapperInfinipool::Descriptor>::str((a1 + 2));
  v4 = atomic_load(HGLogger::_enabled);
  if (v4)
  {
    if (v7 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    HGLogger::log("hgpool", 1, "hgpool entry reused : %p (%s)\n", v2, v3, *a1, p_p);
  }

  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_25FCB1100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGPool::EntryEventHandler<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::allocated(void *a1)
{
  HGPool::DescriptorString<HGMetalTextureWrapperInfinipool::Descriptor>::str((a1 + 2));
  v4 = atomic_load(HGLogger::_enabled);
  if (v4)
  {
    if (v7 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    HGLogger::log("hgpool", 1, "hgpool entry allocated : %p (%s)\n", v2, v3, *a1, p_p);
  }

  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_25FCB11C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x24;
  v3 = v1 - 36;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *,std::allocator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *>>::emplace_back<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *&>(a1, &v11);
}

void sub_25FCB154C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,true>::retrieveObject(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 0;
  v7 = v2;
  v3 = 0;
  v4 = v2;
  v5 = 0;
  operator new();
}

void sub_25FCB179C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va1);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va2);
  _Unwind_Resume(a1);
}

void sub_25FCB17C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va1);
  _Unwind_Resume(a1);
}

void HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::retrieveObject(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 0;
  v7 = v2;
  v3 = 0;
  v4 = v2;
  v5 = 0;
  operator new();
}

void sub_25FCB19D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va1);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va2);
  _Unwind_Resume(a1);
}

void sub_25FCB19F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va1);
  _Unwind_Resume(a1);
}

void **HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,true>::_retrieve@<X0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  *(a3 + 96) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 104) = 1;
  v5 = a1[4].u64[0];
  v6 = v5 + a1[4].i64[1];
  v7 = v6 / 0x24;
  v8 = a1[2].i64[1];
  if (a1[3].i64[0] != v8)
  {
    v9 = *(v8 + 8 * (v6 / 0x24)) + 112 * (v6 % 0x24);
    v10 = *(v8 + 8 * (v5 / 0x24)) + 112 * (v5 % 0x24);
    v11 = v9;
    v12 = *(a2 + 24);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    v29 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  v11 = 0;
  v10 = 0;
  v12 = *(a2 + 24);
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v12 == a2)
  {
    v29 = v28;
    (*(*v12 + 24))(v12, v28);
  }

  else
  {
    v29 = (*(*v12 + 16))(v12);
  }

LABEL_8:
  v13 = (v8 + 8 * v7);
  if (v11 != v10)
  {
    v16 = *v13;
    do
    {
      v17 = v9;
      if (v9 == v16)
      {
        v17 = *(v13 - 1) + 4032;
      }

      if (!v29)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v29 + 6))(v29, v17 - 112))
      {
        break;
      }

      v16 = *v13;
      if (v9 == *v13)
      {
        v18 = *--v13;
        v16 = v18;
        v9 = v18 + 4032;
      }

      v9 -= 112;
    }

    while (v10 != v9);
  }

  result = v29;
  if (v29 == v28)
  {
    result = (*(*v29 + 4))(v29);
    v15 = a1[2].i64[1];
    if (a1[3].i64[0] != v15)
    {
      goto LABEL_13;
    }

LABEL_24:
    if (!v9)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v29)
  {
    result = (*(*v29 + 5))();
  }

  v15 = a1[2].i64[1];
  if (a1[3].i64[0] == v15)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (*(v15 + 8 * (a1[4].i64[0] / 0x24uLL)) + 112 * (a1[4].i64[0] % 0x24uLL) == v9)
  {
    return result;
  }

LABEL_25:
  v19 = v9 - *v13;
  v20 = 0x6DB6DB6DB6DB6DB7 * (v19 >> 4);
  if (v19 < 113)
  {
    v24 = 36 - v20;
    v22 = &v13[-(v24 / 0x24)];
    v23 = *v22 + 112 * (36 * (v24 / 0x24) - v24) + 3920;
  }

  else
  {
    v21 = v20 - 1;
    v22 = &v13[v21 / 0x24];
    v23 = *v22 + 112 * (v21 % 0x24);
  }

  v25 = *(v23 + 80);
  *(a3 + 64) = *(v23 + 64);
  *(a3 + 80) = v25;
  *(a3 + 89) = *(v23 + 89);
  v26 = *(v23 + 16);
  *a3 = *v23;
  *(a3 + 16) = v26;
  v27 = *(v23 + 48);
  *(a3 + 32) = *(v23 + 32);
  *(a3 + 48) = v27;
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -*(a3 + 24));
  return std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>>::erase(a1 + 2, v22, v23);
}

void sub_25FCB1D78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_25FCB1D8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<HGPool::MatchObject<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,std::allocator<HGMetalTextureWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTextureWrapperInfinipool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28721B8E0;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<HGPool::MatchObject<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,std::allocator<HGMetalTextureWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTextureWrapperInfinipool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28721B8E0;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__function::__func<HGPool::MatchObject<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,std::allocator<HGMetalTextureWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTextureWrapperInfinipool> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28721B8E0;
  v4 = a2 + 1;
  result = *(a1 + 32);
  if (result)
  {
    if (result == a1 + 8)
    {
      a2[4] = v4;
      result = (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      result = (*(*result + 16))(result, v4);
      a2[4] = result;
    }

    a2[5] = *(a1 + 40);
  }

  else
  {
    a2[4] = 0;
    a2[5] = *(a1 + 40);
  }

  return result;
}

uint64_t std::__function::__func<HGPool::MatchObject<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,std::allocator<HGMetalTextureWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTextureWrapperInfinipool> const&)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<HGPool::MatchObject<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,std::allocator<HGMetalTextureWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTextureWrapperInfinipool> const&)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<HGPool::MatchObject<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>,std::allocator<HGMetalTextureWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTextureWrapperInfinipool> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N6HGPool11MatchObjectIPU21objcproto10MTLTexture11objc_objectN31HGMetalTextureWrapperInfinipool10DescriptorEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N6HGPool11MatchObjectIPU21objcproto10MTLTexture11objc_objectN31HGMetalTextureWrapperInfinipool10DescriptorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N6HGPool11MatchObjectIPU21objcproto10MTLTexture11objc_objectN31HGMetalTextureWrapperInfinipool10DescriptorEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N6HGPool11MatchObjectIPU21objcproto10MTLTexture11objc_objectN31HGMetalTextureWrapperInfinipool10DescriptorEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void HGPool::EntryEventHandler<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::recycled(void *a1)
{
  HGPool::DescriptorString<HGMetalTextureWrapperInfinipool::Descriptor>::str((a1 + 2));
  v4 = atomic_load(HGLogger::_enabled);
  if (v4)
  {
    if (v7 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    HGLogger::log("hgpool", 1, "hgpool entry recycled : %p (%s)\n", v2, v3, *a1, p_p);
  }

  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_25FCB231C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGBlur::HGBlur(HGBlur *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_28721B968;
  *(v2 + 512) = 0x300000001;
  *(v2 + 520) = 1;
  v3 = HGObject::operator new(0x20uLL);
  HGObject::HGObject(v3);
  *v3 = &unk_28721BE88;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(this + 66) = v3;
  *(this + 52) = 0;
  *(this + 54) = 0;
  *(this + 55) = this;
  *(this + 53) = 0x100000000;
  v4 = HGMalloc(512);
  *(this + 56) = v4;
  v4[30] = 0u;
  v4[31] = 0u;
  v4[28] = 0u;
  v4[29] = 0u;
  v4[26] = 0u;
  v4[27] = 0u;
  v4[24] = 0u;
  v4[25] = 0u;
  v4[22] = 0u;
  v4[23] = 0u;
  v4[20] = 0u;
  v4[21] = 0u;
  v4[18] = 0u;
  v4[19] = 0u;
  v4[16] = 0u;
  v4[17] = 0u;
  v4[14] = 0u;
  v4[15] = 0u;
  v4[12] = 0u;
  v4[13] = 0u;
  v4[10] = 0u;
  v4[11] = 0u;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *v4 = 0u;
  v4[1] = 0u;
  *(this + 500) = 0x300000001;
  *(this + 488) = 0;
  *(this + 127) = 0;
  *(this + 492) = 0x3F8000003F800000;
}

void sub_25FCB244C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 528);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGBlur::~HGBlur(HGBlur *this)
{
  v2 = 0;
  *this = &unk_28721B968;
  do
  {
    v3 = *(*(this + 56) + v2);
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }

    v2 += 8;
  }

  while (v2 != 512);
  HGFree(*(this + 56));
  v4 = *(this + 66);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  HGNode::~HGNode(this);
}

{
  HGBlur::~HGBlur(this);

  HGObject::operator delete(v1);
}

uint64_t HGBlur::SetParameter(HGBlur *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 2)
  {
    v10 = a3 != 0.0;
    v11 = a4;
    v12 = a5;
    if (a4)
    {
      if (v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = *(this + 128);
      if (v12)
      {
LABEL_13:
        if (*(this + 488) != v10)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (*(this + 125) == v11 && *(this + 126) == v12)
        {
          return 0;
        }

LABEL_20:
        *(this + 488) = v10;
        *(this + 125) = v11;
        *(this + 126) = v12;
        goto LABEL_21;
      }
    }

    v12 = *(this + 129);
    if (*(this + 488) != v10)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (a2 == 1)
  {
    v7 = *(this + 130);
    v8 = a4;
    if (a3 == 0.0)
    {
      v8 = 0;
    }

    *(this + 130) = v8;
    if (v7 != v8)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 104) == a3 && *(this + 105) == a4)
  {
    return 0;
  }

  *(this + 104) = a3;
  *(this + 105) = a4;
LABEL_21:
  *(this + 107) = 1;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HGBlur::ComputeDecimation(uint64_t this, int a2)
{
  v2 = 41.0;
  if (*(this + 424))
  {
    v2 = 25.0;
  }

  v3 = *(this + 416) * *(this + 416);
  v4 = fmaxf(v2 + -5.0, 0.0);
  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (v3 <= v5)
  {
    v9 = 0;
    v7 = 1.0;
  }

  else
  {
    v6 = 0;
    v7 = 1.0;
    if (a2)
    {
      v8 = v4;
      do
      {
        v9 = v6 + 1;
        v3 = v3 - v8;
        v7 = v7 * 4.0;
        v8 = fmaxf((v2 * v7) + -5.0, 0.0);
      }

      while (v3 > v8 && v6++ < 0xE);
    }

    else
    {
      do
      {
        v9 = v6 + 1;
        v3 = v3 - (v2 * v7);
        v7 = v7 * 4.0;
      }

      while (v3 > (v2 * v7) && v6++ < 0xE);
    }
  }

  v12 = v3 / v7;
  if ((v3 / v7) < 25.0)
  {
    v13 = v3;
  }

  else
  {
    v13 = v3 - (v7 * 25.0);
  }

  v14 = v13;
  if (v13 > 0.0)
  {
    v14 = sqrtf(v13 / v7);
    if (v14 > 5.0)
    {
      v14 = 5.0;
    }
  }

  *(this + 468) = v14;
  *(this + 456) = v9;
  *(this + 460) = v12 >= 25.0;
  *(this + 464) = v13 > 0.0;
  v15 = *(this + 420) * *(this + 420);
  if (v15 <= v5)
  {
    v18 = 0;
    v17 = 1.0;
  }

  else
  {
    v16 = 0;
    v17 = 1.0;
    if (a2)
    {
      do
      {
        v18 = v16 + 1;
        v15 = v15 - v4;
        v17 = v17 * 4.0;
        v4 = fmaxf((v2 * v17) + -5.0, 0.0);
      }

      while (v15 > v4 && v16++ < 0xE);
    }

    else
    {
      do
      {
        v18 = v16 + 1;
        v15 = v15 - (v2 * v17);
        v17 = v17 * 4.0;
      }

      while (v15 > (v2 * v17) && v16++ < 0xE);
    }
  }

  v21 = v15 / v17;
  v22 = v15 - (v17 * 25.0);
  if ((v15 / v17) < 25.0)
  {
    v22 = v15;
  }

  v23 = v22;
  if (v22 > 0.0)
  {
    v24 = sqrtf(v22 / v17);
    v23 = 5.0;
    if (v24 <= 5.0)
    {
      v23 = v24;
    }
  }

  *(this + 484) = v23;
  *(this + 472) = v18;
  *(this + 476) = v21 >= 25.0;
  *(this + 480) = v22 > 0.0;
  return this;
}

float HGBlur::GetDecimation(HGBlur *this, float a2)
{
  result = a2 * a2;
  v3 = 0;
  if (result >= 25.0)
  {
    v4 = 1.0;
    do
    {
      ++v3;
      result = result - (v4 * 25.0);
      v4 = v4 * 4.0;
    }

    while (result >= (v4 * 25.0));
  }

  return result;
}

HGNode *HGBlur::fastDecimateDown(HGBlur *this, HGNode *a2)
{
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  v4 = (this + 500);
  v5 = (this + 504);
  v6.i32[0] = *(this + 118);
  v6.i32[1] = *(this + 114);
  v7 = vld1_dup_f32(v5);
  v8 = vmin_s32(v6, v7);
  v9 = vld1_dup_f32(v4);
  v10 = vmax_s32(v9, v8);
  v11 = v10.i32[1];
  v12 = v10.i32[0];
  if (v10.i32[1] <= v10.i32[0])
  {
    v13 = v10.i32[0];
  }

  else
  {
    v13 = v10.i32[1];
  }

  *(this + 127) = v13;
  v14 = a2;
  if (v13 >= 1)
  {
    v32 = v10;
    *(this + 123) = exp2f(-v10.i32[1]);
    *(this + 124) = exp2f(-v12);
    v15 = *(this + 66);
    v16 = *(v15 + 16);
    if (v16 != a2)
    {
      if (v16)
      {
        (*(*v16 + 24))(v16);
      }

      *(v15 + 16) = a2;
      if (a2)
      {
        (*(*a2 + 16))(a2);
      }
    }

    HGTransform::HGTransform(v33);
    v17 = 0.5;
    if (v11)
    {
      v18 = 0.5;
    }

    else
    {
      v18 = 1.0;
    }

    if (!v12)
    {
      v17 = 1.0;
    }

    HGTransform::Scale(v33, v18, v17, 1.0);
    v19 = HGObject::operator new(0x210uLL);
    HGXForm::HGXForm(v19);
    (*(*v19 + 120))(v19, 0, *(*(this + 66) + 16));
    (*(*v19 + 576))(v19, v33);
    (*(*v19 + 592))(v19, 0, 0.0);
    (*(*v19 + 96))(v19, 1, 27.0, 0.0, 0.0, 0.0);
    (*(*v19 + 16))(v19);
    v20 = *(this + 66);
    v21 = *(v20 + 16);
    if (v21 == v19)
    {
      (*(*v19 + 24))(v19);
    }

    else
    {
      if (v21)
      {
        (*(*v21 + 24))(v21);
      }

      *(v20 + 16) = v19;
    }

    (*(*v19 + 24))(v19);
    HGTransform::~HGTransform(v33);
    if (*(this + 127) >= 2)
    {
      v22 = vmax_s32(v32, 0x100000001);
      v23 = 1;
      do
      {
        HGTransform::HGTransform(v33);
        v24 = vadd_s32(v22, -1);
        v25 = vceqz_s32(v24);
        if (v25.i8[4])
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 0.5;
        }

        if (v25.i8[0])
        {
          v27 = 1.0;
        }

        else
        {
          v27 = 0.5;
        }

        HGTransform::Scale(v33, v26, v27, 1.0);
        v28 = HGObject::operator new(0x210uLL);
        HGXForm::HGXForm(v28);
        (*(*v28 + 120))(v28, 0, *(*(this + 66) + 16));
        (*(*v28 + 576))(v28, v33);
        (*(*v28 + 592))(v28, 0, 0.0);
        (*(*v28 + 96))(v28, 1, 27.0, 0.0, 0.0, 0.0);
        (*(*v28 + 136))(v28, 0, 32);
        (*(*v28 + 16))(v28);
        v29 = *(this + 66);
        v30 = *(v29 + 16);
        if (v30 == v28)
        {
          (*(*v28 + 24))(v28);
        }

        else
        {
          if (v30)
          {
            (*(*v30 + 24))(v30);
          }

          *(v29 + 16) = v28;
        }

        (*(*v28 + 24))(v28);
        v22 = vmax_s32(v24, 0x100000001);
        HGTransform::~HGTransform(v33);
        ++v23;
      }

      while (v23 < *(this + 127));
    }

    *(this + 52) = vmul_f32(*(this + 416), *(this + 492));
    v14 = *(*(this + 66) + 16);
  }

  if (a2)
  {
    (*(*a2 + 24))(a2);
  }

  return v14;
}

void sub_25FCB2ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  (*(*v4 + 24))(v4);
  (*(*v4 + 24))(v4);
  HGTransform::~HGTransform(va);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  _Unwind_Resume(a1);
}

HGNode *HGBlur::fastDecimateUp(HGBlur *this, HGNode *a2)
{
  if (*(this + 123) == 1.0 && *(this + 124) == 1.0)
  {
    return a2;
  }

  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  HGTransform::HGTransform(v9);
  v5 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v5);
  HGTransform::Scale(v9, 1.0 / *(this + 123), 1.0 / *(this + 124), 1.0);
  (*(*v5 + 120))(v5, 0, a2);
  (*(*v5 + 576))(v5, v9);
  (*(*v5 + 16))(v5);
  v6 = *(this + 66);
  v7 = *(v6 + 24);
  if (v7 == v5)
  {
    (*(*v5 + 24))(v5);
  }

  else
  {
    if (v7)
    {
      (*(*v7 + 24))(v7);
    }

    *(v6 + 24) = v5;
  }

  v4 = *(*(this + 66) + 24);
  (*(*v5 + 24))(v5);
  HGTransform::~HGTransform(v9);
  if (a2)
  {
    (*(*a2 + 24))(a2);
  }

  return v4;
}

void sub_25FCB31F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v10 + 24))(v10);
  (*(*v10 + 24))(v10);
  HGTransform::~HGTransform(&a9);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  _Unwind_Resume(a1);
}

void HGBlur::CreateDownShaderHorz(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 128))(a2, 43) == 1)
  {
    v3 = HGObject::operator new(0x1C0uLL);
    HGG9X<HgcBlur_cs9s_rect>::HGG9X(v3);
  }

  if ((*(*a2 + 128))(a2, 46))
  {
    v4 = HGObject::operator new(0x1C0uLL);
    HGG9X<HgcBlur_cs9s_rect>::HGG9X(v4);
  }

  v5 = (*(*a2 + 128))(a2, 21);
  v6 = HGObject::operator new(0x1C0uLL);
  if (v5)
  {
    HGG9X<HgcBlur_cs9s>::HGG9X(v6);
  }

  HGG9X<HgcBlur_cs9s_es_noborder>::HGG9X(v6);
}

void HGBlur::CreateDownShaderVert(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 128))(a2, 43) == 1)
  {
    v3 = HGObject::operator new(0x1C0uLL);
    HGG9X<HgcBlur_cs9s_rect>::HGG9X(v3);
  }

  if ((*(*a2 + 128))(a2, 46))
  {
    v4 = HGObject::operator new(0x1C0uLL);
    HGG9X<HgcBlur_cs9s_rect>::HGG9X(v4);
  }

  v5 = (*(*a2 + 128))(a2, 21);
  v6 = HGObject::operator new(0x1C0uLL);
  if (v5)
  {
    HGG9X<HgcBlur_cs9s>::HGG9X(v6);
  }

  HGG9X<HgcBlur_cs9s_es_noborder>::HGG9X(v6);
}

void sub_25FCB384C(_Unwind_Exception *a1)
{
  HgcBlur_cs9s_es_noborder::~HgcBlur_cs9s_es_noborder(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_25FCB38B0(_Unwind_Exception *a1)
{
  HgcBlur_cs9s_rect::~HgcBlur_cs9s_rect(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void HGBlur::CreateDownShaderDoubleHorz(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 128))(a2, 43) == 1)
  {
    v3 = HGObject::operator new(0x1C0uLL);
    HGG9X<HgcBlur_cs9s_rect>::HGG9X(v3);
  }

  if ((*(*a2 + 128))(a2, 46))
  {
    v4 = HGObject::operator new(0x1C0uLL);
    HGG9X<HgcBlur_cs9s_rect>::HGG9X(v4);
  }

  v5 = (*(*a2 + 128))(a2, 21);
  v6 = HGObject::operator new(0x1C0uLL);
  if (v5)
  {
    HGG9X<HgcBlur_cs9s>::HGG9X(v6);
  }

  HGG9X<HgcBlur_cs9s_es_noborder>::HGG9X(v6);
}

void sub_25FCB3AE8(_Unwind_Exception *a1)
{
  HgcBlur_cs9s_es_noborder::~HgcBlur_cs9s_es_noborder(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_25FCB3B14(_Unwind_Exception *a1)
{
  HgcBlur_cs9s::~HgcBlur_cs9s(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_25FCB3B40(_Unwind_Exception *a1)
{
  HgcBlur_cs9s_rect::~HgcBlur_cs9s_rect(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void HGBlur::CreateDownShaderDoubleVert(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 128))(a2, 43) == 1)
  {
    v3 = HGObject::operator new(0x1C0uLL);
    HGG9D2Y<HgcBlur_cs9s_rect>::HGG9D2Y(v3);
  }

  if ((*(*a2 + 128))(a2, 46))
  {
    v4 = HGObject::operator new(0x1C0uLL);
    HGG9D2Y<HgcBlur_cs9s_rect>::HGG9D2Y(v4);
  }

  v5 = (*(*a2 + 128))(a2, 21);
  v6 = HGObject::operator new(0x1C0uLL);
  if (v5)
  {
    HGG9X<HgcBlur_cs9s>::HGG9X(v6);
  }

  HGG9X<HgcBlur_cs9s_es_noborder>::HGG9X(v6);
}

void sub_25FCB3E9C(_Unwind_Exception *a1)
{
  HgcBlur_cs9s_es_noborder::~HgcBlur_cs9s_es_noborder(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void HGBlur::CreateUpShaderHorz(HGBlur *this, HGRenderer *a2)
{
  if ((*(*a2 + 128))(a2, 43) == 1)
  {
    v3 = HGObject::operator new(0x1C0uLL);
    HGG4U2X<HgcBlur_g4u2_rect>::HGG4U2X(v3);
  }

  if ((*(*a2 + 128))(a2, 46))
  {
    v4 = HGObject::operator new(0x1C0uLL);
    HGG4U2X<HgcBlur_g4u2_rect>::HGG4U2X(v4);
  }

  v5 = (*(*a2 + 128))(a2, 21);
  v6 = HGObject::operator new(0x1C0uLL);
  if (v5)
  {
    HGG4U2X<HgcBlur_g4u2>::HGG4U2X(v6);
  }

  HGG4U2X<HgcBlur_g4u2_noborder>::HGG4U2X(v6);
}

void HGBlur::CreateUpShaderVet(HGBlur *this, HGRenderer *a2)
{
  if ((*(*a2 + 128))(a2, 43) == 1)
  {
    v3 = HGObject::operator new(0x1C0uLL);
    HGG4U2Y<HgcBlur_g4u2_rect>::HGG4U2Y(v3);
  }

  if ((*(*a2 + 128))(a2, 46))
  {
    v4 = HGObject::operator new(0x1C0uLL);
    HGG4U2Y<HgcBlur_g4u2_rect>::HGG4U2Y(v4);
  }

  v5 = (*(*a2 + 128))(a2, 21);
  v6 = HGObject::operator new(0x1C0uLL);
  if (v5)
  {
    HGG4U2Y<HgcBlur_g4u2>::HGG4U2Y(v6);
  }

  HGG4U2Y<HgcBlur_g4u2_noborder>::HGG4U2Y(v6);
}

BOOL HGG9B<HgcBlur_cs9s>::SetRadius(uint64_t a1, double a2)
{
  if (atomic_load_explicit(&qword_280C5E440, memory_order_acquire))
  {
    v4 = *&_MergedGlobals_21;
    if (atomic_load_explicit(&qword_280C5E440, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    HGG9B<HgcBlur_cs9s>::SetRadius();
    v4 = *&_MergedGlobals_21;
    if (atomic_load_explicit(&qword_280C5E440, memory_order_acquire))
    {
LABEL_3:
      v5 = *&_MergedGlobals_21;
      if (atomic_load_explicit(&qword_280C5E440, memory_order_acquire))
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  HGG9B<HgcBlur_cs9s>::SetRadius();
  v5 = *&_MergedGlobals_21;
  if (atomic_load_explicit(&qword_280C5E440, memory_order_acquire))
  {
LABEL_4:
    v6 = *&_MergedGlobals_21;
    if (atomic_load_explicit(&qword_280C5E440, memory_order_acquire))
    {
      goto LABEL_5;
    }

LABEL_10:
    HGG9B<HgcBlur_cs9s>::SetRadius();
    v7 = *&_MergedGlobals_21;
    if (atomic_load_explicit(&qword_280C5E440, memory_order_acquire))
    {
      goto LABEL_6;
    }

LABEL_11:
    HGG9B<HgcBlur_cs9s>::SetRadius();
    goto LABEL_6;
  }

LABEL_9:
  HGG9B<HgcBlur_cs9s>::SetRadius();
  v6 = *&_MergedGlobals_21;
  if ((atomic_load_explicit(&qword_280C5E440, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = *&_MergedGlobals_21;
  if ((atomic_load_explicit(&qword_280C5E440, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = exp(9.0 / a2 * (9.0 / a2 * v7));
  v9 = exp(6.0 / a2 * (6.0 / a2 * v6));
  v10 = exp(3.0 / a2 * (3.0 / a2 * v5));
  v11 = exp(0.0 / a2 * (0.0 / a2 * v4));
  v12 = exp(12.0 / a2 * (12.0 / a2 * *&_MergedGlobals_21));
  v13 = v11 + v10 + v9 + v8 + v12 + v10 + v9 + v8 + v12;
  v14 = v10 / v13;
  v15 = v9 / v13;
  v16 = v8 / v13;
  *&v12 = v12 / v13;
  v17 = (v14 + 256.0) + -256.0;
  *&v9 = (v15 + 256.0) + -256.0;
  *&v10 = (v16 + 256.0) + -256.0;
  *&v8 = (*&v12 + 256.0) + -256.0;
  (*(*a1 + 96))(a1, 0, 1.0 - ((*&v8 + (*&v10 + (v17 + *&v9))) + (*&v8 + (*&v10 + (v17 + *&v9)))), 1.0 - ((*&v8 + (*&v10 + (v17 + *&v9))) + (*&v8 + (*&v10 + (v17 + *&v9)))), 1.0 - ((*&v8 + (*&v10 + (v17 + *&v9))) + (*&v8 + (*&v10 + (v17 + *&v9)))), 1.0 - ((*&v8 + (*&v10 + (v17 + *&v9))) + (*&v8 + (*&v10 + (v17 + *&v9)))));
  (*(*a1 + 96))(a1, 1, v17, v17, v17, v17);
  (*(*a1 + 96))(a1, 2, *&v9, *&v9, *&v9, *&v9);
  (*(*a1 + 96))(a1, 3, *&v10, *&v10, *&v10, *&v10);
  (*(*a1 + 96))(a1, 4, *&v8, *&v8, *&v8, *&v8);
  return v17 > 0.0;
}

HGNode *HGBlur::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  if (*(this + 107))
  {
    *(this + 107) = 0;
    if (*(this + 104) <= 0.0 && *(this + 105) <= 0.0)
    {
      return Input;
    }

    if (*(this + 488) == 1)
    {
      HGBlur::ComputeDecimation(this, 1);
      Input = HGBlur::fastDecimateDown(this, Input);
    }

    HGBlur::ComputeDecimation(this, 0);
    *(this + 54) = 0;
    *(this + 55) = Input;
    v5 = *(this + 130);
    DeviceInfo = (*(*a2 + 304))(a2);
    if (DeviceInfo & 1) != 0 || (HGBlur::m_ForceOneForOneTapMethod)
    {
      if (*(this + 114) < 1)
      {
        goto LABEL_23;
      }

LABEL_16:
      v8 = 0;
      do
      {
        v9 = *(*(this + 56) + 8 * v8);
        if (!v9)
        {
          HGBlur::CreateDownShaderDoubleHorz(DeviceInfo, a2);
        }

        v9[4] &= ~2u;
        if (!*(this + 54))
        {
          *(this + 54) = v9;
        }

        DeviceInfo = (*(*v9 + 120))(v9, 0, *(this + 55));
        *(this + 55) = v9;
        ++v8;
      }

      while (v8 < *(this + 114));
      goto LABEL_23;
    }

    if (v5 == 1 && (DeviceInfo = (*(*a2 + 128))(a2, 43), DeviceInfo == 1))
    {
      MetalContext = HGGPURenderer::GetMetalContext(a2);
      DeviceInfo = HGMetalDeviceInfo::getDeviceInfo(*(*(MetalContext + 16) + 16));
      if (*(DeviceInfo + 57))
      {
        if (*(this + 114) < 1)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }

      if (*(this + 114) >= 1)
      {
        goto LABEL_16;
      }
    }

    else if (*(this + 114) >= 1)
    {
      goto LABEL_16;
    }

LABEL_23:
    LODWORD(v10) = *(this + 118);
    if (v10 >= 1)
    {
      v11 = 16;
      do
      {
        v13 = *(*(this + 56) + 8 * v11);
        if (!v13)
        {
          HGBlur::CreateDownShaderDoubleVert(DeviceInfo, a2);
        }

        v13[4] &= ~2u;
        if (!*(this + 54))
        {
          *(this + 54) = v13;
        }

        DeviceInfo = (*(*v13 + 120))(v13, 0, *(this + 55));
        *(this + 55) = v13;
        v10 = *(this + 118);
        v12 = v11 - 15;
        ++v11;
      }

      while (v12 < v10);
      if (v10 >= 1)
      {
        v14 = *(this + 56);
        v15 = v14 + 152;
        v16 = v14 + 8 * v10 + 120;
        if (v10 > 3)
        {
          v16 = v15;
        }

        *(*v16 + 16) |= 2u;
      }
    }

    v17 = *(this + 114);
    if (v17 >= 1 && (!v10 || v10 >= 2))
    {
      v18 = *(this + 56);
      v19 = v18 + 8 * v17 - 8;
      v20 = v18 + 24;
      if (v17 <= 3)
      {
        v20 = v19;
      }

      *(*v20 + 16) |= 2u;
    }

    if (*(this + 115))
    {
      v21 = *(*(this + 56) + 120);
      if (!v21)
      {
        HGBlur::CreateDownShaderHorz(DeviceInfo, a2);
      }

      if (!*(this + 54))
      {
        *(this + 54) = v21;
      }

      DeviceInfo = (*(*v21 + 120))(v21, 0, *(this + 55));
      *(this + 55) = v21;
    }

    if (*(this + 119))
    {
      v22 = *(*(this + 56) + 248);
      if (!v22)
      {
        HGBlur::CreateDownShaderVert(DeviceInfo, a2);
      }

      if (!*(this + 54))
      {
        *(this + 54) = v22;
      }

      DeviceInfo = (*(*v22 + 120))(v22, 0, *(this + 55));
      *(this + 55) = v22;
    }

    if (*(this + 116))
    {
      v23 = *(*(this + 56) + 376);
      if (!v23)
      {
        HGBlur::CreateDownShaderHorz(0, a2);
      }

      DeviceInfo = HGG9B<HgcBlur_cs9s>::SetRadius(v23, *(this + 117));
      if (DeviceInfo)
      {
        v24 = *(*(this + 56) + 376);
        if (v24)
        {
          if (!*(this + 54))
          {
            *(this + 54) = v24;
          }

          DeviceInfo = (*(*v24 + 120))(v24, 0, *(this + 55));
          *(this + 55) = v24;
        }
      }
    }

    if (*(this + 120))
    {
      v25 = *(*(this + 56) + 504);
      if (!v25)
      {
        HGBlur::CreateDownShaderVert(0, a2);
      }

      DeviceInfo = HGG9B<HgcBlur_cs9s>::SetRadius(v25, *(this + 121));
      if (DeviceInfo)
      {
        v26 = *(*(this + 56) + 504);
        if (v26)
        {
          if (!*(this + 54))
          {
            *(this + 54) = v26;
          }

          DeviceInfo = (*(*v26 + 120))(v26, 0, *(this + 55));
          *(this + 55) = v26;
        }
      }
    }

    if (!*(this + 106))
    {
      if (*(this + 114) >= 1)
      {
        v29 = 32;
        do
        {
          v31 = *(*(this + 56) + 8 * v29);
          if (!v31)
          {
            HGBlur::CreateUpShaderHorz(DeviceInfo, a2);
          }

          if (!*(this + 54))
          {
            *(this + 54) = v31;
          }

          DeviceInfo = (*(*v31 + 120))(v31, 0, *(this + 55));
          *(this + 55) = v31;
          v30 = v29 - 31;
          ++v29;
        }

        while (v30 < *(this + 114));
      }

      if (*(this + 118) >= 1)
      {
        v32 = 48;
        do
        {
          v34 = *(*(this + 56) + 8 * v32);
          if (!v34)
          {
            HGBlur::CreateUpShaderVet(DeviceInfo, a2);
          }

          if (!*(this + 54))
          {
            *(this + 54) = v34;
          }

          DeviceInfo = (*(*v34 + 120))(v34, 0, *(this + 55));
          *(this + 55) = v34;
          v33 = v32 - 47;
          ++v32;
        }

        while (v33 < *(this + 118));
      }
    }

    if (*(this + 488) == 1)
    {
      *(this + 55) = HGBlur::fastDecimateUp(this, *(this + 55));
    }
  }

  v27 = *(this + 54);
  if (v27)
  {
    (*(*v27 + 120))(v27, 0, Input);
  }

  return *(this + 55);
}

void HGBS::HGBlurShared::~HGBlurShared(HGBS::HGBlurShared *this)
{
  *this = &unk_28721BBB8;
  v1 = *(this + 67);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 67));
    this = v2;
  }

  HGBlur::~HGBlur(this);
}

{
  *this = &unk_28721BBB8;
  v2 = *(this + 67);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGBlur::~HGBlur(this);

  HGObject::operator delete(v3);
}

HGNode *HGBS::HGBlurShared::GetOutput(HGNode *this, HGRenderer *a2)
{
  v4 = *(this + 67);
  if (v4)
  {
    HGRenderer::GetOutput(a2, v4);
    Input = HGRenderer::GetInput(a2, this, 0);
    if (!*(this + 107))
    {
LABEL_79:
      v24 = *(this + 54);
      if (v24)
      {
        (*(*v24 + 120))(v24, 0, Input);
      }

      return *(this + 55);
    }

    *(this + 107) = 0;
    if (*(this + 104) <= 0.0 && *(this + 105) <= 0.0)
    {
      return Input;
    }

    HGBlur::ComputeDecimation(this, 0);
    *(this + 54) = 0;
    *(this + 55) = Input;
    if (*(this + 114) >= 1)
    {
      v6 = 0;
      v7 = Input;
      while (1)
      {
        if (v6 >= *(this + 118))
        {
          goto LABEL_26;
        }

        v8 = *(v4 + 448);
        v9 = *(v8 + 8 * v6);
        if (v9)
        {
          *(v9 + 4) &= ~2u;
        }

        v10 = *(v8 + 8 * v6 + 128);
        if (v10)
        {
          *(v10 + 4) &= ~2u;
        }

        if (v9)
        {
          if (!*(this + 54))
          {
            *(this + 54) = v9;
          }

          (*(*v9 + 120))(v9, 0, v7);
          *(this + 55) = v9;
          v10 = *(*(v4 + 448) + 8 * v6 + 128);
          if (v10)
          {
            goto LABEL_17;
          }

LABEL_20:
          ++v6;
          v7 = v9;
          if (v6 >= *(this + 114))
          {
            goto LABEL_26;
          }
        }

        else
        {
          v9 = v7;
          if (!v10)
          {
            goto LABEL_20;
          }

LABEL_17:
          if (!*(this + 54))
          {
            *(this + 54) = v10;
          }

          (*(*v10 + 120))(v10, 0, v9);
          *(this + 55) = v10;
          ++v6;
          v7 = v10;
          if (v6 >= *(this + 114))
          {
            goto LABEL_26;
          }
        }
      }
    }

    LODWORD(v6) = 0;
LABEL_26:
    v12 = *(this + 130);
    DeviceInfo = (*(*a2 + 304))(a2);
    if (DeviceInfo & 1) != 0 || (HGBlur::m_ForceOneForOneTapMethod)
    {
LABEL_28:
      if (v6 >= *(this + 114))
      {
        goto LABEL_29;
      }

LABEL_37:
      v6 = v6;
      do
      {
        v15 = *(*(this + 56) + 8 * v6);
        if (!v15)
        {
          HGBlur::CreateDownShaderDoubleHorz(DeviceInfo, a2);
        }

        v15[4] &= ~2u;
        if (!*(this + 54))
        {
          *(this + 54) = v15;
        }

        DeviceInfo = (*(*v15 + 120))(v15, 0, *(this + 55));
        *(this + 55) = v15;
        ++v6;
      }

      while (*(this + 114) > v6);
      if (v6 >= *(this + 118))
      {
        goto LABEL_50;
      }

      goto LABEL_44;
    }

    if (v12 == 1)
    {
      DeviceInfo = (*(*a2 + 128))(a2, 43);
      if (DeviceInfo != 1)
      {
        goto LABEL_28;
      }

      MetalContext = HGGPURenderer::GetMetalContext(a2);
      DeviceInfo = HGMetalDeviceInfo::getDeviceInfo(*(*(MetalContext + 16) + 16));
      if (*(DeviceInfo + 57))
      {
        if (v6 < *(this + 114))
        {
          goto LABEL_37;
        }
      }

      else if (v6 < *(this + 114))
      {
        goto LABEL_37;
      }
    }

    else if (v6 < *(this + 114))
    {
      goto LABEL_37;
    }

LABEL_29:
    if (v6 >= *(this + 118))
    {
LABEL_50:
      if (*(this + 115))
      {
        v18 = *(*(this + 56) + 120);
        if (!v18)
        {
          HGBlur::CreateDownShaderHorz(DeviceInfo, a2);
        }

        if (!*(this + 54))
        {
          *(this + 54) = v18;
        }

        DeviceInfo = (*(*v18 + 120))(v18, 0, *(this + 55));
        *(this + 55) = v18;
      }

      if (*(this + 119))
      {
        v19 = *(*(this + 56) + 248);
        if (!v19)
        {
          HGBlur::CreateDownShaderVert(DeviceInfo, a2);
        }

        if (!*(this + 54))
        {
          *(this + 54) = v19;
        }

        DeviceInfo = (*(*v19 + 120))(v19, 0, *(this + 55));
        *(this + 55) = v19;
      }

      if (*(this + 116))
      {
        v20 = *(*(this + 56) + 376);
        if (!v20)
        {
          HGBlur::CreateDownShaderHorz(0, a2);
        }

        DeviceInfo = HGG9B<HgcBlur_cs9s>::SetRadius(v20, *(this + 117));
        if (DeviceInfo)
        {
          v21 = *(*(this + 56) + 376);
          if (v21)
          {
            if (!*(this + 54))
            {
              *(this + 54) = v21;
            }

            DeviceInfo = (*(*v21 + 120))(v21, 0, *(this + 55));
            *(this + 55) = v21;
          }
        }
      }

      if (*(this + 120))
      {
        v22 = *(*(this + 56) + 504);
        if (!v22)
        {
          HGBlur::CreateDownShaderVert(0, a2);
        }

        DeviceInfo = HGG9B<HgcBlur_cs9s>::SetRadius(v22, *(this + 121));
        if (DeviceInfo)
        {
          v23 = *(*(this + 56) + 504);
          if (v23)
          {
            if (!*(this + 54))
            {
              *(this + 54) = v23;
            }

            DeviceInfo = (*(*v23 + 120))(v23, 0, *(this + 55));
            *(this + 55) = v23;
          }
        }
      }

      if (!*(this + 106))
      {
        if (*(this + 114) >= 1)
        {
          v25 = 32;
          do
          {
            v27 = *(*(this + 56) + 8 * v25);
            if (!v27)
            {
              HGBlur::CreateUpShaderHorz(DeviceInfo, a2);
            }

            if (!*(this + 54))
            {
              *(this + 54) = v27;
            }

            DeviceInfo = (*(*v27 + 120))(v27, 0, *(this + 55));
            *(this + 55) = v27;
            v26 = v25 - 31;
            ++v25;
          }

          while (v26 < *(this + 114));
        }

        if (*(this + 118) >= 1)
        {
          v28 = 48;
          do
          {
            v30 = *(*(this + 56) + 8 * v28);
            if (!v30)
            {
              HGBlur::CreateUpShaderVet(DeviceInfo, a2);
            }

            if (!*(this + 54))
            {
              *(this + 54) = v30;
            }

            DeviceInfo = (*(*v30 + 120))(v30, 0, *(this + 55));
            *(this + 55) = v30;
            v29 = v28 - 47;
            ++v28;
          }

          while (v29 < *(this + 118));
        }
      }

      goto LABEL_79;
    }

LABEL_44:
    v16 = 8 * v6 + 128;
    do
    {
      v17 = *(*(this + 56) + v16);
      if (!v17)
      {
        HGBlur::CreateDownShaderDoubleVert(DeviceInfo, a2);
      }

      v17[4] &= ~2u;
      if (!*(this + 54))
      {
        *(this + 54) = v17;
      }

      DeviceInfo = (*(*v17 + 120))(v17, 0, *(this + 55));
      *(this + 55) = v17;
      v16 += 8;
      LODWORD(v6) = v6 + 1;
    }

    while (*(this + 118) > v6);
    goto LABEL_50;
  }

  return HGBlur::GetOutput(this, a2);
}

void HGBlurGroup::HGBlurGroup(HGBlurGroup *this, HGNode *a2, char a3)
{
  HGObject::HGObject(this);
  *v6 = &unk_28721BE08;
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  *(this + 24) = 0u;
  *(this + 2) = a2;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 1;
  *(this + 105) = a3;
  *(this + 106) = 0;
  v7 = 0;
  std::vector<HGBlurGroup::BlurVal>::push_back[abi:ne200100](this + 32, &v7);
}

void sub_25FCB57CC(_Unwind_Exception *a1)
{
  std::vector<HGRef<HGNode>>::~vector[abi:ne200100]((v1 + 80));
  std::vector<HGRef<HGNode>>::~vector[abi:ne200100]((v1 + 56));
  v4 = *(v1 + 32);
  if (v4)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  if (*v2)
  {
    (*(**v2 + 24))(*v2);
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  HGObject::~HGObject(v1);
  _Unwind_Resume(a1);
}

void std::vector<HGBlurGroup::BlurVal>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void **std::vector<HGRef<HGNode>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          (*(*v5 + 24))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void HGBlurGroup::~HGBlurGroup(HGBlurGroup *this)
{
  *this = &unk_28721BE08;
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(this + 11);
    v4 = *(this + 10);
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 8);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          (*(*v5 + 24))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 10);
    }

    *(this + 11) = v2;
    operator delete(v4);
  }

  v7 = *(this + 7);
  if (v7)
  {
    v8 = *(this + 8);
    v9 = *(this + 7);
    if (v8 != v7)
    {
      do
      {
        v11 = *(v8 - 8);
        v8 -= 8;
        v10 = v11;
        if (v11)
        {
          (*(*v10 + 24))(v10);
        }
      }

      while (v8 != v7);
      v9 = *(this + 7);
    }

    *(this + 8) = v7;
    operator delete(v9);
  }

  v12 = *(this + 4);
  if (v12)
  {
    *(this + 5) = v12;
    operator delete(v12);
  }

  v13 = *(this + 3);
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  v14 = *(this + 2);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  HGObject::~HGObject(this);
}

{
  HGBlurGroup::~HGBlurGroup(this);

  HGObject::operator delete(v1);
}

void HGBlurGroup::setBlurValues(HGBlurGroup *this, const float *a2, const float *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v8 = this + 32;
    *(this + 5) = *(this + 4);
    do
    {
      v9 = *a2++;
      v10 = v9;
      v11 = *a3++;
      v12 = __PAIR64__(v11, v10);
      std::vector<HGBlurGroup::BlurVal>::push_back[abi:ne200100](v8, &v12);
      --v4;
    }

    while (v4);
    *(this + 104) = 1;
  }
}

uint64_t HGBlurGroup::level(HGBlurGroup *this, unsigned int a2)
{
  if (*(this + 104) == 1)
  {
    v4 = *(this + 7);
    for (i = *(this + 8); i != v4; i -= 8)
    {
      v7 = *(i - 8);
      v6 = v7;
      if (v7)
      {
        (*(*v6 + 24))(v6);
      }
    }

    v8 = *(this + 10);
    *(this + 8) = v4;
    for (j = *(this + 11); j != v8; j -= 8)
    {
      v11 = *(j - 8);
      v10 = v11;
      if (v11)
      {
        (*(*v10 + 24))(v10);
      }
    }

    *(this + 11) = v8;
    v12 = *(this + 5);
    v13 = *(v12 - 8);
    v14 = *(v12 - 4);
    v15 = HGObject::operator new(0x220uLL);
    HGBlur::HGBlur(v15);
    v16 = *(this + 3);
    v37 = a2;
    if (v16 == v15)
    {
      if (v15)
      {
        (*(*v15 + 24))(v15);
        v16 = *(this + 3);
      }
    }

    else
    {
      if (v16)
      {
        (*(*v16 + 24))(v16);
      }

      *(this + 3) = v15;
      v16 = v15;
    }

    (*(*v16 + 96))(v16, 0, v13, v14, 0.0, 0.0);
    (*(**(this + 3) + 120))(*(this + 3), 0, *(this + 2));
    v17 = *(this + 4);
    if (v17 != *(this + 5))
    {
      v19 = *(this + 7);
      v18 = *(this + 8);
      v20 = *v17;
      v21 = v17[1];
      v22 = HGObject::operator new(0x220uLL);
      HGBlur::HGBlur(v22);
      v25 = &unk_28721BBB8;
      *v22 = &unk_28721BBB8;
      *(v22 + 67) = 0;
      if (*(v22 + 104) != v20 || *(v22 + 105) != v21)
      {
        *(v22 + 104) = v20;
        *(v22 + 105) = v21;
        *(v22 + 107) = 1;
        HGNode::ClearBits(v22, v23, v24);
        v25 = *v22;
      }

      (*(v25 + 15))(v22, 0, *(this + 2));
      if ((*(this + 106) & 1) == 0)
      {
        v26 = *(v22 + 67);
        v27 = *(this + 3);
        if (v26 != v27)
        {
          if (v26)
          {
            (*(*v26 + 24))(*(v22 + 67));
            v27 = *(this + 3);
          }

          *(v22 + 67) = v27;
          if (v27)
          {
            (*(*v27 + 16))(v27);
          }
        }
      }

      v38 = v22;
      v28 = (*(*v22 + 16))(v22);
      v29 = *(this + 8);
      if (v29 >= *(this + 9))
      {
        v30 = std::vector<HGRef<HGNode>>::__emplace_back_slow_path<HGRef<HGNode>>(this + 7, &v38);
        v28 = v38;
        *(this + 8) = v30;
        if (v28)
        {
          v28 = (*(*v28 + 24))(v28);
        }
      }

      else
      {
        *v29 = v38;
        *(this + 8) = v29 + 1;
      }

      v31 = (((v18 - v19) >> 3) - 1) % 3;
      v32 = 0.4;
      if (v31)
      {
        v33 = 0.4;
      }

      else
      {
        v33 = 1.0;
      }

      if (v31 == 1)
      {
        v34 = 1.0;
      }

      else
      {
        v34 = 0.4;
      }

      if (v31 == 2)
      {
        v32 = 1.0;
      }

      HGBS::createColorMaskNode(v28, v33, v34, v32);
    }

    *(this + 104) = 0;
    a2 = v37;
  }

  v35 = 56;
  if (*(this + 105))
  {
    v35 = 80;
  }

  return *(*(this + v35) + 8 * a2);
}

void sub_25FCB6130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  _Unwind_Resume(exception_object);
}

void HGDecimationImplementation::~HGDecimationImplementation(HGDecimationImplementation *this)
{
  *this = &unk_28721BE88;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_28721BE88;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v4);
}

void HGG9X<HgcBlur_cs9s_rect>::~HGG9X(HgcBlur_cs9s_rect *a1)
{
  HgcBlur_cs9s_rect::~HgcBlur_cs9s_rect(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG9X<HgcBlur_cs9s_rect>::RenderTile(uint64_t a1, uint64_t a2)
{
  v4 = HGGetTBC();
  v5 = *(a1 + 48);
  if (v5[4].f32[0] == 0.0)
  {
    if (v5[3].f32[0] != 0.0)
    {
      v40 = *(a2 + 8);
      v41 = *(a2 + 12) - *(a2 + 4);
      if (v41 >= 1 && v40 != *a2)
      {
        v43 = 0;
        v44 = *v5;
        v45 = v5[1];
        v46 = *a2 - v40;
        v47 = v5[2];
        v48 = v5[3];
        do
        {
          v49 = (*(a2 + 16) + 16 * *(a2 + 24) * v43);
          v50 = (*(a2 + 80) + 16 * *(a2 + 88) * v43);
          v52 = v50[-3];
          v51 = v50[-2];
          v53 = v50[-1];
          v54 = *v50;
          v55 = v50[1];
          v56 = v50[2];
          v57 = v50 + 3;
          v58 = v46;
          do
          {
            v59 = *v57++;
            *v49++ = vaddq_f32(vaddq_f32(vmulq_f32(v47, vaddq_f32(v56, v51)), vaddq_f32(vmulq_f32(v44, v54), vmulq_f32(v45, vaddq_f32(v55, v53)))), vmulq_f32(v48, vaddq_f32(v52, v59)));
            v52 = v51;
            v51 = v53;
            v53 = v54;
            v54 = v55;
            v55 = v56;
            v56 = v59;
          }

          while (!__CFADD__(v58++, 1));
          ++v43;
        }

        while (v43 != v41);
      }

      goto LABEL_50;
    }

    v61 = *v5;
    v62 = v5[1];
    if (v5[2].f32[0] != 0.0)
    {
      v63 = *(a2 + 12) - *(a2 + 4);
      if (v63 < 1)
      {
        goto LABEL_50;
      }

      v64 = 0;
      v65 = v5[2];
      v66 = *(a2 + 8) - *a2;
      while (1)
      {
        v67 = (*(a2 + 16) + 16 * *(a2 + 24) * v64);
        v68 = (*(a2 + 80) + 16 * *(a2 + 88) * v64);
        v70 = v68[-2];
        v69 = v68[-1];
        v71 = *v68;
        v72 = v68[1];
        if (v66 >= 2)
        {
          break;
        }

        v79 = &v68[4];
        v74 = v66;
        if (v66)
        {
          goto LABEL_35;
        }

LABEL_28:
        if (++v64 == v63)
        {
          goto LABEL_50;
        }
      }

      v73 = 0;
      v74 = v66;
      do
      {
        v75 = v74;
        v76 = v72;
        v77 = v71;
        v78 = &v67[v73];
        v71 = v68[v73 + 2];
        v72 = v68[v73 + 3];
        v74 -= 2;
        *v78 = vaddq_f32(vaddq_f32(vmulq_f32(v61, v77), vmulq_f32(v62, vaddq_f32(v76, v69))), vmulq_f32(v65, vaddq_f32(v70, v71)));
        v78[1] = vaddq_f32(vmulq_f32(v65, vaddq_f32(v69, v72)), vaddq_f32(vmulq_f32(v61, v76), vmulq_f32(v62, vaddq_f32(v77, v71))));
        v73 += 2;
        v70 = v77;
        v69 = v76;
      }

      while (v75 > 3);
      v67 = (v67 + v73 * 16);
      v79 = &v68[v73 + 4];
      v69 = v76;
      v70 = v77;
      if (!v74)
      {
        goto LABEL_28;
      }

LABEL_35:
      v80 = (v79 - 32);
      do
      {
        v81 = *v80++;
        *v67++ = vaddq_f32(vaddq_f32(vmulq_f32(v61, v71), vmulq_f32(v62, vaddq_f32(v72, v69))), vmulq_f32(v65, vaddq_f32(v70, v81)));
        v70 = v69;
        v69 = v71;
        v71 = v72;
        v72 = v81;
        --v74;
      }

      while (v74);
      goto LABEL_28;
    }

    v82 = *(a2 + 12) - *(a2 + 4);
    if (v82 < 1)
    {
      goto LABEL_50;
    }

    v83 = 0;
    v84 = *(a2 + 8) - *a2;
    while (1)
    {
      v85 = (*(a2 + 16) + 16 * *(a2 + 24) * v83);
      v86 = (*(a2 + 80) + 16 * *(a2 + 88) * v83);
      v88 = v86[-1];
      v87 = *v86;
      if (v84 >= 2)
      {
        break;
      }

      v95 = &v86[3];
      v90 = v84;
      if (v84)
      {
        goto LABEL_47;
      }

LABEL_40:
      if (++v83 == v82)
      {
        goto LABEL_50;
      }
    }

    v89 = 0;
    v90 = v84;
    do
    {
      v91 = v88;
      v92 = v87;
      v93 = v90;
      v94 = &v85[v89];
      v88 = v86[v89 + 1];
      v87 = v86[v89 + 2];
      *v94 = vaddq_f32(vmulq_f32(v61, v92), vmulq_f32(v62, vaddq_f32(v91, v88)));
      v94[1] = vaddq_f32(vmulq_f32(v61, v88), vmulq_f32(v62, vaddq_f32(v92, v87)));
      v90 = v93 - 2;
      v89 += 2;
    }

    while (v93 > 3);
    v85 = (v85 + v89 * 16);
    v95 = &v86[v89 + 3];
    if (v93 == 2)
    {
      goto LABEL_40;
    }

LABEL_47:
    v96 = (v95 - 32);
    do
    {
      v97 = v87;
      v98 = *v96++;
      v87 = v98;
      *v85++ = vaddq_f32(vmulq_f32(v61, v97), vmulq_f32(v62, vaddq_f32(v88, v98)));
      v88 = v97;
      --v90;
    }

    while (v90);
    goto LABEL_40;
  }

  v6 = *(a2 + 12) - *(a2 + 4);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *v5;
    v9 = v5[1];
    v10 = v5[2];
    v11 = v5[3];
    v12 = v5[4];
    v13 = *(a2 + 8) - *a2;
    while (1)
    {
      v14 = (*(a2 + 16) + 16 * *(a2 + 24) * v7);
      v15 = (*(a2 + 80) + 16 * *(a2 + 88) * v7);
      v17 = v15[-4];
      v16 = v15[-3];
      v18 = v15[-2];
      v19 = v15[-1];
      v20 = *v15;
      v21 = v15[1];
      v22 = v15[2];
      v23 = v15[3];
      if (v13 >= 2)
      {
        break;
      }

      v37 = &v15[6];
      v25 = v13;
      if (v13)
      {
        goto LABEL_11;
      }

LABEL_4:
      if (++v7 == v6)
      {
        goto LABEL_50;
      }
    }

    v24 = 0;
    v25 = v13;
    do
    {
      v26 = v25;
      v27 = v23;
      v28 = v22;
      v29 = v21;
      v30 = v20;
      v31 = v19;
      v32 = v18;
      v33 = &v14[v24];
      v22 = v15[v24 + 4];
      v23 = v15[v24 + 5];
      v34 = vaddq_f32(vaddq_f32(vmulq_f32(v10, vaddq_f32(v27, v19)), vaddq_f32(vmulq_f32(v8, v21), vmulq_f32(v9, vaddq_f32(v28, v20)))), vmulq_f32(v11, vaddq_f32(v18, v22)));
      v35 = vaddq_f32(vaddq_f32(vmulq_f32(v11, vaddq_f32(v27, v16)), vaddq_f32(vmulq_f32(v10, vaddq_f32(v28, v18)), vaddq_f32(vmulq_f32(v8, v20), vmulq_f32(v9, vaddq_f32(v21, v31))))), vmulq_f32(v12, vaddq_f32(v17, v22)));
      v25 -= 2;
      v36 = vaddq_f32(vmulq_f32(v12, vaddq_f32(v16, v23)), v34);
      v24 += 2;
      v17 = v18;
      v16 = v31;
      v18 = v30;
      *v33 = v35;
      v33[1] = v36;
      v19 = v21;
      v20 = v28;
      v21 = v27;
    }

    while (v26 > 3);
    v14 = (v14 + v24 * 16);
    v37 = &v15[v24 + 6];
    v21 = v27;
    v20 = v28;
    v19 = v29;
    v18 = v30;
    v16 = v31;
    v17 = v32;
    if (!v25)
    {
      goto LABEL_4;
    }

LABEL_11:
    v38 = (v37 - 32);
    do
    {
      v39 = *v38++;
      *v14++ = vaddq_f32(vaddq_f32(vmulq_f32(v11, vaddq_f32(v23, v16)), vaddq_f32(vmulq_f32(v10, vaddq_f32(v22, v18)), vaddq_f32(vmulq_f32(v8, v20), vmulq_f32(v9, vaddq_f32(v21, v19))))), vmulq_f32(v12, vaddq_f32(v17, v39)));
      v17 = v16;
      v16 = v18;
      v18 = v19;
      v19 = v20;
      v20 = v21;
      v21 = v22;
      v22 = v23;
      v23 = v39;
      --v25;
    }

    while (v25);
    goto LABEL_4;
  }

LABEL_50:
  *(*(*(a2 + 336) + 416) + 80) += HGGetTBC() - v4;
  return 0;
}

const char *HGG9B<HgcBlur_cs9s_rect>::GetProgram(uint64_t a1, HGRenderer *a2)
{
  if ((*(*a2 + 128))(a2, 43) != 1)
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 436);
  v5 = *(a1 + 428);
  if (*(a1 + 432) <= *(a1 + 424))
  {
    if (v4 <= v5)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v6 = *(a1 + 416);
  v7 = v6 == 1.0;
  if (v6 != 1.0 && v4 > v5)
  {
LABEL_11:
    v7 = *(a1 + 420) == 1.0;
    if (*(a1 + 440) != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (*(a1 + 440) != 1)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v7)
  {
    return "//Metal1.0     \n"
           "//LEN=0000000e18\n"
           "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]],\n"
           "                                  const constant float4* hg_Params [[ buffer(0) ]],\n"
           "                                  texture2d< half > hg_Texture0 [[ texture(0) ]],\n"
           "                                  sampler hg_Sampler0 [[ sampler(0) ]])\n"
           "{\n"
           "    // Cast params to consts to workaround backend compiler issue\n"
           "    const float4 gaussianWeight0    (hg_Params[0]);\n"
           "    const float4 gaussianWeight1    (hg_Params[1]);\n"
           "    const float4 gaussianWeight2    (hg_Params[2]);\n"
           "    const float4 gaussianWeight3    (hg_Params[3]);\n"
           "    const float4 gaussianWeight4    (hg_Params[4]);\n"
           "    const float2 uvSet1Weight       (hg_Params[5].xy);\n"
           "    const float2 uvOffset           (hg_Params[6].xy);\n"
           "    const float2 blurDirection      (hg_Params[7].xy);\n"
           "    \n"
           "    const ushort2 screenPosition = ushort2(frag._position.xy);\n"
           "    const ushort isInRightColumn = screenPosition.x & 1;\n"
           "    const ushort isInLowerRow    = screenPosition.y & 1;\n"
           "    \n"
           "    const float2 uvCenter =  frag._texCoord0.xy + frag._texCoord1.xy * uvSet1Weight;\n"
           "    \n"
           "    const float2 L4coord = uvCenter + uvOffset;\n"
           "    const float2 L2coord = L4coord  + blurDirection * 2.0;\n"
           "    const float2 CCoord  = L2coord  + blurDirection * 2.0;\n"
           "    const float2 R2Coord = CCoord   + blurDirection * 2.0;\n"
           "    const float2 R4Coord = R2Coord  + blurDirection * 2.0;\n"
           "    const half4 tapL4 = hg_Texture0.sample(hg_Sampler0, L4coord);\n"
           "    const half4 tapL2 = hg_Texture0.sample(hg_Sampler0, L2coord);\n"
           "    const half4 tapC  = hg_Texture0.sample(hg_Sampler0, CCoord);\n"
           "    const half4 tapR2 = hg_Texture0.sample(hg_Sampler0, R2Coord);\n"
           "    const half4 tapR4 = hg_Texture0.sample(hg_Sampler0, R4Coord);\n"
           "    \n"
           "    // My lane               Vertical Blur Lanes   Horizontal Blur Lanes\n"
           "    // +--------+--------+   +--------+--------+   +--------+--------+\n"
           "    // | Lane 0 | Lane 1 |   | Lane 2 | Lane 3 |   | Lane 1 | Lane 0 |\n"
           "    // +--------+--------+   +--------+--------+   +--------+--------+\n"
           "    // | Lane 2 | Lane 3 |   | Lane 1 | Lane 0 |   | Lane 3 | Lane 2 |\n"
           "    // +--------+--------+   +--------+--------+   +--------+--------+\n"
           "    \n"
           "    const ushort isOddPixel = (uvOffset.x == 0) ? isInLowerRow : isInRightColumn;\n"
           "    const ushort otherLane  = ((uvOffset.x == 0) ?\n"
           "                               (isInRightColumn + (1 - isInLowerRow) * 2) :\n"
           "                               (1 - isInRightColumn + isInLowerRow * 2));\n"
           "    float4 accum(0);\n"
           "    \n"
           "    accum += float4(tapL4) * gaussianWeight4;\n"
           "    float4 otherValueL4 = float4(quad_shuffle(tapL4, otherLane));\n"
           "    accum += otherValueL4 * (isOddPixel ?               0 : gaussianWeight3);\n"
           "    \n"
           "    accum += float4(tapL2) * gaussianWeight2;\n"
           "    float4 otherValueL2 = float4(quad_shuffle(tapL2, otherLane));\n"
           "    accum += otherValueL2 * (isOddPixel ? gaussianWeight3 : gaussianWeight1);\n"
           "    \n"
           "    accum += float4(tapC)  * gaussianWeight0;\n"
           "    float4 otherValueC = float4(quad_shuffle(tapC, otherLane));\n"
           "    accum += otherValueC * gaussianWeight1;\n"
           "    \n"
           "    accum += float4(tapR2) * gaussianWeight2;\n"
           "    float4 otherValueR2 = float4(quad_shuffle(tapR2, otherLane));\n"
           "    accum += otherValueR2 * (isOddPixel ? gaussianWeight1 : gaussianWeight3);\n"
           "    \n"
           "    accum += float4(tapR4) * gaussianWeight4;\n"
           "    float4 otherValueR4 = float4(quad_shuffle(tapR4, otherLane));\n"
           "    accum += otherValueR4 * (isOddPixel ? gaussianWeight3 :               0);\n"
           "    \n"
           "    FragmentOut out;\n"
           "    out.color0 = accum;\n"
           "    return out;\n"
           "}\n"
           "//MD5=c152bbe4:3e592d82:afebeded:d45efc4f\n"
           "//SIG=00000000:00000000:00000000:00000001:000f:0008:0000:0000:0000:0000:0007:0000:0002:01:0:1:0\n";
  }

LABEL_14:

  return HgcBlur_cs9s_rect::GetProgram(a1, a2);
}

uint64_t HGG9X<HgcBlur_cs9s_rect>::Bind(HGNode *a1, HGHandler *a2)
{
  v3 = HGNode::Bind(a1, a2);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  return v3;
}

uint64_t HGG9X<HgcBlur_cs9s_rect>::BindTexture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 43) == 1)
  {
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 72))(a2, a3, 0);
    (*(*a2 + 56))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v6 = *(a1 + 436);
    v7 = *(a1 + 428);
    if (*(a1 + 432) <= *(a1 + 424))
    {
      if (v6 <= v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = *(a1 + 416);
      v9 = v8 == 1.0;
      if (v8 == 1.0 || v6 <= v7)
      {
        if (*(a1 + 440) == 1)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }
    }

    v9 = *(a1 + 420) == 1.0;
    if (*(a1 + 440) == 1)
    {
LABEL_14:
      if (v9)
      {
        return 0;
      }
    }

LABEL_16:
    (*(*a2 + 136))(a2, 8, 0.0, 0.0, 1.0, 1.0);
    return 0;
  }

  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 46))
  {
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 72))(a2, a3, 0);
    (*(*a2 + 48))(a2, 0, 0);
    goto LABEL_16;
  }

  (*(*a2 + 136))(a2, 8, *(a2 + 240), *(a2 + 244), 1.0 / (*(a2 + 228) - *(a2 + 220)), 1.0 / (*(a2 + 232) - *(a2 + 224)));
  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 21))
  {
    return 0;
  }

  v12 = *(a2 + 228) - *(a2 + 220);
  v13 = *(a2 + 232) - *(a2 + 224);
  (*(*a2 + 136))(a2, 9, vcvts_n_f32_u32(v12 + 1, 1uLL), vcvts_n_f32_u32(v13 + 1, 1uLL), v12, v13);
  return 0;
}

uint64_t HGG9B<HgcBlur_cs9s_rect>::IntermediateFormat(uint64_t a1, int a2)
{
  if (a2 <= 27)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

void HGG9B<HgcBlur_cs9s_rect>::InitProgramDescriptor(uint64_t a1, HGProgramDescriptor *a2)
{
  v2 = *(a1 + 436);
  v3 = *(a1 + 428);
  if (*(a1 + 432) <= *(a1 + 424))
  {
    if (v2 <= v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = *(a1 + 416);
    if (v4 == 1.0 || v2 <= v3)
    {
      if (*(a1 + 440) == 1 && v4 == 1.0)
      {
LABEL_21:
        HGMetalUtils::stringForMetalHeader(a1);
      }

LABEL_18:

      HgcBlur_cs9s_rect::InitProgramDescriptor(a1, a2);
    }
  }

  if (*(a1 + 440) == 1 && *(a1 + 420) == 1.0)
  {
    goto LABEL_21;
  }

  goto LABEL_18;
}

void sub_25FCB76CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100]((v46 - 96));
  if (*(v46 - 41) < 0)
  {
    operator delete(*(v46 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t HGG9B<HgcBlur_cs9s_rect>::GetDOD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5.f32[0] = a4;
  __asm { FMOV            V3.2S, #-1.0 }

  v11 = vadd_f32(vcvt_f32_s32(a5), _D3);
  v12.i64[0] = *(a1 + 416);
  v12.i64[1] = v12.i64[0];
  v5.f32[1] = SHIDWORD(a4);
  *&v5.u32[2] = v11;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(vdivq_f32(vaddq_f32(*(a1 + 424), v5), v12), v13);
  return HGRectIntegral(a1 + 424, v14.f32[0], v14.f32[1], v14.f32[2], v14.f32[3]);
}

uint64_t HGG9B<HgcBlur_cs9s_rect>::GetROI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5.f32[0] = a4;
  __asm { FMOV            V3.2S, #-1.0 }

  v11 = vadd_f32(vcvt_f32_s32(a5), _D3);
  v12.i64[0] = *(a1 + 416);
  v12.i64[1] = v12.i64[0];
  v5.f32[1] = SHIDWORD(a4);
  *&v5.u32[2] = v11;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(*(a1 + 424), vaddq_f32(vmulq_f32(v12, v5), v13));
  return HGRectIntegral(a1 + 424, v14.f32[0], v14.f32[1], v14.f32[2], v14.f32[3]);
}

void HGG9X<HgcBlur_cs9s_es_noborder>::~HGG9X(HgcBlur_cs9s_es_noborder *a1)
{
  HgcBlur_cs9s_es_noborder::~HgcBlur_cs9s_es_noborder(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG9X<HgcBlur_cs9s_es_noborder>::RenderTile(uint64_t a1, uint64_t a2)
{
  v4 = HGGetTBC();
  v5 = *(a1 + 48);
  if (v5[4].f32[0] == 0.0)
  {
    if (v5[3].f32[0] != 0.0)
    {
      v40 = *(a2 + 8);
      v41 = *(a2 + 12) - *(a2 + 4);
      if (v41 >= 1 && v40 != *a2)
      {
        v43 = 0;
        v44 = *v5;
        v45 = v5[1];
        v46 = *a2 - v40;
        v47 = v5[2];
        v48 = v5[3];
        do
        {
          v49 = (*(a2 + 16) + 16 * *(a2 + 24) * v43);
          v50 = (*(a2 + 80) + 16 * *(a2 + 88) * v43);
          v52 = v50[-3];
          v51 = v50[-2];
          v53 = v50[-1];
          v54 = *v50;
          v55 = v50[1];
          v56 = v50[2];
          v57 = v50 + 3;
          v58 = v46;
          do
          {
            v59 = *v57++;
            *v49++ = vaddq_f32(vaddq_f32(vmulq_f32(v47, vaddq_f32(v56, v51)), vaddq_f32(vmulq_f32(v44, v54), vmulq_f32(v45, vaddq_f32(v55, v53)))), vmulq_f32(v48, vaddq_f32(v52, v59)));
            v52 = v51;
            v51 = v53;
            v53 = v54;
            v54 = v55;
            v55 = v56;
            v56 = v59;
          }

          while (!__CFADD__(v58++, 1));
          ++v43;
        }

        while (v43 != v41);
      }

      goto LABEL_50;
    }

    v61 = *v5;
    v62 = v5[1];
    if (v5[2].f32[0] != 0.0)
    {
      v63 = *(a2 + 12) - *(a2 + 4);
      if (v63 < 1)
      {
        goto LABEL_50;
      }

      v64 = 0;
      v65 = v5[2];
      v66 = *(a2 + 8) - *a2;
      while (1)
      {
        v67 = (*(a2 + 16) + 16 * *(a2 + 24) * v64);
        v68 = (*(a2 + 80) + 16 * *(a2 + 88) * v64);
        v70 = v68[-2];
        v69 = v68[-1];
        v71 = *v68;
        v72 = v68[1];
        if (v66 >= 2)
        {
          break;
        }

        v79 = &v68[4];
        v74 = v66;
        if (v66)
        {
          goto LABEL_35;
        }

LABEL_28:
        if (++v64 == v63)
        {
          goto LABEL_50;
        }
      }

      v73 = 0;
      v74 = v66;
      do
      {
        v75 = v74;
        v76 = v72;
        v77 = v71;
        v78 = &v67[v73];
        v71 = v68[v73 + 2];
        v72 = v68[v73 + 3];
        v74 -= 2;
        *v78 = vaddq_f32(vaddq_f32(vmulq_f32(v61, v77), vmulq_f32(v62, vaddq_f32(v76, v69))), vmulq_f32(v65, vaddq_f32(v70, v71)));
        v78[1] = vaddq_f32(vmulq_f32(v65, vaddq_f32(v69, v72)), vaddq_f32(vmulq_f32(v61, v76), vmulq_f32(v62, vaddq_f32(v77, v71))));
        v73 += 2;
        v70 = v77;
        v69 = v76;
      }

      while (v75 > 3);
      v67 = (v67 + v73 * 16);
      v79 = &v68[v73 + 4];
      v69 = v76;
      v70 = v77;
      if (!v74)
      {
        goto LABEL_28;
      }

LABEL_35:
      v80 = (v79 - 32);
      do
      {
        v81 = *v80++;
        *v67++ = vaddq_f32(vaddq_f32(vmulq_f32(v61, v71), vmulq_f32(v62, vaddq_f32(v72, v69))), vmulq_f32(v65, vaddq_f32(v70, v81)));
        v70 = v69;
        v69 = v71;
        v71 = v72;
        v72 = v81;
        --v74;
      }

      while (v74);
      goto LABEL_28;
    }

    v82 = *(a2 + 12) - *(a2 + 4);
    if (v82 < 1)
    {
      goto LABEL_50;
    }

    v83 = 0;
    v84 = *(a2 + 8) - *a2;
    while (1)
    {
      v85 = (*(a2 + 16) + 16 * *(a2 + 24) * v83);
      v86 = (*(a2 + 80) + 16 * *(a2 + 88) * v83);
      v88 = v86[-1];
      v87 = *v86;
      if (v84 >= 2)
      {
        break;
      }

      v95 = &v86[3];
      v90 = v84;
      if (v84)
      {
        goto LABEL_47;
      }

LABEL_40:
      if (++v83 == v82)
      {
        goto LABEL_50;
      }
    }

    v89 = 0;
    v90 = v84;
    do
    {
      v91 = v88;
      v92 = v87;
      v93 = v90;
      v94 = &v85[v89];
      v88 = v86[v89 + 1];
      v87 = v86[v89 + 2];
      *v94 = vaddq_f32(vmulq_f32(v61, v92), vmulq_f32(v62, vaddq_f32(v91, v88)));
      v94[1] = vaddq_f32(vmulq_f32(v61, v88), vmulq_f32(v62, vaddq_f32(v92, v87)));
      v90 = v93 - 2;
      v89 += 2;
    }

    while (v93 > 3);
    v85 = (v85 + v89 * 16);
    v95 = &v86[v89 + 3];
    if (v93 == 2)
    {
      goto LABEL_40;
    }

LABEL_47:
    v96 = (v95 - 32);
    do
    {
      v97 = v87;
      v98 = *v96++;
      v87 = v98;
      *v85++ = vaddq_f32(vmulq_f32(v61, v97), vmulq_f32(v62, vaddq_f32(v88, v98)));
      v88 = v97;
      --v90;
    }

    while (v90);
    goto LABEL_40;
  }

  v6 = *(a2 + 12) - *(a2 + 4);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *v5;
    v9 = v5[1];
    v10 = v5[2];
    v11 = v5[3];
    v12 = v5[4];
    v13 = *(a2 + 8) - *a2;
    while (1)
    {
      v14 = (*(a2 + 16) + 16 * *(a2 + 24) * v7);
      v15 = (*(a2 + 80) + 16 * *(a2 + 88) * v7);
      v17 = v15[-4];
      v16 = v15[-3];
      v18 = v15[-2];
      v19 = v15[-1];
      v20 = *v15;
      v21 = v15[1];
      v22 = v15[2];
      v23 = v15[3];
      if (v13 >= 2)
      {
        break;
      }

      v37 = &v15[6];
      v25 = v13;
      if (v13)
      {
        goto LABEL_11;
      }

LABEL_4:
      if (++v7 == v6)
      {
        goto LABEL_50;
      }
    }

    v24 = 0;
    v25 = v13;
    do
    {
      v26 = v25;
      v27 = v23;
      v28 = v22;
      v29 = v21;
      v30 = v20;
      v31 = v19;
      v32 = v18;
      v33 = &v14[v24];
      v22 = v15[v24 + 4];
      v23 = v15[v24 + 5];
      v34 = vaddq_f32(vaddq_f32(vmulq_f32(v10, vaddq_f32(v27, v19)), vaddq_f32(vmulq_f32(v8, v21), vmulq_f32(v9, vaddq_f32(v28, v20)))), vmulq_f32(v11, vaddq_f32(v18, v22)));
      v35 = vaddq_f32(vaddq_f32(vmulq_f32(v11, vaddq_f32(v27, v16)), vaddq_f32(vmulq_f32(v10, vaddq_f32(v28, v18)), vaddq_f32(vmulq_f32(v8, v20), vmulq_f32(v9, vaddq_f32(v21, v31))))), vmulq_f32(v12, vaddq_f32(v17, v22)));
      v25 -= 2;
      v36 = vaddq_f32(vmulq_f32(v12, vaddq_f32(v16, v23)), v34);
      v24 += 2;
      v17 = v18;
      v16 = v31;
      v18 = v30;
      *v33 = v35;
      v33[1] = v36;
      v19 = v21;
      v20 = v28;
      v21 = v27;
    }

    while (v26 > 3);
    v14 = (v14 + v24 * 16);
    v37 = &v15[v24 + 6];
    v21 = v27;
    v20 = v28;
    v19 = v29;
    v18 = v30;
    v16 = v31;
    v17 = v32;
    if (!v25)
    {
      goto LABEL_4;
    }

LABEL_11:
    v38 = (v37 - 32);
    do
    {
      v39 = *v38++;
      *v14++ = vaddq_f32(vaddq_f32(vmulq_f32(v11, vaddq_f32(v23, v16)), vaddq_f32(vmulq_f32(v10, vaddq_f32(v22, v18)), vaddq_f32(vmulq_f32(v8, v20), vmulq_f32(v9, vaddq_f32(v21, v19))))), vmulq_f32(v12, vaddq_f32(v17, v39)));
      v17 = v16;
      v16 = v18;
      v18 = v19;
      v19 = v20;
      v20 = v21;
      v21 = v22;
      v22 = v23;
      v23 = v39;
      --v25;
    }

    while (v25);
    goto LABEL_4;
  }

LABEL_50:
  *(*(*(a2 + 336) + 416) + 80) += HGGetTBC() - v4;
  return 0;
}

const char *HGG9B<HgcBlur_cs9s_es_noborder>::GetProgram(uint64_t a1, HGRenderer *a2)
{
  if ((*(*a2 + 128))(a2, 43) != 1)
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 436);
  v5 = *(a1 + 428);
  if (*(a1 + 432) <= *(a1 + 424))
  {
    if (v4 <= v5)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v6 = *(a1 + 416);
  v7 = v6 == 1.0;
  if (v6 != 1.0 && v4 > v5)
  {
LABEL_11:
    v7 = *(a1 + 420) == 1.0;
    if (*(a1 + 440) != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (*(a1 + 440) != 1)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v7)
  {
    return "//Metal1.0     \n"
           "//LEN=0000000e18\n"
           "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]],\n"
           "                                  const constant float4* hg_Params [[ buffer(0) ]],\n"
           "                                  texture2d< half > hg_Texture0 [[ texture(0) ]],\n"
           "                                  sampler hg_Sampler0 [[ sampler(0) ]])\n"
           "{\n"
           "    // Cast params to consts to workaround backend compiler issue\n"
           "    const float4 gaussianWeight0    (hg_Params[0]);\n"
           "    const float4 gaussianWeight1    (hg_Params[1]);\n"
           "    const float4 gaussianWeight2    (hg_Params[2]);\n"
           "    const float4 gaussianWeight3    (hg_Params[3]);\n"
           "    const float4 gaussianWeight4    (hg_Params[4]);\n"
           "    const float2 uvSet1Weight       (hg_Params[5].xy);\n"
           "    const float2 uvOffset           (hg_Params[6].xy);\n"
           "    const float2 blurDirection      (hg_Params[7].xy);\n"
           "    \n"
           "    const ushort2 screenPosition = ushort2(frag._position.xy);\n"
           "    const ushort isInRightColumn = screenPosition.x & 1;\n"
           "    const ushort isInLowerRow    = screenPosition.y & 1;\n"
           "    \n"
           "    const float2 uvCenter =  frag._texCoord0.xy + frag._texCoord1.xy * uvSet1Weight;\n"
           "    \n"
           "    const float2 L4coord = uvCenter + uvOffset;\n"
           "    const float2 L2coord = L4coord  + blurDirection * 2.0;\n"
           "    const float2 CCoord  = L2coord  + blurDirection * 2.0;\n"
           "    const float2 R2Coord = CCoord   + blurDirection * 2.0;\n"
           "    const float2 R4Coord = R2Coord  + blurDirection * 2.0;\n"
           "    const half4 tapL4 = hg_Texture0.sample(hg_Sampler0, L4coord);\n"
           "    const half4 tapL2 = hg_Texture0.sample(hg_Sampler0, L2coord);\n"
           "    const half4 tapC  = hg_Texture0.sample(hg_Sampler0, CCoord);\n"
           "    const half4 tapR2 = hg_Texture0.sample(hg_Sampler0, R2Coord);\n"
           "    const half4 tapR4 = hg_Texture0.sample(hg_Sampler0, R4Coord);\n"
           "    \n"
           "    // My lane               Vertical Blur Lanes   Horizontal Blur Lanes\n"
           "    // +--------+--------+   +--------+--------+   +--------+--------+\n"
           "    // | Lane 0 | Lane 1 |   | Lane 2 | Lane 3 |   | Lane 1 | Lane 0 |\n"
           "    // +--------+--------+   +--------+--------+   +--------+--------+\n"
           "    // | Lane 2 | Lane 3 |   | Lane 1 | Lane 0 |   | Lane 3 | Lane 2 |\n"
           "    // +--------+--------+   +--------+--------+   +--------+--------+\n"
           "    \n"
           "    const ushort isOddPixel = (uvOffset.x == 0) ? isInLowerRow : isInRightColumn;\n"
           "    const ushort otherLane  = ((uvOffset.x == 0) ?\n"
           "                               (isInRightColumn + (1 - isInLowerRow) * 2) :\n"
           "                               (1 - isInRightColumn + isInLowerRow * 2));\n"
           "    float4 accum(0);\n"
           "    \n"
           "    accum += float4(tapL4) * gaussianWeight4;\n"
           "    float4 otherValueL4 = float4(quad_shuffle(tapL4, otherLane));\n"
           "    accum += otherValueL4 * (isOddPixel ?               0 : gaussianWeight3);\n"
           "    \n"
           "    accum += float4(tapL2) * gaussianWeight2;\n"
           "    float4 otherValueL2 = float4(quad_shuffle(tapL2, otherLane));\n"
           "    accum += otherValueL2 * (isOddPixel ? gaussianWeight3 : gaussianWeight1);\n"
           "    \n"
           "    accum += float4(tapC)  * gaussianWeight0;\n"
           "    float4 otherValueC = float4(quad_shuffle(tapC, otherLane));\n"
           "    accum += otherValueC * gaussianWeight1;\n"
           "    \n"
           "    accum += float4(tapR2) * gaussianWeight2;\n"
           "    float4 otherValueR2 = float4(quad_shuffle(tapR2, otherLane));\n"
           "    accum += otherValueR2 * (isOddPixel ? gaussianWeight1 : gaussianWeight3);\n"
           "    \n"
           "    accum += float4(tapR4) * gaussianWeight4;\n"
           "    float4 otherValueR4 = float4(quad_shuffle(tapR4, otherLane));\n"
           "    accum += otherValueR4 * (isOddPixel ? gaussianWeight3 :               0);\n"
           "    \n"
           "    FragmentOut out;\n"
           "    out.color0 = accum;\n"
           "    return out;\n"
           "}\n"
           "//MD5=c152bbe4:3e592d82:afebeded:d45efc4f\n"
           "//SIG=00000000:00000000:00000000:00000001:000f:0008:0000:0000:0000:0000:0007:0000:0002:01:0:1:0\n";
  }

LABEL_14:

  return HgcBlur_cs9s_es_noborder::GetProgram(a1, a2);
}

uint64_t HGG9X<HgcBlur_cs9s_es_noborder>::Bind(HGNode *a1, HGHandler *a2)
{
  v3 = HGNode::Bind(a1, a2);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  return v3;
}

uint64_t HGG9X<HgcBlur_cs9s_es_noborder>::BindTexture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 43) == 1)
  {
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 72))(a2, a3, 0);
    (*(*a2 + 56))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v6 = *(a1 + 436);
    v7 = *(a1 + 428);
    if (*(a1 + 432) <= *(a1 + 424))
    {
      if (v6 <= v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = *(a1 + 416);
      v9 = v8 == 1.0;
      if (v8 == 1.0 || v6 <= v7)
      {
        if (*(a1 + 440) == 1)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }
    }

    v9 = *(a1 + 420) == 1.0;
    if (*(a1 + 440) == 1)
    {
LABEL_14:
      if (v9)
      {
        return 0;
      }
    }

LABEL_16:
    (*(*a2 + 136))(a2, 8, 0.0, 0.0, 1.0, 1.0);
    return 0;
  }

  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 46))
  {
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 72))(a2, a3, 0);
    (*(*a2 + 48))(a2, 0, 0);
    goto LABEL_16;
  }

  (*(*a2 + 136))(a2, 8, *(a2 + 240), *(a2 + 244), 1.0 / (*(a2 + 228) - *(a2 + 220)), 1.0 / (*(a2 + 232) - *(a2 + 224)));
  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 21))
  {
    return 0;
  }

  v12 = *(a2 + 228) - *(a2 + 220);
  v13 = *(a2 + 232) - *(a2 + 224);
  (*(*a2 + 136))(a2, 9, vcvts_n_f32_u32(v12 + 1, 1uLL), vcvts_n_f32_u32(v13 + 1, 1uLL), v12, v13);
  return 0;
}

uint64_t HGG9B<HgcBlur_cs9s_es_noborder>::IntermediateFormat(uint64_t a1, int a2)
{
  if (a2 <= 27)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

void HGG9B<HgcBlur_cs9s_es_noborder>::InitProgramDescriptor(uint64_t a1, HGProgramDescriptor *a2)
{
  v2 = *(a1 + 436);
  v3 = *(a1 + 428);
  if (*(a1 + 432) <= *(a1 + 424))
  {
    if (v2 <= v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = *(a1 + 416);
    if (v4 == 1.0 || v2 <= v3)
    {
      if (*(a1 + 440) == 1 && v4 == 1.0)
      {
LABEL_21:
        HGMetalUtils::stringForMetalHeader(a1);
      }

LABEL_18:

      HgcBlur_cs9s_es_noborder::InitProgramDescriptor(a1, a2);
    }
  }

  if (*(a1 + 440) == 1 && *(a1 + 420) == 1.0)
  {
    goto LABEL_21;
  }

  goto LABEL_18;
}

void sub_25FCB8C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100]((v46 - 96));
  if (*(v46 - 41) < 0)
  {
    operator delete(*(v46 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t HGG9B<HgcBlur_cs9s_es_noborder>::GetDOD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5.f32[0] = a4;
  __asm { FMOV            V3.2S, #-1.0 }

  v11 = vadd_f32(vcvt_f32_s32(a5), _D3);
  v12.i64[0] = *(a1 + 416);
  v12.i64[1] = v12.i64[0];
  v5.f32[1] = SHIDWORD(a4);
  *&v5.u32[2] = v11;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(vdivq_f32(vaddq_f32(*(a1 + 424), v5), v12), v13);
  return HGRectIntegral(a1 + 424, v14.f32[0], v14.f32[1], v14.f32[2], v14.f32[3]);
}

uint64_t HGG9B<HgcBlur_cs9s_es_noborder>::GetROI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5.f32[0] = a4;
  __asm { FMOV            V3.2S, #-1.0 }

  v11 = vadd_f32(vcvt_f32_s32(a5), _D3);
  v12.i64[0] = *(a1 + 416);
  v12.i64[1] = v12.i64[0];
  v5.f32[1] = SHIDWORD(a4);
  *&v5.u32[2] = v11;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(*(a1 + 424), vaddq_f32(vmulq_f32(v12, v5), v13));
  return HGRectIntegral(a1 + 424, v14.f32[0], v14.f32[1], v14.f32[2], v14.f32[3]);
}

void HGG9X<HgcBlur_cs9s>::~HGG9X(HgcBlur_cs9s *a1)
{
  HgcBlur_cs9s::~HgcBlur_cs9s(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG9X<HgcBlur_cs9s>::RenderTile(uint64_t a1, uint64_t a2)
{
  v4 = HGGetTBC();
  v5 = *(a1 + 48);
  if (v5[4].f32[0] == 0.0)
  {
    if (v5[3].f32[0] != 0.0)
    {
      v40 = *(a2 + 8);
      v41 = *(a2 + 12) - *(a2 + 4);
      if (v41 >= 1 && v40 != *a2)
      {
        v43 = 0;
        v44 = *v5;
        v45 = v5[1];
        v46 = *a2 - v40;
        v47 = v5[2];
        v48 = v5[3];
        do
        {
          v49 = (*(a2 + 16) + 16 * *(a2 + 24) * v43);
          v50 = (*(a2 + 80) + 16 * *(a2 + 88) * v43);
          v52 = v50[-3];
          v51 = v50[-2];
          v53 = v50[-1];
          v54 = *v50;
          v55 = v50[1];
          v56 = v50[2];
          v57 = v50 + 3;
          v58 = v46;
          do
          {
            v59 = *v57++;
            *v49++ = vaddq_f32(vaddq_f32(vmulq_f32(v47, vaddq_f32(v56, v51)), vaddq_f32(vmulq_f32(v44, v54), vmulq_f32(v45, vaddq_f32(v55, v53)))), vmulq_f32(v48, vaddq_f32(v52, v59)));
            v52 = v51;
            v51 = v53;
            v53 = v54;
            v54 = v55;
            v55 = v56;
            v56 = v59;
          }

          while (!__CFADD__(v58++, 1));
          ++v43;
        }

        while (v43 != v41);
      }

      goto LABEL_50;
    }

    v61 = *v5;
    v62 = v5[1];
    if (v5[2].f32[0] != 0.0)
    {
      v63 = *(a2 + 12) - *(a2 + 4);
      if (v63 < 1)
      {
        goto LABEL_50;
      }

      v64 = 0;
      v65 = v5[2];
      v66 = *(a2 + 8) - *a2;
      while (1)
      {
        v67 = (*(a2 + 16) + 16 * *(a2 + 24) * v64);
        v68 = (*(a2 + 80) + 16 * *(a2 + 88) * v64);
        v70 = v68[-2];
        v69 = v68[-1];
        v71 = *v68;
        v72 = v68[1];
        if (v66 >= 2)
        {
          break;
        }

        v79 = &v68[4];
        v74 = v66;
        if (v66)
        {
          goto LABEL_35;
        }

LABEL_28:
        if (++v64 == v63)
        {
          goto LABEL_50;
        }
      }

      v73 = 0;
      v74 = v66;
      do
      {
        v75 = v74;
        v76 = v72;
        v77 = v71;
        v78 = &v67[v73];
        v71 = v68[v73 + 2];
        v72 = v68[v73 + 3];
        v74 -= 2;
        *v78 = vaddq_f32(vaddq_f32(vmulq_f32(v61, v77), vmulq_f32(v62, vaddq_f32(v76, v69))), vmulq_f32(v65, vaddq_f32(v70, v71)));
        v78[1] = vaddq_f32(vmulq_f32(v65, vaddq_f32(v69, v72)), vaddq_f32(vmulq_f32(v61, v76), vmulq_f32(v62, vaddq_f32(v77, v71))));
        v73 += 2;
        v70 = v77;
        v69 = v76;
      }

      while (v75 > 3);
      v67 = (v67 + v73 * 16);
      v79 = &v68[v73 + 4];
      v69 = v76;
      v70 = v77;
      if (!v74)
      {
        goto LABEL_28;
      }

LABEL_35:
      v80 = (v79 - 32);
      do
      {
        v81 = *v80++;
        *v67++ = vaddq_f32(vaddq_f32(vmulq_f32(v61, v71), vmulq_f32(v62, vaddq_f32(v72, v69))), vmulq_f32(v65, vaddq_f32(v70, v81)));
        v70 = v69;
        v69 = v71;
        v71 = v72;
        v72 = v81;
        --v74;
      }

      while (v74);
      goto LABEL_28;
    }

    v82 = *(a2 + 12) - *(a2 + 4);
    if (v82 < 1)
    {
      goto LABEL_50;
    }

    v83 = 0;
    v84 = *(a2 + 8) - *a2;
    while (1)
    {
      v85 = (*(a2 + 16) + 16 * *(a2 + 24) * v83);
      v86 = (*(a2 + 80) + 16 * *(a2 + 88) * v83);
      v88 = v86[-1];
      v87 = *v86;
      if (v84 >= 2)
      {
        break;
      }

      v95 = &v86[3];
      v90 = v84;
      if (v84)
      {
        goto LABEL_47;
      }

LABEL_40:
      if (++v83 == v82)
      {
        goto LABEL_50;
      }
    }

    v89 = 0;
    v90 = v84;
    do
    {
      v91 = v88;
      v92 = v87;
      v93 = v90;
      v94 = &v85[v89];
      v88 = v86[v89 + 1];
      v87 = v86[v89 + 2];
      *v94 = vaddq_f32(vmulq_f32(v61, v92), vmulq_f32(v62, vaddq_f32(v91, v88)));
      v94[1] = vaddq_f32(vmulq_f32(v61, v88), vmulq_f32(v62, vaddq_f32(v92, v87)));
      v90 = v93 - 2;
      v89 += 2;
    }

    while (v93 > 3);
    v85 = (v85 + v89 * 16);
    v95 = &v86[v89 + 3];
    if (v93 == 2)
    {
      goto LABEL_40;
    }

LABEL_47:
    v96 = (v95 - 32);
    do
    {
      v97 = v87;
      v98 = *v96++;
      v87 = v98;
      *v85++ = vaddq_f32(vmulq_f32(v61, v97), vmulq_f32(v62, vaddq_f32(v88, v98)));
      v88 = v97;
      --v90;
    }

    while (v90);
    goto LABEL_40;
  }

  v6 = *(a2 + 12) - *(a2 + 4);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *v5;
    v9 = v5[1];
    v10 = v5[2];
    v11 = v5[3];
    v12 = v5[4];
    v13 = *(a2 + 8) - *a2;
    while (1)
    {
      v14 = (*(a2 + 16) + 16 * *(a2 + 24) * v7);
      v15 = (*(a2 + 80) + 16 * *(a2 + 88) * v7);
      v17 = v15[-4];
      v16 = v15[-3];
      v18 = v15[-2];
      v19 = v15[-1];
      v20 = *v15;
      v21 = v15[1];
      v22 = v15[2];
      v23 = v15[3];
      if (v13 >= 2)
      {
        break;
      }

      v37 = &v15[6];
      v25 = v13;
      if (v13)
      {
        goto LABEL_11;
      }

LABEL_4:
      if (++v7 == v6)
      {
        goto LABEL_50;
      }
    }

    v24 = 0;
    v25 = v13;
    do
    {
      v26 = v25;
      v27 = v23;
      v28 = v22;
      v29 = v21;
      v30 = v20;
      v31 = v19;
      v32 = v18;
      v33 = &v14[v24];
      v22 = v15[v24 + 4];
      v23 = v15[v24 + 5];
      v34 = vaddq_f32(vaddq_f32(vmulq_f32(v10, vaddq_f32(v27, v19)), vaddq_f32(vmulq_f32(v8, v21), vmulq_f32(v9, vaddq_f32(v28, v20)))), vmulq_f32(v11, vaddq_f32(v18, v22)));
      v35 = vaddq_f32(vaddq_f32(vmulq_f32(v11, vaddq_f32(v27, v16)), vaddq_f32(vmulq_f32(v10, vaddq_f32(v28, v18)), vaddq_f32(vmulq_f32(v8, v20), vmulq_f32(v9, vaddq_f32(v21, v31))))), vmulq_f32(v12, vaddq_f32(v17, v22)));
      v25 -= 2;
      v36 = vaddq_f32(vmulq_f32(v12, vaddq_f32(v16, v23)), v34);
      v24 += 2;
      v17 = v18;
      v16 = v31;
      v18 = v30;
      *v33 = v35;
      v33[1] = v36;
      v19 = v21;
      v20 = v28;
      v21 = v27;
    }

    while (v26 > 3);
    v14 = (v14 + v24 * 16);
    v37 = &v15[v24 + 6];
    v21 = v27;
    v20 = v28;
    v19 = v29;
    v18 = v30;
    v16 = v31;
    v17 = v32;
    if (!v25)
    {
      goto LABEL_4;
    }

LABEL_11:
    v38 = (v37 - 32);
    do
    {
      v39 = *v38++;
      *v14++ = vaddq_f32(vaddq_f32(vmulq_f32(v11, vaddq_f32(v23, v16)), vaddq_f32(vmulq_f32(v10, vaddq_f32(v22, v18)), vaddq_f32(vmulq_f32(v8, v20), vmulq_f32(v9, vaddq_f32(v21, v19))))), vmulq_f32(v12, vaddq_f32(v17, v39)));
      v17 = v16;
      v16 = v18;
      v18 = v19;
      v19 = v20;
      v20 = v21;
      v21 = v22;
      v22 = v23;
      v23 = v39;
      --v25;
    }

    while (v25);
    goto LABEL_4;
  }

LABEL_50:
  *(*(*(a2 + 336) + 416) + 80) += HGGetTBC() - v4;
  return 0;
}

const char *HGG9B<HgcBlur_cs9s>::GetProgram(uint64_t a1, HGRenderer *a2)
{
  if ((*(*a2 + 128))(a2, 43) != 1)
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 436);
  v5 = *(a1 + 428);
  if (*(a1 + 432) <= *(a1 + 424))
  {
    if (v4 <= v5)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v6 = *(a1 + 416);
  v7 = v6 == 1.0;
  if (v6 != 1.0 && v4 > v5)
  {
LABEL_11:
    v7 = *(a1 + 420) == 1.0;
    if (*(a1 + 440) != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (*(a1 + 440) != 1)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v7)
  {
    return "//Metal1.0     \n"
           "//LEN=0000000e18\n"
           "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]],\n"
           "                                  const constant float4* hg_Params [[ buffer(0) ]],\n"
           "                                  texture2d< half > hg_Texture0 [[ texture(0) ]],\n"
           "                                  sampler hg_Sampler0 [[ sampler(0) ]])\n"
           "{\n"
           "    // Cast params to consts to workaround backend compiler issue\n"
           "    const float4 gaussianWeight0    (hg_Params[0]);\n"
           "    const float4 gaussianWeight1    (hg_Params[1]);\n"
           "    const float4 gaussianWeight2    (hg_Params[2]);\n"
           "    const float4 gaussianWeight3    (hg_Params[3]);\n"
           "    const float4 gaussianWeight4    (hg_Params[4]);\n"
           "    const float2 uvSet1Weight       (hg_Params[5].xy);\n"
           "    const float2 uvOffset           (hg_Params[6].xy);\n"
           "    const float2 blurDirection      (hg_Params[7].xy);\n"
           "    \n"
           "    const ushort2 screenPosition = ushort2(frag._position.xy);\n"
           "    const ushort isInRightColumn = screenPosition.x & 1;\n"
           "    const ushort isInLowerRow    = screenPosition.y & 1;\n"
           "    \n"
           "    const float2 uvCenter =  frag._texCoord0.xy + frag._texCoord1.xy * uvSet1Weight;\n"
           "    \n"
           "    const float2 L4coord = uvCenter + uvOffset;\n"
           "    const float2 L2coord = L4coord  + blurDirection * 2.0;\n"
           "    const float2 CCoord  = L2coord  + blurDirection * 2.0;\n"
           "    const float2 R2Coord = CCoord   + blurDirection * 2.0;\n"
           "    const float2 R4Coord = R2Coord  + blurDirection * 2.0;\n"
           "    const half4 tapL4 = hg_Texture0.sample(hg_Sampler0, L4coord);\n"
           "    const half4 tapL2 = hg_Texture0.sample(hg_Sampler0, L2coord);\n"
           "    const half4 tapC  = hg_Texture0.sample(hg_Sampler0, CCoord);\n"
           "    const half4 tapR2 = hg_Texture0.sample(hg_Sampler0, R2Coord);\n"
           "    const half4 tapR4 = hg_Texture0.sample(hg_Sampler0, R4Coord);\n"
           "    \n"
           "    // My lane               Vertical Blur Lanes   Horizontal Blur Lanes\n"
           "    // +--------+--------+   +--------+--------+   +--------+--------+\n"
           "    // | Lane 0 | Lane 1 |   | Lane 2 | Lane 3 |   | Lane 1 | Lane 0 |\n"
           "    // +--------+--------+   +--------+--------+   +--------+--------+\n"
           "    // | Lane 2 | Lane 3 |   | Lane 1 | Lane 0 |   | Lane 3 | Lane 2 |\n"
           "    // +--------+--------+   +--------+--------+   +--------+--------+\n"
           "    \n"
           "    const ushort isOddPixel = (uvOffset.x == 0) ? isInLowerRow : isInRightColumn;\n"
           "    const ushort otherLane  = ((uvOffset.x == 0) ?\n"
           "                               (isInRightColumn + (1 - isInLowerRow) * 2) :\n"
           "                               (1 - isInRightColumn + isInLowerRow * 2));\n"
           "    float4 accum(0);\n"
           "    \n"
           "    accum += float4(tapL4) * gaussianWeight4;\n"
           "    float4 otherValueL4 = float4(quad_shuffle(tapL4, otherLane));\n"
           "    accum += otherValueL4 * (isOddPixel ?               0 : gaussianWeight3);\n"
           "    \n"
           "    accum += float4(tapL2) * gaussianWeight2;\n"
           "    float4 otherValueL2 = float4(quad_shuffle(tapL2, otherLane));\n"
           "    accum += otherValueL2 * (isOddPixel ? gaussianWeight3 : gaussianWeight1);\n"
           "    \n"
           "    accum += float4(tapC)  * gaussianWeight0;\n"
           "    float4 otherValueC = float4(quad_shuffle(tapC, otherLane));\n"
           "    accum += otherValueC * gaussianWeight1;\n"
           "    \n"
           "    accum += float4(tapR2) * gaussianWeight2;\n"
           "    float4 otherValueR2 = float4(quad_shuffle(tapR2, otherLane));\n"
           "    accum += otherValueR2 * (isOddPixel ? gaussianWeight1 : gaussianWeight3);\n"
           "    \n"
           "    accum += float4(tapR4) * gaussianWeight4;\n"
           "    float4 otherValueR4 = float4(quad_shuffle(tapR4, otherLane));\n"
           "    accum += otherValueR4 * (isOddPixel ? gaussianWeight3 :               0);\n"
           "    \n"
           "    FragmentOut out;\n"
           "    out.color0 = accum;\n"
           "    return out;\n"
           "}\n"
           "//MD5=c152bbe4:3e592d82:afebeded:d45efc4f\n"
           "//SIG=00000000:00000000:00000000:00000001:000f:0008:0000:0000:0000:0000:0007:0000:0002:01:0:1:0\n";
  }

LABEL_14:

  return HgcBlur_cs9s::GetProgram(a1, a2);
}

uint64_t HGG9X<HgcBlur_cs9s>::Bind(HGNode *a1, HGHandler *a2)
{
  v3 = HGNode::Bind(a1, a2);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  return v3;
}

uint64_t HGG9X<HgcBlur_cs9s>::BindTexture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 43) == 1)
  {
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 72))(a2, a3, 0);
    (*(*a2 + 56))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v6 = *(a1 + 436);
    v7 = *(a1 + 428);
    if (*(a1 + 432) <= *(a1 + 424))
    {
      if (v6 <= v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = *(a1 + 416);
      v9 = v8 == 1.0;
      if (v8 == 1.0 || v6 <= v7)
      {
        if (*(a1 + 440) == 1)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }
    }

    v9 = *(a1 + 420) == 1.0;
    if (*(a1 + 440) == 1)
    {
LABEL_14:
      if (v9)
      {
        return 0;
      }
    }

LABEL_16:
    (*(*a2 + 136))(a2, 8, 0.0, 0.0, 1.0, 1.0);
    return 0;
  }

  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 46))
  {
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 72))(a2, a3, 0);
    (*(*a2 + 48))(a2, 0, 0);
    goto LABEL_16;
  }

  (*(*a2 + 136))(a2, 8, *(a2 + 240), *(a2 + 244), 1.0 / (*(a2 + 228) - *(a2 + 220)), 1.0 / (*(a2 + 232) - *(a2 + 224)));
  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 21))
  {
    return 0;
  }

  v12 = *(a2 + 228) - *(a2 + 220);
  v13 = *(a2 + 232) - *(a2 + 224);
  (*(*a2 + 136))(a2, 9, vcvts_n_f32_u32(v12 + 1, 1uLL), vcvts_n_f32_u32(v13 + 1, 1uLL), v12, v13);
  return 0;
}

uint64_t HGG9B<HgcBlur_cs9s>::IntermediateFormat(uint64_t a1, int a2)
{
  if (a2 <= 27)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

void HGG9B<HgcBlur_cs9s>::InitProgramDescriptor(uint64_t a1, HGProgramDescriptor *a2)
{
  v2 = *(a1 + 436);
  v3 = *(a1 + 428);
  if (*(a1 + 432) <= *(a1 + 424))
  {
    if (v2 <= v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = *(a1 + 416);
    if (v4 == 1.0 || v2 <= v3)
    {
      if (*(a1 + 440) == 1 && v4 == 1.0)
      {
LABEL_21:
        HGMetalUtils::stringForMetalHeader(a1);
      }

LABEL_18:

      HgcBlur_cs9s::InitProgramDescriptor(a1, a2);
    }
  }

  if (*(a1 + 440) == 1 && *(a1 + 420) == 1.0)
  {
    goto LABEL_21;
  }

  goto LABEL_18;
}

void sub_25FCBA144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100]((v46 - 96));
  if (*(v46 - 41) < 0)
  {
    operator delete(*(v46 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t HGG9B<HgcBlur_cs9s>::GetDOD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5.f32[0] = a4;
  __asm { FMOV            V3.2S, #-1.0 }

  v11 = vadd_f32(vcvt_f32_s32(a5), _D3);
  v12.i64[0] = *(a1 + 416);
  v12.i64[1] = v12.i64[0];
  v5.f32[1] = SHIDWORD(a4);
  *&v5.u32[2] = v11;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(vdivq_f32(vaddq_f32(*(a1 + 424), v5), v12), v13);
  return HGRectIntegral(a1 + 424, v14.f32[0], v14.f32[1], v14.f32[2], v14.f32[3]);
}

uint64_t HGG9B<HgcBlur_cs9s>::GetROI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5.f32[0] = a4;
  __asm { FMOV            V3.2S, #-1.0 }

  v11 = vadd_f32(vcvt_f32_s32(a5), _D3);
  v12.i64[0] = *(a1 + 416);
  v12.i64[1] = v12.i64[0];
  v5.f32[1] = SHIDWORD(a4);
  *&v5.u32[2] = v11;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(*(a1 + 424), vaddq_f32(vmulq_f32(v12, v5), v13));
  return HGRectIntegral(a1 + 424, v14.f32[0], v14.f32[1], v14.f32[2], v14.f32[3]);
}

void HGG9Y<HgcBlur_cs9s_rect>::~HGG9Y(HgcBlur_cs9s_rect *a1)
{
  HgcBlur_cs9s_rect::~HgcBlur_cs9s_rect(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG9Y<HgcBlur_cs9s_rect>::RenderTile(uint64_t a1, uint64_t a2)
{
  v4 = HGGetTBC();
  v5 = *(a1 + 48);
  v6 = vceqzq_f32(v5[2]);
  *v6.i8 = vpmax_s32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  if (vpmax_s32(*v6.i8, *v6.i8).u32[0])
  {
    v7 = 0xFFFFFFFFLL;
    v8 = *(a2 + 12) - *(a2 + 4);
    if (v8 < 1)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  v9 = vceqzq_f32(v5[3]);
  *v9.i8 = vpmax_s32(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  if (vpmax_s32(*v9.i8, *v9.i8).u32[0])
  {
    v7 = 4294967294;
    v8 = *(a2 + 12) - *(a2 + 4);
    if (v8 < 1)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  v10 = vceqzq_f32(v5[4]);
  *v10.i8 = vpmax_s32(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
  v7 = 4294967292;
  if (vpmax_s32(*v10.i8, *v10.i8).u32[0])
  {
    v7 = 4294967293;
  }

  v8 = *(a2 + 12) - *(a2 + 4);
  if (v8 >= 1)
  {
LABEL_10:
    v11 = 0;
    v12 = *(a2 + 8) - *a2;
    v13 = -v7;
    v14 = v7;
    do
    {
      v15 = v13;
      v16 = v14;
      v17 = v7;
      do
      {
        v18 = *(*(a1 + 48) + ((-16 * v17) & 0xFFFFFFFF0));
        v19 = *(a2 + 16);
        v20 = *(a2 + 24);
        v21 = (v19 + 16 * v20 * v11);
        v22 = *(a2 + 80);
        v23 = *(a2 + 88);
        v24 = (v22 + 16 * v23 * (v11 + v17));
        v25 = (v22 + 16 * v23 * (v11 - v17));
        v26 = v12;
        if (v17 == v7)
        {
          if (v12 >= 4)
          {
            v27 = 0;
            v28 = v19 + 16 * v11 * v20;
            v29 = v22 + 16 * v23 * v16;
            v30 = v22 + 16 * v23 * v15;
            v26 = v12;
            do
            {
              v31 = v26;
              v32 = (v28 + v27);
              v33 = vmulq_f32(v18, vaddq_f32(*(v29 + v27 + 16), *(v30 + v27 + 16)));
              v34 = vmulq_f32(v18, vaddq_f32(*(v29 + v27 + 32), *(v30 + v27 + 32)));
              v35 = vmulq_f32(v18, vaddq_f32(*(v29 + v27 + 48), *(v30 + v27 + 48)));
              *v32 = vmulq_f32(v18, vaddq_f32(*(v29 + v27), *(v30 + v27)));
              v32[1] = v33;
              v32[2] = v34;
              v32[3] = v35;
              v26 = v31 - 4;
              v27 += 64;
            }

            while (v31 > 7);
            v21 = (v28 + v27);
            v24 = (v29 + v27);
            v25 = (v30 + v27);
          }

          for (; v26; --v26)
          {
            v36 = *v24++;
            v37 = v36;
            v38 = *v25++;
            *v21++ = vmulq_f32(v18, vaddq_f32(v37, v38));
          }
        }

        else
        {
          if (v12 >= 4)
          {
            v39 = 0;
            v40 = v19 + 16 * v11 * v20;
            v41 = v22 + 16 * v23 * v16;
            v42 = v22 + 16 * v23 * v15;
            v26 = v12;
            do
            {
              v43 = v26;
              v44 = (v40 + v39);
              v45 = vaddq_f32(vmulq_f32(v18, vaddq_f32(*(v41 + v39 + 16), *(v42 + v39 + 16))), *(v40 + v39 + 16));
              v46 = vaddq_f32(vmulq_f32(v18, vaddq_f32(*(v41 + v39 + 32), *(v42 + v39 + 32))), *(v40 + v39 + 32));
              v47 = vaddq_f32(vmulq_f32(v18, vaddq_f32(*(v41 + v39 + 48), *(v42 + v39 + 48))), *(v40 + v39 + 48));
              *v44 = vaddq_f32(vmulq_f32(v18, vaddq_f32(*(v41 + v39), *(v42 + v39))), *(v40 + v39));
              v44[1] = v45;
              v44[2] = v46;
              v44[3] = v47;
              v26 = v43 - 4;
              v39 += 64;
            }

            while (v43 > 7);
            v21 = (v40 + v39);
            v24 = (v41 + v39);
            v25 = (v42 + v39);
          }

          for (; v26; --v26)
          {
            v48 = *v24++;
            v49 = v48;
            v50 = *v25++;
            *v21 = vaddq_f32(*v21, vmulq_f32(v18, vaddq_f32(v49, v50)));
            ++v21;
          }
        }

        ++v16;
        --v15;
        ++v17;
      }

      while (v17);
      v51 = **(a1 + 48);
      v52 = (*(a2 + 16) + 16 * *(a2 + 24) * v11);
      v53 = (*(a2 + 80) + 16 * *(a2 + 88) * v11);
      v54 = v12;
      if (v12 >= 4)
      {
        do
        {
          v55 = vaddq_f32(vmulq_f32(v51, v53[1]), v52[1]);
          v56 = vaddq_f32(vmulq_f32(v51, v53[2]), v52[2]);
          v57 = vaddq_f32(vmulq_f32(v51, v53[3]), v52[3]);
          *v52 = vaddq_f32(vmulq_f32(v51, *v53), *v52);
          v52[1] = v55;
          v52[2] = v56;
          v52[3] = v57;
          v53 += 4;
          v52 += 4;
          v58 = v54 > 7;
          v54 -= 4;
        }

        while (v58);
      }

      for (; v54; --v54)
      {
        v59 = *v53++;
        *v52 = vaddq_f32(vmulq_f32(v51, v59), *v52);
        ++v52;
      }

      ++v11;
      ++v14;
      ++v13;
    }

    while (v11 != v8);
  }

LABEL_34:
  *(*(*(a2 + 336) + 416) + 80) += HGGetTBC() - v4;
  return 0;
}

void HGG9Y<HgcBlur_cs9s_es_noborder>::~HGG9Y(HgcBlur_cs9s_es_noborder *a1)
{
  HgcBlur_cs9s_es_noborder::~HgcBlur_cs9s_es_noborder(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG9Y<HgcBlur_cs9s_es_noborder>::RenderTile(uint64_t a1, uint64_t a2)
{
  v4 = HGGetTBC();
  v5 = *(a1 + 48);
  v6 = vceqzq_f32(v5[2]);
  *v6.i8 = vpmax_s32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  if (vpmax_s32(*v6.i8, *v6.i8).u32[0])
  {
    v7 = 0xFFFFFFFFLL;
    v8 = *(a2 + 12) - *(a2 + 4);
    if (v8 < 1)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  v9 = vceqzq_f32(v5[3]);
  *v9.i8 = vpmax_s32(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  if (vpmax_s32(*v9.i8, *v9.i8).u32[0])
  {
    v7 = 4294967294;
    v8 = *(a2 + 12) - *(a2 + 4);
    if (v8 < 1)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  v10 = vceqzq_f32(v5[4]);
  *v10.i8 = vpmax_s32(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
  v7 = 4294967292;
  if (vpmax_s32(*v10.i8, *v10.i8).u32[0])
  {
    v7 = 4294967293;
  }

  v8 = *(a2 + 12) - *(a2 + 4);
  if (v8 >= 1)
  {
LABEL_10:
    v11 = 0;
    v12 = *(a2 + 8) - *a2;
    v13 = -v7;
    v14 = v7;
    do
    {
      v15 = v13;
      v16 = v14;
      v17 = v7;
      do
      {
        v18 = *(*(a1 + 48) + ((-16 * v17) & 0xFFFFFFFF0));
        v19 = *(a2 + 16);
        v20 = *(a2 + 24);
        v21 = (v19 + 16 * v20 * v11);
        v22 = *(a2 + 80);
        v23 = *(a2 + 88);
        v24 = (v22 + 16 * v23 * (v11 + v17));
        v25 = (v22 + 16 * v23 * (v11 - v17));
        v26 = v12;
        if (v17 == v7)
        {
          if (v12 >= 4)
          {
            v27 = 0;
            v28 = v19 + 16 * v11 * v20;
            v29 = v22 + 16 * v23 * v16;
            v30 = v22 + 16 * v23 * v15;
            v26 = v12;
            do
            {
              v31 = v26;
              v32 = (v28 + v27);
              v33 = vmulq_f32(v18, vaddq_f32(*(v29 + v27 + 16), *(v30 + v27 + 16)));
              v34 = vmulq_f32(v18, vaddq_f32(*(v29 + v27 + 32), *(v30 + v27 + 32)));
              v35 = vmulq_f32(v18, vaddq_f32(*(v29 + v27 + 48), *(v30 + v27 + 48)));
              *v32 = vmulq_f32(v18, vaddq_f32(*(v29 + v27), *(v30 + v27)));
              v32[1] = v33;
              v32[2] = v34;
              v32[3] = v35;
              v26 = v31 - 4;
              v27 += 64;
            }

            while (v31 > 7);
            v21 = (v28 + v27);
            v24 = (v29 + v27);
            v25 = (v30 + v27);
          }

          for (; v26; --v26)
          {
            v36 = *v24++;
            v37 = v36;
            v38 = *v25++;
            *v21++ = vmulq_f32(v18, vaddq_f32(v37, v38));
          }
        }

        else
        {
          if (v12 >= 4)
          {
            v39 = 0;
            v40 = v19 + 16 * v11 * v20;
            v41 = v22 + 16 * v23 * v16;
            v42 = v22 + 16 * v23 * v15;
            v26 = v12;
            do
            {
              v43 = v26;
              v44 = (v40 + v39);
              v45 = vaddq_f32(vmulq_f32(v18, vaddq_f32(*(v41 + v39 + 16), *(v42 + v39 + 16))), *(v40 + v39 + 16));
              v46 = vaddq_f32(vmulq_f32(v18, vaddq_f32(*(v41 + v39 + 32), *(v42 + v39 + 32))), *(v40 + v39 + 32));
              v47 = vaddq_f32(vmulq_f32(v18, vaddq_f32(*(v41 + v39 + 48), *(v42 + v39 + 48))), *(v40 + v39 + 48));
              *v44 = vaddq_f32(vmulq_f32(v18, vaddq_f32(*(v41 + v39), *(v42 + v39))), *(v40 + v39));
              v44[1] = v45;
              v44[2] = v46;
              v44[3] = v47;
              v26 = v43 - 4;
              v39 += 64;
            }

            while (v43 > 7);
            v21 = (v40 + v39);
            v24 = (v41 + v39);
            v25 = (v42 + v39);
          }

          for (; v26; --v26)
          {
            v48 = *v24++;
            v49 = v48;
            v50 = *v25++;
            *v21 = vaddq_f32(*v21, vmulq_f32(v18, vaddq_f32(v49, v50)));
            ++v21;
          }
        }

        ++v16;
        --v15;
        ++v17;
      }

      while (v17);
      v51 = **(a1 + 48);
      v52 = (*(a2 + 16) + 16 * *(a2 + 24) * v11);
      v53 = (*(a2 + 80) + 16 * *(a2 + 88) * v11);
      v54 = v12;
      if (v12 >= 4)
      {
        do
        {
          v55 = vaddq_f32(vmulq_f32(v51, v53[1]), v52[1]);
          v56 = vaddq_f32(vmulq_f32(v51, v53[2]), v52[2]);
          v57 = vaddq_f32(vmulq_f32(v51, v53[3]), v52[3]);
          *v52 = vaddq_f32(vmulq_f32(v51, *v53), *v52);
          v52[1] = v55;
          v52[2] = v56;
          v52[3] = v57;
          v53 += 4;
          v52 += 4;
          v58 = v54 > 7;
          v54 -= 4;
        }

        while (v58);
      }

      for (; v54; --v54)
      {
        v59 = *v53++;
        *v52 = vaddq_f32(vmulq_f32(v51, v59), *v52);
        ++v52;
      }

      ++v11;
      ++v14;
      ++v13;
    }

    while (v11 != v8);
  }

LABEL_34:
  *(*(*(a2 + 336) + 416) + 80) += HGGetTBC() - v4;
  return 0;
}

void HGG9Y<HgcBlur_cs9s>::~HGG9Y(HgcBlur_cs9s *a1)
{
  HgcBlur_cs9s::~HgcBlur_cs9s(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG9Y<HgcBlur_cs9s>::RenderTile(uint64_t a1, uint64_t a2)
{
  v4 = HGGetTBC();
  v5 = *(a1 + 48);
  v6 = vceqzq_f32(v5[2]);
  *v6.i8 = vpmax_s32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  if (vpmax_s32(*v6.i8, *v6.i8).u32[0])
  {
    v7 = 0xFFFFFFFFLL;
    v8 = *(a2 + 12) - *(a2 + 4);
    if (v8 < 1)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  v9 = vceqzq_f32(v5[3]);
  *v9.i8 = vpmax_s32(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  if (vpmax_s32(*v9.i8, *v9.i8).u32[0])
  {
    v7 = 4294967294;
    v8 = *(a2 + 12) - *(a2 + 4);
    if (v8 < 1)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  v10 = vceqzq_f32(v5[4]);
  *v10.i8 = vpmax_s32(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
  v7 = 4294967292;
  if (vpmax_s32(*v10.i8, *v10.i8).u32[0])
  {
    v7 = 4294967293;
  }

  v8 = *(a2 + 12) - *(a2 + 4);
  if (v8 >= 1)
  {
LABEL_10:
    v11 = 0;
    v12 = *(a2 + 8) - *a2;
    v13 = -v7;
    v14 = v7;
    do
    {
      v15 = v13;
      v16 = v14;
      v17 = v7;
      do
      {
        v18 = *(*(a1 + 48) + ((-16 * v17) & 0xFFFFFFFF0));
        v19 = *(a2 + 16);
        v20 = *(a2 + 24);
        v21 = (v19 + 16 * v20 * v11);
        v22 = *(a2 + 80);
        v23 = *(a2 + 88);
        v24 = (v22 + 16 * v23 * (v11 + v17));
        v25 = (v22 + 16 * v23 * (v11 - v17));
        v26 = v12;
        if (v17 == v7)
        {
          if (v12 >= 4)
          {
            v27 = 0;
            v28 = v19 + 16 * v11 * v20;
            v29 = v22 + 16 * v23 * v16;
            v30 = v22 + 16 * v23 * v15;
            v26 = v12;
            do
            {
              v31 = v26;
              v32 = (v28 + v27);
              v33 = vmulq_f32(v18, vaddq_f32(*(v29 + v27 + 16), *(v30 + v27 + 16)));
              v34 = vmulq_f32(v18, vaddq_f32(*(v29 + v27 + 32), *(v30 + v27 + 32)));
              v35 = vmulq_f32(v18, vaddq_f32(*(v29 + v27 + 48), *(v30 + v27 + 48)));
              *v32 = vmulq_f32(v18, vaddq_f32(*(v29 + v27), *(v30 + v27)));
              v32[1] = v33;
              v32[2] = v34;
              v32[3] = v35;
              v26 = v31 - 4;
              v27 += 64;
            }

            while (v31 > 7);
            v21 = (v28 + v27);
            v24 = (v29 + v27);
            v25 = (v30 + v27);
          }

          for (; v26; --v26)
          {
            v36 = *v24++;
            v37 = v36;
            v38 = *v25++;
            *v21++ = vmulq_f32(v18, vaddq_f32(v37, v38));
          }
        }

        else
        {
          if (v12 >= 4)
          {
            v39 = 0;
            v40 = v19 + 16 * v11 * v20;
            v41 = v22 + 16 * v23 * v16;
            v42 = v22 + 16 * v23 * v15;
            v26 = v12;
            do
            {
              v43 = v26;
              v44 = (v40 + v39);
              v45 = vaddq_f32(vmulq_f32(v18, vaddq_f32(*(v41 + v39 + 16), *(v42 + v39 + 16))), *(v40 + v39 + 16));
              v46 = vaddq_f32(vmulq_f32(v18, vaddq_f32(*(v41 + v39 + 32), *(v42 + v39 + 32))), *(v40 + v39 + 32));
              v47 = vaddq_f32(vmulq_f32(v18, vaddq_f32(*(v41 + v39 + 48), *(v42 + v39 + 48))), *(v40 + v39 + 48));
              *v44 = vaddq_f32(vmulq_f32(v18, vaddq_f32(*(v41 + v39), *(v42 + v39))), *(v40 + v39));
              v44[1] = v45;
              v44[2] = v46;
              v44[3] = v47;
              v26 = v43 - 4;
              v39 += 64;
            }

            while (v43 > 7);
            v21 = (v40 + v39);
            v24 = (v41 + v39);
            v25 = (v42 + v39);
          }

          for (; v26; --v26)
          {
            v48 = *v24++;
            v49 = v48;
            v50 = *v25++;
            *v21 = vaddq_f32(*v21, vmulq_f32(v18, vaddq_f32(v49, v50)));
            ++v21;
          }
        }

        ++v16;
        --v15;
        ++v17;
      }

      while (v17);
      v51 = **(a1 + 48);
      v52 = (*(a2 + 16) + 16 * *(a2 + 24) * v11);
      v53 = (*(a2 + 80) + 16 * *(a2 + 88) * v11);
      v54 = v12;
      if (v12 >= 4)
      {
        do
        {
          v55 = vaddq_f32(vmulq_f32(v51, v53[1]), v52[1]);
          v56 = vaddq_f32(vmulq_f32(v51, v53[2]), v52[2]);
          v57 = vaddq_f32(vmulq_f32(v51, v53[3]), v52[3]);
          *v52 = vaddq_f32(vmulq_f32(v51, *v53), *v52);
          v52[1] = v55;
          v52[2] = v56;
          v52[3] = v57;
          v53 += 4;
          v52 += 4;
          v58 = v54 > 7;
          v54 -= 4;
        }

        while (v58);
      }

      for (; v54; --v54)
      {
        v59 = *v53++;
        *v52 = vaddq_f32(vmulq_f32(v51, v59), *v52);
        ++v52;
      }

      ++v11;
      ++v14;
      ++v13;
    }

    while (v11 != v8);
  }

LABEL_34:
  *(*(*(a2 + 336) + 416) + 80) += HGGetTBC() - v4;
  return 0;
}

void HGG9D2X<HgcBlur_cs9s_rect>::~HGG9D2X(HgcBlur_cs9s_rect *a1)
{
  HgcBlur_cs9s_rect::~HgcBlur_cs9s_rect(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG9D2X<HgcBlur_cs9s_rect>::RenderTile(uint64_t a1, int *a2)
{
  v2 = a2[2];
  v3 = a2[3] - a2[1];
  if (v3 >= 1 && v2 != *a2)
  {
    v5 = 0;
    v6 = *(a1 + 48);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    v11 = v6[4];
    v12 = *a2 - v2;
    do
    {
      v13 = (*(a2 + 2) + 16 * a2[6] * v5);
      v14 = (*(a2 + 10) + 16 * *a2 + 16 * a2[22] * v5);
      v15 = v14[-4];
      v16 = v14[-3];
      v17 = v14[-2];
      v18 = v14[-1];
      v19 = *v14;
      v20 = v14[1];
      v21 = v14[2];
      v22 = v14 + 4;
      v23 = v12;
      do
      {
        v24 = v22[-1];
        v25 = *v22;
        *v13++ = vaddq_f32(vmulq_f32(v11, vaddq_f32(v15, *v22)), vaddq_f32(vaddq_f32(vmulq_f32(v9, vaddq_f32(v21, v17)), vaddq_f32(vmulq_f32(v7, v19), vmulq_f32(v8, vaddq_f32(v20, v18)))), vmulq_f32(v10, vaddq_f32(v16, v24))));
        v22 += 2;
        v15 = v17;
        v16 = v18;
        v17 = v19;
        v18 = v20;
        v19 = v21;
        v20 = v24;
        v21 = v25;
      }

      while (!__CFADD__(v23++, 1));
      ++v5;
    }

    while (v5 != v3);
  }

  return 0;
}

void HGG9D2X<HgcBlur_cs9s_es_noborder>::~HGG9D2X(HgcBlur_cs9s_es_noborder *a1)
{
  HgcBlur_cs9s_es_noborder::~HgcBlur_cs9s_es_noborder(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG9D2X<HgcBlur_cs9s_es_noborder>::RenderTile(uint64_t a1, int *a2)
{
  v2 = a2[2];
  v3 = a2[3] - a2[1];
  if (v3 >= 1 && v2 != *a2)
  {
    v5 = 0;
    v6 = *(a1 + 48);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    v11 = v6[4];
    v12 = *a2 - v2;
    do
    {
      v13 = (*(a2 + 2) + 16 * a2[6] * v5);
      v14 = (*(a2 + 10) + 16 * *a2 + 16 * a2[22] * v5);
      v15 = v14[-4];
      v16 = v14[-3];
      v17 = v14[-2];
      v18 = v14[-1];
      v19 = *v14;
      v20 = v14[1];
      v21 = v14[2];
      v22 = v14 + 4;
      v23 = v12;
      do
      {
        v24 = v22[-1];
        v25 = *v22;
        *v13++ = vaddq_f32(vmulq_f32(v11, vaddq_f32(v15, *v22)), vaddq_f32(vaddq_f32(vmulq_f32(v9, vaddq_f32(v21, v17)), vaddq_f32(vmulq_f32(v7, v19), vmulq_f32(v8, vaddq_f32(v20, v18)))), vmulq_f32(v10, vaddq_f32(v16, v24))));
        v22 += 2;
        v15 = v17;
        v16 = v18;
        v17 = v19;
        v18 = v20;
        v19 = v21;
        v20 = v24;
        v21 = v25;
      }

      while (!__CFADD__(v23++, 1));
      ++v5;
    }

    while (v5 != v3);
  }

  return 0;
}

void HGG9D2X<HgcBlur_cs9s>::~HGG9D2X(HgcBlur_cs9s *a1)
{
  HgcBlur_cs9s::~HgcBlur_cs9s(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG9D2X<HgcBlur_cs9s>::RenderTile(uint64_t a1, int *a2)
{
  v2 = a2[2];
  v3 = a2[3] - a2[1];
  if (v3 >= 1 && v2 != *a2)
  {
    v5 = 0;
    v6 = *(a1 + 48);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    v11 = v6[4];
    v12 = *a2 - v2;
    do
    {
      v13 = (*(a2 + 2) + 16 * a2[6] * v5);
      v14 = (*(a2 + 10) + 16 * *a2 + 16 * a2[22] * v5);
      v15 = v14[-4];
      v16 = v14[-3];
      v17 = v14[-2];
      v18 = v14[-1];
      v19 = *v14;
      v20 = v14[1];
      v21 = v14[2];
      v22 = v14 + 4;
      v23 = v12;
      do
      {
        v24 = v22[-1];
        v25 = *v22;
        *v13++ = vaddq_f32(vmulq_f32(v11, vaddq_f32(v15, *v22)), vaddq_f32(vaddq_f32(vmulq_f32(v9, vaddq_f32(v21, v17)), vaddq_f32(vmulq_f32(v7, v19), vmulq_f32(v8, vaddq_f32(v20, v18)))), vmulq_f32(v10, vaddq_f32(v16, v24))));
        v22 += 2;
        v15 = v17;
        v16 = v18;
        v17 = v19;
        v18 = v20;
        v19 = v21;
        v20 = v24;
        v21 = v25;
      }

      while (!__CFADD__(v23++, 1));
      ++v5;
    }

    while (v5 != v3);
  }

  return 0;
}

void HGG9D2Y<HgcBlur_cs9s_rect>::~HGG9D2Y(HgcBlur_cs9s_rect *a1)
{
  HgcBlur_cs9s_rect::~HgcBlur_cs9s_rect(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG9D2Y<HgcBlur_cs9s_rect>::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = *(a2 + 8) - *a2;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *(a2 + 88);
      v7 = 16 * v6;
      v8 = 32 * v6;
      v9 = *(a1 + 48);
      v10 = *v9;
      v11 = v9[1];
      v12 = 48 * v6;
      v13 = v9[2];
      v14 = v9[3];
      v15 = v6 << 6;
      v16 = v9[4];
      v17 = -64 * v6;
      do
      {
        v18 = 0;
        v19 = *(a2 + 16) + 16 * *(a2 + 24) * v5;
        v20 = *(a2 + 80) + 16 * *(a2 + 88) * (*(a2 + 4) + v4);
        do
        {
          *(v19 + 16 * v18) = vaddq_f32(vmulq_f32(v16, vaddq_f32(*(v20 + v17 + 16 * v18), *(v20 + v15 + 16 * v18))), vaddq_f32(vmulq_f32(v14, vaddq_f32(*(v20 + -v12 + 16 * v18), *(v20 + v12 + 16 * v18))), vaddq_f32(vmulq_f32(v13, vaddq_f32(*(v20 + -v8 + 16 * v18), *(v20 + v8 + 16 * v18))), vaddq_f32(vmulq_f32(v10, *(v20 + 16 * v18)), vmulq_f32(v11, vaddq_f32(*(v20 + -v7 + 16 * v18), *(v20 + v7 + 16 * v18)))))));
          ++v18;
        }

        while (v3 != v18);
        ++v5;
        v4 += 2;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

void HGG9D2Y<HgcBlur_cs9s_es_noborder>::~HGG9D2Y(HgcBlur_cs9s_es_noborder *a1)
{
  HgcBlur_cs9s_es_noborder::~HgcBlur_cs9s_es_noborder(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG9D2Y<HgcBlur_cs9s_es_noborder>::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = *(a2 + 8) - *a2;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *(a2 + 88);
      v7 = 16 * v6;
      v8 = 32 * v6;
      v9 = *(a1 + 48);
      v10 = *v9;
      v11 = v9[1];
      v12 = 48 * v6;
      v13 = v9[2];
      v14 = v9[3];
      v15 = v6 << 6;
      v16 = v9[4];
      v17 = -64 * v6;
      do
      {
        v18 = 0;
        v19 = *(a2 + 16) + 16 * *(a2 + 24) * v5;
        v20 = *(a2 + 80) + 16 * *(a2 + 88) * (*(a2 + 4) + v4);
        do
        {
          *(v19 + 16 * v18) = vaddq_f32(vmulq_f32(v16, vaddq_f32(*(v20 + v17 + 16 * v18), *(v20 + v15 + 16 * v18))), vaddq_f32(vmulq_f32(v14, vaddq_f32(*(v20 + -v12 + 16 * v18), *(v20 + v12 + 16 * v18))), vaddq_f32(vmulq_f32(v13, vaddq_f32(*(v20 + -v8 + 16 * v18), *(v20 + v8 + 16 * v18))), vaddq_f32(vmulq_f32(v10, *(v20 + 16 * v18)), vmulq_f32(v11, vaddq_f32(*(v20 + -v7 + 16 * v18), *(v20 + v7 + 16 * v18)))))));
          ++v18;
        }

        while (v3 != v18);
        ++v5;
        v4 += 2;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

void HGG9D2Y<HgcBlur_cs9s>::~HGG9D2Y(HgcBlur_cs9s *a1)
{
  HgcBlur_cs9s::~HgcBlur_cs9s(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG9D2Y<HgcBlur_cs9s>::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = *(a2 + 8) - *a2;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *(a2 + 88);
      v7 = 16 * v6;
      v8 = 32 * v6;
      v9 = *(a1 + 48);
      v10 = *v9;
      v11 = v9[1];
      v12 = 48 * v6;
      v13 = v9[2];
      v14 = v9[3];
      v15 = v6 << 6;
      v16 = v9[4];
      v17 = -64 * v6;
      do
      {
        v18 = 0;
        v19 = *(a2 + 16) + 16 * *(a2 + 24) * v5;
        v20 = *(a2 + 80) + 16 * *(a2 + 88) * (*(a2 + 4) + v4);
        do
        {
          *(v19 + 16 * v18) = vaddq_f32(vmulq_f32(v16, vaddq_f32(*(v20 + v17 + 16 * v18), *(v20 + v15 + 16 * v18))), vaddq_f32(vmulq_f32(v14, vaddq_f32(*(v20 + -v12 + 16 * v18), *(v20 + v12 + 16 * v18))), vaddq_f32(vmulq_f32(v13, vaddq_f32(*(v20 + -v8 + 16 * v18), *(v20 + v8 + 16 * v18))), vaddq_f32(vmulq_f32(v10, *(v20 + 16 * v18)), vmulq_f32(v11, vaddq_f32(*(v20 + -v7 + 16 * v18), *(v20 + v7 + 16 * v18)))))));
          ++v18;
        }

        while (v3 != v18);
        ++v5;
        v4 += 2;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

void HGG4U2X<HgcBlur_g4u2_rect>::~HGG4U2X(HgcBlur_g4u2_rect *a1)
{
  HgcBlur_g4u2_rect::~HgcBlur_g4u2_rect(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG4U2X<HgcBlur_g4u2_rect>::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a1 + 48);
    v6 = v5[1];
    v7 = vaddq_f32(*v5, *v5);
    v8 = v5[2];
    v9 = v5[3];
    v10 = *a2 & 1;
    v11 = -vcvtms_s32_f32(vcvts_n_f32_s32(*a2, 1uLL));
    do
    {
      v12 = (*(a2 + 16) + 16 * *(a2 + 24) * v3);
      v13 = (*(a2 + 80) + 16 * *(a2 + 88) * v3 + 16 * v11 - 16 * v10);
      v14 = *v13;
      v15 = v13[1];
      if (v10)
      {
        v16 = v13[2];
        *v12++ = vaddq_f32(vmulq_f32(v8, vaddq_f32(v14, v15)), vmulq_f32(v9, vaddq_f32(v13[-1], v16)));
        v17 = v4 - 1;
        ++v13;
        if (v4 - 1 < 4)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v17 = v4;
        v16 = v13[1];
        v15 = *v13;
        v14 = v13[-1];
        if (v4 < 4)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v18 = v13[2];
        v13 += 2;
        v19 = vaddq_f32(v16, v14);
        v20 = vaddq_f32(v16, v15);
        v21 = vaddq_f32(v14, v18);
        v22 = vaddq_f32(v16, v18);
        v23 = vmulq_f32(v7, v16);
        v14 = v16;
        v16 = v13[1];
        *v12 = vaddq_f32(vmulq_f32(v7, v15), vmulq_f32(v6, v19));
        v12[1] = vaddq_f32(vmulq_f32(v8, v20), vmulq_f32(v9, v21));
        v12[2] = vaddq_f32(v23, vmulq_f32(v6, vaddq_f32(v15, v18)));
        v12[3] = vaddq_f32(vmulq_f32(v8, v22), vmulq_f32(v9, vaddq_f32(v15, v16)));
        v12 += 4;
        v15 = v18;
        v24 = v17 > 7;
        v17 -= 4;
      }

      while (v24);
LABEL_7:
      if (v17 >= 2)
      {
        v25 = v13 + 2;
        do
        {
          v26 = v16;
          v27 = *v25++;
          v16 = v27;
          v28 = v15;
          *v12 = vaddq_f32(vmulq_f32(v7, v15), vmulq_f32(v6, vaddq_f32(v26, v14)));
          v12[1] = vaddq_f32(vmulq_f32(v8, vaddq_f32(v26, v15)), vmulq_f32(v9, vaddq_f32(v14, v27)));
          v12 += 2;
          v29 = v17 - 2;
          v14 = v15;
          v15 = v26;
          v24 = v17 > 3;
          v17 -= 2;
        }

        while (v24);
        if (!v29)
        {
          goto LABEL_3;
        }

LABEL_13:
        *v12 = vaddq_f32(vmulq_f32(v7, v26), vmulq_f32(v6, vaddq_f32(v16, v28)));
        goto LABEL_3;
      }

      v26 = v15;
      v28 = v14;
      if (v17)
      {
        goto LABEL_13;
      }

LABEL_3:
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HGG4U2X<HgcBlur_g4u2_rect>::Bind(HGNode *a1, HGHandler *a2)
{
  v3 = HGNode::Bind(a1, a2);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  return v3;
}

uint64_t HGG4U2X<HgcBlur_g4u2_rect>::BindTexture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 43) == 1)
  {
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 72))(a2, a3, 0);
    (*(*a2 + 48))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
LABEL_5:
    v5.n128_u64[0] = 0;
    v6.n128_u64[0] = 0;
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
    (*(*a2 + 136))(a2, 7, v5, v6, v7, v8);
    return 0;
  }

  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 46))
  {
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 72))(a2, a3, 0);
    (*(*a2 + 48))(a2, 0, 0);
    goto LABEL_5;
  }

  (*(*a2 + 136))(a2, 7, *(a2 + 240), *(a2 + 244), 1.0 / (*(a2 + 228) - *(a2 + 220)), 1.0 / (*(a2 + 232) - *(a2 + 224)));
  if (!(*(**(a2 + 144) + 128))(*(a2 + 144), 21))
  {
    v14 = *(a2 + 228) - *(a2 + 220);
    v10.n128_f32[0] = vcvts_n_f32_u32(v14 + 1, 1uLL);
    v15 = *(a2 + 232) - *(a2 + 224);
    v11.n128_f32[0] = vcvts_n_f32_u32(v15 + 1, 1uLL);
    v12.n128_f32[0] = v14;
    v13.n128_f32[0] = v15;
    (*(*a2 + 136))(a2, 8, v10, v11, v12, v13);
  }

  return 0;
}

uint64_t HGG4U2X<HgcBlur_g4u2_rect>::IntermediateFormat(uint64_t a1, int a2)
{
  if (a2 <= 27)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

uint64_t HGG4U2X<HgcBlur_g4u2_rect>::GetDOD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5.f32[0] = a4;
  __asm { FMOV            V3.2S, #-1.0 }

  v11 = vadd_f32(vcvt_f32_s32(a5), _D3);
  v12.i64[0] = *(a1 + 416);
  v12.i64[1] = v12.i64[0];
  v5.f32[1] = SHIDWORD(a4);
  *&v5.u32[2] = v11;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(vdivq_f32(vaddq_f32(*(a1 + 424), v5), v12), v13);
  return HGRectIntegral(a1 + 424, v14.f32[0], v14.f32[1], v14.f32[2], v14.f32[3]);
}

uint64_t HGG4U2X<HgcBlur_g4u2_rect>::GetROI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5.f32[0] = a4;
  __asm { FMOV            V3.2S, #-1.0 }

  v11 = vadd_f32(vcvt_f32_s32(a5), _D3);
  v12.i64[0] = *(a1 + 416);
  v12.i64[1] = v12.i64[0];
  v5.f32[1] = SHIDWORD(a4);
  *&v5.u32[2] = v11;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(*(a1 + 424), vaddq_f32(vmulq_f32(v12, v5), v13));
  return HGRectIntegral(a1 + 424, v14.f32[0], v14.f32[1], v14.f32[2], v14.f32[3]);
}

void HGG4U2X<HgcBlur_g4u2_noborder>::~HGG4U2X(HgcBlur_g4u2_noborder *a1)
{
  HgcBlur_g4u2_noborder::~HgcBlur_g4u2_noborder(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG4U2X<HgcBlur_g4u2_noborder>::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a1 + 48);
    v6 = v5[1];
    v7 = vaddq_f32(*v5, *v5);
    v8 = v5[2];
    v9 = v5[3];
    v10 = *a2 & 1;
    v11 = -vcvtms_s32_f32(vcvts_n_f32_s32(*a2, 1uLL));
    do
    {
      v12 = (*(a2 + 16) + 16 * *(a2 + 24) * v3);
      v13 = (*(a2 + 80) + 16 * *(a2 + 88) * v3 + 16 * v11 - 16 * v10);
      v14 = *v13;
      v15 = v13[1];
      if (v10)
      {
        v16 = v13[2];
        *v12++ = vaddq_f32(vmulq_f32(v8, vaddq_f32(v14, v15)), vmulq_f32(v9, vaddq_f32(v13[-1], v16)));
        v17 = v4 - 1;
        ++v13;
        if (v4 - 1 < 4)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v17 = v4;
        v16 = v13[1];
        v15 = *v13;
        v14 = v13[-1];
        if (v4 < 4)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v18 = v13[2];
        v13 += 2;
        v19 = vaddq_f32(v16, v14);
        v20 = vaddq_f32(v16, v15);
        v21 = vaddq_f32(v14, v18);
        v22 = vaddq_f32(v16, v18);
        v23 = vmulq_f32(v7, v16);
        v14 = v16;
        v16 = v13[1];
        *v12 = vaddq_f32(vmulq_f32(v7, v15), vmulq_f32(v6, v19));
        v12[1] = vaddq_f32(vmulq_f32(v8, v20), vmulq_f32(v9, v21));
        v12[2] = vaddq_f32(v23, vmulq_f32(v6, vaddq_f32(v15, v18)));
        v12[3] = vaddq_f32(vmulq_f32(v8, v22), vmulq_f32(v9, vaddq_f32(v15, v16)));
        v12 += 4;
        v15 = v18;
        v24 = v17 > 7;
        v17 -= 4;
      }

      while (v24);
LABEL_7:
      if (v17 >= 2)
      {
        v25 = v13 + 2;
        do
        {
          v26 = v16;
          v27 = *v25++;
          v16 = v27;
          v28 = v15;
          *v12 = vaddq_f32(vmulq_f32(v7, v15), vmulq_f32(v6, vaddq_f32(v26, v14)));
          v12[1] = vaddq_f32(vmulq_f32(v8, vaddq_f32(v26, v15)), vmulq_f32(v9, vaddq_f32(v14, v27)));
          v12 += 2;
          v29 = v17 - 2;
          v14 = v15;
          v15 = v26;
          v24 = v17 > 3;
          v17 -= 2;
        }

        while (v24);
        if (!v29)
        {
          goto LABEL_3;
        }

LABEL_13:
        *v12 = vaddq_f32(vmulq_f32(v7, v26), vmulq_f32(v6, vaddq_f32(v16, v28)));
        goto LABEL_3;
      }

      v26 = v15;
      v28 = v14;
      if (v17)
      {
        goto LABEL_13;
      }

LABEL_3:
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HGG4U2X<HgcBlur_g4u2_noborder>::Bind(HGNode *a1, HGHandler *a2)
{
  v3 = HGNode::Bind(a1, a2);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  return v3;
}

uint64_t HGG4U2X<HgcBlur_g4u2_noborder>::BindTexture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 43) == 1)
  {
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 72))(a2, a3, 0);
    (*(*a2 + 48))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
LABEL_5:
    v5.n128_u64[0] = 0;
    v6.n128_u64[0] = 0;
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
    (*(*a2 + 136))(a2, 7, v5, v6, v7, v8);
    return 0;
  }

  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 46))
  {
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 72))(a2, a3, 0);
    (*(*a2 + 48))(a2, 0, 0);
    goto LABEL_5;
  }

  (*(*a2 + 136))(a2, 7, *(a2 + 240), *(a2 + 244), 1.0 / (*(a2 + 228) - *(a2 + 220)), 1.0 / (*(a2 + 232) - *(a2 + 224)));
  if (!(*(**(a2 + 144) + 128))(*(a2 + 144), 21))
  {
    v14 = *(a2 + 228) - *(a2 + 220);
    v10.n128_f32[0] = vcvts_n_f32_u32(v14 + 1, 1uLL);
    v15 = *(a2 + 232) - *(a2 + 224);
    v11.n128_f32[0] = vcvts_n_f32_u32(v15 + 1, 1uLL);
    v12.n128_f32[0] = v14;
    v13.n128_f32[0] = v15;
    (*(*a2 + 136))(a2, 8, v10, v11, v12, v13);
  }

  return 0;
}

uint64_t HGG4U2X<HgcBlur_g4u2_noborder>::IntermediateFormat(uint64_t a1, int a2)
{
  if (a2 <= 27)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

uint64_t HGG4U2X<HgcBlur_g4u2_noborder>::GetDOD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5.f32[0] = a4;
  __asm { FMOV            V3.2S, #-1.0 }

  v11 = vadd_f32(vcvt_f32_s32(a5), _D3);
  v12.i64[0] = *(a1 + 416);
  v12.i64[1] = v12.i64[0];
  v5.f32[1] = SHIDWORD(a4);
  *&v5.u32[2] = v11;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(vdivq_f32(vaddq_f32(*(a1 + 424), v5), v12), v13);
  return HGRectIntegral(a1 + 424, v14.f32[0], v14.f32[1], v14.f32[2], v14.f32[3]);
}

uint64_t HGG4U2X<HgcBlur_g4u2_noborder>::GetROI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5.f32[0] = a4;
  __asm { FMOV            V3.2S, #-1.0 }

  v11 = vadd_f32(vcvt_f32_s32(a5), _D3);
  v12.i64[0] = *(a1 + 416);
  v12.i64[1] = v12.i64[0];
  v5.f32[1] = SHIDWORD(a4);
  *&v5.u32[2] = v11;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(*(a1 + 424), vaddq_f32(vmulq_f32(v12, v5), v13));
  return HGRectIntegral(a1 + 424, v14.f32[0], v14.f32[1], v14.f32[2], v14.f32[3]);
}

void HGG4U2X<HgcBlur_g4u2>::~HGG4U2X(HgcBlur_g4u2 *a1)
{
  HgcBlur_g4u2::~HgcBlur_g4u2(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG4U2X<HgcBlur_g4u2>::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a1 + 48);
    v6 = v5[1];
    v7 = vaddq_f32(*v5, *v5);
    v8 = v5[2];
    v9 = v5[3];
    v10 = *a2 & 1;
    v11 = -vcvtms_s32_f32(vcvts_n_f32_s32(*a2, 1uLL));
    do
    {
      v12 = (*(a2 + 16) + 16 * *(a2 + 24) * v3);
      v13 = (*(a2 + 80) + 16 * *(a2 + 88) * v3 + 16 * v11 - 16 * v10);
      v14 = *v13;
      v15 = v13[1];
      if (v10)
      {
        v16 = v13[2];
        *v12++ = vaddq_f32(vmulq_f32(v8, vaddq_f32(v14, v15)), vmulq_f32(v9, vaddq_f32(v13[-1], v16)));
        v17 = v4 - 1;
        ++v13;
        if (v4 - 1 < 4)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v17 = v4;
        v16 = v13[1];
        v15 = *v13;
        v14 = v13[-1];
        if (v4 < 4)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v18 = v13[2];
        v13 += 2;
        v19 = vaddq_f32(v16, v14);
        v20 = vaddq_f32(v16, v15);
        v21 = vaddq_f32(v14, v18);
        v22 = vaddq_f32(v16, v18);
        v23 = vmulq_f32(v7, v16);
        v14 = v16;
        v16 = v13[1];
        *v12 = vaddq_f32(vmulq_f32(v7, v15), vmulq_f32(v6, v19));
        v12[1] = vaddq_f32(vmulq_f32(v8, v20), vmulq_f32(v9, v21));
        v12[2] = vaddq_f32(v23, vmulq_f32(v6, vaddq_f32(v15, v18)));
        v12[3] = vaddq_f32(vmulq_f32(v8, v22), vmulq_f32(v9, vaddq_f32(v15, v16)));
        v12 += 4;
        v15 = v18;
        v24 = v17 > 7;
        v17 -= 4;
      }

      while (v24);
LABEL_7:
      if (v17 >= 2)
      {
        v25 = v13 + 2;
        do
        {
          v26 = v16;
          v27 = *v25++;
          v16 = v27;
          v28 = v15;
          *v12 = vaddq_f32(vmulq_f32(v7, v15), vmulq_f32(v6, vaddq_f32(v26, v14)));
          v12[1] = vaddq_f32(vmulq_f32(v8, vaddq_f32(v26, v15)), vmulq_f32(v9, vaddq_f32(v14, v27)));
          v12 += 2;
          v29 = v17 - 2;
          v14 = v15;
          v15 = v26;
          v24 = v17 > 3;
          v17 -= 2;
        }

        while (v24);
        if (!v29)
        {
          goto LABEL_3;
        }

LABEL_13:
        *v12 = vaddq_f32(vmulq_f32(v7, v26), vmulq_f32(v6, vaddq_f32(v16, v28)));
        goto LABEL_3;
      }

      v26 = v15;
      v28 = v14;
      if (v17)
      {
        goto LABEL_13;
      }

LABEL_3:
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HGG4U2X<HgcBlur_g4u2>::Bind(HGNode *a1, HGHandler *a2)
{
  v3 = HGNode::Bind(a1, a2);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  return v3;
}

uint64_t HGG4U2X<HgcBlur_g4u2>::BindTexture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 43) == 1)
  {
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 72))(a2, a3, 0);
    (*(*a2 + 48))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
LABEL_5:
    v5.n128_u64[0] = 0;
    v6.n128_u64[0] = 0;
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
    (*(*a2 + 136))(a2, 7, v5, v6, v7, v8);
    return 0;
  }

  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 46))
  {
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 72))(a2, a3, 0);
    (*(*a2 + 48))(a2, 0, 0);
    goto LABEL_5;
  }

  (*(*a2 + 136))(a2, 7, *(a2 + 240), *(a2 + 244), 1.0 / (*(a2 + 228) - *(a2 + 220)), 1.0 / (*(a2 + 232) - *(a2 + 224)));
  if (!(*(**(a2 + 144) + 128))(*(a2 + 144), 21))
  {
    v14 = *(a2 + 228) - *(a2 + 220);
    v10.n128_f32[0] = vcvts_n_f32_u32(v14 + 1, 1uLL);
    v15 = *(a2 + 232) - *(a2 + 224);
    v11.n128_f32[0] = vcvts_n_f32_u32(v15 + 1, 1uLL);
    v12.n128_f32[0] = v14;
    v13.n128_f32[0] = v15;
    (*(*a2 + 136))(a2, 8, v10, v11, v12, v13);
  }

  return 0;
}

uint64_t HGG4U2X<HgcBlur_g4u2>::IntermediateFormat(uint64_t a1, int a2)
{
  if (a2 <= 27)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

uint64_t HGG4U2X<HgcBlur_g4u2>::GetDOD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5.f32[0] = a4;
  __asm { FMOV            V3.2S, #-1.0 }

  v11 = vadd_f32(vcvt_f32_s32(a5), _D3);
  v12.i64[0] = *(a1 + 416);
  v12.i64[1] = v12.i64[0];
  v5.f32[1] = SHIDWORD(a4);
  *&v5.u32[2] = v11;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(vdivq_f32(vaddq_f32(*(a1 + 424), v5), v12), v13);
  return HGRectIntegral(a1 + 424, v14.f32[0], v14.f32[1], v14.f32[2], v14.f32[3]);
}

uint64_t HGG4U2X<HgcBlur_g4u2>::GetROI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5.f32[0] = a4;
  __asm { FMOV            V3.2S, #-1.0 }

  v11 = vadd_f32(vcvt_f32_s32(a5), _D3);
  v12.i64[0] = *(a1 + 416);
  v12.i64[1] = v12.i64[0];
  v5.f32[1] = SHIDWORD(a4);
  *&v5.u32[2] = v11;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(*(a1 + 424), vaddq_f32(vmulq_f32(v12, v5), v13));
  return HGRectIntegral(a1 + 424, v14.f32[0], v14.f32[1], v14.f32[2], v14.f32[3]);
}

void HGG4U2Y<HgcBlur_g4u2_rect>::~HGG4U2Y(HgcBlur_g4u2_rect *a1)
{
  HgcBlur_g4u2_rect::~HgcBlur_g4u2_rect(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG4U2Y<HgcBlur_g4u2_rect>::RenderTile(uint64_t a1, int *a2)
{
  v2 = a2[2];
  v3 = *a2;
  v4 = a2[1];
  v5 = v2 - *a2;
  v6 = a2[3] - v4;
  v7 = *(a1 + 48);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = a2[22];
  v13 = (*(a2 + 10) - 16 * (v12 * ((v4 & 1) + vcvtms_s32_f32(vcvts_n_f32_s32(v4, 1uLL)))));
  v14 = *(a2 + 2);
  v15 = 16 * v12;
  v16 = 2 * v12;
  if (v4)
  {
    if (v5)
    {
      v17 = v3 - v2;
      v18 = *(a2 + 2);
      v19 = v13;
      do
      {
        *v18++ = vaddq_f32(vmulq_f32(v10, vaddq_f32(*v19, v19[v15 / 0x10u])), vmulq_f32(v11, vaddq_f32(v19[v15 / 0xFFFFFFFFFFFFFFF0], v19[v16])));
        ++v19;
        v20 = __CFADD__(v17++, 1);
      }

      while (!v20);
      v12 = a2[22];
    }

    v14 += a2[6];
    v13 += v12;
    --v6;
  }

  v21 = vaddq_f32(v9, v9);
  if (v6 < 2)
  {
    if (v6 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    LODWORD(v22) = a2[6];
    do
    {
      v23 = v22;
      v24 = v3 - v2;
      v25 = v14;
      v26 = v13;
      do
      {
        v27 = v26[v15 / 0xFFFFFFFFFFFFFFF0];
        v28 = v26[v15 / 0x10u];
        v29 = vaddq_f32(v27, v26[v16]);
        v30 = vaddq_f32(vmulq_f32(v21, *v26), vmulq_f32(v8, vaddq_f32(v27, v28)));
        v31 = vaddq_f32(vmulq_f32(v10, vaddq_f32(*v26, v28)), vmulq_f32(v11, v29));
        *v25 = v30;
        v25[v23] = v31;
        ++v26;
        ++v25;
        v20 = __CFADD__(v24++, 1);
      }

      while (!v20);
      v22 = a2[6];
      v14 += 2 * v22;
      v13 += a2[22];
      v32 = v6 - 2;
      v33 = v6 <= 3;
      v6 -= 2;
    }

    while (!v33);
    if (v32 == 1)
    {
LABEL_19:
      if (v5)
      {
        v34 = v3 - v2;
        do
        {
          *v14++ = vaddq_f32(vmulq_f32(v21, *v13), vmulq_f32(v8, vaddq_f32(v13[v15 / 0xFFFFFFFFFFFFFFF0], v13[v15 / 0x10u])));
          ++v13;
          v20 = __CFADD__(v34++, 1);
        }

        while (!v20);
      }
    }
  }

  return 0;
}

void HGG4U2Y<HgcBlur_g4u2_noborder>::~HGG4U2Y(HgcBlur_g4u2_noborder *a1)
{
  HgcBlur_g4u2_noborder::~HgcBlur_g4u2_noborder(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG4U2Y<HgcBlur_g4u2_noborder>::RenderTile(uint64_t a1, int *a2)
{
  v2 = a2[2];
  v3 = *a2;
  v4 = a2[1];
  v5 = v2 - *a2;
  v6 = a2[3] - v4;
  v7 = *(a1 + 48);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = a2[22];
  v13 = (*(a2 + 10) - 16 * (v12 * ((v4 & 1) + vcvtms_s32_f32(vcvts_n_f32_s32(v4, 1uLL)))));
  v14 = *(a2 + 2);
  v15 = 16 * v12;
  v16 = 2 * v12;
  if (v4)
  {
    if (v5)
    {
      v17 = v3 - v2;
      v18 = *(a2 + 2);
      v19 = v13;
      do
      {
        *v18++ = vaddq_f32(vmulq_f32(v10, vaddq_f32(*v19, v19[v15 / 0x10u])), vmulq_f32(v11, vaddq_f32(v19[v15 / 0xFFFFFFFFFFFFFFF0], v19[v16])));
        ++v19;
        v20 = __CFADD__(v17++, 1);
      }

      while (!v20);
      v12 = a2[22];
    }

    v14 += a2[6];
    v13 += v12;
    --v6;
  }

  v21 = vaddq_f32(v9, v9);
  if (v6 < 2)
  {
    if (v6 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    LODWORD(v22) = a2[6];
    do
    {
      v23 = v22;
      v24 = v3 - v2;
      v25 = v14;
      v26 = v13;
      do
      {
        v27 = v26[v15 / 0xFFFFFFFFFFFFFFF0];
        v28 = v26[v15 / 0x10u];
        v29 = vaddq_f32(v27, v26[v16]);
        v30 = vaddq_f32(vmulq_f32(v21, *v26), vmulq_f32(v8, vaddq_f32(v27, v28)));
        v31 = vaddq_f32(vmulq_f32(v10, vaddq_f32(*v26, v28)), vmulq_f32(v11, v29));
        *v25 = v30;
        v25[v23] = v31;
        ++v26;
        ++v25;
        v20 = __CFADD__(v24++, 1);
      }

      while (!v20);
      v22 = a2[6];
      v14 += 2 * v22;
      v13 += a2[22];
      v32 = v6 - 2;
      v33 = v6 <= 3;
      v6 -= 2;
    }

    while (!v33);
    if (v32 == 1)
    {
LABEL_19:
      if (v5)
      {
        v34 = v3 - v2;
        do
        {
          *v14++ = vaddq_f32(vmulq_f32(v21, *v13), vmulq_f32(v8, vaddq_f32(v13[v15 / 0xFFFFFFFFFFFFFFF0], v13[v15 / 0x10u])));
          ++v13;
          v20 = __CFADD__(v34++, 1);
        }

        while (!v20);
      }
    }
  }

  return 0;
}

void HGG4U2Y<HgcBlur_g4u2>::~HGG4U2Y(HgcBlur_g4u2 *a1)
{
  HgcBlur_g4u2::~HgcBlur_g4u2(a1);

  HGObject::operator delete(v1);
}

uint64_t HGG4U2Y<HgcBlur_g4u2>::RenderTile(uint64_t a1, int *a2)
{
  v2 = a2[2];
  v3 = *a2;
  v4 = a2[1];
  v5 = v2 - *a2;
  v6 = a2[3] - v4;
  v7 = *(a1 + 48);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = a2[22];
  v13 = (*(a2 + 10) - 16 * (v12 * ((v4 & 1) + vcvtms_s32_f32(vcvts_n_f32_s32(v4, 1uLL)))));
  v14 = *(a2 + 2);
  v15 = 16 * v12;
  v16 = 2 * v12;
  if (v4)
  {
    if (v5)
    {
      v17 = v3 - v2;
      v18 = *(a2 + 2);
      v19 = v13;
      do
      {
        *v18++ = vaddq_f32(vmulq_f32(v10, vaddq_f32(*v19, v19[v15 / 0x10u])), vmulq_f32(v11, vaddq_f32(v19[v15 / 0xFFFFFFFFFFFFFFF0], v19[v16])));
        ++v19;
        v20 = __CFADD__(v17++, 1);
      }

      while (!v20);
      v12 = a2[22];
    }

    v14 += a2[6];
    v13 += v12;
    --v6;
  }

  v21 = vaddq_f32(v9, v9);
  if (v6 < 2)
  {
    if (v6 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    LODWORD(v22) = a2[6];
    do
    {
      v23 = v22;
      v24 = v3 - v2;
      v25 = v14;
      v26 = v13;
      do
      {
        v27 = v26[v15 / 0xFFFFFFFFFFFFFFF0];
        v28 = v26[v15 / 0x10u];
        v29 = vaddq_f32(v27, v26[v16]);
        v30 = vaddq_f32(vmulq_f32(v21, *v26), vmulq_f32(v8, vaddq_f32(v27, v28)));
        v31 = vaddq_f32(vmulq_f32(v10, vaddq_f32(*v26, v28)), vmulq_f32(v11, v29));
        *v25 = v30;
        v25[v23] = v31;
        ++v26;
        ++v25;
        v20 = __CFADD__(v24++, 1);
      }

      while (!v20);
      v22 = a2[6];
      v14 += 2 * v22;
      v13 += a2[22];
      v32 = v6 - 2;
      v33 = v6 <= 3;
      v6 -= 2;
    }

    while (!v33);
    if (v32 == 1)
    {
LABEL_19:
      if (v5)
      {
        v34 = v3 - v2;
        do
        {
          *v14++ = vaddq_f32(vmulq_f32(v21, *v13), vmulq_f32(v8, vaddq_f32(v13[v15 / 0xFFFFFFFFFFFFFFF0], v13[v15 / 0x10u])));
          ++v13;
          v20 = __CFADD__(v34++, 1);
        }

        while (!v20);
      }
    }
  }

  return 0;
}

uint64_t std::vector<HGRef<HGNode>>::__emplace_back_slow_path<HGRef<HGNode>>(uint64_t *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 2 > v3)
  {
    v3 = v5 >> 2;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    if (!(v6 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  __p = 0;
  v14 = (8 * v2);
  *v14 = *a2;
  *a2 = 0;
  v15 = 8 * v2 + 8;
  v16 = 0;
  std::vector<HGRef<HGNode>>::__swap_out_circular_buffer(a1, &__p);
  v7 = a1[1];
  v8 = v14;
LABEL_11:
  v9 = v15;
  while (v9 != v8)
  {
    v11 = *(v9 - 8);
    v9 -= 8;
    v10 = v11;
    v15 = v9;
    if (v11)
    {
      (*(*v10 + 24))(v10);
      goto LABEL_11;
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_25FCBDF2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<HGRef<HGNode>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<HGRef<HGNode>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = (v4 + *result - v5);
  v14 = v7;
  if (*result != v5)
  {
    v8 = (v4 + v6 - v5);
    v9 = *result;
    do
    {
      v10 = *v9;
      *v8 = *v9;
      if (v10)
      {
        (*(*v10 + 16))(v10);
        v8 = v14;
      }

      v9 += 8;
      v14 = ++v8;
    }

    while (v9 != v5);
    do
    {
      result = *v6;
      if (*v6)
      {
        result = (*(*result + 24))(result);
      }

      v6 += 8;
    }

    while (v6 != v5);
  }

  a2[1] = v7;
  v11 = *v3;
  v3[1] = *v3;
  *v3 = a2[1];
  a2[1] = v11;
  v12 = v3[1];
  v3[1] = a2[2];
  a2[2] = v12;
  v13 = v3[2];
  v3[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<HGRef<HGNode>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 8);
    v2 -= 8;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      (*(*v4 + 24))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void HGG9B<HgcBlur_cs9s>::SetRadius()
{
  if (__cxa_guard_acquire(&qword_280C5E440))
  {
    v0 = OUTLINED_FUNCTION_0_9(&_MergedGlobals_21);

    __cxa_guard_release(v0);
  }
}

void HGBitmapUtils::createBitmap(HGBitmapUtils *this@<X0>, HGBitmap **a2@<X8>)
{
  *a2 = 0;
  if (!this)
  {
    return;
  }

  Width = CGImageGetWidth(this);
  Height = CGImageGetHeight(this);
  BitsPerComponent = CGImageGetBitsPerComponent(this);
  BitsPerPixel = CGImageGetBitsPerPixel(this);
  BytesPerRow = CGImageGetBytesPerRow(this);
  v10 = BitsPerPixel / BitsPerComponent;
  BitmapInfo = CGImageGetBitmapInfo(this);
  v12 = HGRectMake4i(0, 0, Width, Height);
  v14 = v13;
  if (BitsPerComponent == 8)
  {
    v15 = v10 - 1;
    if (v10 - 1 >= 3)
    {
      v17 = 24;
      goto LABEL_16;
    }

    v16 = &unk_260816968;
  }

  else
  {
    if ((BitmapInfo & 0x100) == 0 && BitsPerComponent == 16)
    {
      if (v10 - 1 >= 3)
      {
        v17 = 25;
      }

      else
      {
        v17 = (8 * (v10 - 1)) | 3u;
      }

      goto LABEL_16;
    }

    if ((BitmapInfo & 0x100) != 0 && BitsPerComponent == 16)
    {
      v15 = v10 - 1;
      if (v10 - 1 >= 3)
      {
        v17 = 27;
        goto LABEL_16;
      }

      v16 = &unk_260816974;
    }

    else
    {
      if ((BitmapInfo & 0x100) == 0 || BitsPerComponent != 32)
      {
        return;
      }

      v15 = v10 - 1;
      if (v10 - 1 >= 3)
      {
        v17 = 28;
        goto LABEL_16;
      }

      v16 = &unk_260816980;
    }
  }

  v17 = v16[v15];
LABEL_16:
  DataProvider = CGImageGetDataProvider(this);
  v19 = CGDataProviderCopyData(DataProvider);
  BytePtr = CFDataGetBytePtr(v19);
  v21 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v21, v12, v14, v17, BytePtr, BytesPerRow);
  if (v21)
  {
    *a2 = v21;
  }

  v22 = HGObject::operator new(0x18uLL);
  HGCFDataRefHolder::HGCFDataRefHolder(v22, v19);
  HGBitmap::SetStorage(v21, v22);
  CFRelease(v19);
  if (v22)
  {
    (*(*v22 + 24))(v22);
  }
}

void sub_25FCBE35C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

void HGBitmapUtils::createBitmapLoader(HGBitmapUtils *this@<X0>, HGBitmapLoader **a2@<X8>)
{
  if (this)
  {
    HGBitmapUtils::createBitmap(this, &v7);
    v4 = v7;
    if (v7)
    {
      v5 = HGObject::operator new(0x1F0uLL);
      HGBitmapLoader::HGBitmapLoader(v5, v4);
      *a2 = v5;
      (*(*v4 + 24))(v4);
      return;
    }

    v6 = HGObject::operator new(0x1F0uLL);
    HGBitmapLoader::HGBitmapLoader(v6);
  }

  else
  {
    v6 = HGObject::operator new(0x1F0uLL);
    HGBitmapLoader::HGBitmapLoader(v6);
  }

  *a2 = v6;
}

void sub_25FCBE4E4(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

BOOL HGBitmapUtils::isPadded(HGBitmapUtils *this, HGBitmap *a2)
{
  v3 = *(this + 3);
  if ((v3 & 0x20) != 0)
  {
    MetalStorage = HGMetalTexture::getMetalStorage(this, a2);
    if (MetalStorage)
    {
      TextureRect = HGMetalTexture::GetTextureRect(MetalStorage);
      goto LABEL_8;
    }

LABEL_9:
    v7 = *(this + 20);
    v8 = *(this + 28);
    goto LABEL_10;
  }

  if ((v3 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  if ((v3 & 0x100) != 0)
  {
    v7 = *(this + 17);
    v8 = *(this + 18);
    goto LABEL_10;
  }

  if ((v3 & 0x200) == 0)
  {
    goto LABEL_9;
  }

  TextureRect = HGGLTexture::GetTextureRect(this);
LABEL_8:
  v7 = TextureRect;
  v8 = v5;
LABEL_10:
  v9 = HGFormatUtils::collapseRectForFormat((this + 20), *(this + 4));
  return !HGRectIsEqual(v9, v10, v7, v8);
}

uint64_t *__HGStats_private::operator<<(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (*(**(a2 + 8) + 24))(*(a2 + 8)) * 100.0 / v4;
  v6 = *a1;
  *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFEFB | 4;
  *(a1 + *(v6 - 24) + 24) = 7;
  *(a1 + *(v6 - 24) + 16) = 2;
  v7 = MEMORY[0x2666E9B30](a1);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " ms (", 5);
  v9 = *v8;
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFEFB | 4;
  *(v8 + *(v9 - 24) + 24) = 4;
  *(v8 + *(v9 - 24) + 16) = 1;
  v10 = MEMORY[0x2666E9B30](v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "%)", 2);
  if ((*(**a2 + 32))())
  {
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
    v12 = *(a2 + 24);
    *(v11 + *(*v11 - 24) + 24) = 10;
    v13 = (*(*v12 + 32))(v12);
    v14 = MEMORY[0x2666E9B90](v11, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " pixels", 7);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", ", 2);
    v16 = *(a2 + 32);
    *(v15 + *(*v15 - 24) + 24) = 10;
    v17 = (*(*v16 + 40))(v16);
    v18 = MEMORY[0x2666E9B90](v15, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " bytes", 6);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "  (", 3);
    v20 = *(a2 + 40);
    *(v19 + *(*v19 - 24) + 24) = 4;
    v21 = (*(*v20 + 48))(v20);
    v22 = MEMORY[0x2666E9B90](v19, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " tiles", 6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ")", 1);
  }

  return a1;
}

uint64_t __HGStats_private::StatsTimer::destroy(__HGStats_private::StatsTimer *this)
{
  result = *(this + 1);
  if (result)
  {
    result = MEMORY[0x2666E9F00](result, 0x1000C40451B5BE8);
  }

  *(this + 1) = 0;
  return result;
}

double __HGStats_private::StatsTimer::time(__HGStats_private::StatsTimer *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return HGProfiler::getTime(v1);
  }

  else
  {
    return 0.0;
  }
}

uint64_t __HGStats_private::StatsProfile::operator+=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = (*(*a2 + 24))(a2) + *(a1 + 8);
  *(a1 + 16) += (*(*a2 + 32))(a2);
  *(a1 + 24) += (*(*a2 + 40))(a2);
  *(a1 + 32) += (*(*a2 + 48))(a2);
  return a1;
}

uint64_t __HGStats_private::probe(__HGStats_private *this, __HGStats_private::StatsProfile *a2, double a3)
{
  v4 = a2;
  (*(*this + 24))(this);
  (*(*this + 24))(this);
  (*(*this + 32))(this);
  (*(*this + 40))(this);
  (*(*this + 48))(this);
  return v4;
}

uint64_t __HGStats_private::probe<HGNode>(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 48))(a1);
  (*(*a2 + 24))(a2);
  (*(*a2 + 24))(a2);
  (*(*a2 + 32))(a2);
  (*(*a2 + 48))(a2);
  return a1;
}

uint64_t __HGStats_private::probe<std::type_info const>(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 24))(a2);
  (*(*a2 + 24))(a2);
  (*(*a2 + 32))(a2);
  (*(*a2 + 48))(a2);
  return 0;
}

uint64_t __HGStats_private::probe<HGNode>(void *a1)
{
  v1 = *a1;
  (*(**a1 + 48))(*a1);
  return v1;
}

uint64_t HGStats::UnitStatsImpl::getProfiler(HGStats::UnitStatsImpl *this, HGNode *a2)
{
  v2 = *(this + 4);
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
      break;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  result = v3[6];
  if (!result)
  {
    operator new();
  }

  return result;
}

int64x2_t HGStats::UnitStatsImpl::renderTile(HGStats::UnitStatsImpl *this, HGNode *a2, uint64_t a3)
{
  if (*(this + 120) == 1)
  {
    v3 = *(this + 4);
    if (!v3)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v4 = v3;
        v5 = v3[2].u64[0];
        if (v5 <= a2)
        {
          break;
        }

        v3 = v4->i64[0];
        if (!v4->i64[0])
        {
          goto LABEL_8;
        }
      }

      if (v5 >= a2)
      {
        break;
      }

      v3 = v4->i64[1];
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    v4[3].i64[1] += a3;
    v6 = vdupq_n_s64(1uLL);
    v6.i64[0] = 16 * a3;
    result = vaddq_s64(v4[4], v6);
    v4[4] = result;
  }

  return result;
}

void HGStats::CoreStats<HGNode,__HGStats_private::StatsTimer>::clear(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v4 = *a1;
    v5 = *a1;
    do
    {
      v6 = *v5;
      v5 += 5;
      (*(v6 + 16))(v2);
      v4 += 40;
      v2 = v5;
    }

    while (v5 != v3);
    v2 = *a1;
    v3 = *(a1 + 8);
  }

  v7 = v2;
  if (v3 != v2)
  {
    v8 = v3 - 5;
    v9 = v8;
    v10 = v8;
    do
    {
      v11 = *v10;
      v10 -= 5;
      (*v11)(v9);
      v8 -= 5;
      v12 = v9 == v2;
      v9 = v10;
    }

    while (!v12);
    v7 = *a1;
  }

  *(a1 + 8) = v2;
  v13 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - v7) >> 3);
  if (v13 > 4)
  {
    if (v2 - v7 != 200)
    {
      v14 = (v7 + 200);
      if (v2 != v7 + 200)
      {
        v15 = (v2 - 40);
        v16 = v15;
        v17 = v15;
        do
        {
          v18 = *v17;
          v17 -= 5;
          (*v18)(v16);
          v15 -= 5;
          v12 = v16 == v14;
          v16 = v17;
        }

        while (!v12);
      }

      *(a1 + 8) = v14;
    }
  }

  else
  {
    std::vector<__HGStats_private::StatsTimer>::__append(a1, 5 - v13);
  }

  v19 = *(a1 + 24);
  v20 = (a1 + 32);
  if (v19 != (a1 + 32))
  {
    do
    {
      v21 = v19[6];
      if (v21)
      {
        MEMORY[0x2666E9F00](v21, 0x1000C40451B5BE8);
      }

      v19[6] = 0;
      v22 = v19[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v19[2];
          v12 = *v23 == v19;
          v19 = v23;
        }

        while (!v12);
      }

      v19 = v23;
    }

    while (v23 != v20);
  }

  std::__tree<HGNode *>::destroy(a1 + 24, *(a1 + 32));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v20;
  std::__tree<HGNode *>::destroy(a1 + 48, *(a1 + 56));
  *(a1 + 48) = a1 + 56;
  *(a1 + 56) = 0;
  v25 = *(a1 + 80);
  v24 = (a1 + 80);
  *(v24 - 2) = 0;
  std::__tree<HGNode *>::destroy((v24 - 1), v25);
  *v24 = 0;
  v24[1] = 0;
  *(v24 - 1) = v24;
}

void *HGStats::UnitStatsImpl::dump(void *result, void *a2, char a3)
{
  if ((a3 & 0xFE) != 0)
  {
    v75 = v6;
    v76 = v5;
    v77 = v3;
    v78 = v4;
    v8 = result;
    v9 = result[3];
    *v65 = &unk_28721EB48;
    memset(&v65[8], 0, 32);
    std::accumulate[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<HGNode *,__HGStats_private::StatsTimer>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsTimer>,void *> *,long>>,__HGStats_private::StatsProfile,__HGStats_private::TotalAccumulator<HGNode,__HGStats_private::StatsTimer>>(v9, v8 + 4, v65, v67);
    v10 = *v8;
    v11 = v8[1];
    v69 = &unk_28721EB48;
    v70 = 0u;
    v71 = 0u;
    if (v10 != v11)
    {
      v12 = v10;
      v13 = v10;
      do
      {
        *v65 = &unk_28721EB48;
        *&v65[24] = v71;
        *&v65[8] = v70;
        v14 = (*(*v12 + 24))(v12);
        *&v65[8] = v14 + *&v65[8];
        v15 = (*(*v12 + 32))(v12);
        *&v65[16] += v15;
        v16 = (*(*v12 + 40))(v12);
        *&v65[24] += v16;
        v17 = *v13;
        v13 += 5;
        v18 = (*(v17 + 48))(v12);
        *&v65[32] += v18;
        v73 = *&v65[8];
        v74 = *&v65[24];
        v70 = *&v65[8];
        v71 = *&v65[24];
        v10 += 5;
        v12 = v13;
      }

      while (v13 != v11);
    }

    v72 = &unk_28721EB48;
    v73 = v70;
    v74 = v71;
    v19 = v68;
    v20 = *&v70;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "/----- exec unit stats:\n", 24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
    v21 = a3;
    if ((a3 & 2) != 0)
    {
      v22 = v19 + v20;
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
      *(v23 + *(*v23 - 24) + 24) = 16;
      v24 = strlen(__HGStats_private::opNames[0]);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, __HGStats_private::opNames[0], v24);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " : ", 3);
      *v65 = *v8;
      *&v65[8] = *v65;
      *&v65[16] = v22;
      *&v65[24] = *v65;
      *&v65[32] = *v65;
      v66 = *v65;
      v27 = __HGStats_private::operator<<(v26, v65);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\n", 1);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
      *(v28 + *(*v28 - 24) + 24) = 16;
      v29 = strlen(off_27FE44AE0[0]);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, off_27FE44AE0[0], v29);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " : ", 3);
      *v65 = *v8 + 40;
      *&v65[8] = *v65;
      *&v65[16] = v22;
      *&v65[24] = *v65;
      *&v65[32] = *v65;
      v66 = *v65;
      v32 = __HGStats_private::operator<<(v31, v65);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "\n", 1);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
      *(v33 + *(*v33 - 24) + 24) = 16;
      v34 = strlen(off_27FE44AE8[0]);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, off_27FE44AE8[0], v34);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " : ", 3);
      *v65 = *v8 + 80;
      *&v65[8] = *v65;
      *&v65[16] = v22;
      *&v65[24] = *v65;
      *&v65[32] = *v65;
      v66 = *v65;
      v37 = __HGStats_private::operator<<(v36, v65);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "\n", 1);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
      *(v38 + *(*v38 - 24) + 24) = 16;
      v39 = strlen(off_27FE44AF0[0]);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, off_27FE44AF0[0], v39);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " : ", 3);
      *v65 = *v8 + 120;
      *&v65[8] = *v65;
      *&v65[16] = v22;
      *&v65[24] = *v65;
      *&v65[32] = *v65;
      v66 = *v65;
      v42 = __HGStats_private::operator<<(v41, v65);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "\n", 1);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
      *(v43 + *(*v43 - 24) + 24) = 16;
      v44 = strlen(off_27FE44AF8);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, off_27FE44AF8, v44);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " : ", 3);
      *v65 = *v8 + 160;
      *&v65[8] = *v65;
      *&v65[16] = v22;
      *&v65[24] = *v65;
      *&v65[32] = *v65;
      v66 = *v65;
      v47 = __HGStats_private::operator<<(v46, v65);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "\n", 1);
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
      *(v48 + *(*v48 - 24) + 24) = 16;
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "process", 7);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " : ", 3);
      *v65 = v67;
      *&v65[8] = v67;
      *&v65[16] = v22;
      *&v65[24] = v67;
      *&v65[32] = v67;
      v66 = v67;
      v51 = __HGStats_private::operator<<(v50, v65);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "\n", 1);
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
      *(v52 + *(*v52 - 24) + 24) = 16;
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "total time", 10);
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " : ", 3);
      v55 = *v54;
      *(v54 + *(*v54 - 24) + 8) = *(v54 + *(*v54 - 24) + 8) & 0xFFFFFEFB | 4;
      *(v54 + *(v55 - 24) + 24) = 7;
      v21 = a3;
      *(v54 + *(v55 - 24) + 16) = 2;
      v56 = MEMORY[0x2666E9B30](v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, " ms\n", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
      if ((a3 & 8) == 0)
      {
LABEL_7:
        if ((v21 & 0x20) == 0)
        {
          return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\\----------------- \n\n", 21);
        }

        goto LABEL_11;
      }
    }

    else if ((a3 & 8) == 0)
    {
      goto LABEL_7;
    }

    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| -- per node process times:\n", 29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "| read:\n", 8);
    std::for_each[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<HGNode *,__HGStats_private::StatsTimer>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsTimer>,void *> *,long>>,__HGStats_private::NodeStatsPrinter<HGNode,__HGStats_private::StatsTimer,(__HGStats_private::NodeStatsType)1>>(v8[3], v8 + 4, a2, v67);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| render:\n", 10);
    std::for_each[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<HGNode *,__HGStats_private::StatsTimer>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsTimer>,void *> *,long>>,__HGStats_private::NodeStatsPrinter<HGNode,__HGStats_private::StatsTimer,(__HGStats_private::NodeStatsType)0>>(v8[3], v8 + 4, a2, v67);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
    if ((v21 & 0x20) == 0)
    {
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\\----------------- \n\n", 21);
    }

LABEL_11:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| -- node in-N-out ROI ratios (per input):\n", 43);
    v58 = v8[6];
    v59 = v8 + 7;
    v69 = a2;
    *&v70 = 0;
    if (v58 != v59)
    {
      do
      {
        v60 = *(v58 + 3);
        *v65 = *(v58 + 2);
        *&v65[16] = v60;
        __HGStats_private::InOutRoiStatsPrinter<HGNode>::operator()(&v69, v65);
        v61 = v58[1];
        if (v61)
        {
          do
          {
            v62 = v61;
            v61 = *v61;
          }

          while (v61);
        }

        else
        {
          do
          {
            v62 = v58[2];
            v63 = *v62 == v58;
            v58 = v62;
          }

          while (!v63);
        }

        v58 = v62;
      }

      while (v62 != v59);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\\----------------- \n\n", 21);
  }

  return result;
}

void HGStats::GraphStatsImpl::GraphStatsImpl(HGStats::GraphStatsImpl *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<__HGStats_private::StatsProfile>::__append(this + 1, 5uLL);
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  *(this + 12) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 10) = this + 88;
  operator new();
}

void sub_25FCBFBFC(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  HGStats::CoreStats<HGNode,__HGStats_private::StatsProfile>::~CoreStats(v1);
  _Unwind_Resume(a1);
}

uint64_t HGStats::GraphStatsImpl::merge(HGStats::GraphStatsImpl *this, const HGStats::UnitStatsImpl *a2)
{
  result = __HGStats_private::OpStats<__HGStats_private::StatsProfile>::merge<__HGStats_private::StatsTimer>(this + 1, a2);
  v5 = *(a2 + 3);
  v26 = this + 32;
  if (v5 != (a2 + 32))
  {
    do
    {
      v23[0] = *(v5 + 4);
      v23[1] = &unk_28721EB00;
      v6 = *(v5 + 4);
      v24 = *(v5 + 3);
      v25 = v6;
      result = __HGStats_private::MergeNodeStats<HGNode,__HGStats_private::StatsTimer,HGNode,__HGStats_private::StatsProfile>::operator()(&v26, v23);
      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != (a2 + 32));
  }

  v10 = *(a2 + 6);
  if (v10 != (a2 + 56))
  {
    v11 = (this + 64);
    do
    {
      v12 = v10[2].u64[0];
      v13 = v10[2].u32[2];
      v14 = *v11;
      if (!*v11)
      {
LABEL_23:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v15 = v14;
          v16 = v14[2].u64[0];
          v17 = v15[2].u32[2];
          v18 = v17 > v13;
          if (v16 != v12)
          {
            v18 = v16 > v12;
          }

          if (!v18)
          {
            break;
          }

          v14 = v15->i64[0];
          if (!v15->i64[0])
          {
            goto LABEL_23;
          }
        }

        v19 = v17 < v13;
        v9 = v16 == v12;
        v20 = v16 < v12;
        if (v9)
        {
          v20 = v19;
        }

        if (!v20)
        {
          break;
        }

        v14 = v15->i64[1];
        if (!v14)
        {
          goto LABEL_23;
        }
      }

      v15[3] = vaddq_s64(v15[3], v10[3]);
      v21 = v10->i64[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v10[1].i64[0];
          v9 = *v22 == v10;
          v10 = v22;
        }

        while (!v9);
      }

      v10 = v22;
    }

    while (v22 != (a2 + 56));
  }

  return result;
}

uint64_t __HGStats_private::OpStats<__HGStats_private::StatsProfile>::merge<__HGStats_private::StatsTimer>(uint64_t *a1, void *a2)
{
  v4 = *a2;
  v5 = *a1;
  *(v5 + 8) = (*(**a2 + 24))(*a2) + *(v5 + 8);
  *(v5 + 16) += (*(*v4 + 32))(v4);
  *(v5 + 24) += (*(*v4 + 40))(v4);
  *(v5 + 32) += (*(*v4 + 48))(v4);
  v6 = *a1;
  v7 = *a2 + 40;
  *(v6 + 48) = (*(*v7 + 24))(v7) + *(v6 + 48);
  *(v6 + 56) += (*(*v7 + 32))(v7);
  *(v6 + 64) += (*(*v7 + 40))(v7);
  *(v6 + 72) += (*(*v7 + 48))(v7);
  v8 = *a1;
  v9 = *a2 + 80;
  *(v8 + 88) = (*(*v9 + 24))(v9) + *(v8 + 88);
  *(v8 + 96) += (*(*v9 + 32))(v9);
  *(v8 + 104) += (*(*v9 + 40))(v9);
  *(v8 + 112) += (*(*v9 + 48))(v9);
  v10 = *a1;
  v11 = *a2 + 120;
  *(v10 + 128) = (*(*v11 + 24))(v11) + *(v10 + 128);
  *(v10 + 136) += (*(*v11 + 32))(v11);
  *(v10 + 144) += (*(*v11 + 40))(v11);
  *(v10 + 152) += (*(*v11 + 48))(v11);
  v12 = *a2;
  v13 = *a1;
  v14 = v12[20];
  v12 += 20;
  *(v13 + 168) = (*(v14 + 24))(v12) + *(v13 + 168);
  *(v13 + 176) += (*(*v12 + 32))(v12);
  *(v13 + 184) += (*(*v12 + 40))(v12);
  result = (*(*v12 + 48))(v12);
  *(v13 + 192) += result;
  return result;
}

void HGStats::CoreStats<HGNode,__HGStats_private::StatsProfile>::clear(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v4 = *a1;
    v5 = *a1;
    do
    {
      v6 = *v5;
      v5 += 5;
      (*(v6 + 16))(v2);
      v4 += 40;
      v2 = v5;
    }

    while (v5 != v3);
    v2 = *a1;
    v3 = *(a1 + 8);
  }

  v7 = v2;
  if (v3 != v2)
  {
    v8 = v3 - 5;
    v9 = v8;
    v10 = v8;
    do
    {
      v11 = *v10;
      v10 -= 5;
      (*v11)(v9);
      v8 -= 5;
      v12 = v9 == v2;
      v9 = v10;
    }

    while (!v12);
    v7 = *a1;
  }

  *(a1 + 8) = v2;
  v13 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - v7) >> 3);
  if (v13 > 4)
  {
    if (v2 - v7 != 200)
    {
      v14 = (v7 + 200);
      if (v2 != v7 + 200)
      {
        v15 = (v2 - 40);
        v16 = v15;
        v17 = v15;
        do
        {
          v18 = *v17;
          v17 -= 5;
          (*v18)(v16);
          v15 -= 5;
          v12 = v16 == v14;
          v16 = v17;
        }

        while (!v12);
      }

      *(a1 + 8) = v14;
    }
  }

  else
  {
    std::vector<__HGStats_private::StatsProfile>::__append(a1, 5 - v13);
  }

  std::__tree<HGNode *>::destroy(a1 + 24, *(a1 + 32));
  *(a1 + 24) = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  std::__tree<HGNode *>::destroy(a1 + 48, *(a1 + 56));
  *(a1 + 48) = a1 + 56;
  *(a1 + 56) = 0;
  v20 = *(a1 + 80);
  v19 = (a1 + 80);
  *(v19 - 2) = 0;
  std::__tree<HGNode *>::destroy((v19 - 1), v20);
  *v19 = 0;
  v19[1] = 0;
  *(v19 - 1) = v19;
}

void HGStats::GraphStatsImpl::dump(uint64_t a1, void *a2, __int16 a3)
{
  Time = HGProfiler::getTime(*a1);
  if ((a3 & 0x100) != 0)
  {
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "+ Helium Graph Render Time : ", 29);
    v8 = *v7;
    *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v7 + *(v8 - 24) + 24) = 7;
    *(v7 + *(v8 - 24) + 16) = 2;
    v9 = MEMORY[0x2666E9B30](Time);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ms\n", 4);
  }

  if ((a3 & 0xFE00) != 0)
  {
    v10 = *(a1 + 32);
    *&v28[0] = &unk_28721EBD0;
    *(&v28[0] + 1) = &unk_28721EB48;
    memset(&v28[1], 0, 32);
    v29 = &unk_28721EB48;
    v30 = 0u;
    v31 = 0u;
    v32 = &unk_28721EB48;
    v33 = 0u;
    v34 = 0u;
    std::accumulate[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::RRStatsProfile,__HGStats_private::ReadRenderAccumulator<HGNode,__HGStats_private::StatsProfile>>(v10, (a1 + 40), v28, v27);
    __HGStats_private::OpStats<__HGStats_private::StatsProfile>::getTotalStats((a1 + 8), v28);
    v11 = *&v27[12];
    v12 = *(v28 + 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "/----- Graph Render Stats:\n", 27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
    if ((a3 & 0x200) != 0)
    {
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
      *(v13 + *(*v13 - 24) + 24) = 16;
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "wall time", 9);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " : ", 3);
      v16 = *v15;
      *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFEFB | 4;
      *(v15 + *(v16 - 24) + 24) = 7;
      *(v15 + *(v16 - 24) + 16) = 2;
      v17 = MEMORY[0x2666E9B30](Time);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " ms\n", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
      HGStats::CoreStats<HGNode,__HGStats_private::StatsProfile>::printOpStats((a1 + 8), a2, v27, v11 + v12);
      if ((a3 & 0x800) == 0)
      {
LABEL_6:
        if ((a3 & 0x1000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((a3 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| -- per node process times:\n", 29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "| read:\n", 8);
    std::for_each[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::NodeStatsPrinter<HGNode,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)1>>(*(a1 + 32), (a1 + 40), a2, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| render:\n", 10);
    std::for_each[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::NodeStatsPrinter<HGNode,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)0>>(*(a1 + 32), (a1 + 40), a2, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
    if ((a3 & 0x1000) == 0)
    {
LABEL_7:
      if ((a3 & 0x2000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_14:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| -- node ROI pixels (defined & used pixels per node):\n", 55);
    v19 = *(a1 + 80);
    v36[0] = a2;
    if (v19 != (a1 + 88))
    {
      do
      {
        *&v35[0] = v19[4];
        *(v35 + 8) = *(v19 + 5);
        __HGStats_private::NodePixelsPrinter<HGNode>::operator()(v36, v35);
        v20 = v19[1];
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
            v21 = v19[2];
            v22 = *v21 == v19;
            v19 = v21;
          }

          while (!v22);
        }

        v19 = v21;
      }

      while (v21 != (a1 + 88));
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
    if ((a3 & 0x2000) == 0)
    {
LABEL_8:
      if ((a3 & 0x400) == 0)
      {
LABEL_10:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\\----------------- \n\n", 21);
        return;
      }

LABEL_9:
      HGStats::CoreStats<HGNode,__HGStats_private::StatsProfile>::printCondensed(a1 + 8, a2, v27);
      goto LABEL_10;
    }

LABEL_24:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| -- node in-N-out ROI ratios (per input):\n", 43);
    v23 = *(a1 + 56);
    v36[0] = a2;
    v36[1] = 0;
    if (v23 != (a1 + 64))
    {
      do
      {
        v24 = *(v23 + 3);
        v35[0] = *(v23 + 2);
        v35[1] = v24;
        __HGStats_private::InOutRoiStatsPrinter<HGNode>::operator()(v36, v35);
        v25 = v23[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v23[2];
            v22 = *v26 == v23;
            v23 = v26;
          }

          while (!v22);
        }

        v23 = v26;
      }

      while (v26 != (a1 + 64));
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }
}

double __HGStats_private::OpStats<__HGStats_private::StatsProfile>::getTotalStats@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v9 = 0u;
  v10 = 0u;
  if (*a1 != v4)
  {
    v5 = *a1;
    v6 = *a1;
    do
    {
      *&v11 = (*(*v5 + 24))(v5) + *&v9;
      *(&v11 + 1) = *(&v9 + 1) + (*(*v5 + 32))(v5);
      *&v12 = v10 + (*(*v5 + 40))(v5);
      v7 = *v6;
      v6 += 5;
      *(&v12 + 1) = *(&v10 + 1) + (*(v7 + 48))(v5);
      v9 = v11;
      v10 = v12;
      v3 += 5;
      v5 = v6;
    }

    while (v6 != v4);
  }

  *a2 = &unk_28721EB48;
  *(a2 + 8) = v9;
  result = *&v10;
  *(a2 + 24) = v10;
  return result;
}

void *HGStats::CoreStats<HGNode,__HGStats_private::StatsProfile>::printOpStats(uint64_t *a1, void *a2, uint64_t a3, double a4)
{
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
  *(v8 + *(*v8 - 24) + 24) = 16;
  v9 = strlen(__HGStats_private::opNames[0]);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, __HGStats_private::opNames[0], v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " : ", 3);
  v49 = *a1;
  v50 = v49;
  v51 = a4;
  v52 = v49;
  v53 = v49;
  v54 = v49;
  v12 = __HGStats_private::operator<<(v11, &v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
  *(v13 + *(*v13 - 24) + 24) = 16;
  v14 = strlen(off_27FE44AE0[0]);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, off_27FE44AE0[0], v14);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " : ", 3);
  v49 = *a1 + 40;
  v50 = v49;
  v51 = a4;
  v52 = v49;
  v53 = v49;
  v54 = v49;
  v17 = __HGStats_private::operator<<(v16, &v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
  *(v18 + *(*v18 - 24) + 24) = 16;
  v19 = strlen(off_27FE44AE8[0]);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, off_27FE44AE8[0], v19);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " : ", 3);
  v49 = *a1 + 80;
  v50 = v49;
  v51 = a4;
  v52 = v49;
  v53 = v49;
  v54 = v49;
  v22 = __HGStats_private::operator<<(v21, &v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "\n", 1);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
  *(v23 + *(*v23 - 24) + 24) = 16;
  v24 = strlen(off_27FE44AF0[0]);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, off_27FE44AF0[0], v24);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " : ", 3);
  v49 = *a1 + 120;
  v50 = v49;
  v51 = a4;
  v52 = v49;
  v53 = v49;
  v54 = v49;
  v27 = __HGStats_private::operator<<(v26, &v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\n", 1);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
  *(v28 + *(*v28 - 24) + 24) = 16;
  v29 = strlen(off_27FE44AF8);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, off_27FE44AF8, v29);
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " : ", 3);
  v49 = *a1 + 160;
  v50 = v49;
  v51 = a4;
  v52 = v49;
  v53 = v49;
  v54 = v49;
  v32 = __HGStats_private::operator<<(v31, &v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "\n", 1);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
  *(v33 + *(*v33 - 24) + 24) = 16;
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "process", 7);
  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " : ", 3);
  v49 = a3 + 88;
  v50 = a3 + 88;
  v51 = a4;
  v52 = a3 + 88;
  v53 = a3 + 88;
  v54 = a3 + 88;
  v36 = __HGStats_private::operator<<(v35, &v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "\n", 1);
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|      total time : ", 20);
  v38 = *v37;
  *(v37 + *(*v37 - 24) + 8) = *(v37 + *(*v37 - 24) + 8) & 0xFFFFFEFB | 4;
  *(v37 + *(v38 - 24) + 24) = 7;
  *(v37 + *(v38 - 24) + 16) = 2;
  v39 = MEMORY[0x2666E9B30](a4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " ms\n", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| -- process time breakdown:\n", 29);
  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
  *(v40 + *(*v40 - 24) + 24) = 16;
  v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "read", 4);
  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " : ", 3);
  v49 = a3 + 48;
  v50 = a3 + 48;
  v51 = a4;
  v52 = a3 + 48;
  v53 = a3 + 48;
  v54 = a3 + 48;
  v43 = __HGStats_private::operator<<(v42, &v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "\n", 1);
  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|", 1);
  *(v44 + *(*v44 - 24) + 24) = 16;
  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "render", 6);
  v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " : ", 3);
  v49 = a3 + 8;
  v50 = a3 + 8;
  v51 = a4;
  v52 = a3 + 8;
  v53 = a3 + 8;
  v54 = a3 + 8;
  v47 = __HGStats_private::operator<<(v46, &v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "\n", 1);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
}

void *HGStats::CoreStats<HGNode,__HGStats_private::StatsProfile>::printCondensed(uint64_t a1, void *a2, uint64_t a3)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| -- per node stats breakdown:\n", 31);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| read:\n", 8);
  v6 = *(a1 + 24);
  v7 = (a1 + 32);
  v17 = a2;
  v18 = a3;
  v19 = a1 + 72;
  v20 = a1 + 48;
  if (v6 != (a1 + 32))
  {
    do
    {
      v21 = v6[4];
      v22 = &unk_28721EB48;
      v8 = *(v6 + 4);
      v23 = *(v6 + 3);
      v24 = v8;
      __HGStats_private::NodeStatsVerbosePrinter<HGNode,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)1>::operator()(&v17, &v21);
      v9 = v6[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v7);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| render:\n", 10);
  v12 = *(a1 + 24);
  v17 = a2;
  v18 = a3;
  v19 = a1 + 72;
  v20 = a1 + 48;
  if (v12 != v7)
  {
    do
    {
      v21 = v12[4];
      v22 = &unk_28721EB48;
      v13 = *(v12 + 4);
      v23 = *(v12 + 3);
      v24 = v13;
      __HGStats_private::NodeStatsVerbosePrinter<HGNode,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)0>::operator()(&v17, &v21);
      v14 = v12[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v12[2];
          v11 = *v15 == v12;
          v12 = v15;
        }

        while (!v11);
      }

      v12 = v15;
    }

    while (v15 != v7);
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
}

uint64_t HGStats::CoreStats<HGNode,__HGStats_private::StatsProfile>::probes(void *a1)
{
  v2 = a1[3];
  v18 = &unk_28721EBD0;
  *v19 = &unk_28721EB48;
  memset(&v19[8], 0, 32);
  v20 = &unk_28721EB48;
  v21 = 0u;
  v22 = 0u;
  v23 = &unk_28721EB48;
  v24 = 0u;
  v25 = 0u;
  std::accumulate[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::RRStatsProfile,__HGStats_private::ReadRenderAccumulator<HGNode,__HGStats_private::StatsProfile>>(v2, a1 + 4, &v18, v13);
  __HGStats_private::OpStats<__HGStats_private::StatsProfile>::getTotalStats(a1, v12);
  v3 = *a1;
  v18 = &unk_28721EB48;
  *&v19[16] = v15;
  *v19 = v14;
  v4 = v3[5];
  v3 += 5;
  v5 = (*(v4 + 24))(v3);
  *v19 = v5 + *v19;
  v6 = (*(*v3 + 32))(v3);
  *&v19[8] += v6;
  v7 = (*(*v3 + 40))(v3);
  *&v19[16] += v7;
  (*(*v3 + 48))(v3);
  *&v19[16] = v17;
  v18 = &unk_28721EB48;
  *v19 = v16;
  v8 = (*(v12[0] + 24))(v12);
  *v19 = v8 + *v19;
  v9 = (*(v12[0] + 32))(v12);
  *&v19[8] += v9;
  v10 = (*(v12[0] + 40))(v12);
  *&v19[16] += v10;
  (*(v12[0] + 48))(v12);
  return 0;
}

void *HGStats::RendererStatsImpl::dump(void *result, void *a2, int a3)
{
  v5 = result;
  if ((a3 & 0x10000) != 0)
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "+ Total Renderer Stats (avg time) : ", 36);
    v7 = *v6;
    *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v6 + *(v7 - 24) + 24) = 7;
    *(v6 + *(v7 - 24) + 16) = 2;
    v8 = MEMORY[0x2666E9B30](*(v5 + 1) / *v5);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " ms (", 5);
    v10 = MEMORY[0x2666E9BA0](v9, *v5);
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ")\n", 2);
  }

  if ((a3 & 0xFE0000) != 0)
  {
    v11 = v5[5];
    *&v36[0] = &unk_28721EBD0;
    *(&v36[0] + 1) = &unk_28721EB48;
    memset(&v36[1], 0, 32);
    v37 = &unk_28721EB48;
    v38 = 0u;
    v39 = 0u;
    v40 = &unk_28721EB48;
    v41 = 0u;
    v42 = 0u;
    std::accumulate[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::RRStatsProfile,__HGStats_private::ReadRenderAccumulator<std::type_info const,__HGStats_private::StatsProfile>>(v11, v5 + 6, v36, v35);
    __HGStats_private::OpStats<__HGStats_private::StatsProfile>::getTotalStats(v5 + 2, v36);
    v12 = *&v35[12];
    v13 = *(v36 + 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "/----- Total Renderer Stats:\n", 29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
    if ((a3 & 0x20000) != 0)
    {
      v14 = v12 + v13;
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| # of renders : ", 17);
      v16 = MEMORY[0x2666E9BA0](v15, *v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
      v17 = *a2;
      *(a2 + *(*a2 - 24) + 8) = *(a2 + *(*a2 - 24) + 8) & 0xFFFFFEFB | 4;
      *(a2 + *(v17 - 24) + 24) = 7;
      *(a2 + *(v17 - 24) + 16) = 2;
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|  wall time : ", 15);
      v19 = MEMORY[0x2666E9B30](v18, *(v5 + 1));
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " ms -> ", 7);
      v21 = MEMORY[0x2666E9B30](v20, *(v5 + 1) / *v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " ms/render\n", 11);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| total time : ", 15);
      v23 = MEMORY[0x2666E9B30](v22, v14);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " ms -> ", 7);
      v25 = MEMORY[0x2666E9B30](v24, v14 / *v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " ms/render\n", 11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
      HGStats::CoreStats<HGNode,__HGStats_private::StatsProfile>::printOpStats(v5 + 2, a2, v35, v14);
      if ((a3 & 0x80000) == 0)
      {
LABEL_6:
        if ((a3 & 0x100000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((a3 & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| -- per node process times:\n", 29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "| read:\n", 8);
    std::for_each[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::NodeStatsPrinter<std::type_info const,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)1>>(v5[5], v5 + 6, a2, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| render:\n", 10);
    std::for_each[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::NodeStatsPrinter<std::type_info const,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)0>>(v5[5], v5 + 6, a2, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
    if ((a3 & 0x100000) == 0)
    {
LABEL_7:
      if ((a3 & 0x200000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_14:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| -- node ROI pixels (defined & used pixels per node):\n", 55);
    v27 = v5[11];
    v44[0] = a2;
    if (v27 != v5 + 12)
    {
      do
      {
        *&v43[0] = v27[4];
        *(v43 + 8) = *(v27 + 5);
        __HGStats_private::NodePixelsPrinter<std::type_info const>::operator()(v44, v43);
        v28 = v27[1];
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v27[2];
            v30 = *v29 == v27;
            v27 = v29;
          }

          while (!v30);
        }

        v27 = v29;
      }

      while (v29 != v5 + 12);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
    if ((a3 & 0x200000) == 0)
    {
LABEL_8:
      if ((a3 & 0x40000) == 0)
      {
        return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\\----------------- \n\n", 21);
      }

LABEL_9:
      HGStats::CoreStats<std::type_info const,__HGStats_private::StatsProfile>::printCondensed((v5 + 2), a2, v35);
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\\----------------- \n\n", 21);
    }

LABEL_24:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| -- node in-N-out ROI ratios (per input):\n", 43);
    v31 = v5[8];
    v44[0] = a2;
    v44[1] = 0;
    if (v31 != v5 + 9)
    {
      do
      {
        v32 = *(v31 + 3);
        v43[0] = *(v31 + 2);
        v43[1] = v32;
        __HGStats_private::InOutRoiStatsPrinter<std::type_info const>::operator()(v44, v43);
        v33 = v31[1];
        if (v33)
        {
          do
          {
            v34 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v34 = v31[2];
            v30 = *v34 == v31;
            v31 = v34;
          }

          while (!v30);
        }

        v31 = v34;
      }

      while (v34 != v5 + 9);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
    if ((a3 & 0x40000) == 0)
    {
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\\----------------- \n\n", 21);
    }

    goto LABEL_9;
  }

  return result;
}

void *HGStats::CoreStats<std::type_info const,__HGStats_private::StatsProfile>::printCondensed(uint64_t a1, void *a2, uint64_t a3)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| -- per node stats breakdown:\n", 31);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| read:\n", 8);
  v6 = *(a1 + 24);
  v7 = (a1 + 32);
  v17 = a2;
  v18 = a3;
  v19 = a1 + 72;
  v20 = a1 + 48;
  if (v6 != (a1 + 32))
  {
    do
    {
      v21 = v6[4];
      v22 = &unk_28721EB48;
      v8 = *(v6 + 4);
      v23 = *(v6 + 3);
      v24 = v8;
      __HGStats_private::NodeStatsVerbosePrinter<std::type_info const,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)1>::operator()(&v17, &v21);
      v9 = v6[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v7);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "| render:\n", 10);
  v12 = *(a1 + 24);
  v17 = a2;
  v18 = a3;
  v19 = a1 + 72;
  v20 = a1 + 48;
  if (v12 != v7)
  {
    do
    {
      v21 = v12[4];
      v22 = &unk_28721EB48;
      v13 = *(v12 + 4);
      v23 = *(v12 + 3);
      v24 = v13;
      __HGStats_private::NodeStatsVerbosePrinter<std::type_info const,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)0>::operator()(&v17, &v21);
      v14 = v12[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v12[2];
          v11 = *v15 == v12;
          v12 = v15;
        }

        while (!v11);
      }

      v12 = v15;
    }

    while (v15 != v7);
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|\n", 2);
}

uint64_t HGStats::CoreStats<std::type_info const,__HGStats_private::StatsProfile>::probes(void *a1)
{
  v2 = a1[3];
  v18 = &unk_28721EBD0;
  *v19 = &unk_28721EB48;
  memset(&v19[8], 0, 32);
  v20 = &unk_28721EB48;
  v21 = 0u;
  v22 = 0u;
  v23 = &unk_28721EB48;
  v24 = 0u;
  v25 = 0u;
  std::accumulate[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::RRStatsProfile,__HGStats_private::ReadRenderAccumulator<std::type_info const,__HGStats_private::StatsProfile>>(v2, a1 + 4, &v18, v13);
  __HGStats_private::OpStats<__HGStats_private::StatsProfile>::getTotalStats(a1, v12);
  v3 = *a1;
  v18 = &unk_28721EB48;
  *&v19[16] = v15;
  *v19 = v14;
  v4 = v3[5];
  v3 += 5;
  v5 = (*(v4 + 24))(v3);
  *v19 = v5 + *v19;
  v6 = (*(*v3 + 32))(v3);
  *&v19[8] += v6;
  v7 = (*(*v3 + 40))(v3);
  *&v19[16] += v7;
  (*(*v3 + 48))(v3);
  *&v19[16] = v17;
  v18 = &unk_28721EB48;
  *v19 = v16;
  v8 = (*(v12[0] + 24))(v12);
  *v19 = v8 + *v19;
  v9 = (*(v12[0] + 32))(v12);
  *&v19[8] += v9;
  v10 = (*(v12[0] + 40))(v12);
  *&v19[16] += v10;
  (*(v12[0] + 48))(v12);
  return 0;
}

HGStats::ProfilerScopeGuard *HGStats::ProfilerScopeGuard::ProfilerScopeGuard(HGStats::ProfilerScopeGuard *this, HGStats::UnitStatsImpl **a2, HGNode *a3, uint64_t a4)
{
  v5 = *a2;
  if (*(*a2 + 120))
  {
    *this = v5;
    *(this + 1) = HGStats::UnitStatsImpl::getProfiler(v5, a3);
    HGStats::UnitStatsImpl::renderTile(*this, a3, a4);
    v8 = *this;
    v9 = *(this + 1);
    v14 = v9;
    if (*(v8 + 120) == 1)
    {
      v11 = *(v8 + 96);
      v10 = *(v8 + 104);
      v12 = v8 + 96;
      if (v11 != v10)
      {
        HGProfiler::stop(*(v10 - 8));
      }

      HGProfiler::start(v9);
      std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](v12, &v14);
    }

    return this;
  }

  else
  {
    *this = 0;
    return this;
  }
}

void *HGStats::ProfilerScopeGuard::ProfilerScopeGuard(void *result, uint64_t a2, unsigned int a3)
{
  v3 = *a2;
  if (*(*a2 + 120))
  {
    *result = v3;
    v4 = *(*v3 + 40 * a3 + 8);
    if (!v4)
    {
      operator new();
    }

    result[1] = v4;
    v9 = v4;
    v5 = result;
    v7 = v3[12];
    v6 = v3[13];
    v8 = (v3 + 12);
    if (v7 != v6)
    {
      HGProfiler::stop(*(v6 - 8));
    }

    HGProfiler::start(v4);
    std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](v8, &v9);
    return v5;
  }

  else
  {
    *result = 0;
  }

  return result;
}