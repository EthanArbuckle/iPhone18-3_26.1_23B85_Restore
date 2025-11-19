void *sub_29AF3EE5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20A0E58;
  return sub_29A18ECC8(a2, v2);
}

void sub_29AF3EE74(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29AF3F114(v1);

    operator delete(v1);
  }
}

unint64_t sub_29AF3EEDC(uint64_t a1, uint64_t *a2)
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
      v4 = v3 + 128;
      sub_29AF3EF54(&v7, v3);
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

uint64_t sub_29AF3EF54(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29ACAEF38(&v5, a2, (a2 + 24), (a2 + 56), (a2 + 88), (a2 + 104), (a2 + 112));
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

BOOL sub_29AF3EFE4(void *a1, uint64_t a2)
{
  if (a1[4] != *(a2 + 32) || !sub_29A18EAFC(a1, a2) || a1[3] != *(a2 + 24))
  {
    result = sub_29A18EAFC(a1, a2);
    if (!result)
    {
      return result;
    }

    if (*a1)
    {
      pxrInternal__aapl__pxrReserved__::GfFrustum::operator==();
    }
  }

  return 1;
}

uint64_t sub_29AF3F094(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AF3EE74(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AF3EE74(&v4);
  }

  return *a1;
}

void *sub_29AF3F0FC(__int128 **a1, void *a2)
{
  v3 = *a1;
  *a1 += 8;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void sub_29AF3F114(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = *a1 << 7;
        do
        {
          pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(v5);
          v5 = (v7 + 128);
          v6 -= 128;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete(v5 - 16);
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

uint64_t sub_29AF3F1A8(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::GfFrustum::GfFrustum(v5);
  sub_29AF3F438(a1);
  v6 = v5;
  sub_29AF3F4AC(a1, a2, &v6);
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(v5);
  return a1;
}

uint64_t sub_29AF3F23C@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, pxrInternal__aapl__pxrReserved__::GfFrustum *a3@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v13);
  if (sub_29AD92F98(&v13))
  {
    if ((v14 & 4) != 0)
    {
      v4 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(&v13);
    }

    else
    {
      v4 = v13;
    }

    sub_29A1340B0(a3, v4);
  }

  else if (sub_29AF3F7F4(&v13))
  {
    if ((v14 & 4) != 0)
    {
      v5 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(&v13);
    }

    else
    {
      v5 = v13;
    }

    v6 = *(v5 + 16);
    v10 = *v5;
    v11 = v6;
    v7 = *(v5 + 32);
    v12 = v7;
    if (v7)
    {
      v8 = *(&v11 + 1);
      if (!*(&v11 + 1))
      {
        v8 = (v7 - 1);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    if (v10)
    {
      sub_29A1340B0(a3, v7);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::GfFrustum::GfFrustum(a3);
    }

    sub_29AF3F114(&v10);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::GfFrustum::GfFrustum(a3);
  }

  return sub_29A186B14(&v13);
}

void sub_29AF3F364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF3F3A8(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 112) = *(a2 + 28);
    v7 = *(a1 + 120);
    if (v7)
    {
      operator delete(v7);
    }

    *(a1 + 120) = *(a2 + 15);
    *(a2 + 15) = 0;
  }

  return a1;
}

void sub_29AF3F438(uint64_t *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_29AF3F114(a1);
    }

    else
    {
      v4 = *a1;
      if (*a1)
      {
        v5 = a1[4];
        v6 = v4 << 7;
        do
        {
          pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(v5);
          v5 = (v7 + 128);
          v6 -= 128;
        }

        while (v6);
      }
    }

    *a1 = 0;
  }
}

void sub_29AF3F4AC(uint64_t *a1, unint64_t a2, __int128 **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v13 = &v7[8 * a2];
            v14 = (v3 << 7) - (a2 << 7);
            do
            {
              pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(v13);
              v13 = (v15 + 128);
              v14 -= 128;
            }

            while (v14);
LABEL_23:
            if (v7 != a1[4])
            {
              sub_29AF3F114(a1);
              a1[4] = v7;
            }

            *a1 = a2;
            return;
          }

          v9 = a1[4];
          if (*(v9 - 1) < a2)
          {
            v7 = sub_29AF3F630(a1, a2);
            sub_29AF3F754(v9, &v9[8 * v3], v7);
          }

          goto LABEL_19;
        }

        v7 = a1[4];
      }

      v11 = v7;
      if (v3 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a1;
      }

      v7 = sub_29AF3F630(a1, a2);
      sub_29AF3F754(v11, &v11[8 * v12], v7);
      if (v3 >= a2)
      {
        goto LABEL_23;
      }

LABEL_19:
      v10 = &v7[8 * v3];
      goto LABEL_20;
    }

    if ((a2 << 7) / a2 == 128)
    {
      v7 = sub_29AF3F630(a1, a2);
      v10 = v7;
LABEL_20:
      sub_29AF3F6C0(a3, v10, &v7[8 * a2]);
      goto LABEL_23;
    }
  }

  sub_29AF3F438(a1);
}

void *sub_29AF3F630(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfFrustum>::_AllocateNew(size_t) [ELEM = pxrInternal__aapl__pxrReserved__::GfFrustum]");
  if (HIBYTE(a2))
  {
    v3 = -1;
  }

  else
  {
    v3 = (a2 << 7) | 0x10;
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

__int128 **sub_29AF3F6C0(__int128 **result, __int128 **a2, __int128 **a3)
{
  if (a2 != a3)
  {
    v4 = 0;
    v5 = *result;
    result = a2;
    do
    {
      result = (sub_29A1340B0(result, v5) + 128);
      v4 -= 128;
    }

    while (result != a3);
  }

  return result;
}

void sub_29AF3F718(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(v1);
      v1 = (v1 + 128);
      v3 -= 128;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t sub_29AF3F754(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v4 = a1;
  v5 = 0;
  result = a3;
  do
  {
    v7 = sub_29A1340B0(result, v4);
    v4 += 8;
    result = v7 + 128;
    v5 -= 128;
  }

  while (v4 != a2);
  return result;
}

void sub_29AF3F7B8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(v1);
      v1 = (v1 + 128);
      v3 -= 128;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t sub_29AF3F7F4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B721DD1 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20A0F10);
}

void sub_29AF3F880(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2CBE28();
    }
  }
}

void *sub_29AF3F8C4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0F38;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3F91C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3F938(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3F960(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3F990(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0F88))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3FA54(void *a1, void *a2)
{
  *a1 = &unk_2A20A0FB0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3FB08(void *a1)
{
  *a1 = &unk_2A20A0FB0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3FB84(void *a1)
{
  *a1 = &unk_2A20A0FB0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3FC04(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20A1008;
  sub_29A18ECC8(a2, v3);
  sub_29AF40198(v3);
}

void sub_29AF3FC78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF40198(va);
  _Unwind_Resume(a1);
}

void sub_29AF3FC98(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29AF40238(a2, *(*(a1 + 16) + 16));
  v4 = *(a1 + 16);
  v7 = *v4;
  v5 = v4 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    v8 = 0;
    do
    {
      sub_29AF402D4((a1 + 8), (a1 + 32), &v17);
      sub_29AF408DC(a2);
      v9 = *(a2 + 32) + 24 * v8;
      v10 = v9 + 8;
      sub_29A082B84(v9, *(v9 + 8));
      v11 = v19;
      *v9 = v17;
      v12 = v18;
      *(v9 + 8) = v18;
      *(v9 + 16) = v11;
      if (v11)
      {
        v13 = 0;
        v12[2] = v10;
        v17 = &v18;
        v18 = 0;
        v19 = 0;
      }

      else
      {
        *v9 = v10;
        v13 = v18;
      }

      sub_29A082B84(&v17, v13);
      v14 = v6[1];
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
          v15 = v6[2];
          v16 = *v15 == v6;
          v6 = v15;
        }

        while (!v16);
      }

      ++v8;
      v6 = v15;
    }

    while (v15 != v5);
  }
}

uint64_t *sub_29AF3FDF0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AF3FE10(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AF3FF88(a1);
}

void *sub_29AF3FE74(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AF40180);
  return a2;
}

void *sub_29AF3FF70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20A1008;
  return sub_29A18ECC8(a2, v2);
}

void sub_29AF3FF88(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29AF40198(v1);

    operator delete(v1);
  }
}

unint64_t sub_29AF3FFF0(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = a2[4];
    v4 = *a2;
    do
    {
      --v4;
      v5 = (v3 + 24);
      v6 = pxrInternal__aapl__pxrReserved__::GfMultiInterval::Hash(v3);
      v2 = v6 + ((v6 + v2 + (v6 + v2) * (v6 + v2)) >> 1);
      v3 = v5;
    }

    while (v4);
    v7 = 0x9E3779B97F4A7C55 * v2;
  }

  else
  {
    v7 = 0;
  }

  return bswap64(v7);
}

BOOL sub_29AF40064(void *a1, uint64_t a2)
{
  if (a1[4] != *(a2 + 32) || !sub_29A18EAFC(a1, a2) || a1[3] != *(a2 + 24))
  {
    result = sub_29A18EAFC(a1, a2);
    if (!result)
    {
      return result;
    }

    if (*a1)
    {
      pxrInternal__aapl__pxrReserved__::GfMultiInterval::operator==();
    }
  }

  return 1;
}

uint64_t sub_29AF40118(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AF3FF88(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AF3FF88(&v4);
  }

  return *a1;
}

void *sub_29AF40180(void **a1, void *a2)
{
  v3 = *a1;
  *a1 += 3;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void sub_29AF40198(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 24 * *a1;
        do
        {
          sub_29A082B84(v5, *(v5 + 8));
          v5 += 24;
          v6 -= 24;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

uint64_t sub_29AF40238(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  sub_29AF40450(a1);
  v7 = &v5;
  sub_29AF404D8(a1, a2, &v7);
  sub_29A082B84(&v5, v6[0]);
  return a1;
}

void sub_29AF402B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_29A082B84(&a9, a10);
  sub_29AF40198(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF402D4@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, void *a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v12);
  if (sub_29AD932C8(&v12))
  {
    if ((v13 & 4) != 0)
    {
      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
    }

    sub_29A2CB9DC(a3);
  }

  if (sub_29AF40850(&v12))
  {
    if ((v13 & 4) != 0)
    {
      v4 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
    }

    else
    {
      v4 = v12;
    }

    v5 = *(v4 + 16);
    v9 = *v4;
    v10 = v5;
    v6 = *(v4 + 32);
    v11 = v6;
    if (v6)
    {
      v7 = *(&v10 + 1);
      if (!*(&v10 + 1))
      {
        v7 = (v6 - 16);
      }

      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      sub_29A2CB9DC(a3);
    }

    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
    sub_29AF40198(&v9);
  }

  else
  {
    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
  }

  return sub_29A186B14(&v12);
}

void sub_29AF4040C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29AF40450(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_29AF40198(a1);
    }

    else if (*a1)
    {
      v4 = a1[4];
      v5 = 24 * *a1;
      do
      {
        sub_29A082B84(v4, *(v4 + 8));
        v4 += 24;
        v5 -= 24;
      }

      while (v5);
    }

    *a1 = 0;
  }
}

void sub_29AF404D8(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v13 = &v7[3 * a2];
            v14 = 24 * v3 - 24 * a2;
            do
            {
              sub_29A082B84(v13, *(v13 + 8));
              v13 += 24;
              v14 -= 24;
            }

            while (v14);
LABEL_23:
            if (v7 != a1[4])
            {
              sub_29AF40198(a1);
              a1[4] = v7;
            }

            *a1 = a2;
            return;
          }

          v9 = a1[4];
          if (*(v9 - 8) < a2)
          {
            v7 = sub_29AF4067C(a1, a2);
            sub_29AF407AC(v9, v9 + 24 * v3, v7);
          }

          goto LABEL_19;
        }

        v7 = a1[4];
      }

      v11 = v7;
      if (v3 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a1;
      }

      v7 = sub_29AF4067C(a1, a2);
      sub_29AF407AC(v11, v11 + 24 * v12, v7);
      if (v3 >= a2)
      {
        goto LABEL_23;
      }

LABEL_19:
      v10 = &v7[3 * v3];
      goto LABEL_20;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = sub_29AF4067C(a1, a2);
      v10 = v7;
LABEL_20:
      sub_29AF40714(a3, v10, &v7[3 * a2]);
      goto LABEL_23;
    }
  }

  sub_29AF40450(a1);
}

void *sub_29AF4067C(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMultiInterval>::_AllocateNew(size_t) [ELEM = pxrInternal__aapl__pxrReserved__::GfMultiInterval]");
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

void sub_29AF40714(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    sub_29A2CB9DC(a2);
  }
}

void sub_29AF4076C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_29A082B84(v1, *(v1 + 8));
      v1 += 24;
      v3 -= 24;
    }

    while (v3);
  }

  __cxa_rethrow();
}

void *sub_29AF407AC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    sub_29A2CB9DC(a3);
  }

  return a3;
}

void sub_29AF40810(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_29A082B84(v1, *(v1 + 8));
      v1 += 24;
      v3 -= 24;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t sub_29AF40850(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B72213BLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20A10C0);
}

void sub_29AF408DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2CBE90();
    }
  }
}

