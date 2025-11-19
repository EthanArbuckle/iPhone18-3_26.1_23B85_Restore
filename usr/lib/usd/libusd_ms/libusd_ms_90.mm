__n128 sub_29A545150(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20581B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A545188(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058218))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5451D4(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  *&v9 = *a1;
  *(&v9 + 1) = v8;
  v10 = v6;
  v11 = v7;
  v12 = sub_29A4CCA14();
  sub_29A545254(v5, &v9, v3, v4);
}

void sub_29A545254(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v12 = 0;
  v7 = operator new(0x20uLL);
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = 0;
  *(v7 + 6) = 0;
  v13 = v7;
  atomic_fetch_add_explicit(v7 + 6, 1u, memory_order_relaxed);
  memset(v14, 0, sizeof(v14));
  v8 = a2[1];
  v9 = *a2;
  v10 = v8;
  v11 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *(&v9 + 1) = *(*v10 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A545330(&v9, &v12);
  }

  sub_29A4C8498(a4, &v12);
  *&v9 = v14;
  sub_29A1D0D38(&v9);
  sub_29A22B614(&v13);
}

void sub_29A54531C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A4C8344(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A545330(uint64_t a1, uint64_t a2)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  v22 = v4;
  *(v4 + 6) = 0;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  v23 = 0u;
  v24 = 0u;
  v21 = (*(a1 + 8) - *(**(a1 + 16) + 24)) & 0xFFFFFFFFFFFFLL | 0x2E000000000000;
  sub_29A5455E8(a1);
  if (sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    v5 = (*a1 + 208);
    v19 = 0;
    v18 = v5;
    tbb::spin_rw_mutex_v3::internal_acquire_reader(v5);
    v6 = sub_29A11802C((*a1 + 168), &__dst);
    if (v6)
    {
      sub_29A544928(&v22, v6 + 3);
    }

    else
    {
      v19 = 1;
      tbb::spin_rw_mutex_v3::internal_upgrade(v18);
      v8 = sub_29A544980(*a1 + 168, &__dst, &__dst);
      if (v9)
      {
        v10 = operator new(0x20uLL);
        *v10 = 0;
        *(v10 + 1) = 0;
        *(v10 + 6) = 0;
        *(v10 + 2) = 0;
        v17 = v10;
        atomic_fetch_add_explicit(v10 + 6, 1u, memory_order_relaxed);
        sub_29A5446E0(*a1, __dst, v10);
        v17 = v8[3];
        v8[3] = v10;
        sub_29A22B614(&v17);
      }

      sub_29A544928(&v22, v8 + 3);
    }

    v11 = v18;
    v18 = 0;
    if (v19 == 1)
    {
LABEL_9:
      v12 = *v11;
      v13 = *v11 & 0xFFFFFFFFFFFFFFFCLL;
      while (1)
      {
        v14 = v12;
        atomic_compare_exchange_strong(v11, &v14, v13);
        if (v14 == v12)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v11, 0, memory_order_relaxed) != v12)
        {
          sched_yield();
          goto LABEL_9;
        }
      }
    }

    else
    {
      atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFCLL);
    }

    sub_29A5455E8(a1);
    v17 = 0;
    v7 = sub_29A4E7A0C(a1 + 8, &v17, 8uLL);
    if (v7)
    {
      v15 = *(a1 + 8);
      *(&v24 + 1) = v15 - *(**(a1 + 16) + 24);
      *(a1 + 8) = v15 + 8 * v17;
      *a2 = v21;
      sub_29A544928((a2 + 8), &v22);
      if (&v21 != a2)
      {
        sub_29A544F94(a2 + 16, v23, *(&v23 + 1), (*(&v23 + 1) - v23) >> 4);
      }

      *(a2 + 40) = *(&v24 + 1);
    }

    sub_29A0F845C(&v18);
  }

  else
  {
    v7 = 0;
  }

  v18 = &v23;
  sub_29A1D0D38(&v18);
  sub_29A22B614(&v22);
  return v7;
}

void sub_29A54559C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_29A22B614(&a9);
  sub_29A0F845C(&a10);
  sub_29A4C8344(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29A5455E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(**(a1 + 16) + 24);
  __dst = 0;
  result = sub_29A4E7A0C(a1 + 8, &__dst, 8uLL);
  if (result)
  {
    *(a1 + 8) = *(**(a1 + 16) + 24) + __dst + v2 - v3;
  }

  return result;
}

__n128 sub_29A545660(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058238;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5456AC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058238;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5456E4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058298))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A545730(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A5457DC(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A5457B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5457DC(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v12 = 0;
  v7 = operator new(0x20uLL);
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = 0;
  v13 = v7;
  *(v7 + 6) = 0;
  atomic_fetch_add_explicit(v7 + 6, 1u, memory_order_relaxed);
  memset(v14, 0, sizeof(v14));
  v9 = *a2;
  v8 = *(a2 + 2);
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 3);
  if ((a3 & 0x4000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A5458E0(&v9, &v12);
    v8 = v10;
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  sub_29A4C8498(a4, &v12);
  v15 = v14;
  sub_29A1D0D38(&v15);
  sub_29A22B614(&v13);
}

void sub_29A5458B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A4C8344(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A5458E0(uint64_t *a1, uint64_t a2)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  v22 = v4;
  *(v4 + 6) = 0;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  v24 = 0u;
  v23 = 0u;
  v5 = a1[3];
  v21 = v5 & 0xFFFFFFFFFFFFLL | 0x2E000000000000;
  v18 = 0;
  if (sub_29A4E5308(a1 + 1, &v18, 8uLL))
  {
    a1[3] = v18 + v5;
  }

  if (sub_29A4E5308(a1 + 1, &v20, 8uLL))
  {
    v6 = (*a1 + 208);
    v19 = 0;
    v18 = v6;
    tbb::spin_rw_mutex_v3::internal_acquire_reader(v6);
    v7 = sub_29A11802C((*a1 + 168), &v20);
    if (v7)
    {
      sub_29A544928(&v22, v7 + 3);
    }

    else
    {
      if ((v19 & 1) == 0)
      {
        v19 = 1;
        tbb::spin_rw_mutex_v3::internal_upgrade(v18);
      }

      v9 = sub_29A544980(*a1 + 168, &v20, &v20);
      if (v10)
      {
        v11 = operator new(0x20uLL);
        *v11 = 0;
        *(v11 + 1) = 0;
        *(v11 + 6) = 0;
        *(v11 + 2) = 0;
        v25 = v11;
        atomic_fetch_add_explicit(v11 + 6, 1u, memory_order_relaxed);
        sub_29A5446E0(*a1, v20, v11);
        v25 = v9[3];
        v9[3] = v11;
        sub_29A22B614(&v25);
      }

      sub_29A544928(&v22, v9 + 3);
    }

    v12 = v18;
    v18 = 0;
    if (v19 == 1)
    {
LABEL_13:
      v13 = *v12;
      v14 = *v12 & 0xFFFFFFFFFFFFFFFCLL;
      while (1)
      {
        v15 = v13;
        atomic_compare_exchange_strong(v12, &v15, v14);
        if (v15 == v13)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v12, 0, memory_order_relaxed) != v13)
        {
          sched_yield();
          goto LABEL_13;
        }
      }
    }

    else
    {
      atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFCLL);
    }

    v16 = a1[3];
    v25 = 0;
    if (sub_29A4E5308(a1 + 1, &v25, 8uLL))
    {
      a1[3] = v25 + v16;
    }

    v25 = 0;
    v8 = sub_29A4E5308(a1 + 1, &v25, 8uLL);
    if (v8)
    {
      *(&v24 + 1) = a1[3];
      a1[3] = *(&v24 + 1) + 8 * v25;
      *a2 = v21;
      sub_29A544928((a2 + 8), &v22);
      if (&v21 != a2)
      {
        sub_29A544F94(a2 + 16, v23, *(&v23 + 1), (*(&v23 + 1) - v23) >> 4);
      }

      *(a2 + 40) = *(&v24 + 1);
    }

    sub_29A0F845C(&v18);
  }

  else
  {
    v8 = 0;
  }

  v18 = &v23;
  sub_29A1D0D38(&v18);
  sub_29A22B614(&v22);
  return v8;
}

void sub_29A545B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_29A22B614((v12 - 56));
  sub_29A0F845C(&a9);
  sub_29A4C8344(&a12);
  _Unwind_Resume(a1);
}

__n128 sub_29A545BC0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20582B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A545C0C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20582B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A545C44(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058318))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A545C90(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 817);
  v5 = a2[1];
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  return sub_29A545CFC(v3, v2, (v4 + 264), v6);
}

uint64_t sub_29A545CFC(uint64_t *a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a3, uint64_t a4)
{
  v19[0] = a2;
  v19[1] = a3;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v15 = *(a4 + 16);
  }

  sub_29A1E21F4(&v16, (a4 + 24));
  sub_29A1E2240(&v17, (a4 + 28));
  v18 = *(a4 + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
  sub_29A1DE3A4(&v16);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *a1;
  if (!*a1)
  {
    v8 = operator new(0x28uLL);
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 8) = 1065353216;
    sub_29A4E35AC(a1, v8);
    v7 = *a1;
  }

  v13 = 0;
  v9 = sub_29A545F28(v7, a4, a4, &v13);
  v10 = v9;
  if (v11)
  {
    *(v9 + 8) = *(a3 + 2) & 0xFFFFFFFFFFFFLL | 0x2F000000000000;
    sub_29A545E14(v19, a4);
  }

  return *(v10 + 8);
}

