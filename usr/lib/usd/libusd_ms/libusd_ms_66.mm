void sub_29A3AD6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 88) = &a11;
  sub_29A3ACFD4((v11 - 88));
  _Unwind_Resume(a1);
}

void sub_29A3AD6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a4 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a4 + 12));
  *a4 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

_DWORD *sub_29A3AD7E0(_DWORD *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4) != -1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 20));
    result = sub_29A1DE3A4((a2 + 16));
    *(a2 + 4) = -1;
  }

  --*(v3 + 6);
  v4 = *(v3 + 4);
  v5 = (a2 - v4) >> 5;
  v6 = (v5 + 1) & *v3;
  v7 = (v4 + 32 * v6);
  v8 = *(v7 + 2);
  if (v8 >= 1)
  {
    do
    {
      v9 = v8 - 1;
      v10 = v4 + 32 * v5;
      v11 = *v7;
      *(v10 + 8) = *(v7 + 1);
      sub_29A1DDD84((v10 + 16), v7 + 4);
      result = sub_29A1DDDC0((v10 + 20), v7 + 5);
      *(v10 + 24) = v7[6];
      *v10 = v11;
      *(v10 + 4) = v9;
      v4 = *(v3 + 4);
      v12 = v4 + 32 * v6;
      if (*(v12 + 4) != -1)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v12 + 20));
        result = sub_29A1DE3A4((v12 + 16));
        *(v12 + 4) = -1;
        v4 = *(v3 + 4);
      }

      v5 = v6;
      v6 = *v3 & (v6 + 1);
      v7 = (v4 + 32 * v6);
      v8 = *(v7 + 2);
    }

    while (v8 > 0);
  }

  *(v3 + 73) = 1;
  return result;
}

uint64_t sub_29A3AD910(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a1 = a2;
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
    v5 = *(a2 + 12) + 1;
    v6 = *(a2 + 15) | 4;
  }

  else
  {
    v5 = 1;
    v6 = 4;
  }

  *(a1 + 8) = 1;
  *(a1 + 12) = v5;
  *(a1 + 14) = 4;
  *(a1 + 15) = v6;
  sub_29A1E21F4((a1 + 16), a3);
  sub_29A1E2240((a1 + 20), a3 + 1);
  return a1;
}

unint64_t sub_29A3AD994()
{
  v0 = operator new(0x2C00uLL);
  for (i = 0; i != 1408; i += 11)
  {
    sub_29A3ABCD0(&v0[i], 0, 0.0, 0.5);
    LOBYTE(v0[i + 10]) = 0;
  }

  v2 = 0;
  atomic_compare_exchange_strong(&qword_2A173FA70, &v2, v0);
  if (v2)
  {
    v3 = v0 + 1398;
    v4 = -11264;
    do
    {
      v6 = v3;
      sub_29A3AB79C(&v6);
      v3 -= 11;
      v4 += 88;
    }

    while (v4);
    operator delete(v0);
    return atomic_load(&qword_2A173FA70);
  }

  return v0;
}

void sub_29A3ADA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v12)
  {
    v14 = -v12;
    v15 = v11 - 80;
    do
    {
      a10 = v15;
      sub_29A3AB79C(&a10);
      v15 -= 88;
      v14 += 88;
    }

    while (v14);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3ADA80(uint64_t result, uint64_t a2, uint64_t *a3)
{
  *result = a2;
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
    v3 = *(a2 + 12) + 1;
    v4 = *(a2 + 15);
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  *(result + 8) = 1;
  *(result + 12) = v3;
  *(result + 14) = 6;
  *(result + 15) = v4;
  v5 = *a3;
  *(result + 16) = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

unint64_t sub_29A3ADAF0()
{
  v0 = operator new(0x2C00uLL);
  for (i = 0; i != 1408; i += 11)
  {
    sub_29A3ACE00(&v0[i], 0, 0.0, 0.5);
    LOBYTE(v0[i + 10]) = 0;
  }

  v2 = 0;
  atomic_compare_exchange_strong(&qword_2A173FA78, &v2, v0);
  if (v2)
  {
    v3 = v0 + 1398;
    v4 = -11264;
    do
    {
      v6 = v3;
      sub_29A3ACFD4(&v6);
      v3 -= 11;
      v4 += 88;
    }

    while (v4);
    operator delete(v0);
    return atomic_load(&qword_2A173FA78);
  }

  return v0;
}

void sub_29A3ADBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v12)
  {
    v14 = -v12;
    v15 = v11 - 80;
    do
    {
      a10 = v15;
      sub_29A3ACFD4(&a10);
      v15 -= 88;
      v14 += 88;
    }

    while (v14);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3ADBDC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a1 = a2;
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
    v5 = *(a2 + 12) + 1;
    v6 = *(a2 + 15) | 4;
  }

  else
  {
    v6 = 4;
    v5 = 1;
  }

  *(a1 + 8) = 1;
  *(a1 + 12) = v5;
  *(a1 + 14) = 5;
  *(a1 + 15) = v6;
  sub_29A1E21F4((a1 + 16), a3);
  sub_29A1E2240((a1 + 20), a3 + 1);
  return a1;
}

unint64_t sub_29A3ADC60()
{
  v0 = operator new(0x2C00uLL);
  for (i = 0; i != 1408; i += 11)
  {
    sub_29A3ABCD0(&v0[i], 0, 0.0, 0.5);
    LOBYTE(v0[i + 10]) = 0;
  }

  v2 = 0;
  atomic_compare_exchange_strong(&qword_2A173FA80, &v2, v0);
  if (v2)
  {
    v3 = v0 + 1398;
    v4 = -11264;
    do
    {
      v6 = v3;
      sub_29A3AB79C(&v6);
      v3 -= 11;
      v4 += 88;
    }

    while (v4);
    operator delete(v0);
    return atomic_load(&qword_2A173FA80);
  }

  return v0;
}

void sub_29A3ADD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v12)
  {
    v14 = -v12;
    v15 = v11 - 80;
    do
    {
      a10 = v15;
      sub_29A3AB79C(&a10);
      v15 -= 88;
      v14 += 88;
    }

    while (v14);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3ADD4C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  *result = a2;
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
    v3 = *(a2 + 12) + 1;
    v4 = *(a2 + 15);
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  *(result + 8) = 1;
  *(result + 12) = v3;
  *(result + 14) = 7;
  *(result + 15) = v4;
  v5 = *a3;
  *(result + 16) = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

unint64_t sub_29A3ADDBC()
{
  v0 = operator new(0x2C00uLL);
  for (i = 0; i != 1408; i += 11)
  {
    sub_29A3ADEA8(&v0[i], 0, 0.0, 0.5);
    LOBYTE(v0[i + 10]) = 0;
  }

  v2 = 0;
  atomic_compare_exchange_strong(&qword_2A173FA88, &v2, v0);
  if (v2)
  {
    v3 = v0 + 1398;
    v4 = -11264;
    do
    {
      v6 = v3;
      sub_29A3AE088(&v6);
      v3 -= 11;
      v4 += 88;
    }

    while (v4);
    operator delete(v0);
    return atomic_load(&qword_2A173FA88);
  }

  return v0;
}

void sub_29A3ADE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v12)
  {
    v14 = -v12;
    v15 = v11 - 80;
    do
    {
      a10 = v15;
      sub_29A3AE088(&a10);
      v15 -= 88;
      v14 += 88;
    }

    while (v14);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3ADEA8(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v16 = a2;
  v7 = sub_29A10A6B8(a1, &v16);
  v7[1] = 0;
  v8 = v16;
  v7[2] = 0;
  v7[3] = 0;
  v17 = (v7 + 1);
  v18 = 0;
  if (v8)
  {
    if (v8 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v9 = operator new(24 * v8);
    *(a1 + 8) = v9;
    *(a1 + 16) = v9;
    v10 = &v9[6 * v8];
    *(a1 + 24) = v10;
    v11 = v9;
    do
    {
      *v11 = 0;
      *(v11 + 2) = -1;
      *(v11 + 6) = 0;
      v11 += 6;
    }

    while (v11 != v10);
    *(a1 + 16) = v10;
  }

  else if (atomic_load_explicit(&qword_2A1741AC0, memory_order_acquire))
  {
    v9 = &dword_2A1741AD8;
  }

  else
  {
    sub_29B29D220(&v17);
    v9 = v17;
  }

  v12 = v16;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v12 > 0xAAAAAAAAAAAAAAALL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v12)
  {
    *(*(a1 + 16) - 18) = 1;
  }

  v13 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v13;
  *(a1 + 56) = (v13 * v12);
  return a1;
}

void sub_29A3AE058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A3AE088(va);
  _Unwind_Resume(a1);
}

void sub_29A3AE088(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; i -= 24)
    {
      if (*(i - 10) != -1)
      {
        *(i - 10) = -1;
      }
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

uint64_t sub_29A3AE0CC(uint64_t result)
{
  if (*(result + 4) != -1)
  {
    *(result + 4) = -1;
  }

  return result;
}

__n128 sub_29A3AE0E4(uint64_t *a1, uint64_t a2)
{
  sub_29A3ADEA8(&v21, a2, *(a1 + 16), *(a1 + 17));
  v3 = v24;
  v4 = a1[1];
  v5 = a1[2];
  if (v4 != v5)
  {
    while (1)
    {
      if (*(v4 + 2) == -1)
      {
        goto LABEL_12;
      }

      if (v3 > 0x100000000)
      {
        v6 = bswap64(0x9E3779B97F4A7C55 * *(v4 + 1));
      }

      else
      {
        v6 = *v4;
      }

      v7 = 0;
      v8 = v21;
      for (i = v6; ; i = v10 + 1)
      {
        v10 = i & v8;
        v11 = *(&v23 + 1) + 24 * v10;
        v12 = *(v11 + 4);
        if (v12 >= v7)
        {
          goto LABEL_10;
        }

        if (v12 == -1)
        {
          break;
        }

        v13 = *(v4 + 1);
        *(v4 + 1) = *(v11 + 8);
        *(v11 + 8) = v13;
        LODWORD(v13) = v4[4];
        v4[4] = *(v11 + 16);
        *(v11 + 16) = v13;
        *(v11 + 4) = v7;
        LODWORD(v13) = *v11;
        *v11 = v6;
        v7 = v12;
        LODWORD(v6) = v13;
LABEL_10:
        ++v7;
      }

      *(v11 + 8) = *(v4 + 2);
      *v11 = v6;
      *(v11 + 4) = v7;
LABEL_12:
      v4 += 6;
      if (v4 == v5)
      {
        v4 = a1[1];
        v5 = a1[2];
        v3 = v24;
        break;
      }
    }
  }

  v14 = *a1;
  *a1 = v21;
  v15 = v22;
  v16 = v23;
  v21 = v14;
  *&v22 = v4;
  *(&v22 + 1) = v5;
  *(a1 + 1) = v15;
  v17 = *(a1 + 3);
  *(a1 + 3) = v16;
  v18 = *(a1 + 5);
  a1[5] = v3;
  v23 = v17;
  v24 = v18;
  v19 = v25;
  v25 = a1[7];
  a1[7] = v19;
  *&v16 = v26;
  v26 = a1[8];
  a1[8] = v16;
  LOBYTE(v19) = v27;
  v27 = *(a1 + 72);
  *(a1 + 72) = v19;
  LOBYTE(v19) = v28;
  v28 = *(a1 + 73);
  *(a1 + 73) = v19;
  v29 = &v22;
  sub_29A3AE088(&v29);
  return result;
}

uint64_t sub_29A3AE27C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 4) != -1)
  {
    *(a2 + 4) = -1;
  }

  --*(result + 48);
  v2 = *(result + 32);
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v2) >> 3);
  v4 = (v3 + 1) & *result;
  v5 = (v2 + 24 * v4);
  v6 = *(v5 + 2);
  if (v6 >= 1)
  {
    do
    {
      v7 = v2 + 24 * v3;
      v8 = *v5;
      *(v7 + 8) = *(v5 + 2);
      *v7 = v8;
      *(v7 + 4) = v6 - 1;
      v2 = *(result + 32);
      v9 = v2 + 24 * v4;
      v11 = *(v9 + 4);
      v10 = (v9 + 4);
      if (v11 != -1)
      {
        *v10 = -1;
      }

      v3 = v4;
      v4 = *result & (v4 + 1);
      v5 = (v2 + 24 * v4);
      v6 = *(v5 + 2);
    }

    while (v6 > 0);
  }

  *(result + 73) = 1;
  return result;
}

char *sub_29A3AE33C()
{
  result = operator new(0x248uLL);
  v1 = 0;
  *(result + 67) = 0;
  *(result + 70) = 0;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  *(result + 136) = 0u;
  *(result + 152) = 0u;
  *(result + 168) = 0u;
  *(result + 184) = 0u;
  *(result + 200) = 0u;
  *(result + 216) = 0u;
  *(result + 232) = 0u;
  *(result + 248) = 0u;
  *(result + 8) = 0u;
  *(result + 264) = 0u;
  *(result + 280) = 0u;
  *(result + 296) = 0u;
  *(result + 312) = 0u;
  *(result + 328) = 0u;
  *(result + 344) = 0u;
  *(result + 360) = 0u;
  *(result + 376) = 0u;
  *(result + 392) = 0u;
  *(result + 408) = 0u;
  *(result + 424) = 0u;
  *(result + 440) = 0u;
  *(result + 456) = 0u;
  *(result + 472) = 0u;
  *(result + 488) = 0u;
  *(result + 504) = 0u;
  __dmb(0xBu);
  *result = 0;
  __dmb(0xBu);
  *(result + 65) = 0;
  *(result + 1) = result + 528;
  *(result + 33) = 0u;
  *(result + 34) = 0u;
  *(result + 35) = 0u;
  __dmb(0xBu);
  *result = 1;
  atomic_compare_exchange_strong(&unk_2A173FA90, &v1, result);
  if (v1)
  {
    v2 = sub_29A3AE420(result);
    operator delete(v2);
    return atomic_load(&unk_2A173FA90);
  }

  return result;
}

unint64_t *sub_29A3AE420(unint64_t *a1)
{
  v2 = *a1;
  __dmb(0xBu);
  __dmb(0xBu);
  a1[65] = 0;
  v4 = sub_29A0EC0EC(v2);
  for (i = a1 + 1; ; i[v4--] = 0)
  {
    v6 = 0;
    v7 = i[v4];
    v8 = v4 <= 1 ? 1 : v4;
    do
    {
      v9 = v7 + 24 * v6;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      if (v12 >= 0x40)
      {
        do
        {
          *v11 = *v10;
          sub_29A3AE514(v10, v3);
          v10 = *v11;
        }

        while (*v11 > 0x3F);
      }

      ++v6;
    }

    while (!(v6 >> v8));
    if (v4 < 8 && v4 != 1)
    {
      break;
    }

    tbb::internal::deallocate_via_handler_v3(i[v4], v3);
LABEL_13:
    ;
  }

  if (v4)
  {
    goto LABEL_13;
  }

  __dmb(0xBu);
  *a1 = 1;
  return a1;
}

uint64_t sub_29A3AE514(tbb::internal *this, void *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return tbb::internal::deallocate_via_handler_v3(this, a2);
}

uint64_t sub_29A3AE54C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v6 = sub_29A1089E0(a2, a3);
  *(a1 + 16) = v6;
  v7 = *(v6 + 16);
  __dmb(0xBu);
  if (v7 == 3 && (v8 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v8)))
  {
    *a1 = v8;
    v9 = *(a1 + 16);
    if (*(v9 + 16) == 3)
    {
      __dmb(0xBu);
      *(v9 + 16) = 0;
      if (a3)
      {
        v10 = HIDWORD(a3);
        if (!HIDWORD(a3))
        {
          v10 = a3;
        }

        v11 = 32 * (HIDWORD(a3) != 0);
        if (v10 >= 0x10000)
        {
          v10 >>= 16;
          v11 = (32 * (HIDWORD(a3) != 0)) | 0x10;
        }

        if (v10 >= 0x100)
        {
          v10 >>= 8;
          v11 |= 8u;
        }

        if (v10 >= 0x10)
        {
          v10 >>= 4;
          v11 |= 4u;
        }

        v12 = v10 >= 4;
        if (v10 >= 4)
        {
          LODWORD(v10) = v10 >> 2;
        }

        v13 = (v10 >> 1) & 1;
        if (v12)
        {
          v11 += 2;
        }

        v14 = v13 + v11;
      }

      else
      {
        v14 = -1;
      }

      v17 = ~(-1 << v14);
      sub_29A3AE54C(&v21, a2, v17 & a3);
      v18 = (v23 + 16);
      v19 = *(v23 + 16);
      __dmb(0xBu);
      if (v19 >= 0x40)
      {
        v20 = (2 * v17) | 1;
        while ((((v19[2] >> 3) ^ v19[2]) & v20) == a3)
        {
          if (v22 & 1) != 0 || (v22 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v21)))
          {
            *v18 = *v19;
            *v19 = *(v9 + 16);
            *(v9 + 16) = v19;
LABEL_29:
            v19 = *v18;
            if (*v18 <= 0x3FuLL)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v18 = (v23 + 16);
            v19 = *(v23 + 16);
            __dmb(0xBu);
            if (v19 < 0x40)
            {
              goto LABEL_32;
            }
          }
        }

        v18 = v19;
        goto LABEL_29;
      }

