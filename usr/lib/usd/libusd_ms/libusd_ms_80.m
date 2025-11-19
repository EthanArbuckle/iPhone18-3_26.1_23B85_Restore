unint64_t sub_29A4B3B28()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "generated_manifest", 0);
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
  atomic_compare_exchange_strong(&qword_2A17420D8, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A17420D8);
  }

  return v0;
}

void sub_29A4B3C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

__n128 sub_29A4B3C9C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2051240;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4B3CE8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2051240;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A4B3D18(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(this);
  if (result)
  {
    if (*(*(a1 + 16) + 8))
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    v9 = 0;
    v8 = 0;
    v5 = sub_29A3302A8(*(a1 + 8));
    result = pxrInternal__aapl__pxrReserved__::SdfLayer::HasSpec(v5, this);
    if ((result & 1) == 0)
    {
      result = pxrInternal__aapl__pxrReserved__::SdfLayer::GetSpecType(0, this);
      if (result == 1)
      {
        v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        if (!v6)
        {
          v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        }

        v11 = &v9;
        v12 = &stru_2A2040480;
        v13 = 0;
        v10 = &unk_2A204B290;
        result = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(0, this, v6 + 58, &v10);
        if (result && (v13 & 1) == 0)
        {
          v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          if (!v7)
          {
            v7 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }

          v11 = &v8;
          v12 = &stru_2A20495A8;
          v13 = 0;
          v10 = &unk_2A20512B0;
          result = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(0, this, v7 + 60, &v10);
          if (result && (v13 & 1) == 0)
          {
            sub_29A1DA6E4(*(a1 + 16));
          }
        }
      }
    }

    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29A4B3F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4B3F7C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20512D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A4B3FD0(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A27CE24(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

void sub_29A4B4058(void ***a1)
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
        v4 -= 32;
        sub_29A4B40E0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29A4B40E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    *(a2 + 16) = v3;
    operator delete(v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));

  return sub_29A1DE3A4(a2);
}

__n128 sub_29A4B4138(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A20512F8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 sub_29A4B418C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20512F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A4B41C4(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(this);
  if (result)
  {
    __p[1] = 0;
    v6 = 0;
    __p[0] = 0;
    v4 = **(a1 + 8);
    if (*(*(a1 + 8) + 8) != v4)
    {
      sub_29A1DA6E4(v4);
    }
  }

  return result;
}

void sub_29A4B42FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4B431C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2051358))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A4B4368(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v8 = a1[2] - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v20 = a1;
  if (v9)
  {
    v10 = sub_29A10CB10(a1, v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = v10;
  v18 = &v10[32 * v3];
  *(&v19 + 1) = &v10[32 * v9];
  sub_29A4B447C(v18, a2, a3);
  *&v19 = v18 + 32;
  v11 = a1[1];
  v12 = &v18[*a1 - v11];
  sub_29A4B44E0(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A4B4674(&v17);
  return v16;
}

void sub_29A4B4468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A4B4674(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4B447C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *a3;
  *(a1 + 24) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return a1;
}

uint64_t sub_29A4B44E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29A4B4590(a4, v7);
      v7 += 32;
      a4 = v12 + 32;
      v12 += 32;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A4B40E0(a1, v5);
      v5 += 32;
    }
  }

  return sub_29A4B45E8(v9);
}

uint64_t sub_29A4B4590(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, (a2 + 4));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sub_29A4B45E8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A4B4620(a1);
  }

  return a1;
}

uint64_t *sub_29A4B4620(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 32;
      result = sub_29A4B40E0(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29A4B4674(void **a1)
{
  sub_29A4B46A8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A4B46A8(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 32;
      result = sub_29A4B40E0(v4, v1 - 32);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29A4B46F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = (*(a2 + 8) & 3) == 3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
  }

  *(a2 + 8) = &off_2A2048E28 + 3;
  return 1;
}

uint64_t sub_29A4B4748(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v3 = sub_29A2F1FA8(a2);
  if (v3)
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }
  }

  return v3;
}

void *sub_29A4B4798(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20513C0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A4B47F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v3 = sub_29A4B48AC(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4B4810(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A4B4838(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = sub_29A4B48AC(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A4B486C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2051410))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A4B48AC(uint64_t a1)
{
  v4 = (a1 + 88);
  sub_29A0176E4(&v4);
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 68));
  sub_29B2A9F1C(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29B2A9F78(a1);
  return a1;
}

void sub_29A4B491C(char *a1)
{
  if (a1)
  {
    sub_29A4B491C(*a1);
    sub_29A4B491C(*(a1 + 1));
    if (a1[95] < 0)
    {
      operator delete(*(a1 + 9));
    }

    if (a1[71] < 0)
    {
      operator delete(*(a1 + 6));
    }

    operator delete(a1);
  }
}

void *sub_29A4B4988(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2051438;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A4B49E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_29A4B4A7C(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4B4A0C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A4B4A3C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2051488))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A4B4A7C(int a1, void **__p)
{
  if (__p)
  {
    v3 = *__p;
    if (*__p)
    {
      __p[1] = v3;
      operator delete(v3);
    }

    operator delete(__p);
  }
}

void sub_29A4B4AC8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (a2 - a1 < 3073)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x29EDC9418];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    while (1)
    {
      v9 = operator new(24 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  sub_29A4B4BD4(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_29A4B4BBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4B4BD4(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, __int128 *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v8 = (a2 - 24);
      if (*(a2 - 3) < *a1)
      {
        v9 = *a1;
        v10 = *(a1 + 16);
        v11 = *(a2 - 8);
        *a1 = *v8;
        *(a1 + 16) = v11;
        *(a2 - 8) = v10;
        *v8 = v9;
      }
    }

    else if (a4 > 128)
    {
      v16 = a4 >> 1;
      v17 = (a1 + 24 * (a4 >> 1));
      v18 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_29A4B4E64(a1, v17, a3, v18, a5);
        sub_29A4B4E64((a1 + 24 * (a4 >> 1)), a2, a3, a4 - (a4 >> 1), a5 + 24 * v16);

        sub_29A4B4FE4(a5, (a5 + 24 * v16), (a5 + 24 * v16), (a5 + 24 * a4), a1);
      }

      else
      {
        sub_29A4B4BD4(a1, v17, a3, v18, a5, a6);
        sub_29A4B4BD4(a1 + 24 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), a5, a6);

        sub_29A4B5078(a1, (a1 + 24 * (a4 >> 1)), a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6, v19);
      }
    }

    else
    {

      sub_29A4B4DBC(a1, a2);
    }
  }
}

uint64_t sub_29A4B4DBC(uint64_t result, double *a2)
{
  if (result != a2)
  {
    v2 = (result + 24);
    if ((result + 24) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *v2;
        if (*v2 < *v4)
        {
          v10 = *(v4 + 32);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            *(v8 + 24) = *(result + v7);
            *(v8 + 40) = *(result + v7 + 16);
            if (!v7)
            {
              break;
            }

            v7 -= 24;
            if (v6 >= *(v8 - 24))
            {
              v9 = result + v7 + 24;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v6;
          *(v9 + 8) = v10;
          *(v9 + 16) = BYTE8(v10);
        }

        v2 = v5 + 3;
        v3 += 24;
        v4 = v5;
      }

      while (v5 + 3 != a2);
    }
  }

  return result;
}

__int128 *sub_29A4B4E64(__int128 *result, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v8 = result;
    if (a4 == 2)
    {
      v10 = (a2 - 24);
      if (*(a2 - 3) >= *result)
      {
        v15 = *result;
        *(a5 + 16) = *(result + 2);
        *a5 = v15;
        v12 = *v10;
        v13 = *(a2 - 1);
      }

      else
      {
        v11 = *v10;
        *(a5 + 16) = *(a2 - 1);
        *a5 = v11;
        v12 = *result;
        v13 = *(result + 2);
      }

      *(a5 + 40) = v13;
      *(a5 + 24) = v12;
    }

    else if (a4 == 1)
    {
      v9 = *result;
      *(a5 + 16) = *(result + 2);
      *a5 = v9;
    }

    else if (a4 > 8)
    {
      sub_29A4B4BD4(result, result + 24 * (a4 >> 1), a3, a4 >> 1, a5, a4 >> 1);
      sub_29A4B4BD4(v8 + 24 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), a5 + 24 * (a4 >> 1), a4 - (a4 >> 1));

      return sub_29A4B540C(v8, (v8 + 24 * (a4 >> 1)), (v8 + 24 * (a4 >> 1)), a2, a5);
    }

    else
    {

      return sub_29A4B533C(result, a2, a5);
    }
  }

  return result;
}

__int128 *sub_29A4B4FE4(__int128 *result, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  while (result != a2)
  {
    if (a3 == a4)
    {
      while (result != a2)
      {
        v8 = *result;
        *(a5 + 16) = *(result + 16);
        *a5 = v8;
        a5 += 24;
        result = (result + 24);
      }

      return result;
    }

    if (*a3 >= *result)
    {
      v6 = *result;
      *(a5 + 16) = *(result + 16);
      *a5 = v6;
      result = (result + 24);
    }

    else
    {
      v5 = *a3;
      *(a5 + 16) = *(a3 + 16);
      *a5 = v5;
      a3 = (a3 + 24);
    }

    a5 += 24;
  }

  while (a3 != a4)
  {
    v7 = *a3;
    *(a5 + 16) = *(a3 + 16);
    *a5 = v7;
    a5 += 24;
    a3 = (a3 + 24);
  }

  return result;
}

__n128 sub_29A4B5078(__n128 *a1, __int128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7, uint64_t a8, __n128 result)
{
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v13 = 0;
      result.n128_u64[0] = *a2;
      v14 = -a5;
      while (result.n128_f64[0] >= a1->n128_f64[v13 / 8])
      {
        v13 += 24;
        if (__CFADD__(v14++, 1))
        {
          return result;
        }
      }

      v40 = a3;
      v41 = a8;
      v39 = (a1 + v13);
      if (-v14 >= v10)
      {
        if (v14 == -1)
        {
          v37 = a1 + v13;
          v45 = a1[1].n128_u64[v13 / 8];
          v44 = *(a1 + v13);
          v38 = *a2;
          v37[16] = *(a2 + 16);
          *v37 = v38;
          result = v44;
          *a2 = v44;
          *(a2 + 16) = v45;
          return result;
        }

        v24 = -v14 / 2;
        v17 = a2;
        if (a2 != a3)
        {
          v25 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
          v17 = a2;
          do
          {
            v26 = v25 >> 1;
            v27 = v17 + 3 * (v25 >> 1);
            v29 = *v27;
            v28 = (v27 + 3);
            v25 += ~(v25 >> 1);
            if (v29 < a1->n128_f64[3 * v24 + v13 / 8])
            {
              v17 = v28;
            }

            else
            {
              v25 = v26;
            }
          }

          while (v25);
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v17 - a2) >> 3);
        v18 = (a1 + 24 * v24 + v13);
      }

      else
      {
        v16 = v10 / 2;
        v17 = (a2 + 24 * (v10 / 2));
        v18 = a2;
        if (a2 - a1 != v13)
        {
          v19 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1 - v13) >> 3);
          v18 = (a1 + v13);
          do
          {
            v20 = v19 >> 1;
            v21 = v18 + 3 * (v19 >> 1);
            v23 = *v21;
            v22 = (v21 + 3);
            v19 += ~(v19 >> 1);
            if (*v17 < v23)
            {
              v19 = v20;
            }

            else
            {
              v18 = v22;
            }
          }

          while (v19);
        }

        v24 = 0xAAAAAAAAAAAAAAABLL * ((v18 - a1 - v13) >> 3);
      }

      a5 = -v14 - v24;
      v30 = v10 - v16;
      v31 = v16;
      v32 = sub_29A4B55FC(v18, a2, v17);
      v33 = v31;
      v34 = v32;
      if (v24 + v33 >= v10 - (v24 + v33) - v14)
      {
        v36 = v33;
        sub_29A4B5078(v32, v17, v40, a4, a5, v30, a7, v41);
        v17 = v18;
        a8 = v41;
        v30 = v36;
        a5 = v24;
        a3 = v34;
        a1 = v39;
      }

      else
      {
        v35 = v18;
        a8 = v41;
        sub_29A4B5078(a1 + v13, v35, v32, a4, v24, v33, a7, v41);
        a1 = v34;
        a3 = v40;
      }

      v10 = v30;
      a2 = v17;
      if (!v30)
      {
        return result;
      }
    }

    result.n128_u64[0] = sub_29A4B54A0(a1, a2, a3, a4, a5, v10, a7).n128_u64[0];
  }

  return result;
}

__int128 *sub_29A4B533C(__int128 *result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = *result;
    *(a3 + 16) = *(result + 2);
    *a3 = v3;
    v4 = (result + 24);
    if ((result + 24) != a2)
    {
      v5 = 0;
      v6 = a3;
      v7 = a3;
      do
      {
        v8 = *v7;
        v7 += 24;
        if (*v4 >= v8)
        {
          v12 = *v4;
          *(v7 + 16) = *(v4 + 2);
          *v7 = v12;
        }

        else
        {
          *v7 = *v6;
          *(v7 + 16) = *(v6 + 16);
          v9 = a3;
          if (v6 != a3)
          {
            v10 = v5;
            while (1)
            {
              v9 = a3 + v10;
              if (*v4 >= *(a3 + v10 - 24))
              {
                break;
              }

              *v9 = *(a3 + v10 - 24);
              *(v9 + 16) = *(a3 + v10 - 8);
              v10 -= 24;
              if (!v10)
              {
                v9 = a3;
                break;
              }
            }
          }

          v11 = *v4;
          *(v9 + 16) = *(v4 + 16);
          *v9 = v11;
        }

        v4 = (v4 + 24);
        v5 += 24;
        v6 = v7;
      }

      while (v4 != a2);
    }
  }

  return result;
}

__int128 *sub_29A4B540C(__int128 *result, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  while (result != a2)
  {
    if (a3 == a4)
    {
      while (result != a2)
      {
        v8 = *result;
        *(a5 + 16) = *(result + 2);
        *a5 = v8;
        a5 += 24;
        result = (result + 24);
      }

      return result;
    }

    if (*a3 >= *result)
    {
      v6 = *result;
      *(a5 + 16) = *(result + 2);
      *a5 = v6;
      result = (result + 24);
    }

    else
    {
      v5 = *a3;
      *(a5 + 16) = *(a3 + 2);
      *a5 = v5;
      a3 = (a3 + 24);
    }

    a5 += 24;
  }

  while (a3 != a4)
  {
    v7 = *a3;
    *(a5 + 16) = *(a3 + 2);
    *a5 = v7;
    a5 += 24;
    a3 = (a3 + 24);
  }

  return result;
}

__n128 sub_29A4B54A0(__n128 *a1, __n128 *a2, __n128 *a3, int a4, uint64_t a5, uint64_t a6, __n128 *__src)
{
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v15 = 7 - __src;
      v16 = __src;
      v17 = a1;
      do
      {
        v18 = *v17;
        v16[1].n128_u64[0] = v17[1].n128_u64[0];
        *v16 = v18;
        v16 = (v16 + 24);
        v17 = (v17 + 24);
        v15 -= 24;
      }

      while (v17 != a2);
      while (a2 != a3)
      {
        if (a2->n128_f64[0] >= __src->n128_f64[0])
        {
          result = *__src;
          a1[1].n128_u8[0] = __src[1].n128_u8[0];
          *a1 = result;
          __src = (__src + 24);
        }

        else
        {
          result = *a2;
          a1[1].n128_u8[0] = a2[1].n128_u8[0];
          *a1 = result;
          a2 = (a2 + 24);
        }

        a1 = (a1 + 24);
        if (v16 == __src)
        {
          return result;
        }
      }

      memmove(a1, __src, -(__src + v15));
    }
  }

  else if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (__src + v7 * 8);
      result = *(a2 + v7 * 8);
      v8[1].n128_u64[0] = a2[1].n128_u64[v7];
      *v8 = result;
      v7 += 3;
    }

    while ((a2 + v7 * 8) != a3);
    v10 = &__src->n128_f64[v7];
    while (a2 != a1)
    {
      v11 = *(v10 - 3);
      v12 = a2[-2].n128_f64[1];
      v13 = v11 < v12;
      if (v11 >= v12)
      {
        v14 = (v10 - 3);
      }

      else
      {
        v14 = (a2 - 24);
      }

      result = *v14;
      a3[-1].n128_u8[8] = v14[1].n128_u8[0];
      *(a3 - 24) = result;
      a3 = (a3 - 24);
      if (v13)
      {
        a2 = (a2 - 24);
      }

      else
      {
        v10 -= 3;
      }

      if (v10 == __src)
      {
        return result;
      }
    }

    if (v10 != __src)
    {
      v19 = -24;
      do
      {
        result = *(v10 - 3);
        v20 = *(v10 - 8);
        v21 = (v10 - 3);
        v22 = (a3 + v19);
        v22[1].n128_u8[0] = v20;
        *v22 = result;
        v19 -= 24;
        v10 = v21;
      }

      while (v21 != __src);
    }
  }

  return result;
}

__int128 *sub_29A4B55FC(__int128 *__src, __int128 *a2, __int128 *a3)
{
  v3 = a3;
  if (__src != a2)
  {
    v5 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if ((__src + 24) == a2)
    {
      v7 = *__src;
      v9 = *(__src + 2);
      memmove(__src, __src + 24, v5 - 7);
      v3 = (__src + v5);
      *v3 = v7;
      *(v3 + 16) = v9;
    }

    else if ((a2 + 24) == a3)
    {
      v3 = (__src + 24);
      v8 = *(a3 - 24);
      v10 = *(a3 - 1);
      if ((a3 - 24) != __src)
      {
        memmove(__src + 24, __src, a3 - 24 - __src - 7);
      }

      *__src = v8;
      *(__src + 16) = v10;
    }

    else
    {
      return sub_29A4B56FC(__src, a2, a3);
    }
  }

  return v3;
}

__int128 *sub_29A4B56FC(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = a2 - a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3) == v4)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = (a1 + 24);
      v6 = (a2 + 24);
      do
      {
        v7 = *(v5 - 24);
        v8 = *(v5 - 1);
        v9 = *(v6 - 8);
        *(v5 - 24) = *(v6 - 24);
        *(v5 - 8) = v9;
        *(v6 - 8) = v8;
        *(v6 - 24) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 = (v5 + 24);
        v10 = v6 == a3;
        v6 = (v6 + 24);
      }

      while (!v10);
    }
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    do
    {
      v12 = v11;
      v11 = v4;
      v4 = v12 % v4;
    }

    while (v4);
    v13 = (a1 + 24 * v11);
    do
    {
      v14 = *(v13 - 24);
      v15 = *(v13 - 1);
      v13 = (v13 - 24);
      v22 = v14;
      v23 = v15;
      v16 = (v13 + v3);
      v17 = v13;
      do
      {
        v18 = v16;
        v19 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v19;
        v20 = a3 - v16;
        v16 = (v16 + 8 * ((a2 - a1) >> 3));
        if (v3 >= v20)
        {
          v16 = (a2 - v20);
        }

        v17 = v18;
      }

      while (v16 != v13);
      *(v18 + 16) = v23;
      *v18 = v22;
    }

    while (v13 != a1);
    return (a1 + a3 - a2);
  }

  return a2;
}

__n128 sub_29A4B5818(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      v11 = v10 >> 2;
      v12 = sub_29A012C48(a1[4], v10);
      v14 = (v12 + 24 * v11);
      v15 = a1[1];
      v4 = v14;
      v16 = (a1[2] - v15);
      if (v16)
      {
        v4 = &v16[v14];
        v17 = v12 + 24 * v11;
        do
        {
          v18 = *v15;
          *(v17 + 2) = v15[1].n128_u64[0];
          *v17 = v18;
          v17 += 24;
          v15 = (v15 + 24);
          v16 -= 24;
        }

        while (v16);
      }

      v19 = *a1;
      *a1 = v12;
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = (v12 + 24 * v13);
      if (v19)
      {
        operator delete(v19);
        v4 = a1[2];
      }
    }

    else
    {
      v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / -2;
      v8 = v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2);
      v9 = v4 - v5;
      if (v4 != v5)
      {
        memmove(v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2), v5, v9 - 7);
        v5 = a1[1];
      }

      v4 = &v8[v9];
      a1[1] = (v5 + 24 * v7);
      a1[2] = &v8[v9];
    }
  }

  result = *a2;
  v4[1].n128_u64[0] = a2[1].n128_u64[0];
  *v4 = result;
  a1[2] = (a1[2] + 24);
  return result;
}

void *sub_29A4B5958(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20514B0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A4B59B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A4B5A6C();
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4B59D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A4B59F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_29A4B5A6C();
  }

  return result;
}

