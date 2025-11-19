__n128 sub_29A1A1DEC(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A1A1EA4(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A1A1EDC(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DecRef();
  }

  v4 = sub_29A1A246C(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A1A1EA4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 33)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20422C0);
  }

  else
  {
    return 0;
  }
}

void *sub_29A1A1EDC(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2044168;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A1A1F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A1A1FAC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A1A1FCC(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A1A2144(result);
}

void *sub_29A1A2030(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A1A2454);
  return a2;
}

void *sub_29A1A212C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2044168;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A1A2144(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A1A21AC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 6;
      sub_29A1A2224(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A1A2224(uint64_t a1, double *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A1A22A4(&v5, a2, a2 + 3);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A1A22A4(uint64_t a1, double *a2, double *a3)
{
  v7 = 0;
  v8 = 0;
  sub_29A18AAA0(&v7, a2, a2 + 1, a2 + 2);
  v5 = bswap64(0x9E3779B97F4A7C55 * v7);
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29A18DC38(a1, a3);
}

uint64_t sub_29A1A23EC(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A1A2144(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A1A2144(&v4);
  }

  return *a1;
}

void *sub_29A1A2454(__int128 **a1, void *a2)
{
  v3 = *a1;
  *a1 += 3;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A1A246C(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B292C64();
  }

  return sub_29A1A23EC(a1);
}

void **sub_29A1A24A8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1A1EA4(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A1A2604, &stru_2A20422C0);
  }
}

uint64_t sub_29A1A253C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = xmmword_29B480F60;
  v6 = 0x80000000800000;
  sub_29A1A26A0(a1);
  v7 = &v5;
  sub_29A1A26F0(a1, a2, &v7);
  return a1;
}

double sub_29A1A25C0@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A1A29F8(a2, a1).n128_u64[0];
  return result;
}

double sub_29A1A2604@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A1A2654;
  a1[2] = &stru_2A20422C0;
  return result;
}

uint64_t sub_29A1A2654(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DecRef();
  }

  return result;
}

void *sub_29A1A26A0(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A1A26F0(unint64_t *result, unint64_t a2, __int128 **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A1A291C(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10];
                  v12 = *(v9 + v10 * 8);
                  v11[2] = *(v9 + v10 * 8 + 16);
                  *v11 = v12;
                  v10 += 3;
                }

                while (3 * v3 != v10);
              }
            }

            v13 = *a3;
            v14 = 3 * v3;
            do
            {
              v15 = &v7[v14];
              v16 = *v13;
              v15[2] = *(v13 + 2);
              *v15 = v16;
              v14 += 3;
            }

            while (3 * a2 != v14);
          }

          v17 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v22 = a2;
      }

      else
      {
        v22 = *result;
      }

      result = sub_29A1A291C(result, a2);
      v17 = result;
      if (v3)
      {
        v23 = 24 * v22;
        v24 = result;
        do
        {
          v25 = *v7;
          v24[2] = v7[2];
          *v24 = v25;
          v24 += 3;
          v7 += 3;
          v23 -= 24;
        }

        while (v23);
      }

      if (v3 < a2)
      {
        v26 = *a3;
        v27 = 3 * v3;
        do
        {
          v28 = &result[v27];
          v29 = *v26;
          v28[2] = *(v26 + 2);
          *v28 = v29;
          v27 += 3;
        }

        while (3 * a2 != v27);
      }

      goto LABEL_31;
    }

    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      result = sub_29A1A291C(result, a2);
      v17 = result;
      v18 = 0;
      v19 = *a3;
      do
      {
        v20 = &result[v18];
        v21 = *v19;
        v20[2] = *(v19 + 2);
        *v20 = v21;
        v18 += 3;
      }

      while (3 * a2 != v18);
LABEL_31:
      if (v17 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A1A26A0(result);
}

void *sub_29A1A291C(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfRange3f]");
  if (a2 > 0x555555555555554)
  {
    v3 = -1;
  }

  else
  {
    v3 = 24 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29A1A29B4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B292CD0();
    }
  }

  return result;
}

__n128 sub_29A1A29F8(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A1A19C0(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A1A2AB0(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DecRef();
  }

  v4 = sub_29A1A3040(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void *sub_29A1A2AB0(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2044220;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A1A2B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A1A2B80(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A1A2BA0(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A1A2D18(result);
}

void *sub_29A1A2C04(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A1A3028);
  return a2;
}

void *sub_29A1A2D00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2044220;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A1A2D18(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A1A2D80(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 6;
      sub_29A1A2DF8(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A1A2DF8(uint64_t a1, float *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A1A2E78(&v5, a2, a2 + 3);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A1A2E78(uint64_t a1, float *a2, float *a3)
{
  v7 = 0;
  v8 = 0;
  sub_29A18A6C4(&v7, a2, a2 + 1, a2 + 2);
  v5 = bswap64(0x9E3779B97F4A7C55 * v7);
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29A18D5E8(a1, a3);
}

uint64_t sub_29A1A2FC0(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A1A2D18(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A1A2D18(&v4);
  }

  return *a1;
}

void *sub_29A1A3028(uint64_t **a1, void *a2)
{
  v3 = *a1;
  *a1 += 3;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A1A3040(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B292D3C();
  }

  return sub_29A1A2FC0(a1);
}

double sub_29A1A30B8()
{
  result = *v1;
  *v0 = *v1;
  return result;
}

void *sub_29A1A30D8(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_29A18606C(v1, va);
}

__n128 sub_29A1A30F0()
{
  result = *v1;
  v0[1].n128_u64[0] = v1[1].n128_u64[0];
  *v0 = result;
  return result;
}

__n128 sub_29A1A311C()
{
  result = *v1;
  v3 = *(v1 + 16);
  *v0 = *v1;
  v0[1] = v3;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B48126CLL & 0x7FFFFFFFFFFFFFFFLL), &v11);
  v2 = std::string::insert(&v11, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v15 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v12, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v11);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v8 = operator new(0x238uLL);
      sub_29A1A4FB4(v8);
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Vt_CastRegistry]";
          v17 = 0;
          v18 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v9);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v15 = 90;
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Vt_CastRegistry]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29A1A3338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Vt_CastRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::DeleteInstance()
{
  for (result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance); result; result = v1)
  {
    v1 = result;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance, &v1, 0);
    if (v1 == result)
    {
      v2 = *(*result + 8);

      return v2();
    }

    sched_yield();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::aapl_vt_castRegistry_init(pxrInternal__aapl__pxrReserved__ *this)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance))
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    v3 = 0;
    return v3 & 1;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFFF8;
  if ((v1 & 4) == 0)
  {
    v3 = *(v2 + 21);
    return v3 & 1;
  }

  return (*(v2 + 112))();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_GetShapeData(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 128))();
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 136))();
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 160))();
  }

  else
  {
    return MEMORY[0x29EDC9500];
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::GetElementTypeid(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 120))();
  }

  else
  {
    return MEMORY[0x29EDC9500];
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::GetType(pxrInternal__aapl__pxrReserved__::VtValue *this, const std::type_info *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC9500], a2);
  }

  v4 = v2 & 0xFFFFFFFFFFFFFFF8;
  if ((v2 & 4) != 0)
  {
    v5 = (*(v4 + 152))(this);
  }

  else
  {
    v5 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(*v4, a2);
  }

  pxrInternal__aapl__pxrReserved__::TfType::TfType(v13);
  if (v13[0] == v5)
  {
    v13[0] = "vt/value.cpp";
    v13[1] = "GetType";
    v13[2] = 323;
    v13[3] = "TfType pxrInternal__aapl__pxrReserved__::VtValue::GetType() const";
    v14 = 0;
    v6 = *(this + 1);
    if (v6)
    {
      v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 160))(this);
    }

    else
    {
      v7 = MEMORY[0x29EDC9500];
    }

    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), __p);
    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Returning unknown type for VtValue with unregistered C++ type %s", v8, v9);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v5;
}

void sub_29A1A36BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(pxrInternal__aapl__pxrReserved__::VtValue *this@<X0>, std::type_info *a2@<X8>)
{
  v3 = *(this + 1);
  if ((v3 & 4) != 0)
  {
    sub_29B292DA8(this, a2);
  }

  else
  {
    if (v3)
    {
      v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 160))();
    }

    else
    {
      v4 = MEMORY[0x29EDC9500];
    }

    v5 = (*(v4 + 8) & 0x7FFFFFFFFFFFFFFFLL);

    pxrInternal__aapl__pxrReserved__::ArchGetDemangled(v5, a2);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::CanHash(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    v3 = 1;
    return v3 & 1;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFFF8;
  if ((v1 & 4) == 0)
  {
    v3 = *(v2 + 22);
    return v3 & 1;
  }

  return (*(v2 + 48))();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::GetHash(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 56))();
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeOf@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, void *a3@<X8>)
{
  v10[2] = *MEMORY[0x29EDCA608];
  sub_29A186EF4(v10, this);
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 160))(a2);
  }

  else
  {
    v7 = MEMORY[0x29EDC9500];
  }

  v8 = sub_29A186B64(v10, v7);
  sub_29A186EF4(a3, v8);
  return sub_29A186B14(v10);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeid@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, void *a3@<X8>)
{
  v8[2] = *MEMORY[0x29EDCA608];
  sub_29A186EF4(v8, this);
  v6 = sub_29A186B64(v8, a2);
  sub_29A186EF4(a3, v6);
  return sub_29A186B14(v8);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v4, a1, a2, a3);
}