LABEL_32:
      sub_29A0F845C(&v21);
    }
  }

  else
  {
    v15 = (*(a1 + 16) + 8);
    *(a1 + 8) = 0;
    *a1 = v15;
    tbb::spin_rw_mutex_v3::internal_acquire_reader(v15);
  }

  return a1;
}

void sub_29A3AE73C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  sub_29A0F845C(v2);
  _Unwind_Resume(a1);
}

void *sub_29A3AE760(void *result, uint64_t a2)
{
  *result = a2;
  v2 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v3 = 1 << (8 * (a2 & 3));
  v4 = ~(255 << (8 * (a2 & 3)));
LABEL_2:
  v5 = *v2 & v4;
  while (1)
  {
    v6 = v5;
    atomic_compare_exchange_strong(v2, &v6, v5 | v3);
    if (v6 == v5)
    {
      return result;
    }

    if (*v2 != v5)
    {
      result = sched_yield();
      goto LABEL_2;
    }
  }
}

uint64_t *sub_29A3AE7D4(uint64_t **a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a1 + 1;
  v7 = a1[1];
  if (v7)
  {
    v9 = *a2;
    while (1)
    {
      while (1)
      {
        v10 = v7;
        v11 = v7[4];
        if (v9 >= v11)
        {
          break;
        }

        v7 = *v10;
        v8 = v10;
        if (!*v10)
        {
          goto LABEL_10;
        }
      }

      if (v11 >= v9)
      {
        break;
      }

      v7 = v10[1];
      if (!v7)
      {
        v8 = v10 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = a1 + 1;
LABEL_10:
    v12 = operator new(0x30uLL);
    v13 = *a4;
    v12[4] = *a3;
    v12[5] = v13;
    *a4 = 0;
    sub_29A00B204(a1, v10, v8, v12);
    return v12;
  }

  return v10;
}

std::string *sub_29A3AE89C(std::string *this, const std::string::value_type *a2)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  this[1].__r_.__value_.__r.__words[0] = size;
  std::string::append(this, ".");

  return sub_29A3AE8F8(this, a2);
}

std::string *sub_29A3AE8F8(std::string *a1, const std::string::value_type *a2)
{
  v2 = a1;
  result = std::string::append(a1, a2);
  size = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
  data = v2[1].__r_.__value_.__l.__data_;
  if ((size & 0x8000000000000000) != 0)
  {
    v6 = v2;
    v2 = v2->__r_.__value_.__r.__words[0];
    size = v6->__r_.__value_.__l.__size_;
  }

  v7 = v2 + data;
  v8 = v2 + size;
  v9 = v2 + size - 1;
  if (v7 != v8 && v9 > v7)
  {
    v11 = v7 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v9;
      *v9-- = v12;
    }

    while (v11++ < v9);
  }

  return result;
}

uint64_t sub_29A3AE970(_DWORD *a1, std::string *a2)
{
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a1);
  v5 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(a1 + 1);

  return sub_29A3A822C(Ptr, v5, a2);
}

BOOL sub_29A3AE9C8(_BOOL8 result, unint64_t *a2)
{
  v3 = result;
  v4 = *(result + 14);
  if (v4 > 4)
  {
    if (*(result + 14) > 6u)
    {
      if (v4 != 7)
      {
        if (v4 != 8)
        {
          return result;
        }

        v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v9)
        {
          v9 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        v10 = *(v9 + 8);
        goto LABEL_21;
      }
    }

    else
    {
      if (v4 == 5)
      {
        *a2 = qword_2A14F7C58;
        sub_29A3AECBC(a2, "]");
        sub_29A3AEE04((v3 + 16), a2);
        *a2 = qword_2A14F7C58;
        sub_29A3AECBC(a2, "[");
        v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v14)
        {
          v14 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        v15 = *(v14 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v15)
        {
          v16 = (v15 + 16);
          if (*(v15 + 39) < 0)
          {
            v16 = *v16;
          }
        }

        else
        {
          v16 = "";
        }

        *a2 = qword_2A14F7C58;
        sub_29A3AECBC(a2, v16);
        *a2 = qword_2A14F7C58;
        v8 = ".";
        goto LABEL_40;
      }

      if (v4 != 6)
      {
        return result;
      }
    }

LABEL_20:
    v10 = *(result + 16);
LABEL_21:
    v11 = v10 & 0xFFFFFFFFFFFFFFF8;
    if (v11)
    {
      v12 = (v11 + 16);
      if (*(v11 + 39) < 0)
      {
        v12 = *v12;
      }
    }

    else
    {
      v12 = "";
    }

    return sub_29A3AEDA0(a2, v12);
  }

  if (*(result + 14) > 2u)
  {
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        return result;
      }

      *a2 = qword_2A14F7C58;
      sub_29A3AECBC(a2, "]");
      sub_29A3AEE04((v3 + 16), a2);
      *a2 = qword_2A14F7C58;
      v8 = "[";
      goto LABEL_40;
    }

    goto LABEL_20;
  }

  if (v4 == 1)
  {
    v13 = *(result + 16) & 0xFFFFFFFFFFFFFFF8;
    if (v13)
    {
      v8 = (v13 + 16);
      if (*(v13 + 39) < 0)
      {
        v8 = *v8;
      }
    }

    else
    {
      v8 = "";
    }

    *a2 = qword_2A14F7C58;
    goto LABEL_40;
  }

  if (v4 == 2)
  {
    v5 = *(result + 16);
    v6 = *v5 & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (v6 + 16);
      if (*(v6 + 39) < 0)
      {
        v7 = *v7;
      }
    }

    else
    {
      v7 = "";
    }

    v17 = v5[1] & 0xFFFFFFFFFFFFFFF8;
    if (v17)
    {
      v18 = (v17 + 16);
      if (*(v17 + 39) < 0)
      {
        v18 = *v18;
      }
    }

    else
    {
      v18 = "";
    }

    *a2 = qword_2A14F7C58;
    result = sub_29A3AED24(a2, "{");
    if (result)
    {
      result = sub_29A3AED24(a2, v7);
      if (result)
      {
        result = sub_29A3AED24(a2, "=");
        if (result)
        {
          result = sub_29A3AED24(a2, v18);
          if (result)
          {
            v8 = "}";
LABEL_40:

            return sub_29A3AECBC(a2, v8);
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_29A3AECBC(unint64_t *a1, char *a2)
{
  result = sub_29A3AED24(a1, a2);
  if (result)
  {
    v4 = *a1;
    v5 = (qword_2A14F7C58 - 1);
    if (*a1 != qword_2A14F7C58 && v5 > v4)
    {
      v7 = v4 + 1;
      do
      {
        v8 = *(v7 - 1);
        *(v7 - 1) = *v5;
        *v5-- = v8;
      }

      while (v7++ < v5);
    }
  }

  return result;
}

BOOL sub_29A3AED24(uint64_t a1, char *__s)
{
  v4 = qword_2A14F7C58 + strlen(__s);
  if (v4 >= &qword_2A1741A98)
  {
    *(a1 + 8) = 1;
  }

  else
  {
    strcpy(qword_2A14F7C58, __s);
    qword_2A14F7C58 = v4;
  }

  return v4 < &qword_2A1741A98;
}

BOOL sub_29A3AEDA0(unint64_t *a1, char *a2)
{
  *a1 = qword_2A14F7C58;
  result = sub_29A3AED24(a1, ".");
  if (result)
  {

    return sub_29A3AECBC(a1, a2);
  }

  return result;
}

uint64_t sub_29A3AEE04(_DWORD *a1, uint64_t a2)
{
  Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr(a1);
  v5 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr(a1 + 1);

  return sub_29A3A84A4(Ptr, v5, a2);
}

uint64_t sub_29A3AEE5C(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

pxrInternal__aapl__pxrReserved__::SdfPathPattern *pxrInternal__aapl__pxrReserved__::SdfPathPattern::SdfPathPattern(pxrInternal__aapl__pxrReserved__::SdfPathPattern *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  *(this + 56) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return this;
}

{
  v2 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  *(this + 56) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathPattern::SdfPathPattern(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v4 + 1);
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPathPattern::SetPrefix(a1, a2);
  return a1;
}

void sub_29A3AEF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 32);
  sub_29A2176E4(&a10);
  sub_29A10C99C(&a10);
  sub_29A1DCEA8(v10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathPattern::SetPrefix(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  IsAbsoluteRootOrPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(this);
  if (v4 == v5)
  {
    if (!IsAbsoluteRootOrPrimPath && (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(this) & 1) == 0)
    {
      v14 = "sdf/pathPattern.cpp";
      v15 = "SetPrefix";
      v16 = 290;
      v17 = "SdfPathPattern &pxrInternal__aapl__pxrReserved__::SdfPathPattern::SetPrefix(SdfPath &&)";
      v18 = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(this, __p);
      if (v13 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v14, "Path pattern prefixes must be prim paths or prim-property paths: <%s> -- ignoring.", v9, v10);
      goto LABEL_14;
    }

LABEL_9:
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (IsAbsoluteRootOrPrimPath)
  {
    goto LABEL_9;
  }

  v14 = "sdf/pathPattern.cpp";
  v15 = "SetPrefix";
  v16 = 283;
  v17 = "SdfPathPattern &pxrInternal__aapl__pxrReserved__::SdfPathPattern::SetPrefix(SdfPath &&)";
  v18 = 0;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(this, __p);
  if (v13 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v14, "Path patterns with match components require prim paths or the absolute root path ('/') as a prefix: <%s> -- ignoring.", v7, v8);
LABEL_14:
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29A3AF108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::SdfPathPattern *pxrInternal__aapl__pxrReserved__::SdfPathPattern::SdfPathPattern(pxrInternal__aapl__pxrReserved__::SdfPathPattern *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A1E21F4(&v5, a2);
  sub_29A1E2240(&v6, a2 + 1);
  pxrInternal__aapl__pxrReserved__::SdfPathPattern::SdfPathPattern(this, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  sub_29A1DE3A4(&v5);
  return this;
}

{
  sub_29A1E21F4(&v5, a2);
  sub_29A1E2240(&v6, a2 + 1);
  pxrInternal__aapl__pxrReserved__::SdfPathPattern::SdfPathPattern(this, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  sub_29A1DE3A4(&v5);
  return this;
}

void sub_29A3AF19C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A3AF220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathPattern::SdfPathPattern(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v10 + 1, a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *a3;
  *(a1 + 24) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = *a4;
  *(a1 + 48) = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a1 + 56) = a5;
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathPattern::Everything(pxrInternal__aapl__pxrReserved__::SdfPathPattern *this)
{
  *&v13 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1741B80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741B80))
  {
    v2 = operator new(0x40uLL);
    v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v2);
    sub_29A1E21F4(&v6, v3);
    sub_29A1E2240(&v7, v3 + 1);
    __p = 0uLL;
    v10 = 0;
    v11 = -1;
    v12 = 0;
    memset(v5, 0, sizeof(v5));
    sub_29A3B0720(v5, &__p, &v13, 1uLL);
    memset(v4, 0, sizeof(v4));
    pxrInternal__aapl__pxrReserved__::SdfPathPattern::SdfPathPattern(v2, &v6, v5, v4, 0);
    v8 = v4;
    sub_29A2176E4(&v8);
    v4[0] = v5;
    sub_29A10C99C(v4);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }

    sub_29A1DCEA8(&v6);
    qword_2A1741B78 = v2;
    __cxa_guard_release(&qword_2A1741B80);
  }

  return qword_2A1741B78;
}

void sub_29A3AF424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a16);
  operator delete(v23);
  __cxa_guard_abort(&qword_2A1741B80);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathPattern::EveryDescendant(pxrInternal__aapl__pxrReserved__::SdfPathPattern *this)
{
  *&v13 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1741B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741B90))
  {
    v2 = operator new(0x40uLL);
    v3 = pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(v2);
    sub_29A1E21F4(&v6, v3);
    sub_29A1E2240(&v7, v3 + 1);
    __p = 0uLL;
    v10 = 0;
    v11 = -1;
    v12 = 0;
    memset(v5, 0, sizeof(v5));
    sub_29A3B0720(v5, &__p, &v13, 1uLL);
    memset(v4, 0, sizeof(v4));
    pxrInternal__aapl__pxrReserved__::SdfPathPattern::SdfPathPattern(v2, &v6, v5, v4, 0);
    v8 = v4;
    sub_29A2176E4(&v8);
    v4[0] = v5;
    sub_29A10C99C(v4);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }

    sub_29A1DCEA8(&v6);
    qword_2A1741B88 = v2;
    __cxa_guard_release(&qword_2A1741B90);
  }

  return qword_2A1741B88;
}

void sub_29A3AF5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a16);
  operator delete(v23);
  __cxa_guard_abort(&qword_2A1741B90);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathPattern::CanAppendChild(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v6 = *(a2 + 23);
  if (*(a1 + 56) == 1)
  {
    v7 = *a2;
    pxrInternal__aapl__pxrReserved__::SdfPathPattern::GetText(a1, &__p);
    if (a4)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v6 >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = v7;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot append child '%s' to a property path pattern '%s'", v8, v9, v11, p_p);
LABEL_10:
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = v20;
      *(a4 + 16) = v21;
    }
  }

  else
  {
    if (v6 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = a2[1];
    }

    if (v13)
    {
      return 1;
    }

    if (*a3 != a3[1])
    {
      return 1;
    }

    v14 = *(a1 + 16);
    if (*(a1 + 8) == v14 || *(v14 - 8) != -1)
    {
      return 1;
    }

    v15 = *(v14 - 9);
    if (v15 < 0)
    {
      v15 = *(v14 - 24);
    }

    if (v15)
    {
      return 1;
    }

    pxrInternal__aapl__pxrReserved__::SdfPathPattern::GetText(a1, &__p);
    if (a4)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &__p;
      }

      else
      {
        v18 = __p.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot append stretch to a path pattern that has trailing stretch '%s'", v16, v17, v18);
      goto LABEL_10;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29A3AF754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPathPattern::GetText(pxrInternal__aapl__pxrReserved__::SdfPathPattern *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  AsString = pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(this);
  if (*this == *AsString)
  {
    v5 = *(this + 1);
    if (v5 == *(this + 2))
    {
      goto LABEL_7;
    }

    if (*(v5 + 24) == -1)
    {
      v6 = *(v5 + 23);
      if (v6 < 0)
      {
        v6 = *(v5 + 8);
      }

      if (!v6)
      {
LABEL_7:
        AsString = MEMORY[0x29C2C1A60](a2, ".");
      }
    }
  }

  else
  {
    AsString = pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(this, __p);
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(a2->__r_.__value_.__l.__data_);
    }

    *&a2->__r_.__value_.__l.__data_ = *__p;
    a2->__r_.__value_.__r.__words[2] = v33;
  }

  v7 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(AsString);
  v8 = *(this + 2) - *(this + 1);
  if (v8)
  {
    v9 = 0;
    v29 = *this;
    v10 = v8 >> 5;
    v11 = *v7;
    while (1)
    {
      v12 = *(this + 1) + 32 * v9;
      if (*(v12 + 24) != -1)
      {
        break;
      }

      if ((*(v12 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v12 + 8))
        {
          break;
        }
      }

      else if (*(v12 + 23))
      {
        break;
      }

      if (v29 == v11 && v9 == 0)
      {
        v28 = "/";
      }

      else
      {
        v28 = "//";
      }

      std::string::append(a2, v28);
      v13 = v9 + 1;
LABEL_53:
      v9 = v13;
      if (v13 == v10)
      {
        return;
      }
    }

    v13 = v9 + 1;
    if (v9 + 1 == v10 && *(this + 56) == 1)
    {
      std::string::push_back(a2, 46);
      goto LABEL_26;
    }

    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = a2->__r_.__value_.__l.__size_;
      if (size)
      {
        v15 = a2->__r_.__value_.__r.__words[0];
LABEL_24:
        if (v15->__r_.__value_.__s.__data_[size - 1] != 47)
        {
          std::string::push_back(a2, 47);
        }
      }
    }

    else if (*(&a2->__r_.__value_.__s + 23))
    {
      v15 = a2;
      goto LABEL_24;
    }

LABEL_26:
    v16 = *(this + 1) + 32 * v9;
    v17 = *(v16 + 23);
    if (v17 >= 0)
    {
      v18 = (*(this + 1) + 32 * v9);
    }

    else
    {
      v18 = *v16;
    }

    if (v17 >= 0)
    {
      v19 = *(v16 + 23);
    }

    else
    {
      v19 = *(v16 + 8);
    }

    std::string::append(a2, v18, v19);
    v20 = *(*(this + 1) + 32 * v9 + 24);
    if (v20 != -1)
    {
      pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::GetText((*(this + 4) + 72 * v20), &v30);
      v21 = std::string::insert(&v30, 0, "{");
      v22 = *&v21->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v23 = std::string::append(&v31, "}");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v33 = v23->__r_.__value_.__r.__words[2];
      *__p = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (v33 >= 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = __p[0];
      }

      if (v33 >= 0)
      {
        v26 = HIBYTE(v33);
      }

      else
      {
        v26 = __p[1];
      }

      std::string::append(a2, v25, v26);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_53;
  }
}