void *sub_29AF40920(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A10E8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF40978(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF40994(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF409BC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF409EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A1138))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29AF40AB0()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "UsdNiPropagatedPrototypes", 0);
  v1 = *v0;
  v5 = v1;
  if ((v1 & 7) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v2;
    }
  }

  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  sub_29A12EF7C(v0 + 1, &v5, &v6, 1uLL);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = 0;
  atomic_compare_exchange_strong(&qword_2A1751588, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A1751588);
  }

  return v0;
}

void sub_29AF40BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF40C4C(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = result;
    do
    {
      v5 = a2[1];
      v6 = a2;
      if (v5)
      {
        do
        {
          v7 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v6[2];
          v8 = *v7 == v6;
          v6 = v7;
        }

        while (!v8);
      }

      result = sub_29A3AC760(v4, a2 + 4);
      a2 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType *sub_29AF40CCC(atomic_ullong *a1)
{
  result = sub_29AF40D14();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType::~UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType *sub_29AF40D14()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AF40D58(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AF40D58(a1, *a2);
    sub_29AF40D58(a1, a2[1]);
    sub_29AF40DB4((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29AF40DB4(uint64_t a1)
{
  sub_29AF40E00(a1 + 8, *(a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void sub_29AF40E00(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AF40E00(a1, *a2);
    sub_29AF40E00(a1, a2[1]);
    sub_29AC6B960((a2 + 5), a2[6]);
    v4 = a2[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void sub_29AF40E78(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AF40E78(a1, *a2);
    sub_29AF40E78(a1, a2[1]);
    sub_29AF40ED4((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29AF40ED4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void sub_29AF40F58(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AF40F58(a1, *a2);
    sub_29AF40F58(a1, a2[1]);
    sub_29AF40FB4((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29AF40FB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void *sub_29AF41000(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 8), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29AF4105C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AF41074(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_29A153CF4(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29AF4110C(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29AF4110C@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x38uLL);
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v7 = **a2;
  result[4] = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[4] &= 0xFFFFFFFFFFFFFFF8;
  }

  result[5] = 0;
  result[6] = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29AF411A8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20A1160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AF411FC(void *a1, void *a2)
{
  *a1 = &unk_2A20A11B0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF412C8(uint64_t a1)
{
  *a1 = &unk_2A20A11B0;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  sub_29ABD4DDC();
}

void sub_29AF41354(uint64_t a1)
{
  *a1 = &unk_2A20A11B0;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  sub_29ABD4DDC();
}

void *sub_29AF413E4@<X0>(pxrInternal__aapl__pxrReserved__::HdInstancedBySchema *a1@<X0>, void *a2@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetSchemaToken(a1);
  v4 = *SchemaToken;
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  v6 = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetSchemaToken(SchemaToken);
  v7 = *v6;
  v13 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(v6);
  v14 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v12, &v15, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v12 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF41520(_Unwind_Exception *a1)
{
  v2 = 16;
  while (1)
  {
    v3 = *(v1 + v2);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v2 -= 8;
    if (v2 == -8)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AF41570(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetSchemaToken(a1);
  if ((*SchemaToken ^ *a2) > 7)
  {
    v13 = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetSchemaToken(SchemaToken);
    if ((*v13 ^ *a2) <= 7)
    {
      sub_29AF41728((a1 + 8));
    }

    if ((*pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(v13) ^ *a2) <= 7)
    {
      sub_29AF417AC((a1 + 8));
    }

    goto LABEL_18;
  }

  v7 = sub_29AC1199C((a1 + 8));
  (*(*v7 + 16))(&v14);
  pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetFromParent(&v14 + 1, &v16);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  IsDefined = pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v16);
  v9 = IsDefined;
  if (IsDefined)
  {
    pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v16, &v14);
    *a3 = v14;
  }

  v10 = v17;
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (!v9)
  {
    if (*(a1 + 48) == 1)
    {
      InstancedByDataSource = pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetInstancedByDataSource(v10);
      v12 = InstancedByDataSource[1];
      *a3 = *InstancedByDataSource;
      *(a3 + 8) = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      return;
    }

LABEL_18:
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

void sub_29AF416F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF41820(void *a1, void *a2)
{
  *a1 = &unk_2A20A11F8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF418A0(uint64_t a1)
{
  *a1 = &unk_2A20A11F8;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  sub_29ABD4DDC();
}

void sub_29AF41918(uint64_t a1)
{
  *a1 = &unk_2A20A11F8;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  sub_29ABD4DDC();
}

void *sub_29AF41994@<X0>(void *a1@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  v3 = *(v2 + 2);
  v13 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  v5 = *(v4 + 1);
  v14 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  v7 = *(v6 + 4);
  v15 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  v9 = *(v8 + 3);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v13, &v17, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v12 = *(&v13 + i);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF41B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  while (1)
  {
    v12 = *(v10 - 1);
    v10 -= 8;
    v11 = v12;
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v10 == &a10)
    {
      _Unwind_Resume(a1);
    }
  }
}

_DWORD *sub_29AF41BBC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  if ((*(v6 + 2) ^ *a2) <= 7)
  {
    result = sub_29AF41DF4((a1 + 24), v10);
LABEL_5:
    *a3 = v10[0];
    return result;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  if ((*(v8 + 1) ^ *a2) > 7)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    if (!v9)
    {
      v9 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    }

    if ((*(v9 + 4) ^ *a2) <= 7)
    {
      result = sub_29AF41E6C((a1 + 24), v10);
      goto LABEL_5;
    }

    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    if (!result)
    {
      result = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    }

    if ((*(result + 3) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_ComputeMask((a1 + 8), (a1 + 24), v10);
      sub_29ACA7950(v10, &v11);
      *a3 = v11;
      v11 = 0uLL;
      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
    }

    *a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    sub_29A1E21F4(&v12, (a1 + 16));
    sub_29A1E2240(&v13, (a1 + 20));
    sub_29ABE9CEC(v10, &v12, 1);
    sub_29ABE9C5C(v10, &v11);
    *a3 = v11;
    v11 = 0uLL;
    sub_29ABED558(v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
    return sub_29A1DE3A4(&v12);
  }

  return result;
}

void sub_29AF41D98(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF41DF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v6 = *a1;
  v5 = a1[1];
  *v4 = &unk_2A20A1240;
  v4[1] = v6;
  v4[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29AF4201C(a2, v4);
}

void *sub_29AF41E6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v6 = *a1;
  v5 = a1[1];
  *v4 = &unk_2A20A1300;
  v4[1] = v6;
  v4[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29AF425A8(a2, v4);
}

void sub_29AF41EE4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A1240;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF41F40(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A1240;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AF41FA8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_Range(*(*(a1 + 8) + 16), v3);
  sub_29ABF4FA0(v3, &v4);
  *a2 = v4;
  v4 = 0uLL;
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void *sub_29AF4201C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A1288;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF42074(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF42090(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF420B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF420E8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A12D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF42128(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A1300;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF42184(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A1300;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AF421E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2076AF0;
  sub_29A18ECC8(a2, v3);
  sub_29ABED558(v3);
}

void sub_29AF42258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABED558(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF4228C(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29AF422D8(a1, a2, a3);
  return a1;
}

void sub_29AF422D8(unint64_t *a1, void *a2, void *a3)
{
  v4 = a2;
  v11 = a3;
  v12 = a2;
  sub_29ABF458C(a1);
  if (v4 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = v4[1];
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
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      ++v6;
      v4 = v8;
    }

    while (v8 != a3);
  }

  v10[0] = &v12;
  v10[1] = &v11;
  sub_29AF42380(a1, v6, v10);
}

void sub_29AF42380(unint64_t *a1, unint64_t a2, void ***a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v13 = &v7[a2];
            v14 = 8 * v3 - 8 * a2;
            do
            {
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v13 + 1);
              sub_29A1DE3A4(v13);
              v13 += 2;
              v14 -= 8;
            }

            while (v14);
LABEL_23:
            if (v7 != a1[4])
            {
              sub_29ABED558(a1);
              a1[4] = v7;
            }

            *a1 = a2;
            return;
          }

          v9 = a1[4];
          if (*(v9 - 1) < a2)
          {
            v7 = sub_29ABF47AC(a1, a2);
            sub_29A7D8ED8(v9, &v9[2 * v3], v7);
          }

          goto LABEL_19;
        }

        v7 = a1[4];
      }

      v11 = v7;
      if (v3 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a1;
      }

      v7 = sub_29ABF47AC(a1, a2);
      sub_29A7D8ED8(v11, &v11[2 * v12], v7);
      if (v3 >= a2)
      {
        goto LABEL_23;
      }

LABEL_19:
      v10 = &v7[v3];
      goto LABEL_20;
    }

    if (8 * a2 / a2 == 8)
    {
      v10 = sub_29ABF47AC(a1, a2);
      v7 = v10;
LABEL_20:
      sub_29AF42518(**a3, *a3[1], v10);
      goto LABEL_23;
    }
  }

  sub_29ABF458C(a1);
}

_DWORD *sub_29AF42518(void *a1, void *a2, _DWORD *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_29A1E21F4(a3, v5 + 7);
      sub_29A1E2240(a3 + 1, v5 + 8);
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      a3 += 2;
      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

void *sub_29AF425A8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A1350;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF42600(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF4261C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF42644(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF42674(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A13A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF426B4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A13C8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF4270C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF42728(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF42750(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF42780(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A1418))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF427C0(void *a1, void *a2)
{
  *a1 = &unk_2A20A1440;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF4283C(void *a1)
{
  *a1 = &unk_2A20A1440;
  v1 = a1[3];
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29ABD4DDC();
}

void sub_29AF428A0(void *a1)
{
  *a1 = &unk_2A20A1440;
  v1 = a1[3];
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29ABD4DDC();
}

void *sub_29AF42908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*(*(a1 + 16) + 16))
  {
    pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetConstantPrimvarNames((a1 + 8), &v5);
    sub_29A2F7B20(a2);
    *a2 = v5;
    *(a2 + 16) = v6;
    v6 = 0;
    v5 = 0uLL;
    v7 = &v5;
    sub_29A124AB0(&v7);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  if (!v3)
  {
    v3 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  }

  return sub_29A1D8028(a2, v3 + 6);
}

pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType *sub_29AF429D0@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X1>, void *a3@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  if (!result)
  {
    result = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  }

  if ((*(result + 6) ^ *a2) <= 7)
  {
    sub_29AF42A9C((a1 + 8));
  }

  v7 = *(a1 + 16);
  if (v7[2])
  {
    result = pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_IsConstantPrimvar((a1 + 8), *v7 + 28, a2);
    if (result)
    {
      sub_29AF42B10((a1 + 8));
    }
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_29AF42B94(void *a1, void *a2)
{
  *a1 = &unk_2A20A1488;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF42C10(void *a1)
{
  *a1 = &unk_2A20A1488;
  v1 = a1[3];
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29ABD4DDC();
}

void sub_29AF42C74(void *a1)
{
  *a1 = &unk_2A20A1488;
  v1 = a1[3];
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29ABD4DDC();
}

void *sub_29AF42CDC@<X0>(void *a1@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v3 = *v2;
  v12 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v4;
    }
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v6 = *(v5 + 3);
  v13 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v8 = *(v7 + 4);
  v14 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v12, &v15, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v12 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF42E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v11 = *--v9;
    v10 = v11;
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v9 == &a9)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AF42EB0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  if ((*(v6 + 3) ^ *a2) > 7)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v8)
    {
      v8 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    if ((*v8 ^ *a2) <= 7)
    {
      sub_29AF4302C((a1 + 8));
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A14F9EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F9EB8))
    {
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v9)
      {
        v9 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      sub_29ABCCFA4(v9 + 11, &v10);
      xmmword_2A14F9EA8 = v10;
      __cxa_atexit(sub_29AD26C2C, &xmmword_2A14F9EA8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A14F9EB8);
    }

    v7 = *(&xmmword_2A14F9EA8 + 1);
    *a3 = xmmword_2A14F9EA8;
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_29AF430A0(void *a1, void *a2)
{
  *a1 = &unk_2A20A14D0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF4311C(void *a1)
{
  *a1 = &unk_2A20A14D0;
  v1 = a1[3];
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29ABD4DDC();
}

void sub_29AF43180(void *a1)
{
  *a1 = &unk_2A20A14D0;
  v1 = a1[3];
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29ABD4DDC();
}

void sub_29AF431E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043810;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

uint64_t sub_29AF4327C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A197D6C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimTransform((a1 + 8), v20);
      result = sub_29A198240(a2);
      v10 = (*(a2 + 32) + (v9 << 7));
      v11 = v20[0];
      v12 = v20[1];
      v13 = v20[3];
      v10[2] = v20[2];
      v10[3] = v13;
      v14 = v20[7];
      v16 = v20[4];
      v15 = v20[5];
      v10[6] = v20[6];
      v10[7] = v14;
      v10[4] = v16;
      v10[5] = v15;
      *v10 = v11;
      v10[1] = v12;
      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v19 = *v18 == v7;
          v7 = v18;
        }

        while (!v19);
      }

      ++v9;
      v7 = v18;
    }

    while (v18 != v6);
  }

  return result;
}

void *sub_29AF43370(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A1520;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF433C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF433E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF4340C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF4343C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A1570))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF4347C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A1598;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF434D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF434F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF43518(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF43548(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A15E8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF43588(void *a1, void *a2)
{
  *a1 = &unk_2A20A1610;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF43608(void *a1)
{
  *a1 = &unk_2A20A1610;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF43684(void *a1)
{
  *a1 = &unk_2A20A1610;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void *sub_29AF43704@<X0>(void *a1@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v3 = *v2;
  v12 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v4;
    }
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v6 = *(v5 + 3);
  v13 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v8 = *(v7 + 4);
  v14 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v12, &v15, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v12 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF43884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v11 = *--v9;
    v10 = v11;
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v9 == &a9)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AF438D8(uint64_t a1@<X0>, atomic_uint **a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  if ((*v6 ^ *a2) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v7)
    {
      v7 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    if ((*(v7 + 3) ^ *a2) > 7)
    {
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v9)
      {
        v9 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      if ((*(v9 + 4) ^ *a2) <= 7 && *(*(a1 + 16) + 16))
      {
        pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarSchema((a1 + 8), a2, &v11);
        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetRole(&v11, &v13);
        *a3 = v13;
        v13 = 0uLL;
        if (v12)
        {
          sub_29A014BEC(v12);
        }
      }

      else
      {
        *a3 = 0;
        a3[1] = 0;
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A14F9ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F9ED0))
      {
        v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v10)
        {
          v10 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        sub_29ABCCFA4(v10 + 11, &v13);
        xmmword_2A14F9EC0 = v13;
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A14F9EC0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A14F9ED0);
      }

      v8 = *(&xmmword_2A14F9EC0 + 1);
      *a3 = xmmword_2A14F9EC0;
      a3[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }
    }
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_MakePrimvarValueDataSource((a1 + 8), a1 + 16, (a1 + 32), a3);
  }
}

void *sub_29AF43AEC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A1658;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF43B44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF43B60(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF43B88(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF43BB8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A16A8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF43BF8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A16D0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF43C50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF43C6C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF43C94(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF43CC4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A1720))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF43D04(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A1748;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF43D5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF43D78(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF43DA0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF43DD0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A1798))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29AF43E10(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A38932C(a1, &v10);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x40uLL);
    v11 = *a4;
    sub_29AF43EA4((v7 + 4), &v11);
    sub_29A00B204(a1, v10, v8, v7);
  }

  return v7;
}

uint64_t sub_29AF43EA4(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 12));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t sub_29AF43F04(uint64_t **a1)
{
  v2 = sub_29A55CDFC(a1);
  if (a1 + 1 == v2)
  {
    return 0;
  }

  v3 = v2;
  sub_29A03AFE8(a1, v2);
  sub_29AF40FB4((v3 + 4));
  operator delete(v3);
  return 1;
}

uint64_t *sub_29AF43F60(uint64_t **a1, uint64_t a2)
{
  v3 = sub_29A03AFE8(a1, a2);
  sub_29AC6B960(a2 + 40, *(a2 + 48));
  v4 = *(a2 + 32);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(a2);
  return v3;
}

void *sub_29AF43FB8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 8), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29AF44014(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AF4402C(uint64_t a1)
{
  *a1 = &unk_2A20A17C0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29B2A517C(a1);
  return a1;
}

void sub_29AF4407C(uint64_t a1)
{
  *a1 = &unk_2A20A17C0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29B2CBF90(a1);
}

void sub_29AF440D0(void *a1)
{
  sub_29AF441C0(a1 + 8);

  operator delete(a1);
}

uint64_t sub_29AF4410C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_29B2CBD40(a1 + 8);
  if (v5 & 1 | result)
  {
    sub_29AF441F4(a1 + 8);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_29AF44174(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A1830))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29AF441F4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2CC000();
}

void *sub_29AF44244(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A1850;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF4429C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF442B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF442E0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF44310(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A18A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF44370(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20A18C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AF443C4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 8), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29AF44420(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AF44574(uint64_t *a1)
{
  v1 = sub_29AC1199C(a1);
  (*(*v1 + 16))(&v6);
  v8 = v7;
  v7 = 0uLL;
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetFromParent(&v8, &v6);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetIsNiPrototype(&v6, &v4);
  if (v4)
  {
    v2 = (*(*v4 + 32))(v4, 0.0);
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }

  return v2;
}

void sub_29AF4466C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  v15 = *(v13 - 24);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypePruningSceneIndex::GetPrim@<X0>(pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypePruningSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  result = sub_29AF44744(this + 18, a2);
  if (result)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v6 = *(*sub_29AC1199C(this + 14) + 16);

    return v6();
  }

  return result;
}

BOOL sub_29AF44744(void *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  v2 = a1 + 1;
  if (a1 + 1 == *a1)
  {
    return 0;
  }

  v3 = *v2;
  if (*v2)
  {
    do
    {
      v4 = v3;
      v3 = v3[1];
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

  return pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, (v4 + 28));
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypePruningSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypePruningSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  if (*(this + 20))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(a2))
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      v6 = sub_29AC1199C(this + 14);
      v7 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v6);
      (*(*v6 + 24))(v9, v6, v7);
      if (v9[0] != v9[1])
      {
        std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__count_unique<pxrInternal__aapl__pxrReserved__::SdfPath>();
      }

      v10 = v9;
      sub_29A1E234C(&v10);
      return;
    }

    if (sub_29AF44744(this + 18, a2))
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return;
    }
  }

  v8 = *(*sub_29AC1199C(this + 14) + 24);

  v8();
}

void sub_29AF4497C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

void **pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypePruningSceneIndex::_PrimsAdded(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v18[0] = &unk_2A20A1990;
  v18[1] = a1;
  v19 = v18;
  v20 = a3;
  v21 = 0;
  v23 = 0x1000000000;
  if (*(a3 + 256))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (!v19)
      {
        goto LABEL_31;
      }

      if (*(a3 + 260) >= 0x11u)
      {
        v7 = *a3;
      }

      else
      {
        v7 = a3;
      }

      v8 = (*(*v19 + 48))(v19, v7 + v5);
      v9 = *(a3 + 256);
      if ((v8 & 1) == 0)
      {
        break;
      }

      ++v6;
      v5 += 16;
    }

    while (v6 < v9);
    if (v6 != v9)
    {
      v21 = 1;
      v10 = v20;
      if (HIDWORD(v23) >= 0x11)
      {
        v11 = v22[0];
      }

      else
      {
        v11 = v22;
      }

      if (*(v20 + 260) >= 0x11u)
      {
        v10 = *v20;
      }

      sub_29AC3B510(v22, v11, v10, v10 + 16 * v6);
      v12 = v6 + 1;
      if (v6 + 1 < *(v20 + 256))
      {
        v13 = 16 * v6 + 16;
        while (v19)
        {
          if (*(a3 + 260) >= 0x11u)
          {
            v14 = *a3;
          }

          else
          {
            v14 = a3;
          }

          if ((*(*v19 + 48))(v19, v14 + v13))
          {
            if (*(a3 + 260) >= 0x11u)
            {
              v15 = *a3;
            }

            else
            {
              v15 = a3;
            }

            sub_29AC50374(v22, v15 + v13);
          }

          ++v12;
          v13 += 16;
          if (v12 >= *(v20 + 256))
          {
            goto LABEL_27;
          }
        }

LABEL_31:
        sub_29A0DDCB0();
      }
    }
  }

LABEL_27:
  sub_29A346EB0(v18);
  if (v21)
  {
    v16 = v22;
  }

  else
  {
    v16 = v20;
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, v16);
  return sub_29AC263E4(v22);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypePruningSceneIndex::_PrimsDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v26 = *MEMORY[0x29EDCA608];
  if (v3[20])
  {
    v20[0] = &unk_2A20A1A10;
    v20[1] = v3;
    v21 = v20;
    v22 = v4;
    v23 = 0;
    v25 = 0x1000000000;
    if (*(v4 + 7424))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (!v21)
        {
          goto LABEL_35;
        }

        if (*(v5 + 7428) >= 0x11u)
        {
          v9 = *v5;
        }

        else
        {
          v9 = v5;
        }

        v10 = (*(*v21 + 48))(v21, v9 + v7);
        v11 = *(v5 + 7424);
        if ((v10 & 1) == 0)
        {
          break;
        }

        ++v8;
        v7 += 464;
      }

      while (v8 < v11);
      if (v8 != v11)
      {
        v23 = 1;
        v12 = v22;
        if (HIDWORD(v25) >= 0x11)
        {
          v13 = v24[0];
        }

        else
        {
          v13 = v24;
        }

        if (v22[1857] >= 0x11)
        {
          v12 = *v22;
        }

        sub_29AC12278(v24, v13, v12, &v12[116 * v8]);
        v14 = v8 + 1;
        if (v8 + 1 < v22[1856])
        {
          v15 = 464 * v8 + 464;
          while (v21)
          {
            if (*(v5 + 7428) >= 0x11u)
            {
              v16 = *v5;
            }

            else
            {
              v16 = v5;
            }

            if ((*(*v21 + 48))(v21, v16 + v15))
            {
              if (*(v5 + 7428) >= 0x11u)
              {
                v17 = *v5;
              }

              else
              {
                v17 = v5;
              }

              sub_29AD9391C(v24, (v17 + v15));
            }

            ++v14;
            v15 += 464;
            if (v14 >= v22[1856])
            {
              goto LABEL_28;
            }
          }

LABEL_35:
          sub_29A0DDCB0();
        }
      }
    }

LABEL_28:
    sub_29A346EB0(v20);
    if (v23)
    {
      v18 = v24;
    }

    else
    {
      v18 = v22;
    }

    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v18);
    return sub_29ABD3844(v24);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v3, v4);
  }
}

void **pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypePruningSceneIndex::_PrimsRemoved(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v18[0] = &unk_2A20A1A90;
  v18[1] = a1;
  v19 = v18;
  v20 = a3;
  v21 = 0;
  v23 = 0x1000000000;
  if (a3[32])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (!v19)
      {
        goto LABEL_31;
      }

      if (a3[33] >= 0x11u)
      {
        v7 = *a3;
      }

      else
      {
        v7 = a3;
      }

      v8 = (*(*v19 + 48))(v19, &v7[v5]);
      v9 = a3[32];
      if ((v8 & 1) == 0)
      {
        break;
      }

      ++v6;
      v5 += 2;
    }

    while (v6 < v9);
    if (v6 != v9)
    {
      v21 = 1;
      v10 = v20;
      if (HIDWORD(v23) >= 0x11)
      {
        v11 = v22[0];
      }

      else
      {
        v11 = v22;
      }

      if (v20[33] >= 0x11u)
      {
        v10 = *v20;
      }

      sub_29AC5FD04(v22, v11, v10, &v10[2 * v6]);
      v12 = v6 + 1;
      if (v6 + 1 < v20[32])
      {
        v13 = 8 * v6 + 8;
        while (v19)
        {
          if (a3[33] >= 0x11u)
          {
            v14 = *a3;
          }

          else
          {
            v14 = a3;
          }

          if ((*(*v19 + 48))(v19, v14 + v13))
          {
            if (a3[33] >= 0x11u)
            {
              v15 = *a3;
            }

            else
            {
              v15 = a3;
            }

            sub_29AC4DAF8(v22, (v15 + v13));
          }

          ++v12;
          v13 += 8;
          if (v12 >= v20[32])
          {
            goto LABEL_27;
          }
        }

LABEL_31:
        sub_29A0DDCB0();
      }
    }
  }

LABEL_27:
  sub_29A346EB0(v18);
  if (v21)
  {
    v16 = v22;
  }

  else
  {
    v16 = v20;
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, v16);
  return sub_29AC26348(v22);
}

void sub_29AF450F0(uint64_t a1)
{
  sub_29A1E2AEC(a1 + 144, *(a1 + 152));
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 120), v2);
  sub_29ABD4DDC();
}

void sub_29AF4515C(uint64_t a1)
{
  sub_29A1E2AEC(a1 + 144, *(a1 + 152));
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 120), v2);
  sub_29ABD4DDC();
}

void *sub_29AF451D4(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A20A1990;
  result[1] = v3;
  return result;
}

uint64_t sub_29AF4521C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A20A1990;
  a2[1] = v2;
  return result;
}

BOOL sub_29AF45248(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  v3 = *(a1 + 8);
  if (pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(this) != 1)
  {
    return !sub_29AF44744((v3 + 144), this);
  }

  if (sub_29AF44574((v3 + 112)))
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  return 1;
}

uint64_t sub_29AF452BC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A19F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF45310(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A20A1A10;
  result[1] = v3;
  return result;
}

uint64_t sub_29AF45358(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A20A1A10;
  a2[1] = v2;
  return result;
}

uint64_t sub_29AF453A8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A1A70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF453FC(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A20A1A90;
  result[1] = v3;
  return result;
}

uint64_t sub_29AF45444(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A20A1A90;
  a2[1] = v2;
  return result;
}

BOOL sub_29AF45470(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  v3 = *(a1 + 8);
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(this))
  {
    v5 = *(v3 + 152);
    v4 = (v3 + 152);
    sub_29A1E2AEC((v4 - 1), v5);
    *v4 = 0;
    v4[1] = 0;
    result = 1;
    *(v4 - 1) = v4;
  }

  else if (pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(this) == 1)
  {
    return sub_29A389594((v3 + 144)) == 0;
  }

  else
  {
    return !sub_29AF44744((v3 + 144), this);
  }

  return result;
}

uint64_t sub_29AF454F4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A1AF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType::~UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "UsdNiInstancer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "UsdNiPrototype", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AF456BC(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_29AF458B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  __cxa_guard_abort(qword_2A17515F0);
  sub_29AC113C4(v10, v11);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetInstancerPath(pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex *this)
{
  if ((atomic_load_explicit(&qword_2A1751598, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1751598);
    if (v2)
    {
      v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v2);
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
      if (!v4)
      {
        v4 = sub_29AF40CCC(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v3, v4, dword_2A1751590);
      __cxa_atexit(sub_29A1DCEA8, dword_2A1751590, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1751598);
    }
  }

  return dword_2A1751590;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetPrototypePath(pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex *this)
{
  if ((atomic_load_explicit(&qword_2A17515A8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17515A8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetInstancerPath(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
      if (!v3)
      {
        v3 = sub_29AF40CCC(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(dword_2A1751590, (v3 + 8), dword_2A17515A0);
      __cxa_atexit(sub_29A1DCEA8, dword_2A17515A0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17515A8);
    }
  }

  return dword_2A17515A0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetInstancedByDataSource(pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex *this)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17515B8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17515B8);
    if (v2)
    {
      memset(v11, 0, sizeof(v11));
      pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetInstancerPath(v2);
      sub_29A1E21F4(&v15, dword_2A1751590);
      sub_29A1E2240(&v16, &dword_2A1751590[1]);
      sub_29ABE9CEC(v8, &v15, 1);
      sub_29ABE9C5C(v8, &v9);
      v10 = v9;
      v9 = 0uLL;
      v3 = pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::Builder::SetPaths(v11, &v10);
      pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetPrototypePath(v3);
      sub_29A1E21F4(&v13, dword_2A17515A0);
      sub_29A1E2240(&v14, &dword_2A17515A0[1]);
      sub_29ABE9CEC(v5, &v13, 1);
      sub_29ABE9C5C(v5, &v6);
      v7 = v6;
      v6 = 0uLL;
      v4 = pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::Builder::SetPrototypeRoots(v3, &v7);
      pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::Builder::Build(v4, &v12);
      xmmword_2A17515C0 = v12;
      v12 = 0uLL;
      __cxa_atexit(sub_29AD26C2C, &xmmword_2A17515C0, &dword_299FE7000);
      if (*(&v12 + 1))
      {
        sub_29A014BEC(*(&v12 + 1));
      }

      if (*(&v7 + 1))
      {
        sub_29A014BEC(*(&v7 + 1));
      }

      if (*(&v6 + 1))
      {
        sub_29A014BEC(*(&v6 + 1));
      }

      sub_29ABED558(v5);
      sub_29A1DCEA8(&v13);
      if (*(&v10 + 1))
      {
        sub_29A014BEC(*(&v10 + 1));
      }

      if (*(&v9 + 1))
      {
        sub_29A014BEC(*(&v9 + 1));
      }

      sub_29ABED558(v8);
      sub_29A1DCEA8(&v15);
      sub_29A95E544(v11);
      qword_2A17515B0 = &xmmword_2A17515C0;
      __cxa_guard_release(&qword_2A17515B8);
    }
  }

  return qword_2A17515B0;
}

void sub_29AF45CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(v6, a2);
  if (!a3[1])
  {
    return;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetFromParent(a3 + 1, &v20);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetNiPrototypePath(&v20, &v19);
  if (v19)
  {
    (*(*v19 + 32))(&v18, 0.0);
    v7 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
    sub_29A1DE3A4(&v18);
  }

  else
  {
    v7 = 0;
  }

  if (*(&v19 + 1))
  {
    sub_29A014BEC(*(&v19 + 1));
  }

  v8 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    sub_29A014BEC(*(&v20 + 1));
  }

  if (v7)
  {
    if ((*a3 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a3 = 0;
    return;
  }

  if (*(this + 144) != 1)
  {
    return;
  }

  pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetPrototypePath(v8);
  if (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, dword_2A17515A0))
  {
    return;
  }

  if ((atomic_load_explicit(&qword_2A17515D8, memory_order_acquire) & 1) == 0)
  {
    v14 = __cxa_guard_acquire(&qword_2A17515D8);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetPrototypePath(v14);
      qword_2A17515D0 = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(dword_2A17515A0);
      __cxa_guard_release(&qword_2A17515D8);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2) == qword_2A17515D0)
  {
    sub_29AD373C8(this + 152, (a3 + 1), &v20);
    v9 = v20;
    v20 = 0uLL;
    v10 = a3[2];
    *(a3 + 1) = v9;
    if (!v10)
    {
      return;
    }

    sub_29A014BEC(v10);
    v11 = *(&v20 + 1);
    if (!*(&v20 + 1))
    {
      return;
    }

LABEL_23:
    sub_29A014BEC(v11);
    return;
  }

  if ((atomic_load_explicit(qword_2A1751610, memory_order_acquire) & 1) == 0)
  {
    v15 = __cxa_guard_acquire(qword_2A1751610);
    if (v15)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetSchemaToken(v15);
      InstancedByDataSource = pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetInstancedByDataSource(SchemaToken);
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, InstancedByDataSource, &v20);
      xmmword_2A1751600 = v20;
      __cxa_atexit(sub_29ABE5FF4, &xmmword_2A1751600, &dword_299FE7000);
      __cxa_guard_release(qword_2A1751610);
    }
  }

  sub_29AF4606C((a3 + 1), &xmmword_2A1751600, &v19);
  v12 = v19;
  v19 = 0uLL;
  v13 = a3[2];
  *(a3 + 1) = v12;
  if (v13)
  {
    sub_29A014BEC(v13);
    v11 = *(&v19 + 1);
    if (*(&v19 + 1))
    {
      goto LABEL_23;
    }
  }
}

void sub_29AF45FFC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(qword_2A1751610);
  sub_29AC2B620(v1);
  _Unwind_Resume(a1);
}

void *sub_29AF4606C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, a1, a2);

  return sub_29ABDE960(a3, v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

void sub_29AF4615C(void *a1, const void *a2)
{
  *a1 = &unk_2A20A1B10;
  v3 = a1[20];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void sub_29AF461E8(void *a1, const void *a2)
{
  *a1 = &unk_2A20A1B10;
  v3 = a1[20];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void sub_29AF46278(_OWORD *a1@<X8>)
{
  v15 = 0u;
  v16 = 0u;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v12, 1.0);
  v2 = operator new(0x88uLL);
  v3 = v12[5];
  *(v2 + 72) = v12[4];
  *(v2 + 88) = v3;
  v4 = v12[7];
  *(v2 + 104) = v12[6];
  *(v2 + 120) = v4;
  v5 = v12[1];
  *(v2 + 8) = v12[0];
  *(v2 + 24) = v5;
  v6 = v12[3];
  *(v2 + 40) = v12[2];
  *v2 = &unk_2A207BA78;
  *(v2 + 56) = v6;
  sub_29AC29E70(&v13, v2);
  v14 = v13;
  v13 = 0uLL;
  v7 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetMatrix(&v15, &v14);
  v9 = 1;
  pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v9, &v10);
  v11 = v10;
  v10 = 0uLL;
  v8 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetResetXformStack(v7, &v11);
  pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::Build(v8, &v17);
  *a1 = v17;
  v17 = 0uLL;
  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  if (*(&v10 + 1))
  {
    sub_29A014BEC(*(&v10 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }
}

void sub_29AF463C4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 152);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(v1 + 136);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A95E544(v2 - 80);
  _Unwind_Resume(a1);
}

void sub_29AF467BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_PiPrototypeSceneIndex::_Populate(pxrInternal__aapl__pxrReserved__::UsdImaging_PiPrototypeSceneIndex *this)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::HdSceneIndexPrimView(v2, this + 112, this + 144);
  v1 = *pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::begin(v2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

BOOL sub_29AF46B8C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetFromParent((a1 + 8), &v7);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetSpecifier(&v7, &v5);
  if (v5)
  {
    (*(*v5 + 32))(&v4, 0.0);
    v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v1)
    {
      v1 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    v2 = (*(v1 + 10) ^ v4) < 8;
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v2 = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  return v2;
}

void sub_29AF46C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_PiPrototypeSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImaging_PiPrototypeSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(v6, a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, (this + 144)))
  {
    return;
  }

  if (sub_29AF46F8C(this + 23, a2))
  {
    if ((*a3 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a3 = 0;
    if (a3[1])
    {
      if ((atomic_load_explicit(&qword_2A1751630, memory_order_acquire) & 1) == 0)
      {
        v11 = __cxa_guard_acquire(&qword_2A1751630);
        if (v11)
        {
          SchemaToken = pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetSchemaToken(v11);
          v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
          if (!v13)
          {
            v13 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
          }

          sub_29ABDD064(&v14);
          v15 = v14;
          v14 = 0uLL;
          pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v13 + 6, &v15, &v16);
          v17 = v16;
          v16 = 0uLL;
          pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v17, &v18);
          xmmword_2A1751620 = v18;
          v18 = 0uLL;
          if (*(&v17 + 1))
          {
            sub_29A014BEC(*(&v17 + 1));
          }

          if (*(&v16 + 1))
          {
            sub_29A014BEC(*(&v16 + 1));
          }

          if (*(&v15 + 1))
          {
            sub_29A014BEC(*(&v15 + 1));
          }

          if (*(&v14 + 1))
          {
            sub_29A014BEC(*(&v14 + 1));
          }

          __cxa_atexit(sub_29ABE5FF4, &xmmword_2A1751620, &dword_299FE7000);
          __cxa_guard_release(&qword_2A1751630);
        }
      }

      sub_29AD373C8(&xmmword_2A1751620, (a3 + 1), &v18);
      goto LABEL_16;
    }
  }

  else if (a3[1])
  {
    if (*(this + 19))
    {
      sub_29AF4606C((a3 + 1), this + 152, &v18);
      v7 = v18;
      v18 = 0uLL;
      v8 = a3[2];
      *(a3 + 1) = v7;
      if (v8)
      {
        sub_29A014BEC(v8);
        if (*(&v18 + 1))
        {
          sub_29A014BEC(*(&v18 + 1));
        }
      }
    }

    if (*(this + 21) && *a2 == *(this + 18))
    {
      sub_29AD373C8(this + 168, (a3 + 1), &v18);
LABEL_16:
      v9 = v18;
      v18 = 0uLL;
      v10 = a3[2];
      *(a3 + 1) = v9;
      if (v10)
      {
        sub_29A014BEC(v10);
        if (*(&v18 + 1))
        {
          sub_29A014BEC(*(&v18 + 1));
        }
      }
    }
  }
}

void sub_29AF46F14(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2A1751630);
  sub_29AC2B620(v1);
  _Unwind_Resume(a1);
}

BOOL sub_29AF46F8C(void *a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, &v6);
  v3 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  if (v3 && !sub_29A328A44(a1, &v6))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v6, &v5);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  return v3;
}

void sub_29AF47044(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_PiPrototypeSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImaging_PiPrototypeSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

void *pxrInternal__aapl__pxrReserved__::UsdImaging_PiPrototypeSceneIndex::_PrimsAdded(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x29EDCA608];
  v5 = sub_29AF47640(v29);
  v6 = *(a3 + 256);
  v32[0] = v29;
  v32[1] = a3;
  v32[2] = a1;
  if (v6)
  {
    if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v5))
    {
      LODWORD(v25[0]) = 0;
      v25[16] = 65539;
      v26 = 55;
      tbb::task_group_context::init(v25, v7, v8, v9);
      v24[0] = v25;
      v10 = tbb::internal::allocate_root_with_context_proxy::allocate(v24, 0x38uLL);
      *(v10 - 11) = 1;
      *v10 = &unk_2A20A1CF8;
      *(v10 + 8) = v6;
      *(v10 + 16) = xmmword_29B724390;
      *(v10 + 32) = v32;
      initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v10);
      *(v10 + 48) = 0;
      *(v10 + 52) = 5;
      *(v10 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
      (*(**(v10 - 40) + 16))(*(v10 - 40), v10, v10 - 8);
      tbb::task_group_context::~task_group_context(v25);
    }

    else
    {
      sub_29AF47E40(v32, 0, v6);
    }
  }

  v25[0] = v29;
  v25[1] = &v30;
  v25[2] = 0;
  v25[3] = 0;
  v12 = v31[2];
  __dmb(0xBu);
  v13 = tbb::internal::concurrent_vector_base_v3::internal_capacity(v31);
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v25[4] = &v30;
  v25[5] = v14;
  v25[6] = 0;
  sub_29AC6C67C(v25, v32);
  sub_29AC6C704(v25, v24);
  while (!sub_29AC6D4DC(v32, v24))
  {
    sub_29A43A86C((a1 + 23), v33, v33);
    sub_29AC921BC(v32);
  }

  v15 = v25;
  sub_29AD12CB8(v25, a3);
  if (v28 >= 0x11)
  {
    v15 = v25[0];
  }

  v19 = v27;
  v23 = a1;
  LODWORD(v32[0]) = 0;
  v34 = 65539;
  v35 = 55;
  tbb::task_group_context::init(v32, v16, v17, v18);
  if (v19)
  {
    v24[0] = v32;
    v20 = tbb::internal::allocate_root_with_context_proxy::allocate(v24, 0x38uLL);
    *(v20 - 11) = 1;
    *v20 = &unk_2A20A1D40;
    *(v20 + 8) = &v15[2 * v19];
    *(v20 + 16) = v15;
    *(v20 + 24) = 1;
    *(v20 + 32) = &v23;
    v21 = tbb::internal::get_initial_auto_partitioner_divisor(v20);
    *(v20 + 48) = 0;
    *(v20 + 52) = 5;
    *(v20 + 40) = (v21 >> 1) & 0x7FFFFFFFFFFFFFFELL;
    (*(**(v20 - 40) + 16))(*(v20 - 40), v20, v20 - 8);
  }

  tbb::task_group_context::~task_group_context(v32);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, v25);
  sub_29AC263E4(v25);
  return sub_29AF478BC(v29);
}