void sub_29A1A3960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a2;
  sub_29A1B0C08(v16, &v32, &v31);
  v8 = *v16;
  v9 = v17;
  v16[0] = 0;
  v16[1] = 0;
  v22 = *v18;
  v10 = v19;
  v17 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v24 = a4;
  *v25 = v8;
  v26 = v9;
  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  *__p = v22;
  v22 = 0uLL;
  v23 = 0;
  v28 = v10;
  v29 = a4;
  sub_29A1B049C(a1 + 8, v25, 0, v30);
  v11 = v30[16];
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
    if (v11)
    {
      return;
    }
  }

  else if (v11)
  {
    return;
  }

  v25[0] = "vt/value.cpp";
  v25[1] = "Register";
  v26 = 90;
  __p[0] = "void pxrInternal__aapl__pxrReserved__::Vt_CastRegistry::Register(const type_info &, const type_info &, VtValue (*)(const VtValue &))";
  LOBYTE(__p[1]) = 0;
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), v20);
  v12 = SHIBYTE(v21);
  v13 = v20[0];
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(a3 + 8) & 0x7FFFFFFFFFFFFFFFLL), v16);
  if (v12 >= 0)
  {
    v14 = v20;
  }

  else
  {
    v14 = v13;
  }

  if (v17 >= 0)
  {
    v15 = v16;
  }

  else
  {
    v15 = v16[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v25, 1, "VtValue cast already registered from '%s' to '%s'.  New cast will be ignored.", v14, v15);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_29A1A3B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(pxrInternal__aapl__pxrReserved__::VtValue *this@<X0>, std::type_info *a2@<X1>, void *a3@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3BD0(v5, this, a2, a3);
}

void sub_29A1A3BD0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = a3[1];
  if (v6)
  {
    v9 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 160))(a3);
    v16 = a2;
    v17 = v9;
    sub_29A1B0C08(v11, &v17, &v16);
    sub_29A1B0C70(a1 + 8, v11, v15);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if ((v15[0] || v15[1] != a1 + 24) && (v10 = *(v15[0] + 56)) != 0)
    {
      v10(a3);
    }

    else
    {
      a4[1] = 0;
    }
  }

  else
  {

    sub_29A186EF4(a4, a3);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(pxrInternal__aapl__pxrReserved__::VtValue *this, const std::type_info *a2, const std::type_info *a3)
{
  if (!strcmp((*(this + 1) & 0x7FFFFFFFFFFFFFFFLL), (a2->__type_name & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  return sub_29A1A3D5C(v5, this, a2);
}

BOOL sub_29A1A3D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v14 = a2;
  sub_29A1B0C08(v8, &v14, &v13);
  sub_29A1B0C70(a1 + 8, v8, v12);
  v5 = v12[0];
  v4 = v12[1];
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 == a1 + 24;
  }

  return !v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_EqualityImpl(pxrInternal__aapl__pxrReserved__::VtValue *this, std::type_info *a2)
{
  v20[2] = *MEMORY[0x29EDCA608];
  v4 = *(this + 1);
  type_name = a2->__type_name;
  if (((v4 >> 2) & 1) != ((type_name >> 2) & 1))
  {
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(this, a2);
    if (Type != pxrInternal__aapl__pxrReserved__::VtValue::GetType(a2, v13))
    {
      return 0;
    }

    v14 = *(this + 1);
    v15 = (v14 & 4) != 0 ? this : a2;
    v16 = (*((*(v15 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))();
    if (!v16)
    {
      return 0;
    }

    v11 = v16;
    if ((v14 & 4) != 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = this;
    }

    v9 = *((*(v10 + 1) & 0xFFFFFFFFFFFFFFF8) + 72);
    goto LABEL_11;
  }

  if ((v4 & 4 & type_name) != 0)
  {
    v17 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(this, a2);
    if (v17 == pxrInternal__aapl__pxrReserved__::VtValue::GetType(a2, v18))
    {
      (*((*(this + 1) & 0xFFFFFFFFFFFFFFF8) + 176))(v20, this);
      (*((a2->__type_name & 0xFFFFFFFFFFFFFFF8) + 176))(&v19, a2);
      pxrInternal__aapl__pxrReserved__::VtValue::operator==();
    }

    return 0;
  }

  if (!v4)
  {
    v6 = MEMORY[0x29EDC9500];
    if (type_name)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = MEMORY[0x29EDC9500];
    goto LABEL_8;
  }

  v6 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 160))(this);
  type_name = a2->__type_name;
  if (!type_name)
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = (*((type_name & 0xFFFFFFFFFFFFFFF8) + 160))(a2);
LABEL_8:
  if (strcmp((*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 0;
  }

  v9 = *((*(this + 1) & 0xFFFFFFFFFFFFFFF8) + 64);
  v10 = this;
  v11 = a2;
LABEL_11:

  return v9(v10, v11);
}

void sub_29A1A4010(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_29A186B14(va);
  sub_29A186B14(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::operator<<(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return (*((v2 & 0xFFFFFFFFFFFFFFF8) + 96))(a2, result);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_GetPythonObject(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return (*((v1 & 0xFFFFFFFFFFFFFFF8) + 88))();
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(pxrInternal__aapl__pxrReserved__::VtValue *this, const std::type_info *a2)
{
  v2 = *(this + 1);
  if ((v2 & 4) != 0)
  {
    return (*((v2 & 0xFFFFFFFFFFFFFFF8) + 144))();
  }

  else
  {
    return 0;
  }
}

void **pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(uint64_t a1, void (*a2)(void **__return_ptr), uint64_t a3)
{
  if (*(a1 + 8))
  {
    v23 = "vt/value.cpp";
    v24 = "_FailGet";
    v25 = 505;
    v26 = "const void *pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(Vt_DefaultValueHolder (*)(), const std::type_info &) const";
    v27 = 0;
    v6 = v19;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(a3 + 8) & 0x7FFFFFFFFFFFFFFFLL), v19);
    if (v20 < 0)
    {
      v6 = v19[0];
    }

    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 160))(a1);
    }

    else
    {
      v8 = MEMORY[0x29EDC9500];
    }

    v9 = __p;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), __p);
    if (v18 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Attempted to get value of type '%s' from VtValue holding '%s'", v6, v11);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v23 = "vt/value.cpp";
    v24 = "_FailGet";
    v25 = 500;
    v26 = "const void *pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(Vt_DefaultValueHolder (*)(), const std::type_info &) const";
    v27 = 0;
    v9 = v19;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(a3 + 8) & 0x7FFFFFFFFFFFFFFFLL), v19);
    if (v20 >= 0)
    {
      v10 = v19;
    }

    else
    {
      v10 = v19[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Attempted to get value of type '%s' from empty VtValue.", v10);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  sub_29A0ECEEC(&v21, "Vt", "VtValue _FindOrCreateDefaultValue");
  if ((atomic_load_explicit(&qword_2A173F418, memory_order_acquire) & 1) == 0)
  {
    sub_29B292E08();
  }

  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(a3 + 8) & 0x7FFFFFFFFFFFFFFFLL), v19);
  sub_29A0EB5BC(&v23, &unk_2A173F410);
  v12 = sub_29A01BCCC(&qword_2A173F420, v19);
  if (v12 != &qword_2A173F428)
  {
    v9 = v12[7];
  }

  v13 = v23;
  if (v23)
  {
    __dmb(0xBu);
    *v13 = 0;
  }

  if (v12 == &qword_2A173F428)
  {
    a2(__p);
    if (strcmp((*(v18 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(a3 + 8) & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v23 = "vt/value.cpp";
      v24 = "_FindOrCreateDefaultValue";
      v25 = 472;
      v26 = "const void *pxrInternal__aapl__pxrReserved__::_FindOrCreateDefaultValue(const std::type_info &, Vt_DefaultValueHolder (*)())";
      v27 = 0;
      v28 = 4;
      pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(&v23, "Failed axiom: ' %s '", v14, "TfSafeTypeCompare(newValue.GetType(), type)");
    }

    sub_29A0EB5BC(&v23, &unk_2A173F410);
    v9 = *(sub_29A1B0E2C(&qword_2A173F420, v19, v19, __p) + 7);
    v15 = v23;
    if (v23)
    {
      __dmb(0xBu);
      *v15 = 0;
    }

    (__p[1])(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v22, v21);
  }

  return v9;
}

void sub_29A1A437C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::VtStreamOut(uint64_t *a1, void *a2)
{
  LOBYTE(v9) = 91;
  sub_29A00911C(a2, &v9, 1);
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  if (v9 != v6)
  {
    while (1)
    {
      v7 = *(sub_29A1A44F0(&v9, v4, v5) + 8);
      if (v7)
      {
        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 96))();
      }

      sub_29A1A4570(&v9);
      if (v9 == v10)
      {
        break;
      }

      sub_29A00911C(a2, ", ", 2);
    }
  }

  LOBYTE(v9) = 93;
  sub_29A00911C(a2, &v9, 1);
  return a2;
}

uint64_t sub_29A1A44F0(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::VtValue>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1A4570(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::VtValue>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec4i>::Invoke@<X0>(void *a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfVec4i>();
  v4 = v3;
  result = operator new(0x10uLL);
  *result = v2;
  result[1] = v4;
  *a1 = result;
  a1[1] = sub_29A1B0EE0;
  a1[2] = &stru_2A20409F8;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec3i>::Invoke@<X0>(void *a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfVec3i>();
  v4 = v3;
  result = operator new(0xCuLL);
  *result = v2;
  result[2] = v4;
  *a1 = result;
  a1[1] = sub_29A1B0EEC;
  a1[2] = &stru_2A20409B8;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec2i>::Invoke@<X0>(void *a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfVec2i>();
  result = operator new(8uLL);
  *result = v2;
  *a1 = result;
  a1[1] = sub_29A1B0EF8;
  a1[2] = &stru_2A2040978;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec4h>::Invoke@<X0>(void *a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfVec4h>();
  result = operator new(8uLL);
  *result = v2;
  *a1 = result;
  a1[1] = sub_29A1B0F04;
  a1[2] = &stru_2A20409E8;
  return result;
}

_WORD *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec3h>::Invoke@<X0>(void *a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfVec3h>();
  result = operator new(6uLL);
  result[2] = WORD2(v2);
  *result = v2;
  *a1 = result;
  a1[1] = sub_29A1B0F10;
  a1[2] = &stru_2A20409A8;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec2h>::Invoke@<X0>(void *a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfVec2h>();
  result = operator new(4uLL);
  *result = v2;
  *a1 = result;
  a1[1] = sub_29A1B0F1C;
  a1[2] = &stru_2A2040968;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec4f>::Invoke@<X0>(void *a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfVec4f>();
  v3 = LODWORD(v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = operator new(0x10uLL);
  *result = v3;
  result[1] = v5;
  result[2] = v7;
  result[3] = v9;
  *a1 = result;
  a1[1] = sub_29A1B0F28;
  a1[2] = &stru_2A20409D8;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec3f>::Invoke@<X0>(void *a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfVec3f>();
  v3 = LODWORD(v2);
  v5 = v4;
  v7 = v6;
  result = operator new(0xCuLL);
  *result = v3;
  result[1] = v5;
  result[2] = v7;
  *a1 = result;
  a1[1] = sub_29A1B0F34;
  a1[2] = &stru_2A2040998;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec2f>::Invoke@<X0>(void *a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfVec2f>();
  v3 = LODWORD(v2);
  v5 = v4;
  result = operator new(8uLL);
  *result = v3;
  result[1] = v5;
  *a1 = result;
  a1[1] = sub_29A1B0F40;
  a1[2] = &stru_2A2040958;
  return result;
}

double *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec4d>::Invoke@<X0>(double **a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfVec4d>();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = operator new(0x20uLL);
  *result = v2;
  *(result + 1) = v4;
  *(result + 2) = v6;
  *(result + 3) = v8;
  *a1 = result;
  a1[1] = sub_29A1B0F4C;
  a1[2] = &stru_2A20409C8;
  return result;
}

double *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec3d>::Invoke@<X0>(double **a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfVec3d>();
  v4 = v3;
  v6 = v5;
  result = operator new(0x18uLL);
  *result = v2;
  *(result + 1) = v4;
  *(result + 2) = v6;
  *a1 = result;
  a1[1] = sub_29A1B0F58;
  a1[2] = &stru_2A2040988;
  return result;
}

double *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec2d>::Invoke@<X0>(double **a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfVec2d>();
  v4 = v3;
  result = operator new(0x10uLL);
  *result = v2;
  *(result + 1) = v4;
  *a1 = result;
  a1[1] = sub_29A1B0F64;
  a1[2] = &stru_2A2040948;
  return result;
}

double pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::Invoke@<D0>(void *a1@<X8>)
{
  pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(v6);
  v2 = operator new(0x40uLL);
  v3 = v6[1];
  *v2 = v6[0];
  v2[1] = v3;
  result = *&v7;
  v5 = v8;
  v2[2] = v7;
  v2[3] = v5;
  *a1 = v2;
  a1[1] = sub_29A1B0F70;
  a1[2] = &stru_2A2040808;
  return result;
}

double pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::Invoke@<D0>(void *a1@<X8>)
{
  pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(v5);
  v2 = operator new(0x24uLL);
  result = *v5;
  v4 = v5[1];
  *v2 = v5[0];
  v2[1] = v4;
  *(v2 + 8) = v6;
  *a1 = v2;
  a1[1] = sub_29A1B0F7C;
  a1[2] = &stru_2A20407E8;
  return result;
}

float *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::Invoke@<X0>(float **a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfMatrix2f>();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = operator new(0x10uLL);
  *result = v2;
  *(result + 1) = v4;
  *(result + 2) = v6;
  *(result + 3) = v8;
  *a1 = result;
  a1[1] = sub_29A1B0F88;
  a1[2] = &unk_2A20407D8;
  return result;
}

double pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::Invoke@<D0>(void *a1@<X8>)
{
  pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(v8);
  v2 = operator new(0x80uLL);
  v3 = v12;
  v2[4] = v11;
  v2[5] = v3;
  v4 = v14;
  v2[6] = v13;
  v2[7] = v4;
  v5 = v8[1];
  *v2 = v8[0];
  v2[1] = v5;
  result = *&v9;
  v7 = v10;
  v2[2] = v9;
  v2[3] = v7;
  *a1 = v2;
  a1[1] = sub_29A1B0F94;
  a1[2] = &stru_2A2040818;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::Invoke@<Q0>(void *a1@<X8>)
{
  pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(v5);
  v2 = operator new(0x48uLL);
  v3 = v5[3];
  v2[2] = v5[2];
  v2[3] = v3;
  *(v2 + 8) = v6;
  result = v5[1];
  *v2 = v5[0];
  v2[1] = result;
  *a1 = v2;
  a1[1] = sub_29A1B0FA0;
  a1[2] = &stru_2A20407F8;
  return result;
}

double *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::Invoke@<X0>(double **a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfMatrix2d>();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = operator new(0x20uLL);
  *result = v2;
  *(result + 1) = v4;
  *(result + 2) = v6;
  *(result + 3) = v8;
  *a1 = result;
  a1[1] = sub_29A1B0FAC;
  a1[2] = &stru_2A20407C8;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfQuath>::Invoke@<X0>(void *a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfQuath>();
  result = operator new(8uLL);
  *result = v2;
  *a1 = result;
  a1[1] = sub_29A1B0FB8;
  a1[2] = &stru_2A2040868;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfQuatf>::Invoke@<X0>(void *a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfQuatf>();
  v3 = LODWORD(v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = operator new(0x10uLL);
  *result = v3;
  result[1] = v5;
  result[2] = v7;
  result[3] = v9;
  *a1 = result;
  a1[1] = sub_29A1B0FC4;
  a1[2] = &stru_2A2040858;
  return result;
}

double *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfQuatd>::Invoke@<X0>(double **a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfQuatd>();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = operator new(0x20uLL);
  *result = v2;
  *(result + 1) = v4;
  *(result + 2) = v6;
  *(result + 3) = v8;
  *a1 = result;
  a1[1] = sub_29A1B0FD0;
  a1[2] = &stru_2A2040848;
  return result;
}

double *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfQuaternion>::Invoke@<X0>(double **a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfQuaternion>();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = operator new(0x20uLL);
  *result = v2;
  *(result + 1) = v4;
  *(result + 2) = v6;
  *(result + 3) = v8;
  *a1 = result;
  a1[1] = sub_29A1B0FDC;
  a1[2] = &unk_2A2040878;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfDualQuath>::Invoke@<X0>(void *a1@<X8>)
{
  v2 = pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfDualQuath>();
  v4 = v3;
  result = operator new(0x10uLL);
  *result = v2;
  result[1] = v4;
  *a1 = result;
  a1[1] = sub_29A1B0FE8;
  a1[2] = &unk_2A2040738;
  return result;
}

double pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfDualQuatf>::Invoke@<D0>(void *a1@<X8>)
{
  pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfDualQuatf>(v5);
  v2 = operator new(0x20uLL);
  result = *v5;
  v4 = v5[1];
  *v2 = v5[0];
  v2[1] = v4;
  *a1 = v2;
  a1[1] = sub_29A1B0FF4;
  a1[2] = &unk_2A2040728;
  return result;
}

double pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfDualQuatd>::Invoke@<D0>(void *a1@<X8>)
{
  pxrInternal__aapl__pxrReserved__::VtZero<pxrInternal__aapl__pxrReserved__::GfDualQuatd>(v6);
  v2 = operator new(0x40uLL);
  v3 = v6[1];
  *v2 = v6[0];
  v2[1] = v3;
  result = *&v7;
  v5 = v8;
  v2[2] = v7;
  v2[3] = v5;
  *a1 = v2;
  a1[1] = sub_29A1B1000;
  a1[2] = &unk_2A2040718;
  return result;
}

void *sub_29A1A4FB4(void *a1)
{
  *a1 = &unk_2A20442E8;
  sub_29A1A7FB8((a1 + 1), 8uLL, v6);
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance, a1))
  {
    v6[0] = "tf/instantiateSingleton.h";
    v6[1] = "SetInstanceConstructed";
    v6[2] = 54;
    v6[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Vt_CastRegistry]";
    v7 = 0;
    v8 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v6, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", v2);
  }

  sub_29A1A5090();
  Instance = pxrInternal__aapl__pxrReserved__::TfRegistryManager::GetInstance(v3);
  pxrInternal__aapl__pxrReserved__::TfRegistryManager::_SubscribeTo(Instance, &stru_2A2044F40);
  return a1;
}

void sub_29A1A5090()
{
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v0, MEMORY[0x29EDC94A8], MEMORY[0x29EDC94B0], sub_29A1A83FC);
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v1, MEMORY[0x29EDC94B0], MEMORY[0x29EDC94A8], sub_29A1A844C);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v2, MEMORY[0x29EDC94A8], MEMORY[0x29EDC94A0], sub_29A1A871C);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v3, MEMORY[0x29EDC94A0], MEMORY[0x29EDC94A8], sub_29A1A876C);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v4, MEMORY[0x29EDC94A8], MEMORY[0x29EDC94C8], sub_29A1A8904);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v5, MEMORY[0x29EDC94C8], MEMORY[0x29EDC94A8], sub_29A1A8954);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v6, MEMORY[0x29EDC94A8], MEMORY[0x29EDC94F0], sub_29A1A8AEC);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v7, MEMORY[0x29EDC94F0], MEMORY[0x29EDC94A8], sub_29A1A8B3C);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v8, MEMORY[0x29EDC94A8], MEMORY[0x29EDC94F8], sub_29A1A8CE0);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v9, MEMORY[0x29EDC94F8], MEMORY[0x29EDC94A8], sub_29A1A8D30);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v10, MEMORY[0x29EDC94A8], MEMORY[0x29EDC94D0], sub_29A1A8ED4);
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v11)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v11, MEMORY[0x29EDC94D0], MEMORY[0x29EDC94A8], sub_29A1A8F24);
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v12)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v12, MEMORY[0x29EDC94A8], MEMORY[0x29EDC94D8], sub_29A1A90C8);
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v13)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v13, MEMORY[0x29EDC94D8], MEMORY[0x29EDC94A8], sub_29A1A9118);
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v14)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v14, MEMORY[0x29EDC94A8], MEMORY[0x29EDC94E0], sub_29A1A92BC);
  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v15)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v15, MEMORY[0x29EDC94E0], MEMORY[0x29EDC94A8], sub_29A1A9308);
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v16)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v16, MEMORY[0x29EDC94A8], MEMORY[0x29EDC94E8], sub_29A1A94A8);
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v17)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v17, MEMORY[0x29EDC94E8], MEMORY[0x29EDC94A8], sub_29A1A94F4);
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v18)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v18, MEMORY[0x29EDC94A8], MEMORY[0x29EDC9508], sub_29A1A9694);
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v19)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v19, MEMORY[0x29EDC9508], MEMORY[0x29EDC94A8], sub_29A1A96E0);
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v20)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v20, MEMORY[0x29EDC94A8], MEMORY[0x29EDC9510], sub_29A1A9880);
  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v21)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v21, MEMORY[0x29EDC9510], MEMORY[0x29EDC94A8], sub_29A1A98CC);
  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v22)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v22, MEMORY[0x29EDC94A8], &unk_2A2040768, sub_29A1A9A6C);
  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v23)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v23, &unk_2A2040768, MEMORY[0x29EDC94A8], sub_29A1A9ACC);
  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v24)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v24, MEMORY[0x29EDC94A8], MEMORY[0x29EDC94C0], sub_29A1A9EDC);
  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v25)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v25, MEMORY[0x29EDC94C0], MEMORY[0x29EDC94A8], sub_29A1A9F30);
  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v26)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v26, MEMORY[0x29EDC94A8], MEMORY[0x29EDC94B8], sub_29A1AA104);
  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v27)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v27, MEMORY[0x29EDC94B8], MEMORY[0x29EDC94A8], sub_29A1AA158);
  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v28)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v28, MEMORY[0x29EDC94B0], MEMORY[0x29EDC94A0], sub_29A1AA32C);
  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v29)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v29, MEMORY[0x29EDC94A0], MEMORY[0x29EDC94B0], sub_29A1AA37C);
  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v30)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v30, MEMORY[0x29EDC94B0], MEMORY[0x29EDC94C8], sub_29A1AA3CC);
  v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v31)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v31, MEMORY[0x29EDC94C8], MEMORY[0x29EDC94B0], sub_29A1AA428);
  v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v32)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v32, MEMORY[0x29EDC94B0], MEMORY[0x29EDC94F0], sub_29A1AA484);
  v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v33)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v33, MEMORY[0x29EDC94F0], MEMORY[0x29EDC94B0], sub_29A1AA4E0);
  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v34)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v34, MEMORY[0x29EDC94B0], MEMORY[0x29EDC94F8], sub_29A1AA548);
  v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v35)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v35, MEMORY[0x29EDC94F8], MEMORY[0x29EDC94B0], sub_29A1AA5A4);
  v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v36)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v36, MEMORY[0x29EDC94B0], MEMORY[0x29EDC94D0], sub_29A1AA604);
  v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v37)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v37, MEMORY[0x29EDC94D0], MEMORY[0x29EDC94B0], sub_29A1AA654);
  v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v38)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v38, MEMORY[0x29EDC94B0], MEMORY[0x29EDC94D8], sub_29A1AA6B4);
  v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v39)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v39, MEMORY[0x29EDC94D8], MEMORY[0x29EDC94B0], sub_29A1AA710);
  v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v40)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v40, MEMORY[0x29EDC94B0], MEMORY[0x29EDC94E0], sub_29A1AA770);
  v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v41)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v41, MEMORY[0x29EDC94E0], MEMORY[0x29EDC94B0], sub_29A1AA7CC);
  v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v42)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v42, MEMORY[0x29EDC94B0], MEMORY[0x29EDC94E8], sub_29A1AA82C);
  v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v43)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v43, MEMORY[0x29EDC94E8], MEMORY[0x29EDC94B0], sub_29A1AA888);
  v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v44)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v44, MEMORY[0x29EDC94B0], MEMORY[0x29EDC9508], sub_29A1AA8E8);
  v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v45)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v45, MEMORY[0x29EDC9508], MEMORY[0x29EDC94B0], sub_29A1AA944);
  v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v46)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v46, MEMORY[0x29EDC94B0], MEMORY[0x29EDC9510], sub_29A1AA9A4);
  v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v47)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v47, MEMORY[0x29EDC9510], MEMORY[0x29EDC94B0], sub_29A1AAA00);
  v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v48)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v48, MEMORY[0x29EDC94B0], &unk_2A2040768, sub_29A1AAA60);
  v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v49)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v49, &unk_2A2040768, MEMORY[0x29EDC94B0], sub_29A1AAAC0);
  v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v50)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v50, MEMORY[0x29EDC94B0], MEMORY[0x29EDC94C0], sub_29A1AAD80);
  v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v51)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v51, MEMORY[0x29EDC94C0], MEMORY[0x29EDC94B0], sub_29A1AADD4);
  v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v52)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v52, MEMORY[0x29EDC94B0], MEMORY[0x29EDC94B8], sub_29A1AAEE4);
  v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v53)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v53, MEMORY[0x29EDC94B8], MEMORY[0x29EDC94B0], sub_29A1AAF38);
  v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v54)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v54, MEMORY[0x29EDC94A0], MEMORY[0x29EDC94C8], sub_29A1AB050);
  v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v55)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v55, MEMORY[0x29EDC94C8], MEMORY[0x29EDC94A0], sub_29A1AB0AC);
  v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v56)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v56, MEMORY[0x29EDC94A0], MEMORY[0x29EDC94F0], sub_29A1AB108);
  v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v57)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v57, MEMORY[0x29EDC94F0], MEMORY[0x29EDC94A0], sub_29A1AB164);
  v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v58)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v58, MEMORY[0x29EDC94A0], MEMORY[0x29EDC94F8], sub_29A1AB1CC);
  v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v59)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v59, MEMORY[0x29EDC94F8], MEMORY[0x29EDC94A0], sub_29A1AB228);
  v60 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v60)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v60, MEMORY[0x29EDC94A0], MEMORY[0x29EDC94D0], sub_29A1AB288);
  v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v61)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v61, MEMORY[0x29EDC94D0], MEMORY[0x29EDC94A0], sub_29A1AB2D8);
  v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v62)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v62, MEMORY[0x29EDC94A0], MEMORY[0x29EDC94D8], sub_29A1AB338);
  v63 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v63)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v63, MEMORY[0x29EDC94D8], MEMORY[0x29EDC94A0], sub_29A1AB394);
  v64 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v64)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v64, MEMORY[0x29EDC94A0], MEMORY[0x29EDC94E0], sub_29A1AB3F4);
  v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v65)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v65, MEMORY[0x29EDC94E0], MEMORY[0x29EDC94A0], sub_29A1AB450);
  v66 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v66)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v66, MEMORY[0x29EDC94A0], MEMORY[0x29EDC94E8], sub_29A1AB4B0);
  v67 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v67)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v67, MEMORY[0x29EDC94E8], MEMORY[0x29EDC94A0], sub_29A1AB50C);
  v68 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v68)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v68, MEMORY[0x29EDC94A0], MEMORY[0x29EDC9508], sub_29A1AB56C);
  v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v69)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v69, MEMORY[0x29EDC9508], MEMORY[0x29EDC94A0], sub_29A1AB5C8);
  v70 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v70)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v70, MEMORY[0x29EDC94A0], MEMORY[0x29EDC9510], sub_29A1AB628);
  v71 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v71)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v71, MEMORY[0x29EDC9510], MEMORY[0x29EDC94A0], sub_29A1AB684);
  v72 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v72)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v72, MEMORY[0x29EDC94A0], &unk_2A2040768, sub_29A1AB6E4);
  v73 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v73)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v73, &unk_2A2040768, MEMORY[0x29EDC94A0], sub_29A1AB744);
  v74 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v74)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v74, MEMORY[0x29EDC94A0], MEMORY[0x29EDC94C0], sub_29A1AB7A4);
  v75 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v75)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v75, MEMORY[0x29EDC94C0], MEMORY[0x29EDC94A0], sub_29A1AB7F8);
  v76 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v76)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v76, MEMORY[0x29EDC94A0], MEMORY[0x29EDC94B8], sub_29A1AB858);
  v77 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v77)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v77, MEMORY[0x29EDC94B8], MEMORY[0x29EDC94A0], sub_29A1AB8AC);
  v78 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v78)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v78, MEMORY[0x29EDC94C8], MEMORY[0x29EDC94F0], sub_29A1AB90C);
  v79 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v79)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v79, MEMORY[0x29EDC94F0], MEMORY[0x29EDC94C8], sub_29A1AB95C);
  v80 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v80)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v80, MEMORY[0x29EDC94C8], MEMORY[0x29EDC94F8], sub_29A1AB9BC);
  v81 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v81)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v81, MEMORY[0x29EDC94F8], MEMORY[0x29EDC94C8], sub_29A1ABA0C);
  v82 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v82)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v82, MEMORY[0x29EDC94C8], MEMORY[0x29EDC94D0], sub_29A1ABA6C);
  v83 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v83)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v83, MEMORY[0x29EDC94D0], MEMORY[0x29EDC94C8], sub_29A1ABABC);
  v84 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v84)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v84, MEMORY[0x29EDC94C8], MEMORY[0x29EDC94D8], sub_29A1ABB1C);
  v85 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v85)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v85, MEMORY[0x29EDC94D8], MEMORY[0x29EDC94C8], sub_29A1ABB6C);
  v86 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v86)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v86, MEMORY[0x29EDC94C8], MEMORY[0x29EDC94E0], sub_29A1ABBCC);
  v87 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v87)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v87, MEMORY[0x29EDC94E0], MEMORY[0x29EDC94C8], sub_29A1ABC18);
  v88 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v88)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v88, MEMORY[0x29EDC94C8], MEMORY[0x29EDC94E8], sub_29A1ABC78);
  v89 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v89)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v89, MEMORY[0x29EDC94E8], MEMORY[0x29EDC94C8], sub_29A1ABCC4);
  v90 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v90)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v90, MEMORY[0x29EDC94C8], MEMORY[0x29EDC9508], sub_29A1ABD24);
  v91 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v91)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v91, MEMORY[0x29EDC9508], MEMORY[0x29EDC94C8], sub_29A1ABD70);
  v92 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v92)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v92, MEMORY[0x29EDC94C8], MEMORY[0x29EDC9510], sub_29A1ABDD0);
  v93 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v93)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v93, MEMORY[0x29EDC9510], MEMORY[0x29EDC94C8], sub_29A1ABE1C);
  v94 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v94)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v94, MEMORY[0x29EDC94C8], &unk_2A2040768, sub_29A1ABE7C);
  v95 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v95)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v95, &unk_2A2040768, MEMORY[0x29EDC94C8], sub_29A1ABEDC);
  v96 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v96)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v96, MEMORY[0x29EDC94C8], MEMORY[0x29EDC94C0], sub_29A1AC184);
  v97 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v97)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v97, MEMORY[0x29EDC94C0], MEMORY[0x29EDC94C8], sub_29A1AC1D8);
  v98 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v98)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v98, MEMORY[0x29EDC94C8], MEMORY[0x29EDC94B8], sub_29A1AC2E4);
  v99 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v99)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v99, MEMORY[0x29EDC94B8], MEMORY[0x29EDC94C8], sub_29A1AC338);
  v100 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v100)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v100, MEMORY[0x29EDC94F0], MEMORY[0x29EDC94F8], sub_29A1AC448);
  v101 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v101)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v101, MEMORY[0x29EDC94F8], MEMORY[0x29EDC94F0], sub_29A1AC4A4);
  v102 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v102)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v102, MEMORY[0x29EDC94F0], MEMORY[0x29EDC94D0], sub_29A1AC500);
  v103 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v103)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v103, MEMORY[0x29EDC94D0], MEMORY[0x29EDC94F0], sub_29A1AC558);
  v104 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v104)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v104, MEMORY[0x29EDC94F0], MEMORY[0x29EDC94D8], sub_29A1AC5B8);
  v105 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v105)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v105, MEMORY[0x29EDC94D8], MEMORY[0x29EDC94F0], sub_29A1AC614);
  v106 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v106)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v106, MEMORY[0x29EDC94F0], MEMORY[0x29EDC94E0], sub_29A1AC674);
  v107 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v107)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v107, MEMORY[0x29EDC94E0], MEMORY[0x29EDC94F0], sub_29A1AC6C8);
  v108 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v108)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v108, MEMORY[0x29EDC94F0], MEMORY[0x29EDC94E8], sub_29A1AC738);
  v109 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v109)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v109, MEMORY[0x29EDC94E8], MEMORY[0x29EDC94F0], sub_29A1AC794);
  v110 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v110)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v110, MEMORY[0x29EDC94F0], MEMORY[0x29EDC9508], sub_29A1AC808);
  v111 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v111)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v111, MEMORY[0x29EDC9508], MEMORY[0x29EDC94F0], sub_29A1AC85C);
  v112 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v112)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v112, MEMORY[0x29EDC94F0], MEMORY[0x29EDC9510], sub_29A1AC8CC);
  v113 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v113)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v113, MEMORY[0x29EDC9510], MEMORY[0x29EDC94F0], sub_29A1AC928);
  v114 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v114)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v114, MEMORY[0x29EDC94F0], &unk_2A2040768, sub_29A1AC99C);
  v115 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v115)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v115, &unk_2A2040768, MEMORY[0x29EDC94F0], sub_29A1AC9FC);
  v116 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v116)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v116, MEMORY[0x29EDC94F0], MEMORY[0x29EDC94C0], sub_29A1ACC70);
  v117 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v117)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v117, MEMORY[0x29EDC94C0], MEMORY[0x29EDC94F0], sub_29A1ACCC4);
  v118 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v118)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v118, MEMORY[0x29EDC94F0], MEMORY[0x29EDC94B8], sub_29A1ACDF0);
  v119 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v119)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v119, MEMORY[0x29EDC94B8], MEMORY[0x29EDC94F0], sub_29A1ACE44);
  v120 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v120)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v120, MEMORY[0x29EDC94F8], MEMORY[0x29EDC94D0], sub_29A1ACF78);
  v121 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v121)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v121, MEMORY[0x29EDC94D0], MEMORY[0x29EDC94F8], sub_29A1ACFC8);
  v122 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v122)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v122, MEMORY[0x29EDC94F8], MEMORY[0x29EDC94D8], sub_29A1AD028);
  v123 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v123)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v123, MEMORY[0x29EDC94D8], MEMORY[0x29EDC94F8], sub_29A1AD078);
  v124 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v124)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v124, MEMORY[0x29EDC94F8], MEMORY[0x29EDC94E0], sub_29A1AD0D8);
  v125 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v125)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v125, MEMORY[0x29EDC94E0], MEMORY[0x29EDC94F8], sub_29A1AD124);
  v126 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v126)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v126, MEMORY[0x29EDC94F8], MEMORY[0x29EDC94E8], sub_29A1AD198);
  v127 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v127)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v127, MEMORY[0x29EDC94E8], MEMORY[0x29EDC94F8], sub_29A1AD1E4);
  v128 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v128)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v128, MEMORY[0x29EDC94F8], MEMORY[0x29EDC9508], sub_29A1AD258);
  v129 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v129)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v129, MEMORY[0x29EDC9508], MEMORY[0x29EDC94F8], sub_29A1AD2A4);
  v130 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v130)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v130, MEMORY[0x29EDC94F8], MEMORY[0x29EDC9510], sub_29A1AD318);
  v131 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v131)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v131, MEMORY[0x29EDC9510], MEMORY[0x29EDC94F8], sub_29A1AD364);
  v132 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v132)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v132, MEMORY[0x29EDC94F8], &unk_2A2040768, sub_29A1AD3D8);
  v133 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v133)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v133, &unk_2A2040768, MEMORY[0x29EDC94F8], sub_29A1AD438);
  v134 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v134)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v134, MEMORY[0x29EDC94F8], MEMORY[0x29EDC94C0], sub_29A1AD698);
  v135 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v135)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v135, MEMORY[0x29EDC94C0], MEMORY[0x29EDC94F8], sub_29A1AD6EC);
  v136 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v136)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v136, MEMORY[0x29EDC94F8], MEMORY[0x29EDC94B8], sub_29A1AD818);
  v137 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v137)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v137, MEMORY[0x29EDC94B8], MEMORY[0x29EDC94F8], sub_29A1AD86C);
  v138 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v138)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v138, MEMORY[0x29EDC94D0], MEMORY[0x29EDC94D8], sub_29A1AD99C);
  v139 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v139)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v139, MEMORY[0x29EDC94D8], MEMORY[0x29EDC94D0], sub_29A1AD9F8);
  v140 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v140)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v140, MEMORY[0x29EDC94D0], MEMORY[0x29EDC94E0], sub_29A1ADA54);
  v141 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v141)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v141, MEMORY[0x29EDC94E0], MEMORY[0x29EDC94D0], sub_29A1ADAA8);
  v142 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v142)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v142, MEMORY[0x29EDC94D0], MEMORY[0x29EDC94E8], sub_29A1ADB08);
  v143 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v143)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v143, MEMORY[0x29EDC94E8], MEMORY[0x29EDC94D0], sub_29A1ADB64);
  v144 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v144)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v144, MEMORY[0x29EDC94D0], MEMORY[0x29EDC9508], sub_29A1ADBC4);
  v145 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v145)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v145, MEMORY[0x29EDC9508], MEMORY[0x29EDC94D0], sub_29A1ADC18);
  v146 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v146)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v146, MEMORY[0x29EDC94D0], MEMORY[0x29EDC9510], sub_29A1ADC78);
  v147 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v147)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v147, MEMORY[0x29EDC9510], MEMORY[0x29EDC94D0], sub_29A1ADCD4);
  v148 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v148)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v148, MEMORY[0x29EDC94D0], &unk_2A2040768, sub_29A1ADD34);
  v149 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v149)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v149, &unk_2A2040768, MEMORY[0x29EDC94D0], sub_29A1ADD94);
  v150 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v150)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v150, MEMORY[0x29EDC94D0], MEMORY[0x29EDC94C0], sub_29A1ADFFC);
  v151 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v151)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v151, MEMORY[0x29EDC94C0], MEMORY[0x29EDC94D0], sub_29A1AE050);
  v152 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v152)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v152, MEMORY[0x29EDC94D0], MEMORY[0x29EDC94B8], sub_29A1AE0E4);
  v153 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v153)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v153, MEMORY[0x29EDC94B8], MEMORY[0x29EDC94D0], sub_29A1AE138);
  v154 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v154)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v154, MEMORY[0x29EDC94D8], MEMORY[0x29EDC94E0], sub_29A1AE1C8);
  v155 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v155)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v155, MEMORY[0x29EDC94E0], MEMORY[0x29EDC94D8], sub_29A1AE214);
  v156 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v156)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v156, MEMORY[0x29EDC94D8], MEMORY[0x29EDC94E8], sub_29A1AE274);
  v157 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v157)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v157, MEMORY[0x29EDC94E8], MEMORY[0x29EDC94D8], sub_29A1AE2C0);
  v158 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v158)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v158, MEMORY[0x29EDC94D8], MEMORY[0x29EDC9508], sub_29A1AE320);
  v159 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v159)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v159, MEMORY[0x29EDC9508], MEMORY[0x29EDC94D8], sub_29A1AE36C);
  v160 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v160)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v160, MEMORY[0x29EDC94D8], MEMORY[0x29EDC9510], sub_29A1AE3CC);
  v161 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v161)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v161, MEMORY[0x29EDC9510], MEMORY[0x29EDC94D8], sub_29A1AE418);
  v162 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v162)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v162, MEMORY[0x29EDC94D8], &unk_2A2040768, sub_29A1AE478);
  v163 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v163)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v163, &unk_2A2040768, MEMORY[0x29EDC94D8], sub_29A1AE4D8);
  v164 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v164)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v164, MEMORY[0x29EDC94D8], MEMORY[0x29EDC94C0], sub_29A1AE72C);
  v165 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v165)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v165, MEMORY[0x29EDC94C0], MEMORY[0x29EDC94D8], sub_29A1AE780);
  v166 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v166)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v166, MEMORY[0x29EDC94D8], MEMORY[0x29EDC94B8], sub_29A1AE818);
  v167 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v167)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v167, MEMORY[0x29EDC94B8], MEMORY[0x29EDC94D8], sub_29A1AE86C);
  v168 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v168)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v168, MEMORY[0x29EDC94E0], MEMORY[0x29EDC94E8], sub_29A1AE8F8);
  v169 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v169)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v169, MEMORY[0x29EDC94E8], MEMORY[0x29EDC94E0], sub_29A1AE954);
  v170 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v170)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v170, MEMORY[0x29EDC94E0], MEMORY[0x29EDC9508], sub_29A1AE9B0);
  v171 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v171)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v171, MEMORY[0x29EDC9508], MEMORY[0x29EDC94E0], sub_29A1AE9FC);
  v172 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v172)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v172, MEMORY[0x29EDC94E0], MEMORY[0x29EDC9510], sub_29A1AEA48);
  v173 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v173)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v173, MEMORY[0x29EDC9510], MEMORY[0x29EDC94E0], sub_29A1AEAA4);
  v174 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v174)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v174, MEMORY[0x29EDC94E0], &unk_2A2040768, sub_29A1AEB00);
  v175 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v175)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v175, &unk_2A2040768, MEMORY[0x29EDC94E0], sub_29A1AEB60);
  v176 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v176)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v176, MEMORY[0x29EDC94E0], MEMORY[0x29EDC94C0], sub_29A1AEE30);
  v177 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v177)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v177, MEMORY[0x29EDC94C0], MEMORY[0x29EDC94E0], sub_29A1AEE84);
  v178 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v178)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v178, MEMORY[0x29EDC94E0], MEMORY[0x29EDC94B8], sub_29A1AEF0C);
  v179 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v179)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v179, MEMORY[0x29EDC94B8], MEMORY[0x29EDC94E0], sub_29A1AEF60);
  v180 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v180)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v180, MEMORY[0x29EDC94E8], MEMORY[0x29EDC9508], sub_29A1AEFF0);
  v181 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v181)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v181, MEMORY[0x29EDC9508], MEMORY[0x29EDC94E8], sub_29A1AF04C);
  v182 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v182)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v182, MEMORY[0x29EDC94E8], MEMORY[0x29EDC9510], sub_29A1AF0A8);
  v183 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v183)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v183, MEMORY[0x29EDC9510], MEMORY[0x29EDC94E8], sub_29A1AF0F4);
  v184 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v184)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v184, MEMORY[0x29EDC94E8], &unk_2A2040768, sub_29A1AF140);
  v185 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v185)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v185, &unk_2A2040768, MEMORY[0x29EDC94E8], sub_29A1AF1A0);
  v186 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v186)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v186, MEMORY[0x29EDC94E8], MEMORY[0x29EDC94C0], sub_29A1AF45C);
  v187 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v187)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v187, MEMORY[0x29EDC94C0], MEMORY[0x29EDC94E8], sub_29A1AF4B0);
  v188 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v188)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v188, MEMORY[0x29EDC94E8], MEMORY[0x29EDC94B8], sub_29A1AF53C);
  v189 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v189)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v189, MEMORY[0x29EDC94B8], MEMORY[0x29EDC94E8], sub_29A1AF590);
  v190 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v190)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v190, MEMORY[0x29EDC9508], MEMORY[0x29EDC9510], sub_29A1AF61C);
  v191 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v191)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v191, MEMORY[0x29EDC9510], MEMORY[0x29EDC9508], sub_29A1AF678);
  v192 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v192)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v192, MEMORY[0x29EDC9508], &unk_2A2040768, sub_29A1AF6D4);
  v193 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v193)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v193, &unk_2A2040768, MEMORY[0x29EDC9508], sub_29A1AF734);
  v194 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v194)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v194, MEMORY[0x29EDC9508], MEMORY[0x29EDC94C0], sub_29A1AF794);
  v195 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v195)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v195, MEMORY[0x29EDC94C0], MEMORY[0x29EDC9508], sub_29A1AF7E8);
  v196 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v196)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v196, MEMORY[0x29EDC9508], MEMORY[0x29EDC94B8], sub_29A1AF870);
  v197 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v197)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v197, MEMORY[0x29EDC94B8], MEMORY[0x29EDC9508], sub_29A1AF8C4);
  v198 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v198)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v198, MEMORY[0x29EDC9510], &unk_2A2040768, sub_29A1AF954);
  v199 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v199)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v199, &unk_2A2040768, MEMORY[0x29EDC9510], sub_29A1AF9B4);
  v200 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v200)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v200, MEMORY[0x29EDC9510], MEMORY[0x29EDC94C0], sub_29A1AFA14);
  v201 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v201)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v201, MEMORY[0x29EDC94C0], MEMORY[0x29EDC9510], sub_29A1AFA68);
  v202 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v202)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v202, MEMORY[0x29EDC9510], MEMORY[0x29EDC94B8], sub_29A1AFAF4);
  v203 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v203)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v203, MEMORY[0x29EDC94B8], MEMORY[0x29EDC9510], sub_29A1AFB48);
  v204 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v204)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v204, &unk_2A2040768, MEMORY[0x29EDC94C0], sub_29A1AFBD4);
  v205 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v205)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v205, MEMORY[0x29EDC94C0], &unk_2A2040768, sub_29A1AFC30);
  v206 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v206)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v206, &unk_2A2040768, MEMORY[0x29EDC94B8], sub_29A1AFCF8);
  v207 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v207)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v207, MEMORY[0x29EDC94B8], &unk_2A2040768, sub_29A1AFD58);
  v208 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v208)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v208, MEMORY[0x29EDC94C0], MEMORY[0x29EDC94B8], sub_29A1AFE24);
  v209 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v209)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v209, MEMORY[0x29EDC94B8], MEMORY[0x29EDC94C0], sub_29A1AFE78);
  v210 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v210)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v210, &unk_2A2040480, &unk_2A203B0F8, sub_29A1A82F0);
  v211 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_instance);
  if (!v211)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Vt_CastRegistry>::_CreateInstance();
  }

  sub_29A1A3960(v211, &unk_2A203B0F8, &unk_2A2040480, sub_29A1A8364);
}

