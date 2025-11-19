void sub_29B07E8D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B07E9C8(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B07E8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29B07E970(v8 + 4, &v10);
  *(a4 + 16) = 1;
  return result;
}

_DWORD *sub_29B07E970(_DWORD *a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1DDD84(a1, *a2);
  sub_29A1DDDC0(v4 + 1, (v3 + 4));
  sub_29A87C868((a1 + 2));
  return a1;
}

void sub_29B07E9C8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B07D070();
    }

    operator delete(v2);
  }
}

void *sub_29B07EA24(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
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
            if (result[2] == *a2)
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

  sub_29B07EC6C(a1, v6, a4, &v22);
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

void sub_29B07EC54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B07E9C8(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B07EC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29B07ECF0(v8 + 4, &v10);
  *(a4 + 16) = 1;
  return result;
}

_DWORD *sub_29B07ECF0(_DWORD *a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  sub_29A87C868((a1 + 2));
  return a1;
}

uint64_t *sub_29B07ED48(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29B07ED80(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29B07ED80(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B07D070();
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t *sub_29B07EDDC(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29B07EE14(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29B07EE14(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B07CEA0(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

_DWORD *sub_29B07EE70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *a2 = 0;
  sub_29A1DDD84((v4 + 8), (a2 + 8));
  result = sub_29A1DDDC0((v4 + 12), (a2 + 12));
  *(v4 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = v4 + 24;
  return result;
}

uint64_t sub_29B07EED4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[24 * v6];
  *v8 = *a2;
  *a2 = 0;
  sub_29A1DDD84(v8 + 2, (a2 + 8));
  sub_29A1DDDC0(v8 + 3, (a2 + 12));
  *(v8 + 2) = *(a2 + 16);
  *(a2 + 16) = 0;
  *&v17 = v8 + 24;
  v9 = a1[1];
  v10 = &v8[*a1 - v9];
  sub_29ACCE848(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ACCE9BC(&v15);
  return v14;
}

void sub_29B07F010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACCE9BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B07F024(void *a1, uint64_t *a2, _OWORD *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v14[4] = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[24 * v3];
  v14[0] = v9;
  v14[1] = v10;
  v14[3] = &v9[24 * v8];
  v11 = *a2;
  *v10 = *a2;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v10 + 8) = *a3;
  v14[2] = v10 + 24;
  sub_29ABC711C(a1, v14);
  v12 = a1[1];
  sub_29ABC71C0(v14);
  return v12;
}

void sub_29B07F13C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABC71C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B07F150(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4, _DWORD *a5, uint64_t *a6, _OWORD *a7)
{
  v7 = (*(a1 + 8) - *a1) >> 6;
  v8 = v7 + 1;
  if ((v7 + 1) >> 58)
  {
    sub_29A00C9A4();
  }

  v16 = *(a1 + 16) - *a1;
  if (v16 >> 5 > v8)
  {
    v8 = v16 >> 5;
  }

  if (v16 >= 0x7FFFFFFFFFFFFFC0)
  {
    v17 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = v8;
  }

  v28 = a1;
  if (v17)
  {
    v18 = sub_29A0BE3C0(a1, v17);
  }

  else
  {
    v18 = 0;
  }

  v25 = v18;
  v26 = &v18[4 * v7];
  *&v27 = v26;
  *(&v27 + 1) = &v18[4 * v17];
  sub_29ACCA3F8(v26, a2, *a3, a4, a5, a6, a7);
  *&v27 = v26 + 4;
  v19 = *(a1 + 8);
  v20 = (v26 + *a1 - v19);
  sub_29ACCDBC8(a1, *a1, v19, v20);
  v21 = *a1;
  *a1 = v20;
  v22 = *(a1 + 16);
  v24 = v27;
  *(a1 + 8) = v27;
  *&v27 = v21;
  *(&v27 + 1) = v22;
  v25 = v21;
  v26 = v21;
  sub_29ACCDC7C(&v25);
  return v24;
}

void sub_29B07F284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACCDC7C(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B07F298(_DWORD *a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  a1[129] = 4;
  v4 = a2 << 7;
  if (a2 >= 5)
  {
    a1 = malloc(a2 << 7);
    *v3 = a1;
    v3[129] = v2;
    v3[128] = v2;
    if (v2 < 5)
    {
      a1 = v3;
    }

    goto LABEL_6;
  }

  a1[128] = a2;
  if (a2)
  {
LABEL_6:
    bzero(a1, v4);
  }

  return v3;
}

__n128 sub_29B07F310(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29AD57258(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29B07F3C8(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
  }

  v4 = sub_29B07F498(a1);
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

void *sub_29B07F3C8(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A207D2C8;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29B07F45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B07F498(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B2D03C8();
  }

  return sub_29AC7F5E0(a1);
}

uint64_t *sub_29B07F4D4(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29B07F50C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29B07F50C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B07CF6C(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

void *sub_29B07F568@<X0>(const pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x80uLL);
  result = sub_29B07F5C4(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29B07F5C4(void *a1, const pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20B3AA0;
  pxrInternal__aapl__pxrReserved__::UsdSkelBlendShapeQuery::UsdSkelBlendShapeQuery((a1 + 3), a2);
  return a1;
}

void sub_29B07F640(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B3AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B07F6B4(uint64_t a1, uint64_t a2)
{
  v7 = (a2 + 80);
  sub_29A843EBC(&v7);
  v7 = (a2 + 56);
  sub_29A843FB4(&v7);
  v3 = *(a2 + 32);
  if (v3)
  {
    *(a2 + 40) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 20));
  sub_29A1DE3A4((a2 + 16));
  result = *(a2 + 8);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v5);
  }

  return result;
}

uint64_t sub_29B07F744()
{
  v1 = nullsub_1821;
  return sub_29B07FED8(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkelRootAdapter::~UsdSkelImagingSkelRootAdapter(pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkelRootAdapter *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(this);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkelRootAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdSkelRoot *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdSkelRoot::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v9);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo) & 1) == 0 && (sub_29B2D0434(v43, a5) & 1) == 0)
  {
    return;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetDisplayPredicate(a1, &v30);
  v11 = v30;
  v12 = v31;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v42, a2);
  v42[0] = &unk_2A20633F0;
  v13 = pxrInternal__aapl__pxrReserved__::UsdSkelCache::UsdSkelCache(v40);
  v30.n128_u64[0] = v11.n128_u64[0] & 0xFFFFFFFFFFFFDFFFLL;
  v30.n128_u64[1] = v11.n128_u64[1] | 0x2000;
  v31 = v12;
  pxrInternal__aapl__pxrReserved__::UsdSkelCache::Populate(v13, v42, &v30);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v30.n128_u64[0] = v11.n128_u64[0] & 0xFFFFFFFFFFFFDFFFLL;
  v30.n128_u64[1] = v11.n128_u64[1] | 0x2000;
  v31 = v12;
  if (pxrInternal__aapl__pxrReserved__::UsdSkelCache::ComputeSkelBindings(v40, v42, &v37, &v30))
  {
    v14 = v37;
    if (v37 != v38)
    {
      sub_29A580660(&v30, (v37 + 8), (v37 + 16));
      PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, &v30, 1);
      v16 = *PrimAdapter;
      v17 = PrimAdapter[1];
      if (v17)
      {
        atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
      }

      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v31 + 1);
      sub_29A1DE3A4(&v31);
      if (v30.n128_u64[1])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30.n128_u64[1], v18);
      }

      if (v16)
      {
        if (v19)
        {
          v20 = v19;
          if (v17)
          {
            atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
          }

LABEL_16:
          v36 = 0;
          memset(v35, 0, sizeof(v35));
          sub_29B07FD98(v35, v14[3]);
          v21 = v14[3];
          if (v21)
          {
            v22 = v14[7];
            v23 = 400 * v21;
            do
            {
              if (pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::HasBlendShapes(v22) & 1) != 0 || (pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::HasJointInfluences(v22))
              {
                v24 = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, v22, 1);
                v26 = *v24;
                v25 = v24[1];
                if (v25)
                {
                  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v26)
                {
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v30);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v30.n128_u32[1]);
                  v30.n128_u64[1] = 0;
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v31);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v31 + 1);
                  v33 = 0u;
                  v32 = 0u;
                  if (a4)
                  {
                    sub_29B07FE28(&v30, a4);
                  }

                  if (v17)
                  {
                    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
                  }

                  v27 = *(&v33 + 1);
                  *&v33 = v20;
                  *(&v33 + 1) = v17;
                  if (v27)
                  {
                    sub_29A014BEC(v27);
                  }

                  (*(*v26 + 64))(&v34, v26, v22, a3, &v30);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v34 + 1);
                  sub_29A1DE3A4(&v34);
                  sub_29A8551E4(v35, v22);
                  sub_29B0020F0(&v30);
                }

                if (v25)
                {
                  sub_29A014BEC(v25);
                }
              }

              v22 += 50;
              v23 -= 400;
            }

            while (v23);
          }

          sub_29A854C84(&v30, v14, v35);
          pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkeletonAdapter::RegisterSkelBinding(v20, &v30);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery>::_DecRef();
        }
      }

      else
      {
        v30.n128_u64[0] = "usdSkelImaging/skelRootAdapter.cpp";
        v30.n128_u64[1] = "Populate";
        v31 = 82;
        *&v32 = "virtual SdfPath pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkelRootAdapter::Populate(const UsdPrim &, UsdImagingIndexProxy *, const UsdImagingInstancerContext *)";
        BYTE8(v32) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v30, "adapter", 0);
      }

      v30.n128_u64[0] = "usdSkelImaging/skelRootAdapter.cpp";
      v30.n128_u64[1] = "Populate";
      v31 = 86;
      *&v32 = "virtual SdfPath pxrInternal__aapl__pxrReserved__::UsdSkelImagingSkelRootAdapter::Populate(const UsdPrim &, UsdImagingIndexProxy *, const UsdImagingInstancerContext *)";
      BYTE8(v32) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v30, "skelAdapter", 0);
      v20 = 0;
      v17 = 0;
      goto LABEL_16;
    }
  }

  *a5 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a5 + 1);
  v30.n128_u64[0] = &v37;
  sub_29A84BDF8(&v30);
  if (v41)
  {
    sub_29A014BEC(v41);
  }

  pxrInternal__aapl__pxrReserved__::UsdSkelRoot::~UsdSkelRoot(v42);
}

void sub_29B07FCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  a23 = &a29;
  sub_29A84BDF8(&a23);
  v31 = *(v29 - 160);
  if (v31)
  {
    sub_29A014BEC(v31);
  }

  pxrInternal__aapl__pxrReserved__::UsdSkelRoot::~UsdSkelRoot((v29 - 152));
  _Unwind_Resume(a1);
}

unint64_t *sub_29B07FD98(unint64_t *result, unint64_t a2)
{
  v2 = result[4];
  if (v2)
  {
    if (result[3])
    {
      v3 = result;
    }

    else
    {
      v3 = (v2 - 8);
    }

    if (*v3 < a2)
    {
      v4 = *result;
      v5 = sub_29A855294(result, a2);
      sub_29A855334(v2, v2 + 400 * v4, v5);
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    sub_29A855294(result, a2);
LABEL_9:
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery>::_DecRef();
  }

  return result;
}

uint64_t sub_29B07FE28(uint64_t a1, uint64_t a2)
{
  sub_29A2258F0(a1, a2);
  sub_29A225948((a1 + 4), (a2 + 4));
  sub_29A166F2C((a1 + 8), (a2 + 8));
  sub_29A2258F0((a1 + 16), (a2 + 16));
  sub_29A225948((a1 + 20), (a2 + 20));
  sub_29A166F2C((a1 + 24), (a2 + 24));
  sub_29A166F2C((a1 + 32), (a2 + 32));
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return a1;
}

uint64_t sub_29B07FED8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B3D30;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B07FF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B07FF88(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B07FFB0@<D0>(_OWORD *a1@<X8>)
{
  sub_29B07FFEC(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B07FFEC(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B3D70;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B3AF0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B080098(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B3D70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelImagingPackageSkinningShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1758B08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758B08))
  {
    sub_29B0801BC();
    __cxa_atexit(sub_29A424A8C, &qword_2A1758B00, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1758B08);
  }

  v3 = qword_2A1758B00;
  *a1 = qword_2A1758B00;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void sub_29B0801BC()
{
  if ((atomic_load_explicit(&qword_2A1758B20, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A1758B20);
    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v4);
      sub_29A008E78(__p, "usdSkelImaging");
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginWithName(__p, qword_2A1758B10);
      if (SHIBYTE(v6) < 0)
      {
        operator delete(__p[0]);
      }

      __cxa_atexit(sub_29B2B8168, qword_2A1758B10, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758B20);
    }
  }

  sub_29A008E78(v11, "shaders");
  sub_29A008E78(v9, "skinning.glslfx");
  pxrInternal__aapl__pxrReserved__::TfStringCatPaths(v11, v9, __p);
  pxrInternal__aapl__pxrReserved__::PlugFindPluginResource(qword_2A1758B10, v13);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v2 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v2 = v13[1];
  }

  if (!v2)
  {
    __p[0] = "usdSkelImaging/package.cpp";
    __p[1] = "_GetShaderPath";
    v6 = 23;
    v7 = "TfToken pxrInternal__aapl__pxrReserved__::_GetShaderPath(const char *)";
    v8 = 0;
    v3 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Could not find shader: %s\n", v0, v1, "skinning.glslfx");
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "!path.empty()", v3);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A1758B00);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_29B080374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1758B20);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneTopology(uint64_t *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if (a3)
    {
      if (*a1)
      {
        v5 = 0;
        v6 = a1[4];
        v7 = *a1;
        do
        {
          v9 = *v6++;
          v8 = v9;
          if (v9 >= 0 && v8 < *a1)
          {
            ++v5;
          }

          --v7;
        }

        while (v7);
      }

      else
      {
        v5 = 0;
      }

      memset(v25, 0, 40);
      sub_29A19D79C(v25);
      v18 = &unk_29B741A18;
      sub_29A19D7EC(v25, 4 * v5, &v18);
      v12 = sub_29A19D6E4(v23, 12 * v5);
      sub_29A19DBEC(v12);
      if (v5)
      {
        v13 = 0;
        v14 = v24;
        do
        {
          for (i = 0; i != 12; ++i)
          {
            *(v14 + i * 4) = dword_29B741A1C[i] + 5 * v13;
          }

          ++v13;
          v14 += 48;
        }

        while (v13 != v5);
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v16)
      {
        v16 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v17)
      {
        v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(&v18, v16 + 8, v17 + 568, v25, v23, 0);
      pxrInternal__aapl__pxrReserved__::HdMeshTopology::operator=(a2, &v18);
      pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(&v18);
      *a3 = 5 * v5;
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    v18 = "usdSkelImaging/utils.cpp";
    v19 = "UsdSkelImagingComputeBoneTopology";
    v20 = 76;
    v21 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneTopology(const UsdSkelTopology &, HdMeshTopology *, size_t *)";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "'numPoints' pointer is null.");
  }

  else
  {
    v18 = "usdSkelImaging/utils.cpp";
    v19 = "UsdSkelImagingComputeBoneTopology";
    v20 = 72;
    v21 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneTopology(const UsdSkelTopology &, HdMeshTopology *, size_t *)";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "'meshTopology' pointer is null.");
  }

  return 0;
}

void sub_29B080620(uint64_t a1, ...)
{
  va_start(va, a1);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(va);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(unint64_t *a1, uint64_t *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = *a2;
    v7 = *a1;
    if (*a2 == *a1)
    {
      LODWORD(v13) = 0;
      v12 = 0;
      v17 = &v12;
      sub_29A193304(a4, a3, &v17);
      v10 = a2[4];
      sub_29A1935CC(a4);
      return pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(a1, v10, *(a4 + 32), a3);
    }

    v12 = "usdSkelImaging/utils.cpp";
    v13 = "UsdSkelImagingComputeBonePoints";
    v14 = 205;
    v15 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(const UsdSkelTopology &, const VtMatrix4dArray &, size_t, VtVec3fArray *)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v12, "jointSkelXforms.size() [%zu] != number of joints [%zu].", a3, v6, v7);
  }

  else
  {
    v12 = "usdSkelImaging/utils.cpp";
    v13 = "UsdSkelImagingComputeBonePoints";
    v14 = 193;
    v15 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(const UsdSkelTopology &, const VtMatrix4dArray &, size_t, VtVec3fArray *)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "'points' pointer is null.");
  }

  return 0;
}

BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x29EDCA608];
  v28 = a3;
  v29 = a2;
  v27 = a4;
  if (a3 || !a4)
  {
    v7 = *a1;
    v26 = *a1;
    LODWORD(v31) = -1;
    v8 = sub_29B01DC2C(__p, v7, &v31);
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      v13 = a1[4];
      v14 = __p[0];
      v15 = *a1;
      do
      {
        v17 = *v13++;
        v16 = v17;
        if ((v17 & 0x80000000) == 0 && v16 < v7)
        {
          *v14 = v12++;
          v11 += 5;
        }

        ++v14;
        --v15;
      }

      while (v15);
    }

    else
    {
      v11 = 0;
    }

    v6 = v11 == a4;
    if (v11 == a4)
    {
      v24[0] = __p;
      v24[1] = &v27;
      v24[2] = a1;
      v24[3] = &v26;
      v24[4] = &v28;
      v24[5] = &v29;
      if (v10 > 0x3E7 && pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v8))
      {
        LODWORD(v31) = 0;
        v36 = 65539;
        v37 = 55;
        tbb::task_group_context::init(&v31, v18, v19, v20);
        v30 = &v31;
        v21 = tbb::internal::allocate_root_with_context_proxy::allocate(&v30, 0x38uLL);
        *(v21 - 11) = 1;
        *v21 = &unk_2A20B3DC0;
        *(v21 + 8) = v10;
        *(v21 + 16) = xmmword_29B430070;
        *(v21 + 32) = v24;
        initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v21);
        *(v21 + 48) = 0;
        *(v21 + 52) = 5;
        *(v21 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
        (*(**(v21 - 40) + 16))(*(v21 - 40), v21, v21 - 8);
        tbb::task_group_context::~task_group_context(&v31);
      }

      else
      {
        sub_29B080C14(v24, 0, v10);
      }
    }

    else
    {
      v31 = "usdSkelImaging/utils.cpp";
      v32 = "UsdSkelImagingComputeBonePoints";
      v33 = 237;
      v34 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(const UsdSkelTopology &, const GfMatrix4d *, GfVec3f *, size_t)";
      v35 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v31, "number of points [%zu] does not match the size of the input point array [%zu].", v9, v11, a4);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v31 = "usdSkelImaging/utils.cpp";
    v32 = "UsdSkelImagingComputeBonePoints";
    v33 = 218;
    v34 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBonePoints(const UsdSkelTopology &, const GfMatrix4d *, GfVec3f *, size_t)";
    v35 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v31, 1, "'points' pointer is null.");
    return 0;
  }

  return v6;
}

