uint64_t sub_100000F08(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_100000F80(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_100001050(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000010AC(exception, a1);
}

std::logic_error *sub_1000010AC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void *sub_1000010F4(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100001038();
    }

    v6 = a1;
    v7 = a2;
    if ((a3 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a3 | 7) + 1;
    }

    a1 = operator new(v8);
    v6[1] = a3;
    v6[2] = v8 | 0x8000000000000000;
    *v6 = a1;
    a2 = v7;
    v4 = a3 + 1;
  }

  else
  {
    a1[23] = a3;
    v4 = a3 + 1;
  }

  return memmove(a1, a2, v4);
}

uint64_t sub_1000011A0(uint64_t a1)
{
  std::ostream::sentry::sentry();
  std::ostream::sentry::~sentry();
  return a1;
}

void sub_1000012EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1000012CCLL);
}

uint64_t sub_100001354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100001038();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_10000152C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100001548()
{
  exception = __cxa_allocate_exception(8uLL);
}

void TraceCommand::GetTraceProperty(uint64_t *a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (!*a1)
  {
    goto LABEL_13;
  }

  v9 = a3;
  v10 = a2;
  if ((a2[23] & 0x8000000000000000) != 0)
  {
    if (!*(a2 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (!a2[23])
  {
    goto LABEL_13;
  }

  if ((a3[23] & 0x8000000000000000) != 0)
  {
    if (*(a3 + 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    *a6 = -534716414;
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
    *(a6 + 8) = 0;
    return;
  }

  if (!a3[23])
  {
    goto LABEL_13;
  }

LABEL_8:
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v12) == &_xpc_type_dictionary)
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  if (v10[23] < 0)
  {
    v10 = *v10;
  }

  v14 = xpc_string_create(v10);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, abm::kKeyTraceName, v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  if (v9[23] < 0)
  {
    v9 = *v9;
  }

  v16 = xpc_string_create(v9);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, abm::kKeyTracePropertyName, v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  if (a5)
  {
    v18 = xpc_int64_create(a5);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    xpc_dictionary_set_value(v13, abm::kKeyTimeout, v18);
    v19 = xpc_null_create();
    xpc_release(v18);
    xpc_release(v19);
  }

  v20 = xpc_null_create();
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a6 = v21;
  *(a6 + 16) = v21;
  v22 = a1[1];
  v36 = *a1;
  v37 = v22;
  object = v20;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = abm::kCommandGetTraceProperty;
  v24 = strlen(abm::kCommandGetTraceProperty);
  if (v24 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001038();
  }

  v25 = v24;
  if (v24 >= 0x17)
  {
    if ((v24 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v24 | 7) + 1;
    }

    p_dst = operator new(v27);
    *(&__dst + 1) = v25;
    v35 = v27 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_38;
  }

  HIBYTE(v35) = v24;
  p_dst = &__dst;
  if (v24)
  {
LABEL_38:
    memmove(p_dst, v23, v25);
  }

  *(p_dst + v25) = 0;
  abm::client::PerformCommand();
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst);
  }

  v28 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
    v29 = object;
    if (object)
    {
LABEL_47:
      if (xpc_get_type(v29) == &_xpc_type_dictionary)
      {
        xpc_retain(v29);
        v30 = v29;
      }

      else
      {
        v30 = xpc_null_create();
      }

      goto LABEL_50;
    }
  }

  else
  {
    v29 = object;
    if (object)
    {
      goto LABEL_47;
    }
  }

  v29 = xpc_null_create();
  if (v29)
  {
    goto LABEL_47;
  }

  v30 = xpc_null_create();
  v29 = 0;
LABEL_50:
  xpc_release(v29);
  if (!*a6 && xpc_get_type(v30) == &_xpc_type_dictionary)
  {
    value = xpc_dictionary_get_value(v30, abm::kKeyTracePropertyValue);
    v33 = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v33 = xpc_null_create();
    }

    xpc::dyn_cast_or_default(&__dst, &v33, abm::kUnknown, v32);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = __dst;
    *(a4 + 16) = v35;
    HIBYTE(v35) = 0;
    LOBYTE(__dst) = 0;
    xpc_release(v33);
  }

  xpc_release(v30);
  xpc_release(v13);
}

void sub_1000019B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  xpc_release(object);
  xpc_release(v19);
  if (*(v17 + 31) < 0)
  {
    operator delete(*(v17 + 8));
  }

  xpc_release(v18);
  _Unwind_Resume(a1);
}

void ***sub_100001A9C(void ***a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
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

void sub_100001B10()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100001B5C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100001BB8(exception, a1);
}

std::logic_error *sub_100001BB8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

char *sub_100001BEC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100001D40();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v2) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100001B10();
    }

    v8 = operator new(24 * v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[8 * (v3 >> 3)];
  v16 = v9;
  v10 = &v8[24 * v7];
  v17 = v9;
  if (*(a2 + 23) < 0)
  {
    sub_1000010F4(v9, *a2, *(a2 + 8));
    v9 = v16;
    v11 = v17;
    v2 = *a1;
    v3 = *(a1 + 8) - *a1;
  }

  else
  {
    *v9 = *a2;
    *(v9 + 2) = *(a2 + 16);
    v11 = &v8[8 * (v3 >> 3)];
  }

  v12 = v11 + 24;
  v13 = &v9[-v3];
  memcpy(&v9[-v3], v2, v3);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = v10;
  if (v14)
  {
    operator delete(v14);
  }

  return v12;
}

void sub_100001D2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100001D58(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100001D58(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
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

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100001DC0(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      sub_100001038();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **sub_100001E80(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      sub_100001038();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

void sub_100002104(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1000020C4);
  }

  __cxa_rethrow();
}

uint64_t config::hw::watch(config::hw *this)
{
  v1 = pthread_mutex_lock(&stru_100024238);
  v2 = off_100024278;
  if (!off_100024278)
  {
    ctu::Gestalt::create_default_global(&v9, v1);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_100024278 + 1);
    off_100024278 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_100024278;
  }

  v6 = *(&off_100024278 + 1);
  if (*(&off_100024278 + 1))
  {
    atomic_fetch_add_explicit((*(&off_100024278 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_100024238);
  result = (*(*v2 + 152))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

uint64_t sub_100002364(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_100002440(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002440(a1, *a2);
    sub_100002440(a1, *(a2 + 8));
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v4 = a2;

LABEL_6:
        operator delete(v4);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 32));
    v4 = a2;

    goto LABEL_6;
  }
}

uint64_t *sub_1000024DC(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t sub_100002688()
{
  if ((byte_100024300 & 1) == 0)
  {
    byte_100024300 = 1;
    return __cxa_atexit(sub_100002364, &stru_100024238, &_mh_execute_header);
  }

  return result;
}

void sub_100002E28(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = [objc_msgSend(a3 "localizedDescription")];
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not open: %s", &v4, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 40) = [[OSLogEventStream alloc] initWithSource:a2];
  }
}

void sub_100002F04(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if ([a2 type] == 1024)
  {
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ 0x%05llx 0x%llx %d %@(%@):%@ [%@] %@\n", +[NSDate dateWithTimeInterval:sinceDate:](NSDate, "dateWithTimeInterval:sinceDate:", [a2 date], objc_msgSend(objc_msgSend(a2, "timeZone"), "secondsFromGMTForDate:", objc_msgSend(a2, "date"))), objc_msgSend(a2, "threadIdentifier"), objc_msgSend(a2, "activityIdentifier"), objc_msgSend(a2, "processIdentifier"), objc_msgSend(a2, "process"), objc_msgSend(a2, "sender"), objc_msgSend(a2, "subsystem"), objc_msgSend(a2, "category"), objc_msgSend(a2, "composedMessage"));
    if (v5)
    {
      v6 = v5;
      [*(a1 + 32) seekToEndOfFile];
      [*(a1 + 32) writeData:{-[NSString dataUsingEncoding:](v6, "dataUsingEncoding:", 4)}];
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100003088(uint64_t a1, uint64_t a2)
{
  if (a2 != 5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Invalid oslog stream: reason = %lu", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void (__cdecl ***sub_100003140(void (__cdecl ***a1)(std::istringstream *__hidden this), __int128 *a2))(std::istringstream *__hidden this)
{
  a1[21] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  a1[1] = 0;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 2);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  sub_10000C804((a1 + 2), a2, 8);
  return a1;
}

void sub_100003290(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

char *sub_1000032C4(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v6 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

uint64_t sub_100003344(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  std::ios::~ios();
  return a1;
}

double CommandShell::convertCmdArgsToList@<D0>(CommandShell *this@<X0>, const char **a2@<X1>, void *a3@<X8>)
{
  *a3 = a3;
  a3[1] = a3;
  a3[2] = 0;
  if (this >= 1)
  {
    for (i = this; i; --i)
    {
      v7 = *a2;
      v8 = strlen(*a2);
      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100001038();
      }

      v9 = v8;
      if (v8 >= 0x17)
      {
        if ((v8 | 7) == 0x17)
        {
          v11 = 25;
        }

        else
        {
          v11 = (v8 | 7) + 1;
        }

        p_dst = operator new(v11);
        *(&__dst + 1) = v9;
        v17 = v11 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v17) = v8;
        p_dst = &__dst;
        if (!v8)
        {
          goto LABEL_12;
        }
      }

      memmove(p_dst, v7, v9);
LABEL_12:
      *(p_dst + v9) = 0;
      v12 = operator new(0x28uLL);
      result = *&__dst;
      v12[1] = __dst;
      *(v12 + 4) = v17;
      v14 = a3[1];
      v15 = a3[2];
      *v12 = a3;
      *(v12 + 1) = v14;
      *v14 = v12;
      a3[1] = v12;
      a3[2] = v15 + 1;
      ++a2;
    }
  }

  return result;
}

void sub_100003588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1000032C4(v15);
    _Unwind_Resume(a1);
  }

  sub_1000032C4(v15);
  _Unwind_Resume(a1);
}

void sub_100003858(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x100003818);
  }

  __cxa_rethrow();
}

void sub_100003908(void *a1, char **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v22 = &v22;
  v23 = &v22;
  v24 = 0;
  v2 = a2[2];
  if (!v2)
  {
    return;
  }

  do
  {
    memset(__p, 170, sizeof(__p));
    v5 = *a2;
    if ((*a2)[39] < 0)
    {
      sub_1000010F4(__p, *(v5 + 2), *(v5 + 3));
      v5 = *a2;
      v2 = a2[2];
    }

    else
    {
      *__p = *(v5 + 1);
      __p[2] = *(v5 + 4);
    }

    v7 = *v5;
    v6 = *(v5 + 1);
    *(v7 + 8) = v6;
    *v6 = v7;
    a2[2] = v2 - 1;
    if (v5[39] < 0)
    {
      operator delete(*(v5 + 2));
      operator delete(v5);
      v8 = SHIBYTE(__p[2]);
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
LABEL_9:
        if (v8 != 2 || LOWORD(__p[0]) != 9766)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    else
    {
      operator delete(v5);
      v8 = SHIBYTE(__p[2]);
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    if (__p[1] != 2 || *__p[0] != 9766)
    {
LABEL_15:
      v9 = operator new(0x28uLL);
      v10 = v9;
      *v9 = 0;
      v9[1] = 0;
      if (v8 < 0)
      {
        sub_1000010F4(v9 + 16, __p[0], __p[1]);
      }

      else
      {
        *(v9 + 1) = *__p;
        v9[4] = __p[2];
      }

      v11 = v23;
      v12 = v24;
      *v10 = &v22;
      v10[1] = v11;
      *v11 = v10;
      v23 = v10;
      v24 = v12 + 1;
      goto LABEL_19;
    }

LABEL_21:
    if (v24)
    {
      sub_100003BC4(a1, &v22);
      if (v24)
      {
        v13 = v23;
        v14 = *(v22 + 8);
        v15 = *v23;
        *(v15 + 8) = v14;
        *v14 = v15;
        v24 = 0;
        if (v13 != &v22)
        {
          do
          {
            v16 = v13[1];
            if (*(v13 + 39) < 0)
            {
              operator delete(v13[2]);
            }

            operator delete(v13);
            v13 = v16;
          }

          while (v16 != &v22);
        }
      }
    }

LABEL_19:
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v2 = a2[2];
  }

  while (v2);
  if (v24)
  {
    sub_100003BC4(a1, &v22);
    if (v24)
    {
      v17 = v23;
      v18 = *(v22 + 8);
      v19 = *v23;
      *(v19 + 8) = v18;
      *v18 = v19;
      v24 = 0;
      if (v17 != &v22)
      {
        do
        {
          v20 = v17[1];
          if (*(v17 + 39) < 0)
          {
            operator delete(v17[2]);
          }

          operator delete(v17);
          v17 = v20;
        }

        while (v20 != &v22);
      }
    }
  }
}

void sub_100003B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000032C4(&a15);
  sub_100003F68(v15);
  _Unwind_Resume(a1);
}

void sub_100003BC4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v12 = *a1;
    v13 = &v5[-*a1];
    v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
    v15 = v14 + 1;
    if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100001D40();
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v12) >> 3);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 >= 0x555555555555555)
    {
      v17 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (v17 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100001B10();
      }

      v18 = operator new(24 * v17);
    }

    else
    {
      v18 = 0;
    }

    v20 = &v18[8 * (v13 >> 3)];
    v21 = &v18[24 * v17];
    *v20 = v20;
    *(v20 + 1) = v20;
    *(v20 + 2) = 0;
    v22 = *(a2 + 8);
    if (v22 != a2)
    {
      v23 = 0;
      v24 = &v18[8 * (v13 >> 3)];
      do
      {
        v26 = operator new(0x28uLL);
        *v26 = 0;
        v26[1] = 0;
        if (*(v22 + 39) < 0)
        {
          v27 = v26;
          sub_1000010F4(v26 + 16, *(v22 + 16), *(v22 + 24));
          v24 = *v20;
          v23 = *(v20 + 2);
          v26 = v27;
        }

        else
        {
          v25 = *(v22 + 16);
          v26[4] = *(v22 + 32);
          *(v26 + 1) = v25;
        }

        *v26 = v24;
        v26[1] = v20;
        *(v24 + 1) = v26;
        *v20 = v26;
        *(v20 + 2) = ++v23;
        v22 = *(v22 + 8);
        v24 = v26;
      }

      while (v22 != a2);
      v12 = *a1;
      v5 = *(a1 + 8);
      v13 = &v5[-*a1];
    }

    v19 = v20 + 24;
    v28 = &v20[-v13];
    if (v12 != v5)
    {
      v29 = 0;
      do
      {
        v30 = &v18[24 * v14 + v29 + -8 * (v13 >> 3)];
        *v30 = v30;
        *(v30 + 1) = v30;
        *(v30 + 2) = 0;
        v31 = &v12[v29];
        v32 = *&v12[v29 + 16];
        if (v32)
        {
          v34 = *v31;
          v33 = *(v31 + 1);
          v35 = *(*v31 + 8);
          v36 = *v33;
          *(v36 + 8) = v35;
          *v35 = v36;
          v37 = *v30;
          *(v37 + 8) = v33;
          *v33 = v37;
          *v30 = v34;
          *(v34 + 8) = v30;
          *(v30 + 2) = v32;
          *(v31 + 2) = 0;
        }

        v29 += 24;
      }

      while (&v12[v29] != v5);
      do
      {
        if (*(v12 + 2))
        {
          v38 = *(v12 + 1);
          v39 = *(*v12 + 8);
          v40 = *v38;
          *(v40 + 8) = v39;
          *v39 = v40;
          *(v12 + 2) = 0;
          if (v38 != v12)
          {
            do
            {
              v41 = *(v38 + 1);
              if (v38[39] < 0)
              {
                v42 = v38;
                operator delete(*(v38 + 2));
                v38 = v42;
              }

              operator delete(v38);
              v38 = v41;
            }

            while (v41 != v12);
          }
        }

        v12 += 24;
      }

      while (v12 != v5);
      v12 = *a1;
    }

    *a1 = v28;
    *(a1 + 8) = v19;
    *(a1 + 16) = v21;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v5 = v5;
    *(v5 + 1) = v5;
    *(v5 + 2) = 0;
    v6 = *(a2 + 8);
    if (v6 != a2)
    {
      v7 = 0;
      v8 = v5;
      do
      {
        v10 = operator new(0x28uLL);
        *v10 = 0;
        v10[1] = 0;
        if (*(v6 + 39) < 0)
        {
          v11 = v10;
          sub_1000010F4(v10 + 16, *(v6 + 16), *(v6 + 24));
          v8 = *v5;
          v7 = *(v5 + 2);
          v10 = v11;
        }

        else
        {
          v9 = *(v6 + 16);
          v10[4] = *(v6 + 32);
          *(v10 + 1) = v9;
        }

        *v10 = v8;
        v10[1] = v5;
        *(v8 + 1) = v10;
        *v5 = v10;
        *(v5 + 2) = ++v7;
        v6 = *(v6 + 8);
        v8 = v10;
      }

      while (v6 != a2);
    }

    v19 = v5 + 24;
    *(a1 + 8) = v5 + 24;
  }

  *(a1 + 8) = v19;
}

void sub_100003EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operator delete(v10);
  sub_1000085B8(v11);
  sub_100008788(&a10);
  _Unwind_Resume(a1);
}

void sub_100003F14(_Unwind_Exception *a1)
{
  operator delete(v3);
  sub_1000085B8(v2);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

void sub_100003F34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000085B8(v2);
  sub_100008788(va);
  _Unwind_Resume(a1);
}