uint64_t sub_29A545E14(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, uint64_t a2)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfLayerOffset::IsIdentity((a2 + 32)))
  {
    v4 = *(*a1 + 817);
    sub_29A008E78(__p, "A payload with a non-identity layer offset was detected, which requires crate version 0.8.0.");
    sub_29A531C2C(v4, 0x800, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LODWORD(__src) = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddString(*a1, a2);
  sub_29A4FBF2C(a1, &__src);
  LODWORD(__src) = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddPath(*a1, (a2 + 24));
  result = sub_29A4FBF2C(a1, &__src);
  if (((*(*(*a1 + 817) + 256) << 16) | (*(*(*a1 + 817) + 257) << 8)) >= 0x800u)
  {
    __src = *(a2 + 32);
    sub_29A4E5264(a1, &__src);
    __src = *(a2 + 40);
    return sub_29A4E5264(a1, &__src);
  }

  return result;
}

void sub_29A545F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_29A545F28(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v9 = bswap64(0x9E3779B97F4A7C55 * sub_29A24C888(a2, (a2 + 24), (a2 + 32)));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = *(i + 1);
        if (v15 == v9)
        {
          if (pxrInternal__aapl__pxrReserved__::SdfPayload::operator==(i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A5461A0(a1, v9, a3, a4, v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A546188(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A546220(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A5461A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x48uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29A380308(v10 + 2, a3, a4);
  *(a5 + 16) = 1;
  return result;
}

void sub_29A546220(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A4E3668(v2 + 16);
    }

    operator delete(v2);
  }
}

__n128 sub_29A546284(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058338;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5462D0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058338;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A546300(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = v8;
  v10[4] = v9;
  sub_29A546398(v5, v10, v3, v4);
}

uint64_t sub_29A54634C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058398))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A546398(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  __p[0] = 0;
  __p[1] = 0;
  *&v9 = 0;
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12 + 1);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v11, 0.0, 1.0);
  pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(&v13, __p, &v12, v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
  sub_29A1DE3A4(&v12);
  if (SBYTE7(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a2 + 16);
  *__p = *a2;
  v9 = v7;
  v10 = *(a2 + 32);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *&v9 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A5465FC(__p, &v13);
  }

  sub_29A5464D4(a4, &v13);
}

void sub_29A5464D4(pxrInternal__aapl__pxrReserved__::VtValue *a1, __int128 *a2)
{
  if ((sub_29A3DF5E8(a1) & 1) == 0)
  {
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v6 + 1);
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v5, 0.0, 1.0);
    pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(__p, v7, &v6, v5);
    sub_29A546918(a1, __p);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v12);
    sub_29A1DE3A4(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
    sub_29A1DE3A4(&v6);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  v4 = sub_29A5469E8(a1);
  sub_29A24B778(v4, a2);
}

void sub_29A5465C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_29A249058(&a18);
  sub_29A1DCEA8(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A5465FC(uint64_t *a1, uint64_t a2)
{
  memset(&__p._seek, 0, 24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&__p._read);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&__p._read + 1);
  LODWORD(__p._p) = -1;
  EmptyToken = sub_29A4FC36C((a1 + 1), 0, &__p);
  if (EmptyToken)
  {
    v5 = *a1;
    v6 = *(*a1 + 144);
    if (LODWORD(__p._p) >= ((*(*a1 + 152) - v6) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      v12 = &qword_2A1742350;
    }

    else
    {
      v7 = *(v6 + 4 * LODWORD(__p._p));
      v9 = v5 + 120;
      v8 = *(v5 + 120);
      if (v7 >= (*(v9 + 8) - v8) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v10 = &qword_2A1742328;
      }

      else
      {
        v10 = (v8 + 8 * v7);
      }

      v11 = *v10 & 0xFFFFFFFFFFFFFFF8;
      v12 = v11 ? (v11 + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
    }

    std::string::operator=(&__p._seek, v12);
    LODWORD(__p._p) = -1;
    v13 = sub_29A4FC36C((a1 + 1), 0, &__p);
    if (v13)
    {
      v14 = *(*a1 + 96);
      if (LODWORD(__p._p) >= ((*(*a1 + 104) - v14) >> 3))
      {
        v15 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v13);
      }

      else
      {
        v15 = (v14 + 8 * LODWORD(__p._p));
      }

      sub_29A2258F0(&__p._read, v15);
      sub_29A225948(&__p._read + 1, v15 + 1);
      if (((*(*a1 + 6576) << 16) | (*(*a1 + 6577) << 8)) < 0x800u)
      {
        pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&__p._cookie, 0.0, 1.0);
        pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(&__p, &__p._seek, &__p._read, &__p._cookie);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = *&__p._p;
        *(a2 + 16) = *&__p._flags;
        *(&__p._file + 5) = 0;
        LOBYTE(__p._p) = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&__p._cookie, 0.0, 1.0);
      *&__p._ub._size = 0;
      __p._extra = 0;
      if (sub_29A4EF670((a1 + 1), 0, &__p._extra) && sub_29A4EF670((a1 + 1), 0, &__p._ub._size))
      {
        pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&__p, *&__p._extra, *&__p._ub._size);
        *&__p._cookie = *&__p._p;
        pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(&__p, &__p._seek, &__p._read, &__p._cookie);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = *&__p._p;
        *(a2 + 16) = *&__p._flags;
        *(&__p._file + 5) = 0;
        LOBYTE(__p._p) = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&__p._read + 1);
  sub_29A1DE3A4(&__p._read);
  if (SHIBYTE(__p._ub._base) < 0)
  {
    operator delete(__p._seek);
  }

  return 0;
}

void sub_29A5468E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_29A1DCEA8(&a17);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A546918(uint64_t a1, __int128 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A204CF78;
  sub_29A3C6FEC(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A5469AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29A5469E8(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B2AC164();
  }

  return sub_29A3C6EA8(a1);
}

__n128 sub_29A546A2C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20583B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A546A78(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20583B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A546AB0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058418))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A546AFC(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  v9[0] = *a1;
  v9[1] = v8;
  v9[2] = v6;
  v9[3] = v7;
  v10 = sub_29A4CCA14();
  sub_29A546B7C(v5, v9, v3, v4);
}

void sub_29A546B7C(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  __p[0] = 0;
  __p[1] = 0;
  *&v9 = 0;
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12 + 1);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v11, 0.0, 1.0);
  pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(&v13, __p, &v12, v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
  sub_29A1DE3A4(&v12);
  if (SBYTE7(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a2 + 16);
  *__p = *a2;
  v9 = v7;
  v10 = *(a2 + 32);
  if ((a3 & 0x4000000000000000) == 0)
  {
    __p[1] = (*(*v9 + 24) + (a3 & 0xFFFFFFFFFFFFLL));
    sub_29A546CC8(__p, &v13);
  }

  sub_29A5464D4(a4, &v13);
}

uint64_t sub_29A546CC8(uint64_t *a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
  LODWORD(__p[0]) = -1;
  EmptyToken = sub_29A4E7A0C((a1 + 1), __p, 4uLL);
  if (EmptyToken)
  {
    v5 = *a1;
    v6 = *(*a1 + 144);
    if (LODWORD(__p[0]) >= ((*(*a1 + 152) - v6) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      v12 = &qword_2A1742350;
    }

    else
    {
      v7 = *(v6 + 4 * LODWORD(__p[0]));
      v9 = v5 + 120;
      v8 = *(v5 + 120);
      if (v7 >= (*(v9 + 8) - v8) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v10 = &qword_2A1742328;
      }

      else
      {
        v10 = (v8 + 8 * v7);
      }

      v11 = *v10 & 0xFFFFFFFFFFFFFFF8;
      v12 = v11 ? (v11 + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
    }

    std::string::operator=(&v22, v12);
    LODWORD(__p[0]) = -1;
    v13 = sub_29A4E7A0C((a1 + 1), __p, 4uLL);
    if (v13)
    {
      v14 = *(*a1 + 96);
      if (LODWORD(__p[0]) >= ((*(*a1 + 104) - v14) >> 3))
      {
        v15 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v13);
      }

      else
      {
        v15 = (v14 + 8 * LODWORD(__p[0]));
      }

      sub_29A2258F0(&v20, v15);
      sub_29A225948(&v21, v15 + 1);
      if (((*(*a1 + 6576) << 16) | (*(*a1 + 6577) << 8)) < 0x800u)
      {
        pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v19, 0.0, 1.0);
        pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(__p, &v22, &v20, &v19);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = *__p;
        *(a2 + 16) = v18;
        HIBYTE(v18) = 0;
        LOBYTE(__p[0]) = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v19, 0.0, 1.0);
      v23 = 0.0;
      __dst = 0.0;
      if (sub_29A4E7A0C((a1 + 1), &__dst, 8uLL) && sub_29A4E7A0C((a1 + 1), &v23, 8uLL))
      {
        pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(__p, __dst, v23);
        v19 = *__p;
        pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(__p, &v22, &v20, &v19);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = *__p;
        *(a2 + 16) = v18;
        HIBYTE(v18) = 0;
        LOBYTE(__p[0]) = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
  sub_29A1DE3A4(&v20);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29A546FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_29A1DCEA8(&a17);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_29A546FEC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058438;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A547038(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058438;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A547070(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058498))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5470BC(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A547168(v6, &v10, v4, v5);
}

void sub_29A547144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A547168(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12 + 1);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v11, 0.0, 1.0);
  pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(&v15, __p, &v12, v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
  sub_29A1DE3A4(&v12);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *a2;
  v7 = *(a2 + 2);
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 3);
  if ((a3 & 0x4000000000000000) == 0)
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A5472DC(&v8, &v15);
    v7 = v9;
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  sub_29A5464D4(a4, &v15);
}

void sub_29A54728C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  sub_29A249058(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_29A5472DC(void *a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
  LODWORD(__p[0]) = -1;
  EmptyToken = sub_29A4E5308(a1 + 1, __p, 4uLL);
  if (EmptyToken)
  {
    v5 = *a1;
    v6 = *(*a1 + 144);
    if (LODWORD(__p[0]) >= ((*(*a1 + 152) - v6) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      v12 = &qword_2A1742350;
    }

    else
    {
      v7 = *(v6 + 4 * LODWORD(__p[0]));
      v9 = v5 + 120;
      v8 = *(v5 + 120);
      if (v7 >= (*(v9 + 8) - v8) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v10 = &qword_2A1742328;
      }

      else
      {
        v10 = (v8 + 8 * v7);
      }

      v11 = *v10 & 0xFFFFFFFFFFFFFFF8;
      v12 = v11 ? (v11 + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
    }

    std::string::operator=(&v22, v12);
    LODWORD(__p[0]) = -1;
    v13 = sub_29A4E5308(a1 + 1, __p, 4uLL);
    if (v13)
    {
      v14 = *(*a1 + 96);
      if (LODWORD(__p[0]) >= ((*(*a1 + 104) - v14) >> 3))
      {
        v15 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v13);
      }

      else
      {
        v15 = (v14 + 8 * LODWORD(__p[0]));
      }

      sub_29A2258F0(&v20, v15);
      sub_29A225948(&v21, v15 + 1);
      if (((*(*a1 + 6576) << 16) | (*(*a1 + 6577) << 8)) < 0x800u)
      {
        pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v19, 0.0, 1.0);
        pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(__p, &v22, &v20, &v19);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = *__p;
        *(a2 + 16) = v18;
        HIBYTE(v18) = 0;
        LOBYTE(__p[0]) = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v19, 0.0, 1.0);
      v23 = 0.0;
      v24 = 0.0;
      if (sub_29A4E5308(a1 + 1, &v24, 8uLL) && sub_29A4E5308(a1 + 1, &v23, 8uLL))
      {
        pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(__p, v24, v23);
        v19 = *__p;
        pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(__p, &v22, &v20, &v19);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = *__p;
        *(a2 + 16) = v18;
        HIBYTE(v18) = 0;
        LOBYTE(__p[0]) = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
  sub_29A1DE3A4(&v20);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29A5475C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_29A1DCEA8(&a17);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_29A547600(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20584B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54764C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20584B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A547684(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058518))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A5476D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = a2[1];
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  return sub_29A543D98(v3, v2, v4 + 264, v6);
}

__n128 sub_29A547744(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058538;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A547790(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058538;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A5477C0(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v11 = 0;
  v12 = v8;
  v13 = v9;
  sub_29A547858(v5, &v10, v3, v4);
}

uint64_t sub_29A54780C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058650))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A547858(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *&v7 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A544D5C(&v6, &__p);
  }

  sub_29A5478E8(a4, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_29A5478CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A5478E8(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A547994(a1) & 1) == 0)
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
    sub_29A547A20(a1, &__p);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  result = sub_29A547EC0(a1);
  v5 = *result;
  *result = *a2;
  *a2 = v5;
  v6 = result[1];
  result[1] = a2[1];
  a2[1] = v6;
  v7 = result[2];
  result[2] = a2[2];
  a2[2] = v7;
  return result;
}

void sub_29A547978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A547994(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B43C2EFLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20405A0);
}

uint64_t sub_29A547A20(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A2058598;
  sub_29A547E48(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A547AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A547AF0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A547B10(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A22B614(a1);
}

BOOL sub_29A547B50(uint64_t **a1, double ***a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = **a2;
  if (v2 - v3 != (*a2)[1] - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    result = *(v5 - 8) == v6;
    v8 = *(v5 - 8) != v6 || v5 == v2;
    v5 += 8;
  }

  while (!v8);
  return result;
}

BOOL sub_29A547BAC(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *a2;
  if (v2 - v3 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    result = *(v5 - 8) == v6;
    v8 = *(v5 - 8) != v6 || v5 == v2;
    v5 += 8;
  }

  while (!v8);
  return result;
}

void *sub_29A547CC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2058598;
  return sub_29A547E48(a2, v2);
}

uint64_t sub_29A547CE0(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 24));
  if (v2 != 1)
  {
    sub_29A547D48(*a1, &v4);
    sub_29A22B614(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A22B614(&v4);
  }

  return *a1;
}

void *sub_29A547D48@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  result = sub_29A00C8EC(v4, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 3);
  atomic_store(0, v4 + 6);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

void *sub_29A547DC0(void *a1, double **a2)
{
  sub_29A00911C(a1, "[ ", 2);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = *v4++;
      v7 = MEMORY[0x29C2C1EB0](a1, v6);
      sub_29A00911C(v7, " ", 1);
    }

    while (v4 != v5);
  }

  sub_29A00911C(a1, "]", 1);
  return a1;
}

void *sub_29A547E48(unsigned int **a1, uint64_t a2)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  result = sub_29A00C8EC(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  atomic_store(0, v4 + 6);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A547EC0(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B2AC1D0();
  }

  return sub_29A547CE0(a1);
}

__n128 sub_29A547F04(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058670;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A547F50(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058670;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A547F88(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20586D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A547FD4(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  *&v9 = *a1;
  *(&v9 + 1) = v8;
  v10 = v6;
  v11 = v7;
  v12 = sub_29A4CCA14();
  sub_29A548054(v5, &v9, v3, v4);
}

void sub_29A548054(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *(&v6 + 1) = *(*v7 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A5480F4(&v6, &__p);
  }

  sub_29A5478E8(a4, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_29A5480D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A5480F4(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = double]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A0124A0(&__p, __dst);
  v7 = sub_29A4E7A0C(a1 + 8, __p, 8 * __dst);
  v8 = v7;
  if (&__p == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29A00CB24(a2, __p, v12, (v12 - __p) >> 3);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A54820C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A548230(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20586F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54827C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20586F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5482B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058750))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A548300(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A5483AC(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A548388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5483AC(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v6 = *a2;
  v5 = *(a2 + 2);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 3);
  if ((a3 & 0x4000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A544E80(&v6, &__p);
    v5 = v7;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A5478E8(a4, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_29A548444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A54847C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058770;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5484C8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058770;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A548500(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20587D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54854C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 4) != 0)
  {
    (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  sub_29A5485B8();
}

uint64_t sub_29A54868C(uint64_t a1, uint64_t **a2)
{
  __src = (a2[1] - *a2) >> 4;
  sub_29A4E5264(a1, &__src);
  return sub_29A548A68(*a2, a2[1], a1);
}

double **sub_29A5486DC(void *a1, uint64_t a2)
{
  v4 = sub_29A22B680(v14, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_29A548948(a1, v5, v14);
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_29A5489F4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_29A548924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A4DDB04(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A548948(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = a2;
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>();
}

void sub_29A5489D8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A4DDB04(v3, v2);
  _Unwind_Resume(a1);
}

BOOL sub_29A5489F4(uint64_t a1, double **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a3;
  if (v4 - *a2 != *(a3 + 8) - *a3)
  {
    return 0;
  }

  if (v3 == v4)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator==(v3, v5);
    if (!result)
    {
      break;
    }

    v3 += 2;
    v5 += 2;
  }

  while (v3 != v4);
  return result;
}

uint64_t sub_29A548A68(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      __src = *v5;
      sub_29A4E5264(a3, &__src);
      __src = v5[1];
      sub_29A4E5264(a3, &__src);
      v5 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

__n128 sub_29A548AE8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20587F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A548B34(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20587F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A548B64(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v11 = 0;
  v12 = v8;
  v13 = v9;
  sub_29A548BFC(v5, &v10, v3, v4);
}

uint64_t sub_29A548BB0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058850))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A548BFC(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *&v7 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A548D38(&v6, &__p);
  }

  sub_29A548C8C(a4, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_29A548C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A548C8C(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A1DF804(a1) & 1) == 0)
  {
    sub_29A548F24(a1);
  }

  result = sub_29A548FF4(a1);
  v5 = *result;
  *result = *a2;
  *a2 = v5;
  v6 = result[1];
  result[1] = a2[1];
  a2[1] = v6;
  v7 = result[2];
  result[2] = a2[2];
  a2[2] = v7;
  return result;
}

void sub_29A548D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A548D38(uint64_t a1, void **a2)
{
  v16 = 0;
  if (!sub_29A4EF670(a1 + 8, 0, &v16))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::SdfLayerOffset]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v16, v6, v4);
    return 0;
  }

  sub_29A22B368(&__p, v16);
  v7 = sub_29A548E5C(a1, __p, v16);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A12D958(a2, __p, v12, (v12 - __p) >> 4);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A548E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A548E5C(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  if (a3)
  {
    v10 = 0.0;
    _18[0] = 0.0;
    v6 = 0;
    if (sub_29A4EF670(a1 + 8, 0, _18))
    {
      v7 = 1;
      do
      {
        if (!sub_29A4EF670(a1 + 8, 0, &v10))
        {
          break;
        }

        pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v9, _18[0], v10);
        *a2 = v9;
        if (a3 == v7)
        {
          return 1;
        }

        ++a2;
        v6 = v7 >= a3;
        v10 = 0.0;
        _18[0] = 0.0;
        ++v7;
      }

      while (sub_29A4EF670(a1 + 8, 0, _18));
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

void sub_29A548F24(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  sub_29A186978(v2, a1);
  *(a1 + 8) = &off_2A2048AA8;
  sub_29A22B8E0();
}

void sub_29A548FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A548FF4(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B2AC23C();
  }

  return sub_29A22B774(a1);
}

__n128 sub_29A549038(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058870;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A549084(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058870;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5490BC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20588D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A549108(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  *&v9 = *a1;
  *(&v9 + 1) = v8;
  v10 = v6;
  v11 = v7;
  v12 = sub_29A4CCA14();
  sub_29A549188(v5, &v9, v3, v4);
}

void sub_29A549188(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *(&v6 + 1) = *(*v7 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A549228(&v6, &__p);
  }

  sub_29A548C8C(a4, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_29A54920C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A549228(uint64_t a1, void **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    __p = "usd/crateFile.cpp";
    v12 = "_Read";
    v13 = 1314;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::SdfLayerOffset]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A22B368(&__p, __dst);
  v7 = sub_29A549358(a1, __p, __dst);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A12D958(a2, __p, v12, (v12 - __p) >> 4);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A54933C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A549358(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  if (a3)
  {
    v10 = 0.0;
    __dst = 0.0;
    v6 = 0;
    if (sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
    {
      v7 = 1;
      do
      {
        if ((sub_29A4E7A0C(a1 + 8, &v10, 8uLL) & 1) == 0)
        {
          break;
        }

        pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v9, __dst, v10);
        *a2 = v9;
        if (a3 == v7)
        {
          return 1;
        }

        ++a2;
        v6 = v7 >= a3;
        v10 = 0.0;
        __dst = 0.0;
        ++v7;
      }

      while (sub_29A4E7A0C(a1 + 8, &__dst, 8uLL));
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

__n128 sub_29A549428(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20588F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A549474(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20588F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5494AC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058950))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5494F8(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A5495A4(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A549580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5495A4(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v6 = *a2;
  v5 = *(a2 + 2);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 3);
  if ((a3 & 0x4000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A54966C(&v6, &__p);
    v5 = v7;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A548C8C(a4, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_29A54963C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A54966C(uint64_t a1, void **a2)
{
  v13 = 0;
  if (!sub_29A4E5308((a1 + 8), &v13, 8uLL))
  {
    return 0;
  }

  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v5 = *(a1 + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v13 > v6)
  {
    sub_29B2AC2A8();
    return 0;
  }

  sub_29A22B368(&__p, v13);
  v7 = sub_29A54977C(a1, __p, v13);
  v8 = v7;
  if (&__p != a2 && v7)
  {
    sub_29A12D958(a2, __p, v12, (v12 - __p) >> 4);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29A549760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A54977C(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  if (a3)
  {
    v10 = 0.0;
    v11 = 0.0;
    v6 = 0;
    if (sub_29A4E5308((a1 + 8), &v11, 8uLL))
    {
      v7 = 1;
      do
      {
        if ((sub_29A4E5308((a1 + 8), &v10, 8uLL) & 1) == 0)
        {
          break;
        }

        pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v9, v11, v10);
        *a2 = v9;
        if (a3 == v7)
        {
          return 1;
        }

        ++a2;
        v6 = v7 >= a3;
        v10 = 0.0;
        v11 = 0.0;
        ++v7;
      }

      while (sub_29A4E5308((a1 + 8), &v11, 8uLL));
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

__n128 sub_29A54984C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058970;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A549898(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058970;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5498D0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20589D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54991C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  sub_29A549988(v3, v2, v4 + 264);
}

void sub_29A549988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

const void ***sub_29A549A68(void *a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  sub_29A1C5CF0(&v13, *a2, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v4 = bswap64(0x9E3779B97F4A7C55 * v13);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    sub_29A549D10(a1, v4, &v13);
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (!sub_29A549DC8(a1, v10 + 2, a2))
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_29A549CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A549E48(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A549D10(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = a2;
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29A549DAC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A549E48(v3, v2);
  _Unwind_Resume(a1);
}

BOOL sub_29A549DC8(uint64_t a1, const void ***a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a3;
  if (v4 - *a2 != *(a3 + 8) - *a3)
  {
    return 0;
  }

  if (v3 == v4)
  {
    return 1;
  }

  do
  {
    result = sub_29A0EC4B8(&v7, v3, v5);
    if (!result)
    {
      break;
    }

    v3 += 3;
    v5 += 3;
  }

  while (v3 != v4);
  return result;
}

void sub_29A549E48(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 2;
    sub_29A012C90(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

__n128 sub_29A549EA0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20589F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A549EEC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20589F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A549F1C(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v11 = 0;
  v12 = v8;
  v13 = v9;
  sub_29A549FB4(v5, &v10, v3, v4);
}

uint64_t sub_29A549F68(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058A50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A549FB4(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  memset(v9, 0, 24);
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *&v7 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A533E5C(&v6, v9);
  }

  sub_29A54A044(a4, v9);
  *&v6 = v9;
  sub_29A012C90(&v6);
}

void sub_29A54A028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v15 - 24) = &a15;
  sub_29A012C90((v15 - 24));
  _Unwind_Resume(a1);
}

uint64_t *sub_29A54A044(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A1DF4B8(a1) & 1) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_29A54A0F4(a1);
  }

  result = sub_29A54A1C4(a1);
  v5 = *result;
  *result = *a2;
  *a2 = v5;
  v6 = result[1];
  result[1] = a2[1];
  a2[1] = v6;
  v7 = result[2];
  result[2] = a2[2];
  a2[2] = v7;
  return result;
}

void sub_29A54A0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void sub_29A54A0F4(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  sub_29A186978(v2, a1);
  *(a1 + 8) = &off_2A2048B60;
  sub_29A22C0F0();
}

void sub_29A54A188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A54A1C4(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B2AC31C();
  }

  return sub_29A22BF64(a1);
}

__n128 sub_29A54A208(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058A70;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54A254(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058A70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54A28C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058AD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54A2D8(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  *&v9 = *a1;
  *(&v9 + 1) = v8;
  v10 = v6;
  v11 = v7;
  v12 = sub_29A4CCA14();
  sub_29A54A358(v5, &v9, v3, v4);
}

void sub_29A54A358(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  memset(v9, 0, 24);
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *(&v6 + 1) = *(*v7 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A53449C(&v6, v9);
  }

  sub_29A54A044(a4, v9);
  *&v6 = v9;
  sub_29A012C90(&v6);
}

void sub_29A54A3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v15 - 24) = &a15;
  sub_29A012C90((v15 - 24));
  _Unwind_Resume(a1);
}

__n128 sub_29A54A400(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058AF0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54A44C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058AF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54A484(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058B50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54A4D0(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A54A57C(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A54A558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A54A57C(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  memset(v9, 0, sizeof(v9));
  v6 = *a2;
  v5 = *(a2 + 2);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 3);
  if ((a3 & 0x4000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A534B3C(&v6, v9);
    v5 = v7;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A54A044(a4, v9);
  v10 = v9;
  sub_29A012C90(&v10);
}

void sub_29A54A614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  *(v13 - 24) = &a13;
  sub_29A012C90((v13 - 24));
  _Unwind_Resume(a1);
}

__n128 sub_29A54A64C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058B70;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54A698(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058B70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54A6C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 4) != 0)
  {
    (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  return 0x4033000000000000;
}

uint64_t sub_29A54A700(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058BD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29A54A754(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058BF0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54A7A0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058BF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54A7F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058C50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A54A844(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if ((sub_29A2F1FA8(a1) & 1) == 0)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      v3 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *(a1 + 1) = &off_2A2048E28 + 3;
  }

  return sub_29A54A8B4(a1);
}

uint64_t sub_29A54A8B4(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B2AC388();
  }

  return a1;
}

__n128 sub_29A54A8F4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058C70;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54A940(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058C70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54A970(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a3;
  sub_29A4CCA14();
  return sub_29A54A844(v3);
}

uint64_t sub_29A54A9A8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058CD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29A54A9FC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058CF0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54AA48(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058CF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54AA80(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058D50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54AACC(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a3;
  v4 = *(*a1 + 6704);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v4);
  }

  sub_29A54A844(v3);
  if (v4)
  {
    sub_29A014BEC(v4);
    sub_29A014BEC(v4);
  }
}

void sub_29A54AB3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A54AB64(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058D70;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54ABB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058D70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54ABF4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058DD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A54AC40(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v16[2] = *MEMORY[0x29EDCA608];
  v13[0] = a2;
  v13[1] = a3;
  sub_29A186EF4(v16, a4);
  sub_29A186B14(v16);
  v7 = *a1;
  if (!*a1)
  {
    v8 = operator new(0x28uLL);
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 8) = 1065353216;
    sub_29A3747F8(a1, v8);
    v7 = *a1;
  }

  v14[0] = 0;
  v9 = sub_29A54AD48(v7, a4, a4, v14);
  v10 = v9;
  if (v11)
  {
    *(v9 + 32) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x34000000000000;
    v14[0] = v13;
    v14[1] = a4;
    v14[2] = __src;
    sub_29A52FB28(v13, v14);
    sub_29A4E5264(v13, __src);
  }

  return *(v10 + 32);
}

uint64_t sub_29A54AD48(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, void *a3, void *a4)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::VtValue::GetHash(this));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v8)
          {
            pxrInternal__aapl__pxrReserved__::VtValue::operator==();
          }

          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v4)
          {
            break;
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  sub_29A54AFB8(a1, v8, a3, a4, v26);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    v22 = v26[0];
    *v26[0] = *v21;
    *v21 = v22;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v20 + 8 * v4) = a1 + 16;
    v22 = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      v22 = v26[0];
    }
  }

  ++*(a1 + 24);
  return v22;
}

void sub_29A54AFA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A374D0C(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A54AFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x28uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29A186EF4(v10 + 2, a3);
  v10[4] = *a4;
  *(a5 + 16) = 1;
  return result;
}

__n128 sub_29A54B048(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058DF0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54B094(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058DF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54B0C4(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v12 = 0;
  v13 = v8;
  v14 = v9;
  return sub_29A54B15C(v5, &v11, v3, v4);
}

uint64_t sub_29A54B110(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058E50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A54B15C(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  v10[2] = *MEMORY[0x29EDCA608];
  v10[1] = 0;
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  v9 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *&v8 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A52FFCC(&v7, v10);
  }

  sub_29A1DE11C(a4, v10);
  return sub_29A186B14(v10);
}

void sub_29A54B1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A54B20C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058E70;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54B258(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058E70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54B290(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058ED0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A54B2DC(void *a1, uint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  *&v10 = *a1;
  *(&v10 + 1) = v8;
  v11 = v6;
  v12 = v7;
  v13 = sub_29A4CCA14();
  return sub_29A54B35C(v5, &v10, v3, v4);
}

uint64_t sub_29A54B35C(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  v10[2] = *MEMORY[0x29EDCA608];
  v10[1] = 0;
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  v9 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *(&v7 + 1) = *(*v8 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A530D48(&v7, v10);
  }

  sub_29A1DE11C(a4, v10);
  return sub_29A186B14(v10);
}

void sub_29A54B400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A54B41C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058EF0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54B468(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058EF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54B4A0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058F50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54B4EC(uint64_t *a1, uint64_t *a2, void **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A54B598(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A54B574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A54B598(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  v10[2] = *MEMORY[0x29EDCA608];
  v10[1] = 0;
  v7 = *a2;
  v5 = *(a2 + 2);
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 3);
  if ((a3 & 0x4000000000000000) == 0)
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A531390(&v7, v10);
    v5 = v8;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A1DE11C(a4, v10);
  return sub_29A186B14(v10);
}

void sub_29A54B650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A54B678(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058F70;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54B6C4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058F70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54B6FC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2058FD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A54B748(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  return sub_29A54B7B4(v3, v2, v4 + 264, v6);
}

uint64_t sub_29A54B7B4(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v16[2] = *MEMORY[0x29EDCA608];
  v13[0] = a2;
  v13[1] = a3;
  sub_29A186EF4(v16, a4);
  sub_29A186B14(v16);
  v7 = *a1;
  if (!*a1)
  {
    v8 = operator new(0x28uLL);
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 8) = 1065353216;
    sub_29A3747F8(a1, v8);
    v7 = *a1;
  }

  v14[0] = 0;
  v9 = sub_29A54B8BC(v7, a4, a4, v14);
  v10 = v9;
  if (v11)
  {
    v9[4] = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x35000000000000;
    v14[0] = v13;
    v14[1] = a4;
    v14[2] = __src;
    sub_29A52FB28(v13, v14);
    sub_29A4E5264(v13, __src);
  }

  return v10[4];
}

void *sub_29A54B8BC(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, void *a3, void *a4)
{
  v9 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::VtValue::GetHash(this));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        do
        {
          v15 = v14[1];
          if (v15 == v9)
          {
            if (pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v14 + 2, this))
            {
              return v14;
            }
          }

          else
          {
            if (v12 > 1)
            {
              if (v15 >= v10)
              {
                v15 %= v10;
              }
            }

            else
            {
              v15 &= v10 - 1;
            }

            if (v15 != v4)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  sub_29A54AFB8(a1, v9, a3, a4, &v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    v14 = v27;
    *v27 = *v23;
    *v23 = v14;
  }

  else
  {
    v24 = v27;
    *v27 = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    v14 = v27;
    if (*v27)
    {
      v25 = *(*v27 + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27;
      v14 = v27;
    }
  }

  ++*(a1 + 24);
  return v14;
}

void sub_29A54BB14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A374D0C(va, 0);
  _Unwind_Resume(a1);
}

__n128 sub_29A54BB34(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2058FF0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54BB80(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2058FF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54BBB0(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v12 = 0;
  v13 = v8;
  v14 = v9;
  return sub_29A54BC48(v5, &v11, v3, v4);
}

uint64_t sub_29A54BBFC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059050))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A54BC48(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v12[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v12);
  v7 = a2[1];
  v9 = *a2;
  v10 = v7;
  v11 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *&v10 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A54BDB0(&v9, v12);
  }

  sub_29A54BD0C(a4, v12);
  return sub_29A186B14(v12);
}

uint64_t sub_29A54BD0C(pxrInternal__aapl__pxrReserved__::VtValue *a1, void *a2)
{
  v5[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A1EFA64(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v5);
    sub_29A22388C(a1, v5);
    sub_29A186B14(v5);
  }

  return sub_29A54C00C(a1, a2);
}

void sub_29A54BD94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A54BDB0(uint64_t *a1, void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v19 = 0;
  if (!sub_29A52FFCC(a1, &v18))
  {
    goto LABEL_25;
  }

  if (!sub_29A1EFC10(&v18))
  {
    if (sub_29A185258(&v18))
    {
      if ((v19 & 4) != 0)
      {
        v4 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(&v18);
      }

      else
      {
        v4 = v18;
      }

      pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v16, v4);
      goto LABEL_14;
    }

    if (sub_29A1EFB84(&v18))
    {
      if ((v19 & 4) != 0)
      {
        v5 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(&v18);
      }

      else
      {
        v5 = v18;
      }

      pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v16, v5);
      goto LABEL_14;
    }

    v16[0] = "usd/crateFile.cpp";
    v16[1] = "Read";
    v16[2] = 1500;
    v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::Read(T &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue]";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v18, &v14);
    v7 = v15;
    v8 = v14.__vftable;
    sub_29A1F87E8(&v18);
    v9 = &v14;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "SdfUnregisteredValue in crate file contains invalid type '%s' = '%s'; expected string, VtDictionary or SdfUnregisteredValueListOp; returning empty", v9, p_p);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (v15 < 0)
    {
      operator delete(v14.__vftable);
    }

    pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v16);
    sub_29A18606C(a2, v16);
    sub_29A186B14(v16);
LABEL_25:
    v6 = 0;
    goto LABEL_26;
  }

  if ((v19 & 4) != 0)
  {
    v3 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(&v18);
  }

  else
  {
    v3 = v18;
  }

  pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v16, v3);
LABEL_14:
  sub_29A18606C(a2, v16);
  sub_29A186B14(v16);
  v6 = 1;
LABEL_26:
  sub_29A186B14(&v18);
  return v6;
}

uint64_t sub_29A54C00C(uint64_t *a1, void *a2)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v3 = sub_29A54C094(a1);
  sub_29A186A3C(v5, v3);
  sub_29A18606C(v3, a2);
  sub_29A18606C(a2, v5);
  return sub_29A186B14(v5);
}

uint64_t sub_29A54C094(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B2AC3F4();
  }

  return sub_29A224A68(a1);
}

__n128 sub_29A54C0D8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059070;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54C124(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059070;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54C15C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20590D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A54C1A8(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  *&v10 = *a1;
  *(&v10 + 1) = v8;
  v11 = v6;
  v12 = v7;
  v13 = sub_29A4CCA14();
  return sub_29A54C228(v5, &v10, v3, v4);
}

uint64_t sub_29A54C228(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v12[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v12);
  v7 = a2[1];
  v9 = *a2;
  v10 = v7;
  v11 = *(a2 + 4);
  if ((a3 & 0x4000000000000000) == 0)
  {
    *(&v9 + 1) = *(*v10 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    sub_29A54C2FC(&v9, v12);
  }

  sub_29A54BD0C(a4, v12);
  return sub_29A186B14(v12);
}

uint64_t sub_29A54C2FC(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v19 = 0;
  if ((sub_29A530D48(a1, &v18) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!sub_29A1EFC10(&v18))
  {
    if (sub_29A185258(&v18))
    {
      if ((v19 & 4) != 0)
      {
        v4 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(&v18);
      }

      else
      {
        v4 = v18;
      }

      pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v16, v4);
      goto LABEL_14;
    }

    if (sub_29A1EFB84(&v18))
    {
      if ((v19 & 4) != 0)
      {
        v5 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(&v18);
      }

      else
      {
        v5 = v18;
      }

      pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v16, v5);
      goto LABEL_14;
    }

    v16[0] = "usd/crateFile.cpp";
    v16[1] = "Read";
    v16[2] = 1500;
    v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::Read(T &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue]";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v18, &v14);
    v7 = v15;
    v8 = v14.__vftable;
    sub_29A1F87E8(&v18);
    v9 = &v14;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "SdfUnregisteredValue in crate file contains invalid type '%s' = '%s'; expected string, VtDictionary or SdfUnregisteredValueListOp; returning empty", v9, p_p);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (v15 < 0)
    {
      operator delete(v14.__vftable);
    }

    pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v16);
    sub_29A18606C(a2, v16);
    sub_29A186B14(v16);
LABEL_25:
    v6 = 0;
    goto LABEL_26;
  }

  if ((v19 & 4) != 0)
  {
    v3 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(&v18);
  }

  else
  {
    v3 = v18;
  }

  pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v16, v3);
LABEL_14:
  sub_29A18606C(a2, v16);
  sub_29A186B14(v16);
  v6 = 1;
LABEL_26:
  sub_29A186B14(&v18);
  return v6;
}

__n128 sub_29A54C560(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20590F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54C5AC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20590F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54C5E4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059150))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54C630(uint64_t *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A54C6DC(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A54C6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A54C6DC(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v12[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v12);
  v9 = *a2;
  v7 = *(a2 + 2);
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 3);
  if ((a3 & 0x4000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
    sub_29A54C7D8(&v9, v12);
    v7 = v10;
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  sub_29A54BD0C(a4, v12);
  return sub_29A186B14(v12);
}

void sub_29A54C7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A54C7D8(uint64_t *a1, void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v19 = 0;
  if ((sub_29A531390(a1, &v18) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!sub_29A1EFC10(&v18))
  {
    if (sub_29A185258(&v18))
    {
      if ((v19 & 4) != 0)
      {
        v4 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(&v18);
      }

      else
      {
        v4 = v18;
      }

      pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v16, v4);
      goto LABEL_14;
    }

    if (sub_29A1EFB84(&v18))
    {
      if ((v19 & 4) != 0)
      {
        v5 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(&v18);
      }

      else
      {
        v5 = v18;
      }

      pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v16, v5);
      goto LABEL_14;
    }

    v16[0] = "usd/crateFile.cpp";
    v16[1] = "Read";
    v16[2] = 1500;
    v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>::Read(T &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream, T = pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue]";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v18, &v14);
    v7 = v15;
    v8 = v14.__vftable;
    sub_29A1F87E8(&v18);
    v9 = &v14;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "SdfUnregisteredValue in crate file contains invalid type '%s' = '%s'; expected string, VtDictionary or SdfUnregisteredValueListOp; returning empty", v9, p_p);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (v15 < 0)
    {
      operator delete(v14.__vftable);
    }

    pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v16);
    sub_29A18606C(a2, v16);
    sub_29A186B14(v16);
LABEL_25:
    v6 = 0;
    goto LABEL_26;
  }

  if ((v19 & 4) != 0)
  {
    v3 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(&v18);
  }

  else
  {
    v3 = v18;
  }

  pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v16, v3);
LABEL_14:
  sub_29A18606C(a2, v16);
  sub_29A186B14(v16);
  v6 = 1;
LABEL_26:
  sub_29A186B14(&v18);
  return v6;
}

__n128 sub_29A54CA3C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059170;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54CA88(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059170;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54CAC0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20591D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A54CB0C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  return sub_29A54CB78(v3, v2, v4 + 264, v6);
}

uint64_t sub_29A54CB78(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v20[0] = a2;
  v20[1] = a3;
  sub_29A27C964(&v13, a4);
  v21 = &v19;
  sub_29A1D0D38(&v21);
  v21 = &v18;
  sub_29A1D0D38(&v21);
  v21 = &v17;
  sub_29A1D0D38(&v21);
  v21 = &v16;
  sub_29A1D0D38(&v21);
  v21 = &v15;
  sub_29A1D0D38(&v21);
  v21 = &v14;
  sub_29A1D0D38(&v21);
  v7 = *a1;
  if (!*a1)
  {
    v8 = operator new(0x28uLL);
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 8) = 1065353216;
    sub_29A4E3FE0(a1, v8);
    v7 = *a1;
  }

  v21 = 0;
  v9 = sub_29A54CDC8(v7, a4, a4, &v21);
  v10 = v9;
  if (v11)
  {
    *(v9 + 168) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x36000000000000;
    sub_29A54CC90(v20, a4);
  }

  return *(v10 + 168);
}

uint64_t sub_29A54CC90(uint64_t a1, uint64_t *a2)
{
  sub_29A531E14(&__src, a2);
  if ((__src & 0x60) != 0)
  {
    v4 = *(*a1 + 6536);
    sub_29A008E78(__p, "A SdfListOp value using a prepended or appended value was detected, which requires crate version 0.2.0.");
    sub_29A531C2C(v4, 0x200, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_29A506C88(a1, &__src);
  v6 = __src;
  if ((__src & 2) != 0)
  {
    result = sub_29A54D148(a1, a2 + 1);
    v6 = __src;
    if ((__src & 4) == 0)
    {
LABEL_6:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((__src & 4) == 0)
  {
    goto LABEL_6;
  }

  result = sub_29A54D148(a1, a2 + 4);
  v6 = __src;
  if ((__src & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = sub_29A54D148(a1, a2 + 7);
  v6 = __src;
  if ((__src & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = sub_29A54D148(a1, a2 + 10);
  v6 = __src;
  if ((__src & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    return sub_29A54D148(a1, a2 + 16);
  }

LABEL_16:
  result = sub_29A54D148(a1, a2 + 13);
  if ((__src & 0x10) == 0)
  {
    return result;
  }

  return sub_29A54D148(a1, a2 + 16);
}

void sub_29A54CDAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A54CDC8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v26 = 0;
  v27 = 0;
  sub_29A3FF0D8(&v26, a2, (a2 + 8), (a2 + 32), (a2 + 56), (a2 + 80), (a2 + 104), (a2 + 128));
  v8 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v26));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v8)
          {
            pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::operator==();
          }

          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v4)
          {
            break;
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  sub_29A54D064(a1, v8, a3, a4, &v26);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    v22 = v26;
    *v26 = *v21;
    *v21 = v22;
  }

  else
  {
    v23 = v26;
    *v26 = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v20 + 8 * v4) = a1 + 16;
    v22 = v26;
    if (*v26)
    {
      v24 = *(*v26 + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26;
      v22 = v26;
    }
  }

  ++*(a1 + 24);
  return v22;
}

void sub_29A54D04C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A54D0EC(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A54D064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0xB0uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29A27C964((v10 + 2), a3);
  v10[21] = *a4;
  *(a5 + 16) = 1;
  return result;
}

void sub_29A54D0EC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A4E409C(v2 + 2);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A54D148(uint64_t a1, uint64_t *a2)
{
  __src = (a2[1] - *a2) >> 4;
  sub_29A4E5264(a1, &__src);
  return sub_29A54D198(*a2, a2[1], a1);
}

uint64_t sub_29A54D198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7[0] = a3;
      v7[1] = v5;
      v7[2] = __src;
      sub_29A52FB28(a3, v7);
      sub_29A4E5264(a3, __src);
      v5 += 16;
    }

    while (v5 != a2);
  }

  return a3;
}

__n128 sub_29A54D214(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20591F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54D260(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20591F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54D2DC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059250))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54D400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A278844(va);
  _Unwind_Resume(a1);
}

void sub_29A54D414(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if ((sub_29A1EFB84(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::SdfListOp();
  }

  sub_29A54DB38(a1);
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::Swap();
}

void sub_29A54D770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A1D0D38((v6 - 40));
  sub_29A278844(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_29A54D7AC(_BYTE *a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_29A373850((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 4);
    sub_29A373850((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
    sub_29A373850((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 4);
    sub_29A373850((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 4);
    sub_29A373850((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 4);
    sub_29A373850((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 4);
  }

  return a1;
}

uint64_t sub_29A54D860(uint64_t *a1, char **a2)
{
  v19 = 0;
  if (!sub_29A4EF670((a1 + 1), 0, &v19))
  {
    return 0;
  }

  v5 = a1[2];
  v4 = a1[3];
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v19 > v6)
  {
    v14 = "usd/crateFile.cpp";
    v15 = "_Read";
    v16 = 1314;
    v17 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue]";
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v14, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v19, v6, v4);
    return 0;
  }

  sub_29A54D9D0(&v14, v19);
  v7 = v19;
  if (!v19)
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = v14;
  v10 = 1;
  v11 = v19;
  do
  {
    if (!sub_29A54BDB0(a1, v9))
    {
      break;
    }

    v9 += 16;
    v8 = v10++ >= v7;
    --v11;
  }

  while (v11);
  if (!v8)
  {
    v12 = 0;
  }

  else
  {
LABEL_10:
    if (&v14 != a2)
    {
      sub_29A373850(a2, v14, v15, (v15 - v14) >> 4);
    }

    v12 = 1;
  }

  v20 = &v14;
  sub_29A1D0D38(&v20);
  return v12;
}

void sub_29A54D9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a12;
  sub_29A1D0D38(&a18);
  _Unwind_Resume(a1);
}

void *sub_29A54D9D0(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = a1[1];
    v5 = v4 + 16 * a2;
    v6 = 16 * a2;
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v4);
      v4 += 16;
      v6 -= 16;
    }

    while (v6);
    a1[1] = v5;
  }

  return a1;
}

uint64_t sub_29A54DA68(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A204D8D8;
  sub_29A3FF3C4(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A54DAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A54DB38(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B2AC460();
  }

  return sub_29A3FF2F4(a1);
}

__n128 sub_29A54DB7C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059270;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54DBC8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059270;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54DC00(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20592D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54DDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A278844(va);
  _Unwind_Resume(a1);
}

void sub_29A54E04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A1D0D38((v6 - 40));
  sub_29A278844(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A54E088(uint64_t a1, char **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    v14 = "usd/crateFile.cpp";
    v15 = "_Read";
    v16 = 1314;
    v17 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue]";
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v14, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A54D9D0(&v14, __dst);
  v7 = __dst;
  if (!__dst)
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = v14;
  v10 = 1;
  v11 = __dst;
  do
  {
    if (!sub_29A54C2FC(a1, v9))
    {
      break;
    }

    v9 += 16;
    v8 = v10++ >= v7;
    --v11;
  }

  while (v11);
  if (!v8)
  {
    v12 = 0;
  }

  else
  {
LABEL_10:
    if (&v14 != a2)
    {
      sub_29A373850(a2, v14, v15, (v15 - v14) >> 4);
    }

    v12 = 1;
  }

  v20 = &v14;
  sub_29A1D0D38(&v20);
  return v12;
}

void sub_29A54E1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a12;
  sub_29A1D0D38(&a18);
  _Unwind_Resume(a1);
}

__n128 sub_29A54E20C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20592F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54E258(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20592F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54E290(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059350))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54E2DC(uint64_t a1)
{
  v1 = *(*a1 + 6704);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A54E388();
}

void sub_29A54E364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A54E484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A278844(va);
  _Unwind_Resume(a1);
}

void sub_29A54E730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A1D0D38((v6 - 40));
  sub_29A278844(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A54E76C(uint64_t *a1, char **a2)
{
  v16 = 0;
  if (!sub_29A4E5308(a1 + 1, &v16, 8uLL))
  {
    return 0;
  }

  v4 = (*(*a1[1] + 16))(a1[1]);
  v5 = a1[3];
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    sub_29B2AC4CC();
    return 0;
  }

  sub_29A54D9D0(&v14, v16);
  v7 = v16;
  if (!v16)
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = v14;
  v10 = 1;
  v11 = v16;
  do
  {
    if (!sub_29A54C7D8(a1, v9))
    {
      break;
    }

    v9 += 16;
    v8 = v10++ >= v7;
    --v11;
  }

  while (v11);
  if (!v8)
  {
    v12 = 0;
  }

  else
  {
LABEL_10:
    if (&v14 != a2)
    {
      sub_29A373850(a2, v14, v15, (v15 - v14) >> 4);
    }

    v12 = 1;
  }

  v17 = &v14;
  sub_29A1D0D38(&v17);
  return v12;
}

void sub_29A54E8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  sub_29A1D0D38(&a14);
  _Unwind_Resume(a1);
}

__n128 sub_29A54E8D0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059370;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54E91C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059370;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54E954(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20593D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A54E9A0(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 817);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  return sub_29A54EA0C(v3, v2, (v4 + 264), v6);
}

uint64_t sub_29A54EA0C(uint64_t *a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a3, uint64_t *a4)
{
  v20[0] = a2;
  v20[1] = a3;
  sub_29A24C0F4(&v13, a4);
  v21 = &v19;
  sub_29A24A5D0(&v21);
  v21 = &v18;
  sub_29A24A5D0(&v21);
  v21 = &v17;
  sub_29A24A5D0(&v21);
  v21 = &v16;
  sub_29A24A5D0(&v21);
  v21 = &v15;
  sub_29A24A5D0(&v21);
  v21 = &v14;
  sub_29A24A5D0(&v21);
  v7 = *a1;
  if (!*a1)
  {
    v8 = operator new(0x28uLL);
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 8) = 1065353216;
    sub_29A4E42EC(a1, v8);
    v7 = *a1;
  }

  v21 = 0;
  v9 = sub_29A54EBB8(v7, a4, a4, &v21);
  v10 = v9;
  if (v11)
  {
    *(v9 + 168) = *(a3 + 2) & 0xFFFFFFFFFFFFLL | 0x37000000000000;
    sub_29A54EB24(v20, a4);
  }

  return *(v10 + 168);
}

uint64_t sub_29A54EB24(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, uint64_t *a2)
{
  v4 = *(*a1 + 817);
  sub_29A008E78(__p, "A SdfPayloadListOp value was detected which requires crate version 0.8.0.");
  sub_29A531C2C(v4, 0x800, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_29A54EF38(a1, a2);
}

void sub_29A54EB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A54EBB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = 0;
  v27 = 0;
  sub_29A24C68C(&v26, a2, (a2 + 8), (a2 + 32), (a2 + 56), (a2 + 80), (a2 + 104), (a2 + 128));
  v8 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v26));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v8)
          {
            pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::operator==();
          }

          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v4)
          {
            break;
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  sub_29A54EE54(a1, v8, a3, a4, &v26);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    v22 = v26;
    *v26 = *v21;
    *v21 = v22;
  }

  else
  {
    v23 = v26;
    *v26 = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v20 + 8 * v4) = a1 + 16;
    v22 = v26;
    if (*v26)
    {
      v24 = *(*v26 + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26;
      v22 = v26;
    }
  }

  ++*(a1 + 24);
  return v22;
}

void sub_29A54EE3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A54EEDC(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A54EE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0xB0uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29A24C0F4((v10 + 2), a3);
  v10[21] = *a4;
  *(a5 + 16) = 1;
  return result;
}

void sub_29A54EEDC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A4E43A8(v2 + 2);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A54EF38(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, uint64_t *a2)
{
  sub_29A531E14(&__src, a2);
  if ((__src & 0x60) != 0)
  {
    v4 = *(*a1 + 817);
    sub_29A008E78(__p, "A SdfListOp value using a prepended or appended value was detected, which requires crate version 0.2.0.");
    sub_29A531C2C(v4, 0x200, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_29A506C88(a1, &__src);
  v6 = __src;
  if ((__src & 2) != 0)
  {
    result = sub_29A54F070(a1, a2 + 1);
    v6 = __src;
    if ((__src & 4) == 0)
    {
LABEL_6:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((__src & 4) == 0)
  {
    goto LABEL_6;
  }

  result = sub_29A54F070(a1, a2 + 4);
  v6 = __src;
  if ((__src & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = sub_29A54F070(a1, a2 + 7);
  v6 = __src;
  if ((__src & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = sub_29A54F070(a1, a2 + 10);
  v6 = __src;
  if ((__src & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    return sub_29A54F070(a1, a2 + 16);
  }

LABEL_16:
  result = sub_29A54F070(a1, a2 + 13);
  if ((__src & 0x10) == 0)
  {
    return result;
  }

  return sub_29A54F070(a1, a2 + 16);
}

void sub_29A54F054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A54F070(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, uint64_t *a2)
{
  __src = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
  result = sub_29A4E5264(a1, &__src);
  v5 = *a2;
  for (i = a2[1]; v5 != i; v5 += 48)
  {
    result = sub_29A545E14(a1, v5);
  }

  return result;
}

__n128 sub_29A54F0F4(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20593F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54F140(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20593F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54F1BC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059450))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54F2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A24A2DC(va);
  _Unwind_Resume(a1);
}

void sub_29A54F578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A24A5D0((v6 - 40));
  sub_29A24A2DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A54F5B4(uint64_t *a1, std::string **a2)
{
  v19 = 0;
  if (!sub_29A4EF670((a1 + 1), 0, &v19))
  {
    return 0;
  }

  v5 = a1[2];
  v4 = a1[3];
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v19 > v6)
  {
    v14 = "usd/crateFile.cpp";
    v15 = "_Read";
    v16 = 1314;
    v17 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream, T = pxrInternal__aapl__pxrReserved__::SdfPayload]";
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v14, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", v19, v6, v4);
    return 0;
  }

  sub_29A54F730(&v14, v19);
  v7 = v19;
  if (!v19)
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = v14;
  v10 = 1;
  v11 = v19;
  do
  {
    if (!sub_29A5465FC(a1, v9))
    {
      break;
    }

    v9 += 2;
    v8 = v10++ >= v7;
    --v11;
  }

  while (v11);
  if (!v8)
  {
    v12 = 0;
  }

  else
  {
LABEL_10:
    if (&v14 != a2)
    {
      sub_29A325794(a2, v14, v15, 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 4));
    }

    v12 = 1;
  }

  v20 = &v14;
  sub_29A24A5D0(&v20);
  return v12;
}

void sub_29A54F710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a12;
  sub_29A24A5D0(&a18);
  _Unwind_Resume(a1);
}

void *sub_29A54F730(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A1C11FC(a1, a2);
    sub_29A54F79C(a1, a2);
  }

  return a1;
}

void sub_29A54F79C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v3 + 48 * a2;
    v5 = 48 * a2;
    do
    {
      sub_29A54F804(a1, v3);
      v3 += 48;
      v5 -= 48;
    }

    while (v5);
    v3 = v4;
  }

  *(a1 + 8) = v3;
}

void sub_29A54F804(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v4 + 1);
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v3, 0.0, 1.0);
  pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(a2, __p, &v4, v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v4 + 1);
  sub_29A1DE3A4(&v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A54F89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_29A1DCEA8(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_29A54F8C8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059470;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54F914(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059470;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54F94C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20594D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A54FB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A24A2DC(va);
  _Unwind_Resume(a1);
}

void sub_29A54FD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A24A5D0((v6 - 40));
  sub_29A24A2DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A54FDD4(uint64_t a1, std::string **a2)
{
  __dst = 0;
  if (!sub_29A4E7A0C(a1 + 8, &__dst, 8uLL))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 32);
  v5 = *(a1 + 8) - *(**(a1 + 16) + 24);
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || __dst > v6)
  {
    v14 = "usd/crateFile.cpp";
    v15 = "_Read";
    v16 = 1314;
    v17 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>::_Read(vector<T> &) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>, T = pxrInternal__aapl__pxrReserved__::SdfPayload]";
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v14, 3, "Failed to read vector of size %llu, remaining file size is %lld of %lld", __dst, v6, v4);
    return 0;
  }

  sub_29A54F730(&v14, __dst);
  v7 = __dst;
  if (!__dst)
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = v14;
  v10 = 1;
  v11 = __dst;
  do
  {
    if (!sub_29A546CC8(a1, v9))
    {
      break;
    }

    v9 += 2;
    v8 = v10++ >= v7;
    --v11;
  }

  while (v11);
  if (!v8)
  {
    v12 = 0;
  }

  else
  {
LABEL_10:
    if (&v14 != a2)
    {
      sub_29A325794(a2, v14, v15, 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 4));
    }

    v12 = 1;
  }

  v20 = &v14;
  sub_29A24A5D0(&v20);
  return v12;
}

void sub_29A54FF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a12;
  sub_29A24A5D0(&a18);
  _Unwind_Resume(a1);
}

__n128 sub_29A54FF64(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20594F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A54FFB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20594F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A54FFE8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059550))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A550034(uint64_t a1)
{
  v1 = *(*a1 + 6704);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A5500E0();
}

void sub_29A5500BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5501DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A24A2DC(va);
  _Unwind_Resume(a1);
}

void sub_29A550488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  sub_29A24A5D0((v6 - 40));
  sub_29A24A2DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A5504C4(void *a1, std::string **a2)
{
  v16 = 0;
  if (!sub_29A4E5308(a1 + 1, &v16, 8uLL))
  {
    return 0;
  }

  v4 = (*(*a1[1] + 16))(a1[1]);
  v5 = a1[3];
  v6 = v4 - v5;
  if (v5 < 0 || (v6 & 0x8000000000000000) != 0 || v16 > v6)
  {
    sub_29B2AC540();
    return 0;
  }

  sub_29A54F730(&v14, v16);
  v7 = v16;
  if (!v16)
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = v14;
  v10 = 1;
  v11 = v16;
  do
  {
    if (!sub_29A5472DC(a1, v9))
    {
      break;
    }

    v9 += 2;
    v8 = v10++ >= v7;
    --v11;
  }

  while (v11);
  if (!v8)
  {
    v12 = 0;
  }

  else
  {
LABEL_10:
    if (&v14 != a2)
    {
      sub_29A325794(a2, v14, v15, 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 4));
    }

    v12 = 1;
  }

  v17 = &v14;
  sub_29A24A5D0(&v17);
  return v12;
}

void sub_29A55060C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  sub_29A24A5D0(&a14);
  _Unwind_Resume(a1);
}

__n128 sub_29A550634(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059570;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A550680(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059570;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5506C4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20595D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A550710(uint64_t *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v4 = this;
  IsArrayValued = pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(this);
  v9 = *(v4 + 1);
  if (IsArrayValued)
  {
    if ((v9 & 4) != 0)
    {
      v10 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    else
    {
      v10 = *v4;
    }

    return sub_29A550838(a1, a2, a3, v10);
  }

  else
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v18[0] = a2;
    v18[1] = a3;
    v12 = *a1;
    if (!*a1)
    {
      v13 = operator new(0x28uLL);
      *v13 = 0u;
      v13[1] = 0u;
      *(v13 + 8) = 1065353216;
      sub_29A160214(a1, v13);
      v12 = *a1;
    }

    v17 = 0;
    v14 = sub_29A550DA8(v12, v4, v4, &v17);
    v15 = v14;
    if (v16)
    {
      *(v14 + 3) = *(a3 + 16) & 0xFFFFFFFFFFFFLL | 0x38000000000000;
      sub_29A550D0C(v18, v4);
    }

    return *(v15 + 3);
  }
}

unint64_t sub_29A550838(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v25[0] = a2;
  v25[1] = a3;
  result = 0x8038000000000000;
  v24 = 0x8038000000000000;
  if (*a4)
  {
    v11 = *(a1 + 8);
    v10 = (a1 + 8);
    v9 = v11;
    if (!v11)
    {
      v12 = operator new(0x28uLL);
      *v12 = 0u;
      v12[1] = 0u;
      *(v12 + 8) = 1065353216;
      sub_29A4E4430(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A5509E8(v9, a4, a4, &v24);
    if (v14)
    {
      v15 = *(a2 + 6536);
      if (((*(v15 + 256) << 16) | (*(v15 + 257) << 8)) > 0x4FFu)
      {
        v19 = *(v15 + 256);
        v26[0] = a2;
        v26[1] = a3;
        v20 = sub_29A4FBB98(v26, 8);
        if (((v19 | (v19 << 16)) & 0xFFFF00u) > 0x6FF)
        {
          __src = *a4;
          sub_29A4E5264(v26, &__src);
        }

        else
        {
          LODWORD(__src) = *a4;
          sub_29A4FBF2C(v26, &__src);
        }

        v21 = *a4;
        if (*a4)
        {
          v22 = a4[4];
          v23 = 8 * v21;
          do
          {
            sub_29A550D0C(v26, v22++);
            v23 -= 8;
          }

          while (v23);
        }

        v13[7] = v20 & 0xFFFFFFFFFFFFLL | 0x8038000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v25, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v26[0]) = 1;
        sub_29A4FBF2C(v25, v26);
        LODWORD(v26[0]) = *a4;
        sub_29A4FBF2C(v25, v26);
        v16 = *a4;
        if (*a4)
        {
          v17 = a4[4];
          v18 = 8 * v16;
          do
          {
            sub_29A550D0C(v25, v17++);
            v18 -= 8;
          }

          while (v18);
        }
      }
    }

    return v13[7];
  }

  return result;
}

void *sub_29A5509E8(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4)
{
  v9 = *a2;
  if (*a2)
  {
    v10 = a2[4];
    v11 = *a2;
    do
    {
      v12 = *v10++;
      v13 = v12;
      if (v12 == 0.0)
      {
        v13 = 0.0;
      }

      v9 = *&v13 + ((*&v13 + v9 + (*&v13 + v9) * (*&v13 + v9)) >> 1);
      --v11;
    }

    while (v11);
    v9 *= 0x9E3779B97F4A7C55;
  }

  v14 = bswap64(v9);
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = vcnt_s8(v15);
    v16.i16[0] = vaddlv_u8(v16);
    v17 = v16.u32[0];
    if (v16.u32[0] > 1uLL)
    {
      v4 = v14;
      if (v14 >= v15)
      {
        v4 = v14 % v15;
      }
    }

    else
    {
      v4 = (v15 - 1) & v14;
    }

    v18 = *(*a1 + 8 * v4);
    if (v18)
    {
      for (i = *v18; i; i = *i)
      {
        v20 = i[1];
        if (v20 == v14)
        {
          if (Overlay::__operatorEqualsEquals(i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v17 > 1)
          {
            if (v20 >= v15)
            {
              v20 %= v15;
            }
          }

          else
          {
            v20 &= v15 - 1;
          }

          if (v20 != v4)
          {
            break;
          }
        }
      }
    }
  }

  v21 = operator new(0x40uLL);
  i = v21;
  *v21 = 0;
  *(v21 + 1) = v14;
  v22 = *(a3 + 16);
  *(v21 + 1) = *a3;
  *(v21 + 2) = v22;
  v23 = *(a3 + 32);
  *(v21 + 6) = v23;
  if (v23)
  {
    v24 = (v23 - 16);
    if (*(v21 + 5))
    {
      v24 = *(v21 + 5);
    }

    atomic_fetch_add_explicit(v24, 1uLL, memory_order_relaxed);
  }

  *(v21 + 7) = *a4;
  v25 = (*(a1 + 24) + 1);
  v26 = *(a1 + 32);
  if (!v15 || (v26 * v15) < v25)
  {
    v27 = 1;
    if (v15 >= 3)
    {
      v27 = (v15 & (v15 - 1)) != 0;
    }

    v28 = v27 | (2 * v15);
    v29 = vcvtps_u32_f32(v25 / v26);
    if (v28 <= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    sub_29A019AA0(a1, v30);
    v15 = *(a1 + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v4 = v14 % v15;
      }

      else
      {
        v4 = v14;
      }
    }

    else
    {
      v4 = (v15 - 1) & v14;
    }
  }

  v31 = *a1;
  v32 = *(*a1 + 8 * v4);
  if (v32)
  {
    *i = *v32;
LABEL_48:
    *v32 = i;
    goto LABEL_49;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v31 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v33 = *(*i + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v33 >= v15)
      {
        v33 %= v15;
      }
    }

    else
    {
      v33 &= v15 - 1;
    }

    v32 = (*a1 + 8 * v33);
    goto LABEL_48;
  }

LABEL_49:
  ++*(a1 + 24);
  return i;
}

void sub_29A550CB0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_29A213190(__p + 16);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_29A550D0C(uint64_t a1, uint64_t *a2)
{
  v4 = *(*a1 + 6536);
  sub_29A008E78(__p, "A timecode or timecode[] value type was detected which requires crate version 0.9.0.");
  sub_29A531C2C(v4, 0x900, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *a2;
  return sub_29A4E5264(a1, &v6);
}

void sub_29A550D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_29A550DA8(uint64_t a1, double *a2, double *a3, uint64_t *a4)
{
  v8 = 0x9E3779B97F4A7C55 * *a2;
  if (*a2 == 0.0)
  {
    v8 = 0;
  }

  v9 = bswap64(v8);
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = *(v13 + 1);
          if (v14 == v9)
          {
            if (v13[2] == *a2)
            {
              return v13;
            }
          }

          else
          {
            if (v11.u32[0] > 1uLL)
            {
              if (v14 >= v10)
              {
                v14 %= v10;
              }
            }

            else
            {
              v14 &= v10 - 1;
            }

            if (v14 != v4)
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

  v13 = operator new(0x20uLL);
  *v13 = 0.0;
  *(v13 + 1) = v9;
  v15 = *a4;
  v13[2] = *a3;
  *(v13 + 3) = v15;
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    *v13 = *v23;
LABEL_40:
    *v23 = v13;
    goto LABEL_41;
  }

  *v13 = *(a1 + 16);
  *(a1 + 16) = v13;
  *(v22 + 8 * v4) = a1 + 16;
  if (*v13)
  {
    v24 = *(*v13 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v24 >= v10)
      {
        v24 %= v10;
      }
    }

    else
    {
      v24 &= v10 - 1;
    }

    v23 = (*a1 + 8 * v24);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 24);
  return v13;
}

__n128 sub_29A551000(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20595F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A55104C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20595F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A55107C(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = v8;
  v10[4] = v9;
  sub_29A551114(v5, v10, v3, v4);
}

uint64_t sub_29A5510C8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059650))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A551114(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    v7 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v7;
    v9 = *(a2 + 32);
    sub_29A5511E4(a1, v8, a3, v10);
    sub_29A3FA08C(a4, v10);
    sub_29A213190(v10);
  }

  else
  {
    *&v8[0] = 0;
    if (!(a3 >> 62))
    {
      v5 = *(a2 + 32);
      v6 = *(a2 + 8);
      v10[0].n128_u64[0] = 0;
      if (pxrInternal__aapl__pxrReserved__::ArchPRead(v5, v10, 8, v6 + (a3 & 0xFFFFFFFFFFFFLL)) != -1)
      {
        *&v8[0] = v10[0].n128_u64[0];
      }
    }

    sub_29A3FA030(a4, v8);
  }
}

void sub_29A5511CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A213190(va);
  _Unwind_Resume(a1);
}

void sub_29A5511E4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    *(a2 + 2) = a3 & 0xFFFFFFFFFFFFLL;
    v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
    if (v6 > 0x4FF)
    {
      v9 = a2[1];
      v16 = *a2;
      v17 = v9;
      v18 = *(a2 + 4);
      v22 = 0;
      if (v6 > 0x6FF)
      {
        v13 = pxrInternal__aapl__pxrReserved__::ArchPRead(v18, &v22, 8, v17 + *(&v16 + 1));
        if (v13 == -1)
        {
          return;
        }

        v11 = v13 + v17;
        *&v17 = v13 + v17;
        v12 = v22;
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(v19) = 0;
      if (!sub_29A4FC36C(a2 + 8, 0, &v19))
      {
        return;
      }

      v7 = a2[1];
      v16 = *a2;
      v17 = v7;
      v18 = *(a2 + 4);
    }

    LODWORD(v19) = 0;
    v10 = pxrInternal__aapl__pxrReserved__::ArchPRead(v18, &v19, 4, v17 + *(&v16 + 1));
    if (v10 == -1)
    {
      return;
    }

    v11 = v10 + v17;
    *&v17 = v10 + v17;
    v12 = v19;
    v22 = v19;
LABEL_13:
    v14 = *(&v17 + 1) - v11;
    if (v11 < 0 || (v14 & 0x8000000000000000) != 0 || (v12 <= v14 ? (v15 = 8 * v12 > v14) : (v15 = 1), v15))
    {
      *&v19 = "usd/crateFile.cpp";
      *(&v19 + 1) = "_ReadUncompressedArray";
      *&v20 = 2226;
      *(&v20 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::SdfTimeCode]";
      LOBYTE(v21) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 8 * v12, v14, *(&v17 + 1));
    }

    else
    {
      v23 = 0;
      *&v19 = &v23;
      sub_29A21324C(a4, v12, &v19);
      sub_29A21358C(a4);
      sub_29A5513E4(&v16, *(a4 + 32), *a4);
    }

    return;
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  if (&v19 != a4)
  {
    sub_29A213190(a4);
    v8 = v20;
    *a4 = v19;
    *(a4 + 16) = v8;
    v19 = 0u;
    v20 = 0u;
    *(a4 + 32) = v21;
    v21 = 0;
  }

  sub_29A213190(&v19);
}

void sub_29A5513C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A213190(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A5513E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  _8[0] = 0;
  result = sub_29A4EF670(a1 + 8, 0, _8);
  if (result)
  {
    v7 = 0;
    while (1)
    {
      *(a2 + 8 * v7) = _8[0];
      if (a3 - 1 == v7)
      {
        break;
      }

      _8[0] = 0;
      ++v7;
      if (!sub_29A4EF670(a1 + 8, 0, _8))
      {
        return v7 >= a3;
      }
    }

    return 1;
  }

  return result;
}

__n128 sub_29A551498(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059670;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5514E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059670;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A55151C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20596D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A551568(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  v9[0] = *a1;
  v9[1] = v8;
  v9[2] = v6;
  v9[3] = v7;
  v10 = sub_29A4CCA14();
  sub_29A5515E8(v5, v9, v3, v4);
}

void sub_29A5515E8(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v6 = *(a2 + 16);
    __dst[0] = *a2;
    __dst[1] = v6;
    v9 = *(a2 + 32);
    sub_29A5516D4(a1, __dst, a3, &v10);
    sub_29A3FA08C(a4, &v10);
    sub_29A213190(&v10);
  }

  else
  {
    v7 = 0;
    v5 = *(a2 + 16);
    v10 = *a2;
    v11 = v5;
    v12 = *(a2 + 32);
    if (!(a3 >> 62))
    {
      *(&v10 + 1) = *(*v11 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
      *&__dst[0] = 0;
      if (sub_29A4E7A0C(&v10 + 8, __dst, 8uLL))
      {
        v7 = *&__dst[0];
      }
    }

    sub_29A3FA030(a4, &v7);
  }
}

void sub_29A5516BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A213190(va);
  _Unwind_Resume(a1);
}

void sub_29A5516D4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
    if (v6 > 0x4FF)
    {
      v9 = a2[1];
      v15 = *a2;
      v16 = v9;
      v17 = *(a2 + 4);
      v21 = 0;
      if (v6 > 0x6FF)
      {
        if (!sub_29A4E7A0C(&v15 + 8, &v21, 8uLL))
        {
          return;
        }

        v10 = v21;
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(__dst) = 0;
      if (!sub_29A4E7A0C(a2 + 8, &__dst, 4uLL))
      {
        return;
      }

      v7 = a2[1];
      v15 = *a2;
      v16 = v7;
      v17 = *(a2 + 4);
    }

    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(&v15 + 8, &__dst, 4uLL))
    {
      return;
    }

    v10 = __dst;
    v21 = __dst;
LABEL_13:
    v11 = *(*v16 + 32);
    v12 = *(&v15 + 1) - *(*v16 + 24);
    v13 = v11 - v12;
    if (v12 < 0 || (v13 & 0x8000000000000000) != 0 || (v10 <= v13 ? (v14 = 8 * v10 > v13) : (v14 = 1), v14))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v19 = 2226;
      *(&v19 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::SdfTimeCode]";
      LOBYTE(v20) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v10, 8 * v10, v13, v11);
    }

    else
    {
      v22 = 0;
      *&__dst = &v22;
      sub_29A21324C(a4, v10, &__dst);
      sub_29A21358C(a4);
      sub_29A5518D0(&v15, *(a4 + 32), *a4);
    }

    return;
  }

  v20 = 0;
  __dst = 0u;
  v19 = 0u;
  if (&__dst != a4)
  {
    sub_29A213190(a4);
    v8 = v19;
    *a4 = __dst;
    *(a4 + 16) = v8;
    __dst = 0u;
    v19 = 0u;
    *(a4 + 32) = v20;
    v20 = 0;
  }

  sub_29A213190(&__dst);
}

void sub_29A5518B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A213190(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A5518D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  __dst = 0;
  result = sub_29A4E7A0C(a1 + 8, &__dst, 8uLL);
  if (result)
  {
    v7 = 0;
    while (1)
    {
      *(a2 + 8 * v7) = __dst;
      if (a3 - 1 == v7)
      {
        break;
      }

      __dst = 0;
      ++v7;
      if ((sub_29A4E7A0C(a1 + 8, &__dst, 8uLL) & 1) == 0)
      {
        return v7 >= a3;
      }
    }

    return 1;
  }

  return result;
}

__n128 sub_29A551984(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20596F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5519D0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20596F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A551A08(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059750))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A551A54(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A551B00(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A551ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A551B00(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v11 = *a2;
    v6 = *(a2 + 2);
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a2 + 3);
    sub_29A551C4C(a1, &v11, a3, v14);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    sub_29A3FA08C(a4, v14);
    sub_29A213190(v14);
  }

  else
  {
    v10 = 0;
    v7 = *a2;
    v5 = *(a2 + 2);
    v8 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(a2 + 3);
    if (!(a3 >> 62))
    {
      v9 = a3 & 0xFFFFFFFFFFFFLL;
      v14[0].n128_u64[0] = 0;
      if (sub_29A4E5308(&v7 + 1, v14, 8uLL))
      {
        v10 = v14[0].n128_u64[0];
      }

      v5 = v8;
    }

    if (v5)
    {
      sub_29A014BEC(v5);
    }

    sub_29A3FA030(a4, &v10);
  }
}

void sub_29A551C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A551C4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    a2[3] = a3 & 0xFFFFFFFFFFFFLL;
    v6 = *a2;
    v7 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
    if (v7 <= 0x4FF)
    {
      LODWORD(v21) = 0;
      if (!sub_29A4E5308(a2 + 1, &v21, 4uLL))
      {
        return;
      }

      v6 = *a2;
    }

    v8 = a2[1];
    v9 = a2[2];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = a2[3];
      v17 = v6;
      v18 = v8;
      v19 = v9;
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v10 = a2[3];
      v17 = v6;
      v18 = v8;
      v19 = 0;
    }

    v20 = v10;
    v24 = 0;
    if (v7 > 0x6FF)
    {
      if (sub_29A4E5308(&v18, &v24, 8uLL))
      {
LABEL_15:
        v12 = (*(*v18 + 16))(v18);
        v13 = v12 - v20;
        v14 = v24;
        if (v20 < 0 || (v13 & 0x8000000000000000) != 0 || (v24 <= v13 ? (v15 = 8 * v24 > v13) : (v15 = 1), v15))
        {
          *&v21 = "usd/crateFile.cpp";
          *(&v21 + 1) = "_ReadUncompressedArray";
          *&v22 = 2226;
          *(&v22 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::SdfTimeCode]";
          LOBYTE(v23) = 0;
          v16 = (*(*v18 + 16))(v18);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v14, 8 * v14, v13, v16);
        }

        else
        {
          v25 = 0;
          *&v21 = &v25;
          sub_29A21324C(a4, v24, &v21);
          sub_29A21358C(a4);
          sub_29A551EE0(&v17, *(a4 + 32), *a4);
        }
      }
    }

    else
    {
      LODWORD(v21) = 0;
      if (sub_29A4E5308(&v18, &v21, 4uLL))
      {
        v24 = v21;
        goto LABEL_15;
      }
    }

    if (v19)
    {
      sub_29A014BEC(v19);
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }

    return;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  if (&v21 != a4)
  {
    sub_29A213190(a4);
    v11 = v22;
    *a4 = v21;
    *(a4 + 16) = v11;
    v21 = 0u;
    v22 = 0u;
    *(a4 + 32) = v23;
    v23 = 0;
  }

  sub_29A213190(&v21);
}