void *sub_29A1A7F20(void *a1, void *a2)
{
  *a1 = &unk_2A20442E8;
  sub_29A1B03EC((a1 + 1), a2);
  return a1;
}

void sub_29A1A7F64(void *a1, void *a2)
{
  *a1 = &unk_2A20442E8;
  sub_29A1B03EC((a1 + 1), a2);

  operator delete(a1);
}

uint64_t sub_29A1A7FB8(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x48);
  v5[8] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

void sub_29A1A8110(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_29A0EC0EC(a2);
  v7 = v6;
  v8 = a1 + 48;
  v9 = *(a1 + 48 + 8 * v6);
  __dmb(0xBu);
  if (!v9)
  {
    if (v6)
    {
      v10 = 8 << v6;
    }

    else
    {
      v10 = 16;
    }

    v11 = tbb::internal::allocate_via_handler_v3(v10);
    bzero(v11, v10);
    v13 = (v8 + 8 * v7);
    while (1)
    {
      v14 = 0;
      atomic_compare_exchange_strong(v13, &v14, v11);
      if (!v14)
      {
        break;
      }

      if (atomic_fetch_add_explicit(v13, 0, memory_order_relaxed))
      {
        tbb::internal::deallocate_via_handler_v3(v11, v12);
        break;
      }
    }
  }

  v15 = *(v8 + 8 * v7);
  __dmb(0xBu);
  *(v15 + 8 * (a2 - ((1 << v7) & 0x1FFFFFFFFFFFFFFELL))) = *a3;
}