uint64_t sub_29A4B5A2C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2051500))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A4B5AF4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2051528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A4B5B38(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t sub_29A4B5D00(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = MEMORY[0x29EDC94D0];
    v8 = 0;
    v7[0] = &unk_2A2070BE0;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_ComputeClipSetDefinitionsForPrimIndex(const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a1, uint64_t *a2, const void **a3)
{
  v209 = *MEMORY[0x29EDCA608];
  v187 = 0;
  v188 = 0;
  v186 = &v187;
  pxrInternal__aapl__pxrReserved__::Usd_Resolver::Usd_Resolver(__dst, a1, 1);
  v175 = a2;
  while (1)
  {
    v4 = *&__dst[1] == v184 && *(&__dst[1] + 1) == v185;
    if (v4)
    {
      break;
    }

    *&__str.__r_.__value_.__r.__words[1] = 0uLL;
    __str.__r_.__value_.__r.__words[0] = &__str.__r_.__value_.__l.__size_;
    *&v195.__r_.__value_.__l.__data_ = __dst[1];
    Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v195);
    LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v195);
    v7 = sub_29A4184C4(LayerStack);
    Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v7);
    v9 = Layers[1] - *Layers;
    v10 = v9 >> 3;
    v11 = v9 - 8;
    v178 = Layers;
    while (v10)
    {
      v12 = sub_29A3302A8((*Layers + v11));
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdTokens);
      if (!v13)
      {
        v13 = sub_29A4AAA94(&pxrInternal__aapl__pxrReserved__::UsdTokens);
      }

      HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v12, Path, (v13 + 8), 0);
      v11 -= 8;
      --v10;
      Layers = v178;
      if (HasField)
      {
        __src_8[0] = 0;
        __src_8[1] = 0;
        __src = __src_8;
        memset(&v199, 0, sizeof(v199));
        v15 = v10;
        v16 = (*v178 + 8 * v10);
        v193 = 0;
        v17 = sub_29A3302A8(v16);
        v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdTokens);
        if (!v18)
        {
          v18 = sub_29A4AAA94(&pxrInternal__aapl__pxrReserved__::UsdTokens);
        }

        *(&v202 + 1) = &v193;
        *&v203 = &stru_2A2042020;
        WORD4(v203) = 0;
        *&v202 = &unk_2A2051578;
        if (!pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v17, Path, v18 + 1, &v202) || (BYTE8(v203) & 1) != 0)
        {
          pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SdfListOp();
        }

        memset(&v198, 0, sizeof(v198));
        v19 = pxrInternal__aapl__pxrReserved__::VtDictionary::size(&v193);
        sub_29A0925E4(&v198.__r_.__value_.__l.__data_, v19);
        v196.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(&v193);
        v196.__r_.__value_.__l.__size_ = v20;
        v22 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(&v193);
        v23 = v196.__r_.__value_.__r.__words[0];
        if (v21)
        {
          v24 = v196.__r_.__value_.__r.__words[0] == v22;
        }

        else
        {
          v24 = 1;
        }

        v25 = v24;
        if (v196.__r_.__value_.__l.__size_ == v21 && v25 != 0)
        {
          v66 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v198.__r_.__value_.__l.__size_ - v198.__r_.__value_.__r.__words[0]) >> 3));
          if (v198.__r_.__value_.__l.__size_ == v198.__r_.__value_.__r.__words[0])
          {
            v67 = 0;
          }

          else
          {
            v67 = v66;
          }

          sub_29AA89D34(v198.__r_.__value_.__l.__data_, v198.__r_.__value_.__l.__size_, &v202, v67, 1);
          pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SdfListOp();
        }

        if ((*(v196.__r_.__value_.__r.__words[0] + 55) & 0x8000000000000000) != 0)
        {
          if (!*(v196.__r_.__value_.__r.__words[0] + 40))
          {
            goto LABEL_34;
          }

LABEL_28:
          v27 = (v196.__r_.__value_.__r.__words[0] + 32);
          if (sub_29A185258((v196.__r_.__value_.__r.__words[0] + 56)))
          {
            v28 = sub_29A4B80E0(&__src, v23 + 32, v23 + 32);
            v192.__r_.__value_.__r.__words[0] = 0;
            sub_29A18562C((v23 + 56), &v192);
            v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
            if (!v29)
            {
              v29 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
            }

            if ((*(v29 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              EmptyString = ((*(v29 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v29);
            }

            v53 = sub_29A293B8C(&v192, EmptyString);
            v54 = v53;
            if (!v53 || !sub_29A1FA80C(v53) || ((v55 = v54[1], (v55 & 4) != 0) ? (v56 = (*((v55 & 0xFFFFFFFFFFFFFFF8) + 168))(v54)) : (v56 = *v54), !v56))
            {
              v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
              if (!v57)
              {
                v57 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
              }

              if (!sub_29A4B8570(&v192, v57 + 5))
              {
                v64 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                if (!v64)
                {
                  v64 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                }

                sub_29A4B8760(&v195, v16, v64, &v192);
                v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                if (!v65)
                {
                  v65 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                }

                sub_29A4B8760(&v195, v16, v65 + 10, &v192);
                pxrInternal__aapl__pxrReserved__::VtDictionaryOverRecursive(&v192, v28 + 14, 0);
                pxrInternal__aapl__pxrReserved__::VtDictionary::swap(v28 + 14, &v192);
                sub_29A070BA0(&v198);
              }
            }

            v58 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v195);
            v59 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v195);
            v60 = sub_29A4184C4(v59);
            v61 = *pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v60);
            sub_29A41CF24(&v202, v59);
            sub_29A1E21F4(&v203, v58);
            sub_29A1E2240(&v203 + 1, v58 + 1);
            *(&v203 + 1) = v15;
            v204 = 0;
            sub_29A321960(&v207, (v61 + 8 * v15));
            v205 = sub_29A4B890C(&v195);
            v206 = v62;
            v63 = v28[8];
            *(v28 + 7) = v202;
            *(&v202 + 1) = 0;
            if (v63 && atomic_fetch_add_explicit(v63 + 2, 0xFFFFFFFF, memory_order_release) == 1)
            {
              (*(*v63 + 8))(v63);
            }

            *&v202 = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }

          *&v202 = "usd/clipSetDefinition.cpp";
          *(&v202 + 1) = "_ResolveClipSetsInNode";
          *&v203 = 426;
          *(&v203 + 1) = "void pxrInternal__aapl__pxrReserved__::_ResolveClipSetsInNode(const PcpNodeRef &, std::map<std::string, _ClipSet> *)";
          LOBYTE(v204) = 0;
          if (*(v23 + 55) < 0)
          {
            v27 = *v27;
          }

          pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(&v195);
          v207 = v42;
          v208 = v43;
          v44 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v207);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v44);
          v46 = sub_29A3302A8(v16);
          Identifier = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v46);
          v48 = *(Identifier + 23);
          v49 = *Identifier;
          v50 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(Path);
          if (v48 >= 0)
          {
            v52 = Identifier;
          }

          else
          {
            v52 = v49;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v202, "Expected dictionary for entry '%s' for prim <%s> in 'clips' dictionary on spec @%s@<%s>", v51, v27, Text, v52, v50);
        }

        else
        {
          if (*(v196.__r_.__value_.__r.__words[0] + 55))
          {
            goto LABEL_28;
          }

LABEL_34:
          *&v202 = "usd/clipSetDefinition.cpp";
          *(&v202 + 1) = "_ResolveClipSetsInNode";
          *&v203 = 416;
          *(&v203 + 1) = "void pxrInternal__aapl__pxrReserved__::_ResolveClipSetsInNode(const PcpNodeRef &, std::map<std::string, _ClipSet> *)";
          LOBYTE(v204) = 0;
          pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(&v195);
          v207 = v31;
          v208 = v32;
          v33 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v207);
          v34 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v33);
          v35 = sub_29A3302A8(v16);
          v36 = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v35);
          v37 = *(v36 + 23);
          v38 = *v36;
          v39 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(Path);
          if (v37 >= 0)
          {
            v41 = v36;
          }

          else
          {
            v41 = v38;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v202, "Invalid unnamed clip set for prim <%s> in 'clips' dictionary on spec @%s@<%s>", v40, v34, v41, v39);
        }

        pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
      }
    }

    v68 = __str.__r_.__value_.__r.__words[0];
    if (__str.__r_.__value_.__l.__data_ != &__str.__r_.__value_.__r.__words[1])
    {
      do
      {
        v69 = sub_29A4B80E0(&v186, v68 + 32, v68 + 32);
        v70 = sub_29B2A0EDC((v69 + 7));
        if (!(v71 & 1 | v70))
        {
          v69[7] = *(v68 + 56);
          sub_29B28FD1C(v69 + 8, (v68 + 64));
          sub_29A2258F0(v69 + 18, (v68 + 72));
          sub_29A225948(v69 + 19, (v68 + 76));
          v72 = *(v68 + 96);
          *(v69 + 5) = *(v68 + 80);
          *(v69 + 6) = v72;
        }

        pxrInternal__aapl__pxrReserved__::VtDictionaryOverRecursive((v69 + 14), (v68 + 112), 0);
        v73 = *(v68 + 8);
        if (v73)
        {
          do
          {
            v74 = v73;
            v73 = v73->__r_.__value_.__r.__words[0];
          }

          while (v73);
        }

        else
        {
          do
          {
            v74 = *(v68 + 16);
            v4 = v74->__r_.__value_.__r.__words[0] == v68;
            v68 = v74;
          }

          while (!v4);
        }

        v68 = v74;
      }

      while (v74 != &__str.__r_.__value_.__r.__words[1]);
    }

    sub_29A4B93C4(__str.__r_.__value_.__l.__size_);
    pxrInternal__aapl__pxrReserved__::Usd_Resolver::NextNode(__dst);
  }

  v75 = v186;
  if (v186 != &v187)
  {
    do
    {
      v76 = sub_29B2A0EDC((v75 + 7));
      if (v77 & 1 | v76)
      {
        v78 = v75[1];
        if (v78)
        {
          do
          {
            v79 = v78;
            v78 = *v78;
          }

          while (v78);
        }

        else
        {
          do
          {
            v79 = v75[2];
            v4 = *v79 == v75;
            v75 = v79;
          }

          while (!v4);
        }
      }

      else
      {
        v79 = sub_29A4B8310(&v186, v75);
      }

      v75 = v79;
    }

    while (v79 != &v187);
  }

  if (v188)
  {
    v180 = 0;
    v181 = 0;
    v182 = 0;
    if (v188 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_29A00C9A4();
    }

    sub_29A4B9568(&v202, v188, 0, &v180);
    sub_29A4B95E8(&v180, &v202);
    sub_29A4B96FC(&v202);
    v80 = v186;
    if (v186 == &v187)
    {
      v81 = v181;
    }

    else
    {
      v81 = v181;
      do
      {
        if (v81 >= v182)
        {
          v82 = 0x2E8BA2E8BA2E8BA3 * ((v81 - v180) >> 3);
          v83 = v82 + 1;
          if ((v82 + 1) > 0x2E8BA2E8BA2E8BALL)
          {
            sub_29A00C9A4();
          }

          if (0x5D1745D1745D1746 * ((v182 - v180) >> 3) > v83)
          {
            v83 = 0x5D1745D1745D1746 * ((v182 - v180) >> 3);
          }

          if ((0x2E8BA2E8BA2E8BA3 * ((v182 - v180) >> 3)) >= 0x1745D1745D1745DLL)
          {
            v84 = 0x2E8BA2E8BA2E8BALL;
          }

          else
          {
            v84 = v83;
          }

          sub_29A4B9568(&v202, v84, v82, &v180);
          sub_29A4B9750(v203, (v80 + 7));
          *&v203 = v203 + 88;
          sub_29A4B95E8(&v180, &v202);
          v81 = v181;
          sub_29A4B96FC(&v202);
        }

        else
        {
          sub_29A4B9750(v81, (v80 + 7));
          v81 += 88;
        }

        v181 = v81;
        v85 = v80[1];
        if (v85)
        {
          do
          {
            v86 = v85;
            v85 = *v85;
          }

          while (v85);
        }

        else
        {
          do
          {
            v86 = v80[2];
            v4 = *v86 == v80;
            v80 = v86;
          }

          while (!v4);
        }

        v80 = v86;
      }

      while (v86 != &v187);
    }

    v87 = 126 - 2 * __clz(0x2E8BA2E8BA2E8BA3 * ((v81 - v180) >> 3));
    if (v81 == v180)
    {
      v88 = 0;
    }

    else
    {
      v88 = v87;
    }

    sub_29A4B9820(v180, v81, v88, 1);
    sub_29A4B839C(v175, 0x2E8BA2E8BA2E8BA3 * ((v181 - v180) >> 3));
    if (a3)
    {
      sub_29A0925E4(a3, 0x2E8BA2E8BA2E8BA3 * ((v181 - v180) >> 3));
    }

    v89 = v180;
    v179 = v181;
    while (v89 != v179)
    {
      sub_29A4B8A28(&v202);
      sub_29A4B8474(v175, &v202);
      sub_29A4B0304(&v202);
      v90 = v175[1];
      if (a3)
      {
        sub_29A070BA0(a3);
      }

      *(v90 - 32) = *v89;
      sub_29B28FD1C((v90 - 24), (v89 + 8));
      sub_29A2258F0((v90 - 16), (v89 + 16));
      sub_29A225948((v90 - 12), (v89 + 20));
      *(v90 - 8) = *(v89 + 24);
      v91 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      if (!v91)
      {
        v91 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      }

      if ((*(v91 + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v92 = ((*(v91 + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v92 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v91);
      }

      v93 = sub_29A293B8C((v89 + 56), v92);
      v94 = v93;
      if (v93 && sub_29A1EFC10(v93))
      {
        v95 = *(v94 + 1);
        if ((v95 & 4) != 0)
        {
          v96 = (*((v95 & 0xFFFFFFFFFFFFFFF8) + 168))(v94);
        }

        else
        {
          v96 = *v94;
        }

        sub_29A4BC168((v90 - 168), v96);
      }

      v97 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      if (!v97)
      {
        v97 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      }

      if ((*(v97 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v98 = ((*(v97 + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v98 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v97);
      }

      v99 = sub_29A293B8C((v89 + 56), v98);
      v100 = v99;
      if (v99 && sub_29A1FA780(v99))
      {
        v101 = *(v100 + 1);
        if ((v101 & 4) != 0)
        {
          v102 = (*((v101 & 0xFFFFFFFFFFFFFFF8) + 168))(v100);
        }

        else
        {
          v102 = *v100;
        }

        sub_29A4BC1D8((v90 - 224), v102);
      }

      v103 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      if (!v103)
      {
        v103 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      }

      if ((*(v103 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v104 = ((*(v103 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v104 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v103);
      }

      v105 = sub_29A293B8C((v89 + 56), v104);
      v106 = v105;
      if (v105 && sub_29A1EFCDC(v105))
      {
        v107 = *(v106 + 1);
        if ((v107 & 4) != 0)
        {
          v106 = (*((v107 & 0xFFFFFFFFFFFFFFF8) + 168))(v106);
        }

        *(v90 - 40) = *v106 | 0x100;
      }

      v108 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      if (!v108)
      {
        v108 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
      }

      if ((*(v108 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v109 = ((*(v108 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v109 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v108);
      }

      v110 = sub_29A293B8C((v89 + 56), v109);
      v111 = v110;
      if (v110 && sub_29A1FA80C(v110))
      {
        v112 = v111[1];
        if ((v112 & 4) != 0)
        {
          v113 = (*((v112 & 0xFFFFFFFFFFFFFFF8) + 168))(v111);
        }

        else
        {
          v113 = *v111;
        }

        sub_29A4BC234(v90 - 272, v113);
        v114 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
        if (!v114)
        {
          v114 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
        }

        sub_29A4B84D4((v89 + 56), v114, v90 - 136);
        v115 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
        if (!v115)
        {
          v115 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
        }

        sub_29A4B84D4((v89 + 56), v115 + 10, v90 - 88);
      }

      else
      {
        v116 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
        if (!v116)
        {
          v116 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
        }

        v117 = sub_29A4B8570((v89 + 56), v116 + 5);
        if (v117)
        {
          v118 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
          if (!v118)
          {
            v118 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
          }

          v119 = sub_29A4B8600((v89 + 56), v118 + 9);
          v120 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
          if (!v120)
          {
            v120 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
          }

          v121 = sub_29A4B8600((v89 + 56), v120 + 8);
          v122 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
          if (!v122)
          {
            v122 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
          }

          v123 = sub_29A4B8600((v89 + 56), v122 + 7);
          v124 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
          if (!v124)
          {
            v124 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
          }

          v125 = sub_29A4B8600((v89 + 56), v124 + 6);
          if (v121)
          {
            if (v123 && v125)
            {
              if (v119)
              {
                v126 = *v119;
              }

              else
              {
                v126 = 1.79769313e308;
              }

              v127 = *v121;
              v128 = *v123;
              v129 = *v125;
              v130 = pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetPath(a1);
              if (v127 <= 0.0)
              {
                *&v202 = "usd/clipSetDefinition.cpp";
                *(&v202 + 1) = "_DeriveClipInfo";
                *&v203 = 146;
                *(&v203 + 1) = "void pxrInternal__aapl__pxrReserved__::_DeriveClipInfo(const std::string &, const double, const double, const double, const double, std::optional<VtVec2dArray> *, std::optional<VtVec2dArray> *, std::optional<VtArray<SdfAssetPath>> *, const SdfPath &, const PcpLayerStackPtr &, const size_t)";
                LOBYTE(v204) = 0;
                v135 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                if (!v135)
                {
                  v135 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                }

                v136 = *(v135 + 8) & 0xFFFFFFFFFFFFFFF8;
                if (v136)
                {
                  v137 = (v136 + 16);
                  if (*(v136 + 39) < 0)
                  {
                    v137 = *v137;
                  }
                }

                else
                {
                  v137 = "";
                }

                v150 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v130);
                v151 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                if (!v151)
                {
                  v151 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                }

                v152 = *(v151 + 8) & 0xFFFFFFFFFFFFFFF8;
                if (v152)
                {
                  v153 = (v152 + 16);
                  if (*(v152 + 39) < 0)
                  {
                    v153 = *v153;
                  }
                }

                else
                {
                  v153 = "";
                }

                pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v202, "Invalid %s %f for prim <%s>. %s must be greater than 0.", v149, v137, *&v127, v150, v153);
                goto LABEL_246;
              }

              v131 = fabs(v126);
              if (v126 != 1.79769313e308 && v131 > v127)
              {
                *&v202 = "usd/clipSetDefinition.cpp";
                *(&v202 + 1) = "_DeriveClipInfo";
                *&v203 = 157;
                *(&v203 + 1) = "void pxrInternal__aapl__pxrReserved__::_DeriveClipInfo(const std::string &, const double, const double, const double, const double, std::optional<VtVec2dArray> *, std::optional<VtVec2dArray> *, std::optional<VtArray<SdfAssetPath>> *, const SdfPath &, const PcpLayerStackPtr &, const size_t)";
                LOBYTE(v204) = 0;
                v132 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                if (!v132)
                {
                  v132 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                }

                v133 = *(v132 + 9) & 0xFFFFFFFFFFFFFFF8;
                if (v133)
                {
                  v134 = (v133 + 16);
                  if (*(v133 + 39) < 0)
                  {
                    v134 = *v134;
                  }
                }

                else
                {
                  v134 = "";
                }

                v155 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v130);
                v156 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                if (!v156)
                {
                  v156 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                }

                v157 = *(v156 + 9) & 0xFFFFFFFFFFFFFFF8;
                if (v157)
                {
                  v158 = (v157 + 16);
                  if (*(v157 + 39) < 0)
                  {
                    v158 = *v158;
                  }
                }

                else
                {
                  v158 = "";
                }

                v159 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                if (!v159)
                {
                  v159 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                }

                v160 = *(v159 + 8) & 0xFFFFFFFFFFFFFFF8;
                if (v160)
                {
                  v161 = (v160 + 16);
                  if (*(v160 + 39) < 0)
                  {
                    v161 = *v161;
                  }
                }

                else
                {
                  v161 = "";
                }

                pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v202, "Invalid %s %f for prim <%s>. Absolute value of %s must not exceed %s %f.", v154, v134, *&v126, v155, v158, v161, *&v127);
                goto LABEL_246;
              }

              memset(&v195, 0, sizeof(v195));
              v194[0] = 0;
              v194[1] = 0;
              v193 = v194;
              pxrInternal__aapl__pxrReserved__::SdfLayer::SplitIdentifier(v117, &v195, &v193);
              pxrInternal__aapl__pxrReserved__::TfGetPathName(&v195, &v192);
              pxrInternal__aapl__pxrReserved__::TfGetBaseName(&v195, &__p);
              pxrInternal__aapl__pxrReserved__::TfStringTokenize(&__p, ".", &v189);
              v138 = v189;
              if (v189 == v190)
              {
                goto LABEL_208;
              }

              v139 = 0;
              v140 = 0;
              v141 = -1;
              v142 = -1;
              while (2)
              {
                v143 = *(v138 + 23);
                if (v143 < 0)
                {
                  v144 = *v138;
                  v145 = *(v138 + 8);
                  if (!v145)
                  {
                    goto LABEL_198;
                  }

LABEL_196:
                  while (*v144 == 35)
                  {
                    ++v144;
                    if (!--v145)
                    {
                      goto LABEL_198;
                    }
                  }
                }

                else
                {
                  v144 = v138;
                  v145 = *(v138 + 23);
                  if (*(v138 + 23))
                  {
                    goto LABEL_196;
                  }

LABEL_198:
                  if (v141 == -1)
                  {
                    v141 = v140;
                  }

                  else
                  {
                    v142 = v140;
                  }

                  ++v139;
                }

                ++v140;
                v138 += 24;
                if (v138 == v190)
                {
                  if ((v139 - 3) >= 0xFFFFFFFFFFFFFFFELL && (v139 != 2 || v141 == v142 - 1))
                  {
                    if (v128 <= v129)
                    {
                      v204 = 0;
                      v202 = 0u;
                      v203 = 0u;
                      sub_29A4B8A9C(v90 - 88, &v202);
                      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
                    }

                    *&v202 = "usd/clipSetDefinition.cpp";
                    *(&v202 + 1) = "_DeriveClipInfo";
                    *&v203 = 215;
                    *(&v203 + 1) = "void pxrInternal__aapl__pxrReserved__::_DeriveClipInfo(const std::string &, const double, const double, const double, const double, std::optional<VtVec2dArray> *, std::optional<VtVec2dArray> *, std::optional<VtArray<SdfAssetPath>> *, const SdfPath &, const PcpLayerStackPtr &, const size_t)";
                    LOBYTE(v204) = 0;
                    v168 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v130);
                    v169 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                    if (!v169)
                    {
                      v169 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                    }

                    v170 = *(v169 + 6) & 0xFFFFFFFFFFFFFFF8;
                    if (v170)
                    {
                      v171 = (v170 + 16);
                      if (*(v170 + 39) < 0)
                      {
                        v171 = *v171;
                      }
                    }

                    else
                    {
                      v171 = "";
                    }

                    v172 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                    if (!v172)
                    {
                      v172 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                    }

                    v173 = *(v172 + 7) & 0xFFFFFFFFFFFFFFF8;
                    if (v173)
                    {
                      v174 = (v173 + 16);
                      if (*(v173 + 39) < 0)
                      {
                        v174 = *v174;
                      }
                    }

                    else
                    {
                      v174 = "";
                    }

                    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v202, "Invalid time range specified for prim <%s>. %s (%f) cannot be greater than %s (%f).", v167, v168, v171, *&v129, v174, *&v128);
                  }

                  else
                  {
LABEL_208:
                    *&v202 = "usd/clipSetDefinition.cpp";
                    *(&v202 + 1) = "_DeriveClipInfo";
                    *&v203 = 204;
                    *(&v203 + 1) = "void pxrInternal__aapl__pxrReserved__::_DeriveClipInfo(const std::string &, const double, const double, const double, const double, std::optional<VtVec2dArray> *, std::optional<VtVec2dArray> *, std::optional<VtArray<SdfAssetPath>> *, const SdfPath &, const PcpLayerStackPtr &, const size_t)";
                    LOBYTE(v204) = 0;
                    v146 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                    if (!v146)
                    {
                      v146 = sub_29A4B3438(&pxrInternal__aapl__pxrReserved__::UsdClipsAPIInfoKeys);
                    }

                    v147 = *(v146 + 5) & 0xFFFFFFFFFFFFFFF8;
                    if (v147)
                    {
                      v148 = (v147 + 16);
                      if (*(v147 + 39) < 0)
                      {
                        v148 = *v148;
                      }
                    }

                    else
                    {
                      v148 = "";
                    }

                    v162 = *(v117 + 23);
                    v163 = *v117;
                    v164 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v130);
                    if (v162 >= 0)
                    {
                      v166 = v117;
                    }

                    else
                    {
                      v166 = v163;
                    }

                    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v202, "Invalid %s '%s' for prim <%s>. It must be of the form path/basename.###.usd or path/basename.###.###.usd. Note that the number of hash marks is variable in each group.", v165, v148, v166, v164);
                  }

                  *&v202 = &v189;
                  sub_29A012C90(&v202);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v192.__r_.__value_.__l.__data_);
                  }

                  sub_29A01752C(&v193, v194[0]);
                  if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v195.__r_.__value_.__l.__data_);
                  }

LABEL_246:
                  sub_29A419260(v90 - 32);
                }

                continue;
              }
            }
          }
        }
      }

      v89 += 88;
    }

    sub_29A4B8700(&v180);
  }

  sub_29A4B93C4(v187);
}

void sub_29A4B7BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache((v69 - 184));
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder(&STACK[0x230]);
  STACK[0x230] = &a46;
  sub_29A012C90(&STACK[0x230]);
  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  sub_29A01752C(&a61, a62);
  if (a69 < 0)
  {
    operator delete(a64);
  }

  sub_29A4B8700(&a28);
  sub_29A4B93C4(a44);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A4B80E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
    v8 = a1 + 8;
LABEL_9:
    v9 = operator new(0x90uLL);
    v10 = v9;
    v15[0] = v9;
    v15[1] = a1;
    v16 = 0;
    if (*(a2 + 23) < 0)
    {
      sub_29A008D14(v9 + 32, *a2, *(a2 + 8));
    }

    else
    {
      *(v9 + 2) = *a2;
      *(v9 + 6) = *(a2 + 16);
    }

    *(v10 + 7) = 0;
    *(v10 + 8) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v10 + 18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v10 + 19);
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v10 + 12, 0.0, 1.0);
    *(v10 + 14) = 0;
    if (*(a3 + 23) < 0)
    {
      sub_29A008D14(v10 + 120, *a3, *(a3 + 8));
    }

    else
    {
      *(v10 + 120) = *a3;
      *(v10 + 17) = *(a3 + 16);
    }

    LOBYTE(v16) = 1;
    v11 = v15[0];
    *v15[0] = 0;
    v11[1] = 0;
    v11[2] = v8;
    *v7 = v11;
    v12 = **a1;
    v13 = v11;
    if (v12)
    {
      *a1 = v12;
      v13 = *v7;
    }

    sub_29A00B25C(*(a1 + 8), v13);
    ++*(a1 + 16);
    v15[0] = 0;
    sub_29A4B94C8(v15);
    return v11;
  }

  while (1)
  {
    while (1)
    {
      v8 = v6;
      if (!sub_29A00AFCC(a1, a2, (v6 + 32)))
      {
        break;
      }

      v6 = *v8;
      v7 = v8;
      if (!*v8)
      {
        goto LABEL_9;
      }
    }

    if (!sub_29A00AFCC(a1, (v8 + 32), a2))
    {
      break;
    }

    v7 = (v8 + 8);
    v6 = *(v8 + 8);
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v11 = *v7;
  if (!*v7)
  {
    goto LABEL_9;
  }

  return v11;
}