void sub_29B080A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29)
{
  tbb::internal::allocate_root_with_context_proxy::free(&a25, v29);
  tbb::task_group_context::~task_group_context(&a27);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneJointIndices(uint64_t *a1, void *a2, char *a3)
{
  if (a2)
  {
    v9 = 0;
    v7[0] = &v9;
    sub_29A19D7EC(a2, a3, v7);
    sub_29A19DBEC(a2);
    return pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneJointIndices(a1, a2[4], a3);
  }

  else
  {
    v7[0] = "usdSkelImaging/utils.cpp";
    v7[1] = "UsdSkelImagingComputeBoneJointIndices";
    v7[2] = 275;
    v7[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneJointIndices(const UsdSkelTopology &, VtIntArray *, size_t)";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "'jointIndices' pointer is null.");
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneJointIndices(uint64_t *a1, uint64_t a2, char *a3)
{
  if (!a2 && a3)
  {
    v11 = "usdSkelImaging/utils.cpp";
    v12 = "UsdSkelImagingComputeBoneJointIndices";
    v13 = 291;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneJointIndices(const UsdSkelTopology &, int *, size_t)";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "'jointIndices' pointer is null.");
    return 0;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = a1[4];
  while (1)
  {
    v8 = *(v7 + 4 * v5);
    if (v8 < 0 || v8 >= v4)
    {
      goto LABEL_11;
    }

    v9 = v6 + 5;
    if (v6 + 5 > a3)
    {
      break;
    }

    v10 = a2 + 4 * v6;
    *v10 = v5;
    *(v10 + 4) = vdupq_n_s32(v8);
    v6 = v9;
LABEL_11:
    if (v4 == ++v5)
    {
      return 1;
    }
  }

  v11 = "usdSkelImaging/utils.cpp";
  v12 = "UsdSkelImagingComputeBoneJointIndices";
  v13 = 318;
  v14 = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelImagingComputeBoneJointIndices(const UsdSkelTopology &, int *, size_t)";
  v15 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v11, "Incorrect number of points for bone mesh [%zu].", a3, a3);
  return 0;
}

uint64_t sub_29B080C14(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    do
    {
      v3 = *(**result + 4 * a2);
      if ((v3 & 0x80000000) == 0)
      {
        v4 = 0;
        v5 = 0;
        v6 = 60 * v3;
        v7 = **(result + 40);
        v8 = (v7 + (*(*(*(result + 16) + 32) + 4 * a2) << 7));
        v9 = (v7 + (a2 << 7));
        v10 = vcvt_f32_f64(v9[6]);
        v11 = v9[7].f64[0];
        v12 = vcvt_f32_f64(v8[6]);
        v13 = v8[7].f64[0];
        v14 = vsub_f32(v10, v12);
        v15 = vmul_f32(v14, v14);
        v16.i32[0] = vdup_lane_s32(v10, 1).u32[0];
        v16.f32[1] = v11;
        v17.i32[0] = vdup_lane_s32(v12, 1).u32[0];
        v17.f32[1] = v13;
        v18 = v14.f32[0];
        v19 = vsub_f32(v16, v17);
        v20 = vmul_f32(v19, v19);
        v21 = sqrtf(vadd_f32(vadd_f32(v15, v20), vdup_lane_s32(v20, 1)).f32[0]);
        v22 = 1.0 / fmaxf(v21, 1.0e-10);
        v17.f32[0] = v22 * v18;
        v23 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v19), v22));
        v24 = v17.f32[0];
        v25 = vcvtq_f64_f32(v23);
        do
        {
          v26 = v5;
          v27 = &v8[2 * v5];
          v28 = vmulq_f64(*(v27 + 8), v25);
          v29 = fabs(v27->f64[0] * v24 + v28.f64[0] + v28.f64[1]);
          if (v4)
          {
            break;
          }

          v4 = 1;
          v5 = 1;
        }

        while (v29 <= 0.785398185);
        v30 = **(result + 32) + v6;
        if (v29 <= 0.785398185)
        {
          v31 = 2;
        }

        else
        {
          v31 = v26;
        }

        v32 = &v8[2 * dword_29B741A4C[v31]];
        v33 = v32[1].f64[0];
        v34 = &v8[2 * dword_29B741A58[v31]];
        v35 = v34[1].f64[0];
        v36 = v21 * 0.1;
        v37 = vcvt_f32_f64(*v32);
        v38 = 1.0 / fmaxf(sqrtf(vaddv_f32(vmul_f32(v37, v37)) + (v33 * v33)), 1.0e-10);
        v39 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v37), v38));
        v40 = v38 * v33;
        v41 = vcvt_f32_f64(*v34);
        v42 = 1.0 / fmaxf(sqrtf(vaddv_f32(vmul_f32(v41, v41)) + (v35 * v35)), 1.0e-10);
        v43 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v41), v42));
        v44 = v42 * v35;
        v45 = vmul_n_f32(v39, v36);
        v46 = v36 * v40;
        v47 = vmul_n_f32(v43, v36);
        v48 = v36 * v44;
        *v30 = v10;
        *(v30 + 8) = v11;
        v49 = vadd_f32(v45, v12);
        *(v30 + 12) = vadd_f32(v49, v47);
        *(v30 + 20) = (v46 + v13) + v48;
        *(v30 + 24) = vsub_f32(v49, v47);
        *(v30 + 32) = (v46 + v13) - v48;
        v50 = v13 - v46;
        v51 = vsub_f32(v12, v45);
        *(v30 + 36) = vsub_f32(v51, v47);
        *(v30 + 44) = v50 - v48;
        *(v30 + 48) = vadd_f32(v51, v47);
        *(v30 + 56) = v50 + v48;
      }

      ++a2;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t sub_29B080E7C(tbb::internal::allocate_continuation_proxy *this)
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
        *v11 = &unk_2A20B3DC0;
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
          *v23 = &unk_2A20B3DC0;
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

      sub_29B080C14(*(this + 4), *(&v31 + 3 * v28 + 1), *(&v31 + 3 * v28));
      v19 = --v30[2];
      v30[0] = (v30[0] - 1) & 7;
LABEL_25:
      if (!v19 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29B080C14(*(this + 4), v6, v4);
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset::UsdImagingDataSourceFieldAsset(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A20B3E08;
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  *(a1 + 16) = *a3;
  v8 = *(a3 + 8);
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 32), (a3 + 16));
  sub_29A1E2240((a1 + 36), (a3 + 20));
  v9 = *(a3 + 24);
  *(a1 + 40) = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 48) = a4;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset::~UsdImagingDataSourceFieldAsset(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset *this)
{
  *this = &unk_2A20B3E08;
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 9);
  sub_29A1DE3A4(this + 8);
  v4 = *(this + 3);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 3);
  sub_29A1DE3A4(this + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset::~UsdImagingDataSourceFieldAsset(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset::GetNames(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset *this@<X0>, void *a2@<X8>)
{
  v14 = *(this + 4);
  v4 = *(this + 3);
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v16, this + 8);
  v5 = sub_29A1E2240(&v17, this + 9);
  v6 = *(this + 5);
  v18 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v18 &= 0xFFFFFFFFFFFFFFF8;
  }

  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdVolOpenVDBAsset::_GetStaticTfType(v5);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v8);
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(&v14, SchemaInfo);
  if (IsA)
  {
    sub_29B081C2C();
  }

  else
  {
    v11 = pxrInternal__aapl__pxrReserved__::UsdVolField3DAsset::_GetStaticTfType(IsA);
    v13 = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(v11, v12);
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(&v14, v13))
    {
      sub_29B081CF0();
    }

    else
    {
      v19[0] = "usdVolImaging/dataSourceFieldAsset.cpp";
      v19[1] = "_GetUsdAttributeNames";
      v19[2] = 70;
      v19[3] = "const TfTokenVector &pxrInternal__aapl__pxrReserved__::_GetUsdAttributeNames(UsdPrim)";
      v20 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v19, 1, "Unsupported field type.");
      if ((atomic_load_explicit(&qword_2A1758B68, memory_order_acquire) & 1) == 0)
      {
        sub_29B2D04A8(v19);
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29B0815D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute((this + 16), a2, v2);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v2);
}

void sub_29B0816E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29ABC3488(va1);
  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::UsdImagingDataSourceFieldAssetPrim(void *a1, _DWORD *a2, int *a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 1);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, a3 + 4);
  sub_29A1E2240(&v15, a3 + 5);
  v9 = *(a3 + 3);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::UsdImagingDataSourcePrim(a1, a2, &v12, a4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  sub_29A1DE3A4(&v14);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
  }

  *a1 = &unk_2A20B3E38;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim *this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(this, a2);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  return sub_29A1D8028(a2, v3);
}

void sub_29B0818AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  if ((*v6 ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Get(this, a2, a3);
  }

  else
  {
    sub_29B08197C(this + 2, this + 4, *(this + 6), &v7);
    *a3 = v7;
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29B08197C@<X0>(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 1);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v10 = *(a2 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAsset::UsdImagingDataSourceFieldAsset(v8, a1, &v13, a3);
  sub_29B081FA0(a4, v8);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  result = v14;
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::Invalidate(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Invalidate(a2, a3, a4, a5);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdVolOpenVDBAsset::_GetStaticTfType(v8);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v10);
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a1, SchemaInfo);
  if (IsA)
  {
    sub_29B081C2C();
    v13 = &qword_2A1758B28;
  }

  else
  {
    v14 = pxrInternal__aapl__pxrReserved__::UsdVolField3DAsset::_GetStaticTfType(IsA);
    v16 = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(v14, v15);
    if (!pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a1, v16))
    {
      v22[0] = "usdVolImaging/dataSourceFieldAsset.cpp";
      v22[1] = "Invalidate";
      v22[2] = 146;
      v22[3] = "static HdDataSourceLocatorSet pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::Invalidate(const UsdPrim &, const TfToken &, const TfTokenVector &, const UsdImagingPropertyInvalidationType)";
      v23 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v22, 1, "Unsupported field type.");
      goto LABEL_16;
    }

    sub_29B081CF0();
    v13 = &qword_2A1758B48;
  }

  v17 = sub_29A34AC54(&v24, *v13, v13[1], (v13[1] - *v13) >> 3);
  v18 = *a3;
  v19 = a3[1];
  if (*a3 != v19)
  {
    while (1)
    {
      v20 = v24;
      if (v24 != v25)
      {
        v20 = v24;
        while ((*v20 ^ *v18) >= 8)
        {
          if (++v20 == v25)
          {
            goto LABEL_12;
          }
        }
      }

      if (v20 != v25)
      {
        break;
      }

LABEL_12:
      v18 = (v18 + 8);
      if (v18 == v19)
      {
        goto LABEL_16;
      }
    }

    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::GetDefaultLocator(v17);
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, DefaultLocator);
  }

LABEL_16:
  v22[0] = &v24;
  sub_29A124AB0(v22);
}

void sub_29B081C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a9 = &a14;
  sub_29A124AB0(&a9);
  sub_29ABD3178();
}

void sub_29B081C2C()
{
  if ((atomic_load_explicit(&qword_2A1758B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758B40))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdVolFieldAsset::GetSchemaAttributeNames(0);
    v1 = pxrInternal__aapl__pxrReserved__::UsdVolOpenVDBAsset::GetSchemaAttributeNames(0);
    sub_29B081EF0(SchemaAttributeNames, v1, &qword_2A1758B28);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1758B28, &dword_299FE7000);

    __cxa_guard_release(&qword_2A1758B40);
  }
}

void sub_29B081CF0()
{
  if ((atomic_load_explicit(&qword_2A1758B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758B60))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdVolFieldAsset::GetSchemaAttributeNames(0);
    v1 = pxrInternal__aapl__pxrReserved__::UsdVolField3DAsset::GetSchemaAttributeNames(0);
    sub_29B081EF0(SchemaAttributeNames, v1, &qword_2A1758B48);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1758B48, &dword_299FE7000);

    __cxa_guard_release(&qword_2A1758B60);
  }
}

void sub_29B081DB4(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B081E50(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

char *sub_29B081EF0@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29A1D7F98(a3, a2[1] - *a2 + a1[1] - *a1);
  sub_29A372808(a3, a3[1], *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(a3, a3[1], *a2, a2[1], a2[1] - *a2);
}

void sub_29B081F80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void *sub_29B081FA0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B3E98;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B081FF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B082014(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B08203C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B08206C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B3EE8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B0820AC()
{
  v1 = nullsub_1824;
  return sub_29B082800(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::~UsdImagingOpenVDBAssetAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter *this)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::~UsdImagingFieldAdapter(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  v4 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = sub_29A12EF7C(a1, &v4, &v5, 1uLL);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v5 = 0;
LABEL_3:
    *a2 = v5;
    return;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  if (!v6)
  {
    v6 = sub_29B082A2C(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  }

  v7 = *(v6 + 1);
  *a2 = v7;
  if ((v7 & 7) != 0)
  {
    v5 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B0822E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B0822F8@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 1);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v10 = *(a2 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::UsdImagingDataSourceFieldAssetPrim(v8, a1, &v13, a3);
  sub_29B082AB8(a4, v8);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  result = v14;
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::InvalidateImagingSubprim(uint64_t a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::Invalidate(a1, a2, a3, a4, a5);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v8)
  {
    v8 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v8 + 11) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v9)
  {
    v9 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v9 + 9) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v10)
  {
    v10 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v10 + 8) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v11)
  {
    v11 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v11 + 7) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v12)
  {
    v12 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v12 + 36) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v13)
  {
    v13 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v13 + 6) ^ *a3) <= 7)
  {
LABEL_19:
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(this, a3, &v14);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v14);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::Get(this, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingOpenVDBAssetAdapter::GetPrimTypeToken@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  if (!result)
  {
    result = sub_29B082A2C(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  }

  v4 = *(result + 1);
  *a1 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v5;
    }
  }

  return result;
}

uint64_t sub_29B082800(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B4158;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B08288C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0828B0(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B0828D8@<D0>(_OWORD *a1@<X8>)
{
  sub_29B082914(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B082914(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B4198;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v2[3] = &unk_2A20B3F10;
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B0829C0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B4198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType *sub_29B082A2C(atomic_ullong *a1)
{
  result = sub_29B082A74();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType::~UsdVolImagingTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType *sub_29B082A74()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType::UsdVolImagingTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29B082AB8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B41E8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B082B10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B082B2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B082B54(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B082B84(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B4238))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B082BC4()
{
  v1 = nullsub_1825;
  return sub_29B0831DC(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::~UsdImagingField3DAssetAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter *this)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::~UsdImagingFieldAdapter(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  v4 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = sub_29A12EF7C(a1, &v4, &v5, 1uLL);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v5 = 0;
LABEL_3:
    *a2 = v5;
    return;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  if (!v6)
  {
    v6 = sub_29B082A2C(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  }

  v7 = *v6;
  *a2 = *v6;
  if ((v7 & 7) != 0)
  {
    v5 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B082DFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::InvalidateImagingSubprim(uint64_t a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceFieldAssetPrim::Invalidate(a1, a2, a3, a4, a5);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v8)
  {
    v8 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v8 + 11) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v9)
  {
    v9 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v9 + 9) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v10)
  {
    v10 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v10 + 8) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v11)
  {
    v11 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v11 + 10) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v12)
  {
    v12 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v12 + 7) ^ *a3) < 8)
  {
    goto LABEL_19;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  if (!v13)
  {
    v13 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
  }

  if ((*(v13 + 36) ^ *a3) <= 7)
  {
LABEL_19:
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(this, a3, &v14);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v14);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::Get(this, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingField3DAssetAdapter::GetPrimTypeToken@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  if (!result)
  {
    result = sub_29B082A2C(&pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens);
  }

  v4 = *result;
  *a1 = *result;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v5;
    }
  }

  return result;
}

uint64_t sub_29B0831DC(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B44A8;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B083268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B08328C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B0832B4@<D0>(_OWORD *a1@<X8>)
{
  sub_29B0832F0(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B0832F0(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B44E8;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v2[3] = &unk_2A20B4260;
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B08339C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B44E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType::~UsdVolImagingTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdVolImagingTokens_StaticTokenType::UsdVolImagingTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "field3dAsset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "openvdbAsset", 0);
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

void sub_29B083584(_Unwind_Exception *a1)
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdAppUtilsGetCameraAtPath@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v6 = sub_29B2ACEC8(a1);
  if (v7 & 1 | v6)
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(a2))
    {
      sub_29A1E21F4(&v17, a2);
      sub_29A1E2240(v18, a2 + 1);
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a2))
      {
        PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2);
        if (PathElementCount >= 2)
        {
          v9 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(PathElementCount);
          pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(a2, v9, &v12);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(PathElementCount);
        pxrInternal__aapl__pxrReserved__::UsdPrimRange::Stage();
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomCamera::Get(a1, a3);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v18);
      return sub_29A1DE3A4(&v17);
    }

    LODWORD(v12) = 1;
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14 + 1);
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v12);
    *a3 = &unk_2A205FB90;
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v12 = "usdAppUtils/camera.cpp";
    v13 = "UsdAppUtilsGetCameraAtPath";
    v14 = 28;
    v15 = "UsdGeomCamera pxrInternal__aapl__pxrReserved__::UsdAppUtilsGetCameraAtPath(const UsdStagePtr &, const SdfPath &)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "Invalid stage");
    LODWORD(v12) = 1;
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14 + 1);
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v12);
    *a3 = &unk_2A205FB90;
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  result = v13;
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
  }

  return result;
}

void sub_29B083B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_29A58BD10(va);
  sub_29A1DCEA8((v16 - 96));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::UsdAppUtilsFrameRecorder(pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, char a3)
{
  v3[3] = *MEMORY[0x29EDCA608];
  memset(v3, 0, 24);
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine(this, v3, a2, a3);
}

void sub_29B083DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(v9 + 66);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::~UsdImagingGLEngine(v9);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::SetActiveRenderSettingsPrimPath(pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A2258F0(this + 142, a2);
  sub_29A225948(this + 143, a2 + 1);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 142);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::SetActiveRenderSettingsPrimPath(this, (this + 568));
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::SetActiveRenderPassPrimPath(pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A2258F0(this + 140, a2);
  sub_29A225948(this + 141, a2 + 1);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 140);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::SetActiveRenderPassPrimPath(this, (this + 560));
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::SetColorCorrectionMode(pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::GetGPUEnabled(this))
  {

    return sub_29A166F2C(this + 66, a2);
  }

  else
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
    if (!v6)
    {
      v6 = sub_29AECDE6C(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
    }

    if ((*v6 ^ *a2) >= 8)
    {
      v8[0] = "usdAppUtils/frameRecorder.cpp";
      v8[1] = "SetColorCorrectionMode";
      v8[2] = 89;
      v8[3] = "void pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::SetColorCorrectionMode(const TfToken &)";
      v9 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v8, "Color correction presently unsupported when the GPU is disabled.", v4);
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
    if (!v7)
    {
      v7 = sub_29AECDE6C(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
    }

    return sub_29A166F2C(this + 66, v7);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::SetIncludedPurposes(uint64_t a1, uint64_t **a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v4)
  {
    v4 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v5 = *(v4 + 119);
  v24 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v6)
  {
    v6 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v7 = *(v6 + 111);
  v25 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v9 = *(v8 + 49);
  v26 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_29A12EF7C(&v21, &v24, &v27, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v24 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v13 = *(v12 + 29);
  v24 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A5CC36C((a1 + 536), &v24, &v25, 1uLL);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *a2;
  v15 = a2[1];
  if (*a2 != v15)
  {
    do
    {
      v16 = v21;
      if (v21 != v22)
      {
        while ((*v16 ^ *v14) >= 8)
        {
          if (++v16 == v22)
          {
            goto LABEL_34;
          }
        }
      }

      if (v16 == v22)
      {
LABEL_34:
        v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v17)
        {
          v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        v18 = *v14;
        if ((*(v17 + 29) ^ *v14) >= 8)
        {
          v24 = "usdAppUtils/frameRecorder.cpp";
          v25 = "SetIncludedPurposes";
          v26 = 123;
          v27 = "void pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::SetIncludedPurposes(const TfTokenVector &)";
          v28 = 0;
          v19 = v18 & 0xFFFFFFFFFFFFFFF8;
          if ((v18 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v20 = (v19 + 16);
            if (*(v19 + 39) < 0)
            {
              v20 = *v20;
            }
          }

          else
          {
            v20 = "";
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 1, "Unrecognized purpose value '%s'.", v20);
        }
      }

      else
      {
        sub_29A1D8028(a1 + 536, v14);
      }

      ++v14;
    }

    while (v14 != v15);
  }

  v24 = &v21;
  sub_29A124AB0(&v24);
}

void sub_29B0843D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_29A124AB0(&a13);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::Record(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v15 = a1;
  v6 = sub_29B2ACEC8(a3);
  if (v7 & 1 | v6)
  {
    v8 = *(a5 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a5 + 8);
    }

    if (v8)
    {
      v20 = 0;
      v19 = 0;
      v13 = xmmword_29B742180;
      v14 = xmmword_29B6C5D40;
      v12 = xmmword_29B6C5D10;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v21, 1.0);
      *&v10 = 0x497424003F800000;
      v17 = 0;
      __p = 0;
      v18 = 0;
      pxrInternal__aapl__pxrReserved__::GfCamera::GfCamera(v11, &v21, 0, &v10, 20.955, 15.2908, 0.0, 0.0, 50.0);
    }

    *&v21 = "usdAppUtils/frameRecorder.cpp";
    *(&v21 + 1) = "Record";
    v22 = 366;
    v23 = "BOOL pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::Record(const UsdStagePtr &, const UsdGeomCamera &, const UsdTimeCode, const std::string &)";
    LOBYTE(v24) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 1, "Invalid empty output image path");
  }

  else
  {
    *&v21 = "usdAppUtils/frameRecorder.cpp";
    *(&v21 + 1) = "Record";
    v22 = 361;
    v23 = "BOOL pxrInternal__aapl__pxrReserved__::UsdAppUtilsFrameRecorder::Record(const UsdStagePtr &, const UsdGeomCamera &, const UsdTimeCode, const std::string &)";
    LOBYTE(v24) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 1, "Invalid stage");
  }

  return 0;
}