void sub_29AF4739C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  tbb::internal::allocate_root_with_context_proxy::free(&a10, v60);
  tbb::task_group_context::~task_group_context(&a15);
  sub_29AF478BC(&a48);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImaging_PiPrototypeSceneIndex::_PrimsRemoved(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 128);
  if (*(a3 + 132) >= 0x11u)
  {
    v6 = *a3;
  }

  else
  {
    v6 = a3;
  }

  if (v5)
  {
    v7 = (v6 + 8 * v5);
    do
    {
      v8 = a1[25];
      while (v8)
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v8 + 2), v6))
        {
          v8 = sub_29A43ABB8(a1 + 23, v8);
        }

        else
        {
          v8 = *v8;
        }
      }

      v6 = (v6 + 8);
    }

    while (v6 != v7);
  }

  return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, a3);
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType *sub_29AF4751C(atomic_ullong *a1)
{
  result = sub_29AF47564();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType::~UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType *sub_29AF47564()
{
  v0 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AF475A8(uint64_t a1)
{
  sub_29A43A24C(a1 + 184);
  v2 = *(a1 + 176);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 148));
  sub_29A1DE3A4((a1 + 144));
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 120), v4);
  sub_29ABD4DDC();
}

void *sub_29AF47640(void *a1)
{
  *a1 = &unk_2A203F6D8;
  __dmb(0xBu);
  a1[1] = 0;
  __dmb(0xBu);
  a1[2] = 0;
  *a1 = &unk_2A20A1C00;
  v2 = tbb::internal::allocate_via_handler_v3(8);
  *v2 = &unk_2A20A1C60;
  a1[3] = v2;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[7] = 0;
  a1[6] = 0;
  a1[8] = a1 + 9;
  a1[5] = sub_29AF4789C;
  return a1;
}