void sub_29A4B8280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A184A10(v4, 0);
  sub_29A4B8974(v3);
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  sub_29A4B94C8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A4B8310(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
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
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_29A03B05C(v7, a2);
  sub_29A4B9424((a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t *sub_29A4B839C(uint64_t *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 >= 0xF0F0F0F0F0F0F1)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A4BBBB4(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[272 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29A4BBBF8(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A4BBE44(&v12);
  }

  return result;
}

void sub_29A4B8460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4BBE44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4B8474(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A4BBE94(a1, a2);
  }

  else
  {
    sub_29A4BBFC8(a1, a1[1], a2);
    result = v3 + 272;
    a1[1] = v3 + 272;
  }

  a1[1] = result;
  return result;
}

pxrInternal__aapl__pxrReserved__::VtValue *sub_29A4B84D4(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2, uint64_t a3)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  result = sub_29A293B8C(a1, EmptyString);
  if (result)
  {
    v7 = result;
    result = sub_29A192658(result);
    if (result)
    {
      v8 = v7[1];
      if ((v8 & 4) != 0)
      {
        v9 = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(v7);
      }

      else
      {
        v9 = *v7;
      }

      return sub_29A4BC2A4(a3, v9);
    }
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::VtValue *sub_29A4B8570(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  result = sub_29A293B8C(a1, EmptyString);
  if (result)
  {
    v5 = result;
    if (sub_29A1EFC10(result))
    {
      v6 = *(v5 + 1);
      if ((v6 & 4) != 0)
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFFF8) + 168);

        return v7(v5);
      }

      else
      {
        return *v5;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29A4B8600(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v4 = sub_29A293B8C(a1, EmptyString);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  if (!sub_29A346994(v4))
  {
    return 0;
  }

  v6 = *(v5 + 1);
  if ((v6 & 4) == 0)
  {
    return v5;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFFF8) + 168);

  return v7(v5);
}

void sub_29A4B8690(double *a1, void *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfLayerOffset::IsIdentity(a1))
  {
    sub_29A19255C(a2);
    v4 = a2[4];
    sub_29A19255C(a2);
    v5 = a2[4] + 16 * *a2;
    while (v4 != v5)
    {
      *v4 = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator*(a1, *v4);
      v4 += 2;
    }
  }
}

uint64_t sub_29A4B8700(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_29A4B9518(i))
    {
      i -= 88;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::VtValue *sub_29A4B8760(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1, uint64_t *a2, void *a3, pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  result = sub_29A4B89AC(a4, a3);
  if (result)
  {
    v7 = result;
    result = sub_29A192658(result);
    if (result)
    {
      v12 = 0;
      memset(v11, 0, sizeof(v11));
      sub_29A1925A0(v7, v11);
      sub_29A321960(v9, a2);
      v10[0] = sub_29A4B890C(a1);
      v10[1] = v8;
      sub_29A4B8690(v10, v11);
      sub_29B293818(v9);
      sub_29A1925A0(v7, v11);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29A4B8884(uint64_t a1, const void *****a2)
{
  *(a1 + 24) = 0;
  if (sub_29A185258(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

double sub_29A4B890C(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1)
{
  MapToRoot = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot(a1);
  v9 = *(pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToRoot, v3, v4) + 40);
  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
  v6 = sub_29A4184C4(LayerStack);
  LayerOffsetForLayer = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayerOffsetForLayer(v6);
  if (LayerOffsetForLayer)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator*(&v9, LayerOffsetForLayer);
  }

  else
  {
    return *&v9;
  }
}

uint64_t sub_29A4B8974(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29B2A4268(a1);
  return a1;
}

uint64_t sub_29A4B89AC(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v4 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, EmptyString);
  v6 = v5;
  v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v6 == v8 && (v6 ? (v9 = v4 == v7) : (v9 = 1), v9))
  {
    return 0;
  }

  else
  {
    return v4 + 56;
  }
}

uint64_t sub_29A4B8A28(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 256;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 256));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 260));
  *(a1 + 264) = 0;
  return a1;
}

uint64_t sub_29A4B8A9C(uint64_t result, uint64_t a2)
{
  if (*(result + 40) == 1)
  {
    if (result != a2)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
    }
  }

  else
  {
    v2 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v2;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(result + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(result + 40) = 1;
  }

  return result;
}

uint64_t sub_29A4B8B24(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    if (a1 != a2)
    {
      sub_29A216064(a1);
      v4 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v4;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a1 + 32) = *(a2 + 32);
      *(a2 + 32) = 0;
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a1 + 40) = 1;
  }

  return a1;
}

void sub_29A4B8BAC(void *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (sub_29A4AF3EC(2))
  {
    v6 = *a1 & 0xFFFFFFFFFFFFFFF8;
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

    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    sub_29A4B9188(a2);
    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s for prim <%s> derived: %s\n", v9, v10, v7, Text, p_p);
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_29A4B8C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4B8C84(uint64_t a1, _OWORD *a2)
{
  if (!*(a1 + 8))
  {
    v3 = *a1;
    if (*(a1 + 24))
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      if (*(a1 + 24))
      {
        v6 = a1;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + 16 * v3) = *a2;
      ++*a1;
      return;
    }

LABEL_13:
    sub_29B2AA0F4(a1, v3, a2);
  }

  sub_29B2AA078(a1);
}

uint64_t sub_29A4B8D2C(void *a1)
{
  sub_29A00B6DC(&v7);
  v2 = *(v7 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v7 + v2));
  std::ios_base::imbue((&v7 + v2), v3);
  std::locale::~locale(&v13);
  v4 = *(&v9[3].__locale_ + v2);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v12, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v12);
  }

  std::locale::~locale(&v6);
  MEMORY[0x29C2C1F00](&v7, *a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x29EDC9538];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v11);
}

void sub_29A4B8F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4B8F4C(uint64_t a1)
{
  sub_29A00B6DC(&v7);
  v2 = *(v7 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v7 + v2));
  std::ios_base::imbue((&v7 + v2), v3);
  std::locale::~locale(&v13);
  v4 = *(&v9[3].__locale_ + v2);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v12, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v12);
  }

  std::locale::~locale(&v6);
  v13.__locale_ = *(a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v7, a1, &v13, sub_29A21604C);
  std::stringbuf::str();
  v7 = *MEMORY[0x29EDC9538];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v11);
}

void sub_29A4B9164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4B9188(uint64_t a1)
{
  sub_29A00B6DC(&v7);
  v2 = *(v7 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v7 + v2));
  std::ios_base::imbue((&v7 + v2), v3);
  std::locale::~locale(&v13);
  v4 = *(&v9[3].__locale_ + v2);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v12, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v12);
  }

  std::locale::~locale(&v6);
  v13.__locale_ = *(a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(&v7, a1, &v13, sub_29A192B64);
  std::stringbuf::str();
  v7 = *MEMORY[0x29EDC9538];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v11);
}

void sub_29A4B93A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

void sub_29A4B93C4(void *a1)
{
  if (a1)
  {
    sub_29A4B93C4(*a1);
    sub_29A4B93C4(a1[1]);
    sub_29A4B9424((a1 + 4));

    operator delete(a1);
  }
}

void sub_29A4B9424(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  sub_29A184A10((a1 + 80), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29B2AA184(a1);
}

uint64_t sub_29A4B9474(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_29A184A10((a1 + 56), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29B2A4268(a1);
  return a1;
}

uint64_t sub_29A4B94C8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A4B9424(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_29A4B9518(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_29A184A10((a1 + 56), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  return sub_29B2A4268(a1);
}

void *sub_29A4B9568(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (a2 >= 0x2E8BA2E8BA2E8BBLL)
    {
      sub_29A00C8B8();
    }

    v7 = operator new(88 * a2);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[88 * a3];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v8;
  a1[3] = &v7[88 * a2];
  return a1;
}

uint64_t sub_29A4B95E8(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  v7 = v4 + v5 - v6;
  v16 = v7;
  v17 = v7;
  if (v5 == v6)
  {
    v15 = 1;
  }

  else
  {
    v8 = v4 + v5 - v6;
    v9 = v5;
    do
    {
      sub_29A4B9750(v8, v9);
      v9 += 88;
      v8 = v17 + 88;
      v17 += 88;
    }

    while (v9 != v6);
    v15 = 1;
    do
    {
      sub_29A4B9518(v5);
      v5 += 88;
    }

    while (v5 != v6);
  }

  result = sub_29A4B97C4(v14);
  a2[1] = v7;
  v11 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

uint64_t sub_29A4B96FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 88;
    sub_29A4B9518(v3 - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_29A4B9750(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_29A1DDD84((a1 + 16), (a2 + 16));
  sub_29A1DDDC0((a1 + 20), (a2 + 20));
  v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v4;
  v5 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 56) = v5;
  result = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = result;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_29A4B97C4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 88;
      sub_29A4B9518(v3);
    }
  }

  return a1;
}

uint64_t sub_29A4B9820(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v69 = a2 - 88;
  v66 = a2 - 264;
  v67 = a2 - 176;
  v64 = a2 - 56;
  v65 = a2 - 72;
  v5 = result;
  v6 = a2 - result;
  v7 = 0x2E8BA2E8BA2E8BA3 * ((a2 - result) >> 3);
  v8 = v7 - 2;
  v71 = result;
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        return sub_29A4BB0FC(result, result + 88, v69);
      case 4:
        return sub_29A4BB250(result, result + 88, result + 176, v69);
      case 5:
        return sub_29A4BB348(result, result + 88, result + 176, result + 264, v69);
    }
  }

  else
  {
    if (v7 < 2)
    {
      return result;
    }

    v5 = result;
    if (v7 == 2)
    {
      *&v91 = a2 - 88;
      *(&v91 + 1) = a2 - 72;
      v92 = (a2 - 56);
      v79 = result;
      v80 = result + 16;
      v81 = result + 32;
      result = sub_29A4BB8AC(&v72, &v91, &v79);
      if (result)
      {
        sub_29A4BB9AC(v71, v69);
      }

      return result;
    }
  }

  if (v6 <= 2111)
  {
    if (a4)
    {
      if (v5 != a2)
      {
        v35 = result + 88;
        if (result + 88 != a2)
        {
          v36 = 0;
          v37 = result;
          do
          {
            v38 = v35;
            v79 = v35;
            v80 = v37 + 104;
            v81 = v37 + 120;
            *&v72 = v37;
            *(&v72 + 1) = v37 + 16;
            v73 = (v37 + 32);
            result = sub_29A4BB8AC(v83, &v79, &v72);
            if (result)
            {
              v91 = *v38;
              *v38 = 0;
              *(v38 + 8) = 0;
              LODWORD(v92) = *(v37 + 104);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((v37 + 104));
              HIDWORD(v92) = *(v37 + 108);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v37 + 108));
              v39 = *(v37 + 128);
              v93 = *(v37 + 112);
              v94 = v39;
              v40 = *(v37 + 144);
              v41 = *(v37 + 152);
              *(v37 + 144) = 0;
              *(v37 + 152) = 0;
              v95 = v40;
              v96 = v41;
              v97 = *(v37 + 168);
              *(v37 + 160) = 0;
              *(v37 + 168) = 0;
              sub_29B29119C(v71 + v36 + 88, v71 + v36);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
            }

            v35 = v38 + 88;
            v36 += 88;
            v37 = v38;
          }

          while (v38 + 88 != a2);
        }
      }
    }

    else if (v5 != a2)
    {
      v57 = result + 88;
      if (result + 88 != a2)
      {
        v58 = result + 175;
        do
        {
          v59 = v57;
          v60 = (v71 + 104);
          v79 = v57;
          v80 = v71 + 104;
          v81 = v71 + 120;
          *&v72 = v71;
          *(&v72 + 1) = v71 + 16;
          v73 = (v71 + 32);
          result = sub_29A4BB8AC(v83, &v79, &v72);
          if (result)
          {
            v91 = *v59;
            *v59 = 0;
            *(v59 + 8) = 0;
            LODWORD(v92) = *v60;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v60);
            HIDWORD(v92) = *(v71 + 108);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v71 + 108));
            v61 = *(v71 + 128);
            v93 = *(v71 + 112);
            v94 = v61;
            v62 = *(v71 + 144);
            v63 = *(v71 + 152);
            *(v71 + 144) = 0;
            *(v71 + 152) = 0;
            v95 = v62;
            v96 = v63;
            v97 = *(v71 + 168);
            *(v71 + 160) = 0;
            *(v71 + 168) = 0;
            sub_29B29119C(v58 - 87, v58 - 175);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }

          v57 = v59 + 88;
          v58 += 88;
          v71 = v59;
        }

        while (v59 + 88 != a2);
      }
    }
  }

  else
  {
    if (a3)
    {
      v9 = v7 >> 1;
      v10 = v5 + 88 * (v7 >> 1);
      if (v6 >= 0x2C01)
      {
        sub_29A4BB0FC(v5, v5 + 88 * v9, v69);
        v11 = 88 * v9;
        sub_29A4BB0FC(v5 + 88, v11 + v5 - 88, v67);
        sub_29A4BB0FC(v5 + 176, v5 + 88 + v11, v66);
        sub_29A4BB0FC(v11 + v5 - 88, v10, v5 + 88 + v11);
        sub_29A4BB9AC(v5, v10);
      }

      sub_29A4BB0FC(v5 + 88 * v9, v5, v69);
      if ((a4 & 1) == 0)
      {
        *&v91 = v5 - 88;
        *(&v91 + 1) = v5 - 72;
        v92 = (v5 - 56);
        v79 = v5;
        v80 = v5 + 16;
        v81 = v5 + 32;
        if ((sub_29A4BB8AC(&v72, &v91, &v79) & 1) == 0)
        {
          v23 = *(v5 + 16);
          v85 = *v5;
          *v5 = 0;
          *(v5 + 8) = 0;
          v86[0] = v23;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((v5 + 16));
          v86[1] = *(v5 + 20);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v5 + 20));
          v24 = *(v5 + 56);
          v25 = *(v5 + 24);
          v87[1] = *(v5 + 40);
          v87[0] = v25;
          *(v5 + 56) = 0;
          v88 = v24;
          v26 = *(v5 + 64);
          v90 = *(v5 + 80);
          v89 = v26;
          *(v5 + 72) = 0;
          *(v5 + 80) = 0;
          *(v5 + 64) = 0;
          *&v91 = &v85;
          *(&v91 + 1) = v86;
          v92 = v87 + 8;
          v79 = v69;
          v80 = v65;
          v81 = v64;
          if (sub_29A4BB8AC(&v72, &v91, &v79))
          {
            v27 = v5;
            do
            {
              v28 = v27 + 88;
              *&v91 = &v85;
              *(&v91 + 1) = v86;
              v92 = v87 + 8;
              v79 = v27 + 88;
              v80 = v27 + 104;
              v81 = v27 + 120;
              v29 = sub_29A4BB8AC(&v72, &v91, &v79);
              v27 = v28;
            }

            while ((v29 & 1) == 0);
          }

          else
          {
            v30 = v5 + 120;
            do
            {
              v28 = v30 - 32;
              if (v30 - 32 >= a2)
              {
                break;
              }

              *&v91 = &v85;
              *(&v91 + 1) = v86;
              v92 = v87 + 8;
              v79 = v30 - 32;
              v80 = v30 - 16;
              v81 = v30;
              v30 += 88;
            }

            while (!sub_29A4BB8AC(&v72, &v91, &v79));
          }

          v31 = a2;
          if (v28 < a2)
          {
            v32 = a2;
            do
            {
              v31 = v32 - 88;
              *&v91 = &v85;
              *(&v91 + 1) = v86;
              v92 = v87 + 8;
              v79 = v32 - 88;
              v80 = v32 - 72;
              v81 = v32 - 56;
              v33 = sub_29A4BB8AC(&v72, &v91, &v79);
              v32 = v31;
            }

            while ((v33 & 1) != 0);
          }

          if (v28 >= v31)
          {
            if (v28 - 88 != v5)
            {
              sub_29B29119C(v5, v28 - 88);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
            }

            v34 = *(v28 - 80);
            *(v28 - 88) = v85;
            *(&v85 + 1) = 0;
            if (v34 && atomic_fetch_add_explicit(v34 + 2, 0xFFFFFFFF, memory_order_release) == 1)
            {
              (*(*v34 + 8))(v34);
            }

            *&v85 = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }

          sub_29A4BB9AC(v28, v31);
        }
      }

      v91 = *v5;
      *v5 = 0;
      *(v5 + 8) = 0;
      LODWORD(v92) = *(v5 + 16);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((v5 + 16));
      HIDWORD(v92) = *(v5 + 20);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v5 + 20));
      v12 = 0;
      v13 = *(v5 + 56);
      v14 = *(v5 + 24);
      v94 = *(v5 + 40);
      *(v5 + 56) = 0;
      v95 = v13;
      v15 = *(v5 + 64);
      v97 = *(v5 + 80);
      v93 = v14;
      v96 = v15;
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      *(v5 + 64) = 0;
      do
      {
        v79 = v5 + v12 + 88;
        v80 = v5 + v12 + 104;
        v81 = v5 + v12 + 120;
        *&v72 = &v91;
        *(&v72 + 1) = &v92;
        v73 = &v93 + 8;
        v12 += 88;
      }

      while ((sub_29A4BB8AC(v83, &v79, &v72) & 1) != 0);
      v16 = v5 + v12;
      v17 = a2;
      if (v12 == 88)
      {
        v20 = a2;
        while (v16 < v20)
        {
          v18 = v20 - 88;
          v79 = v20 - 88;
          v80 = v20 - 72;
          v81 = v20 - 56;
          *&v72 = &v91;
          *(&v72 + 1) = &v92;
          v73 = &v93 + 8;
          v21 = sub_29A4BB8AC(v83, &v79, &v72);
          v20 = v18;
          if (v21)
          {
            goto LABEL_24;
          }
        }

        v18 = v20;
      }

      else
      {
        do
        {
          v18 = v17 - 88;
          v79 = v17 - 88;
          v80 = v17 - 72;
          v81 = v17 - 56;
          *&v72 = &v91;
          *(&v72 + 1) = &v92;
          v73 = &v93 + 8;
          v19 = sub_29A4BB8AC(v83, &v79, &v72);
          v17 = v18;
        }

        while (!v19);
      }