void sub_29B085850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A7835BC(&STACK[0x470]);
  if (__p)
  {
    operator delete(__p);
  }

  if (a69)
  {
    operator delete(a69);
  }

  _Unwind_Resume(a1);
}

void *sub_29B085B60(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = a1[19];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = a1[18];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = a1[17];
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = a1[15];
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = a1[9];
  if (v8)
  {
    a1[10] = v8;
    operator delete(v8);
  }

  return a1;
}

void *sub_29B085C24(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A20B4538;
  result[1] = v3;
  return result;
}

uint64_t sub_29B085C6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A20B4538;
  a2[1] = v2;
  return result;
}

uint64_t sub_29B085C98(uint64_t a1)
{
  result = *(*(a1 + 8) + 24);
  if (result)
  {
    return (*(*result + 96))();
  }

  return result;
}

uint64_t sub_29B085CCC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B4598))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdShadersDiscoveryPlugin::GetSearchURIs(pxrInternal__aapl__pxrReserved__::UsdShadersDiscoveryPlugin *this)
{
  *&v4 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1758BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758BA0))
  {
    sub_29B085E38("", __p);
    qword_2A1758B88 = 0;
    unk_2A1758B90 = 0;
    qword_2A1758B98 = 0;
    sub_29A280C48(&qword_2A1758B88, __p, &v4, 1uLL);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(sub_29A1C9440, &qword_2A1758B88, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1758BA0);
  }

  return &qword_2A1758B88;
}

void sub_29B085E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1758BA0);
  _Unwind_Resume(a1);
}

void sub_29B085E38(char *a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1758BD8, memory_order_acquire) & 1) == 0)
  {
    v8 = __cxa_guard_acquire(&qword_2A1758BD8);
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v8);
      sub_29A008E78(&__p, "usdShaders");
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginWithName(&__p, qword_2A1758BC8);
      if (v10 < 0)
      {
        operator delete(__p);
      }

      __cxa_atexit(sub_29B2B8168, qword_2A1758BC8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758BD8);
    }
  }

  sub_29A008E78(v14, "shaders");
  sub_29A008E78(v12, a1);
  pxrInternal__aapl__pxrReserved__::TfStringCatPaths(v14, v12, &__p);
  pxrInternal__aapl__pxrReserved__::PlugFindPluginResource(qword_2A1758BC8, a2);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (!v6)
  {
    LOBYTE(v11) = 0;
    v7 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Could not find shader resource: %s\n", v4, v5, a1, "usdShaders/discoveryPlugin.cpp", "_GetShaderResourcePath", 37, "std::string pxrInternal__aapl__pxrReserved__::_GetShaderResourcePath(const char *)", v11);
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "!path.empty()", v7);
  }
}

void sub_29B085FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1758BD8);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdShadersDiscoveryPlugin::DiscoverNodes(pxrInternal__aapl__pxrReserved__ *a1@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if ((atomic_load_explicit(&qword_2A1758BC0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_2A1758BC0);
    if (a1)
    {
      sub_29B085E38("shaderDefs.usda", &qword_2A1758BA8);
      __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A1758BA8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758BC0);
    }
  }

  v2 = qword_2A1758BB0;
  if (byte_2A1758BBF >= 0)
  {
    v2 = byte_2A1758BBF;
  }

  if (v2)
  {
    Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
    pxrInternal__aapl__pxrReserved__::ArResolver::CreateDefaultContextForAsset(Resolver);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open(&qword_2A1758BA8, v5, 0, &v4);
  }
}

void sub_29B086514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37)
{
  __cxa_guard_abort(&qword_2A1758BC0);
  sub_29A403324(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_29B08662C()
{
  v2 = nullsub_1828;
  return sub_29B0866B4(v0);
}

void sub_29B08668C(pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin::~NdrDiscoveryPlugin(a1, a2);

  operator delete(v2);
}

uint64_t sub_29B0866B4(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B4600;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B086740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B086764(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29B08678C@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x18uLL);
  pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin::NdrDiscoveryPlugin(v2);
  *v2 = &unk_2A20B45B8;
  *a1 = v2;
  v4 = 0;
  return sub_29B086804(&v4);
}

uint64_t sub_29B086834()
{
  v2 = nullsub_1829;
  return sub_29B087D34(v0);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin::GetDiscoveryTypes(pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin *this)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1758BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758BF8))
  {
    v2 = atomic_load(&qword_2A1758C00);
    if (!v2)
    {
      v2 = sub_29B087F90();
    }

    v3 = *v2;
    v5 = v3;
    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
      {
        v5 = v4;
      }
    }

    qword_2A1758BE0 = 0;
    *algn_2A1758BE8 = 0;
    qword_2A1758BF0 = 0;
    sub_29A12EF7C(&qword_2A1758BE0, &v5, &v6, 1uLL);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1758BE0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1758BF8);
  }

  return &qword_2A1758BE0;
}

unint64_t pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin::GetSourceType(pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin *this)
{
  v1 = atomic_load(&qword_2A1758C00);
  if (!v1)
  {
    v1 = sub_29B087F90();
  }

  return v1 + 8;
}

void pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin::Parse(uint64_t a1@<X1>, char *a2@<X2>, void *a3@<X8>)
{
  v60[20] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 95);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 80);
  }

  if (v5)
  {
    v6 = operator new(0x138uLL);
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    if (!v7)
    {
      v7 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v6, a1 + 96, v7 + 112);
LABEL_15:
    memset(&v47, 0, sizeof(v47));
    if ((pxrInternal__aapl__pxrReserved__::HioGlslfx::IsValid(v6, &v47) & 1) == 0)
    {
      *&v55 = "sdrGlslfx/parserPlugin.cpp";
      *(&v55 + 1) = "Parse";
      *&v56 = 198;
      *(&v56 + 1) = "virtual NdrNodeUniquePtr pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin::Parse(const NdrNodeDiscoveryResult &)";
      LOBYTE(v57) = 0;
      if (*(a1 + 95) >= 0)
      {
        v11 = a1 + 72;
      }

      else
      {
        v11 = *(a1 + 72);
      }

      v12 = &v47;
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v47.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v55, "Failed to parse glslfx at URI [%s] error [%s]", v10, v11, v12);
    }

    memset(v46, 0, sizeof(v46));
    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetParameters(v6, &v44);
    v14 = v44;
    for (i = v45; v14 != i; v14 += 72)
    {
      v48 = 0;
      v49.__r_.__value_.__r.__words[0] = 0;
      sub_29A186EF4(v54, (v14 + 24));
      sub_29B0874F0(v54, &v49, &v48, &v50);
      sub_29A186B14(v54);
      v55 = 0u;
      v56 = 0u;
      v57 = 1065353216;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v38 = 0u;
      v39 = 0u;
      v40 = 1065353216;
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v36);
      v15 = operator new(0x108uLL);
      pxrInternal__aapl__pxrReserved__::SdrShaderProperty::SdrShaderProperty(v15, &v36, &v48, &v50, 0, v49.__r_.__value_.__l.__data_, &v38, &v55, &v41);
      v37 = v15;
      sub_29AAC21F8(v46, &v37);
      v16 = v37;
      v37 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_29A40349C(&v38);
      *&v38 = &v41;
      sub_29A40DADC(&v38);
      sub_29A40349C(&v55);
      sub_29A186B14(&v50);
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v34 = v6;
    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetTextures(v6, &v41);
    v17 = v41;
    for (j = v42; v17 != j; v17 += 8)
    {
      v48 = 0;
      v37 = 0;
      sub_29A186EF4(v53, v17 + 3);
      sub_29B0874F0(v53, &v48, &v37, &v49);
      sub_29A186B14(v53);
      if (!v49.__r_.__value_.__l.__size_)
      {
        v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        if (!v19)
        {
          v19 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        }

        sub_29A166F2C(&v37, v19 + 4);
        *(&v55 + 1) = &off_2A2042840 + 2;
        v20 = operator new(0x10uLL);
        *v20 = 0;
        v20[2] = 0;
        atomic_store(0, v20 + 3);
        *&v55 = v20;
        atomic_fetch_add_explicit(v20 + 3, 1u, memory_order_relaxed);
        sub_29A18606C(&v49, &v55);
        sub_29A186B14(&v55);
      }

      v55 = 0u;
      v56 = 0u;
      v57 = 1065353216;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v38 = 0u;
      v39 = 0u;
      v40 = 1065353216;
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v35);
      v21 = operator new(0x108uLL);
      pxrInternal__aapl__pxrReserved__::SdrShaderProperty::SdrShaderProperty(v21, &v35, &v37, &v49, 0, v48, &v38, &v55, &v50);
      v36 = v21;
      sub_29AAC21F8(v46, &v36);
      v22 = v36;
      v36 = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_29A40349C(&v38);
      *&v38 = &v50;
      sub_29A40DADC(&v38);
      sub_29A40349C(&v55);
      sub_29A186B14(&v49);
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    sub_29A404A70(&v55, a1 + 144);
    v38 = 0uLL;
    *&v39 = 0;
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
    if (!v23)
    {
      v23 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
    }

    if (sub_29A16039C(&v55, v23 + 6))
    {
      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
      if (!v24)
      {
        v24 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
      }

      if (sub_29A160470(&v55, v24 + 6))
      {
        sub_29A070BA0(&v38);
      }

      sub_29A0F26E4("unordered_map::at: key not found");
    }

    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetAttributes(v34, &v50);
    if (v50 != v51)
    {
      sub_29A070BA0(&v38);
    }

    pxrInternal__aapl__pxrReserved__::TfStringJoin("|", &v38, &v49);
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
    if (!v25)
    {
      v25 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
    }

    v48 = (v25 + 48);
    v26 = sub_29A7D3598(&v55, v25 + 6, &unk_29B4D6118, &v48);
    v27 = v26;
    if (SHIBYTE(v26[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26[1].__r_.__value_.__l.__data_);
    }

    v27[1] = v49;
    v28 = atomic_load(&qword_2A1758C00);
    if (!v28)
    {
      v28 = sub_29B087F90();
    }

    v29 = atomic_load(&qword_2A1758C00);
    if (!v29)
    {
      v29 = sub_29B087F90();
    }

    v30 = operator new(0x220uLL);
    pxrInternal__aapl__pxrReserved__::SdrShaderNode::SdrShaderNode(v30, a1, (a1 + 8), (a1 + 24), (a1 + 48), (v28 + 8), (v29 + 8), (a1 + 96), (a1 + 96), v46, &v55, (a1 + 120));
    *a3 = v30;
    v49.__r_.__value_.__r.__words[0] = &v50;
    sub_29AB645B8(&v49);
    v50 = &v38;
    sub_29A012C90(&v50);
    sub_29A40349C(&v55);
    *&v55 = &v41;
    sub_29AB645B8(&v55);
    *&v55 = &v44;
    sub_29AB646A0(&v55);
    *&v55 = v46;
    sub_29A405D94(&v55);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    v31 = sub_29ADC1D14(v34);
    operator delete(v31);
    return;
  }

  v8 = *(a1 + 143);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 128);
  }

  if (v8)
  {
    sub_29A5DB8D8(&v55, (a1 + 120), 8);
    v6 = operator new(0x138uLL);
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    if (!v9)
    {
      v9 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v6, &v55, v9 + 112);
    *&v55 = *MEMORY[0x29EDC9530];
    *(&v55 + *(v55 - 24)) = *(MEMORY[0x29EDC9530] + 24);
    *&v56 = MEMORY[0x29EDC9570] + 16;
    if (v59 < 0)
    {
      operator delete(__p);
    }

    *&v56 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(&v56 + 1);
    std::istream::~istream();
    MEMORY[0x29C2C4390](v60);
    goto LABEL_15;
  }

  *&v55 = "sdrGlslfx/parserPlugin.cpp";
  *(&v55 + 1) = "Parse";
  *&v56 = 189;
  *(&v56 + 1) = "virtual NdrNodeUniquePtr pxrInternal__aapl__pxrReserved__::SdrGlslfxParserPlugin::Parse(const NdrNodeDiscoveryResult &)";
  LOBYTE(v57) = 0;
  v32 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v32)
  {
    v33 = (v32 + 16);
    if (*(v32 + 39) < 0)
    {
      v33 = *v33;
    }
  }

  else
  {
    v33 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v55, "Invalid NdrNodeDiscoveryResult with identifier %s: both uri and sourceCode are empty.", a2, v33);
  pxrInternal__aapl__pxrReserved__::NdrParserPlugin::GetInvalidNode(a1, a3);
}

void sub_29B087280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, char a51, uint64_t a52, char *a53)
{
  sub_29A186B14(&a40);
  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a53 = &a24;
  sub_29AB645B8(&a53);
  a53 = &a27;
  sub_29AB646A0(&a53);
  a53 = &a30;
  sub_29A405D94(&a53);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  v54 = sub_29ADC1D14(a15);
  operator delete(v54);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::VtValue *sub_29B0874F0@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, void *a2@<X1>, void *a3@<X2>, pxrInternal__aapl__pxrReserved__::VtValue **a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  if (!v8)
  {
    v8 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
  }

  sub_29A166F2C(a3, v8 + 13);
  *a2 = 0;
  if (!sub_29A1D0DBC(a1))
  {
    if (sub_29A346994(a1))
    {
      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      if (!v16)
      {
        v16 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      }

      result = sub_29A166F2C(a3, v16 + 2);
      v18 = *(a1 + 1);
      if ((v18 & 4) != 0)
      {
        result = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
        a1 = result;
      }

      v19 = *a1;
      goto LABEL_20;
    }

    if (!sub_29A3F9DF4(a1))
    {
      if (sub_29A293A9C(a1))
      {
        v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        if (!v34)
        {
          v34 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        }

        result = sub_29A166F2C(a3, v34);
        v35 = *(a1 + 1);
        if ((v35 & 4) != 0)
        {
          result = (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
          a1 = result;
        }

        a4[1] = &unk_2A204475B;
        v36 = *a1;
      }

      else
      {
        if (!sub_29A1EFCDC(a1))
        {
          goto LABEL_97;
        }

        v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        if (!v57)
        {
          v57 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        }

        result = sub_29A166F2C(a3, v57);
        v58 = *(a1 + 1);
        if ((v58 & 4) != 0)
        {
          result = (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
          a1 = result;
        }

        v36 = *a1;
        a4[1] = &unk_2A204475B;
      }

      *a4 = v36;
      return result;
    }

    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v21)
    {
      v21 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    result = sub_29A166F2C(a3, v21 + 2);
    v22 = *(a1 + 1);
    if ((v22 & 4) != 0)
    {
      result = (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      a1 = result;
    }

    a4[1] = &unk_2A2044C63;
    v20 = *a1;
LABEL_27:
    *a4 = v20;
    return result;
  }

  v9 = sub_29B087E6C(a1);
  v10 = *v9;
  v11 = (v9[1] - *v9) >> 4;
  if (v11 <= 2)
  {
    if (v11 != 1)
    {
      if (v11 == 2)
      {
        sub_29A18E048(&v77, 2uLL);
        v23 = 0;
        v24 = 1;
        while (1)
        {
          v25 = v24;
          v26 = sub_29A346994((*v9 + 16 * v23));
          v27 = (*v9 + 16 * v23);
          if (v26)
          {
            v28 = *(v27 + 1);
            if ((v28 & 4) != 0)
            {
              v27 = (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))();
            }

            v29 = *v27;
            sub_29A18E624(&v77);
            v30 = v29;
            *(v79 + 4 * v23) = v30;
          }

          else
          {
            if (!sub_29A3F9DF4(v27))
            {
              a4[1] = 0;
              goto LABEL_113;
            }

            v31 = *v9 + 16 * v23;
            v32 = *(v31 + 8);
            if ((v32 & 4) != 0)
            {
              v31 = (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))();
            }

            v33 = *v31;
            sub_29A18E624(&v77);
            *(v79 + 4 * v23) = v33;
          }

          v24 = 0;
          v23 = 1;
          if ((v25 & 1) == 0)
          {
            v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
            if (!v62)
            {
              v62 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
            }

            sub_29A166F2C(a3, v62 + 2);
            *a2 = 2;
            a4[1] = &off_2A2042F70;
            sub_29A18ECC8(a4, &v77);
LABEL_113:
            pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
          }
        }
      }

      goto LABEL_97;
    }

    if (sub_29A346994(v10))
    {
      v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      if (!v55)
      {
        v55 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      }

      sub_29A166F2C(a3, v55 + 2);
      result = *v9;
      v56 = *(*v9 + 1);
      if ((v56 & 4) != 0)
      {
        result = (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))();
      }

      v19 = *result;
LABEL_20:
      v20 = v19;
      a4[1] = &unk_2A2044C63;
      goto LABEL_27;
    }

    if (!sub_29A3F9DF4(*v9))
    {
      goto LABEL_97;
    }

    v63 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v63)
    {
      v63 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    sub_29A166F2C(a3, v63 + 2);
    result = *v9;
    v64 = *(*v9 + 1);
    if ((v64 & 4) != 0)
    {
      result = (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))();
    }

    a4[1] = &unk_2A2044C63;
    v20 = *result;
    goto LABEL_27;
  }

  switch(v11)
  {
    case 3:
      v37 = 0;
      for (i = 0; i != 12; i += 4)
      {
        v39 = sub_29A346994((*v9 + v37));
        v40 = (*v9 + v37);
        if (v39)
        {
          v41 = *(v40 + 1);
          if ((v41 & 4) != 0)
          {
            v40 = (*((v41 & 0xFFFFFFFFFFFFFFF8) + 168))();
          }

          v42 = *v40;
        }

        else
        {
          result = sub_29A3F9DF4(v40);
          if (!result)
          {
            goto LABEL_106;
          }

          v43 = *v9 + v37;
          v44 = *(v43 + 8);
          if ((v44 & 4) != 0)
          {
            v43 = (*((v44 & 0xFFFFFFFFFFFFFFF8) + 168))();
          }

          v42 = *v43;
        }

        *(&v77 + i) = v42;
        v37 += 16;
      }

      v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      if (!v59)
      {
        v59 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
      }

      sub_29A166F2C(a3, v59 + 4);
      a4[1] = (&off_2A2042840 + 2);
      result = operator new(0x10uLL);
      *result = v77;
      *(result + 2) = DWORD2(v77);
      v60 = (result + 12);
LABEL_117:
      atomic_store(0, v60);
      *a4 = result;
      atomic_fetch_add_explicit(v60, 1u, memory_order_relaxed);
      return result;
    case 4:
      sub_29A18E048(&v77, 4uLL);
      v45 = 0;
      v46 = 0;
      while (1)
      {
        v47 = sub_29A346994((*v9 + v46));
        v48 = (*v9 + v46);
        if (v47)
        {
          v49 = *(v48 + 1);
          if ((v49 & 4) != 0)
          {
            v48 = (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))();
          }

          v50 = *v48;
          sub_29A18E624(&v77);
          v51 = v50;
          *(v79 + v45) = v51;
        }

        else
        {
          if (!sub_29A3F9DF4(v48))
          {
            a4[1] = 0;
            goto LABEL_111;
          }

          v52 = *v9 + v46;
          v53 = *(v52 + 8);
          if ((v53 & 4) != 0)
          {
            v52 = (*((v53 & 0xFFFFFFFFFFFFFFF8) + 168))();
          }

          v54 = *v52;
          sub_29A18E624(&v77);
          *(v79 + v45) = v54;
        }

        v46 += 16;
        v45 += 4;
        if (v45 == 16)
        {
          v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
          if (!v61)
          {
            v61 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
          }

          sub_29A166F2C(a3, v61 + 2);
          *a2 = 4;
          a4[1] = &off_2A2042F70;
          sub_29A18ECC8(a4, &v77);
LABEL_111:
          pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
        }
      }

    case 16:
      if (sub_29A346994(v10))
      {
        v12 = 0;
        for (j = 0; j != 128; j += 8)
        {
          v14 = *v9 + v12;
          v15 = v14[1];
          if ((v15 & 4) != 0)
          {
            v14 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))();
          }

          *(&v77 + j) = *v14;
          v12 += 16;
        }

        v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        if (!v69)
        {
          v69 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        }

        sub_29A166F2C(a3, v69 + 9);
        a4[1] = (&off_2A2042BD8 + 2);
        result = operator new(0x88uLL);
        v70 = v82;
        *(result + 4) = v81;
        *(result + 5) = v70;
        v71 = v84;
        *(result + 6) = v83;
        *(result + 7) = v71;
        v72 = v78;
        *result = v77;
        *(result + 1) = v72;
        v73 = v80;
        *(result + 2) = v79;
        *(result + 3) = v73;
        v60 = (result + 128);
      }

      else
      {
        result = sub_29A3F9DF4(*v9);
        if (!result)
        {
LABEL_106:
          a4[1] = 0;
          return result;
        }

        v65 = 0;
        for (k = 0; k != 64; k += 4)
        {
          v67 = *v9 + v65;
          v68 = *(v67 + 8);
          if ((v68 & 4) != 0)
          {
            v67 = (*((v68 & 0xFFFFFFFFFFFFFFF8) + 168))();
          }

          *(&v77 + k) = *v67;
          v65 += 16;
        }

        v74 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        if (!v74)
        {
          v74 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
        }

        sub_29A166F2C(a3, v74 + 9);
        a4[1] = (&off_2A2042C90 + 2);
        result = operator new(0x44uLL);
        v75 = v78;
        *result = v77;
        *(result + 1) = v75;
        v76 = v80;
        *(result + 2) = v79;
        *(result + 3) = v76;
        v60 = (result + 64);
      }

      goto LABEL_117;
  }