void sub_29A551EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A213190(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A551EE0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v8 = 0;
  result = sub_29A4E5308((a1 + 8), &v8, 8uLL);
  if (result)
  {
    v7 = 0;
    while (1)
    {
      *(a2 + 8 * v7) = v8;
      if (a3 - 1 == v7)
      {
        break;
      }

      v8 = 0;
      ++v7;
      if ((sub_29A4E5308((a1 + 8), &v8, 8uLL) & 1) == 0)
      {
        return v7 >= a3;
      }
    }

    return 1;
  }

  return result;
}

__n128 sub_29A551F94(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059770;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A551FE0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059770;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A552024(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20597D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A552070(uint64_t a1, void *a2, void *a3, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  IsArrayValued = pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(this);
  v9 = *(this + 1);
  if (!IsArrayValued)
  {
    if ((v9 & 4) != 0)
    {
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
    }

    sub_29A5522F4(a1, a2, a3);
  }

  if ((v9 & 4) != 0)
  {
    v10 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v10 = *this;
  }

  return sub_29A55213C(a1, a2, a3, v10);
}

unint64_t sub_29A55213C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a3, uint64_t *a4)
{
  v25[0] = a2;
  v25[1] = a3;
  result = 0x8039000000000000;
  v24 = 0x8039000000000000;
  if (*a4)
  {
    v11 = *(a1 + 8);
    v10 = (a1 + 8);
    v9 = v11;
    if (!v11)
    {
      v12 = operator new(0x28uLL);
      *v12 = 0u;
      v12[1] = 0u;
      *(v12 + 8) = 1065353216;
      sub_29A4E44EC(v10, v12);
      v9 = *v10;
    }

    v13 = sub_29A5523EC(v9, a4, a4, &v24);
    if (v14)
    {
      v15 = *(a2 + 817);
      if (((*(v15 + 256) << 16) | (*(v15 + 257) << 8)) > 0x4FFu)
      {
        v19 = *(v15 + 256);
        v26[0] = a2;
        v26[1] = a3;
        v20 = sub_29A4FBB98(v26, 8);
        if (((v19 | (v19 << 16)) & 0xFFFF00u) > 0x6FF)
        {
          __src = *a4;
          sub_29A4E5264(v26, &__src);
        }

        else
        {
          LODWORD(__src) = *a4;
          sub_29A4FBF2C(v26, &__src);
        }

        v21 = *a4;
        if (*a4)
        {
          v22 = a4[4];
          v23 = 96 * v21;
          do
          {
            sub_29A552700(v26, v22);
            v22 = (v22 + 96);
            v23 -= 96;
          }

          while (v23);
        }

        v13[7] = v20 & 0xFFFFFFFFFFFFLL | 0x8039000000000000;
      }

      else
      {
        v13[7] = sub_29A4FBB98(v25, 8) & 0xFFFFFFFFFFFFLL | (*(v13 + 31) << 48);
        LODWORD(v26[0]) = 1;
        sub_29A4FBF2C(v25, v26);
        LODWORD(v26[0]) = *a4;
        sub_29A4FBF2C(v25, v26);
        v16 = *a4;
        if (*a4)
        {
          v17 = a4[4];
          v18 = 96 * v16;
          do
          {
            sub_29A552700(v25, v17);
            v17 = (v17 + 96);
            v18 -= 96;
          }

          while (v18);
        }
      }
    }

    return v13[7];
  }

  return result;
}

void sub_29A5522F4(uint64_t a1, void *a2, void *a3)
{
  v3[12] = a2;
  v3[13] = a3;
  sub_29A218364(v3);
}

void *sub_29A5523EC(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v9 = *a2;
  LOBYTE(v32) = 1;
  v31 = v9;
  sub_29A2191D0(&v31, a2[4], v9);
  v10 = bswap64(0x9E3779B97F4A7C55 * v31);
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v10;
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A219234(i + 2, a2))
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

          if (v16 != v4)
          {
            break;
          }
        }
      }
    }
  }

  v17 = operator new(0x40uLL);
  i = v17;
  v32 = a1;
  v33 = 1;
  *v17 = 0;
  *(v17 + 1) = v10;
  v18 = *(a3 + 16);
  *(v17 + 1) = *a3;
  *(v17 + 2) = v18;
  v19 = *(a3 + 32);
  *(v17 + 6) = v19;
  if (v19)
  {
    v20 = (v19 - 16);
    if (*(v17 + 5))
    {
      v20 = *(v17 + 5);
    }

    atomic_fetch_add_explicit(v20, 1uLL, memory_order_relaxed);
  }

  *(v17 + 7) = *a4;
  v21 = (*(a1 + 24) + 1);
  v22 = *(a1 + 32);
  if (!v11 || (v22 * v11) < v21)
  {
    v23 = 1;
    if (v11 >= 3)
    {
      v23 = (v11 & (v11 - 1)) != 0;
    }

    v24 = v23 | (2 * v11);
    v25 = vcvtps_u32_f32(v21 / v22);
    if (v24 <= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    sub_29A019AA0(a1, v26);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v27 = *a1;
  v28 = *(*a1 + 8 * v4);
  if (v28)
  {
    *i = *v28;
LABEL_42:
    *v28 = i;
    goto LABEL_43;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v27 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v29 = *(*i + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v29 >= v11)
      {
        v29 %= v11;
      }
    }

    else
    {
      v29 &= v11 - 1;
    }

    v28 = (*a1 + 8 * v29);
    goto LABEL_42;
  }

LABEL_43:
  ++*(a1 + 24);
  return i;
}