LABEL_24:
      if (v16 < v18)
      {
        sub_29A4BB9AC(v16, v18);
      }

      if (v16 - 88 == v71)
      {
        v22 = *(v16 - 80);
        *(v16 - 88) = v91;
        *(&v91 + 1) = 0;
        if (v22 && atomic_fetch_add_explicit(v22 + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v22 + 8))(v22);
        }

        *&v91 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      sub_29B29119C(v71, v16 - 88);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    if (v5 != a2)
    {
      v42 = v8 >> 1;
      v43 = v8 >> 1;
      while (1)
      {
        v44 = v43;
        if (v42 >= v43)
        {
          v45 = (2 * v43) | 1;
          v46 = v71 + 88 * v45;
          if (2 * v43 + 2 < v7)
          {
            v79 = v71 + 88 * v45;
            v80 = v46 + 16;
            v81 = v46 + 32;
            *&v72 = v46 + 88;
            *(&v72 + 1) = v46 + 104;
            v73 = (v46 + 120);
            if (sub_29A4BB8AC(v83, &v79, &v72))
            {
              v46 += 88;
            }
          }

          v79 = v46;
          v80 = v46 + 16;
          v48 = v71 + 88 * v44;
          v81 = v46 + 32;
          *&v72 = v48;
          *(&v72 + 1) = v48 + 16;
          v73 = (v48 + 32);
          if ((sub_29A4BB8AC(v83, &v79, &v72) & 1) == 0)
          {
            v91 = *v48;
            *v48 = 0;
            *(v48 + 8) = 0;
            LODWORD(v92) = *(v48 + 16);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((v48 + 16));
            HIDWORD(v92) = *(v48 + 20);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v48 + 20));
            v49 = *(v48 + 24);
            v94 = *(v48 + 40);
            v93 = v49;
            v50 = *(v48 + 56);
            *(v48 + 56) = 0;
            v95 = v50;
            v51 = *(v48 + 64);
            v97 = *(v48 + 80);
            v96 = v51;
            *(v48 + 72) = 0;
            *(v48 + 80) = 0;
            *(v48 + 64) = 0;
            sub_29B29119C(v48, v46);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }
        }

        v43 = v44 - 1;
        if (!v44)
        {
          v72 = *v71;
          *v71 = 0;
          *(v71 + 8) = 0;
          LODWORD(v73) = *(v71 + 16);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((v71 + 16));
          HIDWORD(v73) = *(v71 + 20);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v71 + 20));
          v52 = *(v71 + 24);
          v75 = *(v71 + 40);
          v74 = v52;
          v53 = *(v71 + 56);
          *(v71 + 56) = 0;
          v76 = v53;
          v54 = *(v71 + 64);
          v78 = *(v71 + 80);
          __p = v54;
          *(v71 + 72) = 0;
          *(v71 + 80) = 0;
          *(v71 + 64) = 0;
          v55 = v71 + 88;
          if ((0x2E8BA2E8BA2E8BA3 * (v6 >> 3)) > 2)
          {
            v83[0] = v71 + 88;
            v83[1] = v71 + 104;
            v83[2] = v71 + 120;
            v82[0] = v71 + 176;
            v82[1] = v71 + 192;
            v82[2] = v71 + 208;
            if (sub_29A4BB8AC(&v84, v83, v82))
            {
              v55 = v71 + 176;
            }
          }

          sub_29B29119C(v71, v55);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }
      }
    }
  }

  return result;
}

uint64_t sub_29A4BB0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 + 16;
  v12 = a2;
  v13 = a2 + 16;
  v7 = a2 + 32;
  v14 = a2 + 32;
  v9 = a1;
  v10 = a1 + 16;
  v11 = a1 + 32;
  if (sub_29A4BB8AC(&v15, &v12, &v9))
  {
    v12 = a3;
    v13 = a3 + 16;
    v14 = a3 + 32;
    v9 = a2;
    v10 = v6;
    v11 = v7;
    if (sub_29A4BB8AC(&v15, &v12, &v9))
    {
      sub_29A4BB9AC(a1, a3);
    }

    sub_29A4BB9AC(a1, a2);
  }

  v12 = a3;
  v13 = a3 + 16;
  v14 = a3 + 32;
  v9 = a2;
  v10 = v6;
  v11 = v7;
  result = sub_29A4BB8AC(&v15, &v12, &v9);
  if (result)
  {
    sub_29A4BB9AC(a2, a3);
  }

  return result;
}

uint64_t sub_29A4BB250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A4BB0FC(a1, a2, a3);
  v8[0] = a4;
  v8[1] = a4 + 16;
  v8[2] = a4 + 32;
  v7[0] = a3;
  v7[1] = a3 + 16;
  v7[2] = a3 + 32;
  result = sub_29A4BB8AC(&v9, v8, v7);
  if (result)
  {
    sub_29A4BB9AC(a3, a4);
  }

  return result;
}

uint64_t sub_29A4BB348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29A4BB250(a1, a2, a3, a4);
  v9[0] = a5;
  v9[1] = a5 + 16;
  v9[2] = a5 + 32;
  v8[0] = a4;
  v8[1] = a4 + 16;
  v8[2] = a4 + 32;
  result = sub_29A4BB8AC(&v10, v9, v8);
  if (result)
  {
    sub_29A4BB9AC(a4, a5);
  }

  return result;
}

uint64_t sub_29A4BB484(uint64_t a1, uint64_t a2)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_29A4BB0FC(a1, a1 + 88, a2 - 88);
        return 1;
      case 4:
        sub_29A4BB250(a1, a1 + 88, a1 + 176, a2 - 88);
        return 1;
      case 5:
        sub_29A4BB348(a1, a1 + 88, a1 + 176, a1 + 264, a2 - 88);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      *&v11 = a2 - 88;
      *(&v11 + 1) = a2 - 72;
      v12 = a2 - 56;
      v19 = a1;
      v20 = a1 + 16;
      v21 = a1 + 32;
      if (sub_29A4BB8AC(&v18, &v11, &v19))
      {
        sub_29A4BB9AC(a1, a2 - 88);
      }

      return 1;
    }
  }

  v5 = a1 + 176;
  sub_29A4BB0FC(a1, a1 + 88, a1 + 176);
  v6 = a1 + 264;
  if (a1 + 264 != a2)
  {
    v7 = 0;
    do
    {
      *&v11 = v6;
      *(&v11 + 1) = v6 + 16;
      v12 = v6 + 32;
      v19 = v5;
      v20 = v5 + 16;
      v21 = v5 + 32;
      if (sub_29A4BB8AC(&v18, &v11, &v19))
      {
        v11 = *v6;
        *v6 = 0;
        *(v6 + 8) = 0;
        LODWORD(v12) = *(v6 + 16);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((v6 + 16));
        HIDWORD(v12) = *(v6 + 20);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v6 + 20));
        v13 = *(v6 + 24);
        v14 = *(v6 + 40);
        v8 = *(v6 + 56);
        v9 = *(v6 + 64);
        *(v6 + 56) = 0;
        *(v6 + 64) = 0;
        v15 = v8;
        v16 = v9;
        v17 = *(v6 + 80);
        *(v6 + 72) = 0;
        *(v6 + 80) = 0;
        sub_29B29119C(a1 + v7 + 264, a1 + v7 + 176);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      v5 = v6;
      v7 += 88;
      v6 += 88;
    }

    while (v6 != a2);
  }

  return 1;
}

void sub_29A4BB898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A4B9474(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4BB8AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = sub_29A0ECB5C(*a2);
  if (v6 < sub_29A0ECB5C(v5))
  {
    return 1;
  }

  v8 = *a2;
  v9 = sub_29A0ECB5C(*a3);
  if (v9 >= sub_29A0ECB5C(v8))
  {
    sub_29A4BB940();
  }

  return 0;
}

void sub_29A4BB9AC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a1 + 20));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_29B29119C(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void *sub_29A4BBBB4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xF0F0F0F0F0F0F1)
  {
    sub_29A00C8B8();
  }

  return operator new(272 * a2);
}

uint64_t sub_29A4BBBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_29A4BBC9C(a4, v8);
      v8 += 272;
      a4 += 272;
      v7 -= 272;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_29A4B0304(v6);
      v6 += 272;
    }
  }

  return result;
}

void sub_29A4BBC78(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 272;
    do
    {
      v4 = sub_29A4B0304(v4) - 272;
      v2 += 272;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4BBC9C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    if (v5)
    {
      v6 = (v5 - 16);
      if (*(a1 + 24))
      {
        v6 = *(a1 + 24);
      }

      atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    }

    *(a1 + 40) = 1;
  }

  sub_29A4BBD54((a1 + 48), a2 + 48);
  sub_29A22C3D0(a1 + 104, (a2 + 104));
  sub_29B2AA208(a1, a2);
  return a1;
}

void sub_29A4BBD30(_Unwind_Exception *a1)
{
  sub_29A4B0378(v1 + 48);
  sub_29A4B03C8(v1);
  _Unwind_Resume(a1);
}

char *sub_29A4BBD54(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[48] = 0;
  if (*(a2 + 48) == 1)
  {
    sub_29A4BBDB0(__dst, a2);
    __dst[48] = 1;
  }

  return __dst;
}

char *sub_29A4BBDB0(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_29A4BBE28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4BBE44(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 272;
    sub_29A4B0304(i - 272);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A4BBE94(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xF0F0F0F0F0F0F0)
  {
    sub_29A00C9A4();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v6 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A4BBBB4(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[272 * v2];
  *(&v16 + 1) = &v7[272 * v6];
  sub_29A4BBFC8(a1, v15, a2);
  *&v16 = v15 + 272;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A4BBBF8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A4BBE44(&v14);
  return v13;
}

void sub_29A4BBFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A4BBE44(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A4BBFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 40) = 0;
  if (*(a3 + 40) == 1)
  {
    v5 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v5;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a2 + 32) = *(a3 + 32);
    *(a3 + 32) = 0;
    *(a2 + 40) = 1;
  }

  *(a2 + 48) = 0;
  *(a2 + 96) = 0;
  if (*(a3 + 96) == 1)
  {
    v6 = *(a3 + 48);
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 48) = v6;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    *(a3 + 48) = 0;
    v7 = *(a3 + 72);
    *(a2 + 88) = *(a3 + 88);
    *(a2 + 72) = v7;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 72) = 0;
    *(a2 + 96) = 1;
  }

  *(a2 + 104) = 0;
  *(a2 + 128) = 0;
  if (*(a3 + 128) == 1)
  {
    v8 = *(a3 + 104);
    *(a2 + 120) = *(a3 + 120);
    *(a2 + 104) = v8;
    *(a3 + 112) = 0;
    *(a3 + 120) = 0;
    *(a3 + 104) = 0;
    *(a2 + 128) = 1;
  }

  *(a2 + 136) = 0;
  *(a2 + 176) = 0;
  if (*(a3 + 176) == 1)
  {
    v9 = *(a3 + 152);
    *(a2 + 136) = *(a3 + 136);
    *(a2 + 152) = v9;
    *(a3 + 152) = 0u;
    *(a3 + 136) = 0u;
    *(a2 + 168) = *(a3 + 168);
    *(a3 + 168) = 0;
    *(a2 + 176) = 1;
  }

  *(a2 + 184) = 0;
  *(a2 + 224) = 0;
  if (*(a3 + 224) == 1)
  {
    v10 = *(a3 + 200);
    *(a2 + 184) = *(a3 + 184);
    *(a2 + 200) = v10;
    *(a3 + 200) = 0u;
    *(a3 + 184) = 0u;
    *(a2 + 216) = *(a3 + 216);
    *(a3 + 216) = 0;
    *(a2 + 224) = 1;
  }

  *(a2 + 232) = *(a3 + 232);
  *(a2 + 240) = *(a3 + 240);
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  sub_29A1DDD84((a2 + 256), (a3 + 256));
  result = sub_29A1DDDC0((a2 + 260), (a3 + 260));
  *(a2 + 264) = *(a3 + 264);
  return result;
}

std::string *sub_29A4BC168(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(__dst, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return __dst;
}

std::string *sub_29A4BC1D8(std::string *a1, std::string *__str)
{
  if (a1[2].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(a1, __str);
    std::string::operator=(a1 + 1, __str + 1);
  }

  else
  {
    sub_29A4BBDB0(a1, __str);
    a1[2].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

uint64_t sub_29A4BC234(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    sub_29A4AC1F0(a1, a2);
  }

  else
  {
    v3 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v3;
    v4 = *(a2 + 32);
    *(a1 + 32) = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(a1 + 24))
      {
        v5 = *(a1 + 24);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t sub_29A4BC2A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    sub_29A4AD84C(a1, a2);
  }

  else
  {
    v3 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v3;
    v4 = *(a2 + 32);
    *(a1 + 32) = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(a1 + 24))
      {
        v5 = *(a1 + 24);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    *(a1 + 40) = 1;
  }

  return a1;
}

void sub_29A4BC314(uint64_t a1@<X8>)
{
  v2 = (a1 - 16);
  if (v1)
  {
    v2 = v1;
  }

  atomic_fetch_add_explicit(v2, 1uLL, memory_order_relaxed);
}

pxrInternal__aapl__pxrReserved__::Usd_CrateData *pxrInternal__aapl__pxrReserved__::Usd_CrateData::Usd_CrateData(pxrInternal__aapl__pxrReserved__::Usd_CrateData *this, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2)
{
  *pxrInternal__aapl__pxrReserved__::SdfAbstractData::SdfAbstractData(this) = &unk_2A20515B0;
  v4 = operator new(0x68uLL);
  sub_29A4BF518(v4, a2);
  *(this + 6) = v4;
  v4[12] = this;
  return this;
}

void sub_29A4BC398(_Unwind_Exception *a1)
{
  operator delete(v2);
  pxrInternal__aapl__pxrReserved__::SdfAbstractData::~SdfAbstractData(v1, v4);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateData::~Usd_CrateData(pxrInternal__aapl__pxrReserved__::Usd_CrateData *this)
{
  *this = &unk_2A20515B0;
  sub_29A4C97D8(this + 6, 0);

  pxrInternal__aapl__pxrReserved__::SdfAbstractData::~SdfAbstractData(this, v2);
}

{
  *this = &unk_2A20515B0;
  sub_29A4C97D8(this + 6, 0);

  pxrInternal__aapl__pxrReserved__::SdfAbstractData::~SdfAbstractData(this, v2);
}

{
  *this = &unk_2A20515B0;
  sub_29A4C97D8(this + 6, 0);
  pxrInternal__aapl__pxrReserved__::SdfAbstractData::~SdfAbstractData(this, v2);

  operator delete(v3);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateData::Save(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v6 = *(a1 + 48);

    return sub_29A4BC560(v6, a2, a3);
  }

  else
  {
    v10 = v3;
    v11 = v4;
    v8[0] = "usd/crateData.cpp";
    v8[1] = "Save";
    v8[2] = 1222;
    v8[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateData::Save(const string &)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Tried to save to empty fileName");
    return 0;
  }
}

uint64_t sub_29A4BC560(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v5)
  {
    v6 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("Usd_CrateDataImpl::Save", 0);
  }

  else
  {
    v6 = 0;
  }

  v30 = v6;
  v31 = v6 != 0;
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Saving usd binary file @%s@", a2, a3, v7);
  v22 = "usd/crateData.cpp";
  v23 = "Save";
  v24 = 118;
  v25 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateDataImpl::Save(const string &)";
  v26 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v29, __p, &v22);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_29A2FCAE8(&v22, *(a1 + 48));
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = 0;
  if (v9)
  {
    v12 = (v10 + 4);
    while (1)
    {
      v13 = *v12;
      v12 += 16;
      if (v13 != -1)
      {
        break;
      }

      if (v9 == ++v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (v11 != v9)
  {
    v14 = v10 + 32 * v9;
    v15 = v10 + 32 * v11;
    do
    {
      sub_29A1E28B4(&v22, (v15 + 8));
      v16 = v15 + 32;
      do
      {
        v15 = v16;
        if (*(v16 - 26))
        {
          break;
        }

        v16 += 32;
      }

      while (*(v15 + 4) == -1);
    }

    while (v15 != v14);
  }

LABEL_20:
  sub_29A4BF99C(v22, v23, __p, v8);
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::StartPacking(*(a1 + 88), a2, __p);
  if (!pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Packer::operator BOOL(__p))
  {
    goto LABEL_26;
  }

  v17 = v22;
  v18 = v23;
  while (v17 != v18)
  {
    v19 = sub_29A4C2C3C(a1, v17);
    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddSpec(__p[0], v17, *(v19 + 24), *(v19 + 16));
    v17 += 2;
  }

  if (pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Packer::Close(__p))
  {
    v20 = sub_29A4BF9F8(a1);
    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Packer::~Packer(__p);
  }

  else
  {
LABEL_26:
    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Packer::~Packer(__p);
    v20 = 0;
  }

  __p[0] = &v22;
  sub_29A1E234C(__p);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v29);
  if (v30)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v31, v30);
  }

  return v20;
}

void sub_29A4BC778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  __p = &a11;
  sub_29A1E234C(&__p);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a22);
  sub_29A0E9CEC(v22 - 48);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateData::Export(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::Usd_CrateData::Usd_CrateData(v6, 0);
    sub_29A4C9D0C(v5, a1);
    pxrInternal__aapl__pxrReserved__::SdfAbstractData::CopyFrom(v6, v5);
  }

  v6[0] = "usd/crateData.cpp";
  v6[1] = "Export";
  v6[2] = 1233;
  v6[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateData::Export(const string &)";
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Tried to save to empty fileName");
  return 0;
}

void sub_29A4BC8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::Usd_CrateData::~Usd_CrateData(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateData::Save(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Usd_CrateData::Usd_CrateData(v3, 0);
  sub_29A4C9D0C(v2, a1);
  pxrInternal__aapl__pxrReserved__::SdfAbstractData::CopyFrom(v3, v2);
}

void sub_29A4BC998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::Usd_CrateData::~Usd_CrateData(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4BCA00(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("Usd_CrateDataImpl::Save", 0);
  }

  else
  {
    v5 = 0;
  }

  v27 = v5;
  v28 = v5 != 0;
  v21 = "usd/crateData.cpp";
  v22 = "Save";
  v23 = 164;
  v24 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateDataImpl::Save(std::vector<std::byte> &)";
  v25 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v26, "Saving usd binary buffer", &v21);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_29A2FCAE8(&v21, *(a1 + 48));
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = 0;
  if (v7)
  {
    v10 = (v8 + 4);
    while (1)
    {
      v11 = *v10;
      v10 += 16;
      if (v11 != -1)
      {
        break;
      }

      if (v7 == ++v9)
      {
        goto LABEL_15;
      }
    }
  }

  if (v9 != v7)
  {
    v12 = v8 + 32 * v7;
    v13 = v8 + 32 * v9;
    do
    {
      sub_29A1E28B4(&v21, (v13 + 8));
      v14 = v13 + 32;
      do
      {
        v13 = v14;
        if (*(v14 - 26))
        {
          break;
        }

        v14 += 32;
      }

      while (*(v13 + 4) == -1);
    }

    while (v13 != v12);
  }

LABEL_15:
  sub_29A4C4B28(v21, v22, &v29, v6);
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::StartPacking(*(a1 + 88), a2, &v29);
  if (!pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Packer::operator BOOL(&v29))
  {
    goto LABEL_21;
  }

  v15 = v21;
  v16 = v22;
  while (v15 != v16)
  {
    v17 = sub_29A4C2C3C(a1, v15);
    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddSpec(v29, v15, *(v17 + 24), *(v17 + 16));
    v15 += 2;
  }

  if (pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Packer::Close(&v29))
  {
    v18 = sub_29A4BF9F8(a1);
  }

  else
  {
LABEL_21:
    v18 = 1;
  }

  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Packer::~Packer(&v29);
  v29 = &v21;
  sub_29A1E234C(v19);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v26);
  if (v27)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v28, v27);
  }

  return v18;
}