void sub_29A3AFA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPathPattern::HasTrailingStretch(pxrInternal__aapl__pxrReserved__::SdfPathPattern *this)
{
  if (*(this + 56))
  {
    return 0;
  }

  v1 = *(this + 2);
  if (*(this + 1) == v1 || *(v1 - 8) != -1)
  {
    return 0;
  }

  v3 = *(v1 - 9);
  if (v3 < 0)
  {
    v3 = *(v1 - 24);
  }

  return v3 == 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathPattern::AppendChild(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  *__p = 0u;
  *v4 = 0u;
  memset(v5, 0, sizeof(v5));
  pxrInternal__aapl__pxrReserved__::SdfPathPattern::AppendChild(a1, a2, v4);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v5 + 1;
  sub_29A2177C4(&v8);
  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathPattern::AppendChild(uint64_t a1, uint64_t a2, void *a3)
{
  memset(&v25, 0, sizeof(v25));
  if ((pxrInternal__aapl__pxrReserved__::SdfPathPattern::CanAppendChild(a1, a2, a3, &v25) & 1) == 0)
  {
    __p[0] = "sdf/pathPattern.cpp";
    __p[1] = "AppendChild";
    v22 = 122;
    v23 = "SdfPathPattern &pxrInternal__aapl__pxrReserved__::SdfPathPattern::AppendChild(const std::string &, SdfPredicateExpression &&)";
    v24 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, &v25);
    goto LABEL_25;
  }

  v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1);
  if (!v6)
  {
    v7 = pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(v6);
    sub_29A2258F0(a1, v7);
    sub_29A225948((a1 + 4), v7 + 1);
  }

  IsValidIdentifier = pxrInternal__aapl__pxrReserved__::SdfPath::IsValidIdentifier(a2);
  if (IsValidIdentifier)
  {
    goto LABEL_5;
  }

  v9 = *(a2 + 23);
  if (v9 < 0)
  {
    if (*(a2 + 8) != 2)
    {
      goto LABEL_15;
    }

    v10 = *a2;
  }

  else
  {
    v10 = a2;
    if (v9 != 2)
    {
      goto LABEL_15;
    }
  }

  if (*v10 == 11822)
  {
LABEL_5:
    if (*a3 == a3[1] && *(a1 + 8) == *(a1 + 16))
    {
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v20);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, &v20, __p);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

LABEL_15:
  if (*a3 == a3[1])
  {
    v13 = -1;
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    sub_29A39A544((a1 + 32), a3);
    v13 = 954437177 * ((v12 - v11) >> 3);
  }

  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v22 = *(a2 + 16);
  }

  LODWORD(v23) = v13;
  BYTE4(v23) = IsValidIdentifier;
  v14 = *(a1 + 16);
  if (v14 >= *(a1 + 24))
  {
    v17 = sub_29A3B087C(a1 + 8, __p);
    v18 = SHIBYTE(v22);
    *(a1 + 16) = v17;
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v15 = *__p;
    *(v14 + 16) = v22;
    *v14 = v15;
    __p[1] = 0;
    v22 = 0;
    __p[0] = 0;
    v16 = BYTE4(v23);
    *(v14 + 24) = v23;
    *(v14 + 28) = v16;
    *(a1 + 16) = v14 + 32;
  }

LABEL_25:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_29A3AFDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::SdfPathPattern *pxrInternal__aapl__pxrReserved__::SdfPathPattern::AppendStretchIfPossible(pxrInternal__aapl__pxrReserved__::SdfPathPattern *this)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v2 = sub_29A3AFF74(this, &__p, 0);
  v3 = v2;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
    if (!v3)
    {
      return this;
    }
  }

  else if (!v2)
  {
    return this;
  }

  __p = 0;
  v6 = 0;
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::SdfPathPattern::AppendChild(this, &__p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  return this;
}