LABEL_97:

  return sub_29A186A3C(a4, a1);
}

void sub_29B087D0C(pxrInternal__aapl__pxrReserved__::NdrParserPlugin *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::NdrParserPlugin::~NdrParserPlugin(a1, a2);

  operator delete(v2);
}

uint64_t sub_29B087D34(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B4690;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B087DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B087DE4(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

void *sub_29B087E0C()
{
  v0 = operator new(0x10uLL);
  pxrInternal__aapl__pxrReserved__::NdrParserPlugin::NdrParserPlugin(v0);
  *v0 = &unk_2A20B4640;
  return v0;
}

void **sub_29B087E6C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1D0DBC(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B087F00, &stru_2A2046480);
  }
}

void *sub_29B087F00@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  *a1 = result;
  a1[1] = sub_29B087F4C;
  a1[2] = &stru_2A2046480;
  return result;
}

void sub_29B087F4C(void **a1)
{
  if (a1)
  {
    v2 = a1;
    sub_29A1D0D38(&v2);
    operator delete(a1);
  }
}

unint64_t sub_29B087F90()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "glslfx", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "glslfx", 0);
  v1 = v0 + 2;
  v2 = *v0;
  v11 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v3;
    }
  }

  v4 = v0[1];
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  *v1 = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_29A12EF7C(v1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v7 = *(&v11 + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v8 = 0;
  atomic_compare_exchange_strong(&qword_2A1758C00, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A1758C00);
  }

  return v0;
}

void sub_29B0880D4(_Unwind_Exception *a1)
{
  v4 = 8;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *sub_29B0882D0(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *sub_29B0882EC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29B088328(a1);
  return a1;
}

uint64_t *sub_29B08839C(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B08841C(v3);
  return a1;
}

void sub_29B08841C(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B0884C0(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B088554(*a1);
    sub_29B08851C(v3, v2, v1);
  }
}

void sub_29B0884C0(uint64_t *a1)
{
  sub_29B08857C(a1);
  sub_29B0885A4(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B0885A4(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfMatrix4d,0>();
  }

  *(result + 8) = a2;
  return result;
}

void sub_29B088670(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void **sub_29B08874C(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A38A7B4(v3);
  return a1;
}

uint64_t sub_29B0888B0(atomic_uint *a1, int a2, int a3)
{
  if (a3 != 2 && a3 != 1)
  {
    if (a3 == 3)
    {
      return atomic_fetch_add_explicit(a1, -a2, memory_order_release);
    }

    else if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_add(a1, -a2);
    }

    else
    {
      return atomic_fetch_add_explicit(a1, -a2, memory_order_relaxed);
    }
  }

  else
  {
    return atomic_fetch_add_explicit(a1, -a2, memory_order_acquire);
  }
}

uint64_t sub_29B08899C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    sub_29A014BEC(*(a1 + 8));
  }

  return a1;
}

uint64_t Overlay::_operatorLessThanLessThan(Overlay *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B088B90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t Overlay::_operatorLessThanLessThan(Overlay *this, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  sub_29A008864(v5);
  pxrInternal__aapl__pxrReserved__::operator<<(&v6, this);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v6 = v3;
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29B088D30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void *Overlay::_operatorLessThanLessThan@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, void *a2@<X8>)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    sub_29A008864(&v6);
    sub_29A00911C(&v7, "pxr.SdfPrimSpec(", 16);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(a1, v5);
    sub_29A1DA6E4(v5);
  }

  return sub_29A008E78(a2, "pxr.SdfPrimSpec(nil)");
}

{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    sub_29A008864(&v6);
    sub_29A00911C(&v7, "pxr.SdfPropertySpec(", 20);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(a1, v5);
    sub_29A1DA6E4(v5);
  }

  return sub_29A008E78(a2, "pxr.SdfPropertySpec(nil)");
}

void sub_29B088FB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void sub_29B089290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void Overlay::RegisterHydraPlugins(Overlay *this)
{
  if (numCallsToRegisterHydraPlugins != 2)
  {
    if (numCallsToRegisterHydraPlugins == 1)
    {
      v1 = sub_29A00911C(MEMORY[0x29EDC93C8], "Calling Overlay::RegisterHydraPlugins() multiple times. This has no effect", 74);
      std::ios_base::getloc((v1 + *(*v1 - 24)));
      v2 = std::locale::use_facet(&v41, MEMORY[0x29EDC93D0]);
      (v2->__vftable[2].~facet_0)(v2, 10);
      std::locale::~locale(&v41);
      std::ostream::put();
      std::ostream::flush();
      ++numCallsToRegisterHydraPlugins;
      return;
    }

    ++numCallsToRegisterHydraPlugins;
    Overlay::GetPathOfDylib(&v41);
    v3 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v41.__r_.__value_.__l.__size_;
      if (v41.__r_.__value_.__l.__size_)
      {
        v4 = v41.__r_.__value_.__r.__words[0];
LABEL_9:
        v6 = (v4 + size);
        v7 = v4;
        v8 = v6;
        do
        {
          v9 = v7;
          v10 = v7;
          while (1)
          {
            v11 = *v10++;
            if (v11 == 47)
            {
              break;
            }

            v9 = v10;
            if (v10 == v6)
            {
              v9 = v8;
              goto LABEL_15;
            }
          }

          v7 = v9 + 1;
          v8 = v9;
        }

        while (v10 != v6);
LABEL_15:
        v12 = &v9[~v4];
        v13 = v9 == v6;
        v14 = -2;
        if (!v13)
        {
          v14 = v12;
        }

        v15 = v41.__r_.__value_.__r.__words[0];
        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v3 = v41.__r_.__value_.__l.__size_;
        }

        else
        {
          v15 = &v41;
        }

        if (v3 < v14)
        {
          v14 = v3;
        }

        if (v3 - v14 > 1)
        {
          v16 = v14 + 1;
        }

        else
        {
          v16 = v3;
        }

        v17 = v15 + v16;
        if (v16)
        {
          v18 = v15;
          v19 = (v15 + v16);
          do
          {
            v20 = v18;
            v21 = v18;
            while (1)
            {
              v22 = *v21++;
              if (v22 == 47)
              {
                break;
              }

              v20 = v21;
              if (v21 == v17)
              {
                v20 = v19;
                goto LABEL_35;
              }
            }

            v18 = (&v20->__r_.__value_.__l.__data_ + 1);
            v19 = v20;
          }

          while (v21 != v17);
        }

        else
        {
          v20 = v15;
        }

LABEL_35:
        v25 = v20 - v15;
        if (v20 == v17)
        {
          v26 = -1;
        }

        else
        {
          v26 = v25;
        }

        std::string::basic_string(&v40, &v41, 0, v26, __p);
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = v40.__r_.__value_.__l.__size_;
        }

        v28 = __p;
        v29 = sub_29A022DE0(__p, v27 + 25);
        if ((v39 & 0x80u) != 0)
        {
          v28 = __p[0];
        }

        if (v27)
        {
          if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = &v40;
          }

          else
          {
            v30 = v40.__r_.__value_.__r.__words[0];
          }

          v29 = memmove(v28, v30, v27);
        }

        strcpy(v28 + v27, "/Plugin/usd/plugInfo.json");
        Instance = pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v29);
        pxrInternal__aapl__pxrReserved__::PlugRegistry::RegisterPlugins(Instance, __p, v37);
        v42.__locale_ = v37;
        sub_29A17DEA8(&v42);
        v32 = sub_29A00911C(MEMORY[0x29EDC93C8], "Overlay::RegisterHydraPlugins() manually registered ", 52);
        if ((v39 & 0x80u) == 0)
        {
          v33 = __p;
        }

        else
        {
          v33 = __p[0];
        }

        if ((v39 & 0x80u) == 0)
        {
          v34 = v39;
        }

        else
        {
          v34 = __p[1];
        }

        v35 = sub_29A00911C(v32, v33, v34);
        std::ios_base::getloc((v35 + *(*v35 - 24)));
        v36 = std::locale::use_facet(&v42, MEMORY[0x29EDC93D0]);
        (v36->__vftable[2].~facet_0)(v36, 10);
        std::locale::~locale(&v42);
        std::ostream::put();
        std::ostream::flush();
        if (v39 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        goto LABEL_58;
      }
    }

    else if (*(&v41.__r_.__value_.__s + 23))
    {
      v4 = &v41;
      size = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
      goto LABEL_9;
    }

    v23 = sub_29A00911C(MEMORY[0x29EDC93C8], "ERROR: Could not GetPathOfDylib(). Hydra plugins may not load, and trying to use hydra may cause a crash", 104);
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v24 = std::locale::use_facet(&v40, MEMORY[0x29EDC93D0]);
    (v24->__vftable[2].~facet_0)(v24, 10);
    std::locale::~locale(&v40);
    std::ostream::put();
    std::ostream::flush();
LABEL_58:
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29B089730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  _Unwind_Resume(exception_object);
}

void *Overlay::GetPathOfDylib@<X0>(void *a1@<X8>)
{
  if (dladdr(Overlay::RegisterHydraPlugins, &v7))
  {
    dli_fname = v7.dli_fname;
  }

  else
  {
    v4 = sub_29A00911C(MEMORY[0x29EDC93C8], "Error: Could not dladdr. Code depending on the position of this dylib may not work", 82);
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x29EDC93D0]);
    (v5->__vftable[2].~facet_0)(v5, 10);
    std::locale::~locale(&v8);
    std::ostream::put();
    std::ostream::flush();
    dli_fname = "";
  }

  return sub_29A008E78(a1, dli_fname);
}

__n128 Overlay::GetDescriptor@<Q0>(pxrInternal__aapl__pxrReserved__::HgiTexture **a1@<X0>, uint64_t a2@<X8>)
{
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a1);
  v4 = Descriptor;
  if (*(Descriptor + 23) < 0)
  {
    sub_29A008D14(a2, *Descriptor, *(Descriptor + 8));
  }

  else
  {
    v5 = *Descriptor;
    *(a2 + 16) = *(Descriptor + 16);
    *a2 = v5;
  }

  result = *(v4 + 24);
  v7 = *(v4 + 40);
  v8 = *(v4 + 56);
  *(a2 + 72) = *(v4 + 72);
  *(a2 + 56) = v8;
  *(a2 + 40) = v7;
  *(a2 + 24) = result;
  return result;
}

uint64_t Overlay::HgiTextureHandleGetTextureId(void *a1)
{
  if (a1)
  {
    v1 = vars8;
  }

  return pxrInternal__aapl__pxrReserved__::HgiMetalTexture::GetTextureId(a1);
}

float64_t Overlay::_operatorStar(float64x2_t *this, float64x2_t *a2, const pxrInternal__aapl__pxrReserved__::GfRotation *a3)
{
  v3 = this[1];
  v5[0] = *this;
  v5[1] = v3;
  return pxrInternal__aapl__pxrReserved__::GfRotation::operator*=(v5, a2)->f64[0];
}

double Overlay::_operatorStar@<D0>(Overlay *this@<X0>, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 5);
  *(a3 + 64) = *(this + 4);
  *(a3 + 80) = v4;
  v5 = *(this + 7);
  *(a3 + 96) = *(this + 6);
  *(a3 + 112) = v5;
  v6 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v6;
  v7 = *(this + 3);
  *(a3 + 32) = *(this + 2);
  *(a3 + 48) = v7;
  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a3, a2);
}

void *Overlay::DefaultPropertyPredicateFunc(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C08, memory_order_acquire) & 1) == 0)
  {
    sub_29B2D0518();
  }

  return &unk_2A1758C10;
}

uint64_t Overlay::VtValue@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A20443C3;
  *a2 = this;
  return this;
}

uint64_t *Overlay::_operatorSubscript@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, BOOL *a3@<X2>, void *a4@<X8>)
{
  result = sub_29B089C6C(a1, a2);
  *a3 = a1 + 1 != result;
  if (a1 + 1 == result)
  {
    a4[1] = 0;
  }

  else
  {

    return sub_29A186EF4(a4, result + 5);
  }

  return result;
}

uint64_t Overlay::__operatorEqualsEquals(void *a1, void *a2)
{
  if (a1[2] != a2[2])
  {
    return 0;
  }

  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 == v2)
  {
    return 1;
  }

  v5 = *a2;
  do
  {
    v6 = *(v3 + 28) == *(v5 + 28);
    if (*(v3 + 28) != *(v5 + 28))
    {
      break;
    }

    v7 = v3[1];
    v8 = v3;
    if (v7)
    {
      do
      {
        v3 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v3 = v8[2];
        v9 = *v3 == v8;
        v8 = v3;
      }

      while (!v9);
    }

    v10 = v5[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v5[2];
        v9 = *v11 == v5;
        v5 = v11;
      }

      while (!v9);
    }

    v5 = v11;
  }

  while (v3 != v2);
  return v6;
}

void sub_29B089BC4(uint64_t a1, _BYTE *a2)
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
      *(v4 + v3) = *a2;
      ++*a1;
      return;
    }

LABEL_13:
    sub_29B2D05E8(a1, v3, a2);
  }

  sub_29B2D056C(a1);
}

uint64_t *sub_29B089C6C(uint64_t *a1, void *a2)
{
  v2 = a1 + 1;
  v3 = a1[1];
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 1;
  do
  {
    v7 = sub_29A662CCC(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_29A662CCC(a1, a2, v6 + 4))
  {
    return v2;
  }

  return v6;
}

BOOL Overlay::_operatorBool(void *a1)
{
  return *a1 != 0;
}

{
  return *a1 != 0;
}

BOOL Overlay::_operatorBool(uint64_t a1)
{
  v1 = sub_29B2ACEC8(a1);
  return (v2 & 1 | v1) != 0;
}

{
  v1 = sub_29B293A0C(a1);
  return (v2 & 1 | v1) != 0;
}

void Overlay::TfRefPtr(Overlay *this@<X0>, void *a2@<X8>)
{
  *a2 = this;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
}

{
  *a2 = this;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
}

void *Overlay::TfWeakPtr@<X0>(Overlay *this@<X0>, void *a2@<X8>)
{
  return sub_29A5B05F4(a2, this);
}

{
  return sub_29A329730(a2, this);
}

uint64_t *Overlay::TfWeakPtr@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  return sub_29A89A040(a2, a1);
}

{
  return sub_29A321960(a2, a1);
}

uint64_t *sub_29B089E7C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_29A0ECFD4((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_29B29BA48(v4);
    }
  }

  return a1;
}

void sub_29B089EDC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void *Overlay::SdfLayer::TraversalFunction@<X0>(void *result@<X0>, void *a2@<X8>)
{
  a2[3] = 0;
  if (result)
  {
    *a2 = &unk_2A20B46D0;
    result = _Block_copy(result);
    a2[1] = result;
    a2[3] = a2;
  }

  return result;
}

void *sub_29B089F5C(uint64_t a1, void *a2)
{
  *a2 = &unk_2A20B46D0;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_29B089FA8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_29B089FF0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B4730))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 Overlay::GetUsdPrimDefaultPredicate@<Q0>(Overlay *this@<X0>, __n128 *a2@<X8>)
{
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(this);
  result = *UsdPrimDefaultPredicate;
  *a2 = *UsdPrimDefaultPredicate;
  a2[1].n128_u64[0] = UsdPrimDefaultPredicate[1].n128_u64[0];
  return result;
}