void sub_29A4BCBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v14 - 40) = &a9;
  sub_29A1E234C((v14 - 40));
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a14);
  sub_29A0E9CEC(v14 - 56);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4BCC5C(uint64_t a1, char *a2, char *a3)
{
  v6 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v6)
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("Usd_CrateDataImpl::Open", 0);
  }

  else
  {
    v7 = 0;
  }

  v19 = v7;
  v20 = v7 != 0;
  if (a2[23] >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Opening usd binary asset @%s@", a2, a3, v8);
  v14[0] = "usd/crateData.cpp";
  v14[1] = "Open";
  v14[2] = 210;
  v14[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateDataImpl::Open(const string &, Args &&...) [Args = <BOOL &>]";
  v15 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v18, &__p, v14);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Open(a2, *a3, v14);
  v9 = v14[0];
  if (v14[0])
  {
    v14[0] = 0;
    sub_29A4C9874((a1 + 88), v9);
    v10 = sub_29A4BF9F8(a1);
    v11 = v14[0];
    v14[0] = 0;
    if (v11)
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::~CrateFile(v11);
      operator delete(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v18);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7 != 0, v7);
  }

  return v10;
}

void sub_29A4BCDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a11)
  {
    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::~CrateFile(a11);
    operator delete(v24);
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a22);
  sub_29A0E9CEC(v22 - 64);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4BCE34(uint64_t a1, uint64_t a2, char *a3, unsigned __int8 *a4)
{
  v8 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v8)
  {
    v9 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("Usd_CrateDataImpl::Open", 0);
  }

  else
  {
    v9 = 0;
  }

  v21 = v9;
  v22 = v9 != 0;
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Opening usd binary asset @%s@", a2, a3, v10);
  v16[0] = "usd/crateData.cpp";
  v16[1] = "Open";
  v16[2] = 210;
  v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateDataImpl::Open(const string &, Args &&...) [Args = <const std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArAsset> &, BOOL &>]";
  v17 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v20, &__p, v16);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Open(a2, a3, *a4, v16);
  v11 = v16[0];
  if (v16[0])
  {
    v16[0] = 0;
    sub_29A4C9874((a1 + 88), v11);
    v12 = sub_29A4BF9F8(a1);
    v13 = v16[0];
    v16[0] = 0;
    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::~CrateFile(v13);
      operator delete(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v20);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v9 != 0, v9);
  }

  return v12;
}

void sub_29A4BCF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a11)
  {
    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::~CrateFile(a11);
    operator delete(v24);
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a22);
  sub_29A0E9CEC(v22 - 80);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4BD01C(uint64_t a1, char *a2, char *a3)
{
  v6 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v6)
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("Usd_CrateDataImpl::Open", 0);
  }

  else
  {
    v7 = 0;
  }

  v19 = v7;
  v20 = v7 != 0;
  if (a2[23] >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Opening usd binary asset @%s@", a2, a3, v8);
  v14[0] = "usd/crateData.cpp";
  v14[1] = "Open";
  v14[2] = 226;
  v14[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateDataImpl::Open(const string &, const std::vector<std::byte> &, Args &&...) [Args = <BOOL &>]";
  v15 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v18, &__p, v14);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Open(a2, a3, v14);
  v9 = v14[0];
  if (v14[0])
  {
    v14[0] = 0;
    sub_29A4C9874((a1 + 88), v9);
    v10 = sub_29A4BF9F8(a1);
    v11 = v14[0];
    v14[0] = 0;
    if (v11)
    {
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::~CrateFile(v11);
      operator delete(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v18);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7 != 0, v7);
  }

  return v10;
}

void sub_29A4BD180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a11)
  {
    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::~CrateFile(a11);
    operator delete(v24);
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a22);
  sub_29A0E9CEC(v22 - 80);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateData::StreamsData(pxrInternal__aapl__pxrReserved__::Usd_CrateData *this)
{
  v1 = *(*(this + 6) + 88);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 6712) ^ 1;
  }

  return v1 & 1;
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateData::HasSpec(pxrInternal__aapl__pxrReserved__::Usd_CrateData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = *(this + 6);
  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(a2))
  {
    return v3[4] + 32 * v3[5] != sub_29A4C2C3C(v3, a2);
  }

  return sub_29A4C6BBC(v3, a2);
}

void sub_29A4BD270(uint64_t *a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, _DWORD *a3)
{
  if ((pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(this) & 1) == 0)
  {
    v6 = sub_29A4C2C3C(a1, this);
    v7 = a1[4];
    v8 = a1[5];
    if (v7 + 32 * v8 == v6)
    {
      v13 = "usd/crateData.cpp";
      v14 = "MoveSpec";
      v15 = 323;
      v16 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateDataImpl::MoveSpec(const SdfPath &, const SdfPath &)";
      v17 = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v13, "oldIter != _data.end()", 0))
      {
        return;
      }

      v7 = a1[4];
      v8 = a1[5];
    }

    a1[10] = v7 + 32 * v8;
    v9 = *(v6 + 16);
    v11 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 24), 1u, memory_order_relaxed);
    }

    v12 = *(v6 + 24);
    sub_29A4C6FB8(a1, v6);
    sub_29A4C70D4(a1, a3, &v11);
    if ((v10 & 1) == 0)
    {
      v13 = "usd/crateData.cpp";
      v14 = "MoveSpec";
      v15 = 330;
      v16 = "void pxrInternal__aapl__pxrReserved__::Usd_CrateDataImpl::MoveSpec(const SdfPath &, const SdfPath &)";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v13, "iresult.second", 0);
    }

    sub_29A4BF944(&v11);
  }
}

void sub_29A4BD3AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4BF944(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4BD3CC(pxrInternal__aapl__pxrReserved__::SdfPath *a1, unsigned int *a2)
{
  v3 = a1;
  if (*a2 == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1))
  {
    return 7;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(a2))
  {
    v6 = sub_29A4C2C3C(v3, a2);
    if (*(v3 + 32) + 32 * *(v3 + 40) != v6)
    {
      return *(v6 + 24);
    }

    return 0;
  }

  if (!sub_29A4C6BBC(v3, a2))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v8);
  v4 = sub_29A4BD3CC(v3, &v8);
  if (v4 == 1)
  {
    v5 = 0;
    v3 = 2;
  }

  else if (v4 == 8)
  {
    v5 = 0;
    v3 = 9;
  }

  else
  {
    v5 = 1;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  if (v5)
  {
    return 0;
  }

  return v3;
}

void sub_29A4BD4BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateData::CreateSpec(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, int a3)
{
  v5 = *(a1 + 48);
  if (a3 || (sub_29B2AA430(v9)) && (pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(this) & 1) == 0)
  {
    v8[1] = 0;
    v6 = operator new(0x20uLL);
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *v6 = 0;
    v8[0] = v6;
    *(v6 + 6) = 0;
    atomic_fetch_add_explicit(v6 + 6, 1u, memory_order_relaxed);
    v7 = sub_29A4C70D4(v5, this, v8);
    sub_29A4BF944(v8);
    *(v7 + 24) = a3;
    v5[10] = v7;
  }
}

void sub_29A4BD570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4BF944(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateData::_VisitSpecs(uint64_t this, pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor *a2)
{
  v3 = this;
  v12[0] = *(this + 48);
  v12[1] = this;
  v12[2] = a2;
  v5 = *(v12[0] + 32);
  v4 = *(v12[0] + 40);
  v6 = 0;
  if (v4)
  {
    v7 = (v5 + 4);
    while (1)
    {
      v8 = *v7;
      v7 += 16;
      if (v8 != -1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        return this;
      }
    }
  }

  if (v6 != v4)
  {
    v9 = v5 + 32 * v4;
    v10 = v5 + 32 * v6;
    do
    {
      this = (*(*a2 + 16))(a2, v3, v10 + 8);
      if (!this)
      {
        break;
      }

      this = sub_29A4C7188(v12, v10 + 8, *(v10 + 24));
      if (!this)
      {
        break;
      }

      v11 = v10 + 32;
      do
      {
        v10 = v11;
        if (*(v11 - 26))
        {
          break;
        }

        v11 += 32;
      }

      while (*(v10 + 4) == -1);
    }

    while (v10 != v9);
  }

  return this;
}

BOOL sub_29A4BD67C(void *a1, unsigned int *a2, void *a3, uint64_t a4, _DWORD *a5)
{
  v26[2] = *MEMORY[0x29EDCA608];
  v10 = sub_29A4C2C3C(a1, a2);
  if (a1[4] + 32 * a1[5] == v10)
  {
    if (a5)
    {
      *a5 = 0;
    }
  }

  else
  {
    if (a5)
    {
      *a5 = *(v10 + 24);
    }

    v11 = *(v10 + 16);
    v12 = *v11;
    v13 = v11[1] - *v11;
    if (v13)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
      v15 = (v12 + 8);
      while ((*(v15 - 1) ^ *a3) >= 8)
      {
        v15 += 3;
        if (!--v14)
        {
          goto LABEL_11;
        }
      }

      if (a4)
      {
        if (sub_29A4C7A40(v15))
        {
          v20 = a1[11];
          v21 = v15[1];
          if ((v21 & 4) != 0)
          {
            v15 = (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(v15);
          }

          v22 = *v15;
          v26[1] = 0;
          pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_UnpackValue(v20, v22, v26);
        }

        else
        {
          sub_29A186EF4(v26, v15);
        }

        v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
        if (!v23)
        {
          v23 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
        }

        if ((*v23 ^ *a3) > 7)
        {
          v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          if (!v24)
          {
            v24 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }

          if ((*(v24 + 31) ^ *a3) > 7)
          {
            goto LABEL_35;
          }

          sub_29A4C77A4(v26, v25);
        }

        else
        {
          sub_29A4C7564(a1, v26, v25);
        }

        sub_29A18606C(v26, v25);
        sub_29A186B14(v25);
LABEL_35:
        v18 = (*(*a4 + 8))(a4, v26);
        sub_29A186B14(v26);
        return v18;
      }

      return 1;
    }
  }

LABEL_11:
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v16)
  {
    v16 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  if ((*v16 ^ *a3) >= 8)
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v17)
    {
      v17 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*(v17 + 6) ^ *a3) > 7)
    {
      return 0;
    }
  }

  return sub_29A4C791C(a1, a2, a3, a4);
}

void sub_29A4BD954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A4BD988(void *a1, unsigned int *a2, void *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, _DWORD *a5)
{
  v24[2] = *MEMORY[0x29EDCA608];
  v10 = sub_29A4C2C3C(a1, a2);
  if (a1[4] + 32 * a1[5] == v10)
  {
    if (a5)
    {
      *a5 = 0;
    }
  }

  else
  {
    if (a5)
    {
      *a5 = *(v10 + 24);
    }

    v11 = *(v10 + 16);
    v12 = *v11;
    v13 = v11[1] - *v11;
    if (v13)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
      v15 = (v12 + 8);
      while ((*(v15 - 1) ^ *a3) >= 8)
      {
        v15 += 3;
        if (!--v14)
        {
          goto LABEL_11;
        }
      }

      if (!a4)
      {
        return 1;
      }

      if (sub_29A4C7A40(v15))
      {
        v19 = a1[11];
        v20 = v15[1];
        if ((v20 & 4) != 0)
        {
          v15 = (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(v15);
        }

        v21 = *v15;
        v24[1] = 0;
        pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_UnpackValue(v19, v21, v24);
      }

      else
      {
        sub_29A186EF4(v24, v15);
      }

      sub_29A18606C(a4, v24);
      sub_29A186B14(v24);
      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
      if (!v22)
      {
        v22 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
      }

      if ((*v22 ^ *a3) > 7)
      {
        v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        if (!v23)
        {
          v23 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        }

        if ((*(v23 + 31) ^ *a3) > 7)
        {
          return 1;
        }

        sub_29A4C77A4(a4, v24);
      }

      else
      {
        sub_29A4C7564(a1, a4, v24);
      }

      sub_29A18606C(a4, v24);
      sub_29A186B14(v24);
      return 1;
    }
  }

LABEL_11:
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v16)
  {
    v16 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  if ((*v16 ^ *a3) < 8)
  {
    goto LABEL_34;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v17)
  {
    v17 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  if ((*(v17 + 6) ^ *a3) > 7)
  {
    return 0;
  }

LABEL_34:

  return sub_29A4C7D60(a1, a2, a3, a4);
}

void sub_29A4BDC34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateData::Get@<W0>(pxrInternal__aapl__pxrReserved__::Usd_CrateData *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, pxrInternal__aapl__pxrReserved__::VtValue *a4@<X8>)
{
  v4 = *(this + 6);
  *(a4 + 1) = 0;
  return sub_29A4BD988(v4, a2, a3, a4, 0);
}

void *pxrInternal__aapl__pxrReserved__::Usd_CrateData::GetTypeid(pxrInternal__aapl__pxrReserved__::Usd_CrateData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v4 = *(this + 6);
  v5 = sub_29A4C2C3C(v4, a2);
  if (v4[4] + 32 * v4[5] == v5)
  {
    return MEMORY[0x29EDC9500];
  }

  v6 = *(v5 + 16);
  v7 = *v6;
  v8 = v6[1] - *v6;
  if (!v8)
  {
    return MEMORY[0x29EDC9500];
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
  v10 = *a3;
  for (i = (v7 + 8); (*(i - 1) ^ v10) > 7; i += 3)
  {
    if (!--v9)
    {
      return MEMORY[0x29EDC9500];
    }
  }

  if (sub_29A4C7A40(i))
  {
    v13 = v4[11];
    v14 = i[1];
    if ((v14 & 4) != 0)
    {
      i = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(i);
    }

    v15 = *i;

    return pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::GetTypeid(v13, v15);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(i);
  }
}

uint64_t sub_29A4BDDAC@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = sub_29A4C2C3C(a1, a2);
  if (a1[4] + 32 * a1[5] != result)
  {
    v7 = *(result + 16);
    sub_29A3275DC(a3, 0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 3));
    v8 = v7[1] - *v7;
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      do
      {
        sub_29A166F2C((*a3 + v9), (*v7 + v10));
        v10 += 24;
        v9 += 8;
        --v11;
      }

      while (v11);
    }

    result = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(a2);
    if (result)
    {
      v14 = 0;
      sub_29A4C6DEC(v15, a2, a1, &v14);
      if (v14 == 1)
      {
        v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
        if (!v13)
        {
          v13 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
        }
      }

      else
      {
        if (v14 != 8)
        {
          return sub_29A186B14(v15);
        }

        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
        if (!v12)
        {
          v12 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
        }

        v13 = (v12 + 48);
      }

      sub_29A1D8028(a3, v13);
      return sub_29A186B14(v15);
    }
  }

  return result;
}

void sub_29A4BDF34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29A4BDF6C(void *a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t *a3, uint64_t a4)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!*(a4 + 8))
  {

    sub_29A4BE580(a1, this, a3);
    return;
  }

  v7 = a4;
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(this))
  {
    v27[0] = "usd/crateData.cpp";
    v27[1] = "Set";
    v27[2] = 575;
    v27[3] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateDataImpl::Set(const SdfPath &, const TfToken &, const VtValue &)";
    v28 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
    v9 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v9)
    {
      v10 = (v9 + 16);
      if (*(v9 + 39) < 0)
      {
        v10 = *v10;
      }
    }

    else
    {
      v10 = "";
    }

    sub_29A1F87E8(v7);
    if (v31 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v27, 1, "Cannot set fields on relationship target or attribute connection specs: <%s>:%s = %s", Text, v10, v16);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

  v11 = a1[10];
  if (v11 == a1[4] + 32 * a1[5] || *(v11 + 8) != *this)
  {
    v12 = sub_29A4C2C3C(a1, this);
    if (a1[4] + 32 * a1[5] == v12 && (sub_29B2AA47C(v27, this, a3) & 1) == 0)
    {
      return;
    }

    a1[10] = v12;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v13)
  {
    v13 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  if ((*v13 ^ *a3) >= 8)
  {
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v14)
    {
      v14 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*(v14 + 6) ^ *a3) >= 8)
    {
      __p[1] = 0;
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
      if (!v15)
      {
        v15 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
      }

      if ((*v15 ^ *a3) > 7)
      {
        v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        if (!v17)
        {
          v17 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        }

        if ((*(v17 + 31) ^ *a3) > 7)
        {
          goto LABEL_31;
        }

        sub_29A4C8008(v7, v29);
      }

      else
      {
        sub_29A4C7E84(v7, v29);
      }

      v7 = __p;
      sub_29A18606C(__p, v29);
      sub_29A186B14(v29);
LABEL_31:
      v18 = a1[10];
      v20 = *(v18 + 16);
      v19 = (v18 + 16);
      v21 = atomic_load((v20 + 24));
      if (v21 != 1)
      {
        sub_29A4C8D44(v19);
      }

      v22 = *v19;
      v23 = v22[1];
      if (v23 == *v22)
      {
LABEL_37:
        if (v23 >= v22[2])
        {
          v26 = sub_29A4C8E18(v22, a3, v7);
        }

        else
        {
          sub_29A4C8F50(v22[1], a3, v7);
          v26 = (v23 + 3);
          v22[1] = v23 + 3;
        }

        v22[1] = v26;
      }

      else
      {
        v24 = 0xAAAAAAAAAAAAAAABLL * (v23 - *v22);
        v25 = *v22 + 1;
        while ((*a3 ^ *(v25 - 1)) > 7)
        {
          v25 += 3;
          if (!--v24)
          {
            goto LABEL_37;
          }
        }

        sub_29A1854E8(v25, v7);
      }

      sub_29A186B14(__p);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateData::Set(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t *a3, uint64_t (***a4)(void, _BYTE *))
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 48);
  v13 = 0;
  if (((**a4)(a4, v12) & 1) == 0)
  {
    v9[0] = "usd/crateData.cpp";
    v9[1] = "Set";
    v9[2] = 630;
    v9[3] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateDataImpl::Set(const SdfPath &, const TfToken &, const SdfAbstractDataConstValue &)";
    v10 = 0;
    v11 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v9, "Failed axiom: ' %s '", v7, "value.GetValue(&val)");
  }

  sub_29A4BDF6C(v6, a2, a3, v12);
  return sub_29A186B14(v12);
}

void sub_29A4BE45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateData::Erase(pxrInternal__aapl__pxrReserved__::Usd_CrateData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v4 = *(this + 6);
  result = sub_29A4C2C3C(v4, a2);
  if (v4[4] + 32 * v4[5] != result)
  {
    v7 = (result + 16);
    v6 = *(result + 16);
    v8 = *v6;
    v9 = *(v6 + 8) - *v6;
    if (v9)
    {
      v10 = 0;
      v11 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      while ((*v8 ^ *a3) > 7)
      {
        v10 -= 24;
        v8 += 3;
        if (!--v11)
        {
          return result;
        }
      }

      v12 = atomic_load((v6 + 24));
      if (v12 != 1)
      {
        sub_29A4C8D44((result + 16));
      }

      v13 = *v7;
      v14 = v13[1];
      v15 = (*v13 - v10);
      if (v15 + 3 != v14)
      {
        do
        {
          v16 = v15 + 3;
          sub_29A322194(v15, v15 + 3);
          v17 = v15 + 6;
          v15 += 3;
        }

        while (v17 != v14);
        v15 = v16;
      }

      return sub_29A3218CC(v13, v15);
    }
  }

  return result;
}