uint64_t sub_29A1A81D0(uint64_t a1)
{
  sub_29A1A820C(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29A1A8254(a1, v2);
  return a1;
}

uint64_t sub_29A1A820C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29A1A8254(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29A1A8254(uint64_t a1, tbb::internal *this)
{
  if (*(this + 64))
  {
    sub_29A1A8298(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

void sub_29A1A8298(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

unsigned int *sub_29A1A82F0@<X0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  *(a2 + 8) = &off_2A2044DD0;

  return sub_29A1B01B8(a2, EmptyString);
}

uint64_t sub_29A1A8364@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7);
  v5 = v7;
  *a2 = v7;
  a2[1] = (&off_2A2044E88 + 1);
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v6;
    }
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_29A1A83FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204430B;
  *a2 = v4;
  return result;
}

unsigned __int8 *sub_29A1A844C@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 <= 1)
  {
    v5 = &unk_2A20443C3;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

_BYTE *sub_29A1A85C8@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A204430B;
  *a2 = *result;
  return result;
}

_BYTE *sub_29A1A8700@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A20443C3;
  *a2 = *result;
  return result;
}

uint64_t sub_29A1A871C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204447B;
  *a2 = v4;
  return result;
}

unsigned __int8 *sub_29A1A876C@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 <= 1)
  {
    v5 = &unk_2A20443C3;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

_BYTE *sub_29A1A88E8@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A204447B;
  *a2 = *result;
  return result;
}