uint64_t Overlay::allowedTokensForAttribute(uint64_t a1, uint64_t (**a2)(void, uint64_t))
{
  sub_29A580660(&v10, (a1 + 8), (a1 + 16));
  v5 = sub_29A5A9308(&v10, v4);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  sub_29A1DE3A4(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11, v6);
  }

  v7 = sub_29A5A6058(a1);
  pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::GetAttributeDefinition(v5, v7, &v10);
  if (pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::Property::IsAttribute(&v10))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v9, "allowedTokens");
    result = sub_29B08A1E4(&v10, &v9, a2);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    result = 0;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29B08A188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B08A1E4(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry *this, uint64_t (**a3)(void, uint64_t))
{
  if (pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::IsDisallowedField(this, this))
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v10 = *v7;
  v9 = (v7 + 1);
  v8 = v10;

  return sub_29A6AA0F4(v8, v9, this, a3);
}

void *Overlay::_operatorSubscript@<X0>(uint64_t *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v9 = v8;
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v9 == v11 && (!v9 || v7 == result))
  {
    *a3 = 0;
    a4[1] = 0;
  }

  else
  {
    *a3 = 1;

    return sub_29A186EF4(a4, (v7 + 56));
  }

  return result;
}

void *Overlay::HgiMetalWrapper::HgiMetalWrapper(void *this, pxrInternal__aapl__pxrReserved__::HgiMetal *a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void *Overlay::HgiWrapper::HgiWrapper(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t Overlay::HgiWrapper::CreatePlatformDefaultHgi@<X0>(std::__shared_weak_count_vtbl **a1@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::Hgi::CreatePlatformDefaultHgi(&v6);
  v4 = v6;
  if (v6)
  {
    v5 = operator new(0x20uLL);
    v5->__shared_owners_ = 0;
    v5->__vftable = &unk_2A20B4750;
    v5->__shared_weak_owners_ = 0;
    v5[1].__vftable = v4;
    v6 = 0;
    *a1 = v4;
    a1[1] = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v5);
    result = v6;
    v6 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t Overlay::HgiWrapper::IsSupported(Overlay::HgiWrapper *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = 0;
  result = pxrInternal__aapl__pxrReserved__::Hgi::IsSupported(&v3, a2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *Overlay::HgiWrapper::CreateBlitCmds@<X0>(Overlay::HgiWrapper *this@<X0>, void *a2@<X8>)
{
  (*(**this + 32))(&v5);
  v3 = v5;
  *a2 = v5;
  if (v3)
  {
    result = operator new(0x20uLL);
    *result = &unk_2A20B47B0;
    result[1] = 0;
    result[2] = 0;
    result[3] = v3;
  }

  else
  {
    result = 0;
  }

  a2[1] = result;
  return result;
}

void *Overlay::HgiWrapper::VtValueWrappingHgiRawPtr@<X0>(void *this@<X0>, void *a2@<X8>)
{
  *a2 = *this;
  a2[1] = &off_2A2094FD8 + 3;
  return this;
}

void sub_29B08AA94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B08AABC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B08AAEC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B4790))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B08AB30(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B08AB58(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B08AB88(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B47F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t convertSourceColorSpace(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

__n128 convertStorageSpec@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = a1[1].n128_u8[0];
  a2[1].n128_u64[1] = a1[1].n128_u64[1];
  return result;
}

void Overlay::HioImageWrapper::OpenForReading(pxrInternal__aapl__pxrReserved__::HioImageRegistry *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a4 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = a4 == 1;
  }

  pxrInternal__aapl__pxrReserved__::HioImage::OpenForReading(a1, a2, a3, v7, a5, &v11);
  v9 = v11;
  v8 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v8);
    v10 = v12;
    *a6 = v9;
    a6[1] = v8;
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  else
  {
    *a6 = v11;
    a6[1] = 0;
  }
}

void *Overlay::HioImageWrapper::HioImageWrapper(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t Overlay::HioImageWrapper::Read(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 3);
  v6 = *a2;
  v7 = v3;
  v8 = v4;
  return (*(*v2 + 16))(v2, &v6);
}

uint64_t Overlay::HioImageWrapper::ReadCropped(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v6 = *a1;
  v7 = *(a6 + 16);
  v8 = *(a6 + 3);
  v10 = *a6;
  v11 = v7;
  v12 = v8;
  return (*(*v6 + 24))(v6, a2, a3, a4, a5, &v10);
}

void Overlay::HioImageWrapper::OpenForWriting(pxrInternal__aapl__pxrReserved__::HioImageRegistry *a1@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HioImage::OpenForWriting(a1, &v4);
  v3 = v5;
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }
}

uint64_t Overlay::HioImageWrapper::Write(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 3);
  v6 = *a2;
  v7 = v3;
  v8 = v4;
  return (*(*v2 + 32))(v2, &v6);
}

void **Overlay::HioImageWrapper::GetFilenameCopy@<X0>(Overlay::HioImageWrapper *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(**this + 40))(*this);
  if (*(result + 23) < 0)
  {
    v5 = *result;
    v6 = result[1];

    return sub_29A008D14(a2, v5, v6);
  }

  else
  {
    v4 = *result;
    *(a2 + 16) = result[2];
    *a2 = v4;
  }

  return result;
}

uint64_t *Overlay::SdfNameOrderProxyIteratorWrapper::SdfNameOrderProxyIteratorWrapper(uint64_t *a1, uint64_t a2)
{
  sub_29B08B1E0(a2, a1);
  v3 = *a1;
  if (sub_29A3BBBD4(*a1))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  a1[3] = v4;
  a1[4] = 0;
  *(a1 + 40) = 0;
  return a1;
}

void sub_29B08B084(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Overlay::SdfNameOrderProxyIteratorWrapper::advanceAndGetCurrent@<X0>(Overlay::SdfNameOrderProxyIteratorWrapper *this@<X0>, BOOL *a2@<X1>, atomic_uint **a3@<X8>)
{
  v7[3] = *MEMORY[0x29EDCA608];
  if (*(this + 40) == 1)
  {
    ++*(this + 4);
  }

  *(this + 40) = 1;
  sub_29B08B15C(*this, v7);
  result = sub_29B08B2D0(this + 16, v7);
  *a2 = result ^ 1;
  if ((result & 1) == 0)
  {
    return sub_29B08B354(*(this + 3), *(this + 4), a3);
  }

  *a3 = 0;
  return result;
}

void *sub_29B08B15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29A3BBBD4(a1);
  result = *a1;
  if (*a1)
  {
    result = (*(*result + 112))(result, *(a1 + 16));
    v6 = (result[1] - *result) >> 3;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  return result;
}

void *sub_29B08B1E0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = operator new(0x30uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20B4810;
  v5 = *(a1 + 8);
  result[3] = *a1;
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 10) = *(a1 + 16);
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B08B278(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B4810;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B08B2BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_29A014BEC(v1);
  }
}

BOOL sub_29B08B2D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  v7 = v2;
  v8 = v3;
  v5[0] = "sdf/listProxy.h";
  v5[1] = "equal";
  v5[2] = 255;
  v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::_Iterator<pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy> *, pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::_GetHelper>::equal(const This &) const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy, Owner = pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy> *, GetItem = pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::_GetHelper]";
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Comparing SdfListProxy iterators from different proxies!");
  return 0;
}

void *sub_29B08B354@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  result = sub_29A347DC0(a1);
  if (result)
  {
    v7 = *a1;

    return sub_29B08B3C0(v7, a2, a3);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *sub_29B08B3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, atomic_uint **a3@<X8>)
{
  result = (*(*a1 + 112))(a1);
  v6 = *(*result + 8 * a2);
  *a3 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v7;
    }
  }

  return result;
}

uint64_t *Overlay::SdfSubLayerProxyIteratorWrapper::SdfSubLayerProxyIteratorWrapper(uint64_t *a1, uint64_t a2)
{
  sub_29B08B5B8(a2, a1);
  v3 = *a1;
  if (sub_29A346D48(*a1))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  a1[3] = v4;
  a1[4] = 0;
  *(a1 + 40) = 0;
  return a1;
}

void sub_29B08B484(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void Overlay::SdfSubLayerProxyIteratorWrapper::advanceAndGetCurrent(Overlay::SdfSubLayerProxyIteratorWrapper *this@<X0>, BOOL *a2@<X1>, _DWORD *a3@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(this + 40) == 1)
  {
    ++*(this + 4);
  }

  *(this + 40) = 1;
  sub_29A33E0F0(*this, __p);
  v6 = sub_29A347F68(this + 16, __p);
  *a2 = !v6;
  if (v6)
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }

  else
  {
    sub_29A1DF914(*(this + 3), *(this + 4), __p);
    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(a3, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29B08B594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B08B5B8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = operator new(0x30uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20B4860;
  v5 = *(a1 + 8);
  result[3] = *a1;
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 10) = *(a1 + 16);
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

void sub_29B08B650(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B4860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B08B694(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_29A014BEC(v1);
  }
}

void Overlay::UsdImagingGLEngineWrapper::UsdImagingGLEngineWrapper(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  sub_29B08BAE4(&v4);
  sub_29A2258F0(&v4, a2);
  sub_29A225948(&v5, (a2 + 4));
  if (&v4 != a2)
  {
    sub_29A324D54(&v6, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_29A324D54(&v7, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  }

  sub_29A2258F0(&v8, (a2 + 56));
  sub_29A225948(&v9, (a2 + 60));
  sub_29A166F2C(&v10, (a2 + 64));
  sub_29A1854E8(&v11, (a2 + 72));
  sub_29A166F2C(&v12, (a2 + 88));
  v13 = *(a2 + 96);
  v14 = *(a2 + 97);
  sub_29B08BC54(&v3, &v4);
}

void sub_29B08B7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29B08BBAC(va);
  v7 = *(v5 + 8);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  _Unwind_Resume(a1);
}

void Overlay::UsdImagingGLEngineWrapper::UsdImagingGLEngineWrapper(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v4 = a4;
  sub_29B08BD7C(&v5, a2, a3, &v4);
}

{
  v4 = a4;
  sub_29B08BD7C(&v5, a2, a3, &v4);
}

void Overlay::UsdImagingGLEngineWrapper::UsdImagingGLEngineWrapper(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t *a6, uint64_t a7, char a8, char a9)
{
  v10 = a8;
  v9 = a9;
  sub_29B08BE50(&v11, a2, a3, a4, a5, a6, a7, &v10, &v9);
}

{
  v10 = a8;
  v9 = a9;
  sub_29B08BE50(&v11, a2, a3, a4, a5, a6, a7, &v10, &v9);
}

uint64_t sub_29B08BAE4(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  sub_29A1E21F4(a1, v2);
  v3 = sub_29A1E2240((a1 + 4), v2 + 1);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v4 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v3);
  sub_29A1E21F4((a1 + 56), v4);
  sub_29A1E2240((a1 + 60), v4 + 1);
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 98) = 0;
  return a1;
}

void sub_29B08BB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 32);
  sub_29A1E234C(&a10);
  sub_29A1E234C(&a10);
  sub_29A1DCEA8(v10);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B08BBAC(uint64_t a1)
{
  v2 = *(a1 + 88);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(a1 + 72);
  v3 = *(a1 + 64);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 60));
  sub_29A1DE3A4((a1 + 56));
  v5 = (a1 + 32);
  sub_29A1E234C(&v5);
  v5 = (a1 + 8);
  sub_29A1E234C(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void sub_29B08BCB0(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20B48B0;
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine((a1 + 3), a2);
}

void sub_29B08BD2C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B48B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B08BDF0(void *a1, uint64_t *a2, uint64_t a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20B48B0;
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine((a1 + 3), a2, a3, *a4);
}

void sub_29B08BF04(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t *a6, uint64_t a7, char *a8, char *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20B48B0;
  pxrInternal__aapl__pxrReserved__::UsdImagingGLEngine::UsdImagingGLEngine((a1 + 3), a2, a3, a4, a5, a6, a7, *a8, *a9);
}

uint64_t Overlay::UsdPrimRangeIteratorWrapper::UsdPrimRangeIteratorWrapper(uint64_t a1, uint64_t a2)
{
  sub_29B08C11C(a2, a1);
  sub_29A58BB1C(*a1, a1 + 16);
  *(a1 + 48) = 0;
  return a1;
}

void sub_29B08BFC8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *Overlay::UsdPrimRangeIteratorWrapper::advanceAndGetCurrent@<X0>(Overlay::UsdPrimRangeIteratorWrapper *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 48) == 1)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(this + 16);
  }

  *(this + 48) = 1;
  v5 = *(*this + 8);
  v6 = *this;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v7 + 1);
  v8 = 0;
  v9 = 0;
  if (*(this + 3) == v6 && *(this + 2) == v5 && *(this + 4) == v7 && !*(this + 10) && (*(this + 44) & 1) == 0 && (*(this + 45) & 1) == 0)
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a2 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a2 + 20));
    *(a2 + 24) = 0;
  }

  else
  {
    sub_29A58BBEC(this + 16, a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7 + 1);
  return sub_29A1DE3A4(&v7);
}

uint64_t sub_29B08C11C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x50uLL);
  result = sub_29B08C178(v4, a1);
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29B08C178(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20B4900;
  *(a1 + 24) = *a2;
  sub_29A1E21F4((a1 + 40), (a2 + 16));
  sub_29A1E2240((a1 + 44), (a2 + 20));
  v4 = *(a2 + 24);
  *(a1 + 61) = *(a2 + 37);
  *(a1 + 48) = v4;
  return a1;
}

void sub_29B08C20C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B4900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *Overlay::UsdPrimTypeInfoWrapper::UsdPrimTypeInfoWrapper(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  *result = a2;
  return result;
}

Overlay::UsdPrimTypeInfoWrapper *Overlay::UsdPrimTypeInfoWrapper::UsdPrimTypeInfoWrapper(Overlay::UsdPrimTypeInfoWrapper *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v3 = *(a2 + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a2 + 1), a2);
  }

  *this = *(v3 + 24);
  return this;
}

{
  v3 = *(a2 + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a2 + 1), a2);
  }

  *this = *(v3 + 24);
  return this;
}

atomic_uint ***Overlay::UsdPrimTypeInfoWrapper::GetTypeName@<X0>(atomic_uint ***this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = **this;
  *a2 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return this;
}

void Overlay::UsdPrimTypeInfoWrapper::GetAppliedAPISchemas(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

uint64_t Overlay::UsdPrimTypeInfoWrapper::GetSchemaTypeName@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(*this + 48);
  *a2 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return this;
}

Overlay::VtDictionaryConstIteratorWrapper *Overlay::VtDictionaryConstIteratorWrapper::VtDictionaryConstIteratorWrapper(Overlay::VtDictionaryConstIteratorWrapper *this, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(this, a2);
  *(this + 1) = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v3);
  *(this + 2) = v4;
  *(this + 24) = 0;
  return this;
}

void Overlay::VtDictionaryConstIteratorWrapper::advanceAndGetCurrent(Overlay::VtDictionaryConstIteratorWrapper *this@<X0>, BOOL *a2@<X1>, void *a3@<X8>)
{
  v15[2] = *MEMORY[0x29EDCA608];
  if (*(this + 24) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
  }

  *(this + 24) = 1;
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(this);
  if (*(this + 2) == v7 && ((v8 = *(this + 1), !v7) || v8 == v6))
  {
    *a2 = 1;
    sub_29A186E7C(__p, (v8 + 32));
    v9 = 1;
  }

  else
  {
    *a2 = 0;
    v10[1] = 0;
    __s = "";
    sub_29A186A3C(v12, v10);
    sub_29A008E78(__p, __s);
    sub_29A186A3C(v15, v12);
    v9 = 0;
  }

  sub_29AB15498(a3, __p);
  sub_29A186B14(v15);
  if ((v14 & 0x80000000) == 0)
  {
    if (v9)
    {
      return;
    }

    goto LABEL_9;
  }

  operator delete(__p[0]);
  if ((v9 & 1) == 0)
  {
LABEL_9:
    sub_29A186B14(v12);
    sub_29A186B14(v10);
  }
}

Overlay::UsdZipFileWriterWrapper *Overlay::UsdZipFileWriterWrapper::UsdZipFileWriterWrapper(Overlay::UsdZipFileWriterWrapper *this)
{
  sub_29B08C6DC(this);
  return this;
}

{
  sub_29B08C6DC(this);
  return this;
}

void Overlay::UsdZipFileWriterWrapper::CreateNew(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29B08C6DC(a2);
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::CreateNew(a1, &v6);
  sub_29B08C7F4(&v6, &v7);
  v4 = v7;
  v7 = 0uLL;
  v5 = a2[1];
  *a2 = v4;
  if (v5)
  {
    sub_29A014BEC(v5);
    if (*(&v7 + 1))
    {
      sub_29A014BEC(*(&v7 + 1));
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(&v6);
}

void sub_29B08C6B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(va);
  v4 = *(v2 + 8);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_29B08C6DC@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x20uLL);
  result = sub_29B08C728(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29B08C728(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20B4950;
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::UsdZipFileWriter(a1 + 3);
  return a1;
}

void sub_29B08C7A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B4950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B08C7F4@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  result = sub_29B08C850(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29B08C850(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20B4950;
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::UsdZipFileWriter(a1 + 3, a2);
  return a1;
}

uint64_t Overlay::UsdShadeTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C38))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
    if (!v2)
    {
      v2 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
    }

    qword_2A1758C30 = v2;
    __cxa_guard_release(&qword_2A1758C38);
  }

  return qword_2A1758C30;
}

uint64_t Overlay::UsdUITokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C48))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUITokens);
    if (!v2)
    {
      v2 = sub_29A8809C8(&pxrInternal__aapl__pxrReserved__::UsdUITokens);
    }

    qword_2A1758C40 = v2;
    __cxa_guard_release(&qword_2A1758C48);
  }

  return qword_2A1758C40;
}

uint64_t Overlay::UsdPhysicsTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C58))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdPhysicsTokens);
    if (!v2)
    {
      v2 = sub_29A8B48EC(&pxrInternal__aapl__pxrReserved__::UsdPhysicsTokens);
    }

    qword_2A1758C50 = v2;
    __cxa_guard_release(&qword_2A1758C58);
  }

  return qword_2A1758C50;
}

uint64_t Overlay::UsdProcTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C68))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdProcTokens);
    if (!v2)
    {
      v2 = sub_29A814F7C(&pxrInternal__aapl__pxrReserved__::UsdProcTokens);
    }

    qword_2A1758C60 = v2;
    __cxa_guard_release(&qword_2A1758C68);
  }

  return qword_2A1758C60;
}

uint64_t Overlay::UsdSkelTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C78))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    if (!v2)
    {
      v2 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    }

    qword_2A1758C70 = v2;
    __cxa_guard_release(&qword_2A1758C78);
  }

  return qword_2A1758C70;
}

uint64_t Overlay::UsdHydraTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C88))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdHydraTokens);
    if (!v2)
    {
      v2 = sub_29A820488(&pxrInternal__aapl__pxrReserved__::UsdHydraTokens);
    }

    qword_2A1758C80 = v2;
    __cxa_guard_release(&qword_2A1758C88);
  }

  return qword_2A1758C80;
}

uint64_t Overlay::UsdMediaTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C98))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdMediaTokens);
    if (!v2)
    {
      v2 = sub_29A7CA080(&pxrInternal__aapl__pxrReserved__::UsdMediaTokens);
    }

    qword_2A1758C90 = v2;
    __cxa_guard_release(&qword_2A1758C98);
  }

  return qword_2A1758C90;
}

uint64_t Overlay::UsdTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758CA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758CA8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdTokens);
    if (!v2)
    {
      v2 = sub_29A4AAA94(&pxrInternal__aapl__pxrReserved__::UsdTokens);
    }

    qword_2A1758CA0 = v2;
    __cxa_guard_release(&qword_2A1758CA8);
  }

  return qword_2A1758CA0;
}