void sub_29A3AFF54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3AFF74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = 0;
  *__p = 0u;
  memset(v6, 0, sizeof(v6));
  CanAppendChild = pxrInternal__aapl__pxrReserved__::SdfPathPattern::CanAppendChild(a1, a2, __p, a3);
  v8 = v6 + 1;
  sub_29A2177C4(&v8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return CanAppendChild;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPathPattern::HasLeadingStretch(pxrInternal__aapl__pxrReserved__::SdfPathPattern *this)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(this);
  if (result)
  {
    v3 = *(this + 1);
    if (v3 != *(this + 2) && *(v3 + 24) == -1)
    {
      v4 = *(v3 + 23);
      if (v4 < 0)
      {
        v4 = *(v3 + 8);
      }

      return v4 == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdfPathPattern *pxrInternal__aapl__pxrReserved__::SdfPathPattern::RemoveTrailingStretch(pxrInternal__aapl__pxrReserved__::SdfPathPattern *this)
{
  if ((*(this + 56) & 1) == 0)
  {
    v2 = *(this + 2);
    if (*(this + 1) != v2 && *(v2 - 8) == -1)
    {
      if (*(v2 - 9) < 0)
      {
        if (*(v2 - 24))
        {
          return this;
        }

        v5 = *(v2 - 32);
        v4 = v2 - 32;
        operator delete(v5);
      }

      else
      {
        if (*(v2 - 9))
        {
          return this;
        }

        v4 = v2 - 32;
      }

      *(this + 2) = v4;
    }
  }

  return this;
}

pxrInternal__aapl__pxrReserved__::SdfPathPattern *pxrInternal__aapl__pxrReserved__::SdfPathPattern::RemoveTrailingComponent(pxrInternal__aapl__pxrReserved__::SdfPathPattern *this)
{
  v2 = *(this + 2);
  if (*(this + 1) == v2)
  {
    return this;
  }

  v3 = *(v2 - 8);
  if ((v3 & 0x80000000) == 0)
  {
    v5 = *(this + 5);
    v4 = this + 32;
    if (0x8E38E38E38E38E39 * ((v5 - *(this + 4)) >> 3) - 1 != v3)
    {
      v10[0] = "sdf/pathPattern.cpp";
      v10[1] = "RemoveTrailingComponent";
      v10[2] = 187;
      v10[3] = "SdfPathPattern &pxrInternal__aapl__pxrReserved__::SdfPathPattern::RemoveTrailingComponent()";
      v11 = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "static_cast<size_t>(predIndex) == _predExprs.size()-1", 0))
      {
        goto LABEL_5;
      }

      v5 = *(this + 5);
      v4 = this + 32;
    }

    v6 = v5 - 72;
    sub_29A21776C(v4, v5 - 72);
    *(this + 5) = v6;
  }

LABEL_5:
  if (*(this + 56) == 1)
  {
    *(this + 56) = 0;
  }

  v7 = *(this + 2);
  v8 = (v7 - 32);
  if (*(v7 - 9) < 0)
  {
    operator delete(*v8);
  }

  *(this + 2) = v8;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathPattern::CanAppendProperty(pxrInternal__aapl__pxrReserved__::SdfPathPattern *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v6 = *(a2 + 23);
  if (*(a1 + 56) == 1)
  {
    v7 = *a2;
    pxrInternal__aapl__pxrReserved__::SdfPathPattern::GetText(a1, &__p);
    if (a4)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v6 >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = v7;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot append additional property '%s' to property path pattern '%s'", v8, v9, v11, p_p);
LABEL_10:
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = v18;
      *(a4 + 16) = v19;
    }
  }

  else
  {
    if (v6 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = a2[1];
    }

    if (v13 || *a3 != a3[1])
    {
      return 1;
    }

    pxrInternal__aapl__pxrReserved__::SdfPathPattern::GetText(a1, &__p);
    if (a4)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &__p;
      }

      else
      {
        v16 = __p.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot append empty property element to path pattern '%s'", v14, v15, v16);
      goto LABEL_10;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29A3B02E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathPattern::AppendProperty(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  *__p = 0u;
  *v4 = 0u;
  memset(v5, 0, sizeof(v5));
  pxrInternal__aapl__pxrReserved__::SdfPathPattern::AppendProperty(a1, a2, v4);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v5 + 1;
  sub_29A2177C4(&v8);
  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathPattern::AppendProperty(uint64_t a1, uint64_t a2, void *a3)
{
  memset(&v26, 0, sizeof(v26));
  if (pxrInternal__aapl__pxrReserved__::SdfPathPattern::CanAppendProperty(a1, a2, a3, &v26))
  {
    v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1);
    if (!v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(v6);
      sub_29A2258F0(a1, v7);
      sub_29A225948((a1 + 4), v7 + 1);
    }

    IsValidNamespacedIdentifier = pxrInternal__aapl__pxrReserved__::SdfPath::IsValidNamespacedIdentifier(a2);
    v9 = IsValidNamespacedIdentifier;
    if (IsValidNamespacedIdentifier && *a3 == a3[1] && *(a1 + 8) == *(a1 + 16))
    {
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v21);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a1, &v21, __p);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    if ((*(a1 + 56) & 1) == 0)
    {
      v10 = *(a1 + 16);
      if (*(a1 + 8) != v10 && *(v10 - 8) == -1)
      {
        v11 = *(v10 - 9);
        if (v11 < 0)
        {
          v11 = *(v10 - 24);
        }

        if (!v11)
        {
          sub_29A008E78(__p, "*");
          pxrInternal__aapl__pxrReserved__::SdfPathPattern::AppendChild(a1, __p);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    if (*a3 == a3[1])
    {
      v14 = -1;
    }

    else
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      sub_29A39A544((a1 + 32), a3);
      v14 = 954437177 * ((v13 - v12) >> 3);
    }

    if (*(a2 + 23) < 0)
    {
      sub_29A008D14(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v23 = *(a2 + 16);
    }

    LODWORD(v24) = v14;
    BYTE4(v24) = v9;
    v15 = *(a1 + 16);
    if (v15 >= *(a1 + 24))
    {
      v18 = sub_29A3B087C(a1 + 8, __p);
      v19 = SHIBYTE(v23);
      *(a1 + 16) = v18;
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v16 = *__p;
      *(v15 + 16) = v23;
      *v15 = v16;
      __p[1] = 0;
      v23 = 0;
      __p[0] = 0;
      v17 = BYTE4(v24);
      *(v15 + 24) = v24;
      *(v15 + 28) = v17;
      *(a1 + 16) = v15 + 32;
    }

    *(a1 + 56) = 1;
  }

  else
  {
    __p[0] = "sdf/pathPattern.cpp";
    __p[1] = "AppendProperty";
    v23 = 244;
    v24 = "SdfPathPattern &pxrInternal__aapl__pxrReserved__::SdfPathPattern::AppendProperty(const std::string &, SdfPredicateExpression &&)";
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, &v26);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_29A3B0614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A3B0720(void *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29A3B07A8(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A3B0788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A10C99C(&a9);
  _Unwind_Resume(a1);
}

void *sub_29A3B07A8(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_29A008D14(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 6);
      *(v4 + 28) = *(v6 + 28);
      *(v4 + 6) = v9;
      v6 += 2;
      v4 = v8 + 4;
      v14 = v8 + 4;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_29A2187A4(v11);
  return v4;
}

uint64_t sub_29A3B087C(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[2 * v2];
  v18 = v8;
  v19 = v9;
  *(&v20 + 1) = &v8[2 * v7];
  v10 = *a2;
  *(v9 + 2) = *(a2 + 2);
  *v9 = v10;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v11 = *(a2 + 6);
  *(v9 + 28) = *(a2 + 28);
  *(v9 + 6) = v11;
  *&v20 = v9 + 2;
  v12 = *(a1 + 8);
  v13 = v9 + *a1 - v12;
  sub_29A3B09A4(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29A10CC84(&v18);
  return v17;
}

void sub_29A3B0990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A10CC84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3B09A4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 6);
      *(a4 + 28) = *(v6 + 28);
      *(a4 + 24) = v8;
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return sub_29A2187A4(v10);
}

void pxrInternal__aapl__pxrReserved__::Sdf_VisitPathTableInParallel(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *))
{
  v19 = *MEMORY[0x29EDCA608];
  v13[2] = a4;
  v14 = a1;
  v13[0] = &v14;
  v13[1] = a3;
  if (a2)
  {
    v6 = a2;
    if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1))
    {
      v16[0] = 0;
      v17 = 65539;
      v18 = 55;
      tbb::task_group_context::init(v16, v7, v8, v9);
      v15 = v16;
      v10 = tbb::internal::allocate_root_with_context_proxy::allocate(&v15, 0x38uLL);
      *(v10 - 11) = 1;
      *v10 = &unk_2A204C4D8;
      *(v10 + 8) = v6;
      *(v10 + 16) = xmmword_29B430070;
      *(v10 + 32) = v13;
      initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v10);
      *(v10 + 48) = 0;
      *(v10 + 52) = 5;
      *(v10 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
      (*(**(v10 - 40) + 16))(*(v10 - 40), v10, v10 - 8);
      tbb::task_group_context::~task_group_context(v16);
    }

    else
    {
      v12 = 0;
      do
      {
        if (*(v14 + v12))
        {
          a4(a3, v14 + v12);
        }

        v12 += 8;
        --v6;
      }

      while (v6);
    }
  }
}

void sub_29A3B0BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17)
{
  tbb::internal::allocate_root_with_context_proxy::free(&a13, v17);
  tbb::task_group_context::~task_group_context(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3B0C24(tbb::internal::allocate_continuation_proxy *this)
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
  v6 = *(this + 1) - *(this + 2);
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
        *v9 = &unk_2A204C4D8;
        *(v9 + 8) = v10;
        v12 = v11 + ((v10 - v11) >> 1);
        *(this + 1) = v12;
        *(v9 + 16) = v12;
        *(v9 + 24) = *(this + 24);
        v13 = *(this + 5) >> 1;
        *(this + 5) = v13;
        *(v9 + 40) = v13;
        *(v9 + 48) = 2;
        *(v9 + 52) = *(this + 52);
        (***(v9 - 40))();
        v5 = *(this + 3);
        v6 = *(this + 1) - *(this + 2);
        if (v5 >= v6)
        {
          break;
        }

        v14 = *(this + 5);
        if (v14 <= 1)
        {
          if (!v14 || !*(this + 52))
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
      sub_29A3B10B4(v28, *(this + 52));
      v15 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v15)
      {
        v16 = *(this + 52) + 1;
        *(this + 52) = v16;
        v17 = v28[2];
        if (v28[2] >= 2u)
        {
          v18 = v28[1];
          v19 = v28[v28[1] + 3];
          v20 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v20 - 11) = 1;
          *v20 = &unk_2A204C520;
          __dmb(0xBu);
          v20[8] = 0;
          *(this - 4) = v20;
          *(v20 - 3) = 2;
          v21 = tbb::internal::allocate_child_proxy::allocate(v20, 0x38uLL);
          v22 = &v29 + 24 * v18;
          *(v21 - 11) = 1;
          *v21 = &unk_2A204C4D8;
          v23 = *v22;
          *(v21 + 24) = *(v22 + 2);
          *(v21 + 8) = v23;
          v24 = *(this + 4);
          v25 = *(this + 5) >> 1;
          *(this + 5) = v25;
          *(v21 + 32) = v24;
          *(v21 + 40) = v25;
          *(v21 + 48) = 2;
          *(v21 + 52) = *(this + 52) - v19;
          (***(v21 - 40))();
          v17 = --v28[2];
          v28[1] = (v28[1] + 1) & 7;
          goto LABEL_25;
        }

        v26 = v28[0];
        if (v28[v28[0] + 3] < v16 && *(&v29 + 3 * v28[0] + 2) < *(&v29 + 3 * v28[0]) - *(&v29 + 3 * v28[0] + 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v26 = v28[0];
      }

      sub_29A3B1054(this, &v29 + 3 * v26);
      v17 = --v28[2];
      v28[0] = (v28[0] - 1) & 7;
LABEL_25:
      if (!v17 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29A3B1054(this, this + 1);
  return 0;
}

uint64_t sub_29A3B1054(uint64_t result, void *a2)
{
  v2 = a2[1];
  v3 = *a2 - v2;
  if (*a2 != v2)
  {
    v4 = *(result + 32);
    v5 = 8 * v2;
    do
    {
      v6 = **v4;
      if (*(v6 + v5))
      {
        result = (v4[2])(v4[1], v6 + v5);
      }

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

__n128 sub_29A3B10B4(unsigned __int8 *a1, unsigned int a2)
{
  v2 = a1[2];
  if (v2 <= 7)
  {
    v3 = a1 + 3;
    v4 = a1 + 16;
    v5 = *a1;
    v6 = a1[v5 + 3];
    do
    {
      if (a2 <= v6)
      {
        break;
      }

      v7 = &v4[24 * v5];
      if (v7[1].n128_u64[0] >= v7->n128_u64[0] - v7->n128_u64[1])
      {
        break;
      }

      v8 = (v5 + 1) & 7;
      v9 = &v4[24 * v8];
      v10 = v7[1].n128_u64[0];
      result = *v7;
      *v9 = *v7;
      v12 = v9->n128_u64[0];
      v13 = v9->n128_u64[1] + ((v9->n128_u64[0] - v9->n128_u64[1]) >> 1);
      *a1 = v8;
      v9[1].n128_u64[0] = v10;
      v7->n128_u64[0] = v12;
      v7->n128_u64[1] = v13;
      v9->n128_u64[0] = v13;
      v6 = v3[v5] + 1;
      v3[v5] = v6;
      v3[v8] = v6;
      v7[1].n128_u64[0] = v10;
      a1[2] = v2 + 1;
      LOBYTE(v5) = (v5 + 1) & 7;
    }

    while (v2++ < 7);
  }

  return result;
}

uint64_t *sub_29A3B115C()
{
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204C558, 0, 0, 0, 48, 0, 0);

  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204C568, 0, 0, 0, 24, 0, 0);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(uint64_t a1, uint64_t a2, _DWORD *a3, _OWORD *a4)
{
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v8);
  if (SHIBYTE(v9) < 0)
  {
    sub_29A008D14(a1, v8[0], v8[1]);
  }

  else
  {
    *a1 = *v8;
    *(a1 + 16) = v9;
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  sub_29A1E21F4((a1 + 24), a3);
  sub_29A1E2240((a1 + 28), a3 + 1);
  *(a1 + 32) = *a4;
  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(double *a1, double *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3) || *(v7 + 3) != *(v6 + 3))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator==(v7 + 4, v6 + 4);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPayload::operator<(const void **a1, const void **a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v2 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v2 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = memcmp(v5, v7, v8);
  v10 = v4 < v6;
  if (v9)
  {
    v10 = v9 < 0;
  }

  if (v10)
  {
    return 1;
  }

  if (v4 == v6 && !memcmp(v5, v7, v4))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return 0;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(_DWORD *result)
{
  *result = 0;
  return result;
}

{
  *result = 0;
  return result;
}

int *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(int *result, int a2, int a3)
{
  *result = a2 | (a3 << 8);
  return result;
}

{
  *result = a2 | (a3 << 8);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetHandle(uint64_t result)
{
  if (result)
  {
    v1 = 1;
    while (1)
    {
      v2 = result - pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::_regionStarts[v1];
      if (v2 >> 27 < 3)
      {
        break;
      }

      if (++v1 == 257)
      {
        return 0;
      }
    }

    return v1 | ((v2 / 0x18) << 8);
  }

  return result;
}

int *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(int *result, int *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(_DWORD *result)
{
  *result = 0;
  return result;
}

{
  *result = 0;
  return result;
}

int *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(int *result, int a2, int a3)
{
  *result = a2 | (a3 << 8);
  return result;
}

{
  *result = a2 | (a3 << 8);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetHandle(uint64_t result)
{
  if (result)
  {
    v1 = 1;
    while (1)
    {
      v2 = result - pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::_regionStarts[v1];
      if (v2 >> 27 < 3)
      {
        break;
      }

      if (++v1 == 257)
      {
        return 0;
      }
    }

    return v1 | ((v2 / 0x18) << 8);
  }

  return result;
}

int *pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(int *result, int *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

void sub_29A3B16F4()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C578, 0, "SdfPredicateExpression::FnCall::BareCall", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C578, 1, "SdfPredicateExpression::FnCall::ColonCall", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C578, 2, "SdfPredicateExpression::FnCall::ParenCall", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C588, 0, "SdfPredicateExpression::Call", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C588, 1, "SdfPredicateExpression::Not", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C588, 2, "SdfPredicateExpression::ImpliedAnd", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C588, 3, "SdfPredicateExpression::And", 0);

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C588, 4, "SdfPredicateExpression::Or", 0);
}

void pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::MakeNot(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_29A3A0614(a2, a1);
  sub_29A396AF0((a2 + 24));
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  v4 = 1;
  sub_29A00D250(a2, &v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::MakeOp@<X0>(int a1@<W0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a1;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0;
  sub_29A3A0614(a4, a3);
  sub_29A0A6994(a4, ((*(a4 + 8) - *a4) >> 2) + ((*(a2 + 8) - *a2) >> 2) + 1);
  sub_29A3A2998(a4, *(a4 + 8), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  sub_29A00D250(a4, &v9);
  sub_29A396AF0((a4 + 24));
  v7 = *(a2 + 24);
  *(a4 + 24) = v7;
  *(a4 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  return sub_29A3B270C((a4 + 24), *(&v7 + 1), a3[1].n128_i64[1], a3[2].n128_i64[0], 0x6DB6DB6DB6DB6DB7 * ((a3[2].n128_u64[0] - a3[1].n128_u64[1]) >> 3));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::MakeCall@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v5 = 0;
  sub_29A00D250(a2, &v5);
  return sub_29A3B19F4((a2 + 24), a1);
}

uint64_t sub_29A3B19F4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A3B2E08(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::WalkWithOpStack(void *a1, uint64_t a2, void (*a3)(uint64_t, void **), uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v5 = a1[1];
  if (*a1 != v5)
  {
    v10 = a1[3];
    v30 = *(v5 - 4);
    sub_29A3B2F80(&__src, 1uLL, &v30);
    v11 = __src;
    v12 = v32;
    if (__src != v32)
    {
      do
      {
        v13 = *(v12 - 2);
        if (v13)
        {
          a3(a2, &__src);
          v14 = *(v12 - 1) + 1;
          *(v12 - 1) = v14;
          if (v13 == 1)
          {
            v15 = 2;
          }

          else
          {
            v15 = 3;
          }
        }

        else
        {
          a5(a4, v10);
          v15 = 0;
          v10 += 56;
          v14 = *(v12 - 1);
        }

        if (v14 == v15)
        {
          v12 = v32 - 1;
        }

        else
        {
          v16 = v5 - 4;
          v17 = v32;
          if (v32 >= v33)
          {
            v18 = __src;
            v19 = v32 - __src;
            v20 = (v32 - __src) >> 3;
            v21 = v20 + 1;
            if ((v20 + 1) >> 61)
            {
              sub_29A00C9A4();
            }

            v22 = v33 - __src;
            if ((v33 - __src) >> 2 > v21)
            {
              v21 = v22 >> 2;
            }

            if (v22 >= 0x7FFFFFFFFFFFFFF8)
            {
              v21 = 0x1FFFFFFFFFFFFFFFLL;
            }

            if (v21)
            {
              v23 = sub_29A00C9BC(&__src, v21);
              v21 = v24;
              v18 = __src;
              v19 = v32 - __src;
            }

            else
            {
              v23 = 0;
            }

            v25 = (v32 - __src) >> 3;
            v26 = &v23[8 * v20];
            v27 = &v23[8 * v21];
            *v26 = *(v5 - 8);
            v12 = v26 + 8;
            v28 = &v26[-8 * v25];
            memcpy(v28, v18, v19);
            v29 = __src;
            __src = v28;
            v32 = v12;
            v33 = v27;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v32 = *(v5 - 8);
            v12 = v17 + 1;
          }

          v5 = v16;
        }

        v32 = v12;
        v11 = __src;
      }

      while (__src != v12);
    }

    if (v11)
    {
      v32 = v11;
      operator delete(v11);
    }
  }
}

void sub_29A3B1C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Walk(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v6[0] = a2;
  v6[1] = a3;
  v5 = v6;
  pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::WalkWithOpStack(a1, &v5, sub_29A3B20D0, a4, a5);
}

void pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::GetText(pxrInternal__aapl__pxrReserved__::SdfPredicateExpression *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*this != *(this + 1))
  {
    v3[0] = &v4;
    v3[1] = a2;
    v2 = a2;
    pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::WalkWithOpStack(this, v3, sub_29A3B20E4, &v2, sub_29A3B2258);
  }
}

void sub_29A3B1D14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, pxrInternal__aapl__pxrReserved__::SdfPredicateExpression *this)
{
  pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::GetText(this, __p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_29A00911C(a1, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_29A3B1DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::SdfPredicateExpression(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_29A3A0668(&v12);
  v6 = "<input>";
  if (*(a3 + 23) < 0)
  {
    if (*(a3 + 8))
    {
      v6 = *a3;
    }
  }

  else if (*(a3 + 23))
  {
    v6 = a3;
  }

  v18 = v6;
  sub_29A3A28E8(v8, a2, &v18);
  if ((sub_29A3B26C4(v8, &v12) & 1) == 0)
  {
    sub_29A3B2588(v8);
  }

  sub_29A229D90(v8);
  sub_29A3A04FC(&v12, v8);
  sub_29A3A05A0(a1, v8);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  v18 = &v9;
  sub_29A2177C4(&v18);
  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  v8[0] = &v17;
  sub_29A217894(v8);
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  v8[0] = &v12;
  sub_29A3A06F4(v8);
  return a1;
}

void sub_29A3B1F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::string::value_type *__p, std::string::size_type a22, int a23, __int16 a24, char a25, unsigned __int8 a26)
{
  sub_29A399F64(&__p);
  if (a2 == 1)
  {
    v30 = __cxa_begin_catch(a1);
    v31 = (*(*v30 + 16))(v30);
    sub_29A008E78(&a9, v31);
    std::string::append(&a9, " -- ");
    v32 = v30[2];
    v33 = *(v32 + 32);
    v34 = *(v32 + 40);
    if (v33 != v34)
    {
      v35 = 1;
      do
      {
        if ((v35 & 1) == 0)
        {
          std::string::append(&a9, ", ");
        }

        sub_29A226CA0(v33);
        if ((a26 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((a26 & 0x80u) == 0)
        {
          v37 = a26;
        }

        else
        {
          v37 = a22;
        }

        std::string::append(&a9, p_p, v37);
        if (a26 < 0)
        {
          operator delete(__p);
        }

        v35 = 0;
        v33 += 48;
      }

      while (v33 != v34);
    }

    if (*(v26 + 71) < 0)
    {
      operator delete(*v27);
    }

    *v27 = a9;
    *(v27 + 16) = a10;
    __cxa_end_catch();
    JUMPOUT(0x29A3B1EECLL);
  }

  if (*(v26 + 71) < 0)
  {
    operator delete(*v27);
  }

  *&a9 = v26 + 24;
  sub_29A2177C4(&a9);
  v38 = *v26;
  if (*v26)
  {
    *(v26 + 8) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

void sub_29A3B20E4(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v5 = *(v3 - 8);
  v4 = *(v3 - 4);
  v6 = v3 - *a2;
  if (v6 <= 8)
  {
    v9 = 0;
    v10 = v4 == 0;
  }

  else
  {
    v7 = *a2 + v6;
    v8 = *(v7 - 16);
    if (v8 >= v5)
    {
      v14 = *(v7 - 12);
      v9 = v8 == v5 && v14 == 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = v4 == 0;
    if (v9 && !v4)
    {
      std::string::push_back(*(a1 + 8), 40);
      if (v5 != 1)
      {
        return;
      }

      v9 = 1;
LABEL_27:
      std::string::append(*(a1 + 8), "not ");
      if (!v9 || v4 != 1)
      {
        return;
      }

      goto LABEL_29;
    }
  }

  if (v5 != 1)
  {
    if (v4 == 1)
    {
      v12 = *(a1 + 8);
      switch(v5)
      {
        case 4:
          v13 = " or ";
          break;
        case 3:
          v13 = " and ";
          break;
        case 2:
          v13 = " ";
          break;
        default:
          v13 = "<unknown>";
          break;
      }

      std::string::append(v12, v13);
      return;
    }

    if (v4 != 2 || !v9)
    {
      return;
    }

LABEL_29:
    v16 = *(a1 + 8);

    std::string::push_back(v16, 41);
    return;
  }

  if (v10)
  {
    goto LABEL_27;
  }

  if (v4 == 1 && v9)
  {
    goto LABEL_29;
  }
}

void sub_29A3B2258(std::string **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 31);
  v6 = *(a2 + 16);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 8);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  std::string::append(v4, v7, v8);
  if (*a2 == 2)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v15 = *(a2 + 32);
    for (i = *(a2 + 40); v15 != i; v15 += 40)
    {
      if (*(v15 + 23) < 0)
      {
        if (*(v15 + 8))
        {
          v17 = *v15;
          v18 = "=";
        }

        else
        {
          v17 = "";
          v18 = "";
        }
      }

      else
      {
        if (*(v15 + 23))
        {
          v17 = v15;
        }

        else
        {
          v17 = "";
        }

        if (*(v15 + 23))
        {
          v18 = "=";
        }

        else
        {
          v18 = "";
        }
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::StringFromVtValue((v15 + 24), &v24);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v24;
      }

      else
      {
        v21 = v24.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s%s%s", v19, v20, v17, v18, v21);
      sub_29A091654(&v26, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    std::string::append(*a1, "(");
    if (v26 != v27)
    {
      pxrInternal__aapl__pxrReserved__::TfStringJoin(", ", &v26, &__p);
      v22 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      std::string::append(*a1, v22, v23);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    std::string::append(*a1, ")");
  }

  else
  {
    if (*a2 != 1)
    {
      return;
    }

    v26 = 0;
    v27 = 0;
    v28 = 0;
    v10 = *(a2 + 32);
    v9 = *(a2 + 40);
    if (v10 != v9)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::StringFromVtValue((v10 + 24), &__p);
        sub_29A091654(&v26, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v10 += 40;
      }

      while (v10 != v9);
      if (v26 != v27)
      {
        pxrInternal__aapl__pxrReserved__::TfStringJoin(",", &v26, &v24);
        v11 = std::string::insert(&v24, 0, ":");
        v12 = *&v11->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(*a1, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  __p.__r_.__value_.__r.__words[0] = &v26;
  sub_29A012C90(&__p);
}

void sub_29A3B250C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  __p = &a24;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void sub_29A3B2588(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x88uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B48B120;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::SdfPredicateExpressionParser::PredExpr, PXR_INTERNAL_NS_pegtl::eolf>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A3B2664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A3B26C4(void *a1, std::string *a2)
{
  if (sub_29A39A040(a1, a2))
  {
    v3 = sub_29A229D1C(a1);
    v5 = v3 | (v4 == 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_29A3B270C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 3) >= a5)
    {
      v18 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 3) >= a5)
      {
        v20 = 56 * a5;
        sub_29A3B2938(a1, a2, a1[1], a2 + 56 * a5);
        v19 = v20 + v7;
      }

      else
      {
        a1[1] = sub_29A3B2A94(a1, v18 + a3, a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        sub_29A3B2938(a1, v5, v10, v5 + 56 * a5);
        v19 = v18 + v7;
      }

      sub_29A3B2C08(v25, v7, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 3);
    if (v12 > 0x492492492492492)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x249249249249249)
    {
      v15 = 0x492492492492492;
    }

    else
    {
      v15 = v12;
    }

    v16 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 3);
    v25[4] = a1;
    if (v15)
    {
      v17 = sub_29A040BCC(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[56 * v16];
    v25[0] = v17;
    v25[1] = v21;
    v25[3] = &v17[56 * v15];
    v22 = &v21[56 * a5];
    do
    {
      *v21 = *v7;
      v23 = *(v7 + 8);
      *(v21 + 3) = *(v7 + 24);
      *(v21 + 8) = v23;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      *(v21 + 4) = 0;
      *(v21 + 5) = 0;
      *(v21 + 6) = 0;
      *(v21 + 2) = *(v7 + 32);
      *(v21 + 6) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v21 += 56;
      v7 += 56;
    }

    while (v21 != v22);
    v25[2] = v22;
    v5 = sub_29A3B29D8(a1, v25, v5);
    sub_29A3B2D8C(v25);
  }

  return v5;
}

uint64_t sub_29A3B2938(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      v10 = *(v9 + 8);
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 8) = v10;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 8) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = *(v9 + 32);
      *(v8 + 48) = *(v9 + 48);
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      v9 += 56;
      v8 += 56;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29A3B2B44(&v12, a2, v7, v6);
}

uint64_t sub_29A3B29D8(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_29A3B2CAC(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_29A3B2CAC(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_29A3B2A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      *v4 = *a2;
      v5 = *(a2 + 8);
      *(v4 + 24) = *(a2 + 24);
      *(v4 + 8) = v5;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      *(v4 + 32) = *(a2 + 32);
      *(v4 + 48) = *(a2 + 48);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      a2 += 56;
      v4 += 56;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29A218B44(v7);
  return v4;
}

uint64_t sub_29A3B2B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      *(a4 + v7 - 56) = *(a3 + v7 - 56);
      v10 = (a4 + v7 - 48);
      if (*(a4 + v7 - 25) < 0)
      {
        operator delete(*v10);
      }

      v11 = *(v8 - 48);
      *(a4 + v7 - 32) = *(v8 - 32);
      *v10 = v11;
      *(v8 - 25) = 0;
      *(v8 - 48) = 0;
      sub_29A396D70((v9 - 24));
      *(v9 - 24) = *(v8 - 24);
      *(v9 - 8) = *(v8 - 8);
      *(v8 - 24) = 0;
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      v7 -= 56;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t sub_29A3B2C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      v7 = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      *(a4 + 8) = v7;
      *(v5 + 31) = 0;
      *(v5 + 8) = 0;
      sub_29A396D70((a4 + 32));
      *(a4 + 32) = *(v5 + 32);
      *(a4 + 48) = *(v5 + 48);
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      v5 += 56;
      a4 += 56;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_29A3B2CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29A21784C(a1, v5);
      v5 += 56;
    }
  }

  return sub_29A218B44(v10);
}

void **sub_29A3B2D8C(void **a1)
{
  sub_29A3B2DC0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A3B2DC0(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_29A21784C(v4, i - 56);
  }
}

uint64_t sub_29A3B2E08(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[56 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[56 * v6];
  *v8 = *a2;
  v9 = *(a2 + 8);
  *(v8 + 3) = *(a2 + 24);
  *(v8 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 2) = *(a2 + 32);
  *(v8 + 6) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *&v18 = v8 + 56;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29A3B2CAC(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A3B2D8C(&v16);
  return v15;
}

void sub_29A3B2F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3B2D8C(va);
  _Unwind_Resume(a1);
}

void *sub_29A3B2F80(void *a1, unint64_t a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v6 = a1[1];
    v7 = &v6[a2];
    v8 = 8 * a2;
    do
    {
      *v6++ = *a3;
      v8 -= 8;
    }

    while (v8);
    a1[1] = v7;
  }

  return a1;
}

void sub_29A3B2FE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3B3004()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C598, 0, "SdfPredicateFunctionResult::ConstantOverDescendants", 0);

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204C598, 1, "SdfPredicateFunctionResult::MayVaryOverDescendants", 0);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPredicateParamNamesAndDefaults::_CountDefaults(pxrInternal__aapl__pxrReserved__::SdfPredicateParamNamesAndDefaults *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (*this == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (*(v1 + 32))
    {
      ++result;
    }

    v1 += 40;
  }

  while (v1 != v2);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPredicateParamNamesAndDefaults::CheckValidity(pxrInternal__aapl__pxrReserved__::SdfPredicateParamNamesAndDefaults *this)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v18);
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    v4 = 0;
    do
    {
      if ((*(v2 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v2 + 8))
        {
LABEL_7:
          v13 = "sdf/predicateLibrary.cpp";
          v14 = "CheckValidity";
          v15 = 45;
          v16 = "BOOL pxrInternal__aapl__pxrReserved__::SdfPredicateParamNamesAndDefaults::CheckValidity() const";
          v17 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v13, 1, "Specified empty predicate expression parameter name");
        }
      }

      else if (!*(v2 + 23))
      {
        goto LABEL_7;
      }

      v5 = *(v2 + 32);
      if (v4)
      {
        if (!v5)
        {
          v13 = "sdf/predicateLibrary.cpp";
          v14 = "CheckValidity";
          v15 = 53;
          v16 = "BOOL pxrInternal__aapl__pxrReserved__::SdfPredicateParamNamesAndDefaults::CheckValidity() const";
          v17 = 0;
          v6 = v2;
          if (*(v2 + 23) < 0)
          {
            v6 = *v2;
          }

          v7 = v4;
          if (*(v4 + 23) < 0)
          {
            v7 = *v4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v13, 1, "Non-default predicate function parameter '%s' follows default parameter '%s'", v6, v7);
        }
      }

      else if (v5)
      {
        v4 = v2;
      }

      else
      {
        v4 = 0;
      }

      v2 += 40;
    }

    while (v2 != v3);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v9 = v18;
  v10 = atomic_load((v8 + 144));
  v11 = v9 >= v10 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v18, v8);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v18);
  return v11;
}

void sub_29A3B3214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A3B3230()
{
  v1 = nullsub_248;
  var8.__vftable = &unk_2A204A980;
  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204AA18, &var8, &v1, 1, 8, 0, 0);
}

void sub_29A3B32A0()
{
  v0 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204C5A8, 0, 0, 0, 24, 0, 0);
  v1 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v0);
  sub_29A008E78(__p, "SdfPrimSpecHandleVector");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v0, v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204C5B8, 0, 0, 0, 24, 0, 0);
  v3 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v2);
  sub_29A008E78(__p, "map<string, SdfVariantSetSpecHandle>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v2, v3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A3B3384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::New(uint64_t a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  v6 = sub_29B293A0C(a1);
  if (v7 & 1 | v6)
  {
    sub_29A1DA6E4(a1);
  }

  v10 = 0;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v9);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_New(&v10, &v9, a2, &v8, a3);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v10);
}

void sub_29A3B347C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a4 & 7) != 0)
  {
    atomic_fetch_add_explicit((a4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_New(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::SdfTokens_StaticTokenType *a4@<X3>, void *a5@<X8>)
{
  v29 = a3;
  IsDormant = pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1);
  if (IsDormant)
  {
    v24 = "sdf/primSpec.cpp";
    v25 = "_New";
    v26 = 85;
    v27 = "static SdfPrimSpecHandle pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_New(const SdfPrimSpecHandle &, const TfToken &, SdfSpecifier, const TfToken &)";
    v28 = 0;
    v11 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v11)
    {
      v12 = (v11 + 16);
      if (*(v11 + 39) < 0)
      {
        v12 = *v12;
      }
    }

    else
    {
      v12 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 1, "Cannot create prim '%s' because the parent prim is NULL", v12);
  }

  else
  {
    if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(IsDormant);
    }

    if (MEMORY[0x29C2BAEA0](EmptyString))
    {
      pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(&v22);
      if (!*a4 && !a3)
      {
        a4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfTokens);
        if (!a4)
        {
          a4 = sub_29A1EB86C(&pxrInternal__aapl__pxrReserved__::SdfTokens);
        }
      }

      v17 = *a4;
      v21 = v17;
      if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v21 = v17 & 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(a1, &v24);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, &v18);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v18, a2, &v20);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
      sub_29A1DE3A4(&v18);
      pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::CreateSpec();
    }

    v24 = "sdf/primSpec.cpp";
    v25 = "_New";
    v26 = 92;
    v27 = "static SdfPrimSpecHandle pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_New(const SdfPrimSpecHandle &, const TfToken &, SdfSpecifier, const TfToken &)";
    v28 = 0;
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, &v21);
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v21, a2, &v22);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v22);
    v15 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v15)
    {
      v16 = (v15 + 16);
      if (*(v15 + 39) < 0)
      {
        v16 = *v16;
      }
    }

    else
    {
      v16 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 3, "Cannot create prim '%s' because '%s' is not a valid name", Text, v16);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23);
    sub_29A1DE3A4(&v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1);
    sub_29A1DE3A4(&v21);
  }

  *a5 = 0;
}