uint64_t sub_29A4BE580(void *a1, unsigned int *a2, void *a3)
{
  result = sub_29A4C2C3C(a1, a2);
  if (a1[4] + 32 * a1[5] != result)
  {
    v7 = (result + 16);
    v6 = *(result + 16);
    v8 = *v6;
    v9 = *(v6 + 8) - *v6;
    if (v9)
    {
      v10 = 0;
      v11 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      while ((*a3 ^ *v8) > 7)
      {
        v10 -= 24;
        v8 += 3;
        if (!--v11)
        {
          return result;
        }
      }

      v12 = atomic_load((v6 + 24));
      if (v12 != 1)
      {
        sub_29A4C8D44((result + 16));
      }

      v13 = *v7;
      v14 = v13[1];
      v15 = (*v13 - v10);
      if (v15 + 3 != v14)
      {
        do
        {
          v16 = v15 + 3;
          sub_29A322194(v15, v15 + 3);
          v17 = v15 + 6;
          v15 += 3;
        }

        while (v17 != v14);
        v15 = v16;
      }

      return sub_29A3218CC(v13, v15);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateData::ListAllTimeSamples(pxrInternal__aapl__pxrReserved__::Usd_CrateData *this@<X0>, uint64_t a2@<X8>)
{
  sub_29A4C8FC8(*(this + 6), &__p);
  sub_29A4C9360(a2, __p, v4);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_29A4BE6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateData::GetBracketingTimeSamples(pxrInternal__aapl__pxrReserved__::Usd_CrateData *this, double a2, double *a3, double *a4)
{
  sub_29A4C8FC8(*(this + 6), &v18);
  v7 = v18;
  if (v18 == v19)
  {
    v16 = 0;
    if (!v18)
    {
      return v16;
    }

    goto LABEL_15;
  }

  v8 = *v18;
  if (*v18 >= a2 || (v8 = *(v19 - 1), v8 <= a2))
  {
    *a4 = v8;
    goto LABEL_13;
  }

  v9 = v19 - v18;
  v10 = v18;
  do
  {
    v11 = v9 >> 1;
    v12 = &v10[v9 >> 1];
    v14 = *v12;
    v13 = v12 + 1;
    v9 += ~(v9 >> 1);
    if (v14 < a2)
    {
      v10 = v13;
    }

    else
    {
      v9 = v11;
    }
  }

  while (v9);
  v15 = *v10;
  *a4 = *v10;
  *a3 = v15;
  if (v15 != a2 && v10 - v7 >= 1)
  {
    v8 = *(v10 - 1);
LABEL_13:
    *a3 = v8;
  }

  v16 = 1;
  if (v7)
  {
LABEL_15:
    v19 = v7;
    operator delete(v7);
  }

  return v16;
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateData::GetBracketingTimeSamplesForPath(pxrInternal__aapl__pxrReserved__::Usd_CrateData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3, double *a4, double *a5)
{
  v8 = sub_29A4C90F4(*(this + 6), a2);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 != v10)
  {
    v11 = *v9;
    if (*v9 >= a3 || (v11 = *(v10 - 8), v11 <= a3))
    {
      *a5 = v11;
    }

    else
    {
      v12 = (v10 - v9) >> 3;
      v13 = *v8;
      do
      {
        v14 = v12 >> 1;
        v15 = &v13[v12 >> 1];
        v17 = *v15;
        v16 = v15 + 1;
        v12 += ~(v12 >> 1);
        if (v17 < a3)
        {
          v13 = v16;
        }

        else
        {
          v12 = v14;
        }
      }

      while (v12);
      v18 = *v13;
      *a5 = *v13;
      *a4 = v18;
      if (v18 == a3 || v13 - v9 < 1)
      {
        return 1;
      }

      v11 = *(v13 - 1);
    }

    *a4 = v11;
    return 1;
  }

  return 0;
}

uint64_t sub_29A4BE940(void *a1, unsigned int *a2, void *a3, double a4)
{
  v34[2] = *MEMORY[0x29EDCA608];
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  if (!v8)
  {
    v8 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  }

  v9 = sub_29A4C2C3C(a1, a2);
  if (a1[4] + 32 * a1[5] == v9)
  {
    return 0;
  }

  v10 = *(v9 + 16);
  v11 = *v10;
  v12 = v10[1] - *v10;
  if (!v12)
  {
    return 0;
  }

  v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
  v14 = *v8;
  for (i = (v11 + 8); (*(i - 1) ^ v14) > 7; i = (i + 24))
  {
    if (!--v13)
    {
      return 0;
    }
  }

  result = sub_29A4C7ACC(i);
  if (result)
  {
    v17 = *(i + 1);
    if ((v17 & 4) != 0)
    {
      v18 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(i);
    }

    else
    {
      v18 = *i;
    }

    v19 = v18[1];
    v20 = *v19;
    v21 = v19[1];
    if (v21 == v20)
    {
      v23 = v21;
    }

    else
    {
      v22 = v21 - v20;
      v23 = v20;
      do
      {
        v24 = v22 >> 1;
        v25 = &v23[v22 >> 1];
        v27 = *v25;
        v26 = v25 + 1;
        v22 += ~(v22 >> 1);
        if (v27 < a4)
        {
          v23 = v26;
        }

        else
        {
          v22 = v24;
        }
      }

      while (v22);
    }

    if (v21 != v23 && *v23 == a4)
    {
      if (a3)
      {
        v28 = v23 - v20;
        if (*v18)
        {
          pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetTimeSampleValueImpl(a1[11], v18, v28, &v32);
        }

        else
        {
          sub_29A186EF4(&v32, (v18[2] + 16 * v28));
        }

        if (sub_29A4C7A40(&v32))
        {
          v29 = a1[11];
          if ((v33 & 4) != 0)
          {
            v30 = (*((v33 & 0xFFFFFFFFFFFFFFF8) + 168))(&v32);
          }

          else
          {
            v30 = &v32;
          }

          v31 = *v30;
          v34[1] = 0;
          pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_UnpackValue(v29, v31, v34);
        }

        else
        {
          sub_29A186EF4(v34, &v32);
        }

        sub_29A18606C(a3, v34);
        sub_29A186B14(v34);
        sub_29A186B14(&v32);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

void sub_29A4BEB70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_29A186B14(va1);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateData::QueryTimeSample(uint64_t a1, unsigned int *a2, uint64_t (***a3)(void, void *), double a4)
{
  v8[2] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 48);
  if (a3)
  {
    v8[1] = 0;
    if (sub_29A4BE940(v4, a2, v8, a4))
    {
      v6 = (**a3)(a3, v8);
    }

    else
    {
      v6 = 0;
    }

    sub_29A186B14(v8);
    return v6;
  }

  else
  {

    return sub_29A4BE940(v4, a2, 0, a4);
  }
}

void sub_29A4BEC88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A4BECA4(void *a1, unsigned int *a2, char *a3, double a4)
{
  v53[2] = *MEMORY[0x29EDCA608];
  v52 = a4;
  if (*(a3 + 1))
  {
    v48 = 0;
    v7 = operator new(0x20uLL);
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = 0;
    *v49 = v7;
    *(v7 + 6) = 0;
    atomic_fetch_add_explicit(v7 + 6, 1u, memory_order_relaxed);
    v50 = 0u;
    v51 = 0u;
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
    if (!v8)
    {
      v8 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
    }

    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[10];
    if (v11 == v9 + 32 * v10 || *(v11 + 8) != *a2)
    {
      v11 = sub_29A4C2C3C(a1, a2);
      v9 = a1[4];
      v10 = a1[5];
    }

    if (v9 + 32 * v10 == v11 || (v14 = *(v11 + 16), v13 = (v11 + 16), v12 = v14, v15 = *v14, (v16 = *(v14 + 8) - *v14) == 0))
    {
LABEL_12:
      v20 = 0;
      v21 = 1;
    }

    else
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
      v18 = *v8;
      v19 = -8;
      while ((*v15 ^ v18) > 7)
      {
        v19 -= 24;
        v15 += 3;
        if (!--v17)
        {
          goto LABEL_12;
        }
      }

      v40 = atomic_load((v12 + 24));
      if (v40 != 1)
      {
        sub_29A4C8D44(v13);
      }

      v20 = &(**v13)[v19 / 0xFFFFFFFFFFFFFFF8];
      if (sub_29A4C7ACC(v20))
      {
        v41 = sub_29A4C8D08(v20);
        v21 = 0;
        v42 = *v41;
        v43 = *(v41 + 8);
        *v41 = v48;
        v44 = *v49;
        v48 = v42;
        *v49 = v43;
        *(v41 + 8) = v44;
        v45 = *(v41 + 16);
        *(v41 + 16) = v50;
        v46 = *(v41 + 32);
        v47 = *(v41 + 40);
        *(v41 + 32) = v51;
        v50 = v45;
        *&v51 = v46;
        *(&v51 + 1) = v47;
      }

      else
      {
        v21 = 0;
      }
    }

    v23 = **v49;
    v22 = *(*v49 + 8);
    if (v22 == **v49)
    {
      v25 = *(*v49 + 8);
    }

    else
    {
      v24 = (v22 - **v49) >> 3;
      v25 = **v49;
      do
      {
        v26 = v24 >> 1;
        v27 = &v25[v24 >> 1];
        v29 = *v27;
        v28 = v27 + 1;
        v24 += ~(v24 >> 1);
        if (v29 < v52)
        {
          v25 = v28;
        }

        else
        {
          v24 = v26;
        }
      }

      while (v24);
    }

    if (v22 != v25 && *v25 == v52)
    {
      if (v48)
      {
        pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_MakeTimeSampleValuesMutableImpl(a1[11], &v48);
        v23 = **v49;
      }

      sub_29A1854E8((v50 + 2 * (v25 - v23)), a3);
    }

    else
    {
      v30 = a1[11];
      v31 = atomic_load((*v49 + 24));
      if (v31 != 1)
      {
        sub_29A4C95BC(v49);
      }

      if (v48)
      {
        pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_MakeTimeSampleValuesMutableImpl(v30, &v48);
      }

      sub_29A1BFD8C(*v49, v25 + **v49 - v23, &v52);
      sub_29A4C9468(&v50, v50 + 2 * (v25 - v23), a3);
    }

    if (v21)
    {
      v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
      if (!v32)
      {
        v32 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
      }

      sub_29A4C8300(&v48, v53);
      sub_29A4BDF6C(a1, a2, v32, v53);
      sub_29A186B14(v53);
    }

    else
    {
      v33 = sub_29A4C8D08(v20);
      v34 = *v33;
      v35 = *(v33 + 8);
      *v33 = v48;
      v36 = *v49;
      v48 = v34;
      *v49 = v35;
      *(v33 + 8) = v36;
      v37 = *(v33 + 16);
      *(v33 + 16) = v50;
      v38 = *(v33 + 32);
      v39 = *(v33 + 40);
      *(v33 + 32) = v51;
      v50 = v37;
      *&v51 = v38;
      *(&v51 + 1) = v39;
    }

    v53[0] = &v50;
    sub_29A1D0D38(v53);
    sub_29A22B614(v49);
  }

  else
  {

    sub_29A4BF0E8(a1, a2, a4);
  }
}

void sub_29A4BF0E8(void *a1, unsigned int *a2, double a3)
{
  v70 = 0;
  v6 = operator new(0x20uLL);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  v71 = v6;
  *(v6 + 6) = 0;
  atomic_fetch_add_explicit(v6 + 6, 1u, memory_order_relaxed);
  v73 = 0u;
  v72 = 0u;
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  if (!v7)
  {
    v7 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  }

  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[10];
  if (v10 == v8 + 32 * v9 || *(v10 + 8) != *a2)
  {
    v10 = sub_29A4C2C3C(a1, a2);
    v8 = a1[4];
    v9 = a1[5];
  }

  if (v8 + 32 * v9 != v10)
  {
    v13 = *(v10 + 16);
    v12 = (v10 + 16);
    v11 = v13;
    v14 = *v13;
    v15 = *(v13 + 8) - *v13;
    if (v15)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3);
      v17 = *v7;
      v18 = -8;
      while ((*v14 ^ v17) > 7)
      {
        v18 -= 24;
        v14 += 3;
        if (!--v16)
        {
          goto LABEL_46;
        }
      }

      v19 = atomic_load((v11 + 24));
      if (v19 != 1)
      {
        sub_29A4C8D44(v12);
      }

      v20 = &(**v12)[v18 / 0xFFFFFFFFFFFFFFF8];
      if (sub_29A4C7ACC(v20))
      {
        v21 = sub_29A4C8D08(v20);
        v22 = v71;
        v23 = *v21;
        v71 = *(v21 + 8);
        *v21 = v70;
        *(v21 + 8) = v22;
        v24 = *(v21 + 16);
        v25 = v71;
        *(v21 + 16) = v72;
        v26 = *(&v73 + 1);
        *(v21 + 24) = *(&v72 + 1);
        v27 = *(v21 + 32);
        v28 = *(v21 + 40);
        *(v21 + 32) = v73;
        *(v21 + 40) = v26;
        v70 = v23;
        v72 = v24;
        *&v73 = v27;
        *(&v73 + 1) = v28;
        v30 = *v25;
        v29 = *(v25 + 1);
        v31 = v29 - *v25;
        if (v29 == *v25)
        {
          v33 = *(v25 + 1);
        }

        else
        {
          v32 = v31 >> 3;
          v33 = *v25;
          do
          {
            v34 = v32 >> 1;
            v35 = &v33[v32 >> 1];
            v37 = *v35;
            v36 = v35 + 1;
            v32 += ~(v32 >> 1);
            if (v37 < a3)
            {
              v33 = v36;
            }

            else
            {
              v32 = v34;
            }
          }

          while (v32);
        }

        if (v29 != v33 && *v33 == a3)
        {
          if (v31 == 8)
          {
            v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
            if (!v38)
            {
              v38 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
            }

            v39 = sub_29A4C2C3C(a1, a2);
            if (a1[4] + 32 * a1[5] != v39)
            {
              v41 = (v39 + 16);
              v40 = *(v39 + 16);
              v42 = *v40;
              v43 = *(v40 + 8) - *v40;
              if (v43)
              {
                v44 = 0;
                v45 = 0xAAAAAAAAAAAAAAABLL * (v43 >> 3);
                while ((*v42 ^ *v38) > 7)
                {
                  v44 -= 24;
                  v42 += 3;
                  if (!--v45)
                  {
                    goto LABEL_46;
                  }
                }

                v64 = atomic_load((v40 + 24));
                if (v64 != 1)
                {
                  sub_29A4C8D44(v41);
                }

                v65 = *v41;
                v66 = (*v41)[1];
                v67 = &(**v41)[v44 / 0xFFFFFFFFFFFFFFF8];
                if (v67 + 3 != v66)
                {
                  do
                  {
                    v68 = v67 + 3;
                    sub_29A322194(v67, v67 + 3);
                    v69 = v67 + 6;
                    v67 += 3;
                  }

                  while (v69 != v66);
                  v67 = v68;
                }

                sub_29A3218CC(v65, v67);
              }
            }
          }

          else
          {
            v46 = a1[11];
            v47 = atomic_load(v25 + 6);
            if (v47 != 1)
            {
              sub_29A4C95BC(&v71);
            }

            if (v70)
            {
              pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_MakeTimeSampleValuesMutableImpl(v46, &v70);
            }

            v48 = v33 - v30;
            v49 = v71;
            v50 = *(v71 + 1);
            v51 = (*v71 + v48);
            v52 = v50 - (v51 + 8);
            if (v50 != v51 + 8)
            {
              memmove((*v71 + v48), v51 + 8, v50 - (v51 + 8));
            }

            *(v49 + 1) = &v51[v52];
            v53 = *(&v72 + 1);
            v54 = (v72 + 2 * v48);
            if (v54 + 2 != *(&v72 + 1))
            {
              do
              {
                v55 = v54 + 2;
                sub_29A18606C(v54, v54 + 2);
                v56 = v54 + 4;
                v54 += 2;
              }

              while (v56 != v53);
              v53 = *(&v72 + 1);
              v54 = v55;
            }

            while (v53 != v54)
            {
              v53 -= 16;
              sub_29A186B14(v53);
            }

            *(&v72 + 1) = v54;
            v57 = sub_29A4C8D08(v20);
            v58 = v71;
            v59 = *v57;
            v71 = *(v57 + 8);
            *v57 = v70;
            *(v57 + 8) = v58;
            v60 = *(v57 + 16);
            v61 = *(&v73 + 1);
            *(v57 + 16) = v72;
            v62 = *(v57 + 32);
            v63 = *(v57 + 40);
            *(v57 + 32) = v73;
            *(v57 + 40) = v61;
            v70 = v59;
            v72 = v60;
            *&v73 = v62;
            *(&v73 + 1) = v63;
          }
        }
      }
    }
  }

LABEL_46:
  v74 = &v72;
  sub_29A1D0D38(&v74);
  sub_29A22B614(&v71);
}

void sub_29A4BF4FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4C8344(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4BF518(uint64_t a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2)
{
  v4 = sub_29A4BF598(a1, 0, 0.0, 0.5);
  v4[10] = v4[4] + 32 * v4[5];
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CreateNew(a2, v4 + 11);
  return a1;
}

void sub_29A4BF57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 8);
  sub_29A4BF7B8(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4BF598(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A4BF730(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A4BF6F8();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >> 59)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 26) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A4BF6D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4BF7B8(va);
  _Unwind_Resume(a1);
}

int *sub_29A4BF6F8()
{
  if ((atomic_load_explicit(&qword_2A14F7F50, memory_order_acquire) & 1) == 0)
  {
    sub_29B2AA524();
  }

  return &dword_2A14F7F30;
}

void *sub_29A4BF730(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A15A71C(a1, a2);
    v4 = a1[1];
    v5 = v4 + 32 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 32;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

void sub_29A4BF7B8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A4BF80C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29A4BF80C(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 32;
    do
    {
      if (*(v4 + 4) != -1)
      {
        result = sub_29A4BF8B4(v4);
        *(v4 + 4) = -1;
      }

      v5 = v4 == v3;
      v4 -= 32;
    }

    while (!v5);
  }

  v1[1] = v3;
  return result;
}

uint64_t sub_29A4BF874(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    sub_29A4BF8B4(a1);
    *(a1 + 4) = -1;
  }

  return a1;
}

_DWORD *sub_29A4BF8B4(uint64_t a1)
{
  sub_29A4BF944((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));

  return sub_29A1DE3A4((a1 + 8));
}

_DWORD *sub_29A4BF8FC(uint64_t a1)
{
  sub_29A4BF944((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void sub_29A4BF944(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = v1;
      sub_29A321878(&v2);
      operator delete(v1);
    }
  }
}

void sub_29A4BF99C(int *a1, int *a2, uint64_t a3, void *a4)
{
  if (a2 > a1)
  {
    v6 = (a2 - a1) >> 3;
    if (v6 > 499)
    {

      sub_29A4C0118(a1, a2, a3, a4);
    }

    else
    {
      *&v7[1] = v4;
      v8 = v5;
      sub_29A4C0268(a1, a2, v7, 126 - 2 * __clz(v6), 1);
    }
  }
}

uint64_t sub_29A4BF9F8(uint64_t *a1)
{
  v52[9] = *MEMORY[0x29EDCA608];
  sub_29A4BF598(&v49, 0, 0.0, 0.5);
  sub_29A10A4B4(a1, &v49);
  *&v41 = &v50;
  sub_29A4BF7B8(&v41);
  a1[10] = a1[4] + 32 * a1[5];
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v48);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(&v49);
  __p[0] = 0;
  __p[1] = 0;
  v47 = 0;
  v44[1] = 0;
  v45 = 0;
  v44[0] = 0;
  v2 = a1[11];
  v3 = *(v2 + 16);
  v4 = *v2;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v5 = __p[0];
  *__p = v4;
  v47 = v3;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(v2 + 64);
  v7 = v44[0];
  v8 = *(v2 + 48);
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *v44 = v8;
  v45 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v9 = *(v2 + 72);
  v10 = *(v2 + 80);
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  v11 = __p[0];
  v12 = a1[11];
  if (__p[0] == __p[1])
  {
LABEL_8:
    FileVersion = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::GetFileVersion(v12);
    if (!(FileVersion & 0xFF00 | (FileVersion << 16) & 0xFFFF00))
    {
      v14 = sub_29A4C2CC0(__p[0], __p[1], a1);
      if (v14 != __p[1])
      {
        __p[1] = v14;
      }
    }

    v38 = 0;
    v39 = 0;
    v40 = 0;
    *&v41 = 0;
    *(&v41 + 1) = v51;
    v15 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v41, 0x28uLL);
    *(v15 - 11) = 1;
    *v15 = &unk_2A20517A8;
    v15[1] = a1;
    v15[2] = __p;
    v15[3] = &v38;
    v15[4] = v52;
    (***(v15 - 5))();
    v41 = 0u;
    v42 = 0u;
    v43 = 1065353216;
    v37 = 0;
    if (v9 != v10)
    {
      v16 = v9;
      while (*v16 != -1)
      {
        v16 += 4;
        if (v16 == v10)
        {
          v16 = v10;
          break;
        }
      }

      if (v9 != v10)
      {
        v17 = v9;
        while (1)
        {
          v18 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
          v19 = (v18 & 1) != 0 ? pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("field data", 0) : 0;
          v35 = v19;
          v36 = v19 != 0;
          v20 = v9;
          v34 = (v17 - v9) >> 2;
          v29 = &v34;
          v21 = sub_29A4C3788(&v41, &v34, &unk_29B4D6118, &v29);
          v29 = 0;
          v30 = v51;
          v22 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v29, 0x40uLL);
          *(v22 - 11) = 1;
          *v22 = &unk_2A20517F0;
          v22[1] = a1;
          v22[2] = v17;
          v22[3] = v16;
          v22[4] = v44;
          v22[5] = v21 + 3;
          v22[6] = &v37;
          v22[7] = v52;
          (***(v22 - 5))();
          if (v37 == 1)
          {
            break;
          }

          v9 = v20;
          if (v35)
          {
            pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v36, v35);
          }

          if (v16 != v10)
          {
            v17 = v16 + 4;
            v16 = v10;
            if (v17 != v10)
            {
              v16 = v17;
              while (*v16 != -1)
              {
                v16 += 4;
                if (v16 == v10)
                {
                  v16 = v10;
                  break;
                }
              }
            }

            if (v10 != v17)
            {
              continue;
            }
          }

          goto LABEL_31;
        }

        v9 = v20;
        pxrInternal__aapl__pxrReserved__::WorkDispatcher::Cancel(&v49);
        sub_29A0E9CEC(&v35);
      }
    }

LABEL_31:
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(&v49);
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
    if (!v23)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
    }

    v24 = v48;
    v25 = atomic_load((v23 + 144));
    if (v24 >= v25 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v48, v23))
    {
      if (v37 != 1)
      {
        LOBYTE(v35) = 1;
        v29 = 0;
        v30 = v51;
        v26 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v29, 0x38uLL);
        *(v26 - 11) = 1;
        *v26 = &unk_2A2051900;
        v26[1] = a1;
        v26[2] = __p;
        v26[3] = &v38;
        v26[4] = &v41;
        v26[5] = &v35;
        v26[6] = v52;
        (***(v26 - 5))();
        pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(&v49);
        v27 = atomic_load(&v35);
        if (v27)
        {
          a1[10] = a1[4] + 32 * a1[5];
        }

        else
        {
          v29 = "usd/crateData.cpp";
          v30 = "_PopulateFromCrateFile";
          v31 = 958;
          v32 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateDataImpl::_PopulateFromCrateFile()";
          v33 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v29, 3, "CrateFile specs are corrupted, contains invalid field data.");
        }