uint64_t sub_29A1A8904@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A2044533;
  *a2 = v4;
  return result;
}

unsigned __int8 *sub_29A1A8954@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 <= 1)
  {
    v5 = &unk_2A20443C3;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

_BYTE *sub_29A1A8AD0@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A2044533;
  *a2 = *result;
  return result;
}

unsigned __int8 *sub_29A1A8AEC@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A20445EB;
  *a2 = v4;
  return result;
}

unsigned __int16 *sub_29A1A8B3C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 <= 1)
  {
    v5 = &unk_2A20443C3;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

_WORD *sub_29A1A8CC4@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A20445EB;
  *a2 = *result;
  return result;
}

unsigned __int8 *sub_29A1A8CE0@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A20446A3;
  *a2 = v4;
  return result;
}

unsigned __int16 *sub_29A1A8D30@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 <= 1)
  {
    v5 = &unk_2A20443C3;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

_WORD *sub_29A1A8EB8@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A20446A3;
  *a2 = *result;
  return result;
}

unsigned __int8 *sub_29A1A8ED4@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204475B;
  *a2 = v4;
  return result;
}

uint64_t sub_29A1A8F24@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 1u)
  {
    v4 = &unk_2A20443C3;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

_DWORD *sub_29A1A90AC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A204475B;
  *a2 = *result;
  return result;
}

unsigned __int8 *sub_29A1A90C8@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A2044813;
  *a2 = v4;
  return result;
}

uint64_t sub_29A1A9118@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 1u)
  {
    v4 = &unk_2A20443C3;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

_DWORD *sub_29A1A92A0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A2044813;
  *a2 = *result;
  return result;
}

unsigned __int8 *sub_29A1A92BC@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A20448CB;
  return result;
}

void *sub_29A1A9308@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 1uLL)
  {
    v4 = &unk_2A20443C3;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

void *sub_29A1A9490@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &unk_2A20448CB;
  return result;
}

unsigned __int8 *sub_29A1A94A8@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044983;
  return result;
}

void *sub_29A1A94F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 1uLL)
  {
    v4 = &unk_2A20443C3;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

void *sub_29A1A967C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &unk_2A2044983;
  return result;
}

unsigned __int8 *sub_29A1A9694@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044A3B;
  return result;
}

void *sub_29A1A96E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 1uLL)
  {
    v4 = &unk_2A20443C3;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

void *sub_29A1A9868@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &unk_2A2044A3B;
  return result;
}

unsigned __int8 *sub_29A1A9880@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044AF3;
  return result;
}

void *sub_29A1A98CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 1uLL)
  {
    v4 = &unk_2A20443C3;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

void *sub_29A1A9A54@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &unk_2A2044AF3;
  return result;
}

uint64_t sub_29A1A9A6C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1A9B2C(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1A9ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1A9D00(*a1, 0);
  v5 = 0;
  if ((result & 0x100) != 0)
  {
    v5 = &unk_2A20443C3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1A9B2C(unsigned int a1)
{
  v1 = a1;
  v2 = COERCE_UNSIGNED_INT(a1);
  if (v1)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v2 >> 23])
    {
      v3 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v2 >> 23] + (((v2 & 0x7FFFFF) + ((v2 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v3) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v2);
    }
  }

  else
  {
    v3 = v2 >> 16;
  }

  return v3 | 0x10000u;
}

_WORD *sub_29A1A9CE4@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A2044BA8 + 3;
  *a2 = *result;
  return result;
}

uint64_t sub_29A1A9D00(unsigned __int16 a1, int *a2)
{
  v3 = a1;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1];
  if (fabsf(v4) == INFINITY)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = LODWORD(v4) >> 31;
LABEL_19:
      *a2 = v7;
      return v5 | (v6 << 8);
    }

    goto LABEL_22;
  }

  v8 = COERCE_UNSIGNED_INT(0.0 - 1.0);
  if ((0.0 - 1.0) == 0.0)
  {
    v9 = v8 >> 16;
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23] + (((v8 & 0x7FFFFF) + ((v8 >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v8);
  }

  v10 = 1.0 + 1.0;
  if ((1.0 + 1.0) == 0.0)
  {
    v11 = HIWORD(LODWORD(v10));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
  {
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(COERCE_UNSIGNED_INT(1.0 + 1.0));
  }

  v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3];
  if (v12 <= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v9])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      goto LABEL_19;
    }

LABEL_22:
    v5 = 0;
    v6 = 0;
    return v5 | (v6 << 8);
  }

  if (v12 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v11])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      *a2 = 0;
      return v5 | (v6 << 8);
    }

    goto LABEL_22;
  }

  v5 = v12 != 0.0;
  v6 = 1;
  return v5 | (v6 << 8);
}

float sub_29A1A9EDC@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, unsigned int a3@<S0>)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    a1 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  LOBYTE(a3) = *a1;
  result = a3;
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t sub_29A1A9F30@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (*result >= 2.0 || v4 <= -1.0 || (*result & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v7 = 0;
  }

  else
  {
    v7 = &unk_2A20443C3;
    *a2 = v4 != 0.0;
  }

  *(a2 + 8) = v7;
  return result;
}

float sub_29A1A9FBC(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_29A1A9FCC(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_29A1A9FE0(float *a1)
{
  v1 = *a1;
  if (*a1 == 0.0)
  {
    v1 = 0.0;
  }

  return bswap64(0x9E3779B97F4A7C55 * LODWORD(v1));
}

float sub_29A1AA0E8@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A2044C63;
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_29A1AA104@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, unint64_t a3@<D0>)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    a1 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  LOBYTE(a3) = *a1;
  result = a3;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AA158@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (*result >= 2.0 || v4 <= -1.0 || (*result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v7 = 0;
  }

  else
  {
    v7 = &unk_2A20443C3;
    *a2 = v4 != 0.0;
  }

  *(a2 + 8) = v7;
  return result;
}

double sub_29A1AA1E4(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_29A1AA1F4(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_29A1AA208(double *a1)
{
  v1 = *a1;
  if (*a1 == 0.0)
  {
    v1 = 0.0;
  }

  return bswap64(0x9E3779B97F4A7C55 * *&v1);
}

double sub_29A1AA310@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  a2[1] = &unk_2A2044D1B;
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_29A1AA32C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204447B;
  *a2 = v4;
  return result;
}

uint64_t sub_29A1AA37C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204430B;
  *a2 = v4;
  return result;
}

char *sub_29A1AA3CC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A2044533;
    *a2 = v4;
  }

  *(a2 + 8) = v5;
  return result;
}

char *sub_29A1AA428@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A204430B;
    *a2 = v4;
  }

  *(a2 + 8) = v5;
  return result;
}

unsigned __int8 *sub_29A1AA484@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A20445EB;
  *a2 = v4;
  return result;
}

unsigned __int16 *sub_29A1AA4E0@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if ((v4 - 128) >> 8 >= 0xFF)
  {
    v5 = &unk_2A204430B;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

char *sub_29A1AA548@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A20446A3;
    *a2 = v4;
  }

  *(a2 + 8) = v5;
  return result;
}

unsigned __int16 *sub_29A1AA5A4@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 <= 0x7F)
  {
    v5 = &unk_2A204430B;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

char *sub_29A1AA604@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204475B;
  *a2 = v4;
  return result;
}

uint64_t sub_29A1AA654@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 == v4)
  {
    v5 = &unk_2A204430B;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

char *sub_29A1AA6B4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A2044813;
    *a2 = v4;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AA710@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 0x7Fu)
  {
    v4 = &unk_2A204430B;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

char *sub_29A1AA770@<X0>(char *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = -256;
  if (*result >= 0)
  {
    v4 = 0;
  }

  *a2 = v4 & 0xFFFFFFFFFFFFFF00 | *result;
  a2[1] = &unk_2A20448CB;
  return result;
}

void *sub_29A1AA7CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result == *result)
  {
    v4 = &unk_2A204430B;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

char *sub_29A1AA82C@<X0>(char *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A2044983;
    *a2 = v4;
  }

  a2[1] = v5;
  return result;
}

void *sub_29A1AA888@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 0x7FuLL)
  {
    v4 = &unk_2A204430B;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

char *sub_29A1AA8E8@<X0>(char *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = -256;
  if (*result >= 0)
  {
    v4 = 0;
  }

  *a2 = v4 & 0xFFFFFFFFFFFFFF00 | *result;
  a2[1] = &unk_2A2044A3B;
  return result;
}

void *sub_29A1AA944@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result == *result)
  {
    v4 = &unk_2A204430B;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

char *sub_29A1AA9A4@<X0>(char *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A2044AF3;
    *a2 = v4;
  }

  a2[1] = v5;
  return result;
}

void *sub_29A1AAA00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 0x7FuLL)
  {
    v4 = &unk_2A204430B;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_29A1AAA60@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AAB20(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AAAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AAB8C(*a1, 0);
  v5 = 0;
  if ((result & 0x100) != 0)
  {
    v5 = &unk_2A204430B;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AAB20(int a1)
{
  v2 = COERCE_UNSIGNED_INT(a1);
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v2 >> 23])
    {
      v3 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v2 >> 23] + (((v2 & 0x7FFFFF) + ((v2 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v3) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v2);
    }
  }

  else
  {
    v3 = v2 >> 16;
  }

  return v3 | 0x10000u;
}

uint64_t sub_29A1AAB8C(unsigned __int16 a1, int *a2)
{
  v3 = a1;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1];
  if (fabsf(v4) == INFINITY)
  {
    if (a2)
    {
      LOBYTE(v5) = 0;
      v6 = 0;
      v7 = LODWORD(v4) >> 31;
LABEL_19:
      *a2 = v7;
      return v5 | (v6 << 8);
    }

    goto LABEL_22;
  }

  v8 = COERCE_UNSIGNED_INT(-128.0 - 1.0);
  if ((-128.0 - 1.0) == 0.0)
  {
    v9 = v8 >> 16;
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23] + (((v8 & 0x7FFFFF) + ((v8 >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v8);
  }

  v10 = 1.0 + 127.0;
  if ((1.0 + 127.0) == 0.0)
  {
    v11 = HIWORD(LODWORD(v10));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
  {
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v10));
  }

  v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3];
  if (v12 <= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v9])
  {
    if (a2)
    {
      LOBYTE(v5) = 0;
      v6 = 0;
      v7 = 1;
      goto LABEL_19;
    }

LABEL_22:
    LOBYTE(v5) = 0;
    v6 = 0;
    return v5 | (v6 << 8);
  }

  if (v12 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v11])
  {
    if (a2)
    {
      LOBYTE(v5) = 0;
      v6 = 0;
      *a2 = 0;
      return v5 | (v6 << 8);
    }

    goto LABEL_22;
  }

  v5 = v12;
  v6 = 1;
  return v5 | (v6 << 8);
}