void sub_29A3B37E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DD644(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::New(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_New(a1, &v7, a2, &v6, a3);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29A3B3984(const char **a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, int *a4)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = &off_2A2049888 + 3;
  v5 = *a4;
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(a1, a2, a3, &v5);
  return sub_29A186B14(&v5);
}

void sub_29A3B39FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  SpecType = pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(this);
  if (SpecType == 7)
  {
    v7[0] = "sdf/primSpec.cpp";
    v7[1] = "_ValidateEdit";
    v7[2] = 128;
    v7[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(const TfToken &) const";
    v8 = 0;
    v4 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (v4 + 16);
      if (*(v4 + 39) < 0)
      {
        v5 = *v5;
      }
    }

    else
    {
      v5 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Cannot edit %s on a pseudo-root", v5);
  }

  return SpecType != 7;
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetName(pxrInternal__aapl__pxrReserved__::SdfPrimSpec *this)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v3);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v4);
  sub_29A1DE3A4(&v3);
  return Name;
}

void sub_29A3B3B2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameToken@<X0>(pxrInternal__aapl__pxrReserved__::SdfPrimSpec *this@<X0>, atomic_uint **a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v7);
  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v7);
  v4 = *NameToken;
  *a2 = *NameToken;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v5;
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29A3B3BB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::CanSetName(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, uint64_t a2, uint64_t a3)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(a1) != 7)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::CanRename();
  }

  if (a3)
  {
    MEMORY[0x29C2C1A60](a3, "The pseudo-root cannot be renamed");
    LOBYTE(a3) = 0;
  }

  return a3 & 1;
}

void sub_29A3B3C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetName(pxrInternal__aapl__pxrReserved__::SdfPrimSpec *a1)
{
  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v4);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v3);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameToken(a1, &v2);
  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::Rename();
}

void sub_29A3B3E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, uint64_t a15, uint64_t a16)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a12);
  sub_29A1DCEA8(&a14);
  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DD644((v16 - 40));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameChildrenOrder(atomic_uint **this@<X0>, uint64_t a2@<X8>)
{
  sub_29A2F0678(this, &v4);
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfGetNameOrderProxy(&v5, v3 + 28, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
}

void sub_29A3B3FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a10);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  _Unwind_Resume(a1);
}

void sub_29A3B3FEC(unsigned int *a1, void *a2)
{
  v3 = sub_29A3BB940(a1, a2);
  if (v3 == -1)
  {
    if (*a1)
    {
      v4 = (*(**a1 + 112))(*a1, a1[4]);
      v5 = (v4[1] - *v4) >> 3;
    }

    else
    {
      v5 = 0;
    }

    memset(v6, 0, sizeof(v6));
    sub_29A3BB998(a1, v5, 0, v6);
    v7 = v6;
    sub_29A124AB0(&v7);
  }

  else
  {

    sub_29A3B4DC8(a1, v3);
  }
}

void sub_29A3B40B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29A3B40CC(unsigned int *a1, void *a2, uint64_t *a3)
{
  v5 = sub_29A3BB940(a1, a2);
  if (v5 == -1)
  {
    if (*a1)
    {
      v7 = (*(**a1 + 112))(*a1, a1[4]);
      v8 = (v7[1] - *v7) >> 3;
    }

    else
    {
      v8 = 0;
    }

    memset(v9, 0, sizeof(v9));
    sub_29A3BB998(a1, v8, 0, v9);
    v10 = v9;
  }

  else
  {
    v6 = v5;
    sub_29A34A330(v9, 1uLL, a3);
    sub_29A3BB998(a1, v6, 1, v9);
    v10 = v9;
  }

  sub_29A124AB0(&v10);
}

void sub_29A3B41AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29A3B4218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameParent@<X0>(pxrInternal__aapl__pxrReserved__::SdfPrimSpec *this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v6);
  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath(&v6))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, v5);
    sub_29A1DA6E4(v5);
  }

  *a2 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29A3B430C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_29A1DCEA8(va1);
  sub_29A1DCEA8(va);
  v3 = v9;
  if (v9)
  {
    if (atomic_fetch_add_explicit((v9 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  sub_29A1DCEA8(va2);
  _Unwind_Resume(a1);
}

void sub_29A3B443C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  sub_29A1DCEA8(&a11);
  sub_29A1DCEA8(&a9);
  v14 = a13;
  if (a13)
  {
    if (atomic_fetch_add_explicit((a13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v14 + 8))(v14);
    }
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameChildren(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v4);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v3);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
  {
    sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::Sdf_Children();
}

void sub_29A3B453C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetNameChildren(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(a1, &v3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, &v2);
  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::SetChildren();
}

void sub_29A3B460C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::InsertNameChild(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(a1, &v3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, &v2);
  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::InsertChild();
}

void sub_29A3B46EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::RemoveNameChild(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  v3 = sub_29A2F6760(a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v3, &v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(a1, &v4);
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
}

void sub_29A3B4968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, atomic_uint *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPrimSpec::HasNameChildrenOrder(atomic_uint **this)
{
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameChildrenOrder(this, v3);
  v1 = sub_29A347D54(v3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return v1 != 0;
}

void sub_29A3B4ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetNameChildrenOrder(atomic_uint **a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameChildrenOrder(a1, &v3);
  sub_29A3B4B54(&v3, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29A3B4B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_29A3B4B54(unsigned int *a1, void *a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = (*(*v4 + 112))(v4, a1[4]);
    v6 = (v5[1] - *v5) >> 3;
  }

  else
  {
    v6 = 0;
  }

  sub_29A3BB998(a1, 0, v6, a2);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::InsertInNameChildrenOrder(atomic_uint **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameChildrenOrder(this, &v5);
  sub_29A3B4C38(&v5, a3, a2);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29A3B4C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3B4C38(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  if (a2 == -1)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = (*(*v5 + 112))(v5, a1[4]);
      a2 = (v6[1] - *v6) >> 3;
    }

    else
    {
      LODWORD(a2) = 0;
    }
  }

  v7 = a2;
  sub_29A34A330(v8, 1uLL, a3);
  sub_29A3BB998(a1, v7, 0, v8);
  v9 = v8;
  sub_29A124AB0(&v9);
}

void sub_29A3B4CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::RemoveFromNameChildrenOrder(atomic_uint **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameChildrenOrder(this, &v3);
  sub_29A3B3FEC(&v3, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29A3B4D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::RemoveFromNameChildrenOrderByIndex(atomic_uint **this, int a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameChildrenOrder(this, &v3);
  sub_29A3B4DC8(&v3, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29A3B4DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3B4DC8(unsigned int *a1, uint64_t a2)
{
  memset(v2, 0, sizeof(v2));
  sub_29A3BB998(a1, a2, 1, v2);
  v3 = v2;
  sub_29A124AB0(&v3);
}

void sub_29A3B4E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A124AB0(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::ApplyNameChildrenOrder(atomic_uint **a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameChildrenOrder(a1, &v3);
  sub_29A3B4E8C(&v3, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29A3B4E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3B4E8C(uint64_t *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  result = sub_29A3BBBD4(a1);
  if (result)
  {
    v5 = *a1;
    v7 = 0;
    (*(*v5 + 72))(v5, a2, v6);
    return sub_29A37223C(v6);
  }

  return result;
}

void sub_29A3B4F28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A37223C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetProperties(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v4);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v3);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
  {
    sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::Sdf_Children();
}

void sub_29A3B4FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetProperties(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v2)
  {
    v2 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v2 + 40));
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v5);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v4);
    pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::SetChildren();
  }

  return result;
}

void sub_29A3B50D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::InsertProperty(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v2)
  {
    v2 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v2 + 40)))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v5);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v4);
    pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::InsertChild();
  }

  return 0;
}

void sub_29A3B51F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPrimSpec::RemoveProperty(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v4)
  {
    v4 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 40));
  if (result)
  {
    v6 = sub_29A1F190C(a2);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v6, &v8);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v7);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  return result;
}

void sub_29A3B549C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, atomic_uint *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetAttributes(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v4);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v3);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
  {
    sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  sub_29A3BBC58();
}

void sub_29A3B565C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetRelationships(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v4);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v3);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
  {
    sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  sub_29A3BBD04();
}

void sub_29A3B5750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPropertyOrder(atomic_uint **this@<X0>, uint64_t a2@<X8>)
{
  sub_29A2F0678(this, &v4);
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfGetNameOrderProxy(&v5, v3 + 35, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
}

void sub_29A3B583C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a10);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPrimSpec::HasPropertyOrder(atomic_uint **this)
{
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPropertyOrder(this, v3);
  v1 = sub_29A347D54(v3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return v1 != 0;
}

void sub_29A3B58A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetPropertyOrder(atomic_uint **this, void *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v4)
  {
    v4 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 40)))
  {
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPropertyOrder(this, &v5);
    sub_29A3B4B54(&v5, a2);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void sub_29A3B593C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::InsertInPropertyOrder(atomic_uint **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v6)
  {
    v6 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v6 + 40)))
  {
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPropertyOrder(this, &v7);
    sub_29A3B4C38(&v7, a3, a2);
    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }
}