uint64_t Overlay::UsdLuxTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758CB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758CB8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v2)
    {
      v2 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    qword_2A1758CB0 = v2;
    __cxa_guard_release(&qword_2A1758CB8);
  }

  return qword_2A1758CB0;
}

uint64_t Overlay::UsdGeomTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758CC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758CC8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v2)
    {
      v2 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    qword_2A1758CC0 = v2;
    __cxa_guard_release(&qword_2A1758CC8);
  }

  return qword_2A1758CC0;
}

uint64_t Overlay::UsdVolTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758CD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758CD8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
    if (!v2)
    {
      v2 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
    }

    qword_2A1758CD0 = v2;
    __cxa_guard_release(&qword_2A1758CD8);
  }

  return qword_2A1758CD0;
}

uint64_t Overlay::UsdRenderTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758CE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758CE8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    if (!v2)
    {
      v2 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    }

    qword_2A1758CE0 = v2;
    __cxa_guard_release(&qword_2A1758CE8);
  }

  return qword_2A1758CE0;
}

uint64_t Overlay::KindTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758CF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758CF8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
    if (!v2)
    {
      v2 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
    }

    qword_2A1758CF0 = v2;
    __cxa_guard_release(&qword_2A1758CF8);
  }

  return qword_2A1758CF0;
}

uint64_t Overlay::HgiTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758D08))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
    if (!v2)
    {
      v2 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
    }

    qword_2A1758D00 = v2;
    __cxa_guard_release(&qword_2A1758D08);
  }

  return qword_2A1758D00;
}

uint64_t Overlay::HdxColorCorrectionTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758D18))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
    if (!v2)
    {
      v2 = sub_29AECDE6C(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
    }

    qword_2A1758D10 = v2;
    __cxa_guard_release(&qword_2A1758D18);
  }

  return qword_2A1758D10;
}

uint64_t Overlay::HdAovTokens(Overlay *this)
{
  if ((atomic_load_explicit(qword_2A1758D28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A1758D28))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v2)
    {
      v2 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    qword_2A1758D20 = v2;
    __cxa_guard_release(qword_2A1758D28);
  }

  return qword_2A1758D20;
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdTyped *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdUIBackdrop *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdRenderVar *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdRenderSettingsBase *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdRenderSettings *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdRenderProduct *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdRenderPass *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdSkelBlendShape *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdSkelAnimation *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomSubset *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomImageable *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomXformable *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdVolFieldBase *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdVolFieldAsset *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdVolOpenVDBAsset *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdVolField3DAsset *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdMediaSpatialAudio *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomXform *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCamera *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomBoundable *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdProcGenerativeProcedural *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdSkelRoot *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomGprim *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdVolVolume *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomSphere *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomPoints *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomNurbsPatch *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomMesh *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCurves *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomNurbsCurves *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomHermiteCurves *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomPlane *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCylinder_1 *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCylinder *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCube *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCone *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCapsule_1 *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCapsule *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxBoundableLightBase *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxSphereLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxRectLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxPortalLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxDiskLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxCylinderLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxPluginLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxNonboundableLightBase *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxGeometryLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxDomeLight_1 *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxDomeLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxDistantLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxPluginLightFilter *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomScope *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsJoint *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsSphericalJoint *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsRevoluteJoint *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsPrismaticJoint *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsFixedJoint *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsDistanceJoint *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsScene *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsCollisionGroup *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeShader *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeMaterial *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdUISceneGraphPrimAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdUINodeGraphNodeAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdMediaAssetPreviewsAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdHydraGenerativeProceduralAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdModelAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdCollectionAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdClipsAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomVisibilityAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsRigidBodyAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsMeshCollisionAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsMaterialAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsMassAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsLimitAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsFilteredPairsAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsDriveAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsCollisionAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsArticulationRootAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxVolumeLightAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxShapingAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxShadowAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxMeshLightAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxListAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxLightListAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeNodeDefAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeCoordSysAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

BOOL Overlay::__operatorLess(uint64_t a1, uint64_t a2)
{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

BOOL Overlay::__operatorLess(void *a1, void *a2)
{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

uint64_t sub_29B08EF70(uint64_t *a1, uint64_t *a2)
{
  sub_29A1F0334(a1, v6);
  sub_29A1F0334(a2, v5);
  v3 = sub_29A99F8C4(v6[0], v6[1], v5[0], v5[1], &v7);
  v8 = v5;
  sub_29A124AB0(&v8);
  v5[0] = v6;
  sub_29A124AB0(v5);
  return v3;
}

void sub_29B08EFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v12 - 24) = &a9;
  sub_29A124AB0((v12 - 24));
  a9 = &a12;
  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29B08F024(uint64_t *a1, uint64_t *a2)
{
  sub_29A46D468(a1, v6);
  sub_29A46D468(a2, v5);
  v3 = sub_29A1C5C4C(v6[0], v6[1], v5[0], v5[1], &v7);
  v8 = v5;
  sub_29A012C90(&v8);
  v5[0] = v6;
  sub_29A012C90(v5);
  return v3;
}

void sub_29B08F0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v12 - 24) = &a9;
  sub_29A012C90((v12 - 24));
  a9 = &a12;
  sub_29A012C90(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29B08F0D8(void *a1, void *a2)
{
  result = sub_29A1EF368(a1);
  if (result)
  {
    result = sub_29A1EF368(a2);
    if (result)
    {
      v5 = (*(**a2 + 48))();
      return sub_29B08F264(a1, v5) >> 31;
    }
  }

  return result;
}

uint64_t sub_29B08F14C(void *a1, void *a2)
{
  result = sub_29A1EF994(a1);
  if (result)
  {
    result = sub_29A1EF994(a2);
    if (result)
    {
      v5 = (*(**a2 + 48))();
      return sub_29B08F530(a1, v5) >> 31;
    }
  }

  return result;
}

BOOL Overlay::__operatorLess(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  return 0;
}

uint64_t sub_29B08F264(void *a1, void *a2)
{
  if (*((*(**a1 + 48))(*a1) + 16) < a2[2])
  {
    return 0xFFFFFFFFLL;
  }

  if (*((*(**a1 + 48))() + 16) <= a2[2])
  {
    if (*a1)
    {
      (*(**a1 + 24))(&v9);
    }

    else
    {
      v9 = 0;
    }

    pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy::CanonicalizeType(&v9, a2, &v10);
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v9);
    v5 = (*(**a1 + 48))();
    v6 = *a1;
    v7 = *v5;
    if (v6)
    {
      v6 = (*(*v6 + 48))(v6);
    }

    sub_29B08F48C(v7, v6 + 1, v10);
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return 1;
}

void sub_29B08F464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void *sub_29B08F48C(void *result, void *a2, void *a3)
{
  if (result != a2)
  {
    while (1)
    {
      v4 = *(result + 28) == *(a3 + 28) && *(result + 36) == *(a3 + 36);
      if (!v4)
      {
        break;
      }

      v5 = result[1];
      v6 = result;
      if (v5)
      {
        do
        {
          result = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          result = v6[2];
          v4 = *result == v6;
          v6 = result;
        }

        while (!v4);
      }

      v7 = a3[1];
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
          v8 = a3[2];
          v4 = *v8 == a3;
          a3 = v8;
        }

        while (!v4);
      }

      a3 = v8;
      if (result == a2)
      {
        return a2;
      }
    }
  }

  return result;
}