void sub_100003F50(_Unwind_Exception *a1)
{
  sub_1000085B8(v2);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

void **sub_100003F68(void **a1)
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
        v5 = v3 - 24;
        if (*(v3 - 1))
        {
          v6 = *(v3 - 2);
          v7 = *(*(v3 - 3) + 8);
          v8 = *v6;
          *(v8 + 8) = v7;
          *v7 = v8;
          *(v3 - 1) = 0;
          if (v6 != v5)
          {
            do
            {
              v9 = *(v6 + 1);
              if (v6[39] < 0)
              {
                operator delete(*(v6 + 2));
              }

              operator delete(v6);
              v6 = v9;
            }

            while (v9 != v5);
          }
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void CommandShell::~CommandShell(CommandShell *this)
{
  *this = off_100020700;
  v2 = *(this + 8);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 6);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 4);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t CommandShell::run(uint64_t a1, uint64_t **a2)
{
  v3 = a1;
  (*(*a1 + 16))(__s1);
  v4 = *(v3 + 16);
  *(v3 + 8) = *__s1;
  v408 = (v3 + 8);
  *&__s1[8] = 0;
  *__s1 = 0;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *&__s1[8];
  if (*&__s1[8] && !atomic_fetch_add((*&__s1[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v8 = qword_100024310;
  qword_100024308 = v7;
  qword_100024310 = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *v408;
  if (!*v408)
  {
    v16 = 0;
    return v16 & 1;
  }

  v10 = *(v3 + 16);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(v3 + 48);
  *(v3 + 40) = v9;
  *(v3 + 48) = v10;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
  }

  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(v3 + 64);
  *(v3 + 56) = v9;
  *(v3 + 64) = v10;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *a2;
  v15 = **a2;
  v14 = (*a2)[1];
  *(v15 + 8) = v14;
  *v14 = v15;
  a2[2] = (a2[2] - 1);
  if (*(v13 + 39) < 0)
  {
    operator delete(v13[2]);
    operator delete(v13);
    v412 = a2[2];
    if (!v412)
    {
LABEL_28:
      rl_bind_key(9, &rl_complete);
      rl_completion_append_character = 0;
      rl_attempted_completion_function = sub_100008844;
      v18 = *(v3 + 8);
      v17 = *(v3 + 16);
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = *(v3 + 32);
      *(v3 + 24) = v18;
      *(v3 + 32) = v17;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }
    }
  }

  else
  {
    operator delete(v13);
    v412 = a2[2];
    if (!v412)
    {
      goto LABEL_28;
    }
  }

  memset(v449, 170, 24);
  v446 = &v446;
  __p = &v446;
  v448 = 0;
  v20 = a2[1];
  if (v20 != a2)
  {
    v21 = 0;
    v22 = &v446;
    do
    {
      v24 = operator new(0x28uLL);
      *v24 = 0;
      v24[1] = 0;
      if (*(v20 + 39) < 0)
      {
        v25 = v24;
        sub_1000010F4(v24 + 16, v20[2], v20[3]);
        v22 = v446;
        v21 = v448;
        v24 = v25;
      }

      else
      {
        v23 = *(v20 + 1);
        v24[4] = v20[4];
        *(v24 + 1) = v23;
      }

      *v24 = v22;
      v24[1] = &v446;
      v22[1] = v24;
      ++v21;
      v446 = v24;
      v448 = v21;
      v20 = v20[1];
      v22 = v24;
    }

    while (v20 != a2);
  }

  sub_100003908(v449, &v446);
  if (v448)
  {
    v26 = __p;
    v27 = v446[1];
    v28 = *__p;
    *(v28 + 8) = v27;
    *v27 = v28;
    v448 = 0;
    if (v26 != &v446)
    {
      do
      {
        v29 = v26[1];
        if (*(v26 + 39) < 0)
        {
          operator delete(v26[2]);
        }

        operator delete(v26);
        v26 = v29;
      }

      while (v29 != &v446);
    }
  }

  v444 = 0uLL;
  v410 = (v3 + 24);
  v445 = 0;
  v417 = 1;
  v418 = v3;
  while (2)
  {
    v31 = v449[0];
    v409 = v449[1];
    if (v449[0] != v449[1])
    {
      v413 = 1;
      do
      {
        v441 = &v441;
        v442 = &v441;
        v443 = 0;
        v32 = v31[1];
        if (v32 == v31)
        {
          v39 = v417;
          goto LABEL_644;
        }

        v33 = 0;
        v34 = &v441;
        do
        {
          v37 = operator new(0x28uLL);
          *v37 = 0;
          v37[1] = 0;
          if (*(v32 + 39) < 0)
          {
            v38 = v37;
            sub_1000010F4(v37 + 16, *(v32 + 16), *(v32 + 24));
            v34 = v441;
            v36 = v443;
            v37 = v38;
          }

          else
          {
            v35 = *(v32 + 16);
            v37[4] = *(v32 + 32);
            *(v37 + 1) = v35;
            v36 = v33;
          }

          *v37 = v34;
          v37[1] = &v441;
          v34[1] = v37;
          v33 = v36 + 1;
          v441 = v37;
          v443 = v36 + 1;
          v32 = *(v32 + 8);
          v34 = v37;
        }

        while (v32 != v31);
        v39 = v417;
        v414 = v31;
        if (v36 == -1)
        {
LABEL_644:
          v262 = v408;
          if (*v410)
          {
            v262 = v410;
          }

          v264 = *v262;
          v263 = v262[1];
          if (v263)
          {
            atomic_fetch_add_explicit((v263 + 8), 1uLL, memory_order_relaxed);
          }

          v265 = *(v3 + 48);
          *(v3 + 40) = v264;
          *(v3 + 48) = v263;
          if (v265 && !atomic_fetch_add(&v265->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v265->__on_zero_shared)(v265);
            std::__shared_weak_count::__release_weak(v265);
          }

          v417 = v39 & v413;
          if (v39 & v413)
          {
            v30 = 0;
          }

          else
          {
            v30 = 4;
          }

          if (!v443)
          {
            goto LABEL_656;
          }

LABEL_655:
          v266 = v442;
          v267 = *(v441 + 1);
          v268 = *v442;
          *(v268 + 8) = v267;
          *v267 = v268;
          v443 = 0;
          if (v266 != &v441)
          {
            do
            {
              v269 = v266[1];
              if (*(v266 + 39) < 0)
              {
                operator delete(v266[2]);
              }

              operator delete(v266);
              v266 = v269;
            }

            while (v269 != &v441);
          }

          goto LABEL_656;
        }

        while (2)
        {
          memset(v440, 170, sizeof(v440));
          v40 = v441;
          if (*(v441 + 39) < 0)
          {
            sub_1000010F4(v440, *(v441 + 2), *(v441 + 3));
            v40 = v441;
            v33 = v443;
          }

          else
          {
            *v440 = *(v441 + 1);
            v440[2] = *(v441 + 4);
          }

          v42 = *v40;
          v41 = *(v40 + 1);
          *(v42 + 8) = v41;
          *v41 = v42;
          v443 = v33 - 1;
          if (v40[39] < 0)
          {
            operator delete(*(v40 + 2));
            operator delete(v40);
            v43 = v443;
            v44 = SHIBYTE(v440[2]);
            if (SHIBYTE(v440[2]) < 0)
            {
LABEL_65:
              if (v440[1] == 2 && *v440[0] == 25699)
              {
LABEL_116:
                v437 = &v437;
                v438 = &v437;
                v439 = 0;
                v68 = v442;
                if (v442 == &v441)
                {
                  v69 = 0;
                  v72 = &v437;
                }

                else
                {
                  v69 = 0;
                  v70 = &v437;
                  do
                  {
                    v72 = operator new(0x28uLL);
                    *v72 = 0;
                    v72[1] = 0;
                    if (*(v68 + 39) < 0)
                    {
                      v73 = v72;
                      sub_1000010F4(v72 + 16, v68[2], v68[3]);
                      v70 = v437;
                      v69 = v439;
                      v72 = v73;
                    }

                    else
                    {
                      v71 = *(v68 + 1);
                      v72[4] = v68[4];
                      *(v72 + 1) = v71;
                    }

                    *v72 = v70;
                    v72[1] = &v437;
                    v70[1] = v72;
                    ++v69;
                    v437 = v72;
                    v439 = v69;
                    v68 = v68[1];
                    v70 = v72;
                  }

                  while (v68 != &v441);
                  if (v69 >= 2)
                  {
                    v74 = 0;
                    goto LABEL_588;
                  }
                }

                v106 = *(v3 + 48);
                v451 = *(v3 + 40);
                v452 = v106;
                if (v106)
                {
                  atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
                  v69 = v439;
                }

                if (!v69)
                {
                  v109 = *(v3 + 8);
                  v108 = *(v3 + 16);
                  if (v108)
                  {
                    atomic_fetch_add_explicit((v108 + 8), 1uLL, memory_order_relaxed);
                  }

                  v110 = *(v3 + 48);
                  *(v3 + 40) = v109;
                  *(v3 + 48) = v108;
                  if (v110 && !atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v110->__on_zero_shared)(v110);
                    std::__shared_weak_count::__release_weak(v110);
                  }

                  goto LABEL_556;
                }

                memset(v472, 170, 24);
                if (*(v72 + 39) < 0)
                {
                  sub_1000010F4(v472, v72[2], v72[3]);
                  v72 = v437;
                  v69 = v439;
                }

                else
                {
                  *v472 = *(v72 + 1);
                  v472[2] = *(v72 + 4);
                }

                v117 = *v72;
                v116 = v72[1];
                *(v117 + 8) = v116;
                *v116 = v117;
                v439 = v69 - 1;
                if (*(v72 + 39) < 0)
                {
                  v118 = v72;
                  operator delete(v72[2]);
                  v72 = v118;
                }

                operator delete(v72);
                memset(v471, 170, 24);
                if (SHIBYTE(v472[2]) < 0)
                {
                  sub_1000010F4(v471, v472[0], v472[1]);
                  if (SHIBYTE(v472[2]) < 0)
                  {
                    v119 = 1;
                    if (!v472[1])
                    {
                      goto LABEL_914;
                    }
                  }

                  else
                  {
                    v119 = 0;
                    if (!HIBYTE(v472[2]))
                    {
LABEL_914:
                      sub_100001B44();
                    }
                  }
                }

                else
                {
                  v119 = 0;
                  *&v471[0].__locale_ = *v472;
                  v471[2] = v472[2];
                  if (!HIBYTE(v472[2]))
                  {
                    goto LABEL_914;
                  }
                }

                v249 = v119 == 0;
                v136 = v472;
                if (!v249)
                {
                  v136 = v472[0];
                }

                if (*v136 != 47)
                {
                  goto LABEL_336;
                }

                v137 = *(v3 + 40);
                v138 = *(v137 + 32);
                if (!v138)
                {
                  __dst = 0uLL;
                  goto LABEL_320;
                }

                v139 = *(v137 + 24);
                atomic_fetch_add_explicit(&v138->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                *&__dst = 0;
                *(&__dst + 1) = std::__shared_weak_count::lock(v138);
                if (!*(&__dst + 1))
                {
                  std::__shared_weak_count::__release_weak(v138);
                  v153 = SHIBYTE(v472[2]);
                  if ((SHIBYTE(v472[2]) & 0x8000000000000000) != 0)
                  {
                    goto LABEL_328;
                  }

LABEL_321:
                  if (v153)
                  {
                    v154 = v472;
                    v155 = v153 - 1;
                    if ((v153 - 1) <= 0x7FFFFFFFFFFFFFF7)
                    {
                      goto LABEL_330;
                    }

                    goto LABEL_916;
                  }

LABEL_915:
                  sub_100001B44();
                }

                *&__dst = v139;
                std::__shared_weak_count::__release_weak(v138);
                if (!v139)
                {
LABEL_320:
                  v153 = SHIBYTE(v472[2]);
                  if ((SHIBYTE(v472[2]) & 0x8000000000000000) == 0)
                  {
                    goto LABEL_321;
                  }

LABEL_328:
                  if (v472[1])
                  {
                    v154 = v472[0];
                    v155 = v472[1] - 1;
                    if (v472[1] - 1 <= 0x7FFFFFFFFFFFFFF7)
                    {
LABEL_330:
                      if (v155 >= 0x17)
                      {
                        if ((v155 | 7) == 0x17)
                        {
                          v165 = 25;
                        }

                        else
                        {
                          v165 = (v155 | 7) + 1;
                        }

                        v156 = operator new(v165);
                        *&__s1[16] = v165 | 0x8000000000000000;
                        *__s1 = v156;
                        *&__s1[8] = v155;
                      }

                      else
                      {
                        __s1[23] = v155;
                        v156 = __s1;
                        if (!v155)
                        {
                          __s1[0] = 0;
                          if ((SHIBYTE(v471[2].__locale_) & 0x80000000) == 0)
                          {
                            goto LABEL_333;
                          }

LABEL_366:
                          operator delete(v471[0].__locale_);
LABEL_333:
                          *&v471[0].__locale_ = *__s1;
                          v471[2] = *&__s1[16];
                          v157 = *(&__dst + 1);
                          if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v157->__on_zero_shared)(v157);
                            std::__shared_weak_count::__release_weak(v157);
                          }

LABEL_336:
                          v455 = 0uLL;
                          v456 = 0;
                          locale_high = HIBYTE(v471[2].__locale_);
                          locale = v471;
                          if (SHIBYTE(v471[2].__locale_) < 0)
                          {
                            locale = v471[0].__locale_;
                            locale_high = v471[1].__locale_;
                          }

                          if (!locale_high)
                          {
                            goto LABEL_405;
                          }

                          v160 = locale;
                          if (locale_high < 8)
                          {
LABEL_608:
                            v246 = &locale[locale_high];
                            do
                            {
                              if (*v160 == 47)
                              {
                                *v160 = 32;
                              }

                              ++v160;
                            }

                            while (v160 != v246);
                            goto LABEL_405;
                          }

                          if (locale_high < 0x10)
                          {
                            v161 = 0;
                            goto LABEL_342;
                          }

                          v161 = locale_high & 0xFFFFFFFFFFFFFFF0;
                          v166 = locale + 7;
                          v167 = locale_high & 0xFFFFFFFFFFFFFFF0;
                          while (2)
                          {
                            v168.i64[0] = 0x2F2F2F2F2F2F2F2FLL;
                            v168.i64[1] = 0x2F2F2F2F2F2F2F2FLL;
                            v169 = vceqq_s8(*(v166 - 7), v168);
                            if (v169.i8[0])
                            {
                              *(v166 - 7) = 32;
                              if ((v169.i8[1] & 1) == 0)
                              {
                                goto LABEL_373;
                              }

LABEL_389:
                              *(v166 - 6) = 32;
                              if ((v169.i8[2] & 1) == 0)
                              {
                                goto LABEL_390;
                              }

LABEL_374:
                              *(v166 - 5) = 32;
                              if ((v169.i8[3] & 1) == 0)
                              {
                                goto LABEL_375;
                              }

LABEL_391:
                              *(v166 - 4) = 32;
                              if ((v169.i8[4] & 1) == 0)
                              {
                                goto LABEL_392;
                              }

LABEL_376:
                              *(v166 - 3) = 32;
                              if ((v169.i8[5] & 1) == 0)
                              {
                                goto LABEL_377;
                              }

LABEL_393:
                              *(v166 - 2) = 32;
                              if ((v169.i8[6] & 1) == 0)
                              {
                                goto LABEL_394;
                              }

LABEL_378:
                              *(v166 - 1) = 32;
                              if ((v169.i8[7] & 1) == 0)
                              {
                                goto LABEL_379;
                              }

LABEL_395:
                              *v166 = 32;
                              if ((v169.i8[8] & 1) == 0)
                              {
                                goto LABEL_396;
                              }

LABEL_380:
                              v166[1] = 32;
                              if ((v169.i8[9] & 1) == 0)
                              {
                                goto LABEL_381;
                              }

LABEL_397:
                              v166[2] = 32;
                              if ((v169.i8[10] & 1) == 0)
                              {
                                goto LABEL_398;
                              }

LABEL_382:
                              v166[3] = 32;
                              if ((v169.i8[11] & 1) == 0)
                              {
                                goto LABEL_383;
                              }

LABEL_399:
                              v166[4] = 32;
                              if ((v169.i8[12] & 1) == 0)
                              {
                                goto LABEL_400;
                              }

LABEL_384:
                              v166[5] = 32;
                              if ((v169.i8[13] & 1) == 0)
                              {
                                goto LABEL_385;
                              }

LABEL_401:
                              v166[6] = 32;
                              if ((v169.i8[14] & 1) == 0)
                              {
                                goto LABEL_402;
                              }

LABEL_386:
                              v166[7] = 32;
                              if (v169.i8[15])
                              {
                                goto LABEL_403;
                              }
                            }

                            else
                            {
                              if (v169.i8[1])
                              {
                                goto LABEL_389;
                              }

LABEL_373:
                              if (v169.i8[2])
                              {
                                goto LABEL_374;
                              }

LABEL_390:
                              if (v169.i8[3])
                              {
                                goto LABEL_391;
                              }

LABEL_375:
                              if (v169.i8[4])
                              {
                                goto LABEL_376;
                              }

LABEL_392:
                              if (v169.i8[5])
                              {
                                goto LABEL_393;
                              }

LABEL_377:
                              if (v169.i8[6])
                              {
                                goto LABEL_378;
                              }

LABEL_394:
                              if (v169.i8[7])
                              {
                                goto LABEL_395;
                              }

LABEL_379:
                              if (v169.i8[8])
                              {
                                goto LABEL_380;
                              }

LABEL_396:
                              if (v169.i8[9])
                              {
                                goto LABEL_397;
                              }

LABEL_381:
                              if (v169.i8[10])
                              {
                                goto LABEL_382;
                              }

LABEL_398:
                              if (v169.i8[11])
                              {
                                goto LABEL_399;
                              }

LABEL_383:
                              if (v169.i8[12])
                              {
                                goto LABEL_384;
                              }

LABEL_400:
                              if (v169.i8[13])
                              {
                                goto LABEL_401;
                              }

LABEL_385:
                              if (v169.i8[14])
                              {
                                goto LABEL_386;
                              }

LABEL_402:
                              if (v169.i8[15])
                              {
LABEL_403:
                                v166[8] = 32;
                              }
                            }

                            v166 += 16;
                            v167 -= 16;
                            if (!v167)
                            {
                              if (locale_high == v161)
                              {
                                goto LABEL_405;
                              }

                              if ((locale_high & 8) == 0)
                              {
                                v160 = &locale[v161];
                                goto LABEL_608;
                              }

LABEL_342:
                              v160 = &locale[locale_high & 0xFFFFFFFFFFFFFFF8];
                              v162 = v161 - (locale_high & 0xFFFFFFFFFFFFFFF8);
                              v163 = &locale[v161 + 3];
                              while (2)
                              {
                                v164 = vceq_s8(*(v163 - 3), 0x2F2F2F2F2F2F2F2FLL);
                                if (v164.i8[0])
                                {
                                  *(v163 - 3) = 32;
                                  if ((v164.i8[1] & 1) == 0)
                                  {
                                    goto LABEL_346;
                                  }

LABEL_354:
                                  *(v163 - 2) = 32;
                                  if ((v164.i8[2] & 1) == 0)
                                  {
                                    goto LABEL_355;
                                  }

LABEL_347:
                                  *(v163 - 1) = 32;
                                  if ((v164.i8[3] & 1) == 0)
                                  {
                                    goto LABEL_348;
                                  }

LABEL_356:
                                  *v163 = 32;
                                  if ((v164.i8[4] & 1) == 0)
                                  {
                                    goto LABEL_357;
                                  }

LABEL_349:
                                  v163[1] = 32;
                                  if ((v164.i8[5] & 1) == 0)
                                  {
                                    goto LABEL_350;
                                  }

LABEL_358:
                                  v163[2] = 32;
                                  if ((v164.i8[6] & 1) == 0)
                                  {
                                    goto LABEL_359;
                                  }

LABEL_351:
                                  v163[3] = 32;
                                  if (v164.i8[7])
                                  {
                                    goto LABEL_360;
                                  }
                                }

                                else
                                {
                                  if (v164.i8[1])
                                  {
                                    goto LABEL_354;
                                  }

LABEL_346:
                                  if (v164.i8[2])
                                  {
                                    goto LABEL_347;
                                  }

LABEL_355:
                                  if (v164.i8[3])
                                  {
                                    goto LABEL_356;
                                  }

LABEL_348:
                                  if (v164.i8[4])
                                  {
                                    goto LABEL_349;
                                  }

LABEL_357:
                                  if (v164.i8[5])
                                  {
                                    goto LABEL_358;
                                  }

LABEL_350:
                                  if (v164.i8[6])
                                  {
                                    goto LABEL_351;
                                  }

LABEL_359:
                                  if (v164.i8[7])
                                  {
LABEL_360:
                                    v163[4] = 32;
                                  }
                                }

                                v163 += 8;
                                v162 += 8;
                                if (!v162)
                                {
                                  if (locale_high != (locale_high & 0xFFFFFFFFFFFFFFF8))
                                  {
                                    goto LABEL_608;
                                  }

LABEL_405:
                                  *&v170 = 0xAAAAAAAAAAAAAAAALL;
                                  *(&v170 + 1) = 0xAAAAAAAAAAAAAAAALL;
                                  v475[4] = v170;
                                  v475[5] = v170;
                                  v475[2] = v170;
                                  v475[3] = v170;
                                  v475[0] = v170;
                                  v475[1] = v170;
                                  v474[1] = v170;
                                  v474[2] = v170;
                                  *&__s1[112] = v170;
                                  v474[0] = v170;
                                  *&__s1[80] = v170;
                                  *&__s1[96] = v170;
                                  *&__s1[48] = v170;
                                  *&__s1[64] = v170;
                                  *&__s1[16] = v170;
                                  *&__s1[32] = v170;
                                  *__s1 = v170;
                                  sub_100003140(__s1, v471);
                                  while (2)
                                  {
                                    __dst = 0uLL;
                                    *&__dst_16[0] = 0;
                                    sub_1000035C0(__s1);
                                    v171 = *&__s1[*(*__s1 - 24) + 32] & 5;
                                    if (v171)
                                    {
                                      if (SBYTE7(__dst_16[0]) < 0)
                                      {
                                        goto LABEL_415;
                                      }
                                    }

                                    else
                                    {
                                      v172 = *(&v455 + 1);
                                      if (*(&v455 + 1) < v456)
                                      {
                                        if (SBYTE7(__dst_16[0]) < 0)
                                        {
                                          sub_1000010F4(*(&v455 + 1), __dst, *(&__dst + 1));
                                          *(&v455 + 1) = v172 + 24;
                                          if ((SBYTE7(__dst_16[0]) & 0x80000000) == 0)
                                          {
                                            goto LABEL_406;
                                          }
                                        }

                                        else
                                        {
                                          v173 = __dst;
                                          *(*(&v455 + 1) + 16) = *&__dst_16[0];
                                          *v172 = v173;
                                          *(&v455 + 1) = v172 + 24;
                                          if ((SBYTE7(__dst_16[0]) & 0x80000000) == 0)
                                          {
                                            goto LABEL_406;
                                          }
                                        }

LABEL_415:
                                        operator delete(__dst);
                                        goto LABEL_406;
                                      }

                                      *(&v455 + 1) = sub_100001BEC(&v455, &__dst);
                                      if (SBYTE7(__dst_16[0]) < 0)
                                      {
                                        goto LABEL_415;
                                      }
                                    }

LABEL_406:
                                    if (v171)
                                    {
                                      *__s1 = v407;
                                      *&__s1[*(v407 - 24)] = v406;
                                      if ((__s1[103] & 0x80000000) != 0)
                                      {
                                        operator delete(*&__s1[80]);
                                      }

                                      std::locale::~locale(&__s1[24]);
                                      std::istream::~istream();
                                      std::ios::~ios();
                                      v415 = *(&v455 + 1);
                                      v174 = v455;
                                      if (v455 == *(&v455 + 1))
                                      {
                                        v411 = 1;
                                        if (v455)
                                        {
                                          goto LABEL_581;
                                        }

                                        goto LABEL_553;
                                      }

                                      v411 = 1;
LABEL_422:
                                      memset(__s1, 170, 24);
                                      if (*(v174 + 23) < 0)
                                      {
                                        sub_1000010F4(__s1, *v174, *(v174 + 1));
                                      }

                                      else
                                      {
                                        v175 = *v174;
                                        *&__s1[16] = *(v174 + 2);
                                        *__s1 = v175;
                                      }

                                      v176 = *(v3 + 40);
                                      if ((__s1[23] & 0x80000000) != 0)
                                      {
                                        sub_1000010F4(&v453, *__s1, *&__s1[8]);
                                      }

                                      else
                                      {
                                        v453 = *__s1;
                                        v454 = *&__s1[16];
                                      }

                                      v177 = *(v176 + 168);
                                      v178 = HIBYTE(v454);
                                      if (!v177)
                                      {
                                        goto LABEL_489;
                                      }

                                      if (v454 >= 0)
                                      {
                                        v179 = &v453;
                                      }

                                      else
                                      {
                                        v179 = v453;
                                      }

                                      if (v454 >= 0)
                                      {
                                        v180 = HIBYTE(v454);
                                      }

                                      else
                                      {
                                        v180 = *(&v453 + 1);
                                      }

                                      v181 = (v176 + 168);
                                      while (1)
                                      {
                                        v182 = *(v177 + 55);
                                        if (v182 >= 0)
                                        {
                                          v183 = v177 + 4;
                                        }

                                        else
                                        {
                                          v183 = v177[4];
                                        }

                                        if (v182 >= 0)
                                        {
                                          v184 = *(v177 + 55);
                                        }

                                        else
                                        {
                                          v184 = v177[5];
                                        }

                                        if (v180 >= v184)
                                        {
                                          v185 = v184;
                                        }

                                        else
                                        {
                                          v185 = v180;
                                        }

                                        v186 = memcmp(v183, v179, v185);
                                        if (v186)
                                        {
                                          if (v186 < 0)
                                          {
                                            goto LABEL_436;
                                          }
                                        }

                                        else if (v184 < v180)
                                        {
LABEL_436:
                                          v177 = v177[1];
                                          if (!v177)
                                          {
                                            goto LABEL_451;
                                          }

                                          continue;
                                        }

                                        v181 = v177;
                                        v177 = *v177;
                                        if (!v177)
                                        {
LABEL_451:
                                          if (v181 != (v176 + 168))
                                          {
                                            v189 = v181[4];
                                            v188 = v181 + 4;
                                            v187 = v189;
                                            v190 = *(v188 + 23);
                                            if (v190 >= 0)
                                            {
                                              v191 = v188;
                                            }

                                            else
                                            {
                                              v191 = v187;
                                            }

                                            if (v190 >= 0)
                                            {
                                              v192 = *(v188 + 23);
                                            }

                                            else
                                            {
                                              v192 = v188[1];
                                            }

                                            if (v192 >= v180)
                                            {
                                              v193 = v180;
                                            }

                                            else
                                            {
                                              v193 = v192;
                                            }

                                            v194 = memcmp(v179, v191, v193);
                                            if (v194)
                                            {
                                              if ((v194 & 0x80000000) == 0)
                                              {
LABEL_463:
                                                v195 = 1;
                                                v3 = v418;
                                                if ((v178 & 0x80) == 0)
                                                {
                                                  goto LABEL_526;
                                                }

                                                goto LABEL_464;
                                              }
                                            }

                                            else if (v180 >= v192)
                                            {
                                              goto LABEL_463;
                                            }
                                          }

LABEL_489:
                                          v207 = *(v176 + 192);
                                          v206 = (v176 + 192);
                                          v205 = v207;
                                          v3 = v418;
                                          if (!v207)
                                          {
                                            goto LABEL_524;
                                          }

                                          if ((v178 & 0x80u) == 0)
                                          {
                                            v208 = &v453;
                                          }

                                          else
                                          {
                                            v208 = v453;
                                          }

                                          if ((v178 & 0x80u) == 0)
                                          {
                                            v209 = v178;
                                          }

                                          else
                                          {
                                            v209 = *(&v453 + 1);
                                          }

                                          v210 = v206;
                                          while (2)
                                          {
                                            while (2)
                                            {
                                              v211 = *(v205 + 55);
                                              if (v211 >= 0)
                                              {
                                                v212 = v205 + 4;
                                              }

                                              else
                                              {
                                                v212 = v205[4];
                                              }

                                              if (v211 >= 0)
                                              {
                                                v213 = *(v205 + 55);
                                              }

                                              else
                                              {
                                                v213 = v205[5];
                                              }

                                              if (v209 >= v213)
                                              {
                                                v214 = v213;
                                              }

                                              else
                                              {
                                                v214 = v209;
                                              }

                                              v215 = memcmp(v212, v208, v214);
                                              if (v215)
                                              {
                                                if ((v215 & 0x80000000) == 0)
                                                {
                                                  break;
                                                }

                                                goto LABEL_497;
                                              }

                                              if (v213 < v209)
                                              {
LABEL_497:
                                                v205 = v205[1];
                                                if (!v205)
                                                {
                                                  goto LABEL_512;
                                                }

                                                continue;
                                              }

                                              break;
                                            }

                                            v210 = v205;
                                            v205 = *v205;
                                            if (v205)
                                            {
                                              continue;
                                            }

                                            break;
                                          }

LABEL_512:
                                          if (v210 == v206)
                                          {
                                            goto LABEL_524;
                                          }

                                          v216 = *(v210 + 55);
                                          if (v216 >= 0)
                                          {
                                            v217 = v210 + 4;
                                          }

                                          else
                                          {
                                            v217 = v210[4];
                                          }

                                          if (v216 >= 0)
                                          {
                                            v218 = *(v210 + 55);
                                          }

                                          else
                                          {
                                            v218 = v210[5];
                                          }

                                          if (v218 >= v209)
                                          {
                                            v219 = v209;
                                          }

                                          else
                                          {
                                            v219 = v218;
                                          }

                                          v220 = memcmp(v208, v217, v219);
                                          if (v220)
                                          {
                                            if (v220 < 0)
                                            {
                                              goto LABEL_524;
                                            }
                                          }

                                          else if (v209 < v218)
                                          {
LABEL_524:
                                            v210 = v206;
                                          }

                                          v195 = v206 != v210;
                                          if ((v178 & 0x80) == 0)
                                          {
LABEL_526:
                                            if (!v195)
                                            {
                                              goto LABEL_465;
                                            }

LABEL_527:
                                            v221 = *(v3 + 40);
                                            if ((__s1[23] & 0x80000000) != 0)
                                            {
                                              sub_1000010F4(v450, *__s1, *&__s1[8]);
                                            }

                                            else
                                            {
                                              *v450 = *__s1;
                                              v450[2] = *&__s1[16];
                                            }

                                            CommandBase::getSubCommandObj(v221, v450, &__dst);
                                            v222 = __dst;
                                            __dst = 0uLL;
                                            v223 = *(v3 + 48);
                                            *(v3 + 40) = v222;
                                            if (v223 && !atomic_fetch_add(&v223->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                            {
                                              (v223->__on_zero_shared)(v223);
                                              std::__shared_weak_count::__release_weak(v223);
                                              v224 = *(&__dst + 1);
                                              if (*(&__dst + 1))
                                              {
                                                goto LABEL_533;
                                              }
                                            }

                                            else
                                            {
                                              v224 = *(&__dst + 1);
                                              if (*(&__dst + 1))
                                              {
LABEL_533:
                                                if (!atomic_fetch_add(&v224->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                                {
                                                  (v224->__on_zero_shared)(v224);
                                                  std::__shared_weak_count::__release_weak(v224);
                                                }
                                              }
                                            }

                                            if (SHIBYTE(v450[2]) < 0)
                                            {
                                              operator delete(v450[0]);
                                              v204 = 0;
                                              if ((__s1[23] & 0x80000000) != 0)
                                              {
                                                goto LABEL_546;
                                              }

LABEL_538:
                                              if ((v204 & 1) == 0)
                                              {
                                                goto LABEL_547;
                                              }

LABEL_580:
                                              v174 = v455;
                                              if (v455)
                                              {
LABEL_581:
                                                v234 = *(&v455 + 1);
                                                if (*(&v455 + 1) == v174)
                                                {
                                                  *(&v455 + 1) = v174;
                                                  operator delete(v174);
                                                  if (SHIBYTE(v471[2].__locale_) < 0)
                                                  {
                                                    goto LABEL_583;
                                                  }

LABEL_554:
                                                  v31 = v414;
                                                  if ((SHIBYTE(v472[2]) & 0x80000000) == 0)
                                                  {
LABEL_555:
                                                    if (v411)
                                                    {
                                                      goto LABEL_556;
                                                    }

LABEL_585:
                                                    v74 = 0;
                                                    v232 = v452;
                                                    if (v452)
                                                    {
LABEL_586:
                                                      if (atomic_fetch_add(&v232->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                                      {
                                                        goto LABEL_587;
                                                      }

                                                      (v232->__on_zero_shared)(v232);
                                                      std::__shared_weak_count::__release_weak(v232);
                                                      if (!v439)
                                                      {
LABEL_589:
                                                        if (v74)
                                                        {
                                                          goto LABEL_630;
                                                        }

                                                        if (v443 >= 2)
                                                        {
                                                          v238 = sub_1000011A0(&std::cout);
                                                          v239 = sub_1000011A0(v238);
                                                          std::ios_base::getloc((v239 + *(*v239 - 24)));
                                                          v240 = std::locale::use_facet(__s1, &std::ctype<char>::id);
                                                          (v240->__vftable[2].~facet_0)(v240, 10);
                                                          std::locale::~locale(__s1);
                                                          std::ostream::put();
                                                          std::ostream::flush();
                                                          goto LABEL_630;
                                                        }

                                                        if (v443)
                                                        {
                                                          v243 = sub_1000011A0(&std::cout);
                                                          if (*(v441 + 39) >= 0)
                                                          {
                                                            v245 = *(v441 + 39);
                                                          }

                                                          else
                                                          {
                                                            v244 = *(v441 + 2);
                                                            v245 = *(v441 + 3);
                                                          }

LABEL_627:
                                                          v257 = sub_1000011A0(v243);
                                                          sub_1000011A0(v257);
                                                        }

                                                        v258 = sub_1000011A0(&std::cout);
                                                        v259 = sub_1000011A0(v258);
                                                        v260 = sub_1000011A0(v259);
                                                        std::ios_base::getloc((v260 + *(*v260 - 24)));
                                                        v261 = std::locale::use_facet(__s1, &std::ctype<char>::id);
                                                        (v261->__vftable[2].~facet_0)(v261, 10);
                                                        std::locale::~locale(__s1);
                                                        std::ostream::put();
                                                        std::ostream::flush();
                                                        goto LABEL_629;
                                                      }

LABEL_588:
                                                      v235 = v438;
                                                      v236 = v437[1];
                                                      v237 = *v438;
                                                      *(v237 + 8) = v236;
                                                      *v236 = v237;
                                                      v439 = 0;
                                                      if (v235 != &v437)
                                                      {
                                                        do
                                                        {
                                                          v241 = v235[1];
                                                          if (*(v235 + 39) < 0)
                                                          {
                                                            operator delete(v235[2]);
                                                          }

                                                          operator delete(v235);
                                                          v235 = v241;
                                                        }

                                                        while (v241 != &v437);
                                                      }

                                                      goto LABEL_589;
                                                    }

LABEL_587:
                                                    if (!v439)
                                                    {
                                                      goto LABEL_589;
                                                    }

                                                    goto LABEL_588;
                                                  }
                                                }

                                                else
                                                {
                                                  do
                                                  {
                                                    v242 = *(v234 - 1);
                                                    v234 -= 3;
                                                    if (v242 < 0)
                                                    {
                                                      operator delete(*v234);
                                                    }
                                                  }

                                                  while (v234 != v174);
                                                  *(&v455 + 1) = v174;
                                                  operator delete(v455);
                                                  if ((SHIBYTE(v471[2].__locale_) & 0x80000000) == 0)
                                                  {
                                                    goto LABEL_554;
                                                  }

LABEL_583:
                                                  operator delete(v471[0].__locale_);
                                                  v31 = v414;
                                                  if ((SHIBYTE(v472[2]) & 0x80000000) == 0)
                                                  {
                                                    goto LABEL_555;
                                                  }
                                                }

                                                operator delete(v472[0]);
                                                if ((v411 & 1) == 0)
                                                {
                                                  goto LABEL_585;
                                                }

LABEL_556:
                                                if (*v410)
                                                {
                                                  v226 = v451;
                                                  v227 = v452;
                                                  if (v452)
                                                  {
                                                    atomic_fetch_add_explicit(&v452->__shared_owners_, 1uLL, memory_order_relaxed);
                                                  }

                                                  v228 = *(v3 + 64);
                                                  *(v3 + 56) = v226;
                                                  *(v3 + 64) = v227;
                                                  if (v228 && !atomic_fetch_add(&v228->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                                  {
                                                    (v228->__on_zero_shared)(v228);
                                                    std::__shared_weak_count::__release_weak(v228);
                                                    v230 = *(v3 + 40);
                                                    v229 = *(v3 + 48);
                                                    if (v229)
                                                    {
LABEL_562:
                                                      atomic_fetch_add_explicit((v229 + 8), 1uLL, memory_order_relaxed);
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v230 = *(v3 + 40);
                                                    v229 = *(v3 + 48);
                                                    if (v229)
                                                    {
                                                      goto LABEL_562;
                                                    }
                                                  }

                                                  v231 = *(v3 + 32);
                                                  *(v3 + 24) = v230;
                                                  *(v3 + 32) = v229;
                                                  if (v231 && !atomic_fetch_add(&v231->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                                  {
                                                    (v231->__on_zero_shared)(v231);
                                                    std::__shared_weak_count::__release_weak(v231);
                                                    v74 = 1;
                                                    v232 = v452;
                                                    if (v452)
                                                    {
                                                      goto LABEL_586;
                                                    }

                                                    goto LABEL_587;
                                                  }
                                                }

                                                v74 = 1;
                                                v232 = v452;
                                                if (v452)
                                                {
                                                  goto LABEL_586;
                                                }

                                                goto LABEL_587;
                                              }

LABEL_553:
                                              if (SHIBYTE(v471[2].__locale_) < 0)
                                              {
                                                goto LABEL_583;
                                              }

                                              goto LABEL_554;
                                            }

LABEL_537:
                                            v204 = 0;
                                            if ((__s1[23] & 0x80000000) == 0)
                                            {
                                              goto LABEL_538;
                                            }

LABEL_546:
                                            operator delete(*__s1);
                                            if (v204)
                                            {
                                              goto LABEL_580;
                                            }

LABEL_547:
                                            v174 = (v174 + 24);
                                            if (v174 == v415)
                                            {
                                              goto LABEL_580;
                                            }

                                            goto LABEL_422;
                                          }

LABEL_464:
                                          operator delete(v453);
                                          if (v195)
                                          {
                                            goto LABEL_527;
                                          }

LABEL_465:
                                          if ((__s1[23] & 0x80000000) != 0)
                                          {
                                            if (*&__s1[8] != 1)
                                            {
                                              if (*&__s1[8] != 2)
                                              {
                                                v411 = 0;
                                                operator delete(*__s1);
                                                goto LABEL_580;
                                              }

                                              if (**__s1 == 11822)
                                              {
                                                goto LABEL_473;
                                              }

                                              goto LABEL_545;
                                            }

                                            if (**__s1 != 45)
                                            {
                                              goto LABEL_545;
                                            }
                                          }

                                          else
                                          {
                                            if (__s1[23] != 1)
                                            {
                                              if (__s1[23] != 2)
                                              {
                                                v411 = 0;
                                                goto LABEL_580;
                                              }

                                              if (*__s1 == 11822)
                                              {
LABEL_473:
                                                v196 = *(v3 + 40);
                                                v197 = *(v196 + 32);
                                                if (!v197)
                                                {
                                                  goto LABEL_537;
                                                }

                                                v198 = *(v196 + 24);
                                                atomic_fetch_add_explicit(&v197->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                                                v199 = std::__shared_weak_count::lock(v197);
                                                if (v199)
                                                {
                                                  if (v198 && (atomic_fetch_add_explicit(&v199->__shared_owners_, 1uLL, memory_order_relaxed), v200 = *(v3 + 48), *(v3 + 40) = v198, *(v3 + 48) = v199, v200) && !atomic_fetch_add(&v200->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                                  {
                                                    v225 = v199;
                                                    (v200->__on_zero_shared)(v200);
                                                    std::__shared_weak_count::__release_weak(v200);
                                                    v199 = v225;
                                                    if (!atomic_fetch_add(&v225->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                                    {
LABEL_479:
                                                      v201 = v199;
                                                      (v199->__on_zero_shared)();
                                                      std::__shared_weak_count::__release_weak(v201);
                                                    }
                                                  }

                                                  else if (!atomic_fetch_add(&v199->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                                  {
                                                    goto LABEL_479;
                                                  }
                                                }

LABEL_486:
                                                std::__shared_weak_count::__release_weak(v197);
                                                v204 = 0;
                                                if ((__s1[23] & 0x80000000) == 0)
                                                {
                                                  goto LABEL_538;
                                                }

                                                goto LABEL_546;
                                              }

LABEL_545:
                                              v411 = 0;
                                              v204 = 1;
                                              if ((__s1[23] & 0x80000000) != 0)
                                              {
                                                goto LABEL_546;
                                              }

                                              goto LABEL_538;
                                            }

                                            if (__s1[0] != 45)
                                            {
                                              goto LABEL_545;
                                            }
                                          }

                                          v203 = *(v3 + 56);
                                          v202 = *(v3 + 64);
                                          if (v202)
                                          {
                                            atomic_fetch_add_explicit((v202 + 8), 1uLL, memory_order_relaxed);
                                          }

                                          v197 = *(v3 + 48);
                                          *(v3 + 40) = v203;
                                          *(v3 + 48) = v202;
                                          if (!v197 || atomic_fetch_add(&v197->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                          {
                                            goto LABEL_537;
                                          }

                                          (v197->__on_zero_shared)(v197);
                                          goto LABEL_486;
                                        }
                                      }
                                    }

                                    continue;
                                  }
                                }

                                continue;
                              }
                            }

                            continue;
                          }
                        }
                      }

                      memmove(v156, v154 + 1, v155);
                      v156[v155] = 0;
                      if (SHIBYTE(v471[2].__locale_) < 0)
                      {
                        goto LABEL_366;
                      }

                      goto LABEL_333;
                    }

LABEL_916:
                    sub_100001038();
                  }

                  goto LABEL_915;
                }

                while (2)
                {
                  v140 = *(v3 + 40);
                  if (*(v140 + 63) < 0)
                  {
                    sub_1000010F4(__s1, *(v140 + 40), *(v140 + 48));
                  }

                  else
                  {
                    *__s1 = *(v140 + 40);
                    *&__s1[16] = *(v140 + 56);
                  }

                  v141 = getprogname();
                  v142 = strlen(v141);
                  if ((__s1[23] & 0x8000000000000000) == 0)
                  {
                    if (v142 == __s1[23] && !memcmp(__s1, v141, v142))
                    {
                      goto LABEL_320;
                    }

                    goto LABEL_300;
                  }

                  if (v142 == *&__s1[8])
                  {
                    if (v142 == -1)
                    {
                      sub_100001B44();
                    }

                    v143 = *__s1;
                    v144 = memcmp(*__s1, v141, v142);
                    operator delete(v143);
                    if (!v144)
                    {
                      goto LABEL_320;
                    }

LABEL_300:
                    v145 = *(&__dst + 1);
                    if (*(&__dst + 1))
                    {
LABEL_301:
                      atomic_fetch_add_explicit((v145 + 8), 1uLL, memory_order_relaxed);
                    }
                  }

                  else
                  {
                    operator delete(*__s1);
                    v145 = *(&__dst + 1);
                    if (*(&__dst + 1))
                    {
                      goto LABEL_301;
                    }
                  }

                  v146 = *(v3 + 48);
                  *(v3 + 40) = v139;
                  *(v3 + 48) = v145;
                  if (v146 && !atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v146->__on_zero_shared)(v146);
                    std::__shared_weak_count::__release_weak(v146);
                    v147 = *(v3 + 40);
                    v148 = *(v147 + 32);
                    if (!v148)
                    {
                      goto LABEL_311;
                    }

LABEL_305:
                    v149 = *(v147 + 24);
                    atomic_fetch_add_explicit(&v148->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v150 = std::__shared_weak_count::lock(v148);
                    if (v150)
                    {
                      v151 = v149;
                    }

                    else
                    {
                      v151 = 0;
                    }

                    v152 = *(&__dst + 1);
                    *&__dst = v151;
                    *(&__dst + 1) = v150;
                    if (!v152)
                    {
                      goto LABEL_313;
                    }

LABEL_312:
                    if (atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      goto LABEL_313;
                    }

                    (v152->__on_zero_shared)(v152);
                    std::__shared_weak_count::__release_weak(v152);
                    if (v148)
                    {
LABEL_314:
                      std::__shared_weak_count::__release_weak(v148);
                    }
                  }

                  else
                  {
                    v147 = *(v3 + 40);
                    v148 = *(v147 + 32);
                    if (v148)
                    {
                      goto LABEL_305;
                    }

LABEL_311:
                    v152 = *(&__dst + 1);
                    __dst = 0uLL;
                    if (v152)
                    {
                      goto LABEL_312;
                    }

LABEL_313:
                    if (v148)
                    {
                      goto LABEL_314;
                    }
                  }

                  v139 = __dst;
                  if (!__dst)
                  {
                    goto LABEL_320;
                  }

                  continue;
                }
              }

              v45 = *(v3 + 40);
              sub_1000010F4(&v435, v440[0], v440[1]);
              goto LABEL_68;
            }
          }

          else
          {
            operator delete(v40);
            v43 = v443;
            v44 = SHIBYTE(v440[2]);
            if (SHIBYTE(v440[2]) < 0)
            {
              goto LABEL_65;
            }
          }

          if (v44 == 2 && LOWORD(v440[0]) == 25699)
          {
            goto LABEL_116;
          }

          v45 = *(v3 + 40);
          v435 = *v440;
          v436 = v440[2];
LABEL_68:
          v48 = *(v45 + 96);
          v47 = (v45 + 96);
          v46 = v48;
          v49 = HIBYTE(v436);
          if (!v48)
          {
            goto LABEL_123;
          }

          if (SHIBYTE(v436) >= 0)
          {
            v50 = &v435;
          }

          else
          {
            v50 = v435;
          }

          if (SHIBYTE(v436) >= 0)
          {
            v51 = HIBYTE(v436);
          }

          else
          {
            v51 = *(&v435 + 1);
          }

          v52 = v47;
          do
          {
            while (1)
            {
              v53 = *(v46 + 55);
              v54 = v53 >= 0 ? v46 + 4 : v46[4];
              v55 = v53 >= 0 ? *(v46 + 55) : v46[5];
              v56 = v51 >= v55 ? v55 : v51;
              v57 = memcmp(v54, v50, v56);
              if (v57)
              {
                break;
              }

              if (v55 >= v51)
              {
                goto LABEL_90;
              }

LABEL_76:
              v46 = v46[1];
              if (!v46)
              {
                goto LABEL_91;
              }
            }

            if (v57 < 0)
            {
              goto LABEL_76;
            }

LABEL_90:
            v52 = v46;
            v46 = *v46;
          }

          while (v46);
LABEL_91:
          if (v52 == v47)
          {
            goto LABEL_123;
          }

          v58 = *(v52 + 55);
          if (v58 >= 0)
          {
            v59 = v52 + 4;
          }

          else
          {
            v59 = v52[4];
          }

          if (v58 >= 0)
          {
            v60 = *(v52 + 55);
          }

          else
          {
            v60 = v52[5];
          }

          if (v60 >= v51)
          {
            v61 = v51;
          }

          else
          {
            v61 = v60;
          }

          v62 = memcmp(v50, v59, v61);
          if (v62)
          {
            if ((v62 & 0x80000000) == 0)
            {
              goto LABEL_103;
            }

LABEL_123:
            v52 = v47;
            if (v49 < 0)
            {
              goto LABEL_124;
            }

LABEL_104:
            v3 = v418;
            v63 = *(v418 + 40);
            v64 = SHIBYTE(v440[2]);
            if (v47 != v52)
            {
              goto LABEL_105;
            }
          }

          else
          {
            if (v51 < v60)
            {
              goto LABEL_123;
            }

LABEL_103:
            if ((v49 & 0x80) == 0)
            {
              goto LABEL_104;
            }

LABEL_124:
            operator delete(v435);
            v3 = v418;
            v63 = *(v418 + 40);
            v64 = SHIBYTE(v440[2]);
            if (v47 != v52)
            {
LABEL_105:
              v31 = v414;
              if (v64 < 0)
              {
                sub_1000010F4(&v433, v440[0], v440[1]);
              }

              else
              {
                v433 = *v440;
                v434 = v440[2];
              }

              v65 = (*(*v63 + 32))(v63, &v433);
              if (SHIBYTE(v434) < 0)
              {
                v66 = v65;
                operator delete(v433);
                if (!v66)
                {
                  goto LABEL_629;
                }
              }

              else if (!v65)
              {
                goto LABEL_629;
              }

              if (!v412)
              {
                rl_bind_key(9, 0);
              }

              v67 = *(v3 + 40);
              if (SHIBYTE(v440[2]) < 0)
              {
                sub_1000010F4(&v431, v440[0], v440[1]);
              }

              else
              {
                v431 = *v440;
                v432 = v440[2];
              }

              v428 = &v428;
              v429 = &v428;
              v430 = 0;
              v95 = v442;
              if (v442 != &v441)
              {
                v96 = 0;
                v97 = &v428;
                do
                {
                  v99 = operator new(0x28uLL);
                  *v99 = 0;
                  v99[1] = 0;
                  if (*(v95 + 39) < 0)
                  {
                    v100 = v99;
                    sub_1000010F4(v99 + 16, v95[2], v95[3]);
                    v97 = v428;
                    v96 = v430;
                    v99 = v100;
                  }

                  else
                  {
                    v98 = *(v95 + 1);
                    v99[4] = v95[4];
                    *(v99 + 1) = v98;
                  }

                  *v99 = v97;
                  v99[1] = &v428;
                  v97[1] = v99;
                  ++v96;
                  v428 = v99;
                  v430 = v96;
                  v95 = v95[1];
                  v97 = v99;
                }

                while (v95 != &v441);
              }

              v413 = (*(*v67 + 40))(v67, &v431, &v428);
              if (v430)
              {
                v101 = v429;
                v102 = v428[1];
                v103 = *v429;
                *(v103 + 8) = v102;
                *v102 = v103;
                v430 = 0;
                if (v101 != &v428)
                {
                  do
                  {
                    v104 = v101[1];
                    if (*(v101 + 39) < 0)
                    {
                      v105 = v101;
                      operator delete(v101[2]);
                      v101 = v105;
                    }

                    operator delete(v101);
                    v101 = v104;
                  }

                  while (v104 != &v428);
                }
              }

              if (SHIBYTE(v432) < 0)
              {
                operator delete(v431);
                if (v412)
                {
                  goto LABEL_630;
                }
              }

              else if (v412)
              {
                goto LABEL_630;
              }

              rl_bind_key(9, &rl_complete);
              rl_completion_append_character = 0;
              rl_attempted_completion_function = sub_100008844;
LABEL_630:
              v30 = 7;
              goto LABEL_631;
            }
          }

          if (v64 < 0)
          {
            sub_1000010F4(v426, v440[0], v440[1]);
          }

          else
          {
            *v426 = *v440;
            v427 = v440[2];
          }

          v75 = v63[21];
          if (!v75)
          {
            goto LABEL_205;
          }

          v76 = HIBYTE(v427);
          if (SHIBYTE(v427) >= 0)
          {
            v77 = v426;
          }

          else
          {
            v77 = v426[0];
          }

          if (SHIBYTE(v427) >= 0)
          {
            v78 = HIBYTE(v427);
          }

          else
          {
            v78 = v426[1];
          }

          v79 = v63 + 21;
          while (2)
          {
            while (2)
            {
              v80 = *(v75 + 55);
              if (v80 >= 0)
              {
                v81 = v75 + 4;
              }

              else
              {
                v81 = v75[4];
              }

              if (v80 >= 0)
              {
                v82 = *(v75 + 55);
              }

              else
              {
                v82 = v75[5];
              }

              if (v78 >= v82)
              {
                v83 = v82;
              }

              else
              {
                v83 = v78;
              }

              v84 = memcmp(v81, v77, v83);
              if (v84)
              {
                if ((v84 & 0x80000000) == 0)
                {
                  break;
                }

                goto LABEL_138;
              }

              if (v82 < v78)
              {
LABEL_138:
                v75 = v75[1];
                if (!v75)
                {
                  goto LABEL_153;
                }

                continue;
              }

              break;
            }

            v79 = v75;
            v75 = *v75;
            if (v75)
            {
              continue;
            }

            break;
          }

LABEL_153:
          if (v79 == v63 + 21)
          {
            goto LABEL_205;
          }

          v87 = v79[4];
          v86 = v79 + 4;
          v85 = v87;
          v88 = *(v86 + 23);
          if (v88 >= 0)
          {
            v89 = v86;
          }

          else
          {
            v89 = v85;
          }

          if (v88 >= 0)
          {
            v90 = *(v86 + 23);
          }

          else
          {
            v90 = v86[1];
          }

          if (v90 >= v78)
          {
            v91 = v78;
          }

          else
          {
            v91 = v90;
          }

          v92 = memcmp(v77, v89, v91);
          if (!v92)
          {
            if (v78 < v90)
            {
              goto LABEL_205;
            }

LABEL_165:
            v93 = 1;
            v3 = v418;
            if ((v76 & 0x80) == 0)
            {
              goto LABEL_206;
            }

LABEL_166:
            operator delete(v426[0]);
            if (v93)
            {
              goto LABEL_207;
            }

LABEL_167:
            v31 = v414;
            if ((SHIBYTE(v440[2]) & 0x80000000) == 0)
            {
              if (HIBYTE(v440[2]) != 4)
              {
                if (HIBYTE(v440[2]) == 6)
                {
                  v94 = v440;
                  goto LABEL_197;
                }

                goto LABEL_219;
              }

              if (LODWORD(v440[0]) != 1886152040)
              {
                goto LABEL_219;
              }

LABEL_217:
              if (v43)
              {
                goto LABEL_219;
              }

LABEL_218:
              (*(**(v3 + 40) + 24))(*(v3 + 40), v412 == 0);
              goto LABEL_630;
            }

            v107 = v440[1];
            if (v440[1] == 4)
            {
              v123 = v440[0];
              if (*v440[0] == 1886152040)
              {
                if (!v43)
                {
                  goto LABEL_218;
                }

                if (v36)
                {
                  goto LABEL_626;
                }

                goto LABEL_576;
              }
            }

            else if (v440[1] == 6)
            {
              v94 = v440[0];
LABEL_197:
              if (!(*v94 ^ 0x65682D2D | *(v94 + 2) ^ 0x706C))
              {
                goto LABEL_217;
              }

LABEL_219:
              if (v36)
              {
LABEL_220:
                if ((HIBYTE(v440[2]) & 0x80) == 0)
                {
                  if (HIBYTE(v440[2]) != 1)
                  {
                    if (HIBYTE(v440[2]) == 2)
                    {
                      goto LABEL_223;
                    }

                    goto LABEL_626;
                  }

LABEL_275:
                  if (LOBYTE(v440[0]) != 47)
                  {
                    goto LABEL_626;
                  }

LABEL_276:
                  v135 = *(v3 + 8);
                  v134 = *(v3 + 16);
                  if (v134)
                  {
                    atomic_fetch_add_explicit((v134 + 8), 1uLL, memory_order_relaxed);
                  }

                  v125 = *(v3 + 48);
                  *(v3 + 40) = v135;
                  *(v3 + 48) = v134;
                  if (v125 && !atomic_fetch_add(&v125->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v125->__on_zero_shared)(v125);
                    goto LABEL_641;
                  }

                  goto LABEL_642;
                }

                v107 = v440[1];
LABEL_252:
                if (v107 == 1)
                {
                  if (*v440[0] != 47)
                  {
                    goto LABEL_626;
                  }

                  goto LABEL_276;
                }

                if (v107 != 2)
                {
                  goto LABEL_626;
                }

                v115 = v440[0];
LABEL_255:
                if (*v115 != 11822)
                {
                  goto LABEL_626;
                }

                v124 = *(v3 + 40);
                v125 = *(v124 + 32);
                if (!v125)
                {
                  goto LABEL_642;
                }

                v126 = *(v124 + 24);
                atomic_fetch_add_explicit(&v125->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v127 = std::__shared_weak_count::lock(v125);
                if (!v127)
                {
                  goto LABEL_641;
                }

                if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v128 = v127;
                  (v127->__on_zero_shared)();
                  std::__shared_weak_count::__release_weak(v128);
                }

                std::__shared_weak_count::__release_weak(v125);
                if (!v126)
                {
                  goto LABEL_642;
                }

                v129 = *(v3 + 40);
                v125 = *(v129 + 32);
                if (v125)
                {
                  v130 = *(v129 + 24);
                  atomic_fetch_add_explicit(&v125->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  v131 = std::__shared_weak_count::lock(v125);
                  if (v131)
                  {
                    v132 = v130;
                  }

                  else
                  {
                    v132 = 0;
                  }

                  v133 = *(v3 + 48);
                  *(v3 + 40) = v132;
                  *(v3 + 48) = v131;
                  if (!v133)
                  {
                    goto LABEL_640;
                  }
                }

                else
                {
                  v133 = *(v3 + 48);
                  *(v3 + 40) = 0;
                  *(v3 + 48) = 0;
                  if (!v133)
                  {
                    goto LABEL_640;
                  }
                }

                if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v133->__on_zero_shared)(v133);
                  std::__shared_weak_count::__release_weak(v133);
                }

LABEL_640:
                if (v125)
                {
LABEL_641:
                  std::__shared_weak_count::__release_weak(v125);
                }

LABEL_642:
                v30 = 0;
                goto LABEL_631;
              }

              if ((HIBYTE(v440[2]) & 0x80) == 0)
              {
                if (HIBYTE(v440[2]) <= 3u)
                {
                  if (HIBYTE(v440[2]) == 1)
                  {
                    goto LABEL_275;
                  }

                  if (HIBYTE(v440[2]) != 2)
                  {
                    goto LABEL_626;
                  }

                  if (LOWORD(v440[0]) != 29548)
                  {
LABEL_223:
                    v115 = v440;
                    goto LABEL_255;
                  }

LABEL_326:
                  CommandBase::list(*(v3 + 40));
                  goto LABEL_642;
                }

                if (HIBYTE(v440[2]) == 4)
                {
                  v30 = 8;
                  v413 = 1;
                  v39 = 1;
                  if (LODWORD(v440[0]) == 1953068401 || LODWORD(v440[0]) == 1953069157)
                  {
                    goto LABEL_632;
                  }

                  goto LABEL_626;
                }

                if (HIBYTE(v440[2]) != 7)
                {
LABEL_626:
                  v243 = sub_1000011A0(&std::cout);
                  goto LABEL_627;
                }

                v233 = v440;
LABEL_613:
                v247 = *v233;
                v248 = *(v233 + 3);
                v249 = v247 == 1953720680 && v248 == 2037542772;
                if (!v249)
                {
                  goto LABEL_220;
                }

                v30 = 0;
                if (v412 || history_length < 1)
                {
                  goto LABEL_631;
                }

                v250 = 0;
                do
                {
                  v251 = history_get(v250 + history_base);
                  if (v251)
                  {
                    __s1[0] = 9;
                    v252 = sub_1000011A0(&std::cout);
                    v253 = *v252;
                    *(v252 + *(*v252 - 24) + 24) = 4;
                    *(v252 + *(v253 - 24) + 8) = *(v252 + *(v253 - 24) + 8) & 0xFFFFFF4F | 0x80;
                    v254 = v252;
                    strlen(v251->line);
                    v255 = sub_1000011A0(v254);
                    std::ios_base::getloc((v255 + *(*v255 - 24)));
                    v256 = std::locale::use_facet(__s1, &std::ctype<char>::id);
                    (v256->__vftable[2].~facet_0)(v256, 10);
                    std::locale::~locale(__s1);
                    std::ostream::put();
                    std::ostream::flush();
                  }

                  ++v250;
                }

                while (v250 < history_length);
                goto LABEL_642;
              }

              v107 = v440[1];
              if (v440[1] == 2)
              {
LABEL_325:
                v115 = v440[0];
                if (*v440[0] != 29548)
                {
                  goto LABEL_255;
                }

                goto LABEL_326;
              }

LABEL_249:
              if (v107 == 7)
              {
                v233 = v440[0];
                goto LABEL_613;
              }

              if (v107 != 4)
              {
                goto LABEL_252;
              }

              v123 = v440[0];
LABEL_576:
              if (*v123 == 1953068401 || *v123 == 1953069157)
              {
                v30 = 8;
                v413 = 1;
                v39 = 1;
                goto LABEL_632;
              }

              goto LABEL_626;
            }

            if (v36)
            {
              goto LABEL_252;
            }

            if (v440[1] == 2)
            {
              goto LABEL_325;
            }

            goto LABEL_249;
          }

          if ((v92 & 0x80000000) == 0)
          {
            goto LABEL_165;
          }

LABEL_205:
          v93 = v63 + 24 != sub_100011C20((v63 + 23), v426);
          v3 = v418;
          if ((HIBYTE(v427) & 0x80) != 0)
          {
            goto LABEL_166;
          }

LABEL_206:
          if (!v93)
          {
            goto LABEL_167;
          }

LABEL_207:
          v111 = *(v3 + 40);
          v31 = v414;
          if (SHIBYTE(v440[2]) < 0)
          {
            sub_1000010F4(v424, v440[0], v440[1]);
          }

          else
          {
            *v424 = *v440;
            v425 = v440[2];
          }

          v112 = (*(*v111 + 32))(v111, v424);
          if (SHIBYTE(v425) < 0)
          {
            v113 = v112;
            operator delete(v424[0]);
            if (!v113)
            {
              goto LABEL_629;
            }
          }

          else if (!v112)
          {
LABEL_629:
            v413 = 0;
            goto LABEL_630;
          }

          v114 = *(v3 + 40);
          if (SHIBYTE(v440[2]) < 0)
          {
            sub_1000010F4(v422, v440[0], v440[1]);
          }

          else
          {
            *v422 = *v440;
            v423 = v440[2];
          }

          CommandBase::getSubCommandObj(v114, v422, __s1);
          v120 = *__s1;
          *&__s1[8] = 0;
          *__s1 = 0;
          v121 = *(v3 + 48);
          *(v3 + 40) = v120;
          if (v121 && !atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v121->__on_zero_shared)(v121);
            std::__shared_weak_count::__release_weak(v121);
            v122 = *&__s1[8];
            if (*&__s1[8])
            {
              goto LABEL_237;
            }
          }

          else
          {
            v122 = *&__s1[8];
            if (*&__s1[8])
            {
LABEL_237:
              if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v122->__on_zero_shared)(v122);
                std::__shared_weak_count::__release_weak(v122);
              }
            }
          }

          if ((SHIBYTE(v423) & 0x80000000) == 0)
          {
            if (v43)
            {
              goto LABEL_270;
            }

LABEL_272:
            (*(**(v3 + 40) + 24))(*(v3 + 40), v412 == 0);
            goto LABEL_629;
          }

          operator delete(v422[0]);
          if (!v43)
          {
            goto LABEL_272;
          }

LABEL_270:
          v30 = 0;
          v413 = 1;
LABEL_631:
          v39 = v417;
LABEL_632:
          if (SHIBYTE(v440[2]) < 0)
          {
            operator delete(v440[0]);
          }

          if (!v30)
          {
            v33 = v443;
            v417 = v39;
            if (!v443)
            {
              goto LABEL_644;
            }

            continue;
          }

          break;
        }

        if (v30 == 7)
        {
          if (v443)
          {
            v270 = v442;
            v271 = *(v441 + 1);
            v272 = *v442;
            *(v272 + 8) = v271;
            *v271 = v272;
            v443 = 0;
            if (v270 != &v441)
            {
              do
              {
                v273 = v270[1];
                if (*(v270 + 39) < 0)
                {
                  operator delete(v270[2]);
                }

                operator delete(v270);
                v270 = v273;
              }

              while (v273 != &v441);
            }
          }

          goto LABEL_644;
        }

        v417 = v39;
        if (v443)
        {
          goto LABEL_655;
        }

LABEL_656:
        if (v30)
        {
          if (v30 != 4)
          {
            goto LABEL_46;
          }

          break;
        }

        v31 += 3;
      }

      while (v31 != v409);
    }

    v274 = *v410;
    if (!*v410)
    {
LABEL_896:
      v16 = v417;
      if (!v412)
      {
        goto LABEL_897;
      }

      goto LABEL_898;
    }

    v275 = *(v3 + 32);
    if (v275)
    {
      atomic_fetch_add_explicit((v275 + 8), 1uLL, memory_order_relaxed);
    }

    v276 = *(v3 + 48);
    *(v3 + 40) = v274;
    *(v3 + 48) = v275;
    if (v276 && !atomic_fetch_add(&v276->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v276->__on_zero_shared)(v276);
      std::__shared_weak_count::__release_weak(v276);
    }

    memset(v450, 170, 24);
    v277 = *(v3 + 40);
    if (*(v277 + 87) < 0)
    {
      sub_1000010F4(&__dst, *(v277 + 64), *(v277 + 72));
    }

    else
    {
      __dst = *(v277 + 64);
      *&__dst_16[0] = *(v277 + 80);
    }

    v278 = std::string::insert(&__dst, 0, "(", 1uLL);
    v279 = *&v278->__r_.__value_.__l.__data_;
    *&__s1[16] = *(&v278->__r_.__value_.__l + 2);
    *__s1 = v279;
    v278->__r_.__value_.__l.__size_ = 0;
    v278->__r_.__value_.__r.__words[2] = 0;
    v278->__r_.__value_.__r.__words[0] = 0;
    v280 = __s1[23];
    if ((__s1[23] & 0x8000000000000000) == 0)
    {
      if ((__s1[23] - 19) < 4)
      {
        v281 = __s1[23] + 4;
        v282 = __s1;
        v283 = 22;
LABEL_687:
        v284 = 2 * v283;
        if (v281 > 2 * v283)
        {
          v284 = v281;
        }

        if ((v284 | 7) == 0x17)
        {
          v285 = 25;
        }

        else
        {
          v285 = (v284 | 7) + 1;
        }

        if (v284 >= 0x17)
        {
          v286 = v285;
        }

        else
        {
          v286 = 23;
        }

        v287 = v283 == 22;
        goto LABEL_696;
      }

      v291 = __s1;
      *&__s1[__s1[23]] = 540950057;
      v292 = v280 + 4;
      if ((__s1[23] & 0x80000000) == 0)
      {
        goto LABEL_702;
      }

      goto LABEL_704;
    }

    v280 = *&__s1[8];
    v283 = (*&__s1[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v283 - *&__s1[8] >= 4)
    {
      v291 = *__s1;
      *(*__s1 + *&__s1[8]) = 540950057;
      v292 = v280 + 4;
      if ((__s1[23] & 0x80000000) == 0)
      {
LABEL_702:
        __s1[23] = v292 & 0x7F;
LABEL_705:
        v290 = &v291[v292];
        goto LABEL_706;
      }

LABEL_704:
      *&__s1[8] = v292;
      goto LABEL_705;
    }

    v281 = *&__s1[8] + 4;
    if (0x7FFFFFFFFFFFFFF7 - (*&__s1[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&__s1[8] + 4 - v283)
    {
      sub_100001038();
    }

    v282 = *__s1;
    if (v283 < 0x3FFFFFFFFFFFFFF3)
    {
      goto LABEL_687;
    }

    v287 = 0;
    v286 = 0x7FFFFFFFFFFFFFF7;
LABEL_696:
    v288 = operator new(v286);
    v289 = v288;
    if (v280)
    {
      memmove(v288, v282, v280);
    }

    *&v289[v280] = 540950057;
    if (!v287)
    {
      operator delete(v282);
    }

    *&__s1[16] = v286 | 0x8000000000000000;
    *__s1 = v289;
    *&__s1[8] = v281;
    v290 = &v289[v281];
LABEL_706:
    *v290 = 0;
    *v450 = *__s1;
    v450[2] = *&__s1[16];
    memset(__s1, 0, 24);
    if (SBYTE7(__dst_16[0]) < 0)
    {
      operator delete(__dst);
      if ((SHIBYTE(v445) & 0x80000000) == 0)
      {
LABEL_708:
        LOBYTE(v444) = 0;
        HIBYTE(v445) = 0;
        v294 = *(v3 + 40);
        v293 = *(v3 + 48);
        if (!v293)
        {
          goto LABEL_710;
        }

        goto LABEL_709;
      }
    }

    else if ((SHIBYTE(v445) & 0x80000000) == 0)
    {
      goto LABEL_708;
    }

    *v444 = 0;
    *(&v444 + 1) = 0;
    v294 = *(v3 + 40);
    v293 = *(v3 + 48);
    if (v293)
    {
LABEL_709:
      atomic_fetch_add_explicit((v293 + 16), 1uLL, memory_order_relaxed);
    }

LABEL_710:
    v295 = qword_100024320;
    qword_100024318 = v294;
    qword_100024320 = v293;
    if (v295)
    {
      std::__shared_weak_count::__release_weak(v295);
    }

    if (!v412)
    {
      if (SHIBYTE(v450[2]) >= 0)
      {
        v296 = v450;
      }

      else
      {
        v296 = v450[0];
      }

      v297 = readline(v296);
      v298 = v297;
      if (!v297)
      {
        v30 = 3;
        if ((SHIBYTE(v450[2]) & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_821;
      }

      if (*v297)
      {
        add_history(v297);
      }

      sub_10000C7BC(&v444, v298);
      free(v298);
    }

    v441 = &v441;
    v442 = &v441;
    v443 = 0;
    *&v299 = 0xAAAAAAAAAAAAAAAALL;
    *(&v299 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(&v475[4] + 8) = v299;
    *(&v475[5] + 8) = v299;
    *(&v475[2] + 8) = v299;
    *(&v475[3] + 8) = v299;
    *(v475 + 8) = v299;
    *(&v475[1] + 8) = v299;
    *(&v474[1] + 8) = v299;
    *(&v474[2] + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__s1[120] = 0xAAAAAAAAAAAAAAAALL;
    *(v474 + 8) = v299;
    *&__s1[88] = v299;
    *&__s1[104] = v299;
    *&__s1[56] = v299;
    *&__s1[72] = v299;
    *&__s1[24] = v299;
    *&__s1[40] = v299;
    *&__s1[8] = 0xAAAAAAAAAAAAAAAALL;
    *&v475[0] = 0;
    *__s1 = v405;
    *&__s1[*(v405 - 24)] = v404;
    *&__s1[8] = 0;
    v300 = &__s1[*(*__s1 - 24)];
    std::ios_base::init(v300, &__s1[24]);
    v300[1].__vftable = 0;
    v300[1].__fmtflags_ = -1;
    *&__s1[16] = v403;
    *&__s1[*(v403 - 24) + 16] = v402;
    *__s1 = v400;
    *&__s1[*(v400 - 24)] = v401;
    std::locale::locale(&__s1[32]);
    memset(&__s1[40], 0, 80);
    *&__s1[120] = 24;
    if (SHIBYTE(v445) < 0)
    {
      sub_100001DC0(&__s1[88], v444, *(&v444 + 1));
    }

    else
    {
      *&__s1[88] = v444;
      *&__s1[104] = v445;
    }

    sub_10000C8FC(&__s1[24]);
    v301 = 0;
    memset(v472, 0, 24);
    while (2)
    {
      if (v301 < 0)
      {
        *v472[0] = 0;
        v472[1] = 0;
      }

      else
      {
        LOBYTE(v472[0]) = 0;
        HIBYTE(v472[2]) = 0;
      }

      LOBYTE(__dst) = -86;
      std::istream::sentry::sentry();
      if (__dst == 1)
      {
        v303 = *&__s1[*(*__s1 - 24) + 40];
        v304 = v303[3];
        if (v304 == v303[4])
        {
          LODWORD(v303) = (*(*v303 + 80))(v303);
          if (v303 == -1)
          {
            v306 = 6;
            v305 = 170;
            goto LABEL_738;
          }
        }

        else
        {
          v303[3] = v304 + 1;
          LOBYTE(v303) = *v304;
        }

        v306 = 0;
        v305 = v303;
LABEL_738:
        std::ios_base::clear(&__s1[*(*__s1 - 24)], *&__s1[*(*__s1 - 24) + 32] | v306);
        goto LABEL_739;
      }

      v305 = 170;
LABEL_739:
      v307 = *__s1;
      v308 = &__s1[*(*__s1 - 24)];
      if ((v308[32] & 5) != 0)
      {
        goto LABEL_794;
      }

      if (v305 != 34)
      {
        std::istream::unget();
        sub_1000035C0(__s1);
        goto LABEL_794;
      }

      *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&__dst = v308;
      DWORD2(__dst) = *(v308 + 2);
      v309 = *(v308 + 36);
      v416 = DWORD2(__dst);
      if (v309 == -1)
      {
        std::ios_base::getloc(v308);
        v310 = std::locale::use_facet(v471, &std::ctype<char>::id);
        v309 = (v310->__vftable[2].~facet_0)(v310, 32);
        std::locale::~locale(v471);
        *(v308 + 36) = v309;
        v307 = *__s1;
      }

      BYTE12(__dst) = v309;
      *&__s1[*(v307 - 24) + 8] &= ~0x1000u;
      v311 = 34;
      while (1)
      {
        LOBYTE(v471[0].__locale_) = -86;
        std::istream::sentry::sentry();
        if (LOBYTE(v471[0].__locale_) != 1)
        {
          goto LABEL_752;
        }

        v315 = *&__s1[*(*__s1 - 24) + 40];
        v316 = v315[3];
        if (v316 == v315[4])
        {
          LODWORD(v315) = (*(*v315 + 80))(v315);
          if (v315 == -1)
          {
            v317 = 6;
            goto LABEL_751;
          }
        }

        else
        {
          v315[3] = v316 + 1;
          LOBYTE(v315) = *v316;
        }

        v317 = 0;
        v311 = v315;
LABEL_751:
        std::ios_base::clear(&__s1[*(*__s1 - 24)], *&__s1[*(*__s1 - 24) + 32] | v317);
LABEL_752:
        if ((__s1[*(*__s1 - 24) + 32] & 5) != 0)
        {
          goto LABEL_791;
        }

        if (v311 == 92)
        {
          break;
        }

        if (v311 == 34)
        {
          goto LABEL_791;
        }

LABEL_764:
        if ((SHIBYTE(v472[2]) & 0x80000000) == 0)
        {
          if (HIBYTE(v472[2]) != 22)
          {
            v312 = HIBYTE(v472[2]);
            HIBYTE(v472[2]) = (HIBYTE(v472[2]) + 1) & 0x7F;
            v313 = v472;
            goto LABEL_745;
          }

          v322 = v472;
          v312 = 22;
LABEL_770:
          if (v312 + 1 > 2 * v312)
          {
            v323 = v312 + 1;
          }

          else
          {
            v323 = 2 * v312;
          }

          if ((v323 | 7) == 0x17)
          {
            v324 = 25;
          }

          else
          {
            v324 = (v323 | 7) + 1;
          }

          if (v323 >= 0x17)
          {
            v325 = v324;
          }

          else
          {
            v325 = 23;
          }

          v326 = v312 == 22;
          goto LABEL_780;
        }

        v312 = (v472[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v472[1] == v312)
        {
          if ((v472[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_100001038();
          }

          v322 = v472[0];
          if (v312 < 0x3FFFFFFFFFFFFFF3)
          {
            goto LABEL_770;
          }

          v326 = 0;
          v325 = 0x7FFFFFFFFFFFFFF7;
LABEL_780:
          v327 = operator new(v325);
          v313 = v327;
          if (v312)
          {
            memmove(v327, v322, v312);
          }

          if (!v326)
          {
            operator delete(v322);
          }

          v472[0] = v313;
          v472[2] = (v325 | 0x8000000000000000);
          goto LABEL_786;
        }

        v313 = v472[0];
        v312 = v472[1];
LABEL_786:
        v472[1] = (v312 + 1);
LABEL_745:
        v314 = v313 + v312;
        *v314 = v311;
        v314[1] = 0;
      }

      LOBYTE(v471[0].__locale_) = -86;
      std::istream::sentry::sentry();
      if (LOBYTE(v471[0].__locale_) == 1)
      {
        v318 = *&__s1[*(*__s1 - 24) + 40];
        v319 = v318[3];
        if (v319 != v318[4])
        {
          v318[3] = v319 + 1;
          v311 = *v319;
          goto LABEL_761;
        }

        v320 = (*(*v318 + 80))(v318);
        v311 = v320;
        if (v320 == -1)
        {
          v321 = 6;
          v311 = 92;
        }

        else
        {
LABEL_761:
          v321 = 0;
        }

        std::ios_base::clear(&__s1[*(*__s1 - 24)], *&__s1[*(*__s1 - 24) + 32] | v321);
      }

      else
      {
        v311 = 92;
      }

      if ((__s1[*(*__s1 - 24) + 32] & 5) == 0)
      {
        goto LABEL_764;
      }

LABEL_791:
      *(v308 + 2) = v416;
      if (*(v308 + 36) == -1)
      {
        std::ios_base::getloc(v308);
        v328 = std::locale::use_facet(v471, &std::ctype<char>::id);
        (v328->__vftable[2].~facet_0)(v328, 32);
        std::locale::~locale(v471);
      }

      *(v308 + 36) = v309;
LABEL_794:
      if ((__s1[*(*__s1 - 24) + 32] & 5) == 0)
      {
        v329 = operator new(0x28uLL);
        v330 = v329;
        *v329 = 0;
        v329[1] = 0;
        if (SHIBYTE(v472[2]) < 0)
        {
          sub_1000010F4(v329 + 16, v472[0], v472[1]);
        }

        else
        {
          *(v329 + 1) = *v472;
          v329[4] = v472[2];
        }

        v302 = v442;
        *v330 = &v441;
        v330[1] = v302;
        *v302 = v330;
        v442 = v330;
        ++v443;
        v301 = HIBYTE(v472[2]);
        continue;
      }

      break;
    }

    memset(v471, 170, 24);
    if (*(v441 + 39) < 0)
    {
      sub_1000010F4(v471, *(v441 + 2), *(v441 + 3));
    }

    else
    {
      *&v471[0].__locale_ = *(v441 + 1);
      v471[2] = *(v441 + 32);
    }

    v331 = HIBYTE(v471[2].__locale_);
    if (SHIBYTE(v471[2].__locale_) >= 0)
    {
      v332 = v471;
    }

    else
    {
      v332 = v471[0].__locale_;
    }

    if (SHIBYTE(v471[2].__locale_) >= 0)
    {
      v333 = SHIBYTE(v471[2].__locale_);
    }

    else
    {
      v333 = v471[1].__locale_;
    }

    if (v333 < 1)
    {
      goto LABEL_852;
    }

    v334 = &v332[v333];
    v335 = v332;
    while (1)
    {
      v336 = memchr(v335, 47, v333);
      if (!v336)
      {
        goto LABEL_852;
      }

      if (*v336 == 47)
      {
        break;
      }

      v335 = v336 + 1;
      v333 = v334 - v335;
      if (v334 - v335 < 1)
      {
        goto LABEL_852;
      }
    }

    if (v336 == v334 || v336 - v332 == -1)
    {
      goto LABEL_852;
    }

    v337 = v441;
    v339 = *v441;
    v338 = *(v441 + 1);
    *(v339 + 8) = v338;
    *v338 = v339;
    --v443;
    if (*(v337 + 39) < 0)
    {
      v342 = v337;
      operator delete(v337[2]);
      operator delete(v342);
      v340 = SHIBYTE(v471[2].__locale_);
      if ((SHIBYTE(v471[2].__locale_) & 0x8000000000000000) != 0)
      {
        goto LABEL_824;
      }

LABEL_817:
      if (v340)
      {
        if (LOBYTE(v471[0].__locale_) == 47)
        {
          v341 = v471;
          goto LABEL_826;
        }

        goto LABEL_831;
      }

LABEL_919:
      sub_100001B44();
    }

    operator delete(v337);
    v340 = SHIBYTE(v471[2].__locale_);
    if ((SHIBYTE(v471[2].__locale_) & 0x8000000000000000) == 0)
    {
      goto LABEL_817;
    }

LABEL_824:
    v340 = v471[1].__locale_;
    if (!v471[1].__locale_)
    {
      goto LABEL_919;
    }

    v341 = v471[0].__locale_;
    if (*v471[0].__locale_ != 47)
    {
LABEL_831:
      v345 = 0;
      goto LABEL_832;
    }

LABEL_826:
    v343 = v340 - 1;
    if (v340 - 1 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100001038();
    }

    if (v343 >= 0x17)
    {
      if ((v343 | 7) == 0x17)
      {
        v386 = 25;
      }

      else
      {
        v386 = (v343 | 7) + 1;
      }

      p_dst = operator new(v386);
      *&__dst_16[0] = v386 | 0x8000000000000000;
      *&__dst = p_dst;
      *(&__dst + 1) = v343;
LABEL_891:
      memmove(p_dst, v341 + 1, v343);
      *(p_dst + v343) = 0;
      if (SHIBYTE(v471[2].__locale_) < 0)
      {
        goto LABEL_892;
      }

      goto LABEL_830;
    }

    BYTE7(__dst_16[0]) = v340 - 1;
    p_dst = &__dst;
    if (v340 != 1)
    {
      goto LABEL_891;
    }

    LOBYTE(__dst) = 0;
    if ((SHIBYTE(v471[2].__locale_) & 0x80000000) == 0)
    {
      goto LABEL_830;
    }

LABEL_892:
    operator delete(v471[0].__locale_);
LABEL_830:
    *&v471[0].__locale_ = __dst;
    v471[2] = *&__dst_16[0];
    v345 = 1;
LABEL_832:
    *&v346 = 0xAAAAAAAAAAAAAAAALL;
    *(&v346 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v469 = v346;
    v470 = v346;
    v467 = v346;
    v468 = v346;
    v465 = v346;
    v466 = v346;
    v463 = v346;
    v464 = v346;
    v461 = v346;
    v462 = v346;
    v459 = v346;
    v460 = v346;
    __dst_16[2] = v346;
    __dst_16[3] = v346;
    __dst_16[0] = v346;
    __dst_16[1] = v346;
    __dst = v346;
    sub_100003140(&__dst, v471);
    v347 = 0;
    v455 = 0uLL;
    v456 = 0;
    *&v453 = &v453;
    *(&v453 + 1) = &v453;
    while (1)
    {
      v454 = v347;
      v349 = sub_100001F98(&__dst);
      if ((*(v349 + *(*v349 - 24) + 32) & 5) != 0)
      {
        break;
      }

      v350 = operator new(0x28uLL);
      v351 = v350;
      *v350 = 0;
      v350[1] = 0;
      if (SHIBYTE(v456) < 0)
      {
        sub_1000010F4(v350 + 16, v455, *(&v455 + 1));
      }

      else
      {
        *(v350 + 1) = v455;
        v350[4] = v456;
      }

      v348 = v453;
      *v351 = v453;
      v351[1] = &v453;
      *(v348 + 8) = v351;
      *&v453 = v351;
      v347 = v454 + 1;
    }

    while (1)
    {
      v352 = v454;
      if (!v454)
      {
        break;
      }

      v353 = v453;
      v354 = operator new(0x28uLL);
      *v354 = 0;
      v354[1] = 0;
      if (v353[39] < 0)
      {
        v356 = v354;
        sub_1000010F4(v354 + 16, *(v353 + 2), *(v353 + 3));
        v353 = v453;
        v352 = v454;
        v354 = v356;
      }

      else
      {
        v355 = *(v353 + 1);
        v354[4] = *(v353 + 4);
        *(v354 + 1) = v355;
      }

      v357 = v441;
      *v354 = v441;
      v354[1] = &v441;
      v357[1] = v354;
      v441 = v354;
      ++v443;
      v359 = *v353;
      v358 = *(v353 + 1);
      v359[1] = v358;
      *v358 = v359;
      v454 = v352 - 1;
      if (v353[39] < 0)
      {
        operator delete(*(v353 + 2));
      }

      operator delete(v353);
    }

    if (v345)
    {
      v360 = operator new(0x28uLL);
      v360[2] = 47;
      *(v360 + 39) = 1;
      v361 = v441;
      *v360 = v441;
      v360[1] = &v441;
      v361[1] = v360;
      v441 = v360;
      ++v443;
    }

    if (SHIBYTE(v456) < 0)
    {
      operator delete(v455);
    }

    *&__dst = v407;
    *(&__dst_16[-1] + *(v407 - 24)) = v406;
    if (SBYTE7(v460) < 0)
    {
      operator delete(v459);
    }

    std::locale::~locale(__dst_16 + 1);
    std::istream::~istream();
    std::ios::~ios();
    v331 = HIBYTE(v471[2].__locale_);
LABEL_852:
    if (v331 < 0)
    {
      operator delete(v471[0].__locale_);
      if (SHIBYTE(v472[2]) < 0)
      {
        goto LABEL_886;
      }
    }

    else
    {
      if ((SHIBYTE(v472[2]) & 0x80000000) == 0)
      {
        goto LABEL_854;
      }

LABEL_886:
      operator delete(v472[0]);
    }

LABEL_854:
    *__s1 = v399;
    *&__s1[*(v399 - 24)] = v398;
    *&__s1[16] = v397;
    if ((__s1[111] & 0x80000000) != 0)
    {
      operator delete(*&__s1[88]);
    }

    std::locale::~locale(&__s1[32]);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v419 = &v419;
    v420 = &v419;
    v421 = 0;
    v362 = v442;
    if (v442 != &v441)
    {
      v363 = 0;
      v364 = &v419;
      do
      {
        v366 = operator new(0x28uLL);
        *v366 = 0;
        v366[1] = 0;
        if (*(v362 + 39) < 0)
        {
          v367 = v366;
          sub_1000010F4(v366 + 16, v362[2], v362[3]);
          v364 = v419;
          v363 = v421;
          v366 = v367;
        }

        else
        {
          v365 = *(v362 + 1);
          v366[4] = v362[4];
          *(v366 + 1) = v365;
        }

        *v366 = v364;
        v366[1] = &v419;
        v364[1] = v366;
        ++v363;
        v419 = v366;
        v421 = v363;
        v362 = v362[1];
        v364 = v366;
      }

      while (v362 != &v441);
    }

    sub_100003908(__s1, &v419);
    v368 = v449[0];
    if (v449[0])
    {
      v369 = v449[1];
      v370 = v449[0];
      if (v449[1] != v449[0])
      {
        do
        {
          v371 = (v369 - 3);
          if (*(v369 - 1))
          {
            v372 = *(v369 - 2);
            v373 = *(*(v369 - 3) + 8);
            v374 = *v372;
            *(v374 + 8) = v373;
            *v373 = v374;
            *(v369 - 1) = 0;
            if (v372 != v371)
            {
              do
              {
                v375 = *(v372 + 1);
                if (v372[39] < 0)
                {
                  operator delete(*(v372 + 2));
                }

                operator delete(v372);
                v372 = v375;
              }

              while (v375 != v371);
            }
          }

          v369 = v371;
        }

        while (v371 != v368);
        v370 = v449[0];
      }

      v449[1] = v368;
      operator delete(v370);
    }

    *v449 = *__s1;
    v449[2] = *&__s1[16];
    memset(__s1, 0, 24);
    if (v421)
    {
      v376 = v420;
      v377 = v419[1];
      v378 = *v420;
      *(v378 + 1) = v377;
      *v377 = v378;
      v421 = 0;
      if (v376 != &v419)
      {
        do
        {
          v382 = v376[1];
          if (*(v376 + 39) < 0)
          {
            v383 = v376;
            operator delete(v376[2]);
            v376 = v383;
          }

          operator delete(v376);
          v376 = v382;
        }

        while (v382 != &v419);
      }
    }

    if (v443)
    {
      v379 = v442;
      v380 = *(v441 + 1);
      v381 = *v442;
      *(v381 + 8) = v380;
      *v380 = v381;
      v443 = 0;
      if (v379 != &v441)
      {
        do
        {
          v384 = v379[1];
          if (*(v379 + 39) < 0)
          {
            v385 = v379;
            operator delete(v379[2]);
            v379 = v385;
          }

          operator delete(v379);
          v379 = v384;
        }

        while (v384 != &v441);
      }
    }

    v30 = 0;
    if (SHIBYTE(v450[2]) < 0)
    {
LABEL_821:
      operator delete(v450[0]);
    }

LABEL_46:
    if (!v30)
    {
      continue;
    }

    break;
  }

  if (v30 == 3)
  {
    goto LABEL_896;
  }

  v16 = v417;
  if (!v412)
  {
LABEL_897:
    rl_bind_key(9, 0);
  }

LABEL_898:
  if (SHIBYTE(v445) < 0)
  {
    operator delete(v444);
  }

  v387 = v449[0];
  if (v449[0])
  {
    v388 = v449[1];
    v389 = v449[0];
    if (v449[1] != v449[0])
    {
      do
      {
        v390 = (v388 - 3);
        if (*(v388 - 1))
        {
          v391 = *(v388 - 2);
          v392 = *(*(v388 - 3) + 8);
          v393 = *v391;
          *(v393 + 8) = v392;
          *v392 = v393;
          *(v388 - 1) = 0;
          if (v391 != v390)
          {
            do
            {
              v394 = *(v391 + 1);
              if (v391[39] < 0)
              {
                v395 = v391;
                operator delete(*(v391 + 2));
                v391 = v395;
              }

              operator delete(v391);
              v391 = v394;
            }

            while (v394 != v390);
          }
        }

        v388 = v390;
      }

      while (v390 != v387);
      v389 = v449[0];
    }

    v449[1] = v387;
    operator delete(v389);
  }

  return v16 & 1;
}

void sub_10000814C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  std::ios::~ios();
  sub_1000032C4(&STACK[0x208]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  sub_100003F68(&STACK[0x250]);
  _Unwind_Resume(a1);
}

void sub_1000085B8(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_100008638(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_100008788(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 24;
      *(a1 + 16) = v2 - 24;
      if (*(v2 - 1))
      {
        v6 = *(v2 - 2);
        v7 = *(*(v2 - 3) + 8);
        v8 = *v6;
        *(v8 + 8) = v7;
        *v7 = v8;
        *(v2 - 1) = 0;
        if (v6 != v5)
        {
          do
          {
            v9 = *(v6 + 1);
            if (v6[39] < 0)
            {
              operator delete(*(v6 + 2));
            }

            operator delete(v6);
            v6 = v9;
          }

          while (v9 != v5);
          v5 = *(a1 + 16);
        }
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char **sub_100008844(const char *a1)
{
  rl_attempted_completion_over = 0;
  result = rl_completion_matches(a1, sub_100008890);
  if (!result)
  {
    rl_completion_append_character = 0;
  }

  return result;
}

char *sub_100008890(char *a1, int a2)
{
  v540 = &v540;
  v541 = &v540;
  v542 = 0;
  if (!qword_100024320)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(qword_100024320);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = qword_100024318;
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v12 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v12);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_15:
    v7 = 0;
    goto LABEL_1028;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_5:
  v538 = 0;
  v539 = 0;
  if (qword_100024320 && (v539 = std::__shared_weak_count::lock(qword_100024320)) != 0)
  {
    v6 = qword_100024318;
    v538 = qword_100024318;
  }

  else
  {
    v6 = 0;
  }

  *(&v551.__r_.__value_.__s + 23) = 2;
  strcpy(&v551, "cd");
  HIBYTE(v553) = 2;
  strcpy(&v552, "ls");
  HIBYTE(v555) = 7;
  strcpy(&v554, "history");
  HIBYTE(v557) = 4;
  strcpy(&v556, "help");
  HIBYTE(v559) = 4;
  strcpy(&__p, "quit");
  p_p = &v551;
  v9 = v541;
  __s = a1;
  if (v541 == &v540)
  {
    v13 = 0;
LABEL_87:
    v37 = operator new(0x28uLL);
    v38 = v37;
    *v37 = 0;
    v37[1] = 0;
    if (SHIBYTE(p_p->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000010F4(v37 + 16, *(&v551.__r_.__value_.__l.__data_ + v13), p_p->__r_.__value_.__l.__size_);
    }

    else
    {
      v39 = *&p_p->__r_.__value_.__l.__data_;
      v37[4] = p_p->__r_.__value_.__r.__words[2];
      *(v37 + 1) = v39;
    }

    if (v13 == 96)
    {
      v40 = 1;
      v41 = v38;
    }

    else
    {
      v77 = (&v551 + v13 + 24);
      v78 = v13 - 96;
      v40 = 1;
      v79 = v38;
      do
      {
        v80 = v77;
        v81 = operator new(0x28uLL);
        v41 = v81;
        *v81 = v79;
        v81[1] = 0;
        if (SHIBYTE(p_p[1].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_1000010F4(v81 + 16, v80->__r_.__value_.__l.__data_, p_p[1].__r_.__value_.__l.__size_);
        }

        else
        {
          *(v81 + 1) = *&v80->__r_.__value_.__l.__data_;
          v81[4] = v80->__r_.__value_.__r.__words[2];
        }

        ++v40;
        v79[1] = v41;
        v77 = v80 + 1;
        p_p = v80;
        v79 = v41;
        v78 += 24;
      }

      while (v78);
    }

    v42 = v540;
    v540[1] = v38;
    *v38 = v42;
    v41[1] = &v540;
    v540 = v41;
    v542 += v40;
    goto LABEL_93;
  }

  v10 = (v541 + 2);
  if (v541 + 2 != &v551)
  {
    if (*(v541 + 39) < 0)
    {
      if ((v551.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v551;
      }

      else
      {
        v14 = v551.__r_.__value_.__r.__words[0];
      }

      if ((v551.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v551.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v551.__r_.__value_.__l.__size_;
      }

      sub_100001E80(v10, v14, size);
    }

    else
    {
      v11 = v551.__r_.__value_.__r.__words[2];
      *v10 = *&v551.__r_.__value_.__l.__data_;
      v9[4] = v11;
    }
  }

  v16 = v9[1];
  if (v16 == &v540)
  {
    v19 = 0;
    p_p = &v552;
    v13 = 24;
  }

  else
  {
    v17 = v16 + 2;
    if (v16 + 2 != &v552)
    {
      if (*(v16 + 39) < 0)
      {
        if (SHIBYTE(v553) >= 0)
        {
          v20 = &v552;
        }

        else
        {
          v20 = v552;
        }

        if (SHIBYTE(v553) >= 0)
        {
          v21 = HIBYTE(v553);
        }

        else
        {
          v21 = *(&v552 + 1);
        }

        sub_100001E80(v17, v20, v21);
      }

      else if ((HIBYTE(v553) & 0x80) != 0)
      {
        sub_100001DC0(v17, v552, *(&v552 + 1));
      }

      else
      {
        v18 = v552;
        v16[4] = v553;
        *v17 = v18;
      }
    }

    v16 = v16[1];
    if (v16 == &v540)
    {
      v19 = 0;
      p_p = &v554;
      v13 = 48;
    }

    else
    {
      v22 = v16 + 2;
      if (v16 + 2 != &v554)
      {
        if (*(v16 + 39) < 0)
        {
          if (SHIBYTE(v555) >= 0)
          {
            v24 = &v554;
          }

          else
          {
            v24 = v554;
          }

          if (SHIBYTE(v555) >= 0)
          {
            v25 = HIBYTE(v555);
          }

          else
          {
            v25 = *(&v554 + 1);
          }

          sub_100001E80(v22, v24, v25);
        }

        else if ((HIBYTE(v555) & 0x80) != 0)
        {
          sub_100001DC0(v22, v554, *(&v554 + 1));
        }

        else
        {
          v23 = v554;
          v16[4] = v555;
          *v22 = v23;
        }
      }

      v16 = v16[1];
      if (v16 == &v540)
      {
        v19 = 0;
        p_p = &v556;
        v13 = 72;
      }

      else
      {
        v26 = v16 + 2;
        if (v16 + 2 != &v556)
        {
          if (*(v16 + 39) < 0)
          {
            if (SHIBYTE(v557) >= 0)
            {
              v28 = &v556;
            }

            else
            {
              v28 = v556;
            }

            if (SHIBYTE(v557) >= 0)
            {
              v29 = HIBYTE(v557);
            }

            else
            {
              v29 = *(&v556 + 1);
            }

            sub_100001E80(v26, v28, v29);
          }

          else if ((HIBYTE(v557) & 0x80) != 0)
          {
            sub_100001DC0(v26, v556, *(&v556 + 1));
          }

          else
          {
            v27 = v556;
            v16[4] = v557;
            *v26 = v27;
          }
        }

        v16 = v16[1];
        if (v16 == &v540)
        {
          v19 = 0;
          p_p = &__p;
          v13 = 96;
        }

        else
        {
          v30 = v16 + 2;
          if (v16 + 2 != &__p)
          {
            if (*(v16 + 39) < 0)
            {
              if (SHIBYTE(v559) >= 0)
              {
                v32 = &__p;
              }

              else
              {
                v32 = __p;
              }

              if (SHIBYTE(v559) >= 0)
              {
                v33 = HIBYTE(v559);
              }

              else
              {
                v33 = *(&__p + 1);
              }

              sub_100001E80(v30, v32, v33);
            }

            else if ((HIBYTE(v559) & 0x80) != 0)
            {
              sub_100001DC0(v30, __p, *(&__p + 1));
            }

            else
            {
              v31 = __p;
              v16[4] = v559;
              *v30 = v31;
            }
          }

          p_p = &v560;
          v16 = v16[1];
          v19 = 1;
          v13 = 120;
        }
      }
    }
  }

  if (v16 == &v540)
  {
    if (v19)
    {
      goto LABEL_93;
    }

    goto LABEL_87;
  }

  v34 = v540[1];
  v35 = *v16;
  v35[1] = v34;
  *v34 = v35;
  do
  {
    v36 = v16[1];
    --v542;
    if (*(v16 + 39) < 0)
    {
      operator delete(v16[2]);
    }

    operator delete(v16);
    v16 = v36;
  }

  while (v36 != &v540);
LABEL_93:
  if (SHIBYTE(v559) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v557) & 0x80000000) == 0)
    {
LABEL_95:
      if ((SHIBYTE(v555) & 0x80000000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_147;
    }
  }

  else if ((SHIBYTE(v557) & 0x80000000) == 0)
  {
    goto LABEL_95;
  }

  operator delete(v556);
  if ((SHIBYTE(v555) & 0x80000000) == 0)
  {
LABEL_96:
    if ((SHIBYTE(v553) & 0x80000000) == 0)
    {
      goto LABEL_97;
    }

LABEL_148:
    operator delete(v552);
    if ((SHIBYTE(v551.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

LABEL_149:
    operator delete(v551.__r_.__value_.__l.__data_);
    goto LABEL_98;
  }

LABEL_147:
  operator delete(v554);
  if (SHIBYTE(v553) < 0)
  {
    goto LABEL_148;
  }

LABEL_97:
  if (SHIBYTE(v551.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_149;
  }

LABEL_98:
  v537[0] = 0;
  v537[1] = 0;
  v536 = v537;
  v43 = *(v6 + 88);
  if (v43 != (v6 + 96))
  {
    do
    {
      sub_100011DA4(&v536, v537, v43 + 4, (v43 + 4));
      v44 = v43[1];
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = v43[2];
          v46 = *v45 == v43;
          v43 = v45;
        }

        while (!v46);
      }

      v43 = v45;
    }

    while (v45 != (v6 + 96));
    v47 = v536;
    if (v536 != v537)
    {
      do
      {
        v48 = operator new(0x28uLL);
        v49 = v48;
        *v48 = 0;
        v48[1] = 0;
        if (*(v47 + 55) < 0)
        {
          sub_1000010F4(v48 + 16, v47[4], v47[5]);
        }

        else
        {
          v50 = *(v47 + 2);
          v48[4] = v47[6];
          *(v48 + 1) = v50;
        }

        v51 = v540;
        *v49 = v540;
        v49[1] = &v540;
        v51[1] = v49;
        v540 = v49;
        ++v542;
        v52 = v47[1];
        if (v52)
        {
          do
          {
            v53 = v52;
            v52 = *v52;
          }

          while (v52);
        }

        else
        {
          do
          {
            v53 = v47[2];
            v46 = *v53 == v47;
            v47 = v53;
          }

          while (!v46);
        }

        v47 = v53;
      }

      while (v53 != v537);
    }
  }

  v535[0] = 0;
  v535[1] = 0;
  v534 = v535;
  v54 = *(v6 + 160);
  if (v54 != (v6 + 168))
  {
    do
    {
      sub_10001224C(&v534, v535, v54 + 4, (v54 + 4));
      v55 = v54[1];
      if (v55)
      {
        do
        {
          v56 = v55;
          v55 = *v55;
        }

        while (v55);
      }

      else
      {
        do
        {
          v56 = v54[2];
          v46 = *v56 == v54;
          v54 = v56;
        }

        while (!v46);
      }

      v54 = v56;
    }

    while (v56 != (v6 + 168));
    v57 = v534;
    if (v534 != v535)
    {
      do
      {
        v58 = operator new(0x28uLL);
        v59 = v58;
        *v58 = 0;
        v58[1] = 0;
        if (*(v57 + 55) < 0)
        {
          sub_1000010F4(v58 + 16, v57[4], v57[5]);
        }

        else
        {
          v60 = *(v57 + 2);
          v58[4] = v57[6];
          *(v58 + 1) = v60;
        }

        v61 = v540;
        *v59 = v540;
        v59[1] = &v540;
        v61[1] = v59;
        v540 = v59;
        ++v542;
        v62 = v57[1];
        if (v62)
        {
          do
          {
            v63 = v62;
            v62 = *v62;
          }

          while (v62);
        }

        else
        {
          do
          {
            v63 = v57[2];
            v46 = *v63 == v57;
            v57 = v63;
          }

          while (!v46);
        }

        v57 = v63;
      }

      while (v63 != v535);
    }
  }

  base_meths = qword_100024338;
  if (a2)
  {
    goto LABEL_1017;
  }

  rl_completion_append_character = 32;
  v65 = qword_100024330;
  while (base_meths != v65)
  {
    v66 = *(base_meths - 1);
    base_meths -= 3;
    if (v66 < 0)
    {
      operator delete(*base_meths);
    }
  }

  qword_100024338 = v65;
  qword_100024328 = 0;
  v531 = &v531;
  v532 = &v531;
  v533 = 0;
  v67 = rl_end;
  if (rl_end)
  {
    if (rl_end < 0)
    {
      sub_100001D40();
    }

    v68 = rl_line_buffer;
    v69 = operator new(rl_end);
    memcpy(v69, v68, v67);
    v70 = v67;
    v71 = v67 + 1;
    if ((v67 + 1) < 0)
    {
      sub_100001D40();
    }
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v71 = 1;
  }

  if (2 * v70 > v71)
  {
    v71 = 2 * v70;
  }

  if (v70 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v72 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v72 = v71;
  }

  if (v72)
  {
    v73 = operator new(v72);
    v73[v70] = 0;
    memcpy(v73, v69, v70);
    if (!v69)
    {
      goto LABEL_161;
    }

    goto LABEL_160;
  }

  v73 = 0;
  *v70 = 0;
  memcpy(0, v69, v70);
  if (v69)
  {
LABEL_160:
    operator delete(v69);
  }

LABEL_161:
  memset(__dst, 170, sizeof(__dst));
  v74 = strlen(v73);
  v527 = v73;
  if (v74 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001038();
  }

  v75 = v74;
  if (v74 >= 0x17)
  {
    if ((v74 | 7) == 0x17)
    {
      v82 = 25;
    }

    else
    {
      v82 = (v74 | 7) + 1;
    }

    v76 = operator new(v82);
    __dst[1] = v75;
    __dst[2] = (v82 | 0x8000000000000000);
    __dst[0] = v76;
    goto LABEL_174;
  }

  HIBYTE(__dst[2]) = v74;
  v76 = __dst;
  if (v74)
  {
LABEL_174:
    memcpy(v76, v73, v75);
  }

  *(v75 + v76) = 0;
  v83 = strtok(v73, " ");
  if (v83)
  {
    v84 = v83;
    do
    {
      v85 = strlen(v84);
      if (v85 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100001038();
      }

      v86 = v85;
      if (v85 >= 0x17)
      {
        if ((v85 | 7) == 0x17)
        {
          v88 = 25;
        }

        else
        {
          v88 = (v85 | 7) + 1;
        }

        v87 = operator new(v88);
        v551.__r_.__value_.__l.__size_ = v86;
        v551.__r_.__value_.__r.__words[2] = v88 | 0x8000000000000000;
        v551.__r_.__value_.__r.__words[0] = v87;
      }

      else
      {
        *(&v551.__r_.__value_.__s + 23) = v85;
        v87 = &v551;
        if (!v85)
        {
          goto LABEL_186;
        }
      }

      memmove(v87, v84, v86);
LABEL_186:
      *(v87 + v86) = 0;
      v89 = operator new(0x28uLL);
      *(v89 + 16) = v551;
      v90 = v531;
      *v89 = v531;
      *(v89 + 1) = &v531;
      *(v90 + 1) = v89;
      v531 = v89;
      ++v533;
      v84 = strtok(0, " ");
    }

    while (v84);
  }

  if ((SHIBYTE(__dst[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(__dst[2]))
    {
      v91 = SHIBYTE(__dst[2]);
      goto LABEL_195;
    }

LABEL_199:
    v528 = 0;
    v93 = v533;
    if (!v533)
    {
      goto LABEL_966;
    }

    goto LABEL_200;
  }

  v91 = __dst[1];
  if (!__dst[1])
  {
    goto LABEL_199;
  }

LABEL_195:
  v92 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v92 = __dst[0];
  }

  v528 = *(v91 + v92 - 1) == 32;
  v93 = v533;
  if (!v533)
  {
    goto LABEL_966;
  }

LABEL_200:
  v94 = v532;
  if ((*(v532 + 39) & 0x80000000) == 0)
  {
    v95 = v532 + 16;
    v96 = *(v532 + 39);
    if (*(v532 + 39))
    {
      goto LABEL_202;
    }

LABEL_208:
    v100 = *(v532 + 39);
    goto LABEL_589;
  }

  v95 = *(v532 + 2);
  v96 = *(v532 + 3);
  if (v96 < 1)
  {
    goto LABEL_208;
  }

LABEL_202:
  v97 = &v95[v96];
  v98 = v95;
  while (1)
  {
    v99 = memchr(v98, 47, v96);
    if (!v99)
    {
      goto LABEL_587;
    }

    if (*v99 == 47)
    {
      break;
    }

    v98 = v99 + 1;
    v96 = v97 - v98;
    if (v97 - v98 < 1)
    {
      goto LABEL_587;
    }
  }

  if (v99 != v97 && v99 - v95 != -1)
  {
    if (v542)
    {
      v101 = v541;
      v102 = v540[1];
      v103 = *v541;
      v103[1] = v102;
      *v102 = v103;
      v542 = 0;
      if (v101 != &v540)
      {
        do
        {
          v106 = v101[1];
          if (*(v101 + 39) < 0)
          {
            operator delete(v101[2]);
          }

          operator delete(v101);
          v101 = v106;
        }

        while (v106 != &v540);
      }
    }

    rl_completion_append_character = 0;
    rl_attempted_completion_over = 1;
    v546 = 0;
    v547 = 0;
    v104 = qword_100024320;
    if (qword_100024320)
    {
      v104 = std::__shared_weak_count::lock(qword_100024320);
      v547 = v104;
      if (v104)
      {
        v546 = qword_100024318;
      }
    }

    v105 = v532 + 16;
    if (*(v532 + 39) < 0)
    {
      if (!*(v532 + 3))
      {
        goto LABEL_229;
      }

      v105 = *v105;
    }

    else if (!*(v532 + 39))
    {
      goto LABEL_229;
    }

    if (*v105 == 47)
    {
      v107 = qword_100024310;
      if (qword_100024310)
      {
        v108 = v104;
        v107 = std::__shared_weak_count::lock(qword_100024310);
        v104 = v108;
        v109 = qword_100024308;
        if (!v107)
        {
          v109 = 0;
        }
      }

      else
      {
        v109 = 0;
      }

      v546 = v109;
      v547 = v107;
      if (v104 && !atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v111 = v104;
        (v104->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v111);
      }

      v110 = "/";
LABEL_235:
      memset(&v551, 0, sizeof(v551));
      memset(&v550, 170, sizeof(v550));
      v112 = strlen(v110);
      if (v112 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100001038();
      }

      v113 = v112;
      if (v112 >= 0x17)
      {
        if ((v112 | 7) == 0x17)
        {
          v115 = 25;
        }

        else
        {
          v115 = (v112 | 7) + 1;
        }

        v114 = operator new(v115);
        v550.__r_.__value_.__l.__size_ = v113;
        v550.__r_.__value_.__r.__words[2] = v115 | 0x8000000000000000;
        v550.__r_.__value_.__r.__words[0] = v114;
      }

      else
      {
        *(&v550.__r_.__value_.__s + 23) = v112;
        v114 = &v550;
        if (!v112)
        {
LABEL_244:
          v114[v113] = 0;
          v116 = v533;
          if (!v533)
          {
            goto LABEL_403;
          }

          memset(v549, 170, 24);
          v117 = v532;
          if (*(v532 + 39) < 0)
          {
            sub_1000010F4(v549, *(v532 + 2), *(v532 + 3));
            v117 = v532;
            v116 = v533;
          }

          else
          {
            *v549 = *(v532 + 1);
            v549[2] = *(v532 + 4);
          }

          v119 = *v117;
          v118 = *(v117 + 1);
          *(v119 + 8) = v118;
          *v118 = v119;
          v533 = v116 - 1;
          if (v117[39] < 0)
          {
            operator delete(*(v117 + 2));
          }

          operator delete(v117);
          v120 = HIBYTE(v549[2]);
          if (SHIBYTE(v549[2]) >= 0)
          {
            v121 = v549;
          }

          else
          {
            v121 = v549[0];
          }

          if (SHIBYTE(v549[2]) < 0)
          {
            v120 = v549[1];
          }

          v122 = v120 + 1;
          if (v120 == -1)
          {
            v123 = 0;
          }

          else
          {
            if ((v122 & 0x8000000000000000) != 0)
            {
              sub_100001D40();
            }

            v123 = operator new(v120 + 1);
            memcpy(v123, v121, v122);
          }

          memset(v548, 170, sizeof(v548));
          v124 = strlen(v123);
          v525 = v123;
          if (v124 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_100001038();
          }

          v125 = v124;
          if (v124 >= 0x17)
          {
            if ((v124 | 7) == 0x17)
            {
              v127 = 25;
            }

            else
            {
              v127 = (v124 | 7) + 1;
            }

            v126 = operator new(v127);
            v548[1] = v125;
            v548[2] = (v127 | 0x8000000000000000);
            v548[0] = v126;
          }

          else
          {
            HIBYTE(v548[2]) = v124;
            v126 = v548;
            if (!v124)
            {
              goto LABEL_268;
            }
          }

          memcpy(v126, v123, v125);
LABEL_268:
          *(v125 + v126) = 0;
          *v562 = v562;
          *&v562[8] = v562;
          *&v562[16] = 0;
          if (SHIBYTE(v548[2]) >= 0)
          {
            v128 = v548;
          }

          else
          {
            v128 = v548[0];
          }

          v129 = strtok(v128, "/");
          if (v129)
          {
            v130 = v129;
            do
            {
              v131 = strlen(v130);
              if (v131 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_100001038();
              }

              v132 = v131;
              if (v131 >= 0x17)
              {
                if ((v131 | 7) == 0x17)
                {
                  v134 = 25;
                }

                else
                {
                  v134 = (v131 | 7) + 1;
                }

                v133 = operator new(v134);
                *(&v560 + 1) = v132;
                v561 = v134 | 0x8000000000000000;
                *&v560 = v133;
              }

              else
              {
                HIBYTE(v561) = v131;
                v133 = &v560;
                if (!v131)
                {
                  goto LABEL_282;
                }
              }

              memmove(v133, v130, v132);
LABEL_282:
              *(v133 + v132) = 0;
              v135 = operator new(0x28uLL);
              v135[1] = v560;
              v136 = *v562;
              *(v135 + 4) = v561;
              *v135 = v136;
              *(v135 + 1) = v562;
              *(v136 + 8) = v135;
              *v562 = v135;
              ++*&v562[16];
              v130 = strtok(0, "/");
            }

            while (v130);
          }

          if (!*&v562[16])
          {
            goto LABEL_397;
          }

LABEL_286:
          if (&v551 != (*&v562[8] + 16))
          {
            v137 = *(*&v562[8] + 39);
            if (SHIBYTE(v551.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v137 >= 0)
              {
                v138 = (*&v562[8] + 16);
              }

              else
              {
                v138 = *(*&v562[8] + 16);
              }

              if (v137 >= 0)
              {
                v139 = *(*&v562[8] + 39);
              }

              else
              {
                v139 = *(*&v562[8] + 24);
              }

              sub_100001E80(&v551.__r_.__value_.__l.__data_, v138, v139);
            }

            else if ((*(*&v562[8] + 39) & 0x80) != 0)
            {
              sub_100001DC0(&v551, *(*&v562[8] + 16), *(*&v562[8] + 24));
            }

            else
            {
              v551 = *(*&v562[8] + 16);
            }
          }

          v140 = v546;
          *(&v560 + 1) = 0;
          v561 = 0;
          *&v560 = &v560 + 8;
          v141 = *(v546 + 20);
          v142 = (v546 + 168);
          if (v141 == (v546 + 168))
          {
            v143 = 0;
            v144 = HIBYTE(v551.__r_.__value_.__r.__words[2]);
            goto LABEL_345;
          }

          do
          {
            sub_10001224C(&v560, &v560 + 1, v141 + 4, (v141 + 4));
            v145 = v141[1];
            if (v145)
            {
              do
              {
                v146 = v145;
                v145 = *v145;
              }

              while (v145);
            }

            else
            {
              do
              {
                v146 = v141[2];
                v46 = *v146 == v141;
                v141 = v146;
              }

              while (!v46);
            }

            v141 = v146;
          }

          while (v146 != v142);
          v143 = *(&v560 + 1);
          v144 = HIBYTE(v551.__r_.__value_.__r.__words[2]);
          if (!*(&v560 + 1))
          {
            goto LABEL_345;
          }

          if ((v551.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v147 = &v551;
          }

          else
          {
            v147 = v551.__r_.__value_.__r.__words[0];
          }

          if ((v551.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v148 = HIBYTE(v551.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v148 = v551.__r_.__value_.__l.__size_;
          }

          v149 = &v560 + 8;
          v150 = *(&v560 + 1);
          while (1)
          {
            v151 = v150[55];
            if (v151 >= 0)
            {
              v152 = v150 + 32;
            }

            else
            {
              v152 = *(v150 + 4);
            }

            if (v151 >= 0)
            {
              v153 = v150[55];
            }

            else
            {
              v153 = *(v150 + 5);
            }

            if (v148 >= v153)
            {
              v154 = v153;
            }

            else
            {
              v154 = v148;
            }

            v155 = memcmp(v152, v147, v154);
            if (v155)
            {
              if (v155 < 0)
              {
                goto LABEL_315;
              }

LABEL_329:
              v149 = v150;
              v150 = *v150;
              if (!v150)
              {
LABEL_330:
                if (v149 != &v560 + 8)
                {
                  v158 = *(v149 + 4);
                  v157 = v149 + 32;
                  v156 = v158;
                  v159 = v157[23];
                  if (v159 >= 0)
                  {
                    v160 = v157;
                  }

                  else
                  {
                    v160 = v156;
                  }

                  if (v159 >= 0)
                  {
                    v161 = v157[23];
                  }

                  else
                  {
                    v161 = *(v157 + 1);
                  }

                  if (v161 >= v148)
                  {
                    v162 = v148;
                  }

                  else
                  {
                    v162 = v161;
                  }

                  v163 = memcmp(v147, v160, v162);
                  if (v163)
                  {
                    if (v163 < 0)
                    {
                      goto LABEL_345;
                    }
                  }

                  else if (v148 < v161)
                  {
                    goto LABEL_345;
                  }

                  v543 = &v551;
                  v172 = sub_10000C290(&v560, &v551.__r_.__value_.__l.__data_, &std::piecewise_construct, &v543);
                  v174 = v172[7];
                  v173 = v172[8];
                  if (v173)
                  {
                    atomic_fetch_add_explicit((v173 + 8), 1uLL, memory_order_relaxed);
                  }

                  v165 = v547;
                  v546 = v174;
                  v547 = v173;
                  if (v165 && !atomic_fetch_add(&v165->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v165->__on_zero_shared)(v165);
                    goto LABEL_370;
                  }

                  goto LABEL_371;
                }

LABEL_345:
                if ((v144 & 0x80) == 0)
                {
                  if (v144 == 2)
                  {
                    v164 = &v551;
                    goto LABEL_350;
                  }

                  goto LABEL_395;
                }

                if (v551.__r_.__value_.__l.__size_ == 2)
                {
                  v164 = v551.__r_.__value_.__r.__words[0];
LABEL_350:
                  if (LOWORD(v164->__r_.__value_.__l.__data_) == 11822)
                  {
                    v165 = *(v140 + 4);
                    if (v165)
                    {
                      v166 = *(v140 + 3);
                      atomic_fetch_add_explicit(&v165->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      v167 = std::__shared_weak_count::lock(v165);
                      if (!v167)
                      {
                        goto LABEL_370;
                      }

                      if (!atomic_fetch_add(&v167->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        v168 = v167;
                        (v167->__on_zero_shared)();
                        std::__shared_weak_count::__release_weak(v168);
                      }

                      std::__shared_weak_count::__release_weak(v165);
                      if (v166)
                      {
                        v165 = *(v546 + 4);
                        if (v165)
                        {
                          v169 = *(v546 + 3);
                          atomic_fetch_add_explicit(&v165->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                          v170 = std::__shared_weak_count::lock(v165);
                          if (v170)
                          {
                            v171 = v169;
                          }

                          else
                          {
                            v171 = 0;
                          }
                        }

                        else
                        {
                          v171 = 0;
                          v170 = 0;
                        }

                        v175 = v547;
                        v546 = v171;
                        v547 = v170;
                        if (v175 && !atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v175->__on_zero_shared)(v175);
                          std::__shared_weak_count::__release_weak(v175);
                        }

                        if (v165)
                        {
LABEL_370:
                          std::__shared_weak_count::__release_weak(v165);
                        }
                      }
                    }

LABEL_371:
                    v176 = SHIBYTE(v551.__r_.__value_.__r.__words[2]);
                    if ((v551.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v177 = HIBYTE(v551.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v177 = v551.__r_.__value_.__l.__size_;
                    }

                    v178 = v177 + 1;
                    if (v177 + 1 > 0x7FFFFFFFFFFFFFF7)
                    {
                      sub_100001038();
                    }

                    if (v178 < 0x17)
                    {
                      v544 = 0;
                      v545 = 0;
                      v543 = 0;
                      v180 = &v543;
                      HIBYTE(v545) = v177 + 1;
                      if (v177)
                      {
                        goto LABEL_381;
                      }
                    }

                    else
                    {
                      if ((v178 | 7) == 0x17)
                      {
                        v179 = 25;
                      }

                      else
                      {
                        v179 = (v178 | 7) + 1;
                      }

                      v180 = operator new(v179);
                      v544 = (v177 + 1);
                      v545 = v179 | 0x8000000000000000;
                      v543 = v180;
LABEL_381:
                      if (v176 >= 0)
                      {
                        v181 = &v551;
                      }

                      else
                      {
                        v181 = v551.__r_.__value_.__r.__words[0];
                      }

                      memmove(v180, v181, v177);
                    }

                    *(v180 + v177) = 47;
                    if (v545 >= 0)
                    {
                      v182 = &v543;
                    }

                    else
                    {
                      v182 = v543;
                    }

                    if (v545 >= 0)
                    {
                      v183 = HIBYTE(v545);
                    }

                    else
                    {
                      v183 = v544;
                    }

                    std::string::append(&v550, v182, v183);
                    if (SHIBYTE(v545) < 0)
                    {
                      operator delete(v543);
                    }

                    v184 = *&v562[8];
                    v186 = **&v562[8];
                    v185 = *(*&v562[8] + 8);
                    *(v186 + 8) = v185;
                    *v185 = v186;
                    --*&v562[16];
                    if (*(v184 + 39) < 0)
                    {
                      v187 = v184;
                      operator delete(*(v184 + 16));
                      v184 = v187;
                    }

                    operator delete(v184);
                    sub_10000C570(&v560, *(&v560 + 1));
                    if (!*&v562[16])
                    {
                      goto LABEL_397;
                    }

                    goto LABEL_286;
                  }
                }

LABEL_395:
                sub_10000C570(&v560, v143);
                if (*&v562[16])
                {
                  v188 = *&v562[8];
                  v189 = *(*v562 + 8);
                  v190 = **&v562[8];
                  *(v190 + 8) = v189;
                  *v189 = v190;
                  *&v562[16] = 0;
                  if (v188 != v562)
                  {
                    do
                    {
                      v210 = *(v188 + 1);
                      if (v188[39] < 0)
                      {
                        operator delete(*(v188 + 2));
                      }

                      operator delete(v188);
                      v188 = v210;
                    }

                    while (v210 != v562);
                  }
                }

LABEL_397:
                if (SHIBYTE(v548[2]) < 0)
                {
                  operator delete(v548[0]);
                }

                if (v525)
                {
                  operator delete(v525);
                }

                if (SHIBYTE(v549[2]) < 0)
                {
                  operator delete(v549[0]);
                }

LABEL_403:
                memset(v549, 170, 24);
                v191 = v546;
                CommandBase::getCommandSet(v546, v549);
                if (((v533 == 0) & ~v528) != 0)
                {
                  goto LABEL_455;
                }

                v192 = v549[1];
                if (!v549[1])
                {
                  goto LABEL_455;
                }

                if ((v551.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v193 = &v551;
                }

                else
                {
                  v193 = v551.__r_.__value_.__r.__words[0];
                }

                if ((v551.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v194 = HIBYTE(v551.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v194 = v551.__r_.__value_.__l.__size_;
                }

                v195 = &v549[1];
                while (1)
                {
                  v196 = *(v192 + 55);
                  if (v196 >= 0)
                  {
                    v197 = v192 + 4;
                  }

                  else
                  {
                    v197 = v192[4];
                  }

                  if (v196 >= 0)
                  {
                    v198 = *(v192 + 55);
                  }

                  else
                  {
                    v198 = v192[5];
                  }

                  if (v194 >= v198)
                  {
                    v199 = v198;
                  }

                  else
                  {
                    v199 = v194;
                  }

                  v200 = memcmp(v197, v193, v199);
                  if (v200)
                  {
                    if (v200 < 0)
                    {
                      goto LABEL_412;
                    }
                  }

                  else if (v198 < v194)
                  {
LABEL_412:
                    v192 = v192[1];
                    if (!v192)
                    {
                      goto LABEL_427;
                    }

                    continue;
                  }

                  v195 = v192;
                  v192 = *v192;
                  if (!v192)
                  {
LABEL_427:
                    if (v195 == &v549[1])
                    {
                      goto LABEL_455;
                    }

                    v203 = v195[4];
                    v202 = v195 + 4;
                    v201 = v203;
                    v204 = *(v202 + 23);
                    if (v204 >= 0)
                    {
                      v205 = v202;
                    }

                    else
                    {
                      v205 = v201;
                    }

                    if (v204 >= 0)
                    {
                      v206 = *(v202 + 23);
                    }

                    else
                    {
                      v206 = v202[1];
                    }

                    if (v206 >= v194)
                    {
                      v207 = v194;
                    }

                    else
                    {
                      v207 = v206;
                    }

                    v208 = memcmp(v193, v205, v207);
                    if (v208)
                    {
                      if ((v208 & 0x80000000) == 0)
                      {
                        goto LABEL_439;
                      }

LABEL_455:
                      __src = v191;
                      v220 = v549[0];
                      if (v549[0] != &v549[1])
                      {
                        while (2)
                        {
                          v221 = SHIBYTE(v550.__r_.__value_.__r.__words[2]);
                          if ((v550.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v222 = HIBYTE(v550.__r_.__value_.__r.__words[2]);
                          }

                          else
                          {
                            v222 = v550.__r_.__value_.__l.__size_;
                          }

                          v223 = *(v220 + 55);
                          if (v223 >= 0)
                          {
                            v224 = *(v220 + 55);
                          }

                          else
                          {
                            v224 = v220[5];
                          }

                          v225 = v224 + v222;
                          if (v224 + v222 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_100001038();
                          }

                          if (v225 <= 0x16)
                          {
                            memset(v548, 0, sizeof(v548));
                            v227 = v548;
                            HIBYTE(v548[2]) = v224 + v222;
                          }

                          else
                          {
                            if ((v225 | 7) == 0x17)
                            {
                              v226 = 25;
                            }

                            else
                            {
                              v226 = (v225 | 7) + 1;
                            }

                            v227 = operator new(v226);
                            v548[1] = (v224 + v222);
                            v548[2] = (v226 | 0x8000000000000000);
                            v548[0] = v227;
                          }

                          if (v222)
                          {
                            if (v221 >= 0)
                            {
                              v228 = &v550;
                            }

                            else
                            {
                              v228 = v550.__r_.__value_.__r.__words[0];
                            }

                            memmove(v227, v228, v222);
                          }

                          v229 = &v227[v222];
                          if (v224)
                          {
                            if (v223 >= 0)
                            {
                              v230 = v220 + 4;
                            }

                            else
                            {
                              v230 = v220[4];
                            }

                            memmove(v229, v230, v224);
                          }

                          v229[v224] = 0;
                          v231 = SHIBYTE(v548[2]);
                          if ((SHIBYTE(v548[2]) & 0x8000000000000000) != 0)
                          {
                            v231 = v548[1];
                            v233 = v548[2] & 0x7FFFFFFFFFFFFFFFLL;
                            v234 = (v548[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                            if (v234 != v548[1])
                            {
                              v232 = v548[0];
                              goto LABEL_502;
                            }

                            if (v233 == 0x7FFFFFFFFFFFFFF7)
                            {
                              sub_100001038();
                            }

                            v232 = v548[0];
                            if (v234 >= 0x3FFFFFFFFFFFFFF3)
                            {
                              v238 = 0;
                              v237 = 0x7FFFFFFFFFFFFFF7;
                            }

                            else
                            {
LABEL_487:
                              v235 = 2 * v234;
                              if (v233 > 2 * v234)
                              {
                                v235 = v233;
                              }

                              if ((v235 | 7) == 0x17)
                              {
                                v236 = 25;
                              }

                              else
                              {
                                v236 = (v235 | 7) + 1;
                              }

                              if (v235 >= 0x17)
                              {
                                v237 = v236;
                              }

                              else
                              {
                                v237 = 23;
                              }

                              v238 = v234 == 22;
                            }

                            v239 = operator new(v237);
                            v240 = v239;
                            if (v234)
                            {
                              memmove(v239, v232, v234);
                            }

                            v240[v234] = 32;
                            if (!v238)
                            {
                              operator delete(v232);
                            }

                            v548[1] = v233;
                            v548[2] = (v237 | 0x8000000000000000);
                            v548[0] = v240;
                            v241 = &v240[v233];
                          }

                          else
                          {
                            v232 = v548;
                            if (SHIBYTE(v548[2]) == 22)
                            {
                              v233 = 23;
                              v234 = 22;
                              goto LABEL_487;
                            }

LABEL_502:
                            *(v231 + v232) = 32;
                            v242 = v231 + 1;
                            if (SHIBYTE(v548[2]) < 0)
                            {
                              v548[1] = v242;
                            }

                            else
                            {
                              HIBYTE(v548[2]) = v242 & 0x7F;
                            }

                            v241 = &v242[v232];
                          }

                          *v241 = 0;
                          v243 = v548[0];
                          *v562 = v548[1];
                          *&v562[7] = *(&v548[1] + 7);
                          v244 = HIBYTE(v548[2]);
                          memset(v548, 0, sizeof(v548));
                          v245 = operator new(0x28uLL);
                          v246 = *v562;
                          v245[2] = v243;
                          v245[3] = v246;
                          *(v245 + 31) = *&v562[7];
                          *(v245 + 39) = v244;
                          v247 = v540;
                          *v245 = v540;
                          v245[1] = &v540;
                          v247[1] = v245;
                          v540 = v245;
                          ++v542;
                          v248 = v220[1];
                          if (v248)
                          {
                            do
                            {
                              v249 = v248;
                              v248 = *v248;
                            }

                            while (v248);
                          }

                          else
                          {
                            do
                            {
                              v249 = v220[2];
                              v46 = *v249 == v220;
                              v220 = v249;
                            }

                            while (!v46);
                          }

                          v220 = v249;
                          if (v249 == &v549[1])
                          {
                            break;
                          }

                          continue;
                        }
                      }

                      CommandBase::getSubCommandMap(__src, v548);
                      v250 = v548[0];
                      if (v548[0] != &v548[1])
                      {
                        while (2)
                        {
                          v251 = SHIBYTE(v550.__r_.__value_.__r.__words[2]);
                          if ((v550.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v252 = HIBYTE(v550.__r_.__value_.__r.__words[2]);
                          }

                          else
                          {
                            v252 = v550.__r_.__value_.__l.__size_;
                          }

                          v253 = *(v250 + 55);
                          if (v253 >= 0)
                          {
                            v254 = *(v250 + 55);
                          }

                          else
                          {
                            v254 = v250[5];
                          }

                          v255 = v254 + v252;
                          if (v254 + v252 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_100001038();
                          }

                          if (v255 <= 0x16)
                          {
                            memset(v562, 0, sizeof(v562));
                            v257 = v562;
                            v562[23] = v254 + v252;
                          }

                          else
                          {
                            if ((v255 | 7) == 0x17)
                            {
                              v256 = 25;
                            }

                            else
                            {
                              v256 = (v255 | 7) + 1;
                            }

                            v257 = operator new(v256);
                            *&v562[8] = v254 + v252;
                            *&v562[16] = v256 | 0x8000000000000000;
                            *v562 = v257;
                          }

                          if (v252)
                          {
                            if (v251 >= 0)
                            {
                              v258 = &v550;
                            }

                            else
                            {
                              v258 = v550.__r_.__value_.__r.__words[0];
                            }

                            memmove(v257, v258, v252);
                          }

                          v259 = &v257[v252];
                          if (v254)
                          {
                            if (v253 >= 0)
                            {
                              v260 = v250 + 4;
                            }

                            else
                            {
                              v260 = v250[4];
                            }

                            memmove(v259, v260, v254);
                          }

                          v259[v254] = 0;
                          v261 = v562[23];
                          if ((v562[23] & 0x8000000000000000) != 0)
                          {
                            v261 = *&v562[8];
                            v263 = *&v562[16] & 0x7FFFFFFFFFFFFFFFLL;
                            v264 = (*&v562[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                            if (v264 != *&v562[8])
                            {
                              v262 = *v562;
                              goto LABEL_560;
                            }

                            if (v263 == 0x7FFFFFFFFFFFFFF7)
                            {
                              sub_100001038();
                            }

                            v262 = *v562;
                            if (v264 >= 0x3FFFFFFFFFFFFFF3)
                            {
                              v268 = 0;
                              v267 = 0x7FFFFFFFFFFFFFF7;
                            }

                            else
                            {
LABEL_545:
                              v265 = 2 * v264;
                              if (v263 > 2 * v264)
                              {
                                v265 = v263;
                              }

                              if ((v265 | 7) == 0x17)
                              {
                                v266 = 25;
                              }

                              else
                              {
                                v266 = (v265 | 7) + 1;
                              }

                              if (v265 >= 0x17)
                              {
                                v267 = v266;
                              }

                              else
                              {
                                v267 = 23;
                              }

                              v268 = v264 == 22;
                            }

                            v269 = operator new(v267);
                            v270 = v269;
                            if (v264)
                            {
                              memmove(v269, v262, v264);
                            }

                            v270[v264] = 47;
                            if (!v268)
                            {
                              operator delete(v262);
                            }

                            *&v562[8] = v263;
                            *&v562[16] = v267 | 0x8000000000000000;
                            *v562 = v270;
                            v271 = &v270[v263];
                          }

                          else
                          {
                            v262 = v562;
                            if (v562[23] == 22)
                            {
                              v263 = 23;
                              v264 = 22;
                              goto LABEL_545;
                            }

LABEL_560:
                            v262[v261] = 47;
                            v272 = v261 + 1;
                            if ((v562[23] & 0x80000000) != 0)
                            {
                              *&v562[8] = v272;
                            }

                            else
                            {
                              v562[23] = v272 & 0x7F;
                            }

                            v271 = &v262[v272];
                          }

                          *v271 = 0;
                          *&v560 = *&v562[8];
                          v273 = *v562;
                          *(&v560 + 7) = *&v562[15];
                          v274 = v562[23];
                          memset(v562, 0, sizeof(v562));
                          v275 = operator new(0x28uLL);
                          v276 = v560;
                          v275[2] = v273;
                          v275[3] = v276;
                          *(v275 + 31) = *(&v560 + 7);
                          *(v275 + 39) = v274;
                          v277 = v540;
                          *v275 = v540;
                          v275[1] = &v540;
                          v277[1] = v275;
                          v540 = v275;
                          ++v542;
                          v278 = v250[1];
                          if (v278)
                          {
                            do
                            {
                              v279 = v278;
                              v278 = *v278;
                            }

                            while (v278);
                          }

                          else
                          {
                            do
                            {
                              v279 = v250[2];
                              v46 = *v279 == v250;
                              v250 = v279;
                            }

                            while (!v46);
                          }

                          v250 = v279;
                          if (v279 == &v548[1])
                          {
                            break;
                          }

                          continue;
                        }
                      }

                      sub_10000C570(v548, v548[1]);
                    }

                    else
                    {
                      if (v194 < v206)
                      {
                        goto LABEL_455;
                      }

LABEL_439:
                      rl_completion_append_character = 32;
                      (*(*v191 + 48))(v548, v191, &v551);
                      for (i = v548[1]; i != v548; i = i[1])
                      {
                        v213 = operator new(0x28uLL);
                        v214 = v213;
                        *v213 = 0;
                        v213[1] = 0;
                        if (*(i + 39) < 0)
                        {
                          sub_1000010F4(v213 + 16, i[2], i[3]);
                        }

                        else
                        {
                          v211 = *(i + 1);
                          v213[4] = i[4];
                          *(v213 + 1) = v211;
                        }

                        v212 = v540;
                        *v214 = v540;
                        v214[1] = &v540;
                        v212[1] = v214;
                        v540 = v214;
                        ++v542;
                      }

                      if (v548[2])
                      {
                        v215 = v548[1];
                        v216 = *(v548[0] + 1);
                        v217 = *v548[1];
                        *(v217 + 8) = v216;
                        *v216 = v217;
                        v548[2] = 0;
                        if (v215 != v548)
                        {
                          do
                          {
                            v218 = v215[1];
                            if (*(v215 + 39) < 0)
                            {
                              v219 = v215;
                              operator delete(v215[2]);
                              v215 = v219;
                            }

                            operator delete(v215);
                            v215 = v218;
                          }

                          while (v218 != v548);
                        }
                      }
                    }

                    sub_10000C4EC(v549, v549[1]);
                    if (SHIBYTE(v550.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v550.__r_.__value_.__l.__data_);
                      if (SHIBYTE(v551.__r_.__value_.__r.__words[2]) < 0)
                      {
                        goto LABEL_577;
                      }

LABEL_574:
                      v280 = v547;
                      if (v547)
                      {
LABEL_578:
                        if (!atomic_fetch_add(&v280->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v280->__on_zero_shared)(v280);
                          std::__shared_weak_count::__release_weak(v280);
                        }
                      }
                    }

                    else
                    {
                      if ((SHIBYTE(v551.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_574;
                      }

LABEL_577:
                      operator delete(v551.__r_.__value_.__l.__data_);
                      v280 = v547;
                      if (v547)
                      {
                        goto LABEL_578;
                      }
                    }

                    if (!v533)
                    {
                      goto LABEL_966;
                    }

                    v281 = v532;
                    v282 = *(v531 + 1);
                    v283 = *v532;
                    *(v283 + 8) = v282;
                    *v282 = v283;
                    v533 = 0;
                    if (v281 == &v531)
                    {
                      goto LABEL_966;
                    }

                    do
                    {
                      v284 = v281[1];
                      if (*(v281 + 39) < 0)
                      {
                        operator delete(v281[2]);
                      }

                      operator delete(v281);
                      v281 = v284;
                    }

                    while (v284 != &v531);
                    v93 = v533;
                    goto LABEL_587;
                  }
                }
              }
            }

            else
            {
              if (v153 >= v148)
              {
                goto LABEL_329;
              }

LABEL_315:
              v150 = *(v150 + 1);
              if (!v150)
              {
                goto LABEL_330;
              }
            }
          }
        }
      }

      memcpy(v114, v110, v113);
      goto LABEL_244;
    }

LABEL_229:
    v110 = &unk_10001D64F;
    goto LABEL_235;
  }

LABEL_587:
  if (!v93)
  {
    goto LABEL_966;
  }

  v94 = v532;
  v100 = *(v532 + 39);
LABEL_589:
  v285 = (v94 + 16);
  if ((v100 & 0x80) != 0)
  {
    if (*(v94 + 3) != 2)
    {
      goto LABEL_815;
    }

    v286 = *v285;
  }

  else
  {
    v286 = v94 + 16;
    if (v100 != 2)
    {
      goto LABEL_815;
    }
  }

  if (*v286 != 25699)
  {
    goto LABEL_815;
  }

  rl_attempted_completion_over = 1;
  if (v528 == (v93 != 1))
  {
    goto LABEL_815;
  }

  v288 = *v94;
  v287 = *(v94 + 1);
  *(v288 + 8) = v287;
  *v287 = v288;
  v533 = v93 - 1;
  if (v94[39] < 0)
  {
    operator delete(*v285);
  }

  operator delete(v94);
  if (v542)
  {
    v289 = v541;
    v290 = v540[1];
    v291 = *v541;
    v291[1] = v290;
    *v290 = v291;
    v542 = 0;
    if (v289 != &v540)
    {
      do
      {
        v294 = v289[1];
        if (*(v289 + 39) < 0)
        {
          operator delete(v289[2]);
        }

        operator delete(v289);
        v289 = v294;
      }

      while (v294 != &v540);
    }
  }

  rl_completion_append_character = 47;
  rl_attempted_completion_over = 1;
  if (v533 > 1)
  {
    goto LABEL_809;
  }

  v543 = 0;
  v544 = 0;
  v292 = qword_100024320;
  if (qword_100024320)
  {
    v292 = std::__shared_weak_count::lock(qword_100024320);
    v544 = v292;
    if (v292)
    {
      v543 = qword_100024318;
    }
  }

  v293 = v532 + 16;
  if (*(v532 + 39) < 0)
  {
    if (!*(v532 + 3))
    {
LABEL_617:
      v298 = &unk_10001D64F;
      goto LABEL_623;
    }

    v293 = *v293;
  }

  else if (!*(v532 + 39))
  {
    goto LABEL_617;
  }

  if (*v293 != 47)
  {
    goto LABEL_617;
  }

  v295 = qword_100024310;
  if (qword_100024310)
  {
    v296 = v292;
    v295 = std::__shared_weak_count::lock(qword_100024310);
    v292 = v296;
    v297 = qword_100024308;
    if (!v295)
    {
      v297 = 0;
    }
  }

  else
  {
    v297 = 0;
  }

  v543 = v297;
  v544 = v295;
  if (v292 && !atomic_fetch_add(&v292->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v299 = v292;
    (v292->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v299);
  }

  v298 = "/";
LABEL_623:
  memset(&v551, 170, sizeof(v551));
  v300 = strlen(v298);
  if (v300 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001038();
  }

  v301 = v300;
  if (v300 >= 0x17)
  {
    if ((v300 | 7) == 0x17)
    {
      v303 = 25;
    }

    else
    {
      v303 = (v300 | 7) + 1;
    }

    v302 = operator new(v303);
    v551.__r_.__value_.__l.__size_ = v301;
    v551.__r_.__value_.__r.__words[2] = v303 | 0x8000000000000000;
    v551.__r_.__value_.__r.__words[0] = v302;
    goto LABEL_631;
  }

  *(&v551.__r_.__value_.__s + 23) = v300;
  v302 = &v551;
  if (v300)
  {
LABEL_631:
    memcpy(v302, v298, v301);
  }

  *(v302 + v301) = 0;
  v304 = v533;
  if (!v533)
  {
    goto LABEL_768;
  }

  memset(&v550, 170, sizeof(v550));
  v305 = v532;
  if (*(v532 + 39) < 0)
  {
    sub_1000010F4(&v550, *(v532 + 2), *(v532 + 3));
    v305 = v532;
    v304 = v533;
  }

  else
  {
    v550 = *(v532 + 16);
  }

  v307 = *v305;
  v306 = *(v305 + 1);
  *(v307 + 8) = v306;
  *v306 = v307;
  v533 = v304 - 1;
  if (v305[39] < 0)
  {
    operator delete(*(v305 + 2));
  }

  operator delete(v305);
  v308 = HIBYTE(v550.__r_.__value_.__r.__words[2]);
  if ((v550.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v309 = &v550;
  }

  else
  {
    v309 = v550.__r_.__value_.__r.__words[0];
  }

  if ((v550.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v308 = v550.__r_.__value_.__l.__size_;
  }

  v310 = v308 + 1;
  if (v308 == -1)
  {
    v311 = 0;
  }

  else
  {
    if ((v310 & 0x8000000000000000) != 0)
    {
      sub_100001D40();
    }

    v311 = operator new(v308 + 1);
    memcpy(v311, v309, v310);
  }

  memset(v549, 170, 24);
  v312 = strlen(v311);
  __srca = v311;
  if (v312 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001038();
  }

  v313 = v312;
  if (v312 >= 0x17)
  {
    if ((v312 | 7) == 0x17)
    {
      v315 = 25;
    }

    else
    {
      v315 = (v312 | 7) + 1;
    }

    v314 = operator new(v315);
    v549[1] = v313;
    v549[2] = (v315 | 0x8000000000000000);
    v549[0] = v314;
  }

  else
  {
    HIBYTE(v549[2]) = v312;
    v314 = v549;
    if (!v312)
    {
      goto LABEL_656;
    }
  }

  memcpy(v314, v311, v313);
LABEL_656:
  *(v313 + v314) = 0;
  v548[0] = v548;
  v548[1] = v548;
  v548[2] = 0;
  if (SHIBYTE(v549[2]) >= 0)
  {
    v316 = v549;
  }

  else
  {
    v316 = v549[0];
  }

  v317 = strtok(v316, "/");
  if (v317)
  {
    v318 = v317;
    do
    {
      v319 = strlen(v318);
      if (v319 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100001038();
      }

      v320 = v319;
      if (v319 >= 0x17)
      {
        if ((v319 | 7) == 0x17)
        {
          v322 = 25;
        }

        else
        {
          v322 = (v319 | 7) + 1;
        }

        v321 = operator new(v322);
        *&v562[8] = v320;
        *&v562[16] = v322 | 0x8000000000000000;
        *v562 = v321;
      }

      else
      {
        v562[23] = v319;
        v321 = v562;
        if (!v319)
        {
          goto LABEL_670;
        }
      }

      memmove(v321, v318, v320);
LABEL_670:
      v321[v320] = 0;
      v323 = operator new(0x28uLL);
      v323[1] = *v562;
      *(v323 + 4) = *&v562[16];
      v324 = v548[0];
      *v323 = v548[0];
      *(v323 + 1) = v548;
      v324[1] = v323;
      v548[0] = v323;
      ++v548[2];
      v318 = strtok(0, "/");
    }

    while (v318);
  }

  if (!v548[2])
  {
    goto LABEL_762;
  }

  while (2)
  {
    memset(v562, 170, sizeof(v562));
    v325 = v543;
    CommandBase::getSubCommandMap(v543, v562);
    v326 = v548[1];
    v327 = (v548[1] + 16);
    v328 = *&v562[8];
    v329 = *(v548[1] + 39);
    if (!*&v562[8])
    {
      goto LABEL_715;
    }

    if ((v329 & 0x80u) == 0)
    {
      v330 = v548[1] + 16;
    }

    else
    {
      v330 = *(v548[1] + 2);
    }

    if ((v329 & 0x80u) == 0)
    {
      v331 = *(v548[1] + 39);
    }

    else
    {
      v331 = *(v548[1] + 3);
    }

    v332 = &v562[8];
    v333 = *&v562[8];
    do
    {
      while (1)
      {
        v334 = *(v333 + 55);
        v335 = v334 >= 0 ? v333 + 4 : v333[4];
        v336 = v334 >= 0 ? *(v333 + 55) : v333[5];
        v337 = v331 >= v336 ? v336 : v331;
        v338 = memcmp(v335, v330, v337);
        if (v338)
        {
          break;
        }

        if (v336 >= v331)
        {
          goto LABEL_696;
        }

LABEL_682:
        v333 = v333[1];
        if (!v333)
        {
          goto LABEL_697;
        }
      }

      if (v338 < 0)
      {
        goto LABEL_682;
      }

LABEL_696:
      v332 = v333;
      v333 = *v333;
    }

    while (v333);
LABEL_697:
    if (v332 == &v562[8])
    {
      goto LABEL_715;
    }

    v341 = *(v332 + 4);
    v340 = (v332 + 32);
    v339 = v341;
    v342 = *(v340 + 23);
    if (v342 >= 0)
    {
      v343 = v340;
    }

    else
    {
      v343 = v339;
    }

    if (v342 >= 0)
    {
      v344 = *(v340 + 23);
    }

    else
    {
      v344 = v340[1];
    }

    if (v344 >= v331)
    {
      v345 = v331;
    }

    else
    {
      v345 = v344;
    }

    v346 = memcmp(v330, v343, v345);
    if (!v346)
    {
      if (v331 < v344)
      {
        goto LABEL_715;
      }

LABEL_709:
      *&v560 = v327;
      v347 = sub_10000C290(v562, v327, &std::piecewise_construct, &v560);
      v349 = v347[7];
      v348 = v347[8];
      if (v348)
      {
        atomic_fetch_add_explicit((v348 + 8), 1uLL, memory_order_relaxed);
      }

      v350 = v544;
      v543 = v349;
      v544 = v348;
      if (v350 && !atomic_fetch_add(&v350->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v350->__on_zero_shared)(v350);
LABEL_735:
        std::__shared_weak_count::__release_weak(v350);
      }

LABEL_736:
      v358 = v548[1];
      v359 = *(v548[1] + 39);
      if (v359 >= 0)
      {
        v360 = *(v548[1] + 39);
      }

      else
      {
        v360 = *(v548[1] + 3);
      }

      v361 = v360 + 1;
      if (v360 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100001038();
      }

      if (v361 < 0x17)
      {
        v561 = 0;
        v560 = 0uLL;
        v363 = &v560;
        HIBYTE(v561) = v360 + 1;
        if (!v360)
        {
          goto LABEL_750;
        }
      }

      else
      {
        if ((v361 | 7) == 0x17)
        {
          v362 = 25;
        }

        else
        {
          v362 = (v361 | 7) + 1;
        }

        v363 = operator new(v362);
        *(&v560 + 1) = v360 + 1;
        v561 = v362 | 0x8000000000000000;
        *&v560 = v363;
      }

      if (v359 >= 0)
      {
        v364 = v358 + 2;
      }

      else
      {
        v364 = v358[2];
      }

      memmove(v363, v364, v360);
LABEL_750:
      *(v363 + v360) = 47;
      if (v561 >= 0)
      {
        v365 = &v560;
      }

      else
      {
        v365 = v560;
      }

      if (v561 >= 0)
      {
        v366 = HIBYTE(v561);
      }

      else
      {
        v366 = *(&v560 + 1);
      }

      std::string::append(&v551, v365, v366);
      if (SHIBYTE(v561) < 0)
      {
        operator delete(v560);
      }

      v367 = v548[1];
      v369 = *v548[1];
      v368 = *(v548[1] + 1);
      *(v369 + 8) = v368;
      *v368 = v369;
      --v548[2];
      if (*(v367 + 39) < 0)
      {
        v370 = v367;
        operator delete(v367[2]);
        v367 = v370;
      }

      operator delete(v367);
      sub_10000C570(v562, *&v562[8]);
      if (!v548[2])
      {
        goto LABEL_762;
      }

      continue;
    }

    break;
  }

  if ((v346 & 0x80000000) == 0)
  {
    goto LABEL_709;
  }

LABEL_715:
  if ((v329 & 0x80) != 0)
  {
    if (v326[3] != 2)
    {
      goto LABEL_760;
    }

    v327 = *v327;
LABEL_720:
    if (*v327 != 11822)
    {
      goto LABEL_760;
    }

    v350 = *(v325 + 4);
    if (v350)
    {
      v351 = *(v325 + 3);
      atomic_fetch_add_explicit(&v350->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v352 = std::__shared_weak_count::lock(v350);
      if (!v352)
      {
        goto LABEL_735;
      }

      if (!atomic_fetch_add(&v352->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v353 = v352;
        (v352->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v353);
      }

      std::__shared_weak_count::__release_weak(v350);
      if (v351)
      {
        v350 = *(v543 + 4);
        if (v350)
        {
          v354 = *(v543 + 3);
          atomic_fetch_add_explicit(&v350->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v355 = std::__shared_weak_count::lock(v350);
          if (v355)
          {
            v356 = v354;
          }

          else
          {
            v356 = 0;
          }
        }

        else
        {
          v356 = 0;
          v355 = 0;
        }

        v357 = v544;
        v543 = v356;
        v544 = v355;
        if (v357 && !atomic_fetch_add(&v357->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v357->__on_zero_shared)(v357);
          std::__shared_weak_count::__release_weak(v357);
        }

        if (v350)
        {
          goto LABEL_735;
        }
      }
    }

    goto LABEL_736;
  }

  if (v329 == 2)
  {
    goto LABEL_720;
  }

LABEL_760:
  sub_10000C570(v562, v328);
  if (v548[2])
  {
    v371 = v548[1];
    v372 = *(v548[0] + 1);
    v373 = *v548[1];
    *(v373 + 8) = v372;
    *v372 = v373;
    v548[2] = 0;
    if (v371 != v548)
    {
      do
      {
        v392 = v371[1];
        if (*(v371 + 39) < 0)
        {
          operator delete(v371[2]);
        }

        operator delete(v371);
        v371 = v392;
      }

      while (v392 != v548);
    }
  }

LABEL_762:
  if (SHIBYTE(v549[2]) < 0)
  {
    operator delete(v549[0]);
  }

  if (__srca)
  {
    operator delete(__srca);
  }

  if (SHIBYTE(v550.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v550.__r_.__value_.__l.__data_);
  }

LABEL_768:
  CommandBase::getSubCommandMap(v543, &v550);
  v374 = v550.__r_.__value_.__r.__words[0];
  p_size = &v550.__r_.__value_.__l.__size_;
  if (v550.__r_.__value_.__l.__data_ != &v550.__r_.__value_.__r.__words[1])
  {
    __srcb = v551.__r_.__value_.__r.__words[0];
    v376 = v540;
    v377 = v542;
    do
    {
      v378 = SHIBYTE(v551.__r_.__value_.__r.__words[2]);
      if ((v551.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v379 = HIBYTE(v551.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v379 = v551.__r_.__value_.__l.__size_;
      }

      v380 = *(v374 + 55);
      if (v380 >= 0)
      {
        v381 = *(v374 + 55);
      }

      else
      {
        v381 = *(v374 + 40);
      }

      v382 = v381 + v379;
      if (v381 + v379 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100001038();
      }

      v526 = v377;
      if (v382 <= 0x16)
      {
        memset(v549, 0, 24);
        v385 = v549;
        HIBYTE(v549[2]) = v381 + v379;
      }

      else
      {
        v383 = p_size;
        if ((v382 | 7) == 0x17)
        {
          v384 = 25;
        }

        else
        {
          v384 = (v382 | 7) + 1;
        }

        v385 = operator new(v384);
        v549[1] = (v381 + v379);
        v549[2] = (v384 | 0x8000000000000000);
        v549[0] = v385;
        p_size = v383;
      }

      if (v379)
      {
        if (v378 >= 0)
        {
          v386 = &v551;
        }

        else
        {
          v386 = __srcb;
        }

        memmove(v385, v386, v379);
      }

      v387 = &v385[v379];
      if (v381)
      {
        if (v380 >= 0)
        {
          v388 = (v374 + 32);
        }

        else
        {
          v388 = *(v374 + 32);
        }

        memmove(v387, v388, v381);
      }

      v387[v381] = 0;
      v389 = operator new(0x28uLL);
      *(v389 + 1) = *v549;
      v389[4] = v549[2];
      *v389 = v376;
      v389[1] = &v540;
      v376[1] = v389;
      v377 = v526 + 1;
      v540 = v389;
      v542 = v526 + 1;
      v390 = *(v374 + 8);
      if (v390)
      {
        do
        {
          v391 = v390;
          v390 = *v390;
        }

        while (v390);
      }

      else
      {
        do
        {
          v391 = *(v374 + 16);
          v46 = *v391 == v374;
          v374 = v391;
        }

        while (!v46);
      }

      v376 = v389;
      v374 = v391;
    }

    while (v391 != p_size);
  }

  sub_10000C570(&v550, v550.__r_.__value_.__l.__size_);
  if (SHIBYTE(v551.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v551.__r_.__value_.__l.__data_);
  }

  v393 = v544;
  if (v544 && !atomic_fetch_add(&v544->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v393->__on_zero_shared)(v393);
    std::__shared_weak_count::__release_weak(v393);
  }

  if (!v533)
  {
    goto LABEL_966;
  }

LABEL_809:
  v394 = v532;
  v395 = *(v531 + 1);
  v396 = *v532;
  *(v396 + 8) = v395;
  *v395 = v396;
  v533 = 0;
  if (v394 == &v531)
  {
    goto LABEL_966;
  }

  do
  {
    v397 = v394[1];
    if (*(v394 + 39) < 0)
    {
      v398 = v394;
      operator delete(v394[2]);
      v394 = v398;
    }

    operator delete(v394);
    v394 = v397;
  }

  while (v397 != &v531);
  v93 = v533;
LABEL_815:
  if (!v93 || !((v93 != 1) | v528 & 1))
  {
    goto LABEL_966;
  }

  while (2)
  {
    if (v542)
    {
      v399 = v541;
      v400 = v540[1];
      v401 = *v541;
      v401[1] = v400;
      *v400 = v401;
      v542 = 0;
      if (v399 != &v540)
      {
        do
        {
          v407 = v399[1];
          if (*(v399 + 39) < 0)
          {
            v408 = v399;
            operator delete(v399[2]);
            v399 = v408;
          }

          operator delete(v399);
          v399 = v407;
        }

        while (v407 != &v540);
      }
    }

    v402 = v538;
    *&v551.__r_.__value_.__r.__words[1] = 0uLL;
    v551.__r_.__value_.__r.__words[0] = &v551.__r_.__value_.__l.__size_;
    v403 = *(v538 + 88);
    v404 = (v538 + 96);
    if (v403 == (v538 + 96))
    {
      goto LABEL_868;
    }

    do
    {
      sub_100011DA4(&v551, &v551.__r_.__value_.__l.__size_, v403 + 4, (v403 + 4));
      v405 = v403[1];
      if (v405)
      {
        do
        {
          v406 = v405;
          v405 = *v405;
        }

        while (v405);
      }

      else
      {
        do
        {
          v406 = v403[2];
          v46 = *v406 == v403;
          v403 = v406;
        }

        while (!v46);
      }

      v403 = v406;
    }

    while (v406 != v404);
    v409 = v551.__r_.__value_.__l.__size_;
    if (!v551.__r_.__value_.__l.__size_)
    {
      goto LABEL_868;
    }

    v410 = v532 + 16;
    v411 = *(v532 + 39);
    if (v411 >= 0)
    {
      v412 = v532 + 16;
    }

    else
    {
      v412 = *(v532 + 2);
    }

    if (v411 >= 0)
    {
      v413 = *(v532 + 39);
    }

    else
    {
      v413 = *(v532 + 3);
    }

    v414 = &v551.__r_.__value_.__r.__words[1];
    while (2)
    {
      while (2)
      {
        v415 = *(v409 + 55);
        if (v415 >= 0)
        {
          v416 = (v409 + 32);
        }

        else
        {
          v416 = *(v409 + 32);
        }

        if (v415 >= 0)
        {
          v417 = *(v409 + 55);
        }

        else
        {
          v417 = *(v409 + 40);
        }

        if (v413 >= v417)
        {
          v418 = v417;
        }

        else
        {
          v418 = v413;
        }

        v419 = memcmp(v416, v412, v418);
        if (v419)
        {
          if ((v419 & 0x80000000) == 0)
          {
            break;
          }

          goto LABEL_839;
        }

        if (v417 < v413)
        {
LABEL_839:
          v409 = *(v409 + 8);
          if (!v409)
          {
            goto LABEL_854;
          }

          continue;
        }

        break;
      }

      v414 = v409;
      v409 = *v409;
      if (v409)
      {
        continue;
      }

      break;
    }

LABEL_854:
    if (v414 != &v551.__r_.__value_.__r.__words[1])
    {
      v422 = v414[1].__r_.__value_.__l.__size_;
      v421 = &v414[1].__r_.__value_.__l.__size_;
      v420 = v422;
      v423 = *(v421 + 23);
      if (v423 >= 0)
      {
        v424 = v421;
      }

      else
      {
        v424 = v420;
      }

      if (v423 >= 0)
      {
        v425 = *(v421 + 23);
      }

      else
      {
        v425 = v421[1];
      }

      if (v425 >= v413)
      {
        v426 = v413;
      }

      else
      {
        v426 = v425;
      }

      v427 = memcmp(v412, v424, v426);
      if (v427)
      {
        if ((v427 & 0x80000000) == 0)
        {
LABEL_1037:
          (*(*v402 + 48))(&v550, v402, v410);
          for (j = v550.__r_.__value_.__l.__size_; j != &v550; j = *(j + 8))
          {
            v516 = operator new(0x28uLL);
            v517 = v516;
            *v516 = 0;
            v516[1] = 0;
            if (*(j + 39) < 0)
            {
              sub_1000010F4(v516 + 16, *(j + 16), *(j + 24));
            }

            else
            {
              v514 = *(j + 16);
              v516[4] = *(j + 32);
              *(v516 + 1) = v514;
            }

            v515 = v540;
            *v517 = v540;
            v517[1] = &v540;
            v515[1] = v517;
            v540 = v517;
            ++v542;
          }

          if (v550.__r_.__value_.__r.__words[2])
          {
            v518 = v550.__r_.__value_.__l.__size_;
            v519 = *(v550.__r_.__value_.__r.__words[0] + 8);
            v520 = *v550.__r_.__value_.__l.__size_;
            *(v520 + 8) = v519;
            *v519 = v520;
            v550.__r_.__value_.__r.__words[2] = 0;
            if (v518 != &v550)
            {
              do
              {
                v521 = *(v518 + 8);
                if (*(v518 + 39) < 0)
                {
                  operator delete(*(v518 + 16));
                }

                operator delete(v518);
                v518 = v521;
              }

              while (v521 != &v550);
            }
          }

          goto LABEL_965;
        }
      }

      else if (v413 >= v425)
      {
        goto LABEL_1037;
      }
    }

LABEL_868:
    *&v550.__r_.__value_.__r.__words[1] = 0uLL;
    v550.__r_.__value_.__r.__words[0] = &v550.__r_.__value_.__l.__size_;
    v428 = v402[20];
    if (v428 == v402 + 21)
    {
      v479 = 0;
      goto LABEL_964;
    }

    do
    {
      sub_10001224C(&v550, &v550.__r_.__value_.__l.__size_, v428 + 4, (v428 + 4));
      v429 = v428[1];
      if (v429)
      {
        do
        {
          v430 = v429;
          v429 = *v429;
        }

        while (v429);
      }

      else
      {
        do
        {
          v430 = v428[2];
          v46 = *v430 == v428;
          v428 = v430;
        }

        while (!v46);
      }

      v428 = v430;
    }

    while (v430 != v402 + 21);
    v479 = v550.__r_.__value_.__l.__size_;
    if (!v550.__r_.__value_.__l.__size_)
    {
LABEL_964:
      sub_10000C570(&v550, v479);
LABEL_965:
      sub_10000C4EC(&v551, v551.__r_.__value_.__l.__size_);
      break;
    }

    v431 = v532 + 16;
    v432 = *(v532 + 39);
    if (v432 >= 0)
    {
      v433 = v532 + 16;
    }

    else
    {
      v433 = *(v532 + 2);
    }

    if (v432 >= 0)
    {
      v434 = *(v532 + 39);
    }

    else
    {
      v434 = *(v532 + 3);
    }

    v435 = &v550.__r_.__value_.__r.__words[1];
    v436 = v550.__r_.__value_.__l.__size_;
    while (2)
    {
      while (2)
      {
        v437 = *(v436 + 55);
        if (v437 >= 0)
        {
          v438 = (v436 + 32);
        }

        else
        {
          v438 = *(v436 + 32);
        }

        if (v437 >= 0)
        {
          v439 = *(v436 + 55);
        }

        else
        {
          v439 = *(v436 + 40);
        }

        if (v434 >= v439)
        {
          v440 = v439;
        }

        else
        {
          v440 = v434;
        }

        v441 = memcmp(v438, v433, v440);
        if (v441)
        {
          if ((v441 & 0x80000000) == 0)
          {
            break;
          }

          goto LABEL_885;
        }

        if (v439 < v434)
        {
LABEL_885:
          v436 = *(v436 + 8);
          if (!v436)
          {
            goto LABEL_900;
          }

          continue;
        }

        break;
      }

      v435 = v436;
      v436 = *v436;
      if (v436)
      {
        continue;
      }

      break;
    }

LABEL_900:
    if (v435 == &v550.__r_.__value_.__r.__words[1])
    {
      goto LABEL_964;
    }

    v444 = v435[1].__r_.__value_.__l.__size_;
    v443 = &v435[1].__r_.__value_.__l.__size_;
    v442 = v444;
    v445 = *(v443 + 23);
    if (v445 >= 0)
    {
      v446 = v443;
    }

    else
    {
      v446 = v442;
    }

    if (v445 >= 0)
    {
      v447 = *(v443 + 23);
    }

    else
    {
      v447 = v443[1];
    }

    if (v447 >= v434)
    {
      v448 = v434;
    }

    else
    {
      v448 = v447;
    }

    v449 = memcmp(v433, v446, v448);
    if (v449)
    {
      if (v449 < 0)
      {
        goto LABEL_964;
      }
    }

    else if (v434 < v447)
    {
      goto LABEL_964;
    }

    v549[0] = v431;
    v450 = sub_10000C290(&v550, v431, &std::piecewise_construct, v549);
    v452 = v450[7];
    v451 = v450[8];
    if (v451)
    {
      atomic_fetch_add_explicit(&v451->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v453 = v539;
    v538 = v452;
    v539 = v451;
    if (v453 && !atomic_fetch_add(&v453->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v453->__on_zero_shared)(v453);
      std::__shared_weak_count::__release_weak(v453);
    }

    v454 = v538;
    v549[1] = 0;
    v549[2] = 0;
    v549[0] = &v549[1];
    v455 = *(v538 + 88);
    v456 = (v538 + 96);
    if (v455 != (v538 + 96))
    {
      do
      {
        sub_100011DA4(v549, &v549[1], v455 + 4, (v455 + 4));
        v457 = v455[1];
        if (v457)
        {
          do
          {
            v458 = v457;
            v457 = *v457;
          }

          while (v457);
        }

        else
        {
          do
          {
            v458 = v455[2];
            v46 = *v458 == v455;
            v455 = v458;
          }

          while (!v46);
        }

        v455 = v458;
      }

      while (v458 != v456);
      v459 = v549[0];
      if (v549[0] != &v549[1])
      {
        do
        {
          v463 = operator new(0x28uLL);
          v464 = v463;
          *v463 = 0;
          v463[1] = 0;
          if (*(v459 + 55) < 0)
          {
            sub_1000010F4(v463 + 16, v459[4], v459[5]);
          }

          else
          {
            v465 = *(v459 + 2);
            v463[4] = v459[6];
            *(v463 + 1) = v465;
          }

          v466 = v540;
          *v464 = v540;
          v464[1] = &v540;
          v466[1] = v464;
          v540 = v464;
          ++v542;
          v467 = v459[1];
          if (v467)
          {
            do
            {
              v468 = v467;
              v467 = *v467;
            }

            while (v467);
          }

          else
          {
            do
            {
              v468 = v459[2];
              v46 = *v468 == v459;
              v459 = v468;
            }

            while (!v46);
          }

          v459 = v468;
        }

        while (v468 != &v549[1]);
      }
    }

    sub_10000C4EC(v549, v549[1]);
    v549[1] = 0;
    v549[2] = 0;
    v549[0] = &v549[1];
    v460 = *(v454 + 160);
    if (v460 != (v454 + 168))
    {
      do
      {
        sub_10001224C(v549, &v549[1], v460 + 4, (v460 + 4));
        v461 = v460[1];
        if (v461)
        {
          do
          {
            v462 = v461;
            v461 = *v461;
          }

          while (v461);
        }

        else
        {
          do
          {
            v462 = v460[2];
            v46 = *v462 == v460;
            v460 = v462;
          }

          while (!v46);
        }

        v460 = v462;
      }

      while (v462 != (v454 + 168));
      v469 = v549[0];
      if (v549[0] != &v549[1])
      {
        do
        {
          v473 = operator new(0x28uLL);
          v474 = v473;
          *v473 = 0;
          v473[1] = 0;
          if (*(v469 + 55) < 0)
          {
            sub_1000010F4(v473 + 16, v469[4], v469[5]);
          }

          else
          {
            v475 = *(v469 + 2);
            v473[4] = v469[6];
            *(v473 + 1) = v475;
          }

          v476 = v540;
          *v474 = v540;
          v474[1] = &v540;
          v476[1] = v474;
          v540 = v474;
          ++v542;
          v477 = v469[1];
          if (v477)
          {
            do
            {
              v478 = v477;
              v477 = *v477;
            }

            while (v477);
          }

          else
          {
            do
            {
              v478 = v469[2];
              v46 = *v478 == v469;
              v469 = v478;
            }

            while (!v46);
          }

          v469 = v478;
        }

        while (v478 != &v549[1]);
      }
    }

    sub_10000C570(v549, v549[1]);
    v470 = v532;
    v472 = *v532;
    v471 = *(v532 + 1);
    *(v472 + 8) = v471;
    *v471 = v472;
    --v533;
    if (*(v470 + 39) < 0)
    {
      operator delete(v470[2]);
    }

    operator delete(v470);
    sub_10000C570(&v550, v550.__r_.__value_.__l.__size_);
    sub_10000C4EC(&v551, v551.__r_.__value_.__l.__size_);
    if (v533 && (v533 != 1) | v528 & 1)
    {
      continue;
    }

    break;
  }

LABEL_966:
  memset(&v551, 170, sizeof(v551));
  v480 = __s;
  v481 = strlen(__s);
  if (v481 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001038();
  }

  v482 = v481;
  if (v481 >= 0x17)
  {
    if ((v481 | 7) == 0x17)
    {
      v484 = 25;
    }

    else
    {
      v484 = (v481 | 7) + 1;
    }

    v483 = operator new(v484);
    v551.__r_.__value_.__l.__size_ = v482;
    v551.__r_.__value_.__r.__words[2] = v484 | 0x8000000000000000;
    v551.__r_.__value_.__r.__words[0] = v483;
    goto LABEL_974;
  }

  *(&v551.__r_.__value_.__s + 23) = v481;
  v483 = &v551;
  if (v481)
  {
LABEL_974:
    memcpy(v483, v480, v482);
  }

  *(v483 + v482) = 0;
  for (k = v541; k != &v540; k = k[1])
  {
    v489 = *(k + 39);
    if ((v489 & 0x8000000000000000) != 0)
    {
      v490 = k[3];
      v491 = SHIBYTE(v551.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v551.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_984:
        v492 = v491;
        if (v490 < v491)
        {
          continue;
        }

        goto LABEL_988;
      }
    }

    else
    {
      v490 = *(k + 39);
      v491 = SHIBYTE(v551.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v551.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_984;
      }
    }

    v492 = v551.__r_.__value_.__l.__size_;
    if (v490 < v551.__r_.__value_.__l.__size_)
    {
      continue;
    }

LABEL_988:
    if ((v489 & 0x80000000) != 0)
    {
      if (v492 == -1)
      {
LABEL_1050:
        sub_100001B44();
      }

      if (k[3] >= v492)
      {
        v496 = v492;
      }

      else
      {
        v496 = k[3];
      }

      if ((v491 & 0x80000000) == 0)
      {
        v497 = &v551;
      }

      else
      {
        v497 = v551.__r_.__value_.__r.__words[0];
      }

      v495 = memcmp(k[2], v497, v496);
      if (v496 == v492)
      {
LABEL_1006:
        if (!v495)
        {
          v498 = qword_100024338;
          if (qword_100024338 < unk_100024340)
          {
            if ((v489 & 0x80000000) != 0)
            {
              v487 = &OsLogStream__metaData;
              sub_1000010F4(qword_100024338, k[2], k[3]);
            }

            else
            {
              v486 = *(k + 1);
              *(qword_100024338 + 16) = k[4];
              *v498 = v486;
              v487 = &OsLogStream__metaData;
            }

            v488 = v498 + 24;
            v487[11].base_meths = v498 + 3;
          }

          else
          {
            v488 = sub_100001BEC(&qword_100024330, (k + 2));
            v487 = &OsLogStream__metaData;
          }

          v487[11].base_meths = v488;
        }
      }
    }

    else
    {
      if (v492 == -1)
      {
        goto LABEL_1050;
      }

      if (v489 >= v492)
      {
        v493 = v492;
      }

      else
      {
        v493 = *(k + 39);
      }

      if ((v491 & 0x80000000) == 0)
      {
        v494 = &v551;
      }

      else
      {
        v494 = v551.__r_.__value_.__r.__words[0];
      }

      v495 = memcmp(k + 2, v494, v493);
      if (v493 == v492)
      {
        goto LABEL_1006;
      }
    }
  }

  if ((SHIBYTE(v551.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v499 = v527;
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_1012;
    }

LABEL_1035:
    operator delete(__dst[0]);
    v500 = &OsLogStream__metaData;
    if (!v499)
    {
      goto LABEL_1014;
    }

LABEL_1013:
    operator delete(v499);
    goto LABEL_1014;
  }

  operator delete(v551.__r_.__value_.__l.__data_);
  v499 = v527;
  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_1035;
  }

LABEL_1012:
  v500 = &OsLogStream__metaData;
  if (v499)
  {
    goto LABEL_1013;
  }

LABEL_1014:
  if (v533)
  {
    v501 = v532;
    v502 = *(v531 + 1);
    v503 = *v532;
    *(v503 + 8) = v502;
    *v502 = v503;
    v533 = 0;
    if (v501 != &v531)
    {
      do
      {
        v506 = v501[1];
        if (*(v501 + 39) < 0)
        {
          operator delete(v501[2]);
        }

        operator delete(v501);
        v501 = v506;
      }

      while (v506 != &v531);
    }
  }

  base_meths = v500[11].base_meths;
LABEL_1017:
  v504 = qword_100024328;
  if (qword_100024328 >= 0xAAAAAAAAAAAAAAABLL * ((base_meths - qword_100024330) >> 3))
  {
    v7 = 0;
  }

  else
  {
    ++qword_100024328;
    v505 = qword_100024330 + 24 * v504;
    if (*(v505 + 23) < 0)
    {
      v505 = *v505;
    }

    v7 = strdup(v505);
  }

  sub_10000C570(&v534, v535[0]);
  sub_10000C4EC(&v536, v537[0]);
  v507 = v539;
  if (v539 && !atomic_fetch_add(&v539->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v507->__on_zero_shared)(v507);
    std::__shared_weak_count::__release_weak(v507);
  }

LABEL_1028:
  if (v542)
  {
    v508 = v541;
    v509 = v540[1];
    v510 = *v541;
    v510[1] = v509;
    *v509 = v510;
    v542 = 0;
    if (v508 != &v540)
    {
      do
      {
        v512 = v508[1];
        if (*(v508 + 39) < 0)
        {
          operator delete(v508[2]);
        }

        operator delete(v508);
        v508 = v512;
      }

      while (v512 != &v540);
    }
  }

  return v7;
}