void sub_29A5526A4(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_29A219394(__p + 2);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void sub_29A552700(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, pxrInternal__aapl__pxrReserved__::SdfPathExpression *a2)
{
  v4 = *(*a1 + 817);
  sub_29A008E78(__p, "A pathExpression value type was detected which requires crate version 0.10.0.");
  sub_29A531C2C(v4, 0xA00, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::SdfPathExpression::GetText(v5, a2);
  __src = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddString(*a1, v5);
  sub_29A4FBF2C(a1, &__src);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_29A5527A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A5527D4(void *a1, void *a2)
{
  v3 = sub_29A217BE8(v10, a2);
  v4 = a1[1];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = v3;
      if (v3 >= *&v4)
      {
        v6 = v3 % *&v4;
      }
    }

    else
    {
      v6 = (*&v4 - 1) & v3;
    }

    v7 = *(*a1 + 8 * v6);
    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v9 = v8[1];
          if (v9 == v3)
          {
            v10[0] = v8 + 2;
            v10[1] = v8 + 5;
            v10[2] = v8 + 8;
            v10[3] = v8 + 11;
            std::__tuple_equal<4ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>>();
          }

          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v4)
            {
              v9 %= *&v4;
            }
          }

          else
          {
            v9 &= *&v4 - 1;
          }

          if (v9 != v6)
          {
            break;
          }

          v8 = *v8;
        }

        while (v8);
      }
    }
  }

  sub_29A552A70(a1, v3, v10);
}