void sub_29A3B59E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::RemoveFromPropertyOrder(atomic_uint **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v4)
  {
    v4 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 40)))
  {
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPropertyOrder(this, &v5);
    sub_29A3B3FEC(&v5, a2);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void sub_29A3B5A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::RemoveFromPropertyOrderByIndex(atomic_uint **this, int a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v4)
  {
    v4 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 40)))
  {
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPropertyOrder(this, &v5);
    sub_29A3B4DC8(&v5, a2);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void sub_29A3B5B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::ApplyPropertyOrder(atomic_uint **this, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v4)
  {
    v4 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 40)))
  {
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPropertyOrder(this, &v5);
    sub_29A3B4E8C(&v5, a2);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void sub_29A3B5BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetObjectAtPath(pxrInternal__aapl__pxrReserved__::SdfPrimSpec *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, v7);
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(a2, v7, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v7 + 1);
    sub_29A1DE3A4(v7);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, v7);
    sub_29A1DA6E4(v7);
  }

  v7[0] = "sdf/primSpec.cpp";
  v7[1] = "GetObjectAtPath";
  v7[2] = 448;
  v7[3] = "SdfSpecHandle pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetObjectAtPath(const SdfPath &) const";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Cannot get object at the empty path");
  *a3 = 0;
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPrimAtPath(pxrInternal__aapl__pxrReserved__::SdfPrimSpec *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, v7);
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(a2, v7, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v7 + 1);
    sub_29A1DE3A4(v7);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, v7);
    sub_29A1DA6E4(v7);
  }

  v7[0] = "sdf/primSpec.cpp";
  v7[1] = "GetPrimAtPath";
  v7[2] = 459;
  v7[3] = "SdfPrimSpecHandle pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPrimAtPath(const SdfPath &) const";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Cannot get prim at the empty path");
  *a3 = 0;
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPropertyAtPath(pxrInternal__aapl__pxrReserved__::SdfPrimSpec *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, v7);
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(a2, v7, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v7 + 1);
    sub_29A1DE3A4(v7);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, v7);
    sub_29A1DA6E4(v7);
  }

  v7[0] = "sdf/primSpec.cpp";
  v7[1] = "GetPropertyAtPath";
  v7[2] = 470;
  v7[3] = "SdfPropertySpecHandle pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPropertyAtPath(const SdfPath &) const";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Cannot get property at the empty path");
  *a3 = 0;
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetAttributeAtPath(pxrInternal__aapl__pxrReserved__::SdfPrimSpec *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, v7);
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(a2, v7, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v7 + 1);
    sub_29A1DE3A4(v7);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, v7);
    sub_29A1DA6E4(v7);
  }

  v7[0] = "sdf/primSpec.cpp";
  v7[1] = "GetAttributeAtPath";
  v7[2] = 481;
  v7[3] = "SdfAttributeSpecHandle pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetAttributeAtPath(const SdfPath &) const";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Cannot get attribute at the empty path");
  *a3 = 0;
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetRelationshipAtPath(pxrInternal__aapl__pxrReserved__::SdfPrimSpec *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, v7);
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(a2, v7, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v7 + 1);
    sub_29A1DE3A4(v7);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, v7);
    sub_29A1DA6E4(v7);
  }

  v7[0] = "sdf/primSpec.cpp";
  v7[1] = "GetRelationshipAtPath";
  v7[2] = 492;
  v7[3] = "SdfRelationshipSpecHandle pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetRelationshipAtPath(const SdfPath &) const";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Cannot get relationship at the empty path");
  *a3 = 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetTypeName@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v9);
  if (!v10 || (sub_29A1FA710(v9) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A27A0F8(v9);
  v6 = *v5;
  *a2 = *v5;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v7;
    }
  }

  return sub_29A186B14(v9);
}

void sub_29A3B63DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetComment@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v8);
  if (!v9 || (sub_29A1EFC10(v8) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A1EFC48(v8);
  if (*(v5 + 23) < 0)
  {
    sub_29A008D14(a2, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
  }

  return sub_29A186B14(v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetComment(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 48));
  if (result)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v6)
    {
      v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A3BBDB0(this, (v6 + 48), a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetDocumentation@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v8);
  if (!v9 || (sub_29A1EFC10(v8) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A1EFC48(v8);
  if (*(v5 + 23) < 0)
  {
    sub_29A008D14(a2, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
  }

  return sub_29A186B14(v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetDocumentation(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 136));
  if (result)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v6)
    {
      v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A3BBDB0(this, (v6 + 136), a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetHidden(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v5);
  if (!v6 || (sub_29A1EFCDC(v5) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v3 = *sub_29A1EFD10(v5);
  sub_29A186B14(v5);
  return v3;
}

void sub_29A3B68B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetHidden(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, char a2)
{
  v6 = a2;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v3 + 176));
  if (result)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v5)
    {
      v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A2F0400(this, (v5 + 176), &v6);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSymmetryFunction@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v9);
  if (!v10 || (sub_29A1FA710(v9) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A27A0F8(v9);
  v6 = *v5;
  *a2 = *v5;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v7;
    }
  }

  return sub_29A186B14(v9);
}

void sub_29A3B6A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetSymmetryFunction(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 432));
  if (result)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v6)
    {
      v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A2F0494(this, (v6 + 432), a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSymmetricPeer@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v8);
  if (!v9 || (sub_29A1EFC10(v8) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A1EFC48(v8);
  if (*(v5 + 23) < 0)
  {
    sub_29A008D14(a2, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
  }

  return sub_29A186B14(v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetSymmetricPeer(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 408));
  if (result)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v6)
    {
      v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A3BBDB0(this, (v6 + 408), a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPrefix@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v8);
  if (!v9 || (sub_29A1EFC10(v8) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A1EFC48(v8);
  if (*(v5 + 23) < 0)
  {
    sub_29A008D14(a2, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
  }

  return sub_29A186B14(v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetPrefix(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 264));
  if (result)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v6)
    {
      v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A3BBDB0(this, (v6 + 264), a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSuffix@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v8);
  if (!v9 || (sub_29A1EFC10(v8) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A1EFC48(v8);
  if (*(v5 + 23) < 0)
  {
    sub_29A008D14(a2, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
  }

  return sub_29A186B14(v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetSuffix(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 392));
  if (result)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v6)
    {
      v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A3BBDB0(this, (v6 + 392), a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPrefixSubstitutions@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v7);
  if (!v8 || (sub_29A185258(v7) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A187B1C(v7);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(a2, v5);
  return sub_29A186B14(v7);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetPrefixSubstitutions(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const void ****a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 272));
  if (result)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v6)
    {
      v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A3836FC(this, (v6 + 272), a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSuffixSubstitutions@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v7);
  if (!v8 || (sub_29A185258(v7) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A187B1C(v7);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(a2, v5);
  return sub_29A186B14(v7);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetSuffixSubstitutions(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const void ****a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 400));
  if (result)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v6)
    {
      v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A3836FC(this, (v6 + 400), a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetActive(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v5);
  if (!v6 || (sub_29A1EFCDC(v5) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v3 = *sub_29A1EFD10(v5);
  sub_29A186B14(v5);
  return v3;
}

void sub_29A3B7550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetActive(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, char a2)
{
  v6 = a2;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, v3);
  if (result)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v5)
    {
      v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A2F0400(this, v5, &v6);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity *pxrInternal__aapl__pxrReserved__::SdfPrimSpec::HasActive(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(this, v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::ClearActive(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, v2);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v4)
    {
      v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return pxrInternal__aapl__pxrReserved__::SdfSpec::ClearField(this, v4);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetKind@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v9);
  if (!v10 || (sub_29A1FA710(v9) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A27A0F8(v9);
  v6 = *v5;
  *a2 = *v5;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v7;
    }
  }

  return sub_29A186B14(v9);
}

void sub_29A3B77E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetKind(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 208));
  if (result)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v6)
    {
      v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A2F0494(this, (v6 + 208), a2);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity *pxrInternal__aapl__pxrReserved__::SdfPrimSpec::HasKind(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(this, (v2 + 208));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::ClearKind(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v2 + 208));
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v4)
    {
      v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return pxrInternal__aapl__pxrReserved__::SdfSpec::ClearField(this, (v4 + 208));
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetInstanceable(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v5);
  if (!v6 || (sub_29A1EFCDC(v5) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v3 = *sub_29A1EFD10(v5);
  sub_29A186B14(v5);
  return v3;
}

void sub_29A3B7A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetInstanceable(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, char a2)
{
  v6 = a2;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v3 + 200));
  if (result)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v5)
    {
      v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A2F0400(this, (v5 + 200), &v6);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity *pxrInternal__aapl__pxrReserved__::SdfPrimSpec::HasInstanceable(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(this, (v2 + 200));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::ClearInstanceable(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v2 + 200));
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v4)
    {
      v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return pxrInternal__aapl__pxrReserved__::SdfSpec::ClearField(this, (v4 + 200));
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSpecifier(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v5);
  if (!v6 || (sub_29A321798(v5) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v3 = *sub_29A321704(v5);
  sub_29A186B14(v5);
  return v3;
}

void sub_29A3B7CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetSpecifier(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, int a2)
{
  v6 = a2;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v3 + 320));
  if (result)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v5)
    {
      v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A3BBE5C(this, (v5 + 320), &v6);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPermission(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v5);
  if (!v6 || (sub_29A3B7E90(v5) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v3 = *sub_29A3B7F1C(v5);
  sub_29A186B14(v5);
  return v3;
}

void sub_29A3B7E70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3B7E90(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B48554ELL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2048D60);
}

void **sub_29A3B7F1C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3B7E90(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A3BBEF0, &stru_2A2048D60);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetPermission(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, int a2)
{
  v6 = a2;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v3 + 256));
  if (result)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v5)
    {
      v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return sub_29A3BBF44(this, (v5 + 256), &v6);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSymmetryArguments(atomic_uint **this)
{
  sub_29A3B80B0(this, &v2);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A3BBFD8();
}

void sub_29A3B809C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void sub_29A3B80B0(atomic_uint **a1@<X0>, void *a2@<X8>)
{
  sub_29A2F0678(a1, &v4);
  v3 = v4;
  *a2 = v4;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetSymmetryArgument(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v2 + 424));
  if (result)
  {
    sub_29A3B80B0(this, v5);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A3BBFD8();
  }

  return result;
}

void sub_29A3B81E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3B8210(uint64_t *a1, uint64_t a2)
{
  if (!sub_29A3BC128(a1))
  {
    return 0;
  }

  if (*a1)
  {
    (*(**a1 + 24))(&v5);
  }

  else
  {
    v5 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
  if (sub_29A3BC1F8(a1))
  {
    return (*(**a1 + 80))(*a1, a2);
  }

  else
  {
    return 0;
  }
}

double sub_29A3B82CC@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v14[2] = *MEMORY[0x29EDCA608];
  v11[1] = 0;
  sub_29A1869DC(&__dst, a2, v11);
  sub_29A3BC360(a1, &v7);
  v9 = v7;
  v10 = v8;
  sub_29A186B14(v14);
  if (v13 < 0)
  {
    operator delete(__dst);
  }

  sub_29A186B14(v11);
  v7 = 0u;
  v8 = 0u;
  if (sub_29A3BC84C(&v9, &v7))
  {
    a1 = 0;
    v5 = 0;
  }

  else
  {
    v5 = *a1;
    if (*a1)
    {
      v5 = (*(*v5 + 48))(v5);
    }
  }

  *a3 = a1;
  *(a3 + 8) = v5;
  result = *&v10;
  *(a3 + 16) = v10;
  return result;
}

void sub_29A3B83D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A1855F0(v11 - 80);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3B8400(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    sub_29A3BC958(v3, *(a1 + 8), (a1 + 16), a2);
  }

  else
  {
    v5[0] = "sdf/mapEditProxy.h";
    v5[1] = "operator=";
    v5[2] = 145;
    v5[3] = "_ValueProxy &pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<pxrInternal__aapl__pxrReserved__::VtDictionary>::_ValueProxy::operator=(const U &) [T = pxrInternal__aapl__pxrReserved__::VtDictionary, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<pxrInternal__aapl__pxrReserved__::VtDictionary>, U = pxrInternal__aapl__pxrReserved__::VtValue]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Assignment to invalid map proxy");
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetCustomData(atomic_uint **this)
{
  sub_29A3B80B0(this, &v2);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A3BBFD8();
}

void sub_29A3B84EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetCustomData(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v2 + 72));
  if (result)
  {
    sub_29A3B80B0(this, v5);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A3BBFD8();
  }

  return result;
}

void sub_29A3B85E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetAssetInfo(atomic_uint **this)
{
  sub_29A3B80B0(this, &v2);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A3BBFD8();
}

void sub_29A3B867C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetAssetInfo(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v2 + 16));
  if (result)
  {
    sub_29A3B80B0(this, v5);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A3BBFD8();
  }

  return result;
}

void sub_29A3B8778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetTypeName(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3 || pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSpecifier(this) == 1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v4)
    {
      v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 464));
    if (result)
    {
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v6)
      {
        v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v10);
      result = sub_29A2F0494(this, (v6 + 464), v10);
      if ((v10[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v10[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  else
  {
    v10[0] = "sdf/primSpec.cpp";
    v10[1] = "SetTypeName";
    v10[2] = 553;
    v10[3] = "void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetTypeName(const std::string &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v8);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v8);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Cannot set empty type name on prim '%s'", Text);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
    return sub_29A1DE3A4(&v8);
  }

  return result;
}

void sub_29A3B88F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetInheritPathList(atomic_uint **this@<X0>, void *a2@<X8>)
{
  sub_29A2F0678(this, &v4);
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfGetPathEditorProxy(&v5, v3 + 24, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
}

void sub_29A3B89AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a10);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::HasInheritPaths(atomic_uint **this)
{
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetInheritPathList(this, &v3);
  if (sub_29A1F222C(&v3))
  {
    v1 = sub_29A1F28A0(v3);
  }

  else
  {
    v1 = 1;
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return v1;
}

void sub_29A3B8A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::ClearInheritPathList(atomic_uint **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v2 + 192)))
  {
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetInheritPathList(this, &v3);
    if (sub_29A2F1CB8(&v3))
    {
      (*(*v3 + 48))(v3);
    }

    if (v4)
    {
      sub_29A014BEC(v4);
    }
  }
}

void sub_29A3B8AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSpecializesList(atomic_uint **this@<X0>, void *a2@<X8>)
{
  sub_29A2F0678(this, &v4);
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfGetPathEditorProxy(&v5, v3 + 39, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
}

void sub_29A3B8B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a10);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::HasSpecializes(atomic_uint **this)
{
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSpecializesList(this, &v3);
  if (sub_29A1F222C(&v3))
  {
    v1 = sub_29A1F28A0(v3);
  }

  else
  {
    v1 = 1;
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return v1;
}

void sub_29A3B8BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::ClearSpecializesList(atomic_uint **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v2 + 312)))
  {
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSpecializesList(this, &v3);
    if (sub_29A2F1CB8(&v3))
    {
      (*(*v3 + 48))(v3);
    }

    if (v4)
    {
      sub_29A014BEC(v4);
    }
  }
}

void sub_29A3B8CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPayloadList(atomic_uint **this)
{
  sub_29A2F0678(this, &v2);
  v3 = v2;
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v1)
  {
    v1 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfGetPayloadEditorProxy(&v3, v1 + 31);
}

void sub_29A3B8D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a10);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  _Unwind_Resume(a1);
}

void sub_29A3B8DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPrimSpec::ClearPayloadList(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v2 + 248));
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPayloadList(this);
  }

  return result;
}

void sub_29A3B8E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetReferenceList(atomic_uint **this)
{
  sub_29A2F0678(this, &v2);
  v3 = v2;
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v1)
  {
    v1 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfGetReferenceEditorProxy(&v3, v1 + 36);
}

void sub_29A3B8F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a10);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  _Unwind_Resume(a1);
}

void sub_29A3B8FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPrimSpec::ClearReferenceList(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v2 + 288));
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetReferenceList(this);
  }

  return result;
}

void sub_29A3B905C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetVariantSetNameList(atomic_uint **this)
{
  sub_29A2F0678(this, &v3);
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v1)
  {
    v1 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v2 = operator new(0xB8uLL);
  v4 = v3;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  sub_29A3BD02C(v2, &v4, v1 + 61);
}

void sub_29A3B9154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(*v2 + 8))(v2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void sub_29A3B920C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetVariantNames(pxrInternal__aapl__pxrReserved__::SdfSpec *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = 0uLL;
  v13 = 0;
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(a1) != 7)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, &__p);
    IsPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(&__p);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&__p + 1);
    sub_29A1DE3A4(&__p);
    if (IsPrimPath)
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, &v7);
      sub_29A008E78(&__p, "");
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(&v7, a2, &__p, &v11);
      if (v10 < 0)
      {
        operator delete(__p);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7 + 1);
      sub_29A1DE3A4(&v7);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(a1, &v8);
      sub_29A1DA6E4(&v8);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  __p = &v12;
  sub_29A012C90(&__p);
}

void sub_29A3B94C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A3B95D0(void *result)
{
  if (*result == result[1])
  {
    sub_29B29D484();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetVariantSets(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v4[12] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, v4);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v3);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
  {
    sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::Sdf_Children();
}

void sub_29A3B9708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_29A1DCEA8(&a16);
  v20 = a18;
  if (a18)
  {
    if (atomic_fetch_add_explicit((a18 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v20 + 8))(v20);
    }
  }

  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfPrimSpec::RemoveVariantSet(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v2)
  {
    v2 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v2 + 64));
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetVariantSets(this);
  }

  return result;
}