uint64_t sub_29AF4770C(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 24) = 1;
  return v5;
}

void sub_29AF477D0(void *a1)
{
  v1 = sub_29AF478BC(a1);

  operator delete(v1);
}

void *sub_29AF477F8()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A20A1C60;
  return result;
}

uint64_t sub_29AF47830(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

void sub_29AF47890(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,128ul>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

void *sub_29AF478BC(void *a1)
{
  *a1 = &unk_2A20A1C00;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  sub_29AF47958(a1 + 4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

unint64_t *sub_29AF47958(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,128ul>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,128ul>>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + (a2 << 7) - 128;
    do
    {
      if (*(v3 + 24) == 1)
      {
        v4 = v3;
        sub_29A1E234C(&v4);
        *(v3 + 24) = 0;
      }

      v3 -= 128;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_29AF47A20(tbb::internal::allocate_continuation_proxy *this)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!*(this + 5))
  {
    *(this + 5) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 52);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 52) = v3 + 1;
      }
    }
  }

  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(this + 2);
  v7 = *(this + 3);
  v8 = v4 - v6;
  if (v7 < v4 - v6)
  {
    v9 = *(this + 5);
    if (v9 > 1)
    {
      goto LABEL_12;
    }

    if (v9 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v10 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v10 - 11) = 1;
        *v10 = &unk_2A204C520;
        __dmb(0xBu);
        v10[8] = 0;
        *(this - 4) = v10;
        *(v10 - 3) = 2;
        v11 = tbb::internal::allocate_child_proxy::allocate(v10, 0x38uLL);
        *(v11 - 11) = 1;
        v12 = *(this + 1);
        v13 = *(this + 2);
        *v11 = &unk_2A20A1CF8;
        *(v11 + 8) = v12;
        v14 = v13 + ((v12 - v13) >> 1);
        *(this + 1) = v14;
        *(v11 + 16) = v14;
        *(v11 + 24) = *(this + 24);
        v15 = *(this + 5) >> 1;
        *(this + 5) = v15;
        *(v11 + 40) = v15;
        *(v11 + 48) = 2;
        *(v11 + 52) = *(this + 52);
        (***(v11 - 40))();
        v6 = *(this + 2);
        v7 = *(this + 3);
        v4 = *(this + 1);
        v8 = v4 - v6;
        if (v7 >= v4 - v6)
        {
          break;
        }

        v16 = *(this + 5);
        if (v16 <= 1)
        {
          if (!v16 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v7 < v8 && *(this + 52))
  {
    *v30 = 0x10000;
    v31 = *v5;
    v32 = *(this + 3);
    while (1)
    {
      sub_29A3B10B4(v30, *(this + 52));
      v17 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v17)
      {
        v18 = *(this + 52) + 1;
        *(this + 52) = v18;
        v19 = v30[2];
        if (v30[2] >= 2u)
        {
          v20 = v30[1];
          v21 = v30[v30[1] + 3];
          v22 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v22 - 11) = 1;
          *v22 = &unk_2A204C520;
          __dmb(0xBu);
          v22[8] = 0;
          *(this - 4) = v22;
          *(v22 - 3) = 2;
          v23 = tbb::internal::allocate_child_proxy::allocate(v22, 0x38uLL);
          v24 = &v31 + 24 * v20;
          *(v23 - 11) = 1;
          *v23 = &unk_2A20A1CF8;
          v25 = *v24;
          *(v23 + 24) = *(v24 + 2);
          *(v23 + 8) = v25;
          v26 = *(this + 4);
          v27 = *(this + 5) >> 1;
          *(this + 5) = v27;
          *(v23 + 32) = v26;
          *(v23 + 40) = v27;
          *(v23 + 48) = 2;
          *(v23 + 52) = *(this + 52) - v21;
          (***(v23 - 40))();
          v19 = --v30[2];
          v30[1] = (v30[1] + 1) & 7;
          goto LABEL_25;
        }

        v28 = v30[0];
        if (v30[v30[0] + 3] < v18 && *(&v31 + 3 * v30[0] + 2) < *(&v31 + 3 * v30[0]) - *(&v31 + 3 * v30[0] + 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v28 = v30[0];
      }

      sub_29AF47E40(*(this + 4), *(&v31 + 3 * v28 + 1), *(&v31 + 3 * v28));
      v19 = --v30[2];
      v30[0] = (v30[0] - 1) & 7;
LABEL_25:
      if (!v19 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29AF47E40(*(this + 4), v6, v4);
  return 0;
}

void sub_29AF47E40(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *a1;
  LOBYTE(v17[0]) = 0;
  v8 = sub_29A0ED084(v7, v17);
  v9 = a3 - a2;
  if (a3 > a2)
  {
    v10 = v8;
    v11 = 2 * a2;
    do
    {
      v12 = *(a1 + 8);
      if (*(v12 + 65) >= 0x11u)
      {
        v12 = *v12;
      }

      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v13)
      {
        v13 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v14 = &v12[v11];
      if ((*(v13 + 21) ^ v14[1]) < 8)
      {
        goto LABEL_13;
      }

      v15 = sub_29AC1199C((v6 + 112));
      (*(*v15 + 16))(v17);
      v16 = sub_29AF46B8C(v17);
      if (v18)
      {
        sub_29A014BEC(v18);
      }

      if ((v17[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v17[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v16)
      {
LABEL_13:
        sub_29A1E28B4(v10, v14);
      }

      v11 += 2;
      --v9;
    }

    while (v9);
  }
}

void sub_29AF47F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B294B14(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF47FA8(tbb::internal::allocate_continuation_proxy *this)
{
  v31 = *MEMORY[0x29EDCA608];
  if (!*(this + 5))
  {
    *(this + 5) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 52);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 52) = v3 + 1;
      }
    }
  }

  v4 = (this + 8);
  v5 = *(this + 3);
  v6 = (*(this + 1) - *(this + 2)) >> 4;
  if (v5 < v6)
  {
    v7 = *(this + 5);
    if (v7 > 1)
    {
      goto LABEL_12;
    }

    if (v7 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v8 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v8 - 11) = 1;
        *v8 = &unk_2A204C520;
        __dmb(0xBu);
        v8[8] = 0;
        *(this - 4) = v8;
        *(v8 - 3) = 2;
        v9 = tbb::internal::allocate_child_proxy::allocate(v8, 0x38uLL);
        *(v9 - 11) = 1;
        v10 = *(this + 1);
        v11 = *(this + 2);
        *v9 = &unk_2A20A1D40;
        *(v9 + 8) = v10;
        v12 = v11 + 16 * ((((v10 - v11) >> 4) + ((v10 - v11) >> 63)) >> 1);
        *(this + 1) = v12;
        v13 = *(this + 3);
        *(v9 + 16) = v12;
        *(v9 + 24) = v13;
        *(v9 + 32) = *(this + 4);
        v14 = *(this + 5) >> 1;
        *(this + 5) = v14;
        *(v9 + 40) = v14;
        *(v9 + 48) = 2;
        *(v9 + 52) = *(this + 52);
        (***(v9 - 40))();
        v5 = *(this + 3);
        v6 = (*(this + 1) - *(this + 2)) >> 4;
        if (v5 >= v6)
        {
          break;
        }

        v15 = *(this + 5);
        if (v15 <= 1)
        {
          if (!v15 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v5 < v6 && *(this + 52))
  {
    *v28 = 0x10000;
    v29 = *v4;
    v30 = *(this + 3);
    while (1)
    {
      sub_29A846D30(v28, *(this + 52));
      v16 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v16)
      {
        v17 = *(this + 52) + 1;
        *(this + 52) = v17;
        v18 = v28[2];
        if (v28[2] >= 2u)
        {
          v19 = v28[1];
          v20 = v28[v28[1] + 3];
          v21 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v21 - 11) = 1;
          *v21 = &unk_2A204C520;
          __dmb(0xBu);
          v21[8] = 0;
          *(this - 4) = v21;
          *(v21 - 3) = 2;
          v22 = tbb::internal::allocate_child_proxy::allocate(v21, 0x38uLL);
          v23 = &v29 + 24 * v19;
          *(v22 - 11) = 1;
          *v22 = &unk_2A20A1D40;
          v24 = *v23;
          *(v22 + 24) = *(v23 + 2);
          *(v22 + 8) = v24;
          *(v22 + 32) = *(this + 4);
          v25 = *(this + 5) >> 1;
          *(this + 5) = v25;
          *(v22 + 40) = v25;
          *(v22 + 48) = 2;
          *(v22 + 52) = *(this + 52) - v20;
          (***(v22 - 40))();
          v18 = --v28[2];
          v28[1] = (v28[1] + 1) & 7;
          goto LABEL_25;
        }

        v26 = v28[0];
        if (v28[v28[0] + 3] < v17 && *(&v29 + 3 * v28[0] + 2) < ((*(&v29 + 3 * v28[0]) - *(&v29 + 3 * v28[0] + 1)) >> 4))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v26 = v28[0];
      }

      sub_29AF483E8(this, &v29 + 3 * v26);
      v18 = --v28[2];
      v28[0] = (v28[0] - 1) & 7;
LABEL_25:
      if (!v18 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29AF483E8(this, this + 1);
  return 0;
}

BOOL sub_29AF483E8(_BOOL8 result, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v4 = result;
    do
    {
      result = sub_29AF46F8C((**(v4 + 32) + 184), v2);
      if (result)
      {
        v5 = *(v2 + 1);
        if ((v5 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *(v2 + 1) = 0;
      }

      v2 = (v2 + 16);
    }

    while (v2 != v3);
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B7248CELL & 0x7FFFFFFFFFFFFFFFLL), &v11);
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
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry*> &)::isInitializing, 1u))
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
      v8 = operator new(0x98uLL);
      pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::UsdImagingAdapterRegistry(v8);
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry]";
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
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29AF48644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      v2 = *(i + 128);
      if (v2)
      {
        *(i + 136) = v2;
        operator delete(v2);
      }

      v4 = (i + 104);
      sub_29A124AB0(&v4);
      sub_29A155EF4(i + 64);
      v4 = (i + 40);
      sub_29A124AB0(&v4);
      v3 = sub_29A155EF4(i);
      operator delete(v3);
      return;
    }

    sched_yield();
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens_StaticTokenType::~UsdImagingAdapterKeyTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens_StaticTokenType::UsdImagingAdapterKeyTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "__instanceAdapter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "__drawModeAdapter", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AF48960(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::AreExternalPluginsEnabled(pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry *this)
{
  if ((atomic_load_explicit(&qword_2A1751640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751640))
  {
    sub_29A008E78(__p, "USDIMAGING_ENABLE_PLUGINS");
    v2 = pxrInternal__aapl__pxrReserved__::TfGetenvBool(__p, 1);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    byte_2A1751638 = v2;
    __cxa_guard_release(&qword_2A1751640);
  }

  return byte_2A1751638;
}

void sub_29AF48A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1751640);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry *pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::UsdImagingAdapterRegistry(pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 24) = 1065353216;
  *(this + 104) = 0u;
  v50 = this + 104;
  v51 = (this + 40);
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(this);
  v64 = 0;
  v65 = 0;
  v63 = &v64;
  v2 = atomic_load(&qword_2A1751648);
  if (!v2)
  {
    v2 = sub_29AF4A860();
  }

  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllDerivedTypes(*v2, &v63);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v55 = v63;
  v56 = &v64;
  while (v55 != v56)
  {
    v5 = sub_29AF49B90(&v55, v3, v4);
    pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(*v5, &v53);
    v6 = sub_29B290C20(&v53);
    if (v7 & 1 | v6)
    {
      sub_29A17F138(&v53);
    }

    if (sub_29AF49C14(5))
    {
      v10 = sub_29AF49C78(&v55, v8, v9);
      TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((*v10 + 32));
      if (*(TypeName + 23) >= 0)
      {
        v14 = TypeName;
      }

      else
      {
        v14 = *TypeName;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[PluginDiscover] Plugin could not be loaded for TfType '%s'\n", v12, v13, v14);
    }

    sub_29B293B60(&v54);
    sub_29AF49CB0(&v55);
  }

  v15 = v57;
  for (i = v58; v15 != i; v15 += 16)
  {
    v17 = *(v15 + 8);
    v67 = v15;
    v52 = sub_29AF4A8E0(this, v15, &unk_29B4D6118, &v67)[3];
    SchemaInfosInFamily = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfosInFamily(v15, v18);
    v20 = *SchemaInfosInFamily;
    v21 = SchemaInfosInFamily[1];
    while (v20 != v21)
    {
      v22 = *v20;
      sub_29A410854(this, *v20, *v20, &v52);
      if (v23)
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::GetSchemaTypeName((v22 + 1), &v67);
        if (sub_29AF49C14(5))
        {
          v26 = *v15 & 0xFFFFFFFFFFFFFFF8;
          if (v26)
          {
            v27 = (v26 + 16);
            if (*(v26 + 39) < 0)
            {
              v27 = *v27;
            }
          }

          else
          {
            v27 = "";
          }

          v28 = v67 & 0xFFFFFFFFFFFFFFF8;
          if ((v67 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v29 = (v28 + 16);
            if (*(v28 + 39) < 0)
            {
              v29 = *v29;
            }
          }

          else
          {
            v29 = "";
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[PluginDiscover] Mapping adapter for family '%s' to type '%s'\n", v24, v25, v27, v29);
        }

        if (v17)
        {
          sub_29A1D8028(&v60, &v67);
        }

        if ((v67 & 7) != 0)
        {
          atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      ++v20;
    }
  }

  v66 = &v60;
  sub_29AF49D58(&v66, this);
  sub_29A1D7F98(v51, *(this + 3));
  for (j = (this + 16); ; sub_29A1D8028(v51, j + 2))
  {
    j = *j;
    if (!j)
    {
      break;
    }
  }

  sub_29A082B84(&v63, v64);
  v64 = 0;
  v65 = 0;
  v63 = &v64;
  v31 = v60;
  for (k = v61; k != v31; k -= 8)
  {
    v34 = *(k - 8);
    v33 = v34;
    if ((v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v61 = v31;
  v35 = atomic_load(&qword_2A1751650);
  if (!v35)
  {
    v35 = sub_29AF4ACC8();
  }

  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllDerivedTypes(*v35, &v63);
  v55 = v63;
  v56 = &v64;
  while (v55 != v56)
  {
    v38 = sub_29AF49B90(&v55, v36, v37);
    pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(*v38, &v53);
    v39 = sub_29B290C20(&v53);
    if (v40 & 1 | v39)
    {
      sub_29A17F138(&v53);
    }

    if (sub_29AF49C14(5))
    {
      v43 = sub_29AF49C78(&v55, v41, v42);
      v44 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((*v43 + 32));
      if (*(v44 + 23) >= 0)
      {
        v47 = v44;
      }

      else
      {
        v47 = *v44;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[PluginDiscover] Plugin could not be loaded for TfType '%s'\n", v45, v46, v47);
    }

    sub_29B293B60(&v54);
    sub_29AF49CB0(&v55);
  }

  sub_29AF49D58(&v66, this + 64);
  sub_29A019AA0(this + 64, vcvtps_u32_f32(*(this + 3) / *(this + 24)));
  for (m = (this + 80); ; sub_29A1D8028(v50, m + 2))
  {
    m = *m;
    if (!m)
    {
      break;
    }
  }

  v67 = &v57;
  sub_29A15EE8C(&v67);
  v67 = &v60;
  sub_29A124AB0(&v67);
  sub_29A082B84(&v63, v64);
  return this;
}

void sub_29AF4991C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void ***a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, char a29)
{
  if ((a17 & 7) != 0)
  {
    atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A09932C(&a19, a20);
  v32 = a23;
  if (a23 && atomic_fetch_add_explicit((a23 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v32 + 8))(v32);
  }

  a24 = &a26;
  sub_29A15EE8C(&a24);
  a26 = &a29;
  sub_29A124AB0(&a26);
  sub_29A082B84(v30 - 168, *(v30 - 160));
  v33 = *(v29 + 128);
  if (v33)
  {
    *(v29 + 136) = v33;
    operator delete(v33);
  }

  *(v30 - 168) = a14;
  sub_29A124AB0((v30 - 168));
  sub_29A155EF4(v29 + 64);
  *(v30 - 168) = a15;
  sub_29A124AB0((v30 - 168));
  sub_29A155EF4(v29);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF49B90(void *a1, uint64_t a2, char *a3)
{
  if (*a1 == a1[1])
  {
    v11 = v4;
    v12 = v3;
    v13 = v5;
    v14 = v6;
    v8[0] = "tf/iterator.h";
    v8[1] = "operator*";
    v8[2] = 254;
    v8[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::set<pxrInternal__aapl__pxrReserved__::TfType>>::operator*() [T = std::set<pxrInternal__aapl__pxrReserved__::TfType>, Reverse = false]";
    v9 = 0;
    v10 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v8, "iterator exhausted", a3);
  }

  return *a1 + 32;
}

BOOL sub_29AF49C14(int a1)
{
  v2 = sub_29AF4A7DC();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29AF4A7DC();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F296BE0[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void *sub_29AF49C78(void *result, uint64_t a2, char *a3)
{
  if (*result == result[1])
  {
    sub_29B2CC440(result, a2, a3);
  }

  return result;
}

void *sub_29AF49CB0(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::set<pxrInternal__aapl__pxrReserved__::TfType>>::operator++() [T = std::set<pxrInternal__aapl__pxrReserved__::TfType>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
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

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void sub_29AF49D58(pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry ***a1, uint64_t a2)
{
  v2 = **a1;
  for (i = (*a1)[1]; v2 != i; v2 = (v2 + 8))
  {
    TypeFromSchemaTypeName = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::GetTypeFromSchemaTypeName(v2, a2);
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v18);
    if (v18 != TypeFromSchemaTypeName)
    {
      v18 = v2;
      v20 = sub_29AF4A8E0(a2, v2, &unk_29B4D6118, &v18)[3];
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetDirectlyDerivedTypes(TypeFromSchemaTypeName, &v18);
      while (v18 != v19)
      {
        v17 = *--v19;
        pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::GetSchemaTypeName(&v17, &v16);
        if (v16)
        {
          sub_29A410854(a2, &v16, &v16, &v20);
          if (a2)
          {
            if (sub_29AF49C14(5))
            {
              v8 = *v2 & 0xFFFFFFFFFFFFFFF8;
              if (v8)
              {
                v9 = (v8 + 16);
                if (*(v8 + 39) < 0)
                {
                  v9 = *v9;
                }
              }

              else
              {
                v9 = "";
              }

              v10 = v16 & 0xFFFFFFFFFFFFFFF8;
              if ((v16 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v11 = (v10 + 16);
                if (*(v10 + 39) < 0)
                {
                  v11 = *v11;
                }
              }

              else
              {
                v11 = "";
              }

              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[PluginDiscover] Mapping adapter for type '%s' to derived type '%s'\n", v6, v7, v9, v11);
            }

            pxrInternal__aapl__pxrReserved__::PlugRegistry::GetDirectlyDerivedTypes(v17, &v14);
            v12 = v14;
            v13 = v15;
            if (v14 != v15)
            {
              do
              {
                sub_29A0A71C8(&v18, v12++);
              }

              while (v12 != v13);
              v12 = v14;
            }

            if (v12)
            {
              v15 = v12;
              operator delete(v12);
            }
          }
        }

        if ((v16 & 7) != 0)
        {
          atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      if (v18)
      {
        v19 = v18;
        operator delete(v18);
      }
    }
  }
}

void sub_29AF49F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::HasAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
  if (!v4)
  {
    v4 = sub_29AF4AD48(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
  }

  return (*v4 ^ *a2) < 8 || sub_29A160470(this, a2) != 0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::ConstructAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
  if (!v6)
  {
    v6 = sub_29AF4AD48(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
  }

  if ((*v6 ^ *a2) > 7)
  {

    sub_29AF4A114(this, a2, this, a3);
  }

  else
  {
    v7 = operator new(0xC0uLL);
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = &unk_2A20ACCD0;
    *(v7 + 2) = 0u;
    *(v7 + 3) = 0u;
    *(v7 + 16) = 1065353216;
    *(v7 + 72) = 0u;
    *(v7 + 88) = 0u;
    *(v7 + 26) = 1065353216;
    *(v7 + 7) = 0u;
    *(v7 + 8) = 0u;
    *(v7 + 36) = 1065353216;
    *(v7 + 152) = 0u;
    *(v7 + 168) = 0u;
    *(v7 + 46) = 1065353216;

    sub_29AF4ADD4(a3, v7);
  }
}

void sub_29AF4A114(pxrInternal__aapl__pxrReserved__::PlugRegistry *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  {
    v13 = a3;
    sub_29B2CC49C();
    a3 = v13;
  }

  v7 = sub_29A16039C(a3, a2);
  if (v7)
  {

    sub_29B2CC074(a1, v7 + 3, a4);
  }

  else
  {
    if (sub_29AF49C14(5))
    {
      v10 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v10)
      {
        v11 = (v10 + 16);
        if (*(v10 + 39) < 0)
        {
          v11 = *v11;
        }
      }

      else
      {
        v11 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[PluginLoad] Unknown prim type '%s'\n", v8, v9, v11);
    }

    v12 = unk_2A14F9F00;
    *a4 = pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::_ConstructAdapter<pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter,pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapterFactoryBase>(pxrInternal__aapl__pxrReserved__::TfToken const&,std::unordered_map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfType,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::TfType>>> const&)::NULL_ADAPTER;
    a4[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_29AF4A240(pxrInternal__aapl__pxrReserved__::PlugRegistry *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  {
    v13 = a3;
    sub_29B2CC504();
    a3 = v13;
  }

  v7 = sub_29A16039C(a3, a2);
  if (v7)
  {

    sub_29AF4A454(a1, v7 + 3, a4);
  }

  else
  {
    if (sub_29AF49C14(5))
    {
      v10 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v10)
      {
        v11 = (v10 + 16);
        if (*(v10 + 39) < 0)
        {
          v11 = *v11;
        }
      }

      else
      {
        v11 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[PluginLoad] Unknown prim type '%s'\n", v8, v9, v11);
    }

    v12 = unk_2A14F9F30;
    *a4 = pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::_ConstructAdapter<pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter,pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapterFactoryBase>(pxrInternal__aapl__pxrReserved__::TfToken const&,std::unordered_map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfType,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::TfType>>> const&)::NULL_ADAPTER;
    a4[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::ConstructKeylessAPISchemaAdapters(pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29A039314(a2, (*(this + 17) - *(this + 16)) >> 3);
  v4 = *(this + 16);
  for (i = *(this + 17); v4 != i; ++v4)
  {
    sub_29AF4A454(this, v4, &v6);
    if (v6)
    {
      sub_29A017F80(a2, &v6);
    }

    if (*(&v6 + 1))
    {
      sub_29A014BEC(*(&v6 + 1));
    }
  }
}

void sub_29AF4A408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0176E4(va);
  _Unwind_Resume(a1);
}

atomic_uint *sub_29AF4A454@<X0>(pxrInternal__aapl__pxrReserved__::PlugRegistry *a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  {
    sub_29B2CC55C();
  }

  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(a1);
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(*a2, v13);
  v5 = sub_29B290C20(v13);
  if (v6 & 1 | v5)
  {
    sub_29A17F138(v13);
  }

  v11[0] = "usdImaging/adapterRegistry.cpp";
  v11[1] = "_ConstructAdapter";
  v11[2] = 407;
  v11[3] = "std::shared_ptr<T> pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::_ConstructAdapter(const TfToken &, const TfType &) [T = pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter, factoryT = pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapterFactoryBase]";
  v12 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a2);
  if (*(TypeName + 23) >= 0)
  {
    v8 = TypeName;
  }

  else
  {
    v8 = *TypeName;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "[PluginLoad] PlugPlugin could not be loaded for TfType '%s'\n", v8);
  v9 = *algn_2A14F9F48;
  *a3 = pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::_ConstructAdapter<pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter,pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapterFactoryBase>(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfType const&)::NULL_ADAPTER;
  a3[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29B290170(v13);
}

void sub_29AF4A734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  v14 = *(v12 - 40);
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v14 + 8))(v14);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AF4A7AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

uint64_t sub_29AF4A7DC()
{
  if ((atomic_load_explicit(&qword_2A14F9EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F9EF0))
  {
    v1 = operator new(0x30uLL);
    v1[1] = 0u;
    v1[2] = 0u;
    *v1 = 0u;
    qword_2A14F9EE8 = v1;
    __cxa_guard_release(&qword_2A14F9EF0);
  }

  return qword_2A14F9EE8;
}

unint64_t sub_29AF4A860()
{
  v0 = operator new(8uLL);
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v0);
  v3 = 0;
  *v0 = *v2;
  atomic_compare_exchange_strong(&qword_2A1751648, &v3, v0);
  if (v3)
  {
    operator delete(v0);
    return atomic_load(&qword_2A1751648);
  }

  return v0;
}

void *sub_29AF4A8E0(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29AF4AB28(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AF4AB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF4AB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29AF4ABAC(v8 + 2, &v10);
  *(a4 + 16) = 1;
  return result;
}

void *sub_29AF4ABAC(void *a1, uint64_t **a2)
{
  v3 = **a2;
  *a1 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::TfType::TfType((a1 + 1));
  return a1;
}

uint64_t sub_29AF4AC24(uint64_t result, void *a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = a2[1] + *result - v2;
  if (v2 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v2;
    do
    {
      *v6 = *v5;
      *v5 = 0;
      *(v6 + 8) = *(v5 + 8);
      v5 += 2;
      v6 += 16;
    }

    while (v5 != v2);
    do
    {
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v3 += 2;
    }

    while (v3 != v2);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  *(result + 8) = v7;
  a2[1] = v7;
  v8 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v8;
  v9 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

unint64_t sub_29AF4ACC8()
{
  v0 = operator new(8uLL);
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v0);
  v3 = 0;
  *v0 = *v2;
  atomic_compare_exchange_strong(&qword_2A1751650, &v3, v0);
  if (v3)
  {
    operator delete(v0);
    return atomic_load(&qword_2A1751650);
  }

  return v0;
}

atomic_uint **sub_29AF4AD48(atomic_ullong *a1)
{
  result = sub_29AF4AD90();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens_StaticTokenType::~UsdImagingAdapterKeyTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29AF4AD90()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens_StaticTokenType::UsdImagingAdapterKeyTokens_StaticTokenType(v0);
  return v0;
}

uint64_t *sub_29AF4ADD4(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A1D88;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29AF4AE44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2CC5B4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF4AE60(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF4AE88(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF4AEB8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A1DD8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF4AEF8(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

void *sub_29AF4AF68(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

uint64_t sub_29AF4AFD8(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(sub_29AF14D3C, a2, a3);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::_MarkCollectionContentDirty(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(a1);
  pxrInternal__aapl__pxrReserved__::UsdComputeIncludedPathsFromCollection(a3, a2, UsdPrimDefaultPredicate, &v7);
  sub_29AF4D2D0(a1[20], (a1 + 21), v7, &v8, (a1 + 20), a1[20]);
  sub_29A1E2AEC(&v7, v8);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::UpdateCollection(pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache *this, const pxrInternal__aapl__pxrReserved__::UsdCollectionAPI *a2)
{
  sub_29A580660(&v32, a2 + 1, a2 + 4);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v32, v4, &v39);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v35);
  sub_29A1DE3A4(&v34);
  if (v33)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33, v5);
  }

  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::GetCollectionPath(a2, &v32);
  v6 = pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::RemoveCollection(this, &v39, &v32);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v32 + 1);
  sub_29A1DE3A4(&v32);
  std::mutex::lock((this + 184));
  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::GetCollectionPath(a2, &v37);
  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::ComputeMembershipQuery(a2, &v32);
  v7 = sub_29AF4D4EC(v41, &v32);
  v8 = sub_29A58CE44(v41, &v33);
  if (v43 != 1 || (v9 = v42, *(v9 + 16) != *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8)))
  {
    sub_29A58D230(v41);
    goto LABEL_13;
  }

  v10 = v42;
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdTokens);
  if (!v11)
  {
    v11 = sub_29A4AAA94(&pxrInternal__aapl__pxrReserved__::UsdTokens);
  }

  v12 = *(v11 + 21) ^ *(v10 + 24);
  sub_29A58D230(v41);
  if (v12 > 7)
  {
LABEL_13:
    v31 = 0;
    v16 = sub_29AF4D564(this, &v32);
    if (v16)
    {
      sub_29A166F2C(&v31, v16 + 20);
      if (sub_29AF49C14(0))
      {
        v24 = v31 & 0xFFFFFFFFFFFFFFF8;
        if ((v31 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v25 = (v24 + 16);
          if (*(v24 + 39) < 0)
          {
            v25 = *v25;
          }
        }

        else
        {
          v25 = "";
        }

        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v37);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("UsdImaging_CollectionCache: Shared id '%s' for <%s>\n", v27, v28, v25, Text);
      }
    }

    else
    {
      Token = pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(&v37);
      sub_29A166F2C(&v31, Token);
      v41[0] = &v32;
      v18 = sub_29AF4D800(this, &v32, &unk_29B4D6118, v41);
      sub_29A166F2C(v18 + 20, &v31);
      v41[0] = &v31;
      v19 = sub_29AF4DD48(this + 40, &v31, &unk_29B4D6118, v41);
      sub_29AF4B8B8((v19 + 3), &v32);
      if (sub_29AF49C14(0))
      {
        v22 = v31 & 0xFFFFFFFFFFFFFFF8;
        if ((v31 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v23 = (v22 + 16);
          if (*(v22 + 39) < 0)
          {
            v23 = *v23;
          }
        }

        else
        {
          v23 = "";
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("UsdImaging_CollectionCache: Assigned new id '%s'\n", v20, v21, v23);
      }
    }

    v41[0] = &v32;
    sub_29AF4E0C8(this + 15, &v32, &unk_29B4D6118, v41);
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  if (sub_29AF49C14(0))
  {
    v13 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v37);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("UsdImaging_CollectionCache: trivial for <%s>\n", v14, v15, v13);
  }

  sub_29B2CC880(&v32, &v33);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38);
  sub_29A1DE3A4(&v37);
  std::mutex::unlock((this + 184));
  v29 = v40;
  if (v40 && atomic_fetch_add_explicit((v40 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v29 + 8))(v29);
  }

  return v6 != v7;
}

void sub_29AF4B4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A58D230(v6 - 104);
  sub_29B2B5538(va);
  sub_29A1DCEA8((v6 - 128));
  std::mutex::unlock((v5 + 184));
  v8 = *(v6 - 112);
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v8 + 8))(v8);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::RemoveCollection(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  std::mutex::lock((a1 + 184));
  v6 = sub_29A2F4F50((a1 + 80), a3);
  v7 = v6;
  if (v6)
  {
    v8 = v6[3];
    v17 = v8;
    if ((v8 & 7) != 0)
    {
      add_explicit = atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
      v8 = v17;
      if ((add_explicit & 1) == 0)
      {
        v8 = v17 & 0xFFFFFFFFFFFFFFF8;
        v17 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    if (!v8)
    {
      v12 = "usdImaging/collectionCache.cpp";
      v13 = "RemoveCollection";
      v14 = 97;
      v15 = "size_t pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::RemoveCollection(const UsdStageWeakPtr &, const SdfPath &)";
      v16 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v12, "!id.IsEmpty()", 0);
    }

    sub_29A7441D0((a1 + 80), v7);
    v10 = sub_29A160470((a1 + 40), &v17);
    if (v10 || (v12 = "usdImaging/collectionCache.cpp", v13 = "RemoveCollection", v14 = 101, v15 = "size_t pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::RemoveCollection(const UsdStageWeakPtr &, const SdfPath &)", v16 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v12, "queryEntry != _queryForId.end()", 0) & 1) != 0))
    {
      sub_29AF4D4EC(&v12, v10 + 3);
      sub_29AF4E414(a1, v10 + 3);
      pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::_MarkCollectionContentDirty(a1, a2, (v10 + 3));
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a3, &v12);
      sub_29A58C104();
    }

    v7 = 0;
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  std::mutex::unlock((a1 + 184));
  return v7;
}

void sub_29AF4B84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::mutex::unlock((v16 + 184));
  _Unwind_Resume(a1);
}

uint64_t sub_29AF4B8B8(uint64_t a1, uint64_t a2)
{
  sub_29A166F2C(a1, a2);
  if (a1 != a2)
  {
    *(a1 + 40) = *(a2 + 40);
    sub_29AF4BAD0((a1 + 8), *(a2 + 24), 0);
    sub_29AF4BD7C((a1 + 48), *(a2 + 48), (a2 + 56));
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  sub_29B28FD1C((a1 + 88), (a2 + 88));
  if (a1 != a2)
  {
    sub_29A36CF34((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 2);
    sub_29AF4C024(a1 + 120, *(a2 + 120), *(a2 + 128), 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 128) - *(a2 + 120)) >> 3));
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::ClearDirtyPaths(pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache *this)
{
  v1 = (this + 168);
  sub_29A1E2AEC(this + 160, *(this + 21));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::GetIdForCollection@<X0>(pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdCollectionAPI *a2@<X1>, atomic_uint **a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::GetCollectionPath(a2, &v9);
  v5 = sub_29A2F4F50(this + 10, &v9);
  if (!v5)
  {
    v7 = 0;
LABEL_6:
    *a3 = v7;
    goto LABEL_7;
  }

  v6 = v5[3];
  *a3 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  return sub_29A1DE3A4(&v9);
}

void sub_29AF4BA34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::ComputeCollectionsContainingPath(pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  for (i = *(this + 7); i; i = *i)
  {
    if (sub_29A58BC60(i + 3, a2, 0))
    {
      sub_29A7BDD40(a3, i + 2);
    }
  }
}

void sub_29AF4BAD0(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v12[0] = v8 + 2;
        v12[1] = v8 + 3;
        sub_29AF4BC50(v12, (v4 + 2));
        v10 = *v8;
        sub_29AF4BBE0(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    sub_29A58D26C(a1, v10);
  }

  while (v4 != a3)
  {
    sub_29AF4BCA4(a1, (v4 + 2));
    v4 = *v4;
  }
}

void sub_29AF4BBB0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29A58D26C(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AF4BBE0(void *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = bswap64(0x9E3779B97F4A7C55 * (*(a2 + 20) + ((*(a2 + 20) + *(a2 + 16) + (*(a2 + 20) + *(a2 + 16)) * (*(a2 + 20) + *(a2 + 16))) >> 1)));
  *(a2 + 8) = v5;
  v6 = sub_29A0FF00C(a1, v5, v4);
  sub_29A0FF16C(a1, a2, v6);
  return a2;
}

uint64_t sub_29AF4BC50(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  sub_29A2258F0(*a1, a2);
  sub_29A225948(v4 + 1, (a2 + 4));
  sub_29A166F2C(*(a1 + 8), (a2 + 8));
  return a1;
}

void sub_29AF4BCE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A58D17C(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF4BCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x20uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = 0;
  result = sub_29A58D118((v6 + 2), a2);
  *(a3 + 16) = 1;
  v6[1] = bswap64(0x9E3779B97F4A7C55 * (*(v6 + 5) + ((*(v6 + 5) + *(v6 + 4) + (*(v6 + 5) + *(v6 + 4)) * (*(v6 + 5) + *(v6 + 4))) >> 1)));
  return result;
}

uint64_t **sub_29AF4BD7C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          sub_29A2258F0(v8 + 7, v9 + 7);
          sub_29A225948(v8 + 8, v9 + 8);
          sub_29A325EA0(v5, v8);
          v8 = v15;
          v16 = v15;
          if (v15)
          {
            v15 = sub_29A028760(v15);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_29A448764(&v14);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29AF4BEF0(v5, a2 + 7);
      v12 = a2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = a2[2];
          v11 = *v13 == a2;
          a2 = v13;
        }

        while (!v11);
      }

      a2 = v13;
    }

    while (v13 != a3);
  }

  return result;
}

void sub_29AF4BEDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A448764(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AF4BEF0(uint64_t **a1, _DWORD *a2)
{
  v5 = operator new(0x28uLL);
  sub_29A1E21F4(v5 + 7, a2);
  sub_29A1E2240(v5 + 8, a2 + 1);
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  sub_29A00B204(a1, (a1 + 1), a1 + 1, v5);
  return v5;
}

void sub_29AF4BFB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF4BFC8(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AF4BFC8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A1E26CC(v2 + 7);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AF4C024(uint64_t a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29A58E9DC(a1);
    if (a4 > 0x1E1E1E1E1E1E1E1)
    {
      sub_29A00C9A4();
    }

    v9 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
    {
      v10 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v10 = v9;
    }

    sub_29A754AB4(a1, v10);
    result = sub_29AF4C194(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xF0F0F0F0F0F0F0F1 * (v12 >> 3) < a4)
  {
    sub_29AF4C84C(&v16, a2, a2 + v12, v8);
    result = sub_29AF4C194(a1, (a2 + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29AF4C84C(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 136;
      result = sub_29A58E848(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
  return result;
}

uint64_t sub_29AF4C194(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    sub_29AF4C240(a1, a4, a2);
  }

  v7 = 1;
  sub_29A58E8D4(v6);
  return a4;
}

void sub_29AF4C2AC(uint64_t a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*,pxrInternal__aapl__pxrReserved__::Sdf_PathExpressionEvalBase::_PatternImplBase::_Component*>();
}

void sub_29AF4C3A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 40) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v7;
    operator delete(v7);
  }

  sub_29A1DCEA8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF4C3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_29A598C3C(a4, v6);
      v6 += 48;
      a4 += 48;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_29AF4C45C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 48);
    do
    {
      pxrInternal__aapl__pxrReserved__::ArchRegex::~ArchRegex(v4);
      v4 = (v5 - 48);
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF4C480(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A1C11FC(result, a4);
    result = sub_29AF4C508(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AF4C4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A58E558(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AF4C508(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29AF4C5B4(a1, v4, v6);
      v6 += 48;
      v4 = v12 + 6;
      v12 += 6;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A58DB40(v9);
  return v4;
}

void *sub_29AF4C5B4(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29AF4C62C(a2, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return sub_29AF4C6A8(a2 + 3, *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 5);
}

void sub_29AF4C610(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF4C62C(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0111A4(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29AF4C68C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF4C6A8(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29AF4C730(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AF4C710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A58E4D4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF4C730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_29AF4C7B4(a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_29AF4C790(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = sub_29A58E3F4(v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AF4C7B4(uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29AF4C84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_29AF4C8D4(a4, v5);
      if (v5 != a4)
      {
        sub_29AF4CBE0(a4 + 112, *(v5 + 112), *(v5 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 120) - *(v5 + 112)) >> 4));
      }

      v5 += 136;
      a4 += 136;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_29AF4C8D4(uint64_t a1, uint64_t a2)
{
  sub_29A2258F0(a1, a2);
  sub_29A225948((a1 + 4), (a2 + 4));
  if (a1 != a2)
  {
    sub_29A4EA498((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 2));
    sub_29A12D958((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
    sub_29A095E3C(a1 + 56, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
    sub_29AF4C990(a1 + 80, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 4));
  }

  v4 = *(a2 + 104);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 104) = v4;
  return a1;
}

void sub_29AF4C990(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_29AF4CB28(a1);
    if (a4 > 0x555555555555555)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    sub_29A1C11FC(a1, v10);
    v11 = sub_29AF4C3FC(a1, v6, a3, *(a1 + 8));
LABEL_15:
    *(a1 + 8) = v11;
    return;
  }

  v12 = *(a1 + 8);
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) < a4)
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        sub_29AF4CB88(v8, v15);
        v15 += 48;
        v8 = (v8 + 48);
        v14 -= 48;
      }

      while (v14);
      v12 = *(a1 + 8);
    }

    v11 = sub_29AF4C3FC(a1, v6 + v13, a3, v12);
    goto LABEL_15;
  }

  if (a2 != a3)
  {
    do
    {
      sub_29AF4CB88(v8, v6);
      v6 += 48;
      v8 = (v8 + 48);
    }

    while (v6 != a3);
    v12 = *(a1 + 8);
  }

  while (v12 != v8)
  {
    v12 = (v12 - 48);
    pxrInternal__aapl__pxrReserved__::ArchRegex::~ArchRegex(v12);
  }

  *(a1 + 8) = v8;
}

void sub_29AF4CB28(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::ArchRegex::~ArchRegex((v3 - 48));
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_29AF4CB88(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return a1;
}

void sub_29AF4CBE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_29AF4CD50(a1);
    if (a4 > 0x555555555555555)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    sub_29A1C11FC(a1, v10);
    v11 = sub_29AF4C508(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 4) < a4)
  {
    sub_29AF4CDBC(&v16, a2, a2 + v12, v8);
    v11 = sub_29AF4C508(a1, a2 + v12, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  sub_29AF4CDBC(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 48;
      sub_29A58DAF8(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

void sub_29AF4CD50(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        sub_29A58DAF8(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_29AF4CDBC(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_29A36CF34(a4, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
        sub_29AF4CE40((a4 + 3), *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 5);
      }

      v5 += 48;
      a4 += 6;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_29AF4CE40(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (a4 > (*(result + 16) - *result) >> 5)
  {
    sub_29A58E474(result);
    if (a4 >> 59)
    {
      sub_29A00C9A4();
    }

    v9 = v7[2] - *v7;
    v10 = v9 >> 4;
    if (v9 >> 4 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A15A71C(v7, v11);
    result = sub_29AF4C730(v7, v6, a3, v7[1]);
LABEL_15:
    v7[1] = result;
    return result;
  }

  v12 = *(result + 8);
  v13 = v12 - v8;
  if (a4 > (v12 - v8) >> 5)
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        sub_29AF4CFA8(v8, v15);
        v15 += 32;
        v8 += 4;
        v14 -= 32;
      }

      while (v14);
      v12 = v7[1];
    }

    result = sub_29AF4C730(v7, v6 + v13, a3, v12);
    goto LABEL_15;
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29AF4CFA8(v8, v6);
      v6 += 32;
      v8 += 4;
    }

    while (v6 != a3);
    v12 = v7[1];
  }

  while (v12 != v8)
  {
    v12 -= 32;
    result = sub_29A58E3F4(v12);
  }

  v7[1] = v8;
  return result;
}

void *sub_29AF4CFA8(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  sub_29AF4C7B4(v4, a2);
  sub_29AF4D01C(v4, a1);
  sub_29A58E3F4(v4);
  return a1;
}

void *sub_29AF4D01C(void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_29AF4D274(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

uint64_t sub_29AF4D280(uint64_t a1)
{
  sub_29A1E2AEC(a1 + 48, *(a1 + 56));
  sub_29A58D230(a1 + 8);
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29AF4D2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a2)
  {
    v7 = a3;
    v8 = a4;
    v9 = a5;
    v10 = a6;
  }

  else
  {
    if (a3 != a4)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    v9 = a5;
    v10 = a6;
    v7 = a1;
    v8 = a2;
  }

  sub_29AF4D454(v7, v8, v9, v10, v12);
  return v13;
}

double sub_29AF4D454@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *&v6 = a3;
  *(&v6 + 1) = a4;
  if (a1 != a2)
  {
    sub_29AF4D3E8();
  }

  *a5 = a1;
  result = *&v6;
  *(a5 + 8) = v6;
  return result;
}

unint64_t sub_29AF4D4EC(uint64_t a1, void *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQueryBase::_Hash::operator()(&v10, a2);
  v4 = sub_29B2ACEC8((a2 + 10));
  if (v5 & 1 | v4)
  {
    v6 = a2[15] == a2[16];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v3 + 1;
  }

  else
  {
    v7 = v3;
  }

  v8 = (v7 + v7 * v7) >> 1;
  if (v6)
  {
    ++v8;
  }

  return bswap64(0x9E3779B97F4A7C55 * v8);
}

void *sub_29AF4D564(void *a1, void *a2)
{
  v4 = sub_29AF4D4EC(a1, a2);
  v5 = a1[1];
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
        if (sub_29AF4D65C((v11 + 2), a2))
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

uint64_t sub_29AF4D65C(uint64_t a1, uint64_t a2)
{
  if ((*a2 ^ *a1) > 7)
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  if (*(a1 + 72) == *(a2 + 72))
  {
    result = sub_29AF4D780(a1 + 8, (a2 + 8));
    if (!result)
    {
      return result;
    }

    if (*(a1 + 64) == *(a2 + 64))
    {
      v7 = *(a1 + 48);
      if (v7 == (a1 + 56))
      {
LABEL_19:
        sub_29B2CC938(a1, a2, &v14);
        return v14;
      }

      v8 = *(a2 + 48);
      while (*(v7 + 28) == *(v8 + 28))
      {
        v9 = v7[1];
        v10 = v7;
        if (v9)
        {
          do
          {
            v7 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v7 = v10[2];
            v11 = *v7 == v10;
            v10 = v7;
          }

          while (!v11);
        }

        v12 = v8[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v8[2];
            v11 = *v13 == v8;
            v8 = v13;
          }

          while (!v11);
        }

        v8 = v13;
        if (v7 == (a1 + 56))
        {
          goto LABEL_19;
        }
      }
    }
  }

  return 0;
}

BOOL sub_29AF4D780(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_29A328A44(a2, v3 + 4);
    if (!v5)
    {
      break;
    }
  }

  while (*(v3 + 2) == v5[2] && (v5[3] ^ *(v3 + 3)) < 8uLL);
  return v4;
}

void *sub_29AF4D800(void *a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v7 = sub_29AF4D4EC(a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    sub_29AF4DA68(a1, v8, a4, v17);
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if ((sub_29AF4D65C((v14 + 2), a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_29AF4DA50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF4DCE8(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AF4DA68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0xA8uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29AF4DAE8(v8 + 2, *a3);
}

void sub_29AF4DAE8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A58CE44((a1 + 1), (a2 + 1));
  sub_29A58EC68(a1 + 6);
}

void sub_29AF4DBC4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 88);
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v5 + 8))(v5);
    }
  }

  sub_29AF4D280(v1);
  _Unwind_Resume(a1);
}

void *sub_29AF4DC60(void *result, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A754AB4(result, a4);
    result = sub_29AF4C194(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AF4DCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A58EA48(&a9);
  _Unwind_Resume(a1);
}

void sub_29AF4DCE8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2CC5D8(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29AF4DD48(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29AF4DF88(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AF4DF70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF4E068(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AF4DF88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0xA8uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29AF4DFF8((v8 + 2), *a3);
  *(a4 + 16) = 1;
}

double sub_29AF4DFF8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

void sub_29AF4E068(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2CC6A4(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29AF4E0C8(void *a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v7 = sub_29AF4D4EC(a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    sub_29AF4E330(a1, v8, a4, v17);
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if ((sub_29AF4D65C((v14 + 2), a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_29AF4E318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF4E3B4(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AF4E330(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0xB8uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29AF4DAE8(v8 + 2, *a3);
}

void sub_29AF4E3B4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2CC770(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29AF4E414(void *a1, void *a2)
{
  result = sub_29AF4D564(a1, a2);
  if (result)
  {
    sub_29AF4E44C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29AF4E44C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B2CC5D8(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29AF4E4AC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B2CC770(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29AF4E50C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B2CC6A4(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType::~UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType *this)
{
  v5 = (this + 32);
  sub_29A124AB0(&v5);
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 1);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType::UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "collectionMaterialBinding", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "collectionPath", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "materialPath", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "bindingStrength", 0);
  v3 = (this + 32);
  v4 = *this;
  v15 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v5;
    }
  }

  v6 = *(this + 1);
  v16 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v7;
    }
  }

  v8 = *(this + 2);
  v17 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v9;
    }
  }

  v10 = *(this + 3);
  v18 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v11;
    }
  }

  *v3 = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  sub_29A12EF7C(v3, &v15, &v19, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v13 = *(&v15 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AF4E788(_Unwind_Exception *a1)
{
  v3 = 24;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[3];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::GetCollectionPath(pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4EF98(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABE18CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::GetMaterialPath(pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4EF98(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABE18CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::GetBindingStrength(pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4EF98(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v33[2] = *MEMORY[0x29EDCA608];
  v7 = &v30;
  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v8 = &v32;
  memset(v31, 0, sizeof(v31));
  v30 = 0u;
  if (*a1)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
    if (!v10)
    {
      v10 = sub_29AF4EF98(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
    }

    v7 = v31;
    v8 = v33;
    sub_29A166F2C(&v32, v10 + 1);
    v12 = *a1;
    v11 = a1[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(&v30 + 1);
    *&v30 = v12;
    *(&v30 + 1) = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (*a2)
  {
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
    if (!v15)
    {
      v15 = sub_29AF4EF98(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
    }

    sub_29A166F2C(v8, v15 + 2);
    ++v14;
    v17 = *a2;
    v16 = a2[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(v7 + 1);
    *v7 = v17;
    *(v7 + 1) = v16;
    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  if (*a3)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
    if (!v19)
    {
      v19 = sub_29AF4EF98(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
    }

    sub_29A166F2C(&v33[v14 - 1], v19 + 3);
    v20 = v14 + 1;
    v21 = &v31[v14 - 1];
    v23 = *a3;
    v22 = a3[1];
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = v21[1];
    *v21 = v23;
    v21[1] = v22;
    if (v24)
    {
      sub_29A014BEC(v24);
    }
  }

  else
  {
    v20 = v14;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v20, &v32, &v30, &v29);
  *a4 = v29;
  for (i = 40; i != -8; i -= 16)
  {
    v26 = *(&v31[-1] + i);
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  for (j = 2; j != -1; --j)
  {
    v28 = v33[j - 1];
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AF4EC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v18 = 40;
  while (1)
  {
    v19 = *(&a11 + v18);
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    v18 -= 16;
    if (v18 == -8)
    {
      v20 = 16;
      while (1)
      {
        v21 = *(&a17 + v20);
        if ((v21 & 7) != 0)
        {
          atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v20 -= 8;
        if (v20 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::Builder::SetCollectionPath(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::Builder::SetMaterialPath(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::Builder::SetBindingStrength(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens))
    {
      sub_29AF4EF98(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
  if (!result)
  {
    return sub_29AF4EF98(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1751690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751690))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF4EF98(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1751658, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1751658, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751690);
  }

  return &unk_2A1751658;
}

pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType *sub_29AF4EF98(atomic_ullong *a1)
{
  result = sub_29AF4EFE0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType::~UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType *sub_29AF4EFE0()
{
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType::UsdImagingCollectionMaterialBindingSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens_StaticTokenType::~UsdImagingCollectionMaterialBindingsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens_StaticTokenType::UsdImagingCollectionMaterialBindingsSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "collectionMaterialBindings", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AF4F1A0(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetPurposes(pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema *this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(this, &v4);
  v3 = v4;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  if (!v3)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_29AF4F280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetCollectionMaterialBindings(pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4F594(&pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetCollectionMaterialBindings(this, v4 + 1, a2);
}