void sub_29A552A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A552AF8(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A552A70(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x78uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = a2;
  sub_29A218364(v6 + 2);
}

void sub_29A552AF8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A219848(v2 + 16);
    }

    operator delete(v2);
  }
}

__n128 sub_29A552B5C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20597F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A552BA8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20597F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A552BD8(uint64_t a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v6[834];
  v8 = v6[835];
  v9 = v6[833];
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = v8;
  v10[4] = v9;
  sub_29A552C70(v5, v10, v3, v4);
}

uint64_t sub_29A552C24(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059850))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A552C70(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    *&v9 = 0;
    *v7 = 0u;
    v8 = 0u;
    v6 = *(a2 + 16);
    v13 = *a2;
    v14 = v6;
    v15 = *(a2 + 32);
    sub_29A552D94(a1, &v13, a3, v7);
    sub_29A3FB3B0(a4, v7);
    sub_29A219394(v7);
  }

  else
  {
    *__p = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    *v7 = 0u;
    v8 = 0u;
    v5 = *(a2 + 16);
    v13 = *a2;
    v14 = v5;
    v15 = *(a2 + 32);
    if (!(a3 >> 62))
    {
      *&v14 = a3 & 0xFFFFFFFFFFFFLL;
      sub_29A553354(&v13, v7);
    }

    sub_29A3FB2F4(a4, v7);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[1]);
    }

    *&v13 = &v10;
    sub_29A218CE8(&v13);
    *&v13 = &v8 + 8;
    sub_29A21859C(&v13);
    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }
}