void sub_29A3B9860(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1F1B88(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetVariantSelections@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, void *a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(this);
  if (result != 7)
  {
    sub_29A2F0678(this, v6);
    v6[1] = v6[0];
    if (v6[0])
    {
      atomic_fetch_add(v6[0], 1u);
    }

    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A3BE9BC();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_29A3B991C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a10);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetVariantSelection(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, uint64_t a2, uint64_t a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v6)
  {
    v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v6 + 472)))
  {
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetVariantSelections(this, &v10);
    if (sub_29A3B9A44(&v10))
    {
      v7 = *(a3 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(a3 + 8);
      }

      if (v7)
      {
        pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v9);
        sub_29A3B9B88(&v10, a2, v8);
        sub_29A3B9C98(v8, a3);
        sub_29A1DD644(v9);
      }

      else
      {
        sub_29A3B9ACC(&v10, a2);
      }
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }
}

void sub_29A3B9A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3B9A44(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 48))(result);
    if (result)
    {
      if (*a1)
      {
        return (*(**a1 + 32))(*a1) ^ 1;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_29A3B9ACC(uint64_t *a1, uint64_t a2)
{
  if (!sub_29A3BEB0C(a1))
  {
    return 0;
  }

  if (*a1)
  {
    (*(**a1 + 24))(&v5);
  }

  else
  {
    v5 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
  if (sub_29A3BEBDC(a1))
  {
    return (*(**a1 + 80))(*a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3B9B88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    v8 = *(a2 + 16);
  }

  __p = 0;
  v10 = 0;
  v11 = 0;
  sub_29A3BED44(a1, v7, &v12);
  v14 = v12;
  v15 = v13;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  if (sub_29A3BF22C(&v14, v7))
  {
    a1 = 0;
    result = 0;
  }

  else
  {
    result = *a1;
    if (*a1)
    {
      result = (*(*result + 48))(result);
    }
  }

  v6 = v15;
  *a3 = a1;
  a3[1] = result;
  a3[2] = v6;
  return result;
}

uint64_t sub_29A3B9C98(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    sub_29A3BF300(v3, *(a1 + 8), (a1 + 16), a2);
  }

  else
  {
    v5[0] = "sdf/mapEditProxy.h";
    v5[1] = "operator=";
    v5[2] = 145;
    v5[3] = "_ValueProxy &pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<std::string, std::string>>::_ValueProxy::operator=(const U &) [T = std::map<std::string, std::string>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<std::map<std::string, std::string>>, U = std::string]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Assignment to invalid map proxy");
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::BlockVariantSelection(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 472)))
  {
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetVariantSelections(this, &v9);
    if (sub_29A3B9A44(&v9))
    {
      pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v8);
      __p[0] = 0;
      __p[1] = 0;
      v7 = 0;
      sub_29A3B9B88(&v9, a2, v5);
      sub_29A3B9C98(v5, __p);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A1DD644(v8);
    }

    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }
}

void sub_29A3B9DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 - 24);
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetRelocates@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, void *a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(this);
  if (result != 7)
  {
    sub_29A2F0678(this, v6);
    v6[1] = v6[0];
    if (v6[0])
    {
      atomic_fetch_add(v6[0], 1u);
    }

    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A3BF68C();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_29A3B9EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a10);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetRelocates(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, void *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v4 + 296)))
  {
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetRelocates(this, &v5);
    sub_29A3BF7DC(&v5, a2);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void sub_29A3B9F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity *pxrInternal__aapl__pxrReserved__::SdfPrimSpec::HasRelocates(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(this, (v2 + 296));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPrimSpec::ClearRelocates(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::_ValidateEdit(this, (v2 + 296));
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v4)
    {
      v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return pxrInternal__aapl__pxrReserved__::SdfSpec::ClearField(this, (v4 + 296));
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_UncheckedCreatePrimInLayer(pxrInternal__aapl__pxrReserved__ *this, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v13[14] = *MEMORY[0x29EDCA608];
  if ((pxrInternal__aapl__pxrReserved__::SdfLayer::HasSpec(this, a2) & 1) == 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2);
    sub_29A2FCAE8(&v10, PathElementCount);
    pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(a2);
    sub_29A1E21F4(&v8, a2);
    sub_29A1E2240(&v9, a2 + 1);
    v5 = v11;
    if (v11 >= v12)
    {
      v6 = sub_29A378160(&v10, &v8);
    }

    else
    {
      sub_29A1DDD84(v11, &v8);
      sub_29A1DDDC0(v5 + 1, &v9);
      v6 = v5 + 2;
    }

    v11 = v6;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((v6 - 2), v13);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return 1;
}

void sub_29A3BA6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, char a27, void **a28)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a25);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a27);
  sub_29A1DCEA8(&a11);
  sub_29A1DCEA8(&a13);
  a28 = &a15;
  sub_29A1E234C(&a28);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfCreatePrimInLayer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_29A3BA938(v8, a2);
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  if (sub_29A3BA9F8(0, v8))
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(&v7);
    if (pxrInternal__aapl__pxrReserved__::Sdf_UncheckedCreatePrimInLayer(0, v8[1], v5))
    {
      sub_29A1DA6E4(a1);
    }

    sub_29A1DD644(&v7);
  }

  *a3 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  return sub_29A1DE3A4(&v9);
}

void sub_29A3BA90C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A3BABA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3BA938(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  IsAbsolutePath = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(*a1);
  if (!IsAbsolutePath)
  {
    v5 = *a1;
    v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(IsAbsolutePath);
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(v5, v6, &v7);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  *(a1 + 8) = *a1;
  return a1;
}

uint64_t sub_29A3BA9F8(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v4 = a2[1];
  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(v4) && !pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(v4))
  {
    goto LABEL_25;
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(v4);
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v5);
  pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(v4, v6, &v19);
  v8 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v7);
  v9 = v19;
  v10 = *v8;
  if (v19 == *v8)
  {
    goto LABEL_19;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetVariantSelection(&v19, v14);
  v11 = v14[1];
  if ((v15 & 0x80u) == 0)
  {
    v11 = v15;
  }

  if (!v11 || ((v18 & 0x80u) == 0 ? (v12 = v18) : (v12 = v17), v12))
  {
    if ((v18 & 0x80) != 0)
    {
      operator delete(__p);
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_14;
      }
    }

    else if ((v15 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v14[0]);
LABEL_14:
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v19, v14);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if ((v18 & 0x80) != 0)
  {
    operator delete(__p);
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v15 & 0x80) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v14[0]);
LABEL_19:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
  sub_29A1DE3A4(&v19);
  if (v9 != v10)
  {
LABEL_25:
    sub_29B29D4D0(a2);
    return 0;
  }

LABEL_20:
  if (!a1)
  {
    sub_29B29D534(a2);
    return 0;
  }

  return 1;
}

void sub_29A3BAB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3BABA8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfJustCreatePrimInLayer(uint64_t a1, uint64_t a2)
{
  sub_29A3BA938(v7, a2);
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  if (sub_29A3BA9F8(0, v7))
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(&v6);
    PrimInLayer = pxrInternal__aapl__pxrReserved__::Sdf_UncheckedCreatePrimInLayer(0, v7[1], v3);
    sub_29A1DD644(&v6);
  }

  else
  {
    PrimInLayer = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  return PrimInLayer;
}

void sub_29A3BAC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_29A1DD644(&a9);
  sub_29A3BABA8(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3BACB8(uint64_t result)
{
  if (*(result + 16) == *(result + 40))
  {
    sub_29B29D598();
  }

  return result;
}

uint64_t sub_29A3BAD9C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A3BADD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == *(a1 + 40))
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::SdfChildrenProxy<pxrInternal__aapl__pxrReserved__::SdfChildrenView<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::SdfChildrenProxy<pxrInternal__aapl__pxrReserved__::SdfChildrenView<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>>, Reverse = false]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    *(a1 + 16) = v2 + 1;
  }

  return a1;
}

void sub_29A3BAE5C(uint64_t *a1, const void **a2)
{
  if (sub_29A3BB1AC(a1) && ((*(**a1 + 24))() & 1) == 0)
  {
    if ((*(**a1 + 16))())
    {

      sub_29A3BB230(a1, 0, a2);
    }

    else
    {
      v4 = a1[1];
      v5 = *a1;
      v6 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = 2;
      sub_29A3BB318(&v5, a2);
      if (v6)
      {
        sub_29A014BEC(v6);
      }

      sub_29A3BB230(a1, 4, a2);
    }
  }
}

void sub_29A3BAF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3BAF74(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a1 + 8) != *(a1 + 24))
  {
    sub_29A3BB8F4();
  }

  v3[0] = "tf/iterator.h";
  v3[1] = "operator*";
  v3[2] = 254;
  v3[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::SdfChildrenView<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>>::operator*() [T = pxrInternal__aapl__pxrReserved__::SdfChildrenView<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>, Reverse = false]";
  v4 = 0;
  v5 = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "iterator exhausted", a3);
}

uint64_t sub_29A3BB004(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 24))
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::SdfChildrenView<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>>::operator++() [T = pxrInternal__aapl__pxrReserved__::SdfChildrenView<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>, Reverse = false]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    *(a1 + 8) = v2 + 1;
  }

  return a1;
}

void sub_29A3BB088(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_29A1F1BCC();
}

void sub_29A3BB10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a3;
  sub_29A1F1C54();
}

void sub_29A3BB190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3BB1AC(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listEditorProxy.h";
  v2[1] = "_Validate";
  v2[2] = 393;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListEditorProxy<pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy>::_Validate() [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

void sub_29A3BB230(uint64_t *a1, int a2, const void **a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a2;
  v5 = sub_29A3BB404(&v7, a3);
  if (v5 != -1)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    sub_29A3BB45C(&v7, v5);
  }

  if (sub_29A3BB790(&v7))
  {
    v6 = &v7;
  }

  else
  {
    v6 = 0;
  }

  v11.n128_u64[1] = v6;
  v12 = 0;
  sub_29A3BB4C0(&v7, &v11, a3, &v10);
LABEL_10:
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29A3BB2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3BB318(unsigned int *a1, const void **a2)
{
  v3 = sub_29A3BB404(a1, a2);
  if (v3 == -1)
  {
    if (*a1)
    {
      v4 = (*(**a1 + 112))(*a1, a1[4]);
      v5 = 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3);
    }

    else
    {
      v5 = 0;
    }

    memset(v6, 0, sizeof(v6));
    sub_29A3BB5EC(a1, v5, 0, v6);
    v7 = v6;
    sub_29A012C90(&v7);
  }

  else
  {

    sub_29A3BB45C(a1, v3);
  }
}

void sub_29A3BB3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

unint64_t sub_29A3BB404(uint64_t a1, const void **a2)
{
  if (!sub_29A1EF244(a1))
  {
    return -1;
  }

  v4 = *a1;
  v5 = *(a1 + 16);

  return sub_29A3BB55C(v4, v5, a2);
}

void sub_29A3BB45C(unsigned int *a1, uint64_t a2)
{
  memset(v2, 0, sizeof(v2));
  sub_29A3BB5EC(a1, a2, 1, v2);
  v3 = v2;
  sub_29A012C90(&v3);
}

void sub_29A3BB4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A012C90(&a12);
  _Unwind_Resume(a1);
}

__n128 sub_29A3BB4C0@<Q0>(unsigned int *a1@<X0>, __n128 *a2@<X1>, __int128 *a3@<X2>, __n128 *a4@<X8>)
{
  v7 = a2[1].n128_i64[0];
  sub_29A111510(v9, 1uLL, a3);
  sub_29A3BB5EC(a1, v7, 0, v9);
  v10 = v9;
  sub_29A012C90(&v10);
  result = *a2;
  *a4 = *a2;
  a4[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

void sub_29A3BB544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

unint64_t sub_29A3BB55C(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = (*(*a1 + 112))(a1);
  v5 = sub_29A22B430(*v4, v4[1], a3);
  if (v5 == v4[1])
  {
    return -1;
  }

  else
  {
    return 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
  }
}

void sub_29A3BB5EC(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sub_29A3BB790(a1))
  {
    if (!a3 && *a4 == a4[1])
    {
      (*(**a1 + 32))(__p);
      v8 = v18;
      if (v18 == 1)
      {
        v11 = "sdf/listProxy.h";
        v12 = "_Edit";
        v13 = 739;
        v14 = "void pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy>::_Edit(size_t, size_t, const value_vector_type &) [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy]";
        v15 = 0;
        WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
        if (*(WhyNot + 23) >= 0)
        {
          v10 = WhyNot;
        }

        else
        {
          v10 = *WhyNot;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Editing list: %s", v10);
        v8 = v18;
      }

      if ((v8 & 1) != 0 && v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (((*(**a1 + 80))(*a1, a1[4], a2, a3, a4) & 1) == 0)
    {
      v11 = "sdf/listProxy.h";
      v12 = "_Edit";
      v13 = 747;
      v14 = "void pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy>::_Edit(size_t, size_t, const value_vector_type &) [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy]";
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Inserting invalid value into list editor");
    }
  }
}

void sub_29A3BB768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3BB790(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listProxy.h";
  v2[1] = "_Validate";
  v2[2] = 678;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy>::_Validate() [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

void sub_29A3BB814(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::Sdf_Children();
}

uint64_t sub_29A3BB88C(uint64_t a1)
{
  v4 = (a1 + 40);
  sub_29A124AB0(&v4);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29B29D5E4(a1);
  return a1;
}

uint64_t sub_29A3BB940(uint64_t a1, void *a2)
{
  if (!sub_29A347DC0(a1))
  {
    return -1;
  }

  v4 = *a1;
  v5 = *(a1 + 16);

  return sub_29A3BBB3C(v4, v5, a2);
}

void sub_29A3BB998(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sub_29A3BBBD4(a1))
  {
    if (!a3 && *a4 == a4[1])
    {
      (*(**a1 + 32))(__p);
      v8 = v18;
      if (v18 == 1)
      {
        v11 = "sdf/listProxy.h";
        v12 = "_Edit";
        v13 = 739;
        v14 = "void pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::_Edit(size_t, size_t, const value_vector_type &) [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy]";
        v15 = 0;
        WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
        if (*(WhyNot + 23) >= 0)
        {
          v10 = WhyNot;
        }

        else
        {
          v10 = *WhyNot;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Editing list: %s", v10);
        v8 = v18;
      }

      if ((v8 & 1) != 0 && v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (((*(**a1 + 80))(*a1, a1[4], a2, a3, a4) & 1) == 0)
    {
      v11 = "sdf/listProxy.h";
      v12 = "_Edit";
      v13 = 747;
      v14 = "void pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::_Edit(size_t, size_t, const value_vector_type &) [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy]";
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Inserting invalid value into list editor");
    }
  }
}

void sub_29A3BBB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3BBB3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*(*a1 + 112))(a1);
  v5 = *(v4 + 8);
  if (*v4 == v5)
  {
    v6 = *v4;
  }

  else
  {
    v6 = *v4;
    while ((*v6 ^ *a3) >= 8)
    {
      if (++v6 == v5)
      {
        v6 = *(v4 + 8);
        break;
      }
    }
  }

  if (v5 == v6)
  {
    return -1;
  }

  else
  {
    return (v6 - *v4) >> 3;
  }
}

uint64_t sub_29A3BBBD4(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listProxy.h";
  v2[1] = "_Validate";
  v2[2] = 678;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::_Validate() [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

uint64_t sub_29A3BBC9C(uint64_t a1)
{
  v4 = (a1 + 40);
  sub_29A124AB0(&v4);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29B29D5E4(a1);
  return a1;
}

uint64_t sub_29A3BBD48(uint64_t a1)
{
  v4 = (a1 + 40);
  sub_29A124AB0(&v4);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29B29D5E4(a1);
  return a1;
}

uint64_t sub_29A3BBDB0(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = &off_2A2044DD0;
  sub_29A1B01B8(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3BBE40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3BBE5C(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = &off_2A2049888 + 3;
  v5 = *a3;
  v3 = pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(a1, a2, &v5);
  sub_29A186B14(&v5);
  return v3;
}

void sub_29A3BBEDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A3BBEF0@<X0>(void *a1@<X8>)
{
  result = operator new(4uLL);
  *result = 0;
  *a1 = result;
  a1[1] = sub_29A3BBF38;
  a1[2] = &stru_2A2048D60;
  return result;
}

void sub_29A3BBF38(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29A3BBF44(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = &off_2A2048CA8 + 3;
  v5 = *a3;
  v3 = pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(a1, a2, &v5);
  sub_29A186B14(&v5);
  return v3;
}

void sub_29A3BBFC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A3BC090(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A3BC0B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A3BC0E8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204C618))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3BC128(void *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 48))(v2) && (!*a1 || !(*(**a1 + 32))(*a1)))
  {
    return 1;
  }

  v4[0] = "sdf/mapEditProxy.h";
  v4[1] = "_Validate";
  v4[2] = 744;
  v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<pxrInternal__aapl__pxrReserved__::VtDictionary>::_Validate() [T = pxrInternal__aapl__pxrReserved__::VtDictionary, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<pxrInternal__aapl__pxrReserved__::VtDictionary>]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Editing an invalid map proxy");
  return 0;
}

uint64_t sub_29A3BC1F8(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 24))(&v11);
  }

  else
  {
    v11 = 0;
  }

  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v11) & 1) != 0 || (v3 = sub_29A1E045C(&v11), (pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v3)))
  {
    v4 = 1;
  }

  else
  {
    v9[0] = "sdf/mapEditProxy.h";
    v9[1] = "_ValidateErase";
    v9[2] = 1002;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<pxrInternal__aapl__pxrReserved__::VtDictionary>::_ValidateErase(const key_type &) [T = pxrInternal__aapl__pxrReserved__::VtDictionary, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<pxrInternal__aapl__pxrReserved__::VtDictionary>]";
    v10 = 0;
    if (*a1)
    {
      (*(**a1 + 16))(__p);
      if (v8 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v5 = __p;
      v8 = 0;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Can't erase value from %s: Permission denied.", v5);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    v4 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v11);
  return v4;
}

double sub_29A3BC360@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (!sub_29A3BC128(a1))
  {
    goto LABEL_9;
  }

  if (*a1)
  {
    (*(**a1 + 24))(&v6);
  }

  else
  {
    *&v6 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v6);
  if (sub_29A3BC470(a1))
  {
    (*(**a1 + 72))(&v6);
    v4 = *a1;
    if (*a1)
    {
      v4 = (*(*v4 + 48))(v4);
    }

    *a2 = a1;
    *(a2 + 8) = v4;
    result = *&v6;
    *(a2 + 16) = v6;
    *(a2 + 32) = v7;
  }

  else
  {
LABEL_9:
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

BOOL sub_29A3BC470(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 24))(&v28);
  }

  else
  {
    v28 = 0;
  }

  if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v28) & 1) == 0)
  {
    v3 = sub_29A1E045C(&v28);
    if ((pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v3) & 1) == 0)
    {
      v23 = "sdf/mapEditProxy.h";
      v24 = "_ValidateInsert";
      v25 = 963;
      v26 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<pxrInternal__aapl__pxrReserved__::VtDictionary>::_ValidateInsert(const value_type &) [T = pxrInternal__aapl__pxrReserved__::VtDictionary, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<pxrInternal__aapl__pxrReserved__::VtDictionary>]";
      v27 = 0;
      if (*a1)
      {
        (*(**a1 + 16))(v20);
        if (v21 >= 0)
        {
          v9 = v20;
        }

        else
        {
          v9 = v20[0];
        }
      }

      else
      {
        v20[0] = 0;
        v20[1] = 0;
        v9 = v20;
        v21 = 0;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Can't insert value in %s: Permission denied.", v9);
LABEL_28:
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

LABEL_30:
      v6 = 0;
      goto LABEL_31;
    }
  }

  (*(**a1 + 88))(v20);
  if (v22)
  {
    v23 = "sdf/mapEditProxy.h";
    v24 = "_ValidateInsert";
    v25 = 973;
    v26 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<pxrInternal__aapl__pxrReserved__::VtDictionary>::_ValidateInsert(const value_type &) [T = pxrInternal__aapl__pxrReserved__::VtDictionary, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<pxrInternal__aapl__pxrReserved__::VtDictionary>]";
    v27 = 0;
    if (*a1)
    {
      (*(**a1 + 16))(&__p);
      v4 = __p;
      v5 = v19 < 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      __p = 0;
      v18 = 0;
      v19 = 0;
    }

    WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(v20);
    p_p = &__p;
    if (v5)
    {
      p_p = v4;
    }

    if (*(WhyNot + 23) >= 0)
    {
      v12 = WhyNot;
    }

    else
    {
      v12 = *WhyNot;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Can't insert key in %s: %s", p_p, v12);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    if (v22 != 1)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  (*(**a1 + 96))(v20);
  v6 = v22 == 0;
  if (v22)
  {
    v23 = "sdf/mapEditProxy.h";
    v24 = "_ValidateInsert";
    v25 = 983;
    v26 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<pxrInternal__aapl__pxrReserved__::VtDictionary>::_ValidateInsert(const value_type &) [T = pxrInternal__aapl__pxrReserved__::VtDictionary, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<pxrInternal__aapl__pxrReserved__::VtDictionary>]";
    v27 = 0;
    if (*a1)
    {
      (*(**a1 + 16))(&__p);
      v7 = __p;
      v8 = v19 < 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      __p = 0;
      v18 = 0;
      v19 = 0;
    }

    v14 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(v20);
    v15 = &__p;
    if (v8)
    {
      v15 = v7;
    }

    if (*(v14 + 23) >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Can't insert value in %s: %s", v15, v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    if ((v22 & 1) != 0 && SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }

LABEL_31:
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v28);
  return v6;
}

void sub_29A3BC7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a24 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v24 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_29A3BC84C(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v3 = a1[3];
    if (v3 == a2[3] && (!v3 || a1[2] == a2[2]))
    {
      return 1;
    }
  }

  result = sub_29A3BC8CC(a1);
  if (result)
  {

    return sub_29A3BC8CC(a2);
  }

  return result;
}

BOOL sub_29A3BC8CC(uint64_t a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v3 = *v1;
  if (*v1)
  {
    v3 = (*(*v3 + 48))(v3);
  }

  v4 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v3);
  return *(a1 + 24) == v5 && (!v5 || *(a1 + 16) == v4);
}