float sub_29A1AAD80@<S0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AADD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AAE34(0, *a1);
  v5 = 0;
  if ((result & 0x100) != 0)
  {
    v5 = &unk_2A204430B;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AAE34(int *a1, float a2)
{
  if (fabsf(a2) == INFINITY)
  {
    if (a1)
    {
      LOBYTE(v2) = 0;
      v3 = 0;
      v4 = LODWORD(a2) >> 31;
LABEL_9:
      *a1 = v4;
      return v2 | (v3 << 8);
    }

    goto LABEL_12;
  }

  if (a2 <= -129.0)
  {
    if (a1)
    {
      LOBYTE(v2) = 0;
      v3 = 0;
      v4 = 1;
      goto LABEL_9;
    }

LABEL_12:
    LOBYTE(v2) = 0;
    v3 = 0;
    return v2 | (v3 << 8);
  }

  if (a2 >= 128.0)
  {
    if (a1)
    {
      LOBYTE(v2) = 0;
      v3 = 0;
      *a1 = 0;
      return v2 | (v3 << 8);
    }

    goto LABEL_12;
  }

  v2 = a2;
  v3 = 1;
  return v2 | (v3 << 8);
}

double sub_29A1AAEE4@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AAF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AAF98(0, *a1);
  v5 = 0;
  if ((result & 0x100) != 0)
  {
    v5 = &unk_2A204430B;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AAF98(_DWORD *a1, double a2)
{
  if (fabs(a2) != INFINITY)
  {
    if (a2 <= -129.0)
    {
      if (a1)
      {
        LOBYTE(v2) = 0;
        v3 = 0;
        *a1 = 1;
        return v2 | (v3 << 8);
      }
    }

    else
    {
      if (a2 < 128.0)
      {
        v2 = a2;
        v3 = 1;
        return v2 | (v3 << 8);
      }

      if (a1)
      {
        LOBYTE(v2) = 0;
        v3 = 0;
        *a1 = 0;
        return v2 | (v3 << 8);
      }
    }

LABEL_11:
    LOBYTE(v2) = 0;
    v3 = 0;
    return v2 | (v3 << 8);
  }

  if (!a1)
  {
    goto LABEL_11;
  }

  LOBYTE(v2) = 0;
  v3 = 0;
  *a1 = *&a2 >> 63;
  return v2 | (v3 << 8);
}

char *sub_29A1AB050@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A2044533;
    *a2 = v4;
  }

  *(a2 + 8) = v5;
  return result;
}

char *sub_29A1AB0AC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A204447B;
    *a2 = v4;
  }

  *(a2 + 8) = v5;
  return result;
}

unsigned __int8 *sub_29A1AB108@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A20445EB;
  *a2 = v4;
  return result;
}

unsigned __int16 *sub_29A1AB164@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if ((v4 - 128) >> 8 >= 0xFF)
  {
    v5 = &unk_2A204447B;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

char *sub_29A1AB1CC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A20446A3;
    *a2 = v4;
  }

  *(a2 + 8) = v5;
  return result;
}

unsigned __int16 *sub_29A1AB228@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 <= 0x7F)
  {
    v5 = &unk_2A204447B;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

char *sub_29A1AB288@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204475B;
  *a2 = v4;
  return result;
}

uint64_t sub_29A1AB2D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 == v4)
  {
    v5 = &unk_2A204447B;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

char *sub_29A1AB338@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A2044813;
    *a2 = v4;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AB394@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 0x7Fu)
  {
    v4 = &unk_2A204447B;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

char *sub_29A1AB3F4@<X0>(char *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = -256;
  if (*result >= 0)
  {
    v4 = 0;
  }

  *a2 = v4 & 0xFFFFFFFFFFFFFF00 | *result;
  a2[1] = &unk_2A20448CB;
  return result;
}

void *sub_29A1AB450@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result == *result)
  {
    v4 = &unk_2A204447B;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

char *sub_29A1AB4B0@<X0>(char *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A2044983;
    *a2 = v4;
  }

  a2[1] = v5;
  return result;
}

void *sub_29A1AB50C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 0x7FuLL)
  {
    v4 = &unk_2A204447B;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

char *sub_29A1AB56C@<X0>(char *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = -256;
  if (*result >= 0)
  {
    v4 = 0;
  }

  *a2 = v4 & 0xFFFFFFFFFFFFFF00 | *result;
  a2[1] = &unk_2A2044A3B;
  return result;
}

void *sub_29A1AB5C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result == *result)
  {
    v4 = &unk_2A204447B;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

char *sub_29A1AB628@<X0>(char *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A2044AF3;
    *a2 = v4;
  }

  a2[1] = v5;
  return result;
}

void *sub_29A1AB684@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 0x7FuLL)
  {
    v4 = &unk_2A204447B;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_29A1AB6E4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AAB20(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AB744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AAB8C(*a1, 0);
  v5 = 0;
  if ((result & 0x100) != 0)
  {
    v5 = &unk_2A204447B;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

float sub_29A1AB7A4@<S0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AB7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AAE34(0, *a1);
  v5 = 0;
  if ((result & 0x100) != 0)
  {
    v5 = &unk_2A204447B;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

double sub_29A1AB858@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AB8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AAF98(0, *a1);
  v5 = 0;
  if ((result & 0x100) != 0)
  {
    v5 = &unk_2A204447B;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

unsigned __int8 *sub_29A1AB90C@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A20445EB;
  *a2 = v4;
  return result;
}

unsigned __int16 *sub_29A1AB95C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 <= 0xFF)
  {
    v5 = &unk_2A2044533;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

unsigned __int8 *sub_29A1AB9BC@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A20446A3;
  *a2 = v4;
  return result;
}

unsigned __int16 *sub_29A1ABA0C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 <= 0xFF)
  {
    v5 = &unk_2A2044533;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

unsigned __int8 *sub_29A1ABA6C@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204475B;
  *a2 = v4;
  return result;
}

uint64_t sub_29A1ABABC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 0xFFu)
  {
    v4 = &unk_2A2044533;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

unsigned __int8 *sub_29A1ABB1C@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A2044813;
  *a2 = v4;
  return result;
}

uint64_t sub_29A1ABB6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 0xFFu)
  {
    v4 = &unk_2A2044533;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

unsigned __int8 *sub_29A1ABBCC@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A20448CB;
  return result;
}

void *sub_29A1ABC18@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 0xFFuLL)
  {
    v4 = &unk_2A2044533;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

unsigned __int8 *sub_29A1ABC78@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044983;
  return result;
}

void *sub_29A1ABCC4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 0xFFuLL)
  {
    v4 = &unk_2A2044533;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

unsigned __int8 *sub_29A1ABD24@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044A3B;
  return result;
}

void *sub_29A1ABD70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 0xFFuLL)
  {
    v4 = &unk_2A2044533;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

unsigned __int8 *sub_29A1ABDD0@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044AF3;
  return result;
}

void *sub_29A1ABE1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result <= 0xFFuLL)
  {
    v4 = &unk_2A2044533;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_29A1ABE7C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1ABF3C(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1ABEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1ABFA8(*a1, 0);
  v5 = 0;
  if ((result & 0x100) != 0)
  {
    v5 = &unk_2A2044533;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1ABF3C(unsigned int a1)
{
  v2 = COERCE_UNSIGNED_INT(a1);
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v2 >> 23])
    {
      v3 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v2 >> 23] + (((v2 & 0x7FFFFF) + ((v2 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v3) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v2);
    }
  }

  else
  {
    v3 = v2 >> 16;
  }

  return v3 | 0x10000u;
}

uint64_t sub_29A1ABFA8(unsigned __int16 a1, int *a2)
{
  v3 = a1;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1];
  if (fabsf(v4) == INFINITY)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = LODWORD(v4) >> 31;
LABEL_19:
      *a2 = v7;
      return v5 | (v6 << 8);
    }

    goto LABEL_22;
  }

  v8 = COERCE_UNSIGNED_INT(0.0 - 1.0);
  if ((0.0 - 1.0) == 0.0)
  {
    v9 = v8 >> 16;
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23] + (((v8 & 0x7FFFFF) + ((v8 >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v8);
  }

  v10 = 1.0 + 255.0;
  if ((1.0 + 255.0) == 0.0)
  {
    v11 = HIWORD(LODWORD(v10));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
  {
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(COERCE_UNSIGNED_INT(1.0 + 255.0));
  }

  v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3];
  if (v12 <= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v9])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      goto LABEL_19;
    }

LABEL_22:
    v5 = 0;
    v6 = 0;
    return v5 | (v6 << 8);
  }

  if (v12 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v11])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      *a2 = 0;
      return v5 | (v6 << 8);
    }

    goto LABEL_22;
  }

  v5 = v12;
  v6 = 1;
  return v5 | (v6 << 8);
}

float sub_29A1AC184@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, unsigned int a3@<S0>)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    a1 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  LOBYTE(a3) = *a1;
  result = a3;
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AC1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AC238(0, *a1);
  v5 = 0;
  if ((result & 0x100) != 0)
  {
    v5 = &unk_2A2044533;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AC238(int *a1, float a2)
{
  if (fabsf(a2) == INFINITY)
  {
    if (a1)
    {
      v2 = 0;
      v3 = 0;
      v4 = LODWORD(a2) >> 31;
LABEL_9:
      *a1 = v4;
      return v2 | (v3 << 8);
    }

    goto LABEL_12;
  }

  if (a2 <= -1.0)
  {
    if (a1)
    {
      v2 = 0;
      v3 = 0;
      v4 = 1;
      goto LABEL_9;
    }

LABEL_12:
    v2 = 0;
    v3 = 0;
    return v2 | (v3 << 8);
  }

  if (a2 >= 256.0)
  {
    if (a1)
    {
      v2 = 0;
      v3 = 0;
      *a1 = 0;
      return v2 | (v3 << 8);
    }

    goto LABEL_12;
  }

  v2 = a2;
  v3 = 1;
  return v2 | (v3 << 8);
}

double sub_29A1AC2E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, unint64_t a3@<D0>)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    a1 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  LOBYTE(a3) = *a1;
  result = a3;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AC338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AC398(0, *a1);
  v5 = 0;
  if ((result & 0x100) != 0)
  {
    v5 = &unk_2A2044533;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AC398(_DWORD *a1, double a2)
{
  if (fabs(a2) != INFINITY)
  {
    if (a2 <= -1.0)
    {
      if (a1)
      {
        v2 = 0;
        v3 = 0;
        *a1 = 1;
        return v2 | (v3 << 8);
      }
    }

    else
    {
      if (a2 < 256.0)
      {
        v2 = a2;
        v3 = 1;
        return v2 | (v3 << 8);
      }

      if (a1)
      {
        v2 = 0;
        v3 = 0;
        *a1 = 0;
        return v2 | (v3 << 8);
      }
    }

LABEL_11:
    v2 = 0;
    v3 = 0;
    return v2 | (v3 << 8);
  }

  if (!a1)
  {
    goto LABEL_11;
  }

  v2 = 0;
  v3 = 0;
  *a1 = *&a2 >> 63;
  return v2 | (v3 << 8);
}

__int16 *sub_29A1AC448@<X0>(__int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A20446A3;
    *a2 = v4;
  }

  *(a2 + 8) = v5;
  return result;
}

__int16 *sub_29A1AC4A4@<X0>(__int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A20445EB;
    *a2 = v4;
  }

  *(a2 + 8) = v5;
  return result;
}

__int16 *sub_29A1AC500@<X0>(__int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result & 0xFFFFFF00 | *result;
  *(a2 + 8) = &unk_2A204475B;
  *a2 = v4;
  return result;
}

uint64_t sub_29A1AC558@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 == v4)
  {
    v5 = &unk_2A20445EB;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

__int16 *sub_29A1AC5B8@<X0>(__int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A2044813;
    *a2 = v4;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AC614@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result >> 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A20445EB;
    *a2 = *result;
  }

  *(a2 + 8) = v4;
  return result;
}

__int16 *sub_29A1AC674@<X0>(__int16 *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result & 0xFFFFFFFFFFFFFF00 | *result;
  a2[1] = &unk_2A20448CB;
  return result;
}

void *sub_29A1AC6C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result == *result)
  {
    v4 = *result | 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 0x10000)
  {
    v5 = &unk_2A20445EB;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

__int16 *sub_29A1AC738@<X0>(__int16 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A2044983;
    *a2 = v4;
  }

  a2[1] = v5;
  return result;
}

void *sub_29A1AC794@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result >> 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *result & 0x7FFF | 0x10000;
  }

  if (v4 >= 0x10000)
  {
    v5 = &unk_2A20445EB;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

__int16 *sub_29A1AC808@<X0>(__int16 *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result & 0xFFFFFFFFFFFFFF00 | *result;
  a2[1] = &unk_2A2044A3B;
  return result;
}

void *sub_29A1AC85C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result == *result)
  {
    v4 = *result | 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 0x10000)
  {
    v5 = &unk_2A20445EB;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

__int16 *sub_29A1AC8CC@<X0>(__int16 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A2044AF3;
    *a2 = v4;
  }

  a2[1] = v5;
  return result;
}

void *sub_29A1AC928@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result >> 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *result & 0x7FFF | 0x10000;
  }

  if (v4 >= 0x10000)
  {
    v5 = &unk_2A20445EB;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AC99C@<X0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AAB20(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AC9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1ACA5C(*a1, 0);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &unk_2A20445EB;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1ACA5C(unsigned __int16 a1, int *a2)
{
  v3 = a1;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1];
  if (fabsf(v4) == INFINITY)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = LODWORD(v4) >> 31;
LABEL_19:
      *a2 = v8;
      return v6 | v5 | v7;
    }

    goto LABEL_22;
  }

  v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0xC7000000)] - 1.0;
  if (v9 == 0.0)
  {
    v10 = HIWORD(LODWORD(v9));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23])
  {
    v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23] + (((LODWORD(v9) & 0x7FFFFF) + ((LODWORD(v9) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v10) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v9));
  }

  v11 = 1.0 + 32768.0;
  if ((1.0 + 32768.0) == 0.0)
  {
    v12 = HIWORD(LODWORD(v11));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23])
  {
    v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23] + (((LODWORD(v11) & 0x7FFFFF) + ((LODWORD(v11) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v12) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v11));
  }

  v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3];
  if (v13 <= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v10])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 1;
      goto LABEL_19;
    }