void sub_29A552D94(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    *(a2 + 2) = a3 & 0xFFFFFFFFFFFFLL;
    v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
    if (v6 > 0x4FF)
    {
      v9 = a2[1];
      v22 = *a2;
      v23 = v9;
      v24 = *(a2 + 4);
      v28 = 0;
      if (v6 > 0x6FF)
      {
        v13 = pxrInternal__aapl__pxrReserved__::ArchPRead(v24, &v28, 8, v23 + *(&v22 + 1));
        if (v13 == -1)
        {
          return;
        }

        v11 = v13 + v23;
        *&v23 = v13 + v23;
        v12 = v28;
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(v25) = 0;
      if (!sub_29A4FC36C(a2 + 8, 0, &v25))
      {
        return;
      }

      v7 = a2[1];
      v22 = *a2;
      v23 = v7;
      v24 = *(a2 + 4);
    }

    LODWORD(v25) = 0;
    v10 = pxrInternal__aapl__pxrReserved__::ArchPRead(v24, &v25, 4, v23 + *(&v22 + 1));
    if (v10 == -1)
    {
      return;
    }

    v11 = v10 + v23;
    *&v23 = v10 + v23;
    v12 = v25;
    v28 = v25;
LABEL_13:
    v14 = *(&v23 + 1) - v11;
    if (v11 < 0 || (v14 & 0x8000000000000000) != 0 || (v12 <= v14 ? (v15 = 96 * v12 > v14) : (v15 = 1), v15))
    {
      *&v25 = "usd/crateFile.cpp";
      *(&v25 + 1) = "_ReadUncompressedArray";
      *&v26 = 2226;
      *(&v26 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, T = pxrInternal__aapl__pxrReserved__::SdfPathExpression]";
      LOBYTE(v27) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v25, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v12, 96 * v12, v14, *(&v23 + 1));
    }

    else
    {
      sub_29A552FA8(a4, v12);
      sub_29A219950(a4);
      v16 = *a4;
      if (*a4)
      {
        v17 = *(a4 + 32);
        v18 = v16 - 1;
        do
        {
          v19 = sub_29A553354(&v22, v17);
          v21 = v18-- != 0;
          if (!v19)
          {
            break;
          }

          v17 += 96;
        }

        while (v21);
      }
    }

    return;
  }

  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  if (&v25 != a4)
  {
    sub_29A219394(a4);
    v8 = v26;
    *a4 = v25;
    *(a4 + 16) = v8;
    v25 = 0u;
    v26 = 0u;
    *(a4 + 32) = v27;
    v27 = 0;
  }

  sub_29A219394(&v25);
}