uint64_t sub_29B08F530(void *a1, uint64_t a2)
{
  if (*((*(**a1 + 48))(*a1) + 16) < *(a2 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  if (*((*(**a1 + 48))() + 16) > *(a2 + 16))
  {
    return 1;
  }

  if (*a1)
  {
    (*(**a1 + 24))(&v50);
  }

  else
  {
    v50 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v50);
  v5 = (*(**a1 + 48))(*a1);
  v6 = *a1;
  v7 = *v5;
  if (v6)
  {
    v6 = (*(*v6 + 48))(v6);
  }

  v8 = sub_29B08F844(v7, v6 + 1, *a2, &v51);
  v10 = v8;
  v11 = v9;
  v12 = *(v9 + 55);
  v13 = *(v8 + 55);
  if (v13 >= 0)
  {
    v14 = *(v8 + 55);
  }

  else
  {
    v14 = v8[5];
  }

  if (v13 >= 0)
  {
    v15 = v8 + 4;
  }

  else
  {
    v15 = v8[4];
  }

  if (v12 >= 0)
  {
    v16 = *(v9 + 55);
  }

  else
  {
    v16 = *(v9 + 40);
  }

  if (v12 >= 0)
  {
    v17 = (v9 + 32);
  }

  else
  {
    v17 = *(v9 + 32);
  }

  if (v16 >= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v16;
  }

  v19 = memcmp(v15, v17, v18);
  v20 = v14 < v16;
  if (v19)
  {
    v20 = v19 < 0;
  }

  if (v20)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = memcmp(v17, v15, v18);
  v22 = v16 < v14;
  if (v21)
  {
    v22 = v21 < 0;
  }

  if (!v22)
  {
    v23 = *(v11 + 79);
    v24 = *(v10 + 79);
    if (v24 >= 0)
    {
      v25 = *(v10 + 79);
    }

    else
    {
      v25 = v10[8];
    }

    if (v24 >= 0)
    {
      v26 = v10 + 7;
    }

    else
    {
      v26 = v10[7];
    }

    if (v23 >= 0)
    {
      v27 = *(v11 + 79);
    }

    else
    {
      v27 = *(v11 + 64);
    }

    if (v23 >= 0)
    {
      v28 = (v11 + 56);
    }

    else
    {
      v28 = *(v11 + 56);
    }

    if (v27 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v27;
    }

    v30 = memcmp(v26, v28, v29);
    v31 = v25 < v27;
    if (v30)
    {
      v31 = v30 < 0;
    }

    if (v31)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v32 = v16 < v14;
  v33 = memcmp(v17, v15, v18);
  v34 = v33 < 0;
  if (!v33)
  {
    v34 = v32;
  }

  if (v34)
  {
    return 1;
  }

  v37 = v10[7];
  v36 = v10 + 7;
  v35 = v37;
  v38 = *(v36 + 23);
  v41 = *(v11 + 56);
  v40 = v11 + 56;
  v39 = v41;
  v42 = *(v40 + 23);
  v43 = v42 >= 0 ? *(v40 + 23) : *(v40 + 8);
  v44 = (v42 >= 0 ? v40 : v39);
  v45 = v38 >= 0 ? *(v36 + 23) : v36[1];
  v46 = v38 >= 0 ? v36 : v35;
  v47 = v45 >= v43 ? v43 : v45;
  v48 = memcmp(v44, v46, v47);
  v49 = v43 < v45;
  if (v48)
  {
    return v48 < 0;
  }

  return v49;
}

void *sub_29B08F844(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a1;
  if (a1 != a2)
  {
    while (sub_29A1B0B38(a4, (v4 + 4), (a3 + 4)))
    {
      v8 = v4[1];
      v9 = v4;
      if (v8)
      {
        do
        {
          v4 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v9[2];
          v10 = *v4 == v9;
          v9 = v4;
        }

        while (!v10);
      }

      v11 = a3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = a3[2];
          v10 = *v12 == a3;
          a3 = v12;
        }

        while (!v10);
      }

      a3 = v12;
      if (v4 == a2)
      {
        return a2;
      }
    }
  }

  return v4;
}

void Overlay::__to_string(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::ArchMemAdviceDontNeed";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::ArchMemAdviceRandomAccess";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::ArchMemAdviceNormal";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::ArchMemAdviceWillNeed";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::ArchMemAdvice(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::ArchFileAdviceDontNeed";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::ArchFileAdviceRandomAccess";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::ArchFileAdviceNormal";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::ArchFileAdviceWillNeed";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::ArchFileAdvice(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::ArchProtectReadWrite";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::ArchProtectReadWriteCopy";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::ArchProtectNoAccess";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::ArchProtectReadOnly";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::ArchMemoryProtection(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 8:
      v4 = "PXR_NS::TfType::MANUFACTURABLE";
      goto LABEL_7;
    case 2:
      v4 = "PXR_NS::TfType::CONCRETE";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::TfType::ABSTRACT";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::TfType::LegacyFlags(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::TfMallocTag::CallTree::BOTH";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::TfMallocTag::CallTree::CALLSITES";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::TfMallocTag::CallTree::TREE";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::TfMallocTag::CallTree::PrintSetting(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::GfCamera::Orthographic";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::GfCamera::Perspective";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::GfCamera::Projection(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::GfCamera::FOVVertical";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::GfCamera::FOVHorizontal";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::GfCamera::FOVDirection(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::GfFrustum::Perspective";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::GfFrustum::Orthographic";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::GfFrustum::ProjectionType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::GfNumericCastNaN";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::GfNumericCastNegOverflow";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::GfNumericCastPosOverflow";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::GfNumericCastFailureType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::JsValue::ObjectType";
        goto LABEL_21;
      case 1:
        v4 = "PXR_NS::JsValue::ArrayType";
        goto LABEL_21;
      case 2:
        v4 = "PXR_NS::JsValue::StringType";
        goto LABEL_21;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v4 = "PXR_NS::JsValue::BoolType";
      }

      else
      {
        v4 = "PXR_NS::JsValue::IntType";
      }

LABEL_21:

      sub_29A008E78(a2, v4);
      return;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::JsValue::RealType";
      goto LABEL_21;
    }

    if (v3 == 6)
    {
      v4 = "PXR_NS::JsValue::NullType";
      goto LABEL_21;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::JsValue::Type(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::SdfSpecifierClass";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::SdfNumSpecifiers";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::SdfSpecifierDef";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::SdfSpecifierOver";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfSpecifier(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::SdfNumPermissions";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::SdfPermissionPrivate";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::SdfPermissionPublic";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfPermission(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::SdfNumVariabilities";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::SdfVariabilityUniform";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::SdfVariabilityVarying";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfVariability(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::SdfAuthoringErrorUnrecognizedSpecType";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::SdfAuthoringErrorUnrecognizedFields";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfAuthoringError(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::SdfListOpTypeOrdered";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::SdfListOpTypePrepended";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::SdfListOpTypeAppended";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::SdfListOpTypeExplicit";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::SdfListOpTypeAdded";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::SdfListOpTypeDeleted";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfListOpType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::SdfPathExpression::Complement";
        goto LABEL_21;
      case 1:
        v4 = "PXR_NS::SdfPathExpression::ImpliedUnion";
        goto LABEL_21;
      case 2:
        v4 = "PXR_NS::SdfPathExpression::Union";
        goto LABEL_21;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v4 = "PXR_NS::SdfPathExpression::Intersection";
      }

      else
      {
        v4 = "PXR_NS::SdfPathExpression::Difference";
      }

LABEL_21:

      sub_29A008E78(a2, v4);
      return;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::SdfPathExpression::ExpressionRef";
      goto LABEL_21;
    }

    if (v3 == 6)
    {
      v4 = "PXR_NS::SdfPathExpression::Pattern";
      goto LABEL_21;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfPathExpression::Op(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::SdfPredicateExpression::FnCall::ParenCall";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::SdfPredicateExpression::FnCall::ColonCall";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::SdfPredicateExpression::FnCall::BareCall";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfPredicateExpression::FnCall::Kind(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::SdfPredicateExpression::Call";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::SdfPredicateExpression::Not";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::SdfPredicateExpression::ImpliedAnd";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::SdfPredicateExpression::And";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::SdfPredicateExpression::Or";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfPredicateExpression::Op(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::SdfNamespaceEditDetail::Okay";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::SdfNamespaceEditDetail::Unbatched";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::SdfNamespaceEditDetail::Error";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfNamespaceEditDetail::Result(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::SdfPredicateFunctionResult::MayVaryOverDescendants";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::SdfPredicateFunctionResult::ConstantOverDescendants";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfPredicateFunctionResult::Constancy(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::NdrNumVersionFilters";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::NdrVersionFilterAllVersions";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::NdrVersionFilterDefaultOnly";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::NdrVersionFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        v4 = "PXR_NS::PcpArcTypeSpecialize";
        goto LABEL_18;
      }

      if (v3 == 7)
      {
        v4 = "PXR_NS::PcpNumArcTypes";
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    if (v3 == 4)
    {
      v4 = "PXR_NS::PcpArcTypeReference";
    }

    else
    {
      v4 = "PXR_NS::PcpArcTypePayload";
    }

LABEL_18:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::PcpArcTypeVariant";
    }

    else
    {
      v4 = "PXR_NS::PcpArcTypeRelocate";
    }

    goto LABEL_18;
  }

  if (!v3)
  {
    v4 = "PXR_NS::PcpArcTypeRoot";
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::PcpArcTypeInherit";
    goto LABEL_18;
  }

LABEL_21:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::PcpArcType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 == 5)
      {
        v4 = "PXR_NS::PcpRangeTypeSpecialize";
      }

      else
      {
        v4 = "PXR_NS::PcpRangeTypeAll";
      }

LABEL_22:

      sub_29A008E78(a2, v4);
      return;
    }

    switch(v3)
    {
      case 7:
        v4 = "PXR_NS::PcpRangeTypeWeakerThanRoot";
        goto LABEL_22;
      case 8:
        v4 = "PXR_NS::PcpRangeTypeStrongerThanPayload";
        goto LABEL_22;
      case 9:
        v4 = "PXR_NS::PcpRangeTypeInvalid";
        goto LABEL_22;
    }
  }

  else
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v4 = "PXR_NS::PcpRangeTypeVariant";
      }

      else if (v3 == 3)
      {
        v4 = "PXR_NS::PcpRangeTypeReference";
      }

      else
      {
        v4 = "PXR_NS::PcpRangeTypePayload";
      }

      goto LABEL_22;
    }

    if (!v3)
    {
      v4 = "PXR_NS::PcpRangeTypeRoot";
      goto LABEL_22;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::PcpRangeTypeInherit";
      goto LABEL_22;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::PcpRangeType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 7)
  {
    if (v3 <= 31)
    {
      if (v3 == 8)
      {
        v4 = "PXR_NS::PcpDependencyTypeAncestral";
        goto LABEL_24;
      }

      if (v3 == 16)
      {
        v4 = "PXR_NS::PcpDependencyTypeVirtual";
        goto LABEL_24;
      }
    }

    else
    {
      switch(v3)
      {
        case ' ':
          v4 = "PXR_NS::PcpDependencyTypeNonVirtual";
          goto LABEL_24;
        case '/':
          v4 = "PXR_NS::PcpDependencyTypeAnyNonVirtual";
          goto LABEL_24;
        case '?':
          v4 = "PXR_NS::PcpDependencyTypeAnyIncludingVirtual";
          goto LABEL_24;
      }
    }
  }

  else if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::PcpDependencyTypeNone";
      goto LABEL_24;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::PcpDependencyTypeRoot";
      goto LABEL_24;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::PcpDependencyTypePurelyDirect";
        goto LABEL_24;
      case 4:
        v4 = "PXR_NS::PcpDependencyTypePartlyDirect";
        goto LABEL_24;
      case 6:
        v4 = "PXR_NS::PcpDependencyTypeDirect";
LABEL_24:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::PcpDependencyType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 0:
      v4 = "PXR_NS::PcpErrorType_ArcCycle";
      goto LABEL_37;
    case 1:
      v4 = "PXR_NS::PcpErrorType_ArcPermissionDenied";
      goto LABEL_37;
    case 3:
      v4 = "PXR_NS::PcpErrorType_IndexCapacityExceeded";
      goto LABEL_37;
    case 4:
      v4 = "PXR_NS::PcpErrorType_ArcCapacityExceeded";
      goto LABEL_37;
    case 5:
      v4 = "PXR_NS::PcpErrorType_ArcNamespaceDepthCapacityExceeded";
      goto LABEL_37;
    case 6:
      v4 = "PXR_NS::PcpErrorType_InconsistentPropertyType";
      goto LABEL_37;
    case 7:
      v4 = "PXR_NS::PcpErrorType_InconsistentAttributeType";
      goto LABEL_37;
    case 8:
      v4 = "PXR_NS::PcpErrorType_InconsistentAttributeVariability";
      goto LABEL_37;
    case 9:
      v4 = "PXR_NS::PcpErrorType_InternalAssetPath";
      goto LABEL_37;
    case 10:
      v4 = "PXR_NS::PcpErrorType_InvalidPrimPath";
      goto LABEL_37;
    case 11:
      v4 = "PXR_NS::PcpErrorType_InvalidAssetPath";
      goto LABEL_37;
    case 12:
      v4 = "PXR_NS::PcpErrorType_InvalidInstanceTargetPath";
      goto LABEL_37;
    case 13:
      v4 = "PXR_NS::PcpErrorType_InvalidExternalTargetPath";
      goto LABEL_37;
    case 14:
      v4 = "PXR_NS::PcpErrorType_InvalidTargetPath";
      goto LABEL_37;
    case 15:
      v4 = "PXR_NS::PcpErrorType_InvalidReferenceOffset";
      goto LABEL_37;
    case 16:
      v4 = "PXR_NS::PcpErrorType_InvalidSublayerOffset";
      goto LABEL_37;
    case 17:
      v4 = "PXR_NS::PcpErrorType_InvalidSublayerOwnership";
      goto LABEL_37;
    case 18:
      v4 = "PXR_NS::PcpErrorType_InvalidSublayerPath";
      goto LABEL_37;
    case 19:
      v4 = "PXR_NS::PcpErrorType_InvalidVariantSelection";
      goto LABEL_37;
    case 20:
      v4 = "PXR_NS::PcpErrorType_MutedAssetPath";
      goto LABEL_37;
    case 21:
      v4 = "PXR_NS::PcpErrorType_InvalidAuthoredRelocation";
      goto LABEL_37;
    case 22:
      v4 = "PXR_NS::PcpErrorType_InvalidConflictingRelocation";
      goto LABEL_37;
    case 23:
      v4 = "PXR_NS::PcpErrorType_InvalidSameTargetRelocations";
      goto LABEL_37;
    case 24:
      v4 = "PXR_NS::PcpErrorType_OpinionAtRelocationSource";
      goto LABEL_37;
    case 25:
      v4 = "PXR_NS::PcpErrorType_PrimPermissionDenied";
      goto LABEL_37;
    case 26:
      v4 = "PXR_NS::PcpErrorType_PropertyPermissionDenied";
      goto LABEL_37;
    case 27:
      v4 = "PXR_NS::PcpErrorType_SublayerCycle";
      goto LABEL_37;
    case 28:
      v4 = "PXR_NS::PcpErrorType_TargetPermissionDenied";
      goto LABEL_37;
    case 29:
      v4 = "PXR_NS::PcpErrorType_UnresolvedPrimPath";
      goto LABEL_37;
    case 30:
      v4 = "PXR_NS::PcpErrorType_VariableExpressionError";
LABEL_37:

      sub_29A008E78(a2, v4);
      break;
    default:
      std::to_string(&v9, v3);
      v5 = std::string::insert(&v9, 0, "PXR_NS::PcpErrorType(rawValue: ");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v10.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v7 = std::string::append(&v10, ")");
      v8 = *&v7->__r_.__value_.__l.__data_;
      a2[2] = *(&v7->__r_.__value_.__l + 2);
      *a2 = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      break;
  }
}

{
  v3 = *a1;
  if (v3 == 2)
  {
    v4 = "PXR_NS::PcpCacheChanges::TargetTypeRelationshipTarget";
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::PcpCacheChanges::TargetTypeConnection";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::PcpCacheChanges::TargetType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::PcpNamespaceEdits::EditReference";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::PcpNamespaceEdits::EditPayload";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::PcpNamespaceEdits::EditRelocate";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::PcpNamespaceEdits::EditPath";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::PcpNamespaceEdits::EditInherit";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::PcpNamespaceEdits::EditSpecializes";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::PcpNamespaceEdits::EditType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::UsdListPositionFrontOfAppendList";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::UsdListPositionBackOfAppendList";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::UsdListPositionFrontOfPrependList";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::UsdListPositionBackOfPrependList";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdListPosition(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdLoadWithoutDescendants";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdLoadWithDescendants";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdLoadPolicy(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::UsdTypeAttribute";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::UsdTypeRelationship";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::Usd_NumObjTypes";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::UsdTypeObject";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::UsdTypePrim";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::UsdTypeProperty";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdObjType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdStage::LoadNone";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdStage::LoadAll";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdStage::InitialLoadSet(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdInterpolationTypeLinear";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdInterpolationTypeHeld";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdInterpolationType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::UsdStageLoadRules::NoneRule";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::UsdStageLoadRules::OnlyRule";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::UsdStageLoadRules::AllRule";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdStageLoadRules::Rule(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::UsdResolveInfoSourceNone";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::UsdResolveInfoSourceFallback";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::UsdResolveInfoSourceDefault";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::UsdResolveInfoSourceTimeSamples";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::UsdResolveInfoSourceValueClips";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdResolveInfoSource(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdModelAPI::KindValidationModelHierarchy";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdModelAPI::KindValidationNone";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdModelAPI::KindValidation(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::Usd_NoBlock";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::UsdBlockStageCachePopulation";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::UsdBlockStageCaches";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdStageCacheContextBlockType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 0:
      v4 = "PXR_NS::UsdGeomXformOp::TypeInvalid";
      goto LABEL_16;
    case 4:
      v4 = "PXR_NS::UsdGeomXformOp::TypeTranslate";
      goto LABEL_16;
    case 8:
      v4 = "PXR_NS::UsdGeomXformOp::TypeScale";
      goto LABEL_16;
    case 9:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateX";
      goto LABEL_16;
    case 10:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateY";
      goto LABEL_16;
    case 11:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateZ";
      goto LABEL_16;
    case 12:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateXYZ";
      goto LABEL_16;
    case 13:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateXZY";
      goto LABEL_16;
    case 14:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateYXZ";
      goto LABEL_16;
    case 15:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateYZX";
      goto LABEL_16;
    case 16:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateZXY";
      goto LABEL_16;
    case 17:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateZYX";
      goto LABEL_16;
    case 18:
      v4 = "PXR_NS::UsdGeomXformOp::TypeOrient";
      goto LABEL_16;
    case 19:
      v4 = "PXR_NS::UsdGeomXformOp::TypeTransform";
LABEL_16:

      sub_29A008E78(a2, v4);
      break;
    default:
      std::to_string(&v9, v3);
      v5 = std::string::insert(&v9, 0, "PXR_NS::UsdGeomXformOp::Type(rawValue: ");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v10.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v7 = std::string::append(&v10, ")");
      v8 = *&v7->__r_.__value_.__l.__data_;
      a2[2] = *(&v7->__r_.__value_.__l + 2);
      *a2 = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      break;
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::UsdGeomXformOp::PrecisionHalf";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::UsdGeomXformOp::PrecisionFloat";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::UsdGeomXformOp::PrecisionDouble";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdGeomXformOp::Precision(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdGeomPointInstancer::ExcludeProtoXform";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdGeomPointInstancer::IncludeProtoXform";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdGeomPointInstancer::ProtoXformInclusion(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdGeomPointInstancer::IgnoreMask";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdGeomPointInstancer::ApplyMask";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdGeomPointInstancer::MaskApplication(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::RotationOrderYZX";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::RotationOrderZXY";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::RotationOrderZYX";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::RotationOrderXYZ";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::RotationOrderXZY";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::RotationOrderYXZ";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdGeomXformCommonAPI::RotationOrder(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::UsdGeomXformCommonAPI::OpNone";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::UsdGeomXformCommonAPI::OpTranslate";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::OpPivot";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::OpRotate";
        goto LABEL_12;
      case 8:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::OpScale";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdGeomXformCommonAPI::OpFlags(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdShadeConnectableAPIBehavior::DerivedContainerNodes";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdShadeConnectableAPIBehavior::BasicNodes";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdShadeConnectableAPIBehavior::ConnectableNodeTypes(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdLuxLightListAPI::ComputeModeIgnoreCache";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdLuxLightListAPI::ComputeModeConsultModelHierarchyCache";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdLuxLightListAPI::ComputeMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdLuxListAPI::ComputeModeIgnoreCache";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdLuxListAPI::ComputeModeConsultModelHierarchyCache";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdLuxListAPI::ComputeMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 8)
  {
    if (v3 <= 17)
    {
      if (v3 == 9)
      {
        v4 = "PXR_NS::UsdSkelBakeSkinningParms::ModifiesPoints";
        goto LABEL_24;
      }

      if (v3 == 16)
      {
        v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformNormalsWithBlendShapes";
        goto LABEL_24;
      }
    }

    else
    {
      switch(v3)
      {
        case 0x12:
          v4 = "PXR_NS::UsdSkelBakeSkinningParms::ModifiesNormals";
          goto LABEL_24;
        case 0x18:
          v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformWithBlendShapes";
          goto LABEL_24;
        case 0x1F:
          v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformAll";
          goto LABEL_24;
      }
    }
  }

  else if (v3 <= 3)
  {
    if (v3 == 1)
    {
      v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformPointsWithSkinning";
      goto LABEL_24;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformNormalsWithSkinning";
      goto LABEL_24;
    }
  }

  else
  {
    switch(v3)
    {
      case 4:
        v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformXformWithSkinning";
        goto LABEL_24;
      case 7:
        v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformWithSkinning";
        goto LABEL_24;
      case 8:
        v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformPointsWithBlendShapes";
LABEL_24:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdSkelBakeSkinningParms::DeformationFlags(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::GarchGLDebugWindow::MyButton3";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::GarchGLDebugWindow::MyButton2";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::GarchGLDebugWindow::MyButton1";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::GarchGLDebugWindow::Buttons(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::GarchGLDebugWindow::Alt";
      goto LABEL_15;
    }

    if (v3 == 4)
    {
      v4 = "PXR_NS::GarchGLDebugWindow::Ctrl";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::GarchGLDebugWindow::NoModifiers";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::GarchGLDebugWindow::Shift";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::GarchGLDebugWindow::ModifierKeys(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HioAddressDimensionW";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HioAddressDimensionV";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HioAddressDimensionU";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HioAddressDimension(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::HioAddressModeClampToEdge";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HioAddressModeMirrorClampToEdge";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::HioAddressModeRepeat";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::HioAddressModeMirrorRepeat";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::HioAddressModeClampToBorderColor";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HioAddressMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 4)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v4 = "PXR_NS::HioTypeSignedByte";
      }

      else if (v3 == 3)
      {
        v4 = "PXR_NS::HioTypeUnsignedShort";
      }

      else
      {
        v4 = "PXR_NS::HioTypeSignedShort";
      }

LABEL_24:

      sub_29A008E78(a2, v4);
      return;
    }

    if (!v3)
    {
      v4 = "PXR_NS::HioTypeUnsignedByte";
      goto LABEL_24;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HioTypeUnsignedByteSRGB";
      goto LABEL_24;
    }
  }

  else
  {
    if (v3 <= 7)
    {
      if (v3 == 5)
      {
        v4 = "PXR_NS::HioTypeUnsignedInt";
      }

      else if (v3 == 6)
      {
        v4 = "PXR_NS::HioTypeInt";
      }

      else
      {
        v4 = "PXR_NS::HioTypeHalfFloat";
      }

      goto LABEL_24;
    }

    switch(v3)
    {
      case 8:
        v4 = "PXR_NS::HioTypeFloat";
        goto LABEL_24;
      case 9:
        v4 = "PXR_NS::HioTypeDouble";
        goto LABEL_24;
      case 0xA:
        v4 = "PXR_NS::HioTypeCount";
        goto LABEL_24;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HioType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HioGlslfxConfig::RoleColor";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HioGlslfxConfig::RoleNone";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HioGlslfxConfig::Role(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::CameraUtilMatchVertically";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::CameraUtilMatchHorizontally";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::CameraUtilFit";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::CameraUtilCrop";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::CameraUtilDontConform";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::CameraUtilConformWindowPolicy(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 511)
  {
    if (v3 < 0x2000)
    {
      if (v3 > 2047)
      {
        if (v3 == 2048)
        {
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsConservativeRaster";
          goto LABEL_44;
        }

        if (v3 == 4096)
        {
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsStencilReadback";
          goto LABEL_44;
        }
      }

      else
      {
        if (v3 == 512)
        {
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsDepthRangeMinusOnetoOne";
          goto LABEL_44;
        }

        if (v3 == 1024)
        {
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsCppShaderPadding";
          goto LABEL_44;
        }
      }
    }

    else if (v3 < 0x8000)
    {
      if (v3 == 0x2000)
      {
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsCustomDepthRange";
        goto LABEL_44;
      }

      if (v3 == 0x4000)
      {
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsMetalTessellation";
        goto LABEL_44;
      }
    }

    else
    {
      switch(v3)
      {
        case 0x8000:
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsBasePrimitiveOffset";
          goto LABEL_44;
        case 0x10000:
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsPrimitiveIdEmulation";
          goto LABEL_44;
        case 0x20000:
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsIndirectCommandBuffers";
          goto LABEL_44;
      }
    }
  }

  else if (v3 <= 15)
  {
    if (v3 > 3)
    {
      if (v3 == 4)
      {
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsConcurrentDispatch";
        goto LABEL_44;
      }

      if (v3 == 8)
      {
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsUnifiedMemory";
        goto LABEL_44;
      }
    }

    else
    {
      if (v3 == 1)
      {
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsPresentation";
        goto LABEL_44;
      }

      if (v3 == 2)
      {
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsBindlessBuffers";
        goto LABEL_44;
      }
    }
  }

  else if (v3 <= 63)
  {
    if (v3 == 16)
    {
      v4 = "PXR_NS::HgiDeviceCapabilitiesBitsBuiltinBarycentrics";
      goto LABEL_44;
    }

    if (v3 == 32)
    {
      v4 = "PXR_NS::HgiDeviceCapabilitiesBitsShaderDrawParameters";
      goto LABEL_44;
    }
  }

  else
  {
    switch(v3)
    {
      case 0x40:
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsMultiDrawIndirect";
        goto LABEL_44;
      case 0x80:
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsBindlessTextures";
        goto LABEL_44;
      case 0x100:
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsShaderDoublePrecision";
LABEL_44:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiDeviceCapabilitiesBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HgiTextureType1DArray";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HgiTextureType2DArray";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HgiTextureTypeCount";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HgiTextureType1D";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HgiTextureType2D";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HgiTextureType3D";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiTextureType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 7)
  {
    switch(v3)
    {
      case 8:
        v4 = "PXR_NS::HgiTextureUsageBitsShaderRead";
        goto LABEL_19;
      case 0x10:
        v4 = "PXR_NS::HgiTextureUsageBitsShaderWrite";
        goto LABEL_19;
      case 0x20:
        v4 = "PXR_NS::HgiTextureUsageCustomBitsBegin";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 1:
        v4 = "PXR_NS::HgiTextureUsageBitsColorTarget";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HgiTextureUsageBitsDepthTarget";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HgiTextureUsageBitsStencilTarget";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiTextureUsageBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HgiSamplerAddressModeMirrorRepeat";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HgiSamplerAddressModeClampToBorderColor";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HgiSamplerAddressModeCount";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HgiSamplerAddressModeClampToEdge";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HgiSamplerAddressModeMirrorClampToEdge";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HgiSamplerAddressModeRepeat";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiSamplerAddressMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiSamplerFilterCount";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiSamplerFilterLinear";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiSamplerFilterNearest";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiSamplerFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiMipFilterLinear";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HgiMipFilterCount";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HgiMipFilterNotMipmapped";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiMipFilterNearest";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiMipFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiBorderColorOpaqueWhite";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HgiBorderColorCount";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HgiBorderColorTransparentBlack";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiBorderColorOpaqueBlack";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiBorderColor(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 7)
  {
    switch(v3)
    {
      case 8:
        v4 = "PXR_NS::HgiSampleCount8";
        goto LABEL_19;
      case 0x10:
        v4 = "PXR_NS::HgiSampleCount16";
        goto LABEL_19;
      case 0x11:
        v4 = "PXR_NS::HgiSampleCountEnd";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 1:
        v4 = "PXR_NS::HgiSampleCount1";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HgiSampleCount2";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HgiSampleCount4";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiSampleCount(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiAttachmentLoadOpLoad";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HgiAttachmentLoadOpCount";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HgiAttachmentLoadOpDontCare";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiAttachmentLoadOpClear";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiAttachmentLoadOp(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiAttachmentStoreOpCount";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiAttachmentStoreOpStore";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiAttachmentStoreOpDontCare";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiAttachmentStoreOp(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 7)
  {
    switch(v3)
    {
      case 8:
        v4 = "PXR_NS::HgiBufferUsageStorage";
        goto LABEL_19;
      case 0x10:
        v4 = "PXR_NS::HgiBufferUsageIndirect";
        goto LABEL_19;
      case 0x20:
        v4 = "PXR_NS::HgiBufferUsageCustomBitsBegin";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 1:
        v4 = "PXR_NS::HgiBufferUsageUniform";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HgiBufferUsageIndex32";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HgiBufferUsageVertex";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiBufferUsageBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 15)
  {
    if (v3 > 3)
    {
      if (v3 == 4)
      {
        v4 = "PXR_NS::HgiShaderStageCompute";
        goto LABEL_22;
      }

      if (v3 == 8)
      {
        v4 = "PXR_NS::HgiShaderStageTessellationControl";
        goto LABEL_22;
      }
    }

    else
    {
      if (v3 == 1)
      {
        v4 = "PXR_NS::HgiShaderStageVertex";
        goto LABEL_22;
      }

      if (v3 == 2)
      {
        v4 = "PXR_NS::HgiShaderStageFragment";
        goto LABEL_22;
      }
    }
  }

  else if (v3 <= 63)
  {
    if (v3 == 16)
    {
      v4 = "PXR_NS::HgiShaderStageTessellationEval";
      goto LABEL_22;
    }

    if (v3 == 32)
    {
      v4 = "PXR_NS::HgiShaderStageGeometry";
      goto LABEL_22;
    }
  }

  else
  {
    switch(v3)
    {
      case 0x40:
        v4 = "PXR_NS::HgiShaderStagePostTessellationControl";
        goto LABEL_22;
      case 0x80:
        v4 = "PXR_NS::HgiShaderStagePostTessellationVertex";
        goto LABEL_22;
      case 0x100:
        v4 = "PXR_NS::HgiShaderStageCustomBitsBegin";
LABEL_22:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiShaderStageBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        v4 = "PXR_NS::HgiBindResourceTypeTessFactors";
        goto LABEL_18;
      }

      if (v3 == 7)
      {
        v4 = "PXR_NS::HgiBindResourceTypeCount";
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    if (v3 == 4)
    {
      v4 = "PXR_NS::HgiBindResourceTypeUniformBuffer";
    }

    else
    {
      v4 = "PXR_NS::HgiBindResourceTypeStorageBuffer";
    }

LABEL_18:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiBindResourceTypeCombinedSamplerImage";
    }

    else
    {
      v4 = "PXR_NS::HgiBindResourceTypeStorageImage";
    }

    goto LABEL_18;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiBindResourceTypeSampler";
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::HgiBindResourceTypeSampledImage";
    goto LABEL_18;
  }

LABEL_21:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiBindResourceType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiPolygonModePoint";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HgiPolygonModeCount";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HgiPolygonModeFill";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiPolygonModeLine";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiPolygonMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::HgiCullModeNone";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiCullModeFront";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::HgiCullModeBack";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::HgiCullModeFrontAndBack";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::HgiCullModeCount";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiCullMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiWindingCount";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiWindingCounterClockwise";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiWindingClockwise";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiWinding(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HgiBlendOpMin";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HgiBlendOpMax";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HgiBlendOpCount";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HgiBlendOpAdd";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HgiBlendOpSubtract";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HgiBlendOpReverseSubtract";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiBlendOp(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::HgiColorMaskBlue";
      goto LABEL_15;
    }

    if (v3 == 8)
    {
      v4 = "PXR_NS::HgiColorMaskAlpha";
      goto LABEL_15;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiColorMaskRed";
      goto LABEL_15;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiColorMaskGreen";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiColorMaskBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = "PXR_NS::HgiCompareFunctionNever";
        goto LABEL_20;
      }

      if (v3 == 1)
      {
        v4 = "PXR_NS::HgiCompareFunctionLess";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiCompareFunctionEqual";
    }

    else
    {
      v4 = "PXR_NS::HgiCompareFunctionLEqual";
    }

LABEL_20:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::HgiCompareFunctionGreater";
    }

    else
    {
      v4 = "PXR_NS::HgiCompareFunctionNotEqual";
    }

    goto LABEL_20;
  }

  switch(v3)
  {
    case 6:
      v4 = "PXR_NS::HgiCompareFunctionGEqual";
      goto LABEL_20;
    case 7:
      v4 = "PXR_NS::HgiCompareFunctionAlways";
      goto LABEL_20;
    case 8:
      v4 = "PXR_NS::HgiCompareFunctionCount";
      goto LABEL_20;
  }

LABEL_23:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiCompareFunction(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = "PXR_NS::HgiStencilOpKeep";
        goto LABEL_20;
      }

      if (v3 == 1)
      {
        v4 = "PXR_NS::HgiStencilOpZero";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiStencilOpReplace";
    }

    else
    {
      v4 = "PXR_NS::HgiStencilOpIncrementClamp";
    }

LABEL_20:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::HgiStencilOpDecrementClamp";
    }

    else
    {
      v4 = "PXR_NS::HgiStencilOpInvert";
    }

    goto LABEL_20;
  }

  switch(v3)
  {
    case 6:
      v4 = "PXR_NS::HgiStencilOpIncrementWrap";
      goto LABEL_20;
    case 7:
      v4 = "PXR_NS::HgiStencilOpDecrementWrap";
      goto LABEL_20;
    case 8:
      v4 = "PXR_NS::HgiStencilOpCount";
      goto LABEL_20;
  }

LABEL_23:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiStencilOp(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HgiComponentSwizzleZero";
        goto LABEL_21;
      case 1:
        v4 = "PXR_NS::HgiComponentSwizzleOne";
        goto LABEL_21;
      case 2:
        v4 = "PXR_NS::HgiComponentSwizzleR";
        goto LABEL_21;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v4 = "PXR_NS::HgiComponentSwizzleG";
      }

      else
      {
        v4 = "PXR_NS::HgiComponentSwizzleB";
      }

LABEL_21:

      sub_29A008E78(a2, v4);
      return;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::HgiComponentSwizzleA";
      goto LABEL_21;
    }

    if (v3 == 6)
    {
      v4 = "PXR_NS::HgiComponentSwizzleCount";
      goto LABEL_21;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiComponentSwizzle(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HgiPrimitiveTypePointList";
        goto LABEL_21;
      case 1:
        v4 = "PXR_NS::HgiPrimitiveTypeLineList";
        goto LABEL_21;
      case 2:
        v4 = "PXR_NS::HgiPrimitiveTypeLineStrip";
        goto LABEL_21;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v4 = "PXR_NS::HgiPrimitiveTypeTriangleList";
      }

      else
      {
        v4 = "PXR_NS::HgiPrimitiveTypePatchList";
      }

LABEL_21:

      sub_29A008E78(a2, v4);
      return;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::HgiPrimitiveTypeLineListWithAdjacency";
      goto LABEL_21;
    }

    if (v3 == 6)
    {
      v4 = "PXR_NS::HgiPrimitiveTypeCount";
      goto LABEL_21;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiPrimitiveType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HgiVertexBufferStepFunctionConstant";
        goto LABEL_21;
      case 1:
        v4 = "PXR_NS::HgiVertexBufferStepFunctionPerVertex";
        goto LABEL_21;
      case 2:
        v4 = "PXR_NS::HgiVertexBufferStepFunctionPerInstance";
        goto LABEL_21;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v4 = "PXR_NS::HgiVertexBufferStepFunctionPerPatch";
      }

      else
      {
        v4 = "PXR_NS::HgiVertexBufferStepFunctionPerPatchControlPoint";
      }

LABEL_21:

      sub_29A008E78(a2, v4);
      return;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::HgiVertexBufferStepFunctionPerDrawCommand";
      goto LABEL_21;
    }

    if (v3 == 6)
    {
      v4 = "PXR_NS::HgiVertexBufferStepFunctionCount";
      goto LABEL_21;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiVertexBufferStepFunction(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HgiSubmitWaitTypeWaitUntilCompleted";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiSubmitWaitTypeNoWait";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiSubmitWaitType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HgiMemoryBarrierAll";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiMemoryBarrierNone";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiMemoryBarrierBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::HgiBindingTypeValue";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiBindingTypeUniformValue";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::HgiBindingTypeArray";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::HgiBindingTypeUniformArray";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::HgiBindingTypePointer";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiBindingType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiInterpolationNoPerspective";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiInterpolationFlat";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiInterpolationDefault";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiInterpolationType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiSamplingSample";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiSamplingCentroid";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiSamplingDefault";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiSamplingType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HgiStoragePatch";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiStorageDefault";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiStorageType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiShaderTextureTypeArrayTexture";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiShaderTextureTypeShadowTexture";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiShaderTextureTypeTexture";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiShaderTextureType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HgiComputeDispatchConcurrent";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiComputeDispatchSerial";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiComputeDispatch(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiTessellationState::Isoline";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiTessellationState::Quad";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiTessellationState::Triangle";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiTessellationState::PatchType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiTessellationState::TessVertex";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiTessellationState::TessControl";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiTessellationState::Constant";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiTessellationState::TessFactorMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 27)
  {
    if (v3 == 26)
    {
      v4 = "PXR_NS::HgiMetalArgumentIndexICB";
      goto LABEL_12;
    }

    if (v3 == 27)
    {
      v4 = "PXR_NS::HgiMetalArgumentIndexConstants";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 0x1C:
        v4 = "PXR_NS::HgiMetalArgumentIndexSamplers";
        goto LABEL_12;
      case 0x1D:
        v4 = "PXR_NS::HgiMetalArgumentIndexTextures";
        goto LABEL_12;
      case 0x1E:
        v4 = "PXR_NS::HgiMetalArgumentIndexBuffers";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiMetalArgumentIndex(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  HIDWORD(v5) = v3;
  LODWORD(v5) = v3;
  v4 = v5 >> 9;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        v6 = "PXR_NS::HgiMetalArgumentOffsetConstants";
        goto LABEL_18;
      }

      if (v4 == 8)
      {
        v6 = "PXR_NS::HgiMetalArgumentOffsetSize";
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    if (v4 == 4)
    {
      v6 = "PXR_NS::HgiMetalArgumentOffsetTextureVS";
    }

    else
    {
      v6 = "PXR_NS::HgiMetalArgumentOffsetTextureFS";
    }

LABEL_18:

    sub_29A008E78(a2, v6);
    return;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v6 = "PXR_NS::HgiMetalArgumentOffsetSamplerVS";
    }

    else
    {
      v6 = "PXR_NS::HgiMetalArgumentOffsetSamplerFS";
    }

    goto LABEL_18;
  }

  if (!v4)
  {
    v6 = "PXR_NS::HgiMetalArgumentOffsetBufferVS";
    goto LABEL_18;
  }

  if (v4 == 1)
  {
    v6 = "PXR_NS::HgiMetalArgumentOffsetBufferFS";
    goto LABEL_18;
  }

LABEL_21:
  std::to_string(&v11, v3);
  v7 = std::string::insert(&v11, 0, "PXR_NS::HgiMetalArgumentOffset(rawValue: ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v12, ")");
  v10 = *&v9->__r_.__value_.__l.__data_;
  a2[2] = *(&v9->__r_.__value_.__l + 2);
  *a2 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HdWrapMirror";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HdWrapNoOpinion";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HdWrapLegacyNoOpinionFallbackRepeat";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HdWrapClamp";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HdWrapRepeat";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HdWrapBlack";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdWrap(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HdMinFilterLinearMipmapNearest";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HdMinFilterNearestMipmapLinear";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HdMinFilterLinearMipmapLinear";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HdMinFilterNearest";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HdMinFilterLinear";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HdMinFilterNearestMipmapNearest";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdMinFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HdMagFilterLinear";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HdMagFilterNearest";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdMagFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HdBorderColorOpaqueWhite";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HdBorderColorOpaqueBlack";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HdBorderColorTransparentBlack";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdBorderColor(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = "PXR_NS::HdCmpFuncNever";
        goto LABEL_20;
      }

      if (v3 == 1)
      {
        v4 = "PXR_NS::HdCmpFuncLess";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::HdCmpFuncEqual";
    }

    else
    {
      v4 = "PXR_NS::HdCmpFuncLEqual";
    }

LABEL_20:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::HdCmpFuncGreater";
    }

    else
    {
      v4 = "PXR_NS::HdCmpFuncNotEqual";
    }

    goto LABEL_20;
  }

  switch(v3)
  {
    case 6:
      v4 = "PXR_NS::HdCmpFuncGEqual";
      goto LABEL_20;
    case 7:
      v4 = "PXR_NS::HdCmpFuncAlways";
      goto LABEL_20;
    case 8:
      v4 = "PXR_NS::HdCmpFuncLast";
      goto LABEL_20;
  }

LABEL_23:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdCompareFunction(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = "PXR_NS::HdStencilOpKeep";
        goto LABEL_20;
      }

      if (v3 == 1)
      {
        v4 = "PXR_NS::HdStencilOpZero";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::HdStencilOpReplace";
    }

    else
    {
      v4 = "PXR_NS::HdStencilOpIncrement";
    }

LABEL_20:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::HdStencilOpIncrementWrap";
    }

    else
    {
      v4 = "PXR_NS::HdStencilOpDecrement";
    }

    goto LABEL_20;
  }

  switch(v3)
  {
    case 6:
      v4 = "PXR_NS::HdStencilOpDecrementWrap";
      goto LABEL_20;
    case 7:
      v4 = "PXR_NS::HdStencilOpInvert";
      goto LABEL_20;
    case 8:
      v4 = "PXR_NS::HdStencilOpLast";
      goto LABEL_20;
  }

LABEL_23:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdStencilOp(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HdBlendOpMin";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HdBlendOpMax";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HdBlendOpLast";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HdBlendOpAdd";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HdBlendOpSubtract";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HdBlendOpReverseSubtract";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdBlendOp(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HdCullStyleFront";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HdCullStyleBackUnlessDoubleSided";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HdCullStyleFrontUnlessDoubleSided";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HdCullStyleDontCare";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HdCullStyleNothing";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HdCullStyleBack";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdCullStyle(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HdPolygonModeLine";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HdPolygonModeFill";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdPolygonMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        v4 = "PXR_NS::HdMeshGeomStyleHullEdgeOnSurf";
        goto LABEL_18;
      }

      if (v3 == 7)
      {
        v4 = "PXR_NS::HdMeshGeomStylePoints";
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    if (v3 == 4)
    {
      v4 = "PXR_NS::HdMeshGeomStyleHull";
    }

    else
    {
      v4 = "PXR_NS::HdMeshGeomStyleHullEdgeOnly";
    }

LABEL_18:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HdMeshGeomStyleEdgeOnly";
    }

    else
    {
      v4 = "PXR_NS::HdMeshGeomStyleEdgeOnSurf";
    }

    goto LABEL_18;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HdMeshGeomStyleInvalid";
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::HdMeshGeomStyleSurf";
    goto LABEL_18;
  }

LABEL_21:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdMeshGeomStyle(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HdBasisCurvesGeomStylePatch";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HdBasisCurvesGeomStylePoints";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HdBasisCurvesGeomStyleInvalid";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HdBasisCurvesGeomStyleWire";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdBasisCurvesGeomStyle(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HdPointsGeomStylePoints";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HdPointsGeomStyleInvalid";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdPointsGeomStyle(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HdInterpolationConstant";
        goto LABEL_21;
      case 1:
        v4 = "PXR_NS::HdInterpolationUniform";
        goto LABEL_21;
      case 2:
        v4 = "PXR_NS::HdInterpolationVarying";
        goto LABEL_21;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v4 = "PXR_NS::HdInterpolationVertex";
      }

      else
      {
        v4 = "PXR_NS::HdInterpolationFaceVarying";
      }

LABEL_21:

      sub_29A008E78(a2, v4);
      return;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::HdInterpolationInstance";
      goto LABEL_21;
    }

    if (v3 == 6)
    {
      v4 = "PXR_NS::HdInterpolationCount";
      goto LABEL_21;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdInterpolation(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HdDepthPriorityCount";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HdDepthPriorityFarthest";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HdDepthPriorityNearest";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdDepthPriority(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 7)
  {
    switch(v3)
    {
      case 8:
        v4 = "PXR_NS::HdBufferArrayUsageHintBitsStorage";
        goto LABEL_19;
      case 0x10:
        v4 = "PXR_NS::HdBufferArrayUsageHintBitsVertex";
        goto LABEL_19;
      case 0x20:
        v4 = "PXR_NS::HdBufferArrayUsageHintBitsIndex";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 1:
        v4 = "PXR_NS::HdBufferArrayUsageHintBitsImmutable";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HdBufferArrayUsageHintBitsSizeVarying";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HdBufferArrayUsageHintBitsUniform";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdBufferArrayUsageHintBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3)
  {
    std::to_string(&v8, v3);
    v4 = std::string::insert(&v8, 0, "PXR_NS::HdGeomSubset::Type(rawValue: ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v9, ")");
    v7 = *&v6->__r_.__value_.__l.__data_;
    a2[2] = *(&v6->__r_.__value_.__l + 2);
    *a2 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    sub_29A008E78(a2, "PXR_NS::HdGeomSubset::TypeFaceSet");
  }
}

{
  v3 = *a1;
  if (v3 > 3)
  {
    switch(v3)
    {
      case 4:
        v4 = "PXR_NS::HdCamera::DirtyClipPlanes";
        goto LABEL_19;
      case 8:
        v4 = "PXR_NS::HdCamera::DirtyWindowPolicy";
        goto LABEL_19;
      case 0xF:
        v4 = "PXR_NS::HdCamera::AllDirty";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HdCamera::Clean";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HdCamera::DirtyTransform";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HdCamera::DirtyParams";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdCamera::DirtyBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HdCamera::Orthographic";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HdCamera::Perspective";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdCamera::Projection(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HdCollectionExpressionEvaluator::ShallowestMatchesAndAllDescendants";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HdCollectionExpressionEvaluator::ShallowestMatches";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HdCollectionExpressionEvaluator::MatchAll";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdCollectionExpressionEvaluator::MatchKind(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HdCoordSys::DirtyTransform";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HdCoordSys::AllDirty";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HdCoordSys::Clean";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HdCoordSys::DirtyName";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdCoordSys::DirtyBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HdField::DirtyParams";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HdField::AllDirty";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HdField::Clean";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HdField::DirtyTransform";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdField::DirtyBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 7)
  {
    if (v3 >= 0x10000)
    {
      if (v3 == 0x10000)
      {
        v4 = "PXR_NS::HdLight::DirtyInstancer";
        goto LABEL_20;
      }

      if (v3 == 65567)
      {
        v4 = "PXR_NS::HdLight::AllDirty";
        goto LABEL_20;
      }
    }

    else
    {
      if (v3 == 8)
      {
        v4 = "PXR_NS::HdLight::DirtyCollection";
        goto LABEL_20;
      }

      if (v3 == 16)
      {
        v4 = "PXR_NS::HdLight::DirtyResource";
        goto LABEL_20;
      }
    }
  }

  else if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HdLight::DirtyParams";
      goto LABEL_20;
    }

    if (v3 == 4)
    {
      v4 = "PXR_NS::HdLight::DirtyShadowParams";
      goto LABEL_20;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HdLight::Clean";
      goto LABEL_20;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HdLight::DirtyTransform";
LABEL_20:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdLight::DirtyBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HdRenderBuffer::DirtyDescription";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HdRenderBuffer::Clean";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdRenderBuffer::DirtyBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HdGpGenerativeProcedural::ContinuingWithNewChanges";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HdGpGenerativeProcedural::FinishedWithNewChanges";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HdGpGenerativeProcedural::Continuing";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HdGpGenerativeProcedural::Finished";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdGpGenerativeProcedural::AsyncState(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 0xFFFF)
  {

    sub_29A008E78(a2, "PXR_NS::HdStBinding::NOT_EXIST");
  }

  else
  {
    std::to_string(&v8, v3);
    v4 = std::string::insert(&v8, 0, "PXR_NS::HdStBinding::Location(rawValue: ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v9, ")");
    v7 = *&v6->__r_.__value_.__l.__data_;
    a2[2] = *(&v6->__r_.__value_.__l + 2);
    *a2 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::HdStComputeQueueZero";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HdStComputeQueueOne";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::HdStComputeQueueTwo";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::HdStComputeQueueThree";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::HdStComputeQueueCount";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdStComputeQueue(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::UsdImagingPrimAdapter::RepresentedByAncestor";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::UsdImagingPrimAdapter::RepresentsSelfAndDescendents";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::UsdImagingPrimAdapter::RepresentsSelf";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdImagingPrimAdapter::PopulationMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::UsdImagingGLRendererSetting::TYPE_FLOAT";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::UsdImagingGLRendererSetting::TYPE_STRING";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::UsdImagingGLRendererSetting::TYPE_FLAG";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::UsdImagingGLRendererSetting::TYPE_INT";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdImagingGLRendererSetting::Type(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = "PXR_NS::SdfLengthUnitMillimeter";
        goto LABEL_20;
      }

      if (v3 == 1)
      {
        v4 = "PXR_NS::SdfLengthUnitCentimeter";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::SdfLengthUnitDecimeter";
    }

    else
    {
      v4 = "PXR_NS::SdfLengthUnitMeter";
    }

LABEL_20:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::SdfLengthUnitKilometer";
    }

    else
    {
      v4 = "PXR_NS::SdfLengthUnitInch";
    }

    goto LABEL_20;
  }

  switch(v3)
  {
    case 6:
      v4 = "PXR_NS::SdfLengthUnitFoot";
      goto LABEL_20;
    case 7:
      v4 = "PXR_NS::SdfLengthUnitYard";
      goto LABEL_20;
    case 8:
      v4 = "PXR_NS::SdfLengthUnitMile";
      goto LABEL_20;
  }

LABEL_23:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfLengthUnit(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::SdfAngularUnitRadians";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::SdfAngularUnitDegrees";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfAngularUnit(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::SdfDimensionlessUnitDefault";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::SdfDimensionlessUnitPercent";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfDimensionlessUnit(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}