LABEL_22:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    return v6 | v5 | v7;
  }

  if (v13 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v12])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      *a2 = 0;
      return v6 | v5 | v7;
    }

    goto LABEL_22;
  }

  v7 = v13 & 0xFF00;
  v6 = v13;
  v5 = 0x10000;
  return v6 | v5 | v7;
}

float sub_29A1ACC70@<S0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t sub_29A1ACCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1ACD24(0, *a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &unk_2A20445EB;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1ACD24(int *a1, float a2)
{
  if (fabsf(a2) == INFINITY)
  {
    if (a1)
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = LODWORD(a2) >> 31;
LABEL_9:
      *a1 = v5;
      return v3 | v2 | v4;
    }

    goto LABEL_12;
  }

  if (a2 <= -32769.0)
  {
    if (a1)
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 1;
      goto LABEL_9;
    }

LABEL_12:
    v2 = 0;
    v3 = 0;
    v4 = 0;
    return v3 | v2 | v4;
  }

  if (a2 >= 32768.0)
  {
    if (a1)
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      *a1 = 0;
      return v3 | v2 | v4;
    }

    goto LABEL_12;
  }

  v4 = a2 & 0xFF00;
  v3 = a2;
  v2 = 0x10000;
  return v3 | v2 | v4;
}

double sub_29A1ACDF0@<D0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

uint64_t sub_29A1ACE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1ACEA4(0, *a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &unk_2A20445EB;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1ACEA4(_DWORD *a1, double a2)
{
  if (fabs(a2) != INFINITY)
  {
    if (a2 <= -32769.0)
    {
      if (a1)
      {
        v2 = 0;
        v3 = 0;
        v4 = 0;
        *a1 = 1;
        return v3 | v2 | v4;
      }
    }

    else
    {
      if (a2 < 32768.0)
      {
        v4 = a2 & 0xFF00;
        v3 = a2;
        v2 = 0x10000;
        return v3 | v2 | v4;
      }

      if (a1)
      {
        v2 = 0;
        v3 = 0;
        v4 = 0;
        *a1 = 0;
        return v3 | v2 | v4;
      }
    }

LABEL_11:
    v2 = 0;
    v3 = 0;
    v4 = 0;
    return v3 | v2 | v4;
  }

  if (!a1)
  {
    goto LABEL_11;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  *a1 = *&a2 >> 63;
  return v3 | v2 | v4;
}

unsigned __int16 *sub_29A1ACF78@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204475B;
  *a2 = v4;
  return result;
}

uint64_t sub_29A1ACFC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (HIWORD(*result))
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A20446A3;
    *a2 = *result;
  }

  *(a2 + 8) = v4;
  return result;
}

unsigned __int16 *sub_29A1AD028@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A2044813;
  *a2 = v4;
  return result;
}

uint64_t sub_29A1AD078@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (HIWORD(*result))
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A20446A3;
    *a2 = *result;
  }

  *(a2 + 8) = v4;
  return result;
}

unsigned __int16 *sub_29A1AD0D8@<X0>(unsigned __int16 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A20448CB;
  return result;
}

void *sub_29A1AD124@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result >> 16)
  {
    v4 = 0;
  }

  else
  {
    v4 = *result | 0x10000;
  }

  if (v4 >= 0x10000)
  {
    v5 = &unk_2A20446A3;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

unsigned __int16 *sub_29A1AD198@<X0>(unsigned __int16 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044983;
  return result;
}

void *sub_29A1AD1E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result >> 16)
  {
    v4 = 0;
  }

  else
  {
    v4 = *result | 0x10000;
  }

  if (v4 >= 0x10000)
  {
    v5 = &unk_2A20446A3;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

unsigned __int16 *sub_29A1AD258@<X0>(unsigned __int16 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044A3B;
  return result;
}

void *sub_29A1AD2A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result >> 16)
  {
    v4 = 0;
  }

  else
  {
    v4 = *result | 0x10000;
  }

  if (v4 >= 0x10000)
  {
    v5 = &unk_2A20446A3;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

unsigned __int16 *sub_29A1AD318@<X0>(unsigned __int16 *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044AF3;
  return result;
}

void *sub_29A1AD364@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result >> 16)
  {
    v4 = 0;
  }

  else
  {
    v4 = *result | 0x10000;
  }

  if (v4 >= 0x10000)
  {
    v5 = &unk_2A20446A3;
    *a2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AD3D8@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1ABF3C(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AD438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AD498(*a1, 0);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &unk_2A20446A3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AD498(unsigned __int16 a1, int *a2)
{
  v3 = a1;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1];
  if (fabsf(v4) == INFINITY)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = LODWORD(v4) >> 31;
LABEL_19:
      *a2 = v8;
      return v6 | v5 | v7;
    }

    goto LABEL_22;
  }

  v9 = COERCE_UNSIGNED_INT(0.0 - 1.0);
  if ((0.0 - 1.0) == 0.0)
  {
    v10 = v9 >> 16;
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v9 >> 23])
  {
    v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v9 >> 23] + (((v9 & 0x7FFFFF) + ((v9 >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v10) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v9);
  }

  v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0x477FFF00)] + 1.0;
  if (v11 == 0.0)
  {
    v12 = HIWORD(LODWORD(v11));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23])
  {
    v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23] + (((LODWORD(v11) & 0x7FFFFF) + ((LODWORD(v11) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v12) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v11));
  }

  v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3];
  if (v13 <= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v10])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 1;
      goto LABEL_19;
    }

LABEL_22:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    return v6 | v5 | v7;
  }

  if (v13 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v12])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      *a2 = 0;
      return v6 | v5 | v7;
    }

    goto LABEL_22;
  }

  v7 = v13 & 0xFF00;
  v6 = v13;
  v5 = 0x10000;
  return v6 | v5 | v7;
}

float sub_29A1AD698@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, unsigned int a3@<S0>)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    a1 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  LOWORD(a3) = *a1;
  result = a3;
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AD6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AD74C(0, *a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &unk_2A20446A3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AD74C(int *a1, float a2)
{
  if (fabsf(a2) == INFINITY)
  {
    if (a1)
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = LODWORD(a2) >> 31;
LABEL_9:
      *a1 = v5;
      return v3 | v2 | v4;
    }

    goto LABEL_12;
  }

  if (a2 <= -1.0)
  {
    if (a1)
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 1;
      goto LABEL_9;
    }

LABEL_12:
    v2 = 0;
    v3 = 0;
    v4 = 0;
    return v3 | v2 | v4;
  }

  if (a2 >= 65536.0)
  {
    if (a1)
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      *a1 = 0;
      return v3 | v2 | v4;
    }

    goto LABEL_12;
  }

  v4 = a2 & 0xFF00;
  v3 = a2;
  v2 = 0x10000;
  return v3 | v2 | v4;
}

double sub_29A1AD818@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, unint64_t a3@<D0>)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    a1 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  LOWORD(a3) = *a1;
  result = a3;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AD86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AD8CC(0, *a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &unk_2A20446A3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AD8CC(_DWORD *a1, double a2)
{
  if (fabs(a2) != INFINITY)
  {
    if (a2 <= -1.0)
    {
      if (a1)
      {
        v2 = 0;
        v3 = 0;
        v4 = 0;
        *a1 = 1;
        return v3 | v2 | v4;
      }
    }

    else
    {
      if (a2 < 65536.0)
      {
        v4 = a2 & 0xFF00;
        v3 = a2;
        v2 = 0x10000;
        return v3 | v2 | v4;
      }

      if (a1)
      {
        v2 = 0;
        v3 = 0;
        v4 = 0;
        *a1 = 0;
        return v3 | v2 | v4;
      }
    }

LABEL_11:
    v2 = 0;
    v3 = 0;
    v4 = 0;
    return v3 | v2 | v4;
  }

  if (!a1)
  {
    goto LABEL_11;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  *a1 = *&a2 >> 63;
  return v3 | v2 | v4;
}

uint64_t sub_29A1AD99C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if ((*result & 0x80000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A2044813;
    *a2 = *result;
  }

  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_29A1AD9F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if ((*result & 0x80000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A204475B;
    *a2 = *result;
  }

  *(a2 + 8) = v4;
  return result;
}

int *sub_29A1ADA54@<X0>(int *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result & 0xFFFFFFFFFFFFFF00 | *result;
  a2[1] = &unk_2A20448CB;
  return result;
}

void *sub_29A1ADAA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result == *result)
  {
    v4 = &unk_2A204475B;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

unsigned int *sub_29A1ADB08@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A2044983;
    *a2 = v4;
  }

  a2[1] = v5;
  return result;
}

void *sub_29A1ADB64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result >> 31)
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A204475B;
    *a2 = *result;
  }

  *(a2 + 8) = v4;
  return result;
}

int *sub_29A1ADBC4@<X0>(int *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result & 0xFFFFFFFFFFFFFF00 | *result;
  a2[1] = &unk_2A2044A3B;
  return result;
}

void *sub_29A1ADC18@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result == *result)
  {
    v4 = &unk_2A204475B;
    *a2 = *result;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = v4;
  return result;
}

unsigned int *sub_29A1ADC78@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = &unk_2A2044AF3;
    *a2 = v4;
  }

  a2[1] = v5;
  return result;
}

void *sub_29A1ADCD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (*result >> 31)
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A204475B;
    *a2 = *result;
  }

  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_29A1ADD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AAB20(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1ADD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1ADDF4(*a1, 0);
  v5 = 0;
  if ((result & 0x100000000) != 0)
  {
    v5 = &unk_2A204475B;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1ADDF4(unsigned __int16 a1, int *a2)
{
  v3 = a1;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1];
  if (fabsf(v4) == INFINITY)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = LODWORD(v4) >> 31;
LABEL_19:
      *a2 = v8;
      return v5 | v7 | v6;
    }

    goto LABEL_22;
  }

  v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0xCF000000)] - 1.0;
  if (v9 == 0.0)
  {
    v10 = HIWORD(LODWORD(v9));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23])
  {
    v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23] + (((LODWORD(v9) & 0x7FFFFF) + ((LODWORD(v9) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v10) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v9));
  }

  v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0x4F000000)] + 1.0;
  if (v11 == 0.0)
  {
    v12 = HIWORD(LODWORD(v11));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23])
  {
    v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23] + (((LODWORD(v11) & 0x7FFFFF) + ((LODWORD(v11) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v12) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v11));
  }

  v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3];
  if (v13 <= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v10])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 1;
      goto LABEL_19;
    }

LABEL_22:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    return v5 | v7 | v6;
  }

  if (v13 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v12])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      *a2 = 0;
      return v5 | v7 | v6;
    }

    goto LABEL_22;
  }

  v7 = v13 & 0xFFFFFF00;
  v6 = v13;
  v5 = 0x100000000;
  return v5 | v7 | v6;
}

float sub_29A1ADFFC@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AE050@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = 0;
  v5 = *result;
  v7 = (*result & 0x7FFFFFFFu) < 0x7F800000 && v5 > -2147500000.0;
  v8 = v5 >= 2147500000.0 || !v7;
  v9 = v5 | 0x100000000;
  if (v8)
  {
    v9 = 0;
  }

  if (HIDWORD(v9))
  {
    v4 = &unk_2A204475B;
    *a2 = v9;
  }

  *(a2 + 8) = v4;
  return result;
}

double sub_29A1AE0E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AE138@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = 0;
  v5 = *result;
  v7 = (*result & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v5 > -2147483650.0 && v5 < 2147483650.0;
  v8 = v5 | 0x100000000;
  if (!v7)
  {
    v8 = 0;
  }

  if (HIDWORD(v8))
  {
    v4 = &unk_2A204475B;
    *a2 = v8;
  }

  *(a2 + 8) = v4;
  return result;
}

unsigned int *sub_29A1AE1C8@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A20448CB;
  return result;
}

void *sub_29A1AE214@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (HIDWORD(*result))
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A2044813;
    *a2 = *result;
  }

  *(a2 + 8) = v4;
  return result;
}

unsigned int *sub_29A1AE274@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044983;
  return result;
}

void *sub_29A1AE2C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (HIDWORD(*result))
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A2044813;
    *a2 = *result;
  }

  *(a2 + 8) = v4;
  return result;
}

unsigned int *sub_29A1AE320@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044A3B;
  return result;
}

void *sub_29A1AE36C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (HIDWORD(*result))
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A2044813;
    *a2 = *result;
  }

  *(a2 + 8) = v4;
  return result;
}

unsigned int *sub_29A1AE3CC@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044AF3;
  return result;
}

void *sub_29A1AE418@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if (HIDWORD(*result))
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A2044813;
    *a2 = *result;
  }

  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_29A1AE478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1ABF3C(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AE4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AE538(*a1, 0);
  v5 = 0;
  if ((result & 0x100000000) != 0)
  {
    v5 = &unk_2A2044813;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AE538(unsigned __int16 a1, int *a2)
{
  v3 = a1;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1];
  if (fabsf(v4) == INFINITY)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = LODWORD(v4) >> 31;
LABEL_19:
      *a2 = v8;
      return v5 | v7 | v6;
    }

    goto LABEL_22;
  }

  v9 = COERCE_UNSIGNED_INT(0.0 - 1.0);
  if ((0.0 - 1.0) == 0.0)
  {
    v10 = v9 >> 16;
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v9 >> 23])
  {
    v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v9 >> 23] + (((v9 & 0x7FFFFF) + ((v9 >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v10) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v9);
  }

  v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0x4F800000)] + 1.0;
  if (v11 == 0.0)
  {
    v12 = HIWORD(LODWORD(v11));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23])
  {
    v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23] + (((LODWORD(v11) & 0x7FFFFF) + ((LODWORD(v11) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v12) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v11));
  }

  v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3];
  if (v13 <= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v10])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 1;
      goto LABEL_19;
    }

LABEL_22:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    return v5 | v7 | v6;
  }

  if (v13 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v12])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      *a2 = 0;
      return v5 | v7 | v6;
    }

    goto LABEL_22;
  }

  v7 = v13 & 0xFFFFFF00;
  v6 = v13;
  v5 = 0x100000000;
  return v5 | v7 | v6;
}