void sub_29A552FA8(unint64_t *a1, unint64_t a2)
{
  *__p = 0u;
  v6 = 0u;
  v4 = 0u;
  *v2 = 0u;
  memset(v3, 0, sizeof(v3));
  v7 = v2;
  sub_29A553044(a1, a2);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  v7 = &v4;
  sub_29A218CE8(&v7);
  v7 = v3 + 1;
  sub_29A21859C(&v7);
  if (v2[0])
  {
    v2[1] = v2[0];
    operator delete(v2[0]);
  }
}

void sub_29A553044(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v5 = a1[4];
    if (v5)
    {
      if (!a1[3])
      {
        v6 = atomic_load(v5 - 2);
        if (v6 == 1)
        {
          if (v2 < a2)
          {
            v7 = a1[4];
            if (*(v7 - 8) < a2)
            {
              v5 = sub_29A21971C(a1, a2);
              sub_29A2198B0(v7, v7 + 96 * v2, v5);
            }

            sub_29A218364(&v5[12 * v2]);
          }

          v11 = 96 * v2;
          v12 = 96 * a2;
          do
          {
            v13 = &v5[v12 / 8];
            if (SHIBYTE(v5[v12 / 8 + 11]) < 0)
            {
              operator delete(v13[9]);
            }

            v15 = v13 + 6;
            sub_29A218CE8(&v15);
            v15 = v13 + 3;
            sub_29A21859C(&v15);
            v14 = *v13;
            if (*v13)
            {
              v5[v12 / 8 + 1] = v14;
              operator delete(v14);
            }

            v12 += 96;
          }

          while (v11 != v12);
LABEL_27:
          if (v5 != a1[4])
          {
            sub_29A219394(a1);
            a1[4] = v5;
          }

          *a1 = a2;
          return;
        }

        v5 = a1[4];
      }

      v9 = v5;
      if (v2 >= a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a1;
      }

      v5 = sub_29A21971C(a1, a2);
      sub_29A2198B0(v9, v9 + 96 * v10, v5);
      if (v2 < a2)
      {
        sub_29A218364(&v5[12 * v2]);
      }

      goto LABEL_27;
    }

    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      v8 = sub_29A21971C(a1, a2);
      sub_29A218364(v8);
    }
  }

  sub_29A219470(a1);
}