LABEL_43:
        sub_29A4C4AA8(&v41);
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        goto LABEL_45;
      }

      v29 = "usd/crateData.cpp";
      v30 = "_PopulateFromCrateFile";
      v31 = 929;
      v32 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateDataImpl::_PopulateFromCrateFile()";
      v33 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v29, 3, "CrateFile specs are corrupted, contain field data out of bounds");
    }

    v27 = 0;
    goto LABEL_43;
  }

  while ((*(v12 + 13) - *(v12 + 12)) >> 3 > *v11)
  {
    v11 += 3;
    if (v11 == __p[1])
    {
      goto LABEL_8;
    }
  }

  *&v41 = "usd/crateData.cpp";
  *(&v41 + 1) = "_PopulateFromCrateFile";
  *&v42 = 814;
  *(&v42 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateDataImpl::_PopulateFromCrateFile()";
  LOBYTE(v43) = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v41, 3, "CrateFile specs are corrupted, contain pathIndices out of bounds");
  v27 = 0;
LABEL_45:
  if (v9)
  {
    operator delete(v9);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&v49);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v48);
  return v27 & 1;
}

void sub_29A4C0048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36)
{
  sub_29A4C4AA8(&a21);
  if (__p)
  {
    operator delete(__p);
  }

  if (v36)
  {
    operator delete(v36);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  if (a31)
  {
    a32 = a31;
    operator delete(a31);
  }

  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&a36);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&a34);
  _Unwind_Resume(a1);
}

void sub_29A4C0118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v14[0] = 1;
  v15 = 65539;
  v16 = 54;
  tbb::task_group_context::init(v14, a2, a3, a4);
  v7 = (a1 + 8);
  v8 = a1;
  while ((sub_29A4C0658(a3, v7, v8) & 1) == 0)
  {
    v8 = (v8 + 8);
    v7 = (v7 + 8);
    if (v8 == (a1 + 72))
    {
      *&v12 = a2;
      *(&v12 + 1) = a1 + 80;
      v13 = 1;
      v11 = a3;
      sub_29A4C18E4(&v12, &v11, &v10, v14);
      if (!tbb::task_group_context::is_group_execution_cancelled(v14))
      {
        goto LABEL_6;
      }

      break;
    }
  }

  *&v12 = a3;
  *(&v12 + 1) = (a2 - a1) >> 3;
  v13 = a1;
  sub_29A4C20CC(&v12, &v11, &v10, v9);
LABEL_6:
  tbb::task_group_context::~task_group_context(v14);
}

void sub_29A4C0240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

int *sub_29A4C0268(int *result, int *a2, int a3, uint64_t a4, char a5)
{
  v12 = a2 - 6;
  v13 = a2 - 4;
  v8 = result;
  v9 = (a2 - result) >> 3;
  if (v9 > 2)
  {
    switch(v9)
    {
      case 3uLL:

        return sub_29A4C07A8(result, result + 2, a2 - 2, a3);
      case 4uLL:

        return sub_29A4C08B0(result, result + 2, result + 4, a2 - 2, a3);
      case 5uLL:

        return sub_29A4C099C(result, result + 2, result + 4, result + 6, a2 - 2, a3);
    }
  }

  else
  {
    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      result = sub_29A4C0658(a3, (a2 - 2), result);
      if (result)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v8, a2 - 2);

        return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v8 + 1, a2 - 1);
      }

      return result;
    }
  }

  if (v9 <= 23)
  {
    if (a5)
    {

      return sub_29A4C0AB8(result, a2, a3);
    }

    else
    {

      return sub_29A4C0C04(result, a2, a3);
    }
  }

  else
  {
    if (a4 != 0)
    {
      v10 = v9 >> 1;
      v11 = &result[2 * (v9 >> 1)];
      if (v9 < 0x81)
      {
        sub_29A4C07A8(&result[2 * (v9 >> 1)], result, a2 - 2, a3);
        if (a5)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_29A4C07A8(result, &result[2 * (v9 >> 1)], a2 - 2, a3);
        sub_29A4C07A8(v8 + 2, v11 - 2, v13, a3);
        sub_29A4C07A8(v8 + 4, &v8[2 * v10 + 2], v12, a3);
        sub_29A4C07A8(v11 - 2, v11, &v8[2 * v10 + 2], a3);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v8, v11);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v8 + 1, v11 + 1);
        if (a5)
        {
          goto LABEL_15;
        }
      }

      if ((sub_29A4C0658(a3, (v8 - 2), v8) & 1) == 0)
      {
        sub_29A4C0D3C(v8, a2, a3);
      }

LABEL_15:
      sub_29A4C0EFC(v8, a2, a3);
    }

    if (result != a2)
    {

      return sub_29A4C1308(result, a2, a2, a3);
    }
  }

  return result;
}

uint64_t sub_29A4C0658(int a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  IsPropertyPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(this);
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(a3) + IsPropertyPath;
  if (!v6)
  {
    goto LABEL_34;
  }

  if (v6 != 2)
  {
    return IsPropertyPath ^ 1u;
  }

  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(this);
  v8 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a3);
  v9 = *(Name + 23);
  if (v9 >= 0)
  {
    v10 = *(Name + 23);
  }

  else
  {
    v10 = Name[1];
  }

  v11 = *(v8 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v8[1];
  }

  if (v10 == v11)
  {
    v13 = v9 >= 0 ? Name : *Name;
    v14 = v12 >= 0 ? v8 : *v8;
    if (!memcmp(v13, v14, v10))
    {
LABEL_34:

      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }
  }

  v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(this);
  v16 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a3);
  v17 = *(v16 + 23);
  v18 = *(v15 + 23);
  if (v18 >= 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = v15[1];
  }

  if (v18 >= 0)
  {
    v20 = v15;
  }

  else
  {
    v20 = *v15;
  }

  if (v17 >= 0)
  {
    v21 = *(v16 + 23);
  }

  else
  {
    v21 = v16[1];
  }

  if (v17 >= 0)
  {
    v22 = v16;
  }

  else
  {
    v22 = *v16;
  }

  if (v21 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  v24 = memcmp(v20, v22, v23);
  if (v24)
  {
    return v24 < 0;
  }

  else
  {
    return v19 < v21;
  }
}

uint64_t sub_29A4C07A8(int *a1, int *a2, int *a3, int a4)
{
  v8 = sub_29A4C0658(a4, a2, a1);
  result = sub_29A4C0658(a4, a3, a2);
  if (v8)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a3);
      v10 = a1 + 1;
LABEL_9:
      v11 = a3 + 1;
      goto LABEL_10;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 1, a2 + 1);
    if (sub_29A4C0658(a4, a3, a2))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a2, a3);
      v10 = a2 + 1;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a2 + 1, a3 + 1);
    if (sub_29A4C0658(a4, a2, a1))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2);
      v10 = a1 + 1;
      v11 = a2 + 1;
LABEL_10:
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v10, v11);
    }
  }

  return 1;
}

int *sub_29A4C08B0(int *a1, int *a2, int *a3, int *a4, int a5)
{
  sub_29A4C07A8(a1, a2, a3, a5);
  result = sub_29A4C0658(a5, a4, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a3 + 1, a4 + 1);
    result = sub_29A4C0658(a5, a3, a2);
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a2, a3);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a2 + 1, a3 + 1);
      result = sub_29A4C0658(a5, a2, a1);
      if (result)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2);

        return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 1, a2 + 1);
      }
    }
  }

  return result;
}

int *sub_29A4C099C(int *a1, int *a2, int *a3, int *a4, int *a5, int a6)
{
  sub_29A4C08B0(a1, a2, a3, a4, a6);
  result = sub_29A4C0658(a6, a5, a4);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a4, a5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a4 + 1, a5 + 1);
    result = sub_29A4C0658(a6, a4, a3);
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a3, a4);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a3 + 1, a4 + 1);
      result = sub_29A4C0658(a6, a3, a2);
      if (result)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a2, a3);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a2 + 1, a3 + 1);
        result = sub_29A4C0658(a6, a2, a1);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2);

          return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 1, a2 + 1);
        }
      }
    }
  }

  return result;
}

_DWORD *sub_29A4C0AB8(_DWORD *result, _DWORD *a2, int a3)
{
  if (result != a2)
  {
    v4 = (result + 2);
    if (result + 2 != a2)
    {
      v6 = 0;
      v7 = result;
      do
      {
        v8 = v4;
        result = sub_29A4C0658(a3, v4, v7);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v8);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v7 + 3);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v4 = (v8 + 8);
        v6 += 8;
        v7 = v8;
      }

      while ((v8 + 8) != a2);
    }
  }

  return result;
}

void sub_29A4C0BF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A4C0C04(_DWORD *result, _DWORD *a2, int a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 2);
    if (result + 2 != a2)
    {
      v7 = result + 3;
      do
      {
        v8 = v5;
        result = sub_29A4C0658(a3, v5, v4);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v8);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v4 + 3);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v5 = (v8 + 8);
        v7 += 2;
        v4 = v8;
      }

      while ((v8 + 8) != a2);
    }
  }

  return result;
}

void sub_29A4C0D28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A4C0D3C(int *a1, int *a2, int a3)
{
  v9[0] = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v9[1] = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  if (sub_29A4C0658(a3, v9, (a2 - 2)))
  {
    v6 = a1;
    do
    {
      v6 += 2;
    }

    while ((sub_29A4C0658(a3, v9, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 2);
    do
    {
      v6 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = sub_29A4C0658(a3, v9, v7);
      v7 = (v6 + 2);
    }

    while (!v8);
  }

  if (v6 < a2)
  {
    do
    {
      a2 -= 2;
    }

    while ((sub_29A4C0658(a3, v9, a2) & 1) != 0);
  }

  while (v6 < a2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v6, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v6 + 1, a2 + 1);
    do
    {
      v6 += 2;
    }

    while (!sub_29A4C0658(a3, v9, v6));
    do
    {
      a2 -= 2;
    }

    while ((sub_29A4C0658(a3, v9, a2) & 1) != 0);
  }

  if (v6 - 2 != a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A4C0ECC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A4C0EFC(int *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  v11[0] = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v11[1] = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  v6 = 0;
  do
  {
    v7 = sub_29A4C0658(a3, &a1[v6 + 2], v11);
    v6 += 2;
  }

  while ((v7 & 1) != 0);
  v8 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 = (a2 - 8);
    }

    while ((sub_29A4C0658(a3, a2, v11) & 1) == 0);
  }

  else
  {
    do
    {
      a2 = (a2 - 8);
    }

    while (!sub_29A4C0658(a3, a2, v11));
  }

  v9 = &a1[v6];
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v9, v10);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v9 + 1, v10 + 1);
      do
      {
        v9 += 2;
      }

      while ((sub_29A4C0658(a3, v9, v11) & 1) != 0);
      do
      {
        v10 -= 2;
      }

      while (!sub_29A4C0658(a3, v10, v11));
    }

    while (v9 < v10);
  }

  if (v9 - 2 != a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A4C10A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C10C4(int *a1, char *a2, int a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_29A4C07A8(a1, a1 + 2, a2 - 2, a3);
        return 1;
      case 4:
        sub_29A4C08B0(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        sub_29A4C099C(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if (sub_29A4C0658(a3, (a2 - 8), a1))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2 - 2);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 1, a2 - 1);
      }

      return 1;
    }
  }

  v7 = (a1 + 4);
  sub_29A4C07A8(a1, a1 + 2, a1 + 4, a3);
  v8 = (a1 + 6);
  if (a1 + 6 != a2)
  {
    v9 = 0;
    do
    {
      if (sub_29A4C0658(a3, v8, v7))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v8 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      v7 = v8;
      v9 += 8;
      v8 = (v8 + 8);
    }

    while (v8 != a2);
  }

  return 1;
}

void sub_29A4C12F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

int *sub_29A4C1308(int *a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, int *a3, int a4)
{
  if (a1 != this)
  {
    v6 = this;
    v8 = (this - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_29A4C1424(a1, a4, v8, v11);
        v11 = (v11 - 8);
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
        if (sub_29A4C0658(a4, v12, a1))
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v12, a1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v12 + 1, a1 + 1);
          sub_29A4C1424(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        sub_29A4C15D0(a1, v6, a4, v8);
        v6 = (v6 - 8);
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_29A4C1424(uint64_t result, int a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  if (a3 >= 2 && ((a3 - 2) >> 1) >= (a4 - result) >> 3)
  {
    v6 = (a4 - result) >> 2;
    v7 = result + 8 * (v6 + 1);
    if (v6 + 2 < a3)
    {
      if (sub_29A4C0658(a2, (result + 8 * (v6 + 1)), (v7 + 8)))
      {
        v7 += 8;
      }
    }

    result = sub_29A4C0658(a2, v7, a4);
    if ((result & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a4);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a4 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

void sub_29A4C15BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

int *sub_29A4C15D0(int *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = result;
    v7 = *result;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(result);
    v8 = *(v6 + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v6 + 4));
    sub_29A4C1700(v6, a3, a4);
  }

  return result;
}

void sub_29A4C16EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A4C1700(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 > 2)
  {
    sub_29A4C0658(a2, (a1 + 8), (a1 + 16));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

uint64_t sub_29A4C17BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = (a2 - 8);
    result = sub_29A4C0658(a3, (result + 8 * ((a4 - 2) >> 1)), (a2 - 8));
    if (result)
    {
      v6 = *v5;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v5);
      v7 = *(a2 - 4);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a2 - 4));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

void sub_29A4C18D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *sub_29A4C18E4(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A2051718;
    v7 = v5[2];
    *(v6 + 8) = *v5;
    *(v6 + 24) = v7;
    *(v6 + 32) = *a2;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v6);
    *(v6 + 48) = 0;
    *(v6 + 52) = 5;
    *(v6 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    return (*(**(v6 - 40) + 16))(*(v6 - 40), v6, v6 - 8);
  }

  return result;
}

uint64_t sub_29A4C19E4(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = a1 + 40;
  if (!v3)
  {
    *(a1 + 40) = 1;
    if (*(a1 - 11) < 0)
    {
      v4 = *(a1 - 32);
      if (*(v4 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v4 + 8) = 1;
        v5 = *(a1 + 52);
        if (v5 <= 1)
        {
          LOBYTE(v5) = 1;
        }

        *(a1 + 52) = v5 + 1;
      }
    }
  }

  sub_29A4C1A54(v2, a1, a1 + 8);
  return 0;
}

void sub_29A4C1A54(uint64_t a1, tbb::internal::allocate_continuation_proxy *a2, uint64_t a3)
{
  if (*(a3 + 16) < ((*a3 - *(a3 + 8)) >> 3))
  {
    if (*a1 > 1uLL)
    {
      goto LABEL_6;
    }

    if (*a1)
    {
LABEL_4:
      if (*(a1 + 12))
      {
        --*(a1 + 12);
        *a1 = 0;
LABEL_6:
        while (1)
        {
          sub_29A4C1B08(a2);
          if (*(a3 + 16) >= ((*a3 - *(a3 + 8)) >> 3))
          {
            break;
          }

          if (*a1 <= 1uLL)
          {
            if (*a1)
            {
              goto LABEL_4;
            }

            break;
          }
        }
      }
    }
  }

  sub_29A4C1BDC(a1, a2, a3);
}

uint64_t sub_29A4C1B08(tbb::internal::allocate_continuation_proxy *a1)
{
  v2 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v2 - 11) = 1;
  *v2 = &unk_2A204C520;
  __dmb(0xBu);
  v2[8] = 0;
  *(a1 - 4) = v2;
  *(v2 - 3) = 2;
  v3 = tbb::internal::allocate_child_proxy::allocate(v2, 0x38uLL);
  v4 = ***(sub_29A4C1DBC(v3, a1) - 40);

  return v4();
}

void sub_29A4C1BDC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 2) < ((*a3 - *(a3 + 1)) >> 3) && *(a1 + 12))
  {
    *v9 = 0x10000;
    v10 = *a3;
    v11 = *(a3 + 2);
    while (1)
    {
      sub_29A4C1E3C(v9, *(a1 + 12));
      v5 = *(*(a2 - 32) + 8);
      __dmb(0xBu);
      if (v5)
      {
        v6 = *(a1 + 12) + 1;
        *(a1 + 12) = v6;
        v7 = v9[2];
        if (v9[2] >= 2u)
        {
          sub_29A4C1EF0(a2, &v10 + 24 * v9[1], v9[v9[1] + 3]);
          v7 = --v9[2];
          v9[1] = (v9[1] + 1) & 7;
          goto LABEL_9;
        }

        v8 = v9[0];
        if (v9[v9[0] + 3] < v6 && *(&v10 + 3 * v9[0] + 2) < ((*(&v10 + 3 * v9[0]) - *(&v10 + 3 * v9[0] + 1)) >> 3))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v8 = v9[0];
      }

      sub_29A4C2018((a2 + 32), &v10 + 3 * v8);
      v7 = --v9[2];
      v9[0] = (v9[0] - 1) & 7;
LABEL_9:
      if (!v7 || tbb::task_group_context::is_group_execution_cancelled(*(a2 - 56)))
      {
        return;
      }
    }
  }

  sub_29A4C2018((a2 + 32), a3);
}

uint64_t sub_29A4C1DBC(uint64_t result, uint64_t a2)
{
  *(result - 11) = 1;
  *result = &unk_2A2051718;
  v2 = *(a2 + 8);
  *(result + 8) = v2;
  v3 = *(a2 + 16) + 8 * ((((v2 - *(a2 + 16)) >> 3) + ((v2 - *(a2 + 16)) >> 63)) >> 1);
  *(a2 + 8) = v3;
  *(result + 16) = v3;
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  v4 = *(a2 + 40) >> 1;
  *(a2 + 40) = v4;
  *(result + 40) = v4;
  *(result + 48) = 2;
  *(result + 52) = *(a2 + 52);
  return result;
}

__n128 sub_29A4C1E3C(unsigned __int8 *a1, unsigned int a2)
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
      if (v7[1].n128_u64[0] >= (v7->n128_u64[0] - v7->n128_u64[1]) >> 3)
      {
        break;
      }

      v8 = (v5 + 1) & 7;
      v9 = &v4[24 * v8];
      v10 = v7[1].n128_u64[0];
      result = *v7;
      *v9 = *v7;
      v13 = v9->n128_u64[0];
      v12 = v9->n128_i64[1];
      v14 = v9->n128_u64[0] - v12;
      *a1 = v8;
      v9[1].n128_u64[0] = v10;
      v15 = v12 + 8 * (((v14 >> 3) + (v14 >> 63)) >> 1);
      v7->n128_u64[0] = v13;
      v7->n128_u64[1] = v15;
      v9->n128_u64[0] = v15;
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

uint64_t sub_29A4C1EF0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A204C520;
  __dmb(0xBu);
  v6[8] = 0;
  *(a1 - 32) = v6;
  *(v6 - 3) = 2;
  v7 = tbb::internal::allocate_child_proxy::allocate(v6, 0x38uLL);
  *(v7 - 11) = 1;
  *v7 = &unk_2A2051718;
  v8 = *(a2 + 16);
  *(v7 + 8) = *a2;
  *(v7 + 24) = v8;
  *(v7 + 32) = *(a1 + 32);
  v9 = *(a1 + 40) >> 1;
  *(a1 + 40) = v9;
  *(v7 + 40) = v9;
  *(v7 + 48) = 2;
  *(v7 + 52) = *(a1 + 52) - a3;
  v10 = ***(v7 - 40);

  return v10();
}

uint64_t sub_29A4C2018(tbb::task *a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  result = tbb::task::self(a1);
  v6 = *a2;
  v5 = a2[1];
  if (v5 != v6)
  {
    v7 = result;
    v8 = 0;
    v9 = (v5 - 8);
    do
    {
      if ((v8 & 0x3F) == 0)
      {
        result = tbb::task_group_context::is_group_execution_cancelled(*(v7 - 56));
        if (result)
        {
          break;
        }
      }

      result = sub_29A4C0658(*a1, v5, v9);
      if (result)
      {
        v10 = *(v7 - 56);

        return tbb::task_group_context::cancel_group_execution(v10);
      }

      v5 = (v5 + 8);
      ++v8;
      v9 = (v9 + 8);
    }

    while (v5 != v6);
  }

  return result;
}

void sub_29A4C20CC(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1))
  {
    v9[0] = 1;
    v10 = 65539;
    v11 = 49;
    tbb::task_group_context::init(v9, a2, a3, a4);
    v8 = v9;
    v5 = tbb::internal::allocate_root_with_context_proxy::allocate(&v8, 0x38uLL);
    *(v5 - 11) = 1;
    *v5 = &unk_2A2051760;
    v6 = *a1;
    *(v5 + 24) = *(a1 + 2);
    *(v5 + 8) = v6;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v5);
    *(v5 + 48) = 0;
    *(v5 + 52) = 5;
    *(v5 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    (*(**(v5 - 40) + 16))(*(v5 - 40), v5, v5 - 8);
    tbb::task_group_context::~task_group_context(v9);
  }
}