float sub_29A1AE72C@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AE780@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = 0;
  v5 = *result;
  v7 = (*result & 0x7FFFFFFFu) < 0x7F800000 && v5 > -1.0;
  v8 = v5 >= 4295000000.0 || !v7;
  v9 = v5 | 0x100000000;
  if (v8)
  {
    v9 = 0;
  }

  if (HIDWORD(v9))
  {
    v4 = &unk_2A2044813;
    *a2 = v9;
  }

  *(a2 + 8) = v4;
  return result;
}

double sub_29A1AE818@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, unint64_t a3@<D0>)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    a1 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  LODWORD(a3) = *a1;
  result = a3;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AE86C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = 0;
  v5 = *result;
  v7 = (*result & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v5 > -1.0 && v5 < 4294967300.0;
  v8 = v5 | 0x100000000;
  if (!v7)
  {
    v8 = 0;
  }

  if (HIDWORD(v8))
  {
    v4 = &unk_2A2044813;
    *a2 = v8;
  }

  *(a2 + 8) = v4;
  return result;
}

void *sub_29A1AE8F8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if ((*result & 0x8000000000000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A2044983;
    *a2 = *result;
  }

  a2[1] = v4;
  return result;
}

void *sub_29A1AE954@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if ((*result & 0x8000000000000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A20448CB;
    *a2 = *result;
  }

  a2[1] = v4;
  return result;
}

void *sub_29A1AE9B0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044A3B;
  return result;
}

void *sub_29A1AE9FC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A20448CB;
  return result;
}

void *sub_29A1AEA48@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if ((*result & 0x8000000000000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A2044AF3;
    *a2 = *result;
  }

  a2[1] = v4;
  return result;
}

void *sub_29A1AEAA4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if ((*result & 0x8000000000000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A20448CB;
    *a2 = *result;
  }

  a2[1] = v4;
  return result;
}

uint64_t sub_29A1AEB00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AEBC0(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_29A1AEB60@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AEC2C(*a1, 0);
  v5 = 0;
  if (v6)
  {
    v5 = &unk_2A20448CB;
    *a2 = result;
  }

  a2[1] = v5;
  return result;
}

uint64_t sub_29A1AEBC0(uint64_t a1)
{
  v2 = COERCE_UNSIGNED_INT(a1);
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v2 >> 23])
    {
      v3 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v2 >> 23] + (((v2 & 0x7FFFFF) + ((v2 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v3) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v2);
    }
  }

  else
  {
    v3 = v2 >> 16;
  }

  return v3 | 0x10000u;
}

unint64_t sub_29A1AEC2C(unsigned __int16 a1, int *a2)
{
  v3 = a1;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1];
  if (fabsf(v4) == INFINITY)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = LODWORD(v4) >> 31;
LABEL_19:
      *a2 = v7;
      return v6 | v5;
    }

    goto LABEL_22;
  }

  v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0xDF000000)] - 1.0;
  if (v8 == 0.0)
  {
    v9 = HIWORD(LODWORD(v8));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0x5F000000)] + 1.0;
  if (v10 == 0.0)
  {
    v11 = HIWORD(LODWORD(v10));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
  {
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v10));
  }

  v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3];
  if (v12 <= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v9])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      goto LABEL_19;
    }

LABEL_22:
    v5 = 0;
    v6 = 0;
    return v6 | v5;
  }

  if (v12 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v11])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      *a2 = 0;
      return v6 | v5;
    }

    goto LABEL_22;
  }

  v6 = v12 & 0xFFFFFFFFFFFFFF00;
  v5 = v12;
  return v6 | v5;
}

float sub_29A1AEE30@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AEE84@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (*result >= 9.2234e18 || v4 <= -9.2234e18 || (*result & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v7 = 0;
  }

  else
  {
    v7 = &unk_2A20448CB;
    *a2 = v4;
  }

  a2[1] = v7;
  return result;
}

double sub_29A1AEF0C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AEF60@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (*result >= 9.22337204e18 || v4 <= -9.22337204e18 || (*result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v7 = 0;
  }

  else
  {
    v7 = &unk_2A20448CB;
    *a2 = v4;
  }

  a2[1] = v7;
  return result;
}

void *sub_29A1AEFF0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if ((*result & 0x8000000000000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A2044A3B;
    *a2 = *result;
  }

  a2[1] = v4;
  return result;
}

void *sub_29A1AF04C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if ((*result & 0x8000000000000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A2044983;
    *a2 = *result;
  }

  a2[1] = v4;
  return result;
}

void *sub_29A1AF0A8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044AF3;
  return result;
}

void *sub_29A1AF0F4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a2 = *result;
  a2[1] = &unk_2A2044983;
  return result;
}

uint64_t sub_29A1AF140@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AF200(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_29A1AF1A0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AF26C(*a1, 0);
  v5 = 0;
  if (v6)
  {
    v5 = &unk_2A2044983;
    *a2 = result;
  }

  a2[1] = v5;
  return result;
}

uint64_t sub_29A1AF200(unint64_t a1)
{
  v2 = COERCE_UNSIGNED_INT(a1);
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v2 >> 23])
    {
      v3 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v2 >> 23] + (((v2 & 0x7FFFFF) + ((v2 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v3) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v2);
    }
  }

  else
  {
    v3 = v2 >> 16;
  }

  return v3 | 0x10000u;
}

unint64_t sub_29A1AF26C(unsigned __int16 a1, int *a2)
{
  v3 = a1;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1];
  if (fabsf(v4) == INFINITY)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = LODWORD(v4) >> 31;
LABEL_19:
      *a2 = v7;
      return v6 | v5;
    }

    goto LABEL_22;
  }

  v8 = COERCE_UNSIGNED_INT(0.0 - 1.0);
  if ((0.0 - 1.0) == 0.0)
  {
    v9 = v8 >> 16;
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23] + (((v8 & 0x7FFFFF) + ((v8 >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v8);
  }

  v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0x5F800000)] + 1.0;
  if (v10 == 0.0)
  {
    v11 = HIWORD(LODWORD(v10));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
  {
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v10));
  }

  v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3];
  if (v12 <= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v9])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      goto LABEL_19;
    }

LABEL_22:
    v5 = 0;
    v6 = 0;
    return v6 | v5;
  }

  if (v12 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v11])
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      *a2 = 0;
      return v6 | v5;
    }

    goto LABEL_22;
  }

  v6 = v12 & 0xFFFFFFFFFFFFFF00;
  v5 = v12;
  return v6 | v5;
}

float sub_29A1AF45C@<S0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AF4B0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (*result >= 1.8447e19 || v4 <= -1.0 || (*result & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v7 = 0;
  }

  else
  {
    v7 = &unk_2A2044983;
    *a2 = v4;
  }

  a2[1] = v7;
  return result;
}

double sub_29A1AF53C@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AF590@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (*result >= 1.84467441e19 || v4 <= -1.0 || (*result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v7 = 0;
  }

  else
  {
    v7 = &unk_2A2044983;
    *a2 = v4;
  }

  a2[1] = v7;
  return result;
}

void *sub_29A1AF61C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if ((*result & 0x8000000000000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A2044AF3;
    *a2 = *result;
  }

  a2[1] = v4;
  return result;
}

void *sub_29A1AF678@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  if ((*result & 0x8000000000000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = &unk_2A2044A3B;
    *a2 = *result;
  }

  a2[1] = v4;
  return result;
}

uint64_t sub_29A1AF6D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AEBC0(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_29A1AF734@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AEC2C(*a1, 0);
  v5 = 0;
  if (v6)
  {
    v5 = &unk_2A2044A3B;
    *a2 = result;
  }

  a2[1] = v5;
  return result;
}

float sub_29A1AF794@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AF7E8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (*result >= 9.2234e18 || v4 <= -9.2234e18 || (*result & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v7 = 0;
  }

  else
  {
    v7 = &unk_2A2044A3B;
    *a2 = v4;
  }

  a2[1] = v7;
  return result;
}

double sub_29A1AF870@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AF8C4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (*result >= 9.22337204e18 || v4 <= -9.22337204e18 || (*result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v7 = 0;
  }

  else
  {
    v7 = &unk_2A2044A3B;
    *a2 = v4;
  }

  a2[1] = v7;
  return result;
}

uint64_t sub_29A1AF954@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AF200(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_29A1AF9B4@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AF26C(*a1, 0);
  v5 = 0;
  if (v6)
  {
    v5 = &unk_2A2044AF3;
    *a2 = result;
  }

  a2[1] = v5;
  return result;
}

float sub_29A1AFA14@<S0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AFA68@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (*result >= 1.8447e19 || v4 <= -1.0 || (*result & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v7 = 0;
  }

  else
  {
    v7 = &unk_2A2044AF3;
    *a2 = v4;
  }

  a2[1] = v7;
  return result;
}

double sub_29A1AFAF4@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AFB48@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  if (*result >= 1.84467441e19 || v4 <= -1.0 || (*result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v7 = 0;
  }

  else
  {
    v7 = &unk_2A2044AF3;
    *a2 = v4;
  }

  a2[1] = v7;
  return result;
}

float sub_29A1AFBD4@<S0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AFC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AFC90(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AFC90(float a1)
{
  if (a1 == 0.0)
  {
    v1 = HIWORD(LODWORD(a1));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(a1) >> 23])
  {
    v1 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(a1) >> 23] + (((LODWORD(a1) & 0x7FFFFF) + ((LODWORD(a1) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v1) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(a1));
  }

  return v1 | 0x10000u;
}

double sub_29A1AFCF8@<D0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

uint64_t sub_29A1AFD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = sub_29A1AFDB8(*a1);
  v5 = 0;
  if ((result & 0x10000) != 0)
  {
    v5 = &off_2A2044BA8 + 3;
    *a2 = result;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29A1AFDB8(double a1)
{
  v1 = a1;
  if (v1 == 0.0)
  {
    v2 = HIWORD(LODWORD(v1));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v1) >> 23])
  {
    v2 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v1) >> 23] + (((LODWORD(v1) & 0x7FFFFF) + ((LODWORD(v1) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v2) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v1));
  }

  return v2 | 0x10000u;
}

double sub_29A1AFE24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044D1B;
  *a2 = result;
  return result;
}

float sub_29A1AFE78@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    a1 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  result = *a1;
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = result;
  return result;
}

uint64_t *sub_29A1AFECC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A1AFEEC(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1B0070(a1);
}

unint64_t sub_29A1AFF04(uint64_t *a1)
{
  v1 = *a1;
  v6 = 0;
  v7 = 0;
  v2 = *(v1 + 23);
  if (v2 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 23);
  }

  else
  {
    v4 = *(v1 + 8);
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v6, v3, v4);
  return bswap64(0x9E3779B97F4A7C55 * v6);
}

void *sub_29A1AFF8C(uint64_t **a1, void *a2)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  return sub_29A00911C(a2, v4, v5);
}

unsigned int *sub_29A1B0058@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2044DD0;
  return sub_29A1B01B8(a2, v2);
}

void sub_29A1B0070(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete(v1);
  }
}

BOOL sub_29A1B00DC(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_29A1B0150(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 24));
  if (v2 != 1)
  {
    sub_29AA86124(*a1, &v4);
    sub_29A1B0070(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A1B0070(&v4);
  }

  return *a1;
}

unsigned int *sub_29A1B01B8(unsigned int **a1, uint64_t a2)
{
  result = operator new(0x20uLL);
  v5 = result;
  if (*(a2 + 23) < 0)
  {
    result = sub_29A008D14(result, *a2, *(a2 + 8));
  }

  else
  {
    *result = *a2;
    *(result + 2) = *(a2 + 16);
  }

  atomic_store(0, v5 + 6);
  *a1 = v5;
  atomic_fetch_add_explicit(v5 + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A1B0240(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void *sub_29A1B0270(void *result)
{
  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_29A1B028C(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

atomic_uint **sub_29A1B03B8@<X0>(atomic_uint **result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  a2[1] = (&off_2A2044E88 + 1);
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return result;
}

uint64_t sub_29A1B03EC(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29A1A81D0(a1 + 16);
  return a1;
}

uint64_t sub_29A1B0420(uint64_t result, void *a2)
{
  v2 = 0;
  v3 = result + 48;
  do
  {
    v4 = *(v3 + 8 * v2);
    __dmb(0xBu);
    if (v4)
    {
      v5 = 1 << v2;
      if (!v2)
      {
        v5 = 2;
      }

      do
      {
        __dmb(0xBu);
        --v5;
      }

      while (v5);
      v6 = *(v3 + 8 * v2);
      __dmb(0xBu);
      result = tbb::internal::deallocate_via_handler_v3(v6, a2);
      __dmb(0xBu);
      *(v3 + 8 * v2) = 0;
    }

    ++v2;
  }

  while (v2 != 64);
  return result;
}

void sub_29A1B049C(uint64_t a1@<X0>, uint64_t a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_29A1B0794(a1, a2);
  v24 = 0;
  v25 = v8;
  v9 = &v25;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v24 + i) = byte_29B734F74[v11];
  }

  v12 = v24 | 1;
  sub_29A1B067C(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 8) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[8];
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && sub_29A1B0B38(a1 + 1, (v16 + 1), v14))
        {
          if (a3)
          {
            sub_29A1A8254(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v25 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = v16[8];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29A1B0718(a1 + 16, v12, a2);
      v14 = a3 + 8;
      v15 = v25;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v16;
LABEL_21:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

void sub_29A1B067C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29A1B07F8(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

uint64_t sub_29A1B0718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x48);
  sub_29A1B0AA4((v5 + 8), a3);
  *(v5 + 56) = *(a3 + 48);
  *(v5 + 64) = a2;
  *v5 = 0;
  return v5;
}

void sub_29A1B076C(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

unint64_t sub_29A1B0794(uint64_t a1, uint64_t a2)
{
  v3 = sub_29A12A708(&v7, a2);
  v4 = sub_29A12A708(&v6, a2 + 24);
  return bswap64(0x9E3779B97F4A7C55 * (v4 + ((v4 + v3 + (v4 + v3) * (v4 + v3)) >> 1)));
}

void sub_29A1B07F8(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29A1B07F8(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29A1B09D0(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}