void sub_29A5532AC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_29A219848(v1);
      v1 += 96;
      v3 -= 96;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t *sub_29A553354(uint64_t *a1, uint64_t a2)
{
  memset(&__p._ub._size, 0, 24);
  LODWORD(__p._p) = -1;
  EmptyToken = sub_29A4FC36C((a1 + 1), 0, &__p);
  v5 = EmptyToken;
  if (EmptyToken)
  {
    v6 = *a1;
    v7 = *(*a1 + 144);
    if (LODWORD(__p._p) >= ((*(*a1 + 152) - v7) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      EmptyString = &qword_2A1742350;
    }

    else
    {
      v8 = *(v7 + 4 * LODWORD(__p._p));
      v10 = v6 + 120;
      v9 = *(v6 + 120);
      if (v8 >= (*(v10 + 8) - v9) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v11 = &qword_2A1742328;
      }

      else
      {
        v11 = (v9 + 8 * v8);
      }

      v12 = *v11 & 0xFFFFFFFFFFFFFFF8;
      if (v12)
      {
        EmptyString = (v12 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
      }
    }

    std::string::operator=(&__p._ub._size, EmptyString);
    pxrInternal__aapl__pxrReserved__::SdfPathExpression::SdfPathExpression(&__p);
    v14 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v14;
      operator delete(v14);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *a2 = *&__p._p;
    *(a2 + 16) = *&__p._flags;
    memset(&__p, 0, 24);
    sub_29A217560((a2 + 24));
    *(a2 + 24) = __p._bf;
    *(a2 + 40) = *&__p._lbfsize;
    memset(&__p._bf, 0, 24);
    sub_29A21761C((a2 + 48));
    *(a2 + 48) = *&__p._cookie;
    *(a2 + 64) = __p._read;
    memset(&__p._cookie, 0, 24);
    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    *(a2 + 72) = *&__p._seek;
    *(a2 + 88) = __p._ub._base;
    HIBYTE(__p._ub._base) = 0;
    LOBYTE(__p._seek) = 0;
    __p._lb._base = &__p._cookie;
    sub_29A218CE8(&__p._lb);
    __p._lb._base = &__p._bf;
    sub_29A21859C(&__p._lb);
    if (__p._p)
    {
      *&__p._r = __p._p;
      operator delete(__p._p);
    }

    if (__p._nbuf[0] < 0)
    {
      operator delete(*&__p._ub._size);
    }
  }

  return v5;
}

void sub_29A55352C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 41) < 0)
  {
    operator delete(*(v15 - 64));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A553568(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059870;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A5535B4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059870;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A5535EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20598D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A553638(void *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = a1[1];
  v6 = *a1 + 6656;
  v7 = *(*a1 + 6744);
  v8 = *(*v6 + 24);
  v9[0] = *a1;
  v9[1] = v8;
  v9[2] = v6;
  v9[3] = v7;
  v10 = sub_29A4CCA14();
  sub_29A5536B8(v5, v9, v3, v4);
}

void sub_29A5536B8(uint64_t a1, uint64_t a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    *&v9 = 0;
    *v7 = 0u;
    v8 = 0u;
    v6 = *(a2 + 16);
    v13 = *a2;
    v14 = v6;
    v15 = *(a2 + 32);
    sub_29A5537EC(a1, &v13, a3, v7);
    sub_29A3FB3B0(a4, v7);
    sub_29A219394(v7);
  }

  else
  {
    *__p = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    *v7 = 0u;
    v8 = 0u;
    v5 = *(a2 + 16);
    v13 = *a2;
    v14 = v5;
    v15 = *(a2 + 32);
    if (!(a3 >> 62))
    {
      *(&v13 + 1) = *(*v14 + 24) + (a3 & 0xFFFFFFFFFFFFLL);
      sub_29A5539FC(&v13, v7);
    }

    sub_29A3FB2F4(a4, v7);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[1]);
    }

    *&v13 = &v10;
    sub_29A218CE8(&v13);
    *&v13 = &v8 + 8;
    sub_29A21859C(&v13);
    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }
}

void sub_29A5537EC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    *(a2 + 1) = *(**(a2 + 2) + 24) + (a3 & 0xFFFFFFFFFFFFLL);
    v6 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
    if (v6 > 0x4FF)
    {
      v9 = a2[1];
      v21 = *a2;
      v22 = v9;
      v23 = *(a2 + 4);
      v27 = 0;
      if (v6 > 0x6FF)
      {
        if (!sub_29A4E7A0C(&v21 + 8, &v27, 8uLL))
        {
          return;
        }

        v10 = v27;
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(__dst) = 0;
      if (!sub_29A4E7A0C(a2 + 8, &__dst, 4uLL))
      {
        return;
      }

      v7 = a2[1];
      v21 = *a2;
      v22 = v7;
      v23 = *(a2 + 4);
    }

    LODWORD(__dst) = 0;
    if (!sub_29A4E7A0C(&v21 + 8, &__dst, 4uLL))
    {
      return;
    }

    v10 = __dst;
    v27 = __dst;
LABEL_13:
    v11 = *(*v22 + 32);
    v12 = *(&v21 + 1) - *(*v22 + 24);
    v13 = v11 - v12;
    if (v12 < 0 || (v13 & 0x8000000000000000) != 0 || (v10 <= v13 ? (v14 = 96 * v10 > v13) : (v14 = 1), v14))
    {
      *&__dst = "usd/crateFile.cpp";
      *(&__dst + 1) = "_ReadUncompressedArray";
      *&v25 = 2226;
      *(&v25 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, T = pxrInternal__aapl__pxrReserved__::SdfPathExpression]";
      LOBYTE(v26) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v10, 96 * v10, v13, v11);
    }

    else
    {
      sub_29A552FA8(a4, v10);
      sub_29A219950(a4);
      v15 = *a4;
      if (*a4)
      {
        v16 = *(a4 + 32);
        v17 = v15 - 1;
        do
        {
          v18 = sub_29A5539FC(&v21, v16);
          v20 = v17-- != 0;
          if (!v18)
          {
            break;
          }

          v16 += 96;
        }

        while (v20);
      }
    }

    return;
  }

  v26 = 0;
  __dst = 0u;
  v25 = 0u;
  if (&__dst != a4)
  {
    sub_29A219394(a4);
    v8 = v25;
    *a4 = __dst;
    *(a4 + 16) = v8;
    __dst = 0u;
    v25 = 0u;
    *(a4 + 32) = v26;
    v26 = 0;
  }

  sub_29A219394(&__dst);
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *sub_29A5539FC(uint64_t *a1, uint64_t a2)
{
  memset(&v24, 0, sizeof(v24));
  LODWORD(__p[0]) = -1;
  EmptyToken = sub_29A4E7A0C((a1 + 1), __p, 4uLL);
  v5 = EmptyToken;
  if (EmptyToken)
  {
    v6 = *a1;
    v7 = *(*a1 + 144);
    if (LODWORD(__p[0]) >= ((*(*a1 + 152) - v7) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      EmptyString = &qword_2A1742350;
    }

    else
    {
      v8 = *(v7 + 4 * LODWORD(__p[0]));
      v10 = v6 + 120;
      v9 = *(v6 + 120);
      if (v8 >= (*(v10 + 8) - v9) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v11 = &qword_2A1742328;
      }

      else
      {
        v11 = (v9 + 8 * v8);
      }

      v12 = *v11 & 0xFFFFFFFFFFFFFFF8;
      if (v12)
      {
        EmptyString = (v12 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
      }
    }

    std::string::operator=(&v24, EmptyString);
    pxrInternal__aapl__pxrReserved__::SdfPathExpression::SdfPathExpression(__p);
    v14 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v14;
      operator delete(v14);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *a2 = *__p;
    *(a2 + 16) = v17;
    __p[1] = 0;
    v17 = 0;
    __p[0] = 0;
    sub_29A217560((a2 + 24));
    *(a2 + 24) = v18;
    *(a2 + 40) = v19;
    v19 = 0;
    v18 = 0uLL;
    sub_29A21761C((a2 + 48));
    *(a2 + 48) = v20;
    *(a2 + 64) = v21;
    v21 = 0;
    v20 = 0uLL;
    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    *(a2 + 72) = v22;
    *(a2 + 88) = v23;
    HIBYTE(v23) = 0;
    LOBYTE(v22) = 0;
    v25 = &v20;
    sub_29A218CE8(&v25);
    v25 = &v18;
    sub_29A21859C(&v25);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  return v5;
}

void sub_29A553BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 41) < 0)
  {
    operator delete(*(v15 - 64));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A553C10(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20598F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A553C5C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20598F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A553C94(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2059950))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A553CE0(uint64_t *a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue **a3)
{
  v4 = *a2;
  v5 = *a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v7 + 6696);
  v9 = *(v7 + 6704);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = 0;
  }

  v12 = 0;
  sub_29A553D8C(v6, &v10, v4, v5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A553D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A553D8C(uint64_t a1, __int128 *a2, unint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    *&v12 = 0;
    *v10 = 0u;
    v11 = 0u;
    v16 = *a2;
    v6 = *(a2 + 2);
    v17 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *(a2 + 3);
    sub_29A553F20(a1, &v16, a3, v10);
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    sub_29A3FB3B0(a4, v10);
    sub_29A219394(v10);
  }

  else
  {
    *__p = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    *v10 = 0u;
    v11 = 0u;
    v7 = *a2;
    v5 = *(a2 + 2);
    v8 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(a2 + 3);
    if (!(a3 >> 62))
    {
      v9 = a3 & 0xFFFFFFFFFFFFLL;
      sub_29A5541CC(&v7, v10);
      v5 = v8;
    }

    if (v5)
    {
      sub_29A014BEC(v5);
    }

    sub_29A3FB2F4(a4, v10);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[1]);
    }

    v19 = &v13;
    sub_29A218CE8(&v19);
    v19 = &v11 + 1;
    sub_29A21859C(&v19);
    if (v10[0])
    {
      v10[1] = v10[0];
      operator delete(v10[0]);
    }
  }
}

void sub_29A553ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A2174F4(va);
  _Unwind_Resume(a1);
}

void sub_29A553F20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    a2[3] = a3 & 0xFFFFFFFFFFFFLL;
    v6 = *a2;
    v7 = (*(*a2 + 6576) << 16) | (*(*a2 + 6577) << 8);
    if (v7 <= 0x4FF)
    {
      LODWORD(v27) = 0;
      if (!sub_29A4E5308(a2 + 1, &v27, 4uLL))
      {
        return;
      }

      v6 = *a2;
    }

    v8 = a2[1];
    v9 = a2[2];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = a2[3];
      v23 = v6;
      v24 = v8;
      v25 = v9;
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v10 = a2[3];
      v23 = v6;
      v24 = v8;
      v25 = 0;
    }

    v26 = v10;
    v30 = 0;
    if (v7 > 0x6FF)
    {
      if (sub_29A4E5308(&v24, &v30, 8uLL))
      {
LABEL_15:
        v12 = (*(*v24 + 16))(v24);
        v13 = v12 - v26;
        v14 = v30;
        if (v26 < 0 || (v13 & 0x8000000000000000) != 0 || (v30 <= v13 ? (v15 = 96 * v30 > v13) : (v15 = 1), v15))
        {
          *&v27 = "usd/crateFile.cpp";
          *(&v27 + 1) = "_ReadUncompressedArray";
          *&v28 = 2226;
          *(&v28 + 1) = "typename std::enable_if<!Reader::StreamSupportsZeroCopy || !_IsBitwiseReadWrite<T>::value>::type pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_ReadUncompressedArray(Reader, ValueRep, VtArray<T> *, CrateFile::Version) [Reader = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, T = pxrInternal__aapl__pxrReserved__::SdfPathExpression]";
          LOBYTE(v29) = 0;
          v22 = (*(*v24 + 16))(v24);
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v27, 3, "Failed to read %llu elements for uncompressedArray (%llu bytes), remaining file size is %lld of %lld", v14, 96 * v14, v13, v22);
        }

        else
        {
          sub_29A552FA8(a4, v30);
          sub_29A219950(a4);
          v16 = *a4;
          if (*a4)
          {
            v17 = *(a4 + 32);
            v18 = v16 - 1;
            do
            {
              v19 = sub_29A5541CC(&v23, v17);
              v17 += 96;
              v21 = v18-- != 0;
            }

            while ((v19 & v21 & 1) != 0);
          }
        }
      }
    }

    else
    {
      LODWORD(v27) = 0;
      if (sub_29A4E5308(&v24, &v27, 4uLL))
      {
        v30 = v27;
        goto LABEL_15;
      }
    }

    if (v25)
    {
      sub_29A014BEC(v25);
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }

    return;
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  if (&v27 != a4)
  {
    sub_29A219394(a4);
    v11 = v28;
    *a4 = v27;
    *(a4 + 16) = v11;
    v27 = 0u;
    v28 = 0u;
    *(a4 + 32) = v29;
    v29 = 0;
  }

  sub_29A219394(&v27);
}

void sub_29A55418C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A219394(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *sub_29A5541CC(void *a1, uint64_t a2)
{
  memset(&v24, 0, sizeof(v24));
  LODWORD(__p[0]) = -1;
  EmptyToken = sub_29A4E5308(a1 + 1, __p, 4uLL);
  v5 = EmptyToken;
  if (EmptyToken)
  {
    v6 = *a1;
    v7 = *(*a1 + 144);
    if (LODWORD(__p[0]) >= ((*(*a1 + 152) - v7) >> 2))
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyString(EmptyToken);
      EmptyString = &qword_2A1742350;
    }

    else
    {
      v8 = *(v7 + 4 * LODWORD(__p[0]));
      v10 = v6 + 120;
      v9 = *(v6 + 120);
      if (v8 >= (*(v10 + 8) - v9) >> 3)
      {
        EmptyToken = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetEmptyToken(EmptyToken);
        v11 = &qword_2A1742328;
      }

      else
      {
        v11 = (v9 + 8 * v8);
      }

      v12 = *v11 & 0xFFFFFFFFFFFFFFF8;
      if (v12)
      {
        EmptyString = (v12 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyToken);
      }
    }

    std::string::operator=(&v24, EmptyString);
    pxrInternal__aapl__pxrReserved__::SdfPathExpression::SdfPathExpression(__p);
    v14 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v14;
      operator delete(v14);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *a2 = *__p;
    *(a2 + 16) = v17;
    __p[1] = 0;
    v17 = 0;
    __p[0] = 0;
    sub_29A217560((a2 + 24));
    *(a2 + 24) = v18;
    *(a2 + 40) = v19;
    v19 = 0;
    v18 = 0uLL;
    sub_29A21761C((a2 + 48));
    *(a2 + 48) = v20;
    *(a2 + 64) = v21;
    v21 = 0;
    v20 = 0uLL;
    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    *(a2 + 72) = v22;
    *(a2 + 88) = v23;
    HIBYTE(v23) = 0;
    LOBYTE(v22) = 0;
    v25 = &v20;
    sub_29A218CE8(&v25);
    v25 = &v18;
    sub_29A21859C(&v25);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  return v5;
}

void sub_29A5543A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 41) < 0)
  {
    operator delete(*(v15 - 64));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A5543E0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2059970;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A55442C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2059970;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A554464(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20599D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A5544B0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 6536);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  sub_29A55451C(v3, v2, v4 + 264);
}

void sub_29A55451C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*>();
}