uint64_t sub_29A3BC958(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = sub_29A3BC128(a1);
  if (result)
  {
    if (*a1)
    {
      (*(**a1 + 24))(&v8);
    }

    else
    {
      v8 = 0;
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v8);
    result = sub_29A3BCA24(a1);
    if (result)
    {
      return (*(**a1 + 64))(*a1, *a3 + 32, a4);
    }
  }

  return result;
}

BOOL sub_29A3BCA24(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 24))(&v22);
  }

  else
  {
    v22 = 0;
  }

  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v22) & 1) != 0 || (v3 = sub_29A1E045C(&v22), (pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v3)))
  {
    (*(**a1 + 96))(v14);
    v4 = v16 == 0;
    if (v16)
    {
      v17 = "sdf/mapEditProxy.h";
      v18 = "_ValidateSet";
      v19 = 935;
      v20 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<pxrInternal__aapl__pxrReserved__::VtDictionary>::_ValidateSet(const key_type &, const mapped_type &) [T = pxrInternal__aapl__pxrReserved__::VtDictionary, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<pxrInternal__aapl__pxrReserved__::VtDictionary>]";
      v21 = 0;
      if (*a1)
      {
        (*(**a1 + 16))(__p);
        v5 = __p[0];
        v6 = v13 < 0;
      }

      else
      {
        v5 = 0;
        v6 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v13 = 0;
      }

      WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(v14);
      v9 = __p;
      if (v6)
      {
        v9 = v5;
      }

      if (*(WhyNot + 23) >= 0)
      {
        v10 = WhyNot;
      }

      else
      {
        v10 = *WhyNot;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "Can't set value in %s: %s", v9, v10);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v16 & 1) != 0 && SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }
    }
  }

  else
  {
    v17 = "sdf/mapEditProxy.h";
    v18 = "_ValidateSet";
    v19 = 925;
    v20 = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<pxrInternal__aapl__pxrReserved__::VtDictionary>::_ValidateSet(const key_type &, const mapped_type &) [T = pxrInternal__aapl__pxrReserved__::VtDictionary, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<pxrInternal__aapl__pxrReserved__::VtDictionary>]";
    v21 = 0;
    if (*a1)
    {
      (*(**a1 + 16))(v14);
      if (v15 >= 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v14[0];
      }
    }

    else
    {
      v14[0] = 0;
      v14[1] = 0;
      v7 = v14;
      v15 = 0;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "Can't set value in %s: Permission denied.", v7);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    v4 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v22);
  return v4;
}

uint64_t sub_29A3BCCE4(uint64_t a1)
{
  if ((*(*a1 + 16))(a1))
  {
    return 1;
  }

  v3 = (*(*a1 + 24))(a1);
  v4 = *(*a1 + 112);
  if (v3)
  {
    v5 = v4(a1, 3);
    return *v5 != v5[1];
  }

  v2 = 1;
  v6 = v4(a1, 1);
  if (*v6 == v6[1])
  {
    v7 = (*(*a1 + 112))(a1, 4);
    if (*v7 == v7[1])
    {
      v8 = (*(*a1 + 112))(a1, 5);
      if (*v8 == v8[1])
      {
        v9 = (*(*a1 + 112))(a1, 2);
        if (*v9 == v9[1])
        {
          v5 = (*(*a1 + 112))(a1, 3);
          return *v5 != v5[1];
        }
      }
    }
  }

  return v2;
}

uint64_t sub_29A3BCE88(uint64_t a1)
{
  if ((*(*a1 + 16))(a1))
  {
    return 1;
  }

  v3 = (*(*a1 + 24))(a1);
  v4 = *(*a1 + 112);
  if (v3)
  {
    v5 = v4(a1, 3);
    return *v5 != v5[1];
  }

  v2 = 1;
  v6 = v4(a1, 1);
  if (*v6 == v6[1])
  {
    v7 = (*(*a1 + 112))(a1, 4);
    if (*v7 == v7[1])
    {
      v8 = (*(*a1 + 112))(a1, 5);
      if (*v8 == v8[1])
      {
        v9 = (*(*a1 + 112))(a1, 2);
        if (*v9 == v9[1])
        {
          v5 = (*(*a1 + 112))(a1, 3);
          return *v5 != v5[1];
        }
      }
    }
  }

  return v2;
}

void sub_29A3BD270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A22C174(va);
  sub_29A22C174(v3);
  sub_29A3BD3D0(v2);
  _Unwind_Resume(a1);
}

void *sub_29A3BD2AC(void *result, atomic_uint **a2, uint64_t *a3)
{
  v3 = *a2;
  *result = &unk_2A204C6E8;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  v4 = *a3;
  result[2] = *a3;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void sub_29A3BD308(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, _BYTE *a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v5);
  if (v6 && (sub_29A1EFFD4(&v5) & 1) != 0)
  {
    if ((v6 & 4) != 0)
    {
      a2 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(&v5);
    }

    else
    {
      a2 = v5;
    }
  }

  sub_29A242868(a3, a2);
}

void *sub_29A3BD3D0(void *a1)
{
  *a1 = &unk_2A204C6E8;
  v2 = a1[2];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 1));
  return a1;
}

void sub_29A3BD434(uint64_t a1)
{
  v1 = sub_29A3BDE74(a1);

  operator delete(v1);
}

uint64_t sub_29A3BD45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    v4 = "List editor is expired";
  }

  else
  {
    v5 = sub_29A1E045C((a1 + 8));
    result = pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v5);
    if (result)
    {
      *a2 = 0;
      *(a2 + 24) = 0;
      return result;
    }

    v4 = "Permission denied";
  }

  result = sub_29A008E78(a2, v4);
  *(a2 + 24) = 1;
  return result;
}

BOOL sub_29A3BD4CC(uint64_t a1, void *lpsrc)
{
  v3 = __dynamic_cast(lpsrc, &unk_2A204C6B0, &unk_2A204C6C0, 0);
  if (v3)
  {
    sub_29A3BDF58(a1);
  }

  else
  {
    v5[0] = "sdf/listOpListEditor.h";
    v5[1] = "CopyEdits";
    v5[2] = 204;
    v5[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_ListOpListEditor<pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy>::CopyEdits(const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Could not copy from list editor of different type");
  }

  return v3 != 0;
}

void sub_29A3BD950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A22C174(va);
  _Unwind_Resume(a1);
}

void sub_29A3BD964(uint64_t a1, int a2, void *lpsrc)
{
  v6 = a2;
  if (__dynamic_cast(lpsrc, &unk_2A204C6B0, &unk_2A204C6C0, 0))
  {
    sub_29A242868(v4, (a1 + 32));
  }

  v4[0] = "sdf/listOpListEditor.h";
  v4[1] = "ApplyList";
  v4[2] = 279;
  v4[3] = "virtual void pxrInternal__aapl__pxrReserved__::Sdf_ListOpListEditor<pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy>::ApplyList(SdfListOpType, const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Cannot apply from list editor of different type");
}

void sub_29A3BDABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A22C174(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3BDAD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a3;
  v6 = a3[1];
  v8 = *a4;
  v7 = a4[1];
  v9 = *a3 == v6 || v8 == v7;
  v10 = *a4;
  if (!v9)
  {
    v11 = 0;
    v10 = *a4;
    while (1)
    {
      v12 = v8 + v11;
      v13 = *(v5 + v11 + 23);
      if (v13 >= 0)
      {
        v14 = *(v5 + v11 + 23);
      }

      else
      {
        v14 = *(v5 + v11 + 8);
      }

      v15 = *(v12 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v12 + 8);
      }

      if (v14 != v15)
      {
        break;
      }

      if (v13 >= 0)
      {
        v17 = (v5 + v11);
      }

      else
      {
        v17 = *(v5 + v11);
      }

      if (v16 >= 0)
      {
        v18 = (v8 + v11);
      }

      else
      {
        v18 = *v12;
      }

      if (!memcmp(v17, v18, v14))
      {
        v11 += 24;
        if (v11 + v5 != v6)
        {
          v10 += 24;
          if (v11 + v8 != v7)
          {
            continue;
          }
        }
      }

      v10 = v8 + v11;
      break;
    }
  }

  if (v10 == v7)
  {
LABEL_41:
    v27 = sub_29A1E045C((a1 + 8));
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(v27);
  }

  v19 = v10;
  while (v8 == v19)
  {
LABEL_40:
    v19 += 24;
    if (v19 == v7)
    {
      goto LABEL_41;
    }
  }

  v20 = *(v19 + 23);
  if (v20 >= 0)
  {
    v21 = *(v19 + 23);
  }

  else
  {
    v21 = *(v19 + 8);
  }

  v22 = v8;
  while (1)
  {
    v23 = *(v22 + 23);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(v22 + 8);
    }

    if (v21 == v23)
    {
      v25 = v20 >= 0 ? v19 : *v19;
      v26 = v24 >= 0 ? v22 : *v22;
      if (!memcmp(v25, v26, v21))
      {
        break;
      }
    }

    v22 += 24;
    if (v22 == v19)
    {
      goto LABEL_40;
    }
  }

  v37[0] = "sdf/listEditor.h";
  v37[1] = "_ValidateEdit";
  v37[2] = 245;
  v37[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_ListEditor<pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy>::_ValidateEdit(SdfListOpType, const value_vector_type &, const value_vector_type &) const [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy]";
  v38 = 0;
  v28 = __p;
  pxrInternal__aapl__pxrReserved__::TfStringify(v19, __p);
  if (v34 < 0)
  {
    v28 = __p[0];
  }

  v29 = *(a1 + 16) & 0xFFFFFFFFFFFFFFF8;
  if (v29)
  {
    v30 = (v29 + 16);
    if (*(v29 + 39) < 0)
    {
      v30 = *v30;
    }
  }

  else
  {
    v30 = "";
  }

  sub_29A1E24EC(a1, &v35);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v35);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v37, 1, "Duplicate item '%s' not allowed for field '%s' on <%s>", v28, v30, Text);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v36);
  sub_29A1DE3A4(&v35);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_29A3BDE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3BDE74(uint64_t a1)
{
  *a1 = &unk_2A204C638;
  v4 = (a1 + 160);
  sub_29A012C90(&v4);
  v4 = (a1 + 136);
  sub_29A012C90(&v4);
  v4 = (a1 + 112);
  sub_29A012C90(&v4);
  v4 = (a1 + 88);
  sub_29A012C90(&v4);
  v4 = (a1 + 64);
  sub_29A012C90(&v4);
  v4 = (a1 + 40);
  sub_29A012C90(&v4);
  *a1 = &unk_2A204C6E8;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 8));
  return a1;
}

void sub_29A3BDF58(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    v2 = sub_29A1E045C((a1 + 8));
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v2, v3);
    sub_29A1DA6E4(v3);
  }

  v3[0] = "sdf/listOpListEditor.h";
  v3[1] = "_UpdateListOp";
  v3[2] = 96;
  v3[3] = "void pxrInternal__aapl__pxrReserved__::Sdf_ListOpListEditor<pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy>::_UpdateListOp(const ListOpType &, const SdfListOpType *) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy]";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Invalid owner.");
}

void sub_29A3BE304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_29A186B14(v28 - 144);
  sub_29A22C174(&a9);
  sub_29A1DD644(&a28);
  _Unwind_Resume(a1);
}

__n128 sub_29A3BE40C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204C770;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A3BE458(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204C770;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A3BE498(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204C7D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A3BE4E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  (*(*v2 + 48))(__p);
  if (v6 == 1)
  {
    if (SHIBYTE(v5) < 0)
    {
      sub_29A008D14(a2, __p[0], __p[1]);
    }

    else
    {
      *a2 = *__p;
      *(a2 + 16) = v5;
    }

    *(a2 + 24) = 1;
  }

  else
  {
    sub_29A22C3D0(a2, __p);
  }

  if (v6 == 1 && SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}