void sub_29A4C21F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C2240(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = a1 + 40;
  if (!v3)
  {
    *(a1 + 40) = 1;
    if (*(a1 - 11) < 0)
    {
      v4 = *(a1 - 32);
      if (*(v4 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v4 + 8) = 1;
        v5 = *(a1 + 52);
        if (v5 <= 1)
        {
          LOBYTE(v5) = 1;
        }

        *(a1 + 52) = v5 + 1;
      }
    }
  }

  sub_29A4C22B0(v2, a1, a1 + 8);
  return 0;
}

uint64_t sub_29A4C22B0(uint64_t a1, tbb::internal::allocate_continuation_proxy *a2, uint64_t a3)
{
  if (*(a3 + 8) >= 0x1F4uLL)
  {
    if (*a1 <= 1uLL)
    {
      if (!*a1 || !*(a1 + 12))
      {
        return sub_29A4C2458(a1, a2, a3);
      }

      --*(a1 + 12);
      *a1 = 0;
    }

    sub_29A4C2384(a2);
    if (*(a3 + 8) >= 0x1F4uLL)
    {
      do
      {
        if (*a1 <= 1uLL)
        {
          if (!*a1 || !*(a1 + 12))
          {
            return sub_29A4C2458(a1, a2, a3);
          }

          --*(a1 + 12);
          *a1 = 0;
        }

        sub_29A4C2384(a2);
      }

      while (*(a3 + 8) > 0x1F3uLL);
    }
  }

  return sub_29A4C2458(a1, a2, a3);
}

uint64_t sub_29A4C2384(tbb::internal::allocate_continuation_proxy *a1)
{
  v2 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v2 - 11) = 1;
  *v2 = &unk_2A204C520;
  __dmb(0xBu);
  v2[8] = 0;
  *(a1 - 4) = v2;
  *(v2 - 3) = 2;
  v3 = tbb::internal::allocate_child_proxy::allocate(v2, 0x38uLL);
  v4 = ***(sub_29A4C2624(v3, a1) - 40);

  return v4();
}

uint64_t sub_29A4C2458(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = *(a3 + 1);
  if (v3 >= 0x1F4 && *(a1 + 12))
  {
    *v18 = 0x10000;
    v19 = *a3;
    v20 = *(a3 + 2);
    while (1)
    {
      result = sub_29A4C2A28(v18, *(a1 + 12));
      v7 = *(*(a2 - 32) + 8);
      __dmb(0xBu);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v8 = *(a1 + 12) + 1;
      *(a1 + 12) = v8;
      v9 = v18[2];
      if (v18[2] < 2u)
      {
        v10 = v18[0];
        if (v18[v18[0] + 3] >= v8 || *(&v19 + 3 * v18[0] + 1) <= 0x1F3uLL)
        {
          goto LABEL_8;
        }
      }

      else
      {
        result = sub_29A4C2B1C(a2, (&v19 + 24 * v18[1]), v18[v18[1] + 3]);
        v9 = --v18[2];
        v18[1] = (v18[1] + 1) & 7;
      }

LABEL_12:
      if (v9)
      {
        result = tbb::task_group_context::is_group_execution_cancelled(*(a2 - 56));
        if (!result)
        {
          continue;
        }
      }

      return result;
    }

    v10 = v18[0];
LABEL_8:
    v12 = *(&v19 + 3 * v10 + 1);
    v11 = *(&v19 + 3 * v10 + 2);
    v13 = 126 - 2 * __clz(v12);
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    result = sub_29A4C0268(v11, &v11[2 * v12], &v17, v14, 1);
    v9 = --v18[2];
    v18[0] = (v18[0] - 1) & 7;
    goto LABEL_12;
  }

  v15 = 126 - 2 * __clz(v3);
  if (v3)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return sub_29A4C0268(*(a3 + 2), (*(a3 + 2) + 8 * v3), v18, v16, 1);
}

uint64_t sub_29A4C2624(uint64_t a1, uint64_t a2)
{
  *(a1 - 11) = 1;
  *a1 = &unk_2A2051760;
  v3 = a2 + 8;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = sub_29A4C26B4((a1 + 8), a2 + 8);
  *(a1 + 24) = *(v3 + 16) + 8 * *(v3 + 8) + 8;
  v4 = *(v3 + 32) >> 1;
  *(v3 + 32) = v4;
  *(a1 + 40) = v4;
  *(a1 + 48) = 2;
  *(a1 + 52) = *(v3 + 44);
  return a1;
}

uint64_t sub_29A4C26B4(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v17 = v4;
  v5 = sub_29A4C27E8(a1, &v17, a2);
  if (v5)
  {
    v6 = v17;
    v7 = (v17 + 8 * v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v17, v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v6 + 1, v7 + 1);
  }

  v8 = 0;
  v9 = *(a2 + 8);
LABEL_4:
  v10 = 8 * v9;
  do
  {
    --v9;
    v10 -= 8;
  }

  while ((sub_29A4C0658(*a1, v4, (v17 + v10)) & 1) != 0);
  v11 = 8 * v8;
  while (v9 != v8)
  {
    ++v8;
    v11 += 8;
    if ((sub_29A4C0658(*a1, (v17 + v11), v4) & 1) == 0)
    {
      if (v9 == v8)
      {
        break;
      }

      v12 = (v17 + v11);
      v13 = (v17 + v10);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v12, v13);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v12 + 1, v13 + 1);
      goto LABEL_4;
    }
  }

  v14 = (v17 + v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap((v17 + v10), v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v14 + 1, v4 + 1);
  v15 = *(a2 + 8);
  *(a2 + 8) = v9;
  return ~v9 + v15;
}

uint64_t sub_29A4C27E8(uint64_t *a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2, uint64_t a3)
{
  v6 = *(a3 + 8) >> 3;
  v7 = v6;
  v8 = sub_29A4C0658(*a1, *a2, (*a2 + 8 * v6));
  v9 = *a1;
  v10 = *a2;
  if (v8)
  {
    if (sub_29A4C0658(v9, (v10 + 8 * v6), (v10 + 16 * v6)))
    {
      goto LABEL_9;
    }

    v11 = 0;
    v12 = 2 * v6;
  }

  else
  {
    if (sub_29A4C0658(v9, (v10 + 16 * v6), (v10 + 8 * v6)))
    {
      goto LABEL_9;
    }

    v12 = 0;
    v11 = 2 * v6;
  }

  if (sub_29A4C0658(*a1, (*a2 + 8 * v11), (*a2 + 8 * v12)))
  {
    v7 = 2 * v6;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  v13 = 3 * v6;
  v14 = 4 * v6;
  v15 = sub_29A4C0658(*a1, (*a2 + 24 * v6), (*a2 + 32 * v6));
  v16 = *a1;
  v17 = *a2;
  if (v15)
  {
    v18 = sub_29A4C0658(v16, (v17 + 32 * v6), (v17 + 40 * v6));
    v19 = 3 * v6;
    v20 = 5 * v6;
    if (v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v21 = sub_29A4C0658(v16, (v17 + 40 * v6), (v17 + 32 * v6));
    v19 = 5 * v6;
    v20 = 3 * v6;
    if (v21)
    {
      goto LABEL_16;
    }
  }

  if (sub_29A4C0658(*a1, (*a2 + 8 * v19), (*a2 + 8 * v20)))
  {
    v14 = 5 * v6;
  }

  else
  {
    v14 = 3 * v6;
  }

LABEL_16:
  v22 = 7 * v6;
  v23 = *(a3 + 8) - 1;
  v24 = sub_29A4C0658(*a1, (*a2 + 16 * v13), (*a2 + 8 * v22));
  v25 = *a1;
  v26 = *a2;
  if (v24)
  {
    v27 = sub_29A4C0658(v25, (v26 + 8 * v22), (v26 + 8 * v23));
    v28 = 2 * v13;
    v29 = v23;
    if (v27)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v30 = sub_29A4C0658(v25, (v26 + 8 * v23), (v26 + 8 * v22));
    v28 = v23;
    v29 = 2 * v13;
    if (v30)
    {
      goto LABEL_23;
    }
  }

  if (sub_29A4C0658(*a1, (*a2 + 8 * v28), (*a2 + 8 * v29)))
  {
    v22 = v23;
  }

  else
  {
    v22 = 2 * v13;
  }

LABEL_23:
  v31 = sub_29A4C0658(*a1, (*a2 + 8 * v7), (*a2 + 8 * v14));
  v32 = *a1;
  v33 = *a2;
  if (v31)
  {
    v34 = sub_29A4C0658(v32, (v33 + 8 * v14), (v33 + 8 * v22));
    v35 = v7;
    v36 = v22;
    if (v34)
    {
      return v14;
    }
  }

  else
  {
    v37 = sub_29A4C0658(v32, (v33 + 8 * v22), (v33 + 8 * v14));
    v35 = v22;
    v36 = v7;
    if (v37)
    {
      return v14;
    }
  }

  if (sub_29A4C0658(*a1, (*a2 + 8 * v35), (*a2 + 8 * v36)))
  {
    return v22;
  }

  else
  {
    return v7;
  }
}

unsigned __int8 *sub_29A4C2A28(unsigned __int8 *result, unsigned int a2)
{
  if (result[2] <= 7u)
  {
    v3 = result;
    v4 = result + 3;
    v5 = result + 16;
    v6 = *result;
    v7 = result[v6 + 3];
    do
    {
      if (a2 <= v7)
      {
        break;
      }

      v8 = v6;
      if (*&v5[24 * v6 + 8] < 0x1F4uLL)
      {
        break;
      }

      *v3 = (v6 + 1) & 7;
      v9 = &v5[24 * ((v6 + 1) & 7)];
      v10 = &v5[24 * v6];
      v11 = v10[2];
      *v9 = *v10;
      *(v9 + 16) = v11;
      *v10 = *v9;
      result = sub_29A4C26B4(v10, v9);
      v10[1] = result;
      v10[2] = *(v9 + 16) + 8 * *(v9 + 8) + 8;
      v7 = v4[v8] + 1;
      v4[v8] = v7;
      v6 = *v3;
      v4[v6] = v7;
      v12 = ++v3[2];
    }

    while (v12 < 8);
  }

  return result;
}

uint64_t sub_29A4C2B1C(uint64_t a1, __int128 *a2, char a3)
{
  v6 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A204C520;
  __dmb(0xBu);
  v6[8] = 0;
  *(a1 - 32) = v6;
  *(v6 - 3) = 2;
  v7 = tbb::internal::allocate_child_proxy::allocate(v6, 0x38uLL);
  *(v7 - 11) = 1;
  *v7 = &unk_2A2051760;
  v8 = *a2;
  *(v7 + 24) = *(a2 + 2);
  *(v7 + 8) = v8;
  v9 = *(a1 + 40) >> 1;
  *(a1 + 40) = v9;
  *(v7 + 40) = v9;
  *(v7 + 48) = 2;
  *(v7 + 52) = *(a1 + 52) - a3;
  v10 = ***(v7 - 40);

  return v10();
}

uint64_t sub_29A4C2C3C(void *a1, unsigned int *a2)
{
  v2 = a1[4];
  v3 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & *a1;
  v4 = v2 + 32 * v3;
  if (*(v4 + 4) < 0)
  {
    return v2 + 32 * a1[5];
  }

  LOWORD(v5) = 0;
  while (*(v4 + 8) != *a2)
  {
    v5 = (v5 + 1);
    v3 = (v3 + 1) & *a1;
    v4 = v2 + 32 * v3;
    if (v5 > *(v4 + 4))
    {
      return v2 + 32 * a1[5];
    }
  }

  return v4;
}

unsigned int *sub_29A4C2CC0(uint64_t IsTargetPath, unsigned int *a2, uint64_t a3)
{
  v3 = a2;
  if (IsTargetPath != a2)
  {
    v3 = IsTargetPath;
    while (1)
    {
      v7 = *v3;
      v8 = *(*(a3 + 88) + 96);
      v9 = v7 >= (*(*(a3 + 88) + 104) - v8) >> 3 ? pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(IsTargetPath) : (v8 + 8 * v7);
      IsTargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(v9);
      if (IsTargetPath)
      {
        break;
      }

      v3 += 3;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 3; i != a2; i += 3)
      {
        v11 = *i;
        v12 = *(*(a3 + 88) + 96);
        if (v11 >= (*(*(a3 + 88) + 104) - v12) >> 3)
        {
          v13 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(IsTargetPath);
        }

        else
        {
          v13 = (v12 + 8 * v11);
        }

        IsTargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(v13);
        if ((IsTargetPath & 1) == 0)
        {
          v14 = *i;
          v3[2] = i[2];
          *v3 = v14;
          v3 += 3;
        }
      }
    }
  }

  return v3;
}

uint64_t sub_29A4C2DA0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4C2E44(a1 + 8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 32));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4C2E30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4C2E44(uint64_t a1)
{
  v2 = *a1;
  sub_29A4C3088(&v23, "Usd", "Usd_CrateDataImpl::Open", "Usd_CrateDataImpl main hash table");
  v3 = *(v2 + 68);
  v4 = vcvtps_u32_f32((0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 8) - **(a1 + 8)) >> 2)) / v3);
  v5 = vcvtps_u32_f32(*(v2 + 48) / v3);
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  sub_29A4C3114(v2, v6);
  sub_29A0BD724(*(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 8) - **(a1 + 8)) >> 2));
  v8 = *(v2 + 88);
  v9 = **(a1 + 8);
  v10 = *(*(a1 + 8) + 8);
  if (v10 != v9)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(v9 + v11);
      v14 = *(v8 + 96);
      if (v13 >= (*(v8 + 104) - v14) >> 3)
      {
        v15 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v7);
      }

      else
      {
        v15 = (v14 + 8 * v13);
      }

      sub_29A1E21F4(&v21, v15);
      sub_29A1E2240(&v22, v15 + 1);
      sub_29A4C3354(v2, &v21);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
      v7 = sub_29A1DE3A4(&v21);
      ++v12;
      v9 = **(a1 + 8);
      v10 = *(*(a1 + 8) + 8);
      v11 += 12;
    }

    while (v12 != 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 2));
  }

  if (v10 != v9)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(v9 + v16);
      v19 = *(v8 + 96);
      if (v18 >= (*(v8 + 104) - v19) >> 3)
      {
        v20 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v7);
      }

      else
      {
        v20 = (v19 + 8 * v18);
      }

      v7 = sub_29A4C2C3C(v2, v20);
      *(**(a1 + 16) + 8 * v17++) = v7 + 16;
      v9 = **(a1 + 8);
      v16 += 12;
    }

    while (v17 != 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 8) - v9) >> 2));
  }

  if (v23)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v24, v23);
  }
}

void sub_29A4C3054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C3088(uint64_t a1, char *a2, char *a3, char *a4)
{
  v5 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v5)
  {
    v8 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a2, 0);
    *a1 = v8;
    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 8) = v9;
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a3, v8);
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a4, *a1);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_29A4C3114(uint64_t a1, unint64_t a2)
{
  sub_29A4BF598(&v9, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = v10[4];
    v6 = v3 + 2;
    do
    {
      if (*(v6 - 2) != -1)
      {
        if (v5 > 0x100000000)
        {
          v7 = bswap64(0x9E3779B97F4A7C55 * (v6[1] + ((v6[1] + *v6 + (v6[1] + *v6) * (v6[1] + *v6)) >> 1)));
        }

        else
        {
          v7 = *(v6 - 2);
        }

        sub_29A4C3238(&v9, v9 & v7, 0, v7, v6);
      }

      v8 = v6 + 6;
      v6 += 8;
    }

    while (v8 != v4);
  }

  v10[5] = *(a1 + 48);
  sub_29A10A4B4(&v9, a1);
  v11 = v10;
  sub_29A4BF7B8(&v11);
}

void sub_29A4C3218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 72) = &a11;
  sub_29A4BF7B8((v11 - 72));
  _Unwind_Resume(a1);
}

_DWORD *sub_29A4C3238(void *a1, uint64_t a2, __int16 a3, int a4, uint64_t a5)
{
  while (1)
  {
    v10 = a1[4] + 32 * a2;
    v11 = *(v10 + 4);
    if (v11 >= a3)
    {
      goto LABEL_4;
    }

    if (v11 == -1)
    {
      break;
    }

    sub_29A4C3300(a5, v10 + 8);
    v12 = *(v10 + 4);
    *(v10 + 4) = a3;
    v13 = *v10;
    *v10 = a4;
    a3 = v12;
    a4 = v13;
LABEL_4:
    ++a3;
    a2 = *a1 & (a2 + 1);
  }

  sub_29A1DDD84((v10 + 8), a5);
  result = sub_29A1DDDC0((v10 + 12), (a5 + 4));
  *(v10 + 16) = *(a5 + 8);
  *(a5 + 8) = 0;
  *(v10 + 24) = *(a5 + 16);
  *v10 = a4;
  *(v10 + 4) = a3;
  return result;
}

int *sub_29A4C3300(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap((a1 + 4), (a2 + 4));
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(a2 + 8);
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_29A4C3354(uint64_t *a1, _DWORD *a2)
{
  sub_29A1E21F4(&v6, a2);
  sub_29A1E2240(&v7, a2 + 1);
  v8 = 0;
  v4 = sub_29A4C33F4(a1, &v6, &v6);
  sub_29A4BF944(&v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  return v4;
}

void sub_29A4C33E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4BF8FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C33F4(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v6 = *a1;
  v7 = a1[4];
  v8 = v5 & *a1;
  result = v7 + 32 * v8;
  if (*(result + 4) < 0)
  {
    goto LABEL_7;
  }

  LOWORD(v10) = 0;
  while (*(result + 8) != *a2)
  {
    v10 = (v10 + 1);
    v8 = (v8 + 1) & v6;
    result = v7 + 32 * v8;
    if (v10 > *(result + 4))
    {
      while (sub_29A4C3578(a1, v10))
      {
        v11 = a1[4];
        v8 = v5 & *a1;
        if (*(v11 + 32 * v8 + 4) < 0)
        {
LABEL_7:
          v10 = 0;
        }

        else
        {
          LOWORD(v10) = 0;
          do
          {
            v10 = (v10 + 1);
            v8 = (v8 + 1) & *a1;
          }

          while (v10 <= *(v11 + 32 * v8 + 4));
        }
      }

      v12 = a1[4] + 32 * v8;
      if (*(v12 + 4) == -1)
      {
        sub_29A1DDD84((v12 + 8), a3);
        sub_29A1DDDC0((v12 + 12), (a3 + 4));
        *(v12 + 16) = *(a3 + 8);
        *(a3 + 8) = 0;
        *(v12 + 24) = *(a3 + 16);
        *v12 = v5;
        *(v12 + 4) = v10;
      }

      else
      {
        sub_29A4C364C(a1, v8, v10, v5, a3);
      }

      ++a1[6];
      return a1[4] + 32 * v8;
    }
  }

  return result;
}

uint64_t sub_29A4C3578(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A4C3114(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A4C3114(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

_DWORD *sub_29A4C364C(uint64_t *a1, uint64_t a2, __int16 a3, int a4, uint64_t a5)
{
  v10 = a1[4] + 32 * a2;
  sub_29A4C3300(a5, v10 + 8);
  v11 = *(v10 + 4);
  *(v10 + 4) = a3;
  v12 = *v10;
  *v10 = a4;
  v13 = *a1;
  v14 = *a1 & (a2 + 1);
  v15 = v11 + 1;
  v16 = a1[4];
  v17 = (v16 + 32 * v14);
  v19 = (v17 + 1);
  for (i = *(v17 + 2); i != 0xFFFF; i = *(v17 + 2))
  {
    if (v15 > i)
    {
      if (v15 > 0x2000)
      {
        *(a1 + 72) = 1;
      }

      sub_29A4C3300(a5, (v17 + 2));
      v20 = *v19;
      *v19 = v15;
      v21 = *v17;
      *v17 = v12;
      v13 = *a1;
      v16 = a1[4];
      v15 = v20;
      v12 = v21;
    }

    v14 = v13 & (v14 + 1);
    ++v15;
    v17 = (v16 + 32 * v14);
    v19 = (v17 + 1);
  }

  sub_29A1DDD84(v17 + 2, a5);
  result = sub_29A1DDDC0(v17 + 3, (a5 + 4));
  *(v17 + 2) = *(a5 + 8);
  *(a5 + 8) = 0;
  v17[6] = *(a5 + 16);
  *v17 = v12;
  *(v17 + 2) = v15;
  return result;
}

uint64_t *sub_29A4C3788(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v6 = *a2;
  v7 = bswap64(0x9E3779B97F4A7C55 * v6);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = v7;
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v4);
    if (v10)
    {
      for (result = *v10; result; result = *result)
      {
        v12 = result[1];
        if (v12 == v7)
        {
          if (*(result + 4) == v6)
          {
            return result;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A4C39C0(a1, v7, a4, v23);
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v4);
  if (v20)
  {
    result = v23[0];
    *v23[0] = *v20;
    *v20 = result;
  }

  else
  {
    v21 = v23[0];
    *v23[0] = *(a1 + 16);
    *(a1 + 16) = v21;
    *(v19 + 8 * v4) = a1 + 16;
    result = v23[0];
    if (*v23[0])
    {
      v22 = *(*v23[0] + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v22 >= v8)
        {
          v22 %= v8;
        }
      }

      else
      {
        v22 &= v8 - 1;
      }

      *(*a1 + 8 * v22) = v23[0];
      result = v23[0];
    }
  }

  ++*(a1 + 24);
